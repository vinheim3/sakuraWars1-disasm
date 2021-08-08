; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05c", ROMX[$4000], BANK[$5c]

	ld   e, d                                        ; $4000: $5a
	inc  b                                           ; $4001: $04
	jr   z, jr_05c_4056                              ; $4002: $28 $52

	ld   [hl], h                                     ; $4004: $74
	ld   d, b                                        ; $4005: $50
	sbc  c                                           ; $4006: $99
	ld   [hl], l                                     ; $4007: $75
	ld   h, l                                        ; $4008: $65
	sub  l                                           ; $4009: $95
	sbc  a                                           ; $400a: $9f
	dec  c                                           ; $400b: $0d
	nop                                              ; $400c: $00
	ld   a, [bc]                                     ; $400d: $0a
	rrca                                             ; $400e: $0f
	dec  c                                           ; $400f: $0d
	nop                                              ; $4010: $00
	ld   bc, $7150                                   ; $4011: $01 $50 $71
	sbc  [hl]                                        ; $4014: $9e
	call c, $c9f5                                    ; $4015: $dc $f5 $c9
	ld   l, [hl]                                     ; $4018: $6e
	rst  $38                                         ; $4019: $ff
	rst  $38                                         ; $401a: $ff
	ld   d, [hl]                                     ; $401b: $56
	db   $fc                                         ; $401c: $fc
	ld   [hl], c                                     ; $401d: $71
	halt                                             ; $401e: $76
	dec  c                                           ; $401f: $0d
	ld   bc, $1707                                   ; $4020: $01 $07 $17
	jr   jr_05c_4029                                 ; $4023: $18 $04

	push bc                                          ; $4025: $c5
	sbc  [hl]                                        ; $4026: $9e
	jr   jr_05c_4043                                 ; $4027: $18 $1a

jr_05c_4029:
	inc  b                                           ; $4029: $04
	push bc                                          ; $402a: $c5
	sbc  [hl]                                        ; $402b: $9e
	ld   d, $14                                      ; $402c: $16 $14
	inc  b                                           ; $402e: $04
	push bc                                          ; $402f: $c5
	ld   bc, $0d08                                   ; $4030: $01 $08 $0d
	ld   d, b                                        ; $4033: $50
	ld   [hl], c                                     ; $4034: $71
	ld   [hl], h                                     ; $4035: $74
	sbc  c                                           ; $4036: $99
	sbc  l                                           ; $4037: $9d
	sbc  a                                           ; $4038: $9f
	dec  c                                           ; $4039: $0d
	nop                                              ; $403a: $00
	ld   a, [bc]                                     ; $403b: $0a
	inc  e                                           ; $403c: $1c
	dec  c                                           ; $403d: $0d
	ld   bc, $0101                                   ; $403e: $01 $01 $01
	ld   e, b                                        ; $4041: $58
	inc  b                                           ; $4042: $04

jr_05c_4043:
	ld   a, e                                        ; $4043: $7b
	sbc  d                                           ; $4044: $9a
	ld   h, e                                        ; $4045: $63
	adc  h                                           ; $4046: $8c
	sbc  [hl]                                        ; $4047: $9e
	ld   [$5d00], sp                                 ; $4048: $08 $00 $5d
	and  c                                           ; $404b: $a1
	sbc  a                                           ; $404c: $9f
	dec  c                                           ; $404d: $0d
	ld   h, d                                        ; $404e: $62
	adc  a                                           ; $404f: $8f
	and  c                                           ; $4050: $a1
	ld   a, e                                        ; $4051: $7b
	sbc  [hl]                                        ; $4052: $9e
	ld   e, c                                        ; $4053: $59
	ld   h, a                                        ; $4054: $67
	adc  l                                           ; $4055: $8d

jr_05c_4056:
	ld   h, e                                        ; $4056: $63
	and  c                                           ; $4057: $a1
	ld   e, d                                        ; $4058: $5a
	dec  c                                           ; $4059: $0d
	inc  bc                                          ; $405a: $03
	pop  bc                                          ; $405b: $c1
	ld   d, [hl]                                     ; $405c: $56
	ld   [hl], h                                     ; $405d: $74
	ld   l, l                                        ; $405e: $6d
	and  c                                           ; $405f: $a1
	ld   l, [hl]                                     ; $4060: $6e
	ld   [hl], c                                     ; $4061: $71
	ld   [hl], h                                     ; $4062: $74
	sbc  a                                           ; $4063: $9f
	dec  c                                           ; $4064: $0d
	nop                                              ; $4065: $00
	ld   a, [bc]                                     ; $4066: $0a
	ld   bc, $9075                                   ; $4067: $01 $75 $90
	sbc  [hl]                                        ; $406a: $9e
	inc  b                                           ; $406b: $04
	push bc                                          ; $406c: $c5
	inc  bc                                          ; $406d: $03
	pop  bc                                          ; $406e: $c1
	ld   a, l                                        ; $406f: $7d
	pop  de                                          ; $4070: $d1
	call nz, $ecc2                                   ; $4071: $c4 $c2 $ec
	ld   d, b                                        ; $4074: $50
	ld   [hl], c                                     ; $4075: $71
	ld   [hl], h                                     ; $4076: $74
	ld   l, l                                        ; $4077: $6d
	dec  c                                           ; $4078: $0d
	ld   h, [hl]                                     ; $4079: $66
	sub  c                                           ; $407a: $91
	ld   a, b                                        ; $407b: $78
	ld   d, d                                        ; $407c: $52
	sbc  a                                           ; $407d: $9f
	dec  c                                           ; $407e: $0d
	ld   h, e                                        ; $407f: $63
	ld   h, a                                        ; $4080: $67
	ld   e, d                                        ; $4081: $5a
	ld   a, l                                        ; $4082: $7d
	sbc  [hl]                                        ; $4083: $9e
	ld   [$5d00], sp                                 ; $4084: $08 $00 $5d
	and  c                                           ; $4087: $a1
	ld   a, e                                        ; $4088: $7b
	sbc  a                                           ; $4089: $9f
	dec  c                                           ; $408a: $0d
	nop                                              ; $408b: $00
	ld   a, [bc]                                     ; $408c: $0a
	ld   bc, $2002                                   ; $408d: $01 $02 $20
	ld   [bc], a                                     ; $4090: $02
	add  hl, bc                                      ; $4091: $09
	sbc  [hl]                                        ; $4092: $9e
	inc  bc                                          ; $4093: $03
	pop  bc                                          ; $4094: $c1
	ld   d, [hl]                                     ; $4095: $56
	adc  h                                           ; $4096: $8c
	ld   l, a                                        ; $4097: $6f
	ld   e, d                                        ; $4098: $5a
	ld   d, d                                        ; $4099: $52
	ld   e, d                                        ; $409a: $5a
	ld   a, b                                        ; $409b: $78
	ld   d, d                                        ; $409c: $52
	ld   e, c                                        ; $409d: $59
	dec  c                                           ; $409e: $0d
	ld   [bc], a                                     ; $409f: $02
	sbc  a                                           ; $40a0: $9f
	inc  b                                           ; $40a1: $04
	dec  sp                                          ; $40a2: $3b
	ld   [hl], l                                     ; $40a3: $75
	ld   e, e                                        ; $40a4: $5b
	ld   l, l                                        ; $40a5: $6d
	halt                                             ; $40a6: $76
	ld   [bc], a                                     ; $40a7: $02
	sbc  l                                           ; $40a8: $9d
	ld   d, h                                        ; $40a9: $54
	ld   h, c                                        ; $40aa: $61
	halt                                             ; $40ab: $76
	ld   [hl], l                                     ; $40ac: $75
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	dec  c                                           ; $40af: $0d
	xor  c                                           ; $40b0: $a9
	reti                                             ; $40b1: $d9


	reti                                             ; $40b2: $d9


	reti                                             ; $40b3: $d9


	reti                                             ; $40b4: $d9


	rst  $38                                         ; $40b5: $ff
	rst  $38                                         ; $40b6: $ff
	dec  c                                           ; $40b7: $0d
	nop                                              ; $40b8: $00
	ld   a, [bc]                                     ; $40b9: $0a
	ld   bc, $0262                                   ; $40ba: $01 $62 $02
	sub  h                                           ; $40bd: $94
	dec  b                                           ; $40be: $05
	rrca                                             ; $40bf: $0f
	ld   h, e                                        ; $40c0: $63
	adc  h                                           ; $40c1: $8c
	ld   [hl], l                                     ; $40c2: $75
	ld   h, l                                        ; $40c3: $65
	ld   l, l                                        ; $40c4: $6d
	sbc  a                                           ; $40c5: $9f
	dec  c                                           ; $40c6: $0d
	adc  h                                           ; $40c7: $8c
	ld   l, l                                        ; $40c8: $6d
	sbc  [hl]                                        ; $40c9: $9e
	ld   a, b                                        ; $40ca: $78
	ld   a, c                                        ; $40cb: $79
	ld   e, c                                        ; $40cc: $59
	ld   d, b                                        ; $40cd: $50
	ld   [hl], c                                     ; $40ce: $71
	ld   l, l                                        ; $40cf: $6d
	sub  a                                           ; $40d0: $97
	dec  c                                           ; $40d1: $0d
	inc  bc                                          ; $40d2: $03
	ld   l, e                                        ; $40d3: $6b
	inc  b                                           ; $40d4: $04
	ld   [de], a                                     ; $40d5: $12
	ld   [hl], c                                     ; $40d6: $71
	ld   [hl], h                                     ; $40d7: $74
	ld   a, e                                        ; $40d8: $7b
	sbc  a                                           ; $40d9: $9f
	ld   d, b                                        ; $40da: $50
	sbc  b                                           ; $40db: $98
	ld   e, d                                        ; $40dc: $5a
	halt                                             ; $40dd: $76
	ld   d, h                                        ; $40de: $54
	sbc  a                                           ; $40df: $9f
	dec  c                                           ; $40e0: $0d
	nop                                              ; $40e1: $00
	ld   a, [bc]                                     ; $40e2: $0a
	dec  b                                           ; $40e3: $05
	add  b                                           ; $40e4: $80
	xor  h                                           ; $40e5: $ac
	ld   bc, $0001                                   ; $40e6: $01 $01 $00
	nop                                              ; $40e9: $00
	inc  e                                           ; $40ea: $1c
	dec  c                                           ; $40eb: $0d
	nop                                              ; $40ec: $00
	nop                                              ; $40ed: $00
	ld   bc, $1317                                   ; $40ee: $01 $17 $13
	inc  b                                           ; $40f1: $04
	push bc                                          ; $40f2: $c5
	sbc  [hl]                                        ; $40f3: $9e
	add  hl, de                                      ; $40f4: $19
	inc  d                                           ; $40f5: $14
	inc  b                                           ; $40f6: $04
	push bc                                          ; $40f7: $c5
	sbc  [hl]                                        ; $40f8: $9e
	ld   d, $14                                      ; $40f9: $16 $14
	inc  b                                           ; $40fb: $04
	push bc                                          ; $40fc: $c5
	ld   a, e                                        ; $40fd: $7b
	sbc  a                                           ; $40fe: $9f
	dec  c                                           ; $40ff: $0d
	nop                                              ; $4100: $00
	ld   a, [bc]                                     ; $4101: $0a
	ld   b, $a7                                      ; $4102: $06 $a7
	rlca                                             ; $4104: $07
	inc  e                                           ; $4105: $1c
	dec  c                                           ; $4106: $0d
	nop                                              ; $4107: $00
	nop                                              ; $4108: $00
	ld   bc, $1418                                   ; $4109: $01 $18 $14
	inc  b                                           ; $410c: $04
	push bc                                          ; $410d: $c5
	sbc  [hl]                                        ; $410e: $9e
	rla                                              ; $410f: $17
	ld   a, [de]                                     ; $4110: $1a
	inc  b                                           ; $4111: $04
	push bc                                          ; $4112: $c5
	sbc  [hl]                                        ; $4113: $9e
	ld   d, $18                                      ; $4114: $16 $18
	inc  b                                           ; $4116: $04
	push bc                                          ; $4117: $c5
	ld   a, e                                        ; $4118: $7b
	sbc  a                                           ; $4119: $9f
	dec  c                                           ; $411a: $0d
	nop                                              ; $411b: $00
	ld   a, [bc]                                     ; $411c: $0a
	rrca                                             ; $411d: $0f
	inc  c                                           ; $411e: $0c
	nop                                              ; $411f: $00
	ld   bc, $9750                                   ; $4120: $01 $50 $97
	sbc  [hl]                                        ; $4123: $9e
	inc  b                                           ; $4124: $04
	pop  hl                                          ; $4125: $e1
	inc  b                                           ; $4126: $04
	rst  $38                                         ; $4127: $ff
	sbc  [hl]                                        ; $4128: $9e
	ld   a, b                                        ; $4129: $78
	ld   a, c                                        ; $412a: $79
	ld   h, l                                        ; $412b: $65
	ld   [hl], h                                     ; $412c: $74
	sbc  c                                           ; $412d: $99
	ld   a, h                                        ; $412e: $7c
	ld   sp, hl                                      ; $412f: $f9
	dec  c                                           ; $4130: $0d
	ld   l, e                                        ; $4131: $6b
	sbc  d                                           ; $4132: $9a
	sbc  [hl]                                        ; $4133: $9e
	ld   h, e                                        ; $4134: $63
	ld   [hl], c                                     ; $4135: $71
	ld   e, e                                        ; $4136: $5b
	sbc  l                                           ; $4137: $9d
	ld   l, l                                        ; $4138: $6d
	ld   h, l                                        ; $4139: $65
	ld   e, d                                        ; $413a: $5a
	inc  bc                                          ; $413b: $03
	pop  bc                                          ; $413c: $c1
	ld   d, [hl]                                     ; $413d: $56
	ld   l, l                                        ; $413e: $6d
	dec  c                                           ; $413f: $0d
	inc  bc                                          ; $4140: $03
	ld   d, l                                        ; $4141: $55
	dec  b                                           ; $4142: $05
	ld   h, d                                        ; $4143: $62
	ld   h, [hl]                                     ; $4144: $66
	sub  c                                           ; $4145: $91
	ld   a, b                                        ; $4146: $78
	ld   d, d                                        ; $4147: $52
	sbc  a                                           ; $4148: $9f
	dec  c                                           ; $4149: $0d
	nop                                              ; $414a: $00
	ld   a, [bc]                                     ; $414b: $0a
	ld   bc, $8b06                                   ; $414c: $01 $06 $8b
	ld   a, c                                        ; $414f: $79
	db   $e3                                         ; $4150: $e3
	db   $e4                                         ; $4151: $e4
	ld   e, d                                        ; $4152: $5a
	inc  b                                           ; $4153: $04
	jr   z, jr_05c_41a8                              ; $4154: $28 $52

	ld   [hl], h                                     ; $4156: $74
	ld   d, b                                        ; $4157: $50
	sbc  c                                           ; $4158: $99
	ld   [hl], l                                     ; $4159: $75
	ld   h, l                                        ; $415a: $65
	sub  l                                           ; $415b: $95
	sbc  a                                           ; $415c: $9f
	dec  c                                           ; $415d: $0d
	nop                                              ; $415e: $00
	ld   a, [bc]                                     ; $415f: $0a
	rrca                                             ; $4160: $0f
	dec  c                                           ; $4161: $0d
	nop                                              ; $4162: $00
	ld   bc, $7150                                   ; $4163: $01 $50 $71
	sbc  [hl]                                        ; $4166: $9e
	call c, $c9f5                                    ; $4167: $dc $f5 $c9
	ld   l, [hl]                                     ; $416a: $6e
	rst  $38                                         ; $416b: $ff
	rst  $38                                         ; $416c: $ff
	ld   d, [hl]                                     ; $416d: $56
	db   $fc                                         ; $416e: $fc
	ld   [hl], c                                     ; $416f: $71
	halt                                             ; $4170: $76
	dec  c                                           ; $4171: $0d
	ld   bc, $1707                                   ; $4172: $01 $07 $17
	jr   jr_05c_417b                                 ; $4175: $18 $04

	push bc                                          ; $4177: $c5
	sbc  [hl]                                        ; $4178: $9e
	jr   @+$1c                                       ; $4179: $18 $1a

jr_05c_417b:
	inc  b                                           ; $417b: $04
	push bc                                          ; $417c: $c5
	sbc  [hl]                                        ; $417d: $9e
	ld   d, $14                                      ; $417e: $16 $14
	inc  b                                           ; $4180: $04
	push bc                                          ; $4181: $c5
	ld   bc, $0d08                                   ; $4182: $01 $08 $0d
	rst  $38                                         ; $4185: $ff
	rst  $38                                         ; $4186: $ff
	rst  $38                                         ; $4187: $ff
	rst  $38                                         ; $4188: $ff
	rst  $38                                         ; $4189: $ff
	rst  $38                                         ; $418a: $ff
	dec  c                                           ; $418b: $0d
	nop                                              ; $418c: $00
	ld   a, [bc]                                     ; $418d: $0a
	inc  e                                           ; $418e: $1c
	dec  c                                           ; $418f: $0d
	ld   bc, $0101                                   ; $4190: $01 $01 $01
	ld   [$5d00], sp                                 ; $4193: $08 $00 $5d
	and  c                                           ; $4196: $a1
	sbc  a                                           ; $4197: $9f
	ld   l, a                                        ; $4198: $6f
	ld   e, d                                        ; $4199: $5a
	ld   d, h                                        ; $419a: $54
	sbc  l                                           ; $419b: $9d
	sub  [hl]                                        ; $419c: $96
	sbc  a                                           ; $419d: $9f
	dec  c                                           ; $419e: $0d
	ld   e, c                                        ; $419f: $59
	ld   h, a                                        ; $41a0: $67
	adc  l                                           ; $41a1: $8d
	ld   h, e                                        ; $41a2: $63
	and  c                                           ; $41a3: $a1
	ld   e, d                                        ; $41a4: $5a
	inc  bc                                          ; $41a5: $03
	pop  bc                                          ; $41a6: $c1
	ld   d, [hl]                                     ; $41a7: $56

jr_05c_41a8:
	ld   [hl], h                                     ; $41a8: $74
	ld   d, d                                        ; $41a9: $52
	ld   l, l                                        ; $41aa: $6d
	ld   e, c                                        ; $41ab: $59
	sub  a                                           ; $41ac: $97
	dec  c                                           ; $41ad: $0d
	dec  b                                           ; $41ae: $05
	dec  d                                           ; $41af: $15
	ld   e, c                                        ; $41b0: $59
	ld   [hl], c                                     ; $41b1: $71
	ld   l, l                                        ; $41b2: $6d
	sub  [hl]                                        ; $41b3: $96
	ld   d, h                                        ; $41b4: $54
	ld   a, b                                        ; $41b5: $78
	sub  b                                           ; $41b6: $90
	ld   a, h                                        ; $41b7: $7c
	ld   a, h                                        ; $41b8: $7c
	rst  $38                                         ; $41b9: $ff
	rst  $38                                         ; $41ba: $ff
	dec  c                                           ; $41bb: $0d
	nop                                              ; $41bc: $00
	ld   a, [bc]                                     ; $41bd: $0a
	rrca                                             ; $41be: $0f
	nop                                              ; $41bf: $00
	ld   bc, $6b01                                   ; $41c0: $01 $01 $6b
	sbc  d                                           ; $41c3: $9a
	ld   a, l                                        ; $41c4: $7d
	sbc  [hl]                                        ; $41c5: $9e
	inc  b                                           ; $41c6: $04
	pop  hl                                          ; $41c7: $e1
	inc  b                                           ; $41c8: $04
	rst  $38                                         ; $41c9: $ff
	ld   h, e                                        ; $41ca: $63
	and  c                                           ; $41cb: $a1
	ld   e, d                                        ; $41cc: $5a
	inc  b                                           ; $41cd: $04
	ld   [hl-], a                                    ; $41ce: $32
	inc  b                                           ; $41cf: $04
	dec  bc                                          ; $41d0: $0b
	ld   [hl], l                                     ; $41d1: $75
	dec  c                                           ; $41d2: $0d
	dec  b                                           ; $41d3: $05
	jr   nz, jr_05c_423b                             ; $41d4: $20 $65

	ld   e, c                                        ; $41d6: $59
	ld   e, a                                        ; $41d7: $5f
	sbc  c                                           ; $41d8: $99
	ld   e, c                                        ; $41d9: $59
	sub  a                                           ; $41da: $97
	rst  $38                                         ; $41db: $ff
	rst  $38                                         ; $41dc: $ff
	dec  c                                           ; $41dd: $0d
	nop                                              ; $41de: $00
	ld   a, [bc]                                     ; $41df: $0a
	inc  e                                           ; $41e0: $1c
	dec  c                                           ; $41e1: $0d
	ld   [bc], a                                     ; $41e2: $02
	ld   [bc], a                                     ; $41e3: $02
	ld   bc, $5252                                   ; $41e4: $01 $52 $52
	sbc  l                                           ; $41e7: $9d
	ld   e, a                                        ; $41e8: $5f
	ld   a, l                                        ; $41e9: $7d
	ld   h, l                                        ; $41ea: $65
	ld   a, b                                        ; $41eb: $78
	ld   d, d                                        ; $41ec: $52
	ld   a, h                                        ; $41ed: $7c
	sbc  a                                           ; $41ee: $9f
	dec  c                                           ; $41ef: $0d
	inc  bc                                          ; $41f0: $03
	and  $02                                         ; $41f1: $e6 $02
	ld   b, $63                                      ; $41f3: $06 $63
	sbc  d                                           ; $41f5: $9a
	ld   l, l                                        ; $41f6: $6d
	sub  a                                           ; $41f7: $97
	sbc  [hl]                                        ; $41f8: $9e
	adc  h                                           ; $41f9: $8c
	ld   l, b                                        ; $41fa: $68
	dec  c                                           ; $41fb: $0d
	ld   d, b                                        ; $41fc: $50
	sub  d                                           ; $41fd: $92
	adc  h                                           ; $41fe: $8c
	sbc  b                                           ; $41ff: $98
	ld   a, b                                        ; $4200: $78
	ld   h, e                                        ; $4201: $63
	ld   d, d                                        ; $4202: $52
	sbc  a                                           ; $4203: $9f
	dec  c                                           ; $4204: $0d
	nop                                              ; $4205: $00
	ld   a, [bc]                                     ; $4206: $0a
	rrca                                             ; $4207: $0f
	nop                                              ; $4208: $00
	ld   bc, $7d01                                   ; $4209: $01 $01 $7d
	ld   d, d                                        ; $420c: $52
	rst  $38                                         ; $420d: $ff
	rst  $38                                         ; $420e: $ff
	sbc  a                                           ; $420f: $9f
	dec  c                                           ; $4210: $0d
	nop                                              ; $4211: $00
	ld   a, [bc]                                     ; $4212: $0a
	inc  e                                           ; $4213: $1c
	dec  c                                           ; $4214: $0d
	nop                                              ; $4215: $00
	nop                                              ; $4216: $00
	ld   bc, $9876                                   ; $4217: $01 $76 $98
	ld   d, b                                        ; $421a: $50
	ld   d, [hl]                                     ; $421b: $56
	ld   l, b                                        ; $421c: $68
	ld   h, d                                        ; $421d: $62
	ld   [bc], a                                     ; $421e: $02
	sub  h                                           ; $421f: $94
	dec  b                                           ; $4220: $05
	rrca                                             ; $4221: $0f
	ld   h, e                                        ; $4222: $63
	adc  h                                           ; $4223: $8c
	sbc  a                                           ; $4224: $9f
	dec  c                                           ; $4225: $0d
	adc  h                                           ; $4226: $8c
	ld   l, l                                        ; $4227: $6d
	sbc  [hl]                                        ; $4228: $9e
	ld   a, b                                        ; $4229: $78
	ld   a, c                                        ; $422a: $79
	ld   e, c                                        ; $422b: $59
	ld   d, b                                        ; $422c: $50
	ld   [hl], c                                     ; $422d: $71
	ld   l, l                                        ; $422e: $6d
	sub  a                                           ; $422f: $97
	dec  c                                           ; $4230: $0d
	inc  bc                                          ; $4231: $03
	ld   l, e                                        ; $4232: $6b
	inc  b                                           ; $4233: $04
	ld   [de], a                                     ; $4234: $12
	ld   [hl], c                                     ; $4235: $71
	ld   [hl], h                                     ; $4236: $74
	ld   a, e                                        ; $4237: $7b
	sbc  a                                           ; $4238: $9f
	dec  c                                           ; $4239: $0d
	nop                                              ; $423a: $00

jr_05c_423b:
	ld   a, [bc]                                     ; $423b: $0a
	dec  b                                           ; $423c: $05
	add  b                                           ; $423d: $80
	xor  h                                           ; $423e: $ac
	ld   bc, $0001                                   ; $423f: $01 $01 $00
	nop                                              ; $4242: $00
	inc  e                                           ; $4243: $1c
	dec  c                                           ; $4244: $0d
	nop                                              ; $4245: $00
	nop                                              ; $4246: $00
	ld   bc, $546b                                   ; $4247: $01 $6b $54
	ld   l, e                                        ; $424a: $6b
	ld   d, h                                        ; $424b: $54
	sbc  [hl]                                        ; $424c: $9e
	ld   [$5d00], sp                                 ; $424d: $08 $00 $5d
	and  c                                           ; $4250: $a1
	dec  c                                           ; $4251: $0d
	inc  b                                           ; $4252: $04
	dec  hl                                          ; $4253: $2b
	ld   [hl], c                                     ; $4254: $71
	ld   [hl], h                                     ; $4255: $74
	sbc  c                                           ; $4256: $99
	ld   sp, hl                                      ; $4257: $f9
	dec  c                                           ; $4258: $0d
	nop                                              ; $4259: $00
	ld   a, [bc]                                     ; $425a: $0a
	ld   bc, $6903                                   ; $425b: $01 $03 $69
	ld   [bc], a                                     ; $425e: $02
	and  b                                           ; $425f: $a0
	sbc  [hl]                                        ; $4260: $9e
	cp   b                                           ; $4261: $b8
	push hl                                          ; $4262: $e5
	pop  af                                          ; $4263: $f1
	ei                                               ; $4264: $fb
	inc  bc                                          ; $4265: $03
	ld   c, l                                        ; $4266: $4d
	and  b                                           ; $4267: $a0
	ld   a, h                                        ; $4268: $7c
	ld   l, h                                        ; $4269: $6c
	ld   e, l                                        ; $426a: $5d
	dec  c                                           ; $426b: $0d
	inc  bc                                          ; $426c: $03
	add  d                                           ; $426d: $82
	ld   e, d                                        ; $426e: $5a
	ld   d, d                                        ; $426f: $52
	sbc  c                                           ; $4270: $99
	sub  a                                           ; $4271: $97
	ld   h, l                                        ; $4272: $65
	ld   d, d                                        ; $4273: $52
	ld   a, h                                        ; $4274: $7c
	sub  [hl]                                        ; $4275: $96
	sbc  a                                           ; $4276: $9f
	dec  c                                           ; $4277: $0d
	ld   d, d                                        ; $4278: $52
	sub  d                                           ; $4279: $92
	ld   a, e                                        ; $427a: $7b
	db   $fc                                         ; $427b: $fc
	sbc  a                                           ; $427c: $9f
	dec  c                                           ; $427d: $0d
	nop                                              ; $427e: $00
	ld   a, [bc]                                     ; $427f: $0a
	ld   bc, $6c7c                                   ; $4280: $01 $7c $6c
	ld   e, e                                        ; $4283: $5b
	ld   l, [hl]                                     ; $4284: $6e
	ld   a, b                                        ; $4285: $78
	and  c                                           ; $4286: $a1
	ld   [hl], h                                     ; $4287: $74
	sbc  [hl]                                        ; $4288: $9e
	inc  bc                                          ; $4289: $03
	add  d                                           ; $428a: $82
	halt                                             ; $428b: $76
	ld   h, l                                        ; $428c: $65
	ld   [hl], h                                     ; $428d: $74
	dec  c                                           ; $428e: $0d
	or   [hl]                                        ; $428f: $b6
	and  l                                           ; $4290: $a5
	rst  ToBoot                                         ; $4291: $c7
	ei                                               ; $4292: $fb
	sub  [hl]                                        ; $4293: $96
	ld   a, e                                        ; $4294: $7b
	sbc  a                                           ; $4295: $9f
	inc  bc                                          ; $4296: $03
	add  d                                           ; $4297: $82
	ld   [bc], a                                     ; $4298: $02
	xor  c                                           ; $4299: $a9
	inc  bc                                          ; $429a: $03
	add  e                                           ; $429b: $83
	ld   [bc], a                                     ; $429c: $02
	ld   [hl], l                                     ; $429d: $75
	ld   l, [hl]                                     ; $429e: $6e
	sbc  l                                           ; $429f: $9d
	sbc  a                                           ; $42a0: $9f
	dec  c                                           ; $42a1: $0d
	nop                                              ; $42a2: $00
	ld   a, [bc]                                     ; $42a3: $0a
	rrca                                             ; $42a4: $0f
	nop                                              ; $42a5: $00
	ld   bc, $8c01                                   ; $42a6: $01 $01 $8c
	sbc  [hl]                                        ; $42a9: $9e
	adc  h                                           ; $42aa: $8c
	ld   h, e                                        ; $42ab: $63
	ld   e, c                                        ; $42ac: $59
	sbc  [hl]                                        ; $42ad: $9e
	ld   [$5d00], sp                                 ; $42ae: $08 $00 $5d
	and  c                                           ; $42b1: $a1
	rst  $38                                         ; $42b2: $ff
	dec  c                                           ; $42b3: $0d
	rst  $38                                         ; $42b4: $ff
	rst  $38                                         ; $42b5: $ff
	sub  d                                           ; $42b6: $92
	ld   [hl], c                                     ; $42b7: $71
	ld   [hl], h                                     ; $42b8: $74
	ld   a, b                                        ; $42b9: $78
	ld   d, d                                        ; $42ba: $52
	sub  [hl]                                        ; $42bb: $96
	ld   a, e                                        ; $42bc: $7b
	sbc  a                                           ; $42bd: $9f
	dec  c                                           ; $42be: $0d
	nop                                              ; $42bf: $00
	ld   a, [bc]                                     ; $42c0: $0a
	add  hl, de                                      ; $42c1: $19
	dec  b                                           ; $42c2: $05
	ld   bc, $6f90                                   ; $42c3: $01 $90 $6f
	sbc  e                                           ; $42c6: $9b
	and  c                                           ; $42c7: $a1
	sub  d                                           ; $42c8: $92
	ld   [hl], c                                     ; $42c9: $71
	ld   [hl], h                                     ; $42ca: $74
	adc  h                                           ; $42cb: $8c
	ld   l, c                                        ; $42cc: $69
	and  c                                           ; $42cd: $a1
	nop                                              ; $42ce: $00
	nop                                              ; $42cf: $00
	rlca                                             ; $42d0: $07
	ld   h, [hl]                                     ; $42d1: $66
	add  hl, bc                                      ; $42d2: $09
	ld   [bc], a                                     ; $42d3: $02
	inc  bc                                          ; $42d4: $03
	ld   bc, $2000                                   ; $42d5: $01 $00 $20
	nop                                              ; $42d8: $00
	ld   b, $1f                                      ; $42d9: $06 $1f
	ld   a, [bc]                                     ; $42db: $0a
	rrca                                             ; $42dc: $0f
	nop                                              ; $42dd: $00
	ld   bc, $9001                                   ; $42de: $01 $01 $90
	sbc  [hl]                                        ; $42e1: $9e
	sub  b                                           ; $42e2: $90
	ld   l, a                                        ; $42e3: $6f
	sbc  e                                           ; $42e4: $9b
	and  c                                           ; $42e5: $a1
	ld   h, [hl]                                     ; $42e6: $66
	sub  c                                           ; $42e7: $91
	ld   a, b                                        ; $42e8: $78
	ld   d, d                                        ; $42e9: $52
	ld   [hl], l                                     ; $42ea: $75
	ld   h, a                                        ; $42eb: $67
	ld   e, c                                        ; $42ec: $59
	sbc  a                                           ; $42ed: $9f
	dec  c                                           ; $42ee: $0d
	sub  d                                           ; $42ef: $92
	ld   [hl], c                                     ; $42f0: $71
	ld   [hl], h                                     ; $42f1: $74
	adc  h                                           ; $42f2: $8c
	ld   l, c                                        ; $42f3: $69
	and  c                                           ; $42f4: $a1
	sub  [hl]                                        ; $42f5: $96
	sbc  [hl]                                        ; $42f6: $9e
	dec  c                                           ; $42f7: $0d
	ld   l, e                                        ; $42f8: $6b
	sbc  [hl]                                        ; $42f9: $9e
	ld   l, e                                        ; $42fa: $6b
	and  c                                           ; $42fb: $a1
	ld   a, b                                        ; $42fc: $78
	ld   h, c                                        ; $42fd: $61
	halt                                             ; $42fe: $76
	rst  $38                                         ; $42ff: $ff
	rst  $38                                         ; $4300: $ff
	rst  $38                                         ; $4301: $ff
	rst  $38                                         ; $4302: $ff
	dec  c                                           ; $4303: $0d
	nop                                              ; $4304: $00
	ld   a, [bc]                                     ; $4305: $0a
	inc  e                                           ; $4306: $1c
	dec  c                                           ; $4307: $0d
	ld   bc, $0101                                   ; $4308: $01 $01 $01
	ld   l, e                                        ; $430b: $6b
	rst  $38                                         ; $430c: $ff
	rst  $38                                         ; $430d: $ff
	sbc  [hl]                                        ; $430e: $9e
	ld   l, e                                        ; $430f: $6b
	ld   d, h                                        ; $4310: $54
	sub  [hl]                                        ; $4311: $96
	ld   a, e                                        ; $4312: $7b
	sbc  a                                           ; $4313: $9f
	dec  c                                           ; $4314: $0d
	ld   [$5d00], sp                                 ; $4315: $08 $00 $5d
	and  c                                           ; $4318: $a1
	ld   e, d                                        ; $4319: $5a
	ld   l, e                                        ; $431a: $6b
	and  c                                           ; $431b: $a1
	ld   a, b                                        ; $431c: $78
	ld   h, c                                        ; $431d: $61
	halt                                             ; $431e: $76
	dec  c                                           ; $431f: $0d
	sub  d                                           ; $4320: $92
	sbc  c                                           ; $4321: $99
	ld   a, l                                        ; $4322: $7d
	ld   l, b                                        ; $4323: $68
	ld   a, b                                        ; $4324: $78
	ld   d, d                                        ; $4325: $52
	sub  b                                           ; $4326: $90
	ld   a, h                                        ; $4327: $7c
	ld   a, e                                        ; $4328: $7b
	sbc  a                                           ; $4329: $9f
	dec  c                                           ; $432a: $0d
	nop                                              ; $432b: $00
	ld   a, [bc]                                     ; $432c: $0a
	ld   b, $89                                      ; $432d: $06 $89
	ld   a, [bc]                                     ; $432f: $0a
	inc  e                                           ; $4330: $1c
	dec  c                                           ; $4331: $0d
	inc  bc                                          ; $4332: $03
	inc  bc                                          ; $4333: $03
	ld   bc, $6d50                                   ; $4334: $01 $50 $6d
	ld   h, l                                        ; $4337: $65
	ld   [hl], c                                     ; $4338: $71
	ld   l, l                                        ; $4339: $6d
	sub  a                                           ; $433a: $97
	sbc  [hl]                                        ; $433b: $9e
	ld   a, b                                        ; $433c: $78
	ld   a, c                                        ; $433d: $79
	ld   [bc], a                                     ; $433e: $02
	sbc  l                                           ; $433f: $9d
	ld   [hl], c                                     ; $4340: $71
	ld   [hl], h                                     ; $4341: $74
	dec  c                                           ; $4342: $0d
	sbc  c                                           ; $4343: $99
	and  c                                           ; $4344: $a1
	ld   l, [hl]                                     ; $4345: $6e
	sbc  e                                           ; $4346: $9b
	ld   d, h                                        ; $4347: $54
	sbc  a                                           ; $4348: $9f
	ret  nc                                          ; $4349: $d0

	ret  nc                                          ; $434a: $d0

	ret  nc                                          ; $434b: $d0

	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	rst  $38                                         ; $434e: $ff
	rst  $38                                         ; $434f: $ff
	dec  c                                           ; $4350: $0d
	rst  $38                                         ; $4351: $ff
	rst  $38                                         ; $4352: $ff
	rst  $38                                         ; $4353: $ff
	rst  $38                                         ; $4354: $ff
	rst  $38                                         ; $4355: $ff
	rst  $38                                         ; $4356: $ff
	rst  $38                                         ; $4357: $ff
	rst  $38                                         ; $4358: $ff
	rst  $38                                         ; $4359: $ff
	rst  $38                                         ; $435a: $ff
	rst  $38                                         ; $435b: $ff
	rst  $38                                         ; $435c: $ff
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	dec  c                                           ; $435f: $0d
	nop                                              ; $4360: $00
	ld   a, [bc]                                     ; $4361: $0a
	ld   bc, $ffff                                   ; $4362: $01 $ff $ff
	rst  $38                                         ; $4365: $ff
	rst  $38                                         ; $4366: $ff
	rst  $38                                         ; $4367: $ff
	rst  $38                                         ; $4368: $ff
	rst  $38                                         ; $4369: $ff
	rst  $38                                         ; $436a: $ff
	rst  $38                                         ; $436b: $ff
	rst  $38                                         ; $436c: $ff
	rst  $38                                         ; $436d: $ff
	rst  $38                                         ; $436e: $ff
	rst  $38                                         ; $436f: $ff
	rst  $38                                         ; $4370: $ff
	dec  c                                           ; $4371: $0d
	rst  $38                                         ; $4372: $ff
	rst  $38                                         ; $4373: $ff
	rst  $38                                         ; $4374: $ff
	rst  $38                                         ; $4375: $ff
	rst  $38                                         ; $4376: $ff
	rst  $38                                         ; $4377: $ff
	rst  $38                                         ; $4378: $ff
	rst  $38                                         ; $4379: $ff
	rst  $38                                         ; $437a: $ff
	rst  $38                                         ; $437b: $ff
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	rst  $38                                         ; $437e: $ff
	rst  $38                                         ; $437f: $ff
	dec  c                                           ; $4380: $0d
	rst  $38                                         ; $4381: $ff
	rst  $38                                         ; $4382: $ff
	rst  $38                                         ; $4383: $ff
	rst  $38                                         ; $4384: $ff
	rst  $38                                         ; $4385: $ff
	rst  $38                                         ; $4386: $ff
	rst  $38                                         ; $4387: $ff
	rst  $38                                         ; $4388: $ff
	rst  $38                                         ; $4389: $ff
	rst  $38                                         ; $438a: $ff
	rst  $38                                         ; $438b: $ff
	rst  $38                                         ; $438c: $ff
	rst  $38                                         ; $438d: $ff
	rst  $38                                         ; $438e: $ff
	dec  c                                           ; $438f: $0d
	nop                                              ; $4390: $00
	ld   a, [bc]                                     ; $4391: $0a
	ld   b, $89                                      ; $4392: $06 $89
	ld   a, [bc]                                     ; $4394: $0a
	inc  e                                           ; $4395: $1c
	dec  c                                           ; $4396: $0d
	inc  bc                                          ; $4397: $03
	inc  bc                                          ; $4398: $03
	ld   bc, $8c6e                                   ; $4399: $01 $6e $8c
	ld   [hl], c                                     ; $439c: $71
	ld   [hl], h                                     ; $439d: $74
	sbc  c                                           ; $439e: $99
	rst  $38                                         ; $439f: $ff
	rst  $38                                         ; $43a0: $ff
	sbc  [hl]                                        ; $43a1: $9e
	ld   [hl], h                                     ; $43a2: $74
	ld   h, c                                        ; $43a3: $61
	halt                                             ; $43a4: $76
	ld   a, l                                        ; $43a5: $7d
	dec  c                                           ; $43a6: $0d
	sub  b                                           ; $43a7: $90
	ld   h, l                                        ; $43a8: $65
	ld   e, c                                        ; $43a9: $59
	ld   h, l                                        ; $43aa: $65
	ld   [hl], h                                     ; $43ab: $74
	rst  $38                                         ; $43ac: $ff
	rst  $38                                         ; $43ad: $ff
	rst  $38                                         ; $43ae: $ff
	rst  $38                                         ; $43af: $ff
	dec  c                                           ; $43b0: $0d
	nop                                              ; $43b1: $00
	ld   a, [bc]                                     ; $43b2: $0a
	rrca                                             ; $43b3: $0f
	nop                                              ; $43b4: $00
	ld   bc, $ff01                                   ; $43b5: $01 $01 $ff
	rst  $38                                         ; $43b8: $ff
	rst  $38                                         ; $43b9: $ff
	rst  $38                                         ; $43ba: $ff
	rst  $38                                         ; $43bb: $ff
	rst  $38                                         ; $43bc: $ff
	rst  $38                                         ; $43bd: $ff
	rst  $38                                         ; $43be: $ff
	rst  $38                                         ; $43bf: $ff
	rst  $38                                         ; $43c0: $ff
	rst  $38                                         ; $43c1: $ff
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	rst  $38                                         ; $43c4: $ff
	dec  c                                           ; $43c5: $0d
	rst  $38                                         ; $43c6: $ff
	rst  $38                                         ; $43c7: $ff
	rst  $38                                         ; $43c8: $ff
	rst  $38                                         ; $43c9: $ff
	rst  $38                                         ; $43ca: $ff
	rst  $38                                         ; $43cb: $ff
	rst  $38                                         ; $43cc: $ff
	rst  $38                                         ; $43cd: $ff
	rst  $38                                         ; $43ce: $ff
	rst  $38                                         ; $43cf: $ff
	rst  $38                                         ; $43d0: $ff
	rst  $38                                         ; $43d1: $ff
	rst  $38                                         ; $43d2: $ff
	rst  $38                                         ; $43d3: $ff
	dec  c                                           ; $43d4: $0d
	rst  $38                                         ; $43d5: $ff
	rst  $38                                         ; $43d6: $ff
	rst  $38                                         ; $43d7: $ff
	rst  $38                                         ; $43d8: $ff
	rst  $38                                         ; $43d9: $ff
	rst  $38                                         ; $43da: $ff
	rst  $38                                         ; $43db: $ff
	rst  $38                                         ; $43dc: $ff
	rst  $38                                         ; $43dd: $ff
	rst  $38                                         ; $43de: $ff
	rst  $38                                         ; $43df: $ff
	rst  $38                                         ; $43e0: $ff
	rst  $38                                         ; $43e1: $ff
	rst  $38                                         ; $43e2: $ff
	dec  c                                           ; $43e3: $0d
	nop                                              ; $43e4: $00
	ld   a, [bc]                                     ; $43e5: $0a
	inc  e                                           ; $43e6: $1c
	dec  c                                           ; $43e7: $0d
	inc  bc                                          ; $43e8: $03
	inc  bc                                          ; $43e9: $03
	ld   bc, $ffff                                   ; $43ea: $01 $ff $ff
	ld   d, [hl]                                     ; $43ed: $56
	sbc  [hl]                                        ; $43ee: $9e
	ld   d, [hl]                                     ; $43ef: $56
	ei                                               ; $43f0: $fb
	halt                                             ; $43f1: $76
	rst  $38                                         ; $43f2: $ff
	rst  $38                                         ; $43f3: $ff
	dec  c                                           ; $43f4: $0d
	ld   d, b                                        ; $43f5: $50
	ld   a, h                                        ; $43f6: $7c
	rst  $38                                         ; $43f7: $ff
	rst  $38                                         ; $43f8: $ff
	dec  c                                           ; $43f9: $0d
	nop                                              ; $43fa: $00
	ld   a, [bc]                                     ; $43fb: $0a
	ld   b, $89                                      ; $43fc: $06 $89
	ld   a, [bc]                                     ; $43fe: $0a
	inc  e                                           ; $43ff: $1c
	dec  c                                           ; $4400: $0d
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	ld   bc, $9e8c                                   ; $4403: $01 $8c $9e
	adc  h                                           ; $4406: $8c
	ld   d, b                                        ; $4407: $50
	sbc  [hl]                                        ; $4408: $9e
	ld   l, e                                        ; $4409: $6b
	and  c                                           ; $440a: $a1
	ld   a, b                                        ; $440b: $78
	dec  b                                           ; $440c: $05
	jr   nz, jr_05c_4413                             ; $440d: $20 $04

	dec  d                                           ; $440f: $15
	ld   a, l                                        ; $4410: $7d
	dec  c                                           ; $4411: $0d
	halt                                             ; $4412: $76

jr_05c_4413:
	sub  b                                           ; $4413: $90
	ld   e, c                                        ; $4414: $59
	ld   e, l                                        ; $4415: $5d
	sbc  [hl]                                        ; $4416: $9e
	ld   h, e                                        ; $4417: $63
	rst  $38                                         ; $4418: $ff
	sbc  [hl]                                        ; $4419: $9e
	inc  bc                                          ; $441a: $03
	xor  h                                           ; $441b: $ac
	ld   b, $8a                                      ; $441c: $06 $8a
	and  b                                           ; $441e: $a0
	ld   [bc], a                                     ; $441f: $02
	ei                                               ; $4420: $fb
	ld   e, a                                        ; $4421: $5f
	ld   [hl], h                                     ; $4422: $74
	dec  c                                           ; $4423: $0d
	ld   [$5d00], sp                                 ; $4424: $08 $00 $5d
	and  c                                           ; $4427: $a1
	sbc  a                                           ; $4428: $9f
	dec  c                                           ; $4429: $0d
	nop                                              ; $442a: $00
	ld   a, [bc]                                     ; $442b: $0a
	rrca                                             ; $442c: $0f
	nop                                              ; $442d: $00
	ld   bc, $ff01                                   ; $442e: $01 $01 $ff
	rst  $38                                         ; $4431: $ff
	rst  $38                                         ; $4432: $ff
	rst  $38                                         ; $4433: $ff
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	ld   a, l                                        ; $4436: $7d
	ld   d, d                                        ; $4437: $52
	sbc  a                                           ; $4438: $9f
	dec  c                                           ; $4439: $0d
	nop                                              ; $443a: $00
	ld   a, [bc]                                     ; $443b: $0a
	dec  c                                           ; $443c: $0d
	nop                                              ; $443d: $00
	nop                                              ; $443e: $00
	db   $10                                         ; $443f: $10
	ld   c, e                                        ; $4440: $4b
	nop                                              ; $4441: $00
	ld   bc, $0412                                   ; $4442: $01 $12 $04
	push bc                                          ; $4445: $c5
	sbc  [hl]                                        ; $4446: $9e
	inc  de                                          ; $4447: $13
	inc  b                                           ; $4448: $04
	push bc                                          ; $4449: $c5
	rst  $38                                         ; $444a: $ff
	rst  $38                                         ; $444b: $ff
	ld   d, $04                                      ; $444c: $16 $04
	push bc                                          ; $444e: $c5
	rst  $38                                         ; $444f: $ff
	rst  $38                                         ; $4450: $ff
	rst  $38                                         ; $4451: $ff
	rst  $38                                         ; $4452: $ff
	dec  c                                           ; $4453: $0d
	ld   [de], a                                     ; $4454: $12
	add  hl, de                                      ; $4455: $19
	inc  b                                           ; $4456: $04
	push bc                                          ; $4457: $c5
	rst  $38                                         ; $4458: $ff
	rst  $38                                         ; $4459: $ff
	rst  $38                                         ; $445a: $ff
	rst  $38                                         ; $445b: $ff
	inc  d                                           ; $445c: $14
	ld   [de], a                                     ; $445d: $12
	inc  b                                           ; $445e: $04
	push bc                                          ; $445f: $c5
	rst  $38                                         ; $4460: $ff
	rst  $38                                         ; $4461: $ff
	rst  $38                                         ; $4462: $ff
	rst  $38                                         ; $4463: $ff
	dec  c                                           ; $4464: $0d
	dec  d                                           ; $4465: $15
	jr   jr_05c_446c                                 ; $4466: $18 $04

	push bc                                          ; $4468: $c5
	rst  $38                                         ; $4469: $ff
	rst  $38                                         ; $446a: $ff
	rst  $38                                         ; $446b: $ff

jr_05c_446c:
	rst  $38                                         ; $446c: $ff
	ld   d, $14                                      ; $446d: $16 $14
	inc  b                                           ; $446f: $04
	push bc                                          ; $4470: $c5
	sbc  a                                           ; $4471: $9f
	dec  c                                           ; $4472: $0d
	nop                                              ; $4473: $00
	ld   a, [bc]                                     ; $4474: $0a
	ld   bc, $020a                                   ; $4475: $01 $0a $02
	inc  bc                                          ; $4478: $03
	ld   l, c                                        ; $4479: $69
	ld   [bc], a                                     ; $447a: $02
	xor  d                                           ; $447b: $aa
	ld   a, l                                        ; $447c: $7d
	ld   d, $14                                      ; $447d: $16 $14
	inc  b                                           ; $447f: $04
	push bc                                          ; $4480: $c5
	sbc  a                                           ; $4481: $9f
	ld   a, [bc]                                     ; $4482: $0a
	inc  bc                                          ; $4483: $03
	dec  c                                           ; $4484: $0d
	sub  [hl]                                        ; $4485: $96
	ld   h, l                                        ; $4486: $65
	sbc  [hl]                                        ; $4487: $9e
	inc  bc                                          ; $4488: $03
	ld   a, [hl]                                     ; $4489: $7e
	dec  b                                           ; $448a: $05
	nop                                              ; $448b: $00
	sbc  a                                           ; $448c: $9f
	dec  c                                           ; $448d: $0d
	nop                                              ; $448e: $00
	ld   a, [bc]                                     ; $448f: $0a
	inc  e                                           ; $4490: $1c
	dec  c                                           ; $4491: $0d
	nop                                              ; $4492: $00
	nop                                              ; $4493: $00
	ld   bc, $7e03                                   ; $4494: $01 $03 $7e
	sbc  l                                           ; $4497: $9d
	ld   [hl], c                                     ; $4498: $71
	ld   l, l                                        ; $4499: $6d
	ld   a, h                                        ; $449a: $7c
	ld   a, e                                        ; $449b: $7b
	ld   [$5d00], sp                                 ; $449c: $08 $00 $5d
	and  c                                           ; $449f: $a1
	sbc  a                                           ; $44a0: $9f
	dec  c                                           ; $44a1: $0d
	ld   h, [hl]                                     ; $44a2: $66
	sub  c                                           ; $44a3: $91
	ld   d, b                                        ; $44a4: $50
	sbc  [hl]                                        ; $44a5: $9e
	ld   l, e                                        ; $44a6: $6b
	sbc  d                                           ; $44a7: $9a
	ld   l, h                                        ; $44a8: $6c
	sbc  d                                           ; $44a9: $9a
	ld   a, h                                        ; $44aa: $7c
	inc  b                                           ; $44ab: $04
	push bc                                          ; $44ac: $c5
	inc  bc                                          ; $44ad: $03
	pop  bc                                          ; $44ae: $c1
	and  b                                           ; $44af: $a0
	dec  c                                           ; $44b0: $0d
	inc  b                                           ; $44b1: $04
	ld   l, a                                        ; $44b2: $6f
	ld   [bc], a                                     ; $44b3: $02
	ld   [hl], h                                     ; $44b4: $74
	ld   h, l                                        ; $44b5: $65
	ld   [hl], h                                     ; $44b6: $74
	ld   l, a                                        ; $44b7: $6f
	sub  l                                           ; $44b8: $95
	ld   d, h                                        ; $44b9: $54
	ld   l, [hl]                                     ; $44ba: $6e
	ld   d, d                                        ; $44bb: $52
	sbc  a                                           ; $44bc: $9f
	dec  c                                           ; $44bd: $0d
	nop                                              ; $44be: $00
	ld   a, [bc]                                     ; $44bf: $0a
	add  hl, de                                      ; $44c0: $19
	dec  b                                           ; $44c1: $05
	inc  bc                                          ; $44c2: $03
	rla                                              ; $44c3: $17
	jr   jr_05c_44ca                                 ; $44c4: $18 $04

	push bc                                          ; $44c6: $c5
	sbc  [hl]                                        ; $44c7: $9e
	jr   @+$1c                                       ; $44c8: $18 $1a

jr_05c_44ca:
	inc  b                                           ; $44ca: $04
	push bc                                          ; $44cb: $c5
	sbc  [hl]                                        ; $44cc: $9e
	ld   d, $14                                      ; $44cd: $16 $14
	inc  b                                           ; $44cf: $04
	push bc                                          ; $44d0: $c5
	nop                                              ; $44d1: $00
	nop                                              ; $44d2: $00
	rla                                              ; $44d3: $17
	inc  de                                          ; $44d4: $13
	inc  b                                           ; $44d5: $04
	push bc                                          ; $44d6: $c5
	sbc  [hl]                                        ; $44d7: $9e
	add  hl, de                                      ; $44d8: $19
	inc  d                                           ; $44d9: $14
	inc  b                                           ; $44da: $04
	push bc                                          ; $44db: $c5
	sbc  [hl]                                        ; $44dc: $9e
	ld   d, $14                                      ; $44dd: $16 $14
	inc  b                                           ; $44df: $04
	push bc                                          ; $44e0: $c5
	nop                                              ; $44e1: $00
	ld   bc, $1418                                   ; $44e2: $01 $18 $14
	inc  b                                           ; $44e5: $04
	push bc                                          ; $44e6: $c5
	sbc  [hl]                                        ; $44e7: $9e
	rla                                              ; $44e8: $17
	ld   a, [de]                                     ; $44e9: $1a
	inc  b                                           ; $44ea: $04
	push bc                                          ; $44eb: $c5
	sbc  [hl]                                        ; $44ec: $9e
	ld   d, $18                                      ; $44ed: $16 $18
	inc  b                                           ; $44ef: $04
	push bc                                          ; $44f0: $c5
	nop                                              ; $44f1: $00
	ld   [bc], a                                     ; $44f2: $02
	rlca                                             ; $44f3: $07
	xor  a                                           ; $44f4: $af
	dec  bc                                          ; $44f5: $0b
	ld   [bc], a                                     ; $44f6: $02
	inc  bc                                          ; $44f7: $03
	ld   bc, $2000                                   ; $44f8: $01 $00 $20
	nop                                              ; $44fb: $00
	rlca                                             ; $44fc: $07
	ret  c                                           ; $44fd: $d8

	inc  c                                           ; $44fe: $0c
	ld   [bc], a                                     ; $44ff: $02
	inc  bc                                          ; $4500: $03
	ld   bc, $2001                                   ; $4501: $01 $01 $20

Jump_05c_4504:
	nop                                              ; $4504: $00
	rlca                                             ; $4505: $07
	di                                               ; $4506: $f3
	inc  c                                           ; $4507: $0c
	ld   [bc], a                                     ; $4508: $02
	inc  bc                                          ; $4509: $03
	ld   bc, $2002                                   ; $450a: $01 $02 $20
	nop                                              ; $450d: $00
	ld   b, $9b                                      ; $450e: $06 $9b
	dec  bc                                          ; $4510: $0b
	inc  e                                           ; $4511: $1c
	dec  c                                           ; $4512: $0d
	ld   [bc], a                                     ; $4513: $02
	ld   [bc], a                                     ; $4514: $02
	ld   bc, $5490                                   ; $4515: $01 $90 $54
	sbc  [hl]                                        ; $4518: $9e
	ld   a, l                                        ; $4519: $7d
	sub  d                                           ; $451a: $92
	ld   e, l                                        ; $451b: $5d
	ld   h, l                                        ; $451c: $65
	ld   [hl], h                                     ; $451d: $74
	sbc  a                                           ; $451e: $9f
	dec  c                                           ; $451f: $0d
	nop                                              ; $4520: $00
	ld   a, [bc]                                     ; $4521: $0a
	ld   b, $4a                                      ; $4522: $06 $4a
	dec  bc                                          ; $4524: $0b
	inc  e                                           ; $4525: $1c
	dec  c                                           ; $4526: $0d
	nop                                              ; $4527: $00
	nop                                              ; $4528: $00
	ld   bc, $1817                                   ; $4529: $01 $17 $18
	inc  b                                           ; $452c: $04
	push bc                                          ; $452d: $c5
	sbc  [hl]                                        ; $452e: $9e
	jr   jr_05c_454b                                 ; $452f: $18 $1a

	inc  b                                           ; $4531: $04
	push bc                                          ; $4532: $c5
	sbc  [hl]                                        ; $4533: $9e
	ld   d, $14                                      ; $4534: $16 $14
	inc  b                                           ; $4536: $04
	push bc                                          ; $4537: $c5
	ld   a, e                                        ; $4538: $7b
	sbc  a                                           ; $4539: $9f
	dec  c                                           ; $453a: $0d
	nop                                              ; $453b: $00
	ld   a, [bc]                                     ; $453c: $0a
	rrca                                             ; $453d: $0f
	inc  c                                           ; $453e: $0c
	nop                                              ; $453f: $00
	ld   bc, $9750                                   ; $4540: $01 $50 $97
	sbc  [hl]                                        ; $4543: $9e
	inc  b                                           ; $4544: $04
	pop  hl                                          ; $4545: $e1
	inc  b                                           ; $4546: $04
	rst  $38                                         ; $4547: $ff
	sbc  [hl]                                        ; $4548: $9e
	ld   a, b                                        ; $4549: $78
	ld   a, c                                        ; $454a: $79

jr_05c_454b:
	ld   h, l                                        ; $454b: $65
	ld   [hl], h                                     ; $454c: $74
	sbc  c                                           ; $454d: $99
	ld   a, h                                        ; $454e: $7c
	ld   sp, hl                                      ; $454f: $f9
	dec  c                                           ; $4550: $0d
	ld   l, e                                        ; $4551: $6b
	sbc  d                                           ; $4552: $9a
	sbc  [hl]                                        ; $4553: $9e
	ld   h, e                                        ; $4554: $63
	ld   [hl], c                                     ; $4555: $71
	ld   e, e                                        ; $4556: $5b
	sbc  l                                           ; $4557: $9d
	ld   l, l                                        ; $4558: $6d
	ld   h, l                                        ; $4559: $65
	ld   e, d                                        ; $455a: $5a
	inc  bc                                          ; $455b: $03
	pop  bc                                          ; $455c: $c1
	ld   d, [hl]                                     ; $455d: $56
	ld   l, l                                        ; $455e: $6d
	dec  c                                           ; $455f: $0d
	inc  bc                                          ; $4560: $03
	ld   d, l                                        ; $4561: $55
	dec  b                                           ; $4562: $05
	ld   h, d                                        ; $4563: $62
	ld   h, [hl]                                     ; $4564: $66
	sub  c                                           ; $4565: $91
	ld   a, b                                        ; $4566: $78
	ld   d, d                                        ; $4567: $52
	sbc  a                                           ; $4568: $9f
	dec  c                                           ; $4569: $0d
	nop                                              ; $456a: $00
	ld   a, [bc]                                     ; $456b: $0a
	ld   bc, $8b06                                   ; $456c: $01 $06 $8b
	ld   a, c                                        ; $456f: $79
	db   $e3                                         ; $4570: $e3
	db   $e4                                         ; $4571: $e4
	ld   e, d                                        ; $4572: $5a
	inc  b                                           ; $4573: $04
	jr   z, jr_05c_45c8                              ; $4574: $28 $52

	ld   [hl], h                                     ; $4576: $74
	ld   d, b                                        ; $4577: $50
	sbc  c                                           ; $4578: $99
	ld   [hl], l                                     ; $4579: $75
	ld   h, l                                        ; $457a: $65
	sub  l                                           ; $457b: $95
	sbc  a                                           ; $457c: $9f
	dec  c                                           ; $457d: $0d
	nop                                              ; $457e: $00
	ld   a, [bc]                                     ; $457f: $0a
	rrca                                             ; $4580: $0f
	dec  c                                           ; $4581: $0d
	nop                                              ; $4582: $00
	ld   bc, $7150                                   ; $4583: $01 $50 $71
	sbc  [hl]                                        ; $4586: $9e
	call c, $c9f5                                    ; $4587: $dc $f5 $c9
	ld   l, [hl]                                     ; $458a: $6e
	rst  $38                                         ; $458b: $ff
	rst  $38                                         ; $458c: $ff
	ld   d, [hl]                                     ; $458d: $56
	db   $fc                                         ; $458e: $fc
	ld   [hl], c                                     ; $458f: $71
	halt                                             ; $4590: $76
	dec  c                                           ; $4591: $0d
	ld   bc, $1707                                   ; $4592: $01 $07 $17
	jr   jr_05c_459b                                 ; $4595: $18 $04

	push bc                                          ; $4597: $c5
	sbc  [hl]                                        ; $4598: $9e
	jr   jr_05c_45b5                                 ; $4599: $18 $1a

jr_05c_459b:
	inc  b                                           ; $459b: $04
	push bc                                          ; $459c: $c5
	sbc  [hl]                                        ; $459d: $9e
	ld   d, $14                                      ; $459e: $16 $14
	inc  b                                           ; $45a0: $04
	push bc                                          ; $45a1: $c5
	ld   bc, $0d08                                   ; $45a2: $01 $08 $0d
	ld   d, b                                        ; $45a5: $50
	ld   [hl], c                                     ; $45a6: $71
	ld   [hl], h                                     ; $45a7: $74
	sbc  c                                           ; $45a8: $99
	sbc  l                                           ; $45a9: $9d
	sbc  a                                           ; $45aa: $9f
	dec  c                                           ; $45ab: $0d
	nop                                              ; $45ac: $00
	ld   a, [bc]                                     ; $45ad: $0a
	inc  e                                           ; $45ae: $1c
	dec  c                                           ; $45af: $0d
	ld   bc, $0101                                   ; $45b0: $01 $01 $01
	ld   e, b                                        ; $45b3: $58
	inc  b                                           ; $45b4: $04

jr_05c_45b5:
	ld   a, e                                        ; $45b5: $7b
	sbc  d                                           ; $45b6: $9a
	ld   h, e                                        ; $45b7: $63
	adc  h                                           ; $45b8: $8c
	sbc  [hl]                                        ; $45b9: $9e
	ld   [$5d00], sp                                 ; $45ba: $08 $00 $5d
	and  c                                           ; $45bd: $a1
	sbc  a                                           ; $45be: $9f
	dec  c                                           ; $45bf: $0d
	ld   h, d                                        ; $45c0: $62
	adc  a                                           ; $45c1: $8f
	and  c                                           ; $45c2: $a1
	ld   a, e                                        ; $45c3: $7b
	sbc  a                                           ; $45c4: $9f
	ld   e, c                                        ; $45c5: $59
	ld   h, a                                        ; $45c6: $67
	adc  l                                           ; $45c7: $8d

jr_05c_45c8:
	ld   h, e                                        ; $45c8: $63
	and  c                                           ; $45c9: $a1
	ld   e, d                                        ; $45ca: $5a
	dec  c                                           ; $45cb: $0d
	sub  b                                           ; $45cc: $90
	ld   d, h                                        ; $45cd: $54
	inc  bc                                          ; $45ce: $03
	pop  bc                                          ; $45cf: $c1
	ld   d, [hl]                                     ; $45d0: $56
	ld   [hl], h                                     ; $45d1: $74
	ld   l, l                                        ; $45d2: $6d
	and  c                                           ; $45d3: $a1
	ld   l, [hl]                                     ; $45d4: $6e
	ld   [hl], c                                     ; $45d5: $71
	ld   [hl], h                                     ; $45d6: $74
	sbc  a                                           ; $45d7: $9f
	dec  c                                           ; $45d8: $0d
	nop                                              ; $45d9: $00
	ld   a, [bc]                                     ; $45da: $0a
	ld   bc, $9075                                   ; $45db: $01 $75 $90
	sbc  [hl]                                        ; $45de: $9e
	inc  b                                           ; $45df: $04
	push bc                                          ; $45e0: $c5
	inc  bc                                          ; $45e1: $03
	pop  bc                                          ; $45e2: $c1
	ld   a, l                                        ; $45e3: $7d
	pop  de                                          ; $45e4: $d1
	call nz, $ecc2                                   ; $45e5: $c4 $c2 $ec
	ld   d, b                                        ; $45e8: $50
	ld   [hl], c                                     ; $45e9: $71
	ld   [hl], h                                     ; $45ea: $74
	ld   l, l                                        ; $45eb: $6d
	dec  c                                           ; $45ec: $0d
	ld   h, [hl]                                     ; $45ed: $66
	sub  c                                           ; $45ee: $91
	ld   a, b                                        ; $45ef: $78
	ld   d, d                                        ; $45f0: $52
	sbc  a                                           ; $45f1: $9f
	dec  c                                           ; $45f2: $0d
	ld   h, e                                        ; $45f3: $63
	ld   h, a                                        ; $45f4: $67
	ld   e, d                                        ; $45f5: $5a
	ld   a, l                                        ; $45f6: $7d
	sbc  [hl]                                        ; $45f7: $9e
	ld   [$5d00], sp                                 ; $45f8: $08 $00 $5d
	and  c                                           ; $45fb: $a1
	ld   a, e                                        ; $45fc: $7b
	sbc  a                                           ; $45fd: $9f
	dec  c                                           ; $45fe: $0d
	nop                                              ; $45ff: $00
	ld   a, [bc]                                     ; $4600: $0a
	ld   bc, $2002                                   ; $4601: $01 $02 $20
	ld   [bc], a                                     ; $4604: $02
	add  hl, bc                                      ; $4605: $09
	sbc  [hl]                                        ; $4606: $9e
	inc  bc                                          ; $4607: $03
	pop  bc                                          ; $4608: $c1
	ld   d, [hl]                                     ; $4609: $56
	adc  h                                           ; $460a: $8c
	ld   l, a                                        ; $460b: $6f
	ld   e, d                                        ; $460c: $5a
	ld   d, d                                        ; $460d: $52
	ld   e, d                                        ; $460e: $5a
	ld   a, b                                        ; $460f: $78
	ld   d, d                                        ; $4610: $52
	ld   e, c                                        ; $4611: $59
	dec  c                                           ; $4612: $0d
	ld   [bc], a                                     ; $4613: $02
	sbc  a                                           ; $4614: $9f
	inc  b                                           ; $4615: $04
	dec  sp                                          ; $4616: $3b
	ld   [hl], l                                     ; $4617: $75
	ld   e, e                                        ; $4618: $5b
	ld   l, l                                        ; $4619: $6d
	halt                                             ; $461a: $76
	ld   [bc], a                                     ; $461b: $02
	sbc  l                                           ; $461c: $9d
	ld   d, h                                        ; $461d: $54
	ld   h, c                                        ; $461e: $61
	halt                                             ; $461f: $76
	ld   [hl], l                                     ; $4620: $75
	rst  $38                                         ; $4621: $ff
	rst  $38                                         ; $4622: $ff
	dec  c                                           ; $4623: $0d
	xor  c                                           ; $4624: $a9
	reti                                             ; $4625: $d9


	reti                                             ; $4626: $d9


	reti                                             ; $4627: $d9


	reti                                             ; $4628: $d9


	rst  $38                                         ; $4629: $ff
	rst  $38                                         ; $462a: $ff
	dec  c                                           ; $462b: $0d
	nop                                              ; $462c: $00
	ld   a, [bc]                                     ; $462d: $0a
	ld   bc, $0262                                   ; $462e: $01 $62 $02
	sub  h                                           ; $4631: $94
	dec  b                                           ; $4632: $05
	rrca                                             ; $4633: $0f
	ld   h, e                                        ; $4634: $63
	adc  h                                           ; $4635: $8c
	ld   [hl], l                                     ; $4636: $75
	ld   h, l                                        ; $4637: $65
	ld   l, l                                        ; $4638: $6d
	sbc  a                                           ; $4639: $9f
	dec  c                                           ; $463a: $0d
	ld   h, [hl]                                     ; $463b: $66
	sub  c                                           ; $463c: $91
	sbc  [hl]                                        ; $463d: $9e
	ld   d, b                                        ; $463e: $50
	sbc  b                                           ; $463f: $98
	ld   e, d                                        ; $4640: $5a
	halt                                             ; $4641: $76
	ld   d, h                                        ; $4642: $54
	sbc  a                                           ; $4643: $9f
	dec  c                                           ; $4644: $0d
	nop                                              ; $4645: $00
	ld   a, [bc]                                     ; $4646: $0a
	dec  b                                           ; $4647: $05
	add  b                                           ; $4648: $80
	xor  h                                           ; $4649: $ac
	ld   bc, $0001                                   ; $464a: $01 $01 $00
	nop                                              ; $464d: $00
	inc  e                                           ; $464e: $1c
	dec  c                                           ; $464f: $0d
	nop                                              ; $4650: $00
	nop                                              ; $4651: $00
	ld   bc, $1317                                   ; $4652: $01 $17 $13
	inc  b                                           ; $4655: $04
	push bc                                          ; $4656: $c5
	sbc  [hl]                                        ; $4657: $9e
	add  hl, de                                      ; $4658: $19
	inc  d                                           ; $4659: $14
	inc  b                                           ; $465a: $04
	push bc                                          ; $465b: $c5
	sbc  [hl]                                        ; $465c: $9e
	ld   d, $14                                      ; $465d: $16 $14
	inc  b                                           ; $465f: $04
	push bc                                          ; $4660: $c5
	ld   a, e                                        ; $4661: $7b
	sbc  a                                           ; $4662: $9f
	dec  c                                           ; $4663: $0d
	nop                                              ; $4664: $00
	ld   a, [bc]                                     ; $4665: $0a
	ld   b, $0b                                      ; $4666: $06 $0b
	dec  c                                           ; $4668: $0d
	inc  e                                           ; $4669: $1c
	dec  c                                           ; $466a: $0d
	nop                                              ; $466b: $00
	nop                                              ; $466c: $00
	ld   bc, $1418                                   ; $466d: $01 $18 $14
	inc  b                                           ; $4670: $04
	push bc                                          ; $4671: $c5
	sbc  [hl]                                        ; $4672: $9e
	rla                                              ; $4673: $17
	ld   a, [de]                                     ; $4674: $1a
	inc  b                                           ; $4675: $04
	push bc                                          ; $4676: $c5
	sbc  [hl]                                        ; $4677: $9e
	ld   d, $18                                      ; $4678: $16 $18
	inc  b                                           ; $467a: $04
	push bc                                          ; $467b: $c5
	ld   a, e                                        ; $467c: $7b
	sbc  a                                           ; $467d: $9f
	dec  c                                           ; $467e: $0d
	nop                                              ; $467f: $00
	ld   a, [bc]                                     ; $4680: $0a
	rrca                                             ; $4681: $0f
	inc  c                                           ; $4682: $0c
	nop                                              ; $4683: $00
	ld   bc, $9750                                   ; $4684: $01 $50 $97
	sbc  [hl]                                        ; $4687: $9e
	inc  b                                           ; $4688: $04
	pop  hl                                          ; $4689: $e1
	inc  b                                           ; $468a: $04
	rst  $38                                         ; $468b: $ff
	sbc  [hl]                                        ; $468c: $9e
	ld   a, b                                        ; $468d: $78
	ld   a, c                                        ; $468e: $79
	ld   h, l                                        ; $468f: $65
	ld   [hl], h                                     ; $4690: $74
	sbc  c                                           ; $4691: $99
	ld   a, h                                        ; $4692: $7c
	ld   sp, hl                                      ; $4693: $f9
	dec  c                                           ; $4694: $0d
	ld   l, e                                        ; $4695: $6b
	sbc  d                                           ; $4696: $9a
	sbc  [hl]                                        ; $4697: $9e
	ld   h, e                                        ; $4698: $63
	ld   [hl], c                                     ; $4699: $71
	ld   e, e                                        ; $469a: $5b
	sbc  l                                           ; $469b: $9d
	ld   l, l                                        ; $469c: $6d
	ld   h, l                                        ; $469d: $65
	ld   e, d                                        ; $469e: $5a
	inc  bc                                          ; $469f: $03
	pop  bc                                          ; $46a0: $c1
	ld   d, [hl]                                     ; $46a1: $56
	ld   l, l                                        ; $46a2: $6d
	dec  c                                           ; $46a3: $0d
	inc  bc                                          ; $46a4: $03
	ld   d, l                                        ; $46a5: $55
	dec  b                                           ; $46a6: $05
	ld   h, d                                        ; $46a7: $62
	ld   h, [hl]                                     ; $46a8: $66
	sub  c                                           ; $46a9: $91
	ld   a, b                                        ; $46aa: $78
	ld   d, d                                        ; $46ab: $52
	sbc  a                                           ; $46ac: $9f
	dec  c                                           ; $46ad: $0d
	nop                                              ; $46ae: $00
	ld   a, [bc]                                     ; $46af: $0a
	ld   bc, $8b06                                   ; $46b0: $01 $06 $8b
	ld   a, c                                        ; $46b3: $79
	db   $e3                                         ; $46b4: $e3
	db   $e4                                         ; $46b5: $e4
	ld   e, d                                        ; $46b6: $5a
	inc  b                                           ; $46b7: $04
	jr   z, jr_05c_470c                              ; $46b8: $28 $52

	ld   [hl], h                                     ; $46ba: $74
	ld   d, b                                        ; $46bb: $50
	sbc  c                                           ; $46bc: $99
	ld   [hl], l                                     ; $46bd: $75
	ld   h, l                                        ; $46be: $65
	sub  l                                           ; $46bf: $95
	sbc  a                                           ; $46c0: $9f
	dec  c                                           ; $46c1: $0d
	nop                                              ; $46c2: $00
	ld   a, [bc]                                     ; $46c3: $0a
	rrca                                             ; $46c4: $0f
	dec  c                                           ; $46c5: $0d
	nop                                              ; $46c6: $00
	ld   bc, $7150                                   ; $46c7: $01 $50 $71
	sbc  [hl]                                        ; $46ca: $9e
	call c, $c9f5                                    ; $46cb: $dc $f5 $c9
	ld   l, [hl]                                     ; $46ce: $6e
	rst  $38                                         ; $46cf: $ff
	rst  $38                                         ; $46d0: $ff
	ld   d, [hl]                                     ; $46d1: $56
	db   $fc                                         ; $46d2: $fc
	ld   [hl], c                                     ; $46d3: $71
	halt                                             ; $46d4: $76
	dec  c                                           ; $46d5: $0d
	ld   bc, $1707                                   ; $46d6: $01 $07 $17
	jr   jr_05c_46df                                 ; $46d9: $18 $04

	push bc                                          ; $46db: $c5
	sbc  [hl]                                        ; $46dc: $9e
	jr   @+$1c                                       ; $46dd: $18 $1a

jr_05c_46df:
	inc  b                                           ; $46df: $04
	push bc                                          ; $46e0: $c5
	sbc  [hl]                                        ; $46e1: $9e
	ld   d, $14                                      ; $46e2: $16 $14
	inc  b                                           ; $46e4: $04
	push bc                                          ; $46e5: $c5
	ld   bc, $0d08                                   ; $46e6: $01 $08 $0d
	rst  $38                                         ; $46e9: $ff
	rst  $38                                         ; $46ea: $ff
	rst  $38                                         ; $46eb: $ff
	rst  $38                                         ; $46ec: $ff
	rst  $38                                         ; $46ed: $ff
	rst  $38                                         ; $46ee: $ff
	dec  c                                           ; $46ef: $0d
	nop                                              ; $46f0: $00
	ld   a, [bc]                                     ; $46f1: $0a
	inc  e                                           ; $46f2: $1c
	dec  c                                           ; $46f3: $0d
	ld   bc, $0101                                   ; $46f4: $01 $01 $01
	ld   [$5d00], sp                                 ; $46f7: $08 $00 $5d
	and  c                                           ; $46fa: $a1
	sbc  a                                           ; $46fb: $9f
	ld   l, a                                        ; $46fc: $6f
	ld   e, d                                        ; $46fd: $5a
	ld   d, h                                        ; $46fe: $54
	sbc  l                                           ; $46ff: $9d
	sub  [hl]                                        ; $4700: $96
	sbc  a                                           ; $4701: $9f
	dec  c                                           ; $4702: $0d
	ld   e, c                                        ; $4703: $59
	ld   h, a                                        ; $4704: $67
	adc  l                                           ; $4705: $8d
	ld   h, e                                        ; $4706: $63
	and  c                                           ; $4707: $a1
	ld   e, d                                        ; $4708: $5a
	inc  bc                                          ; $4709: $03
	pop  bc                                          ; $470a: $c1
	ld   d, [hl]                                     ; $470b: $56

jr_05c_470c:
	ld   [hl], h                                     ; $470c: $74
	ld   d, d                                        ; $470d: $52
	ld   l, l                                        ; $470e: $6d
	ld   e, c                                        ; $470f: $59
	sub  a                                           ; $4710: $97
	dec  c                                           ; $4711: $0d
	dec  b                                           ; $4712: $05
	dec  d                                           ; $4713: $15
	ld   e, c                                        ; $4714: $59
	ld   [hl], c                                     ; $4715: $71
	ld   l, l                                        ; $4716: $6d
	sub  [hl]                                        ; $4717: $96
	ld   d, h                                        ; $4718: $54
	ld   a, b                                        ; $4719: $78
	sub  b                                           ; $471a: $90
	ld   a, h                                        ; $471b: $7c
	ld   a, h                                        ; $471c: $7c
	rst  $38                                         ; $471d: $ff
	rst  $38                                         ; $471e: $ff
	dec  c                                           ; $471f: $0d
	nop                                              ; $4720: $00
	ld   a, [bc]                                     ; $4721: $0a
	rrca                                             ; $4722: $0f
	nop                                              ; $4723: $00
	ld   bc, $6b01                                   ; $4724: $01 $01 $6b
	sbc  d                                           ; $4727: $9a
	ld   a, l                                        ; $4728: $7d
	sbc  [hl]                                        ; $4729: $9e
	inc  b                                           ; $472a: $04
	pop  hl                                          ; $472b: $e1
	inc  b                                           ; $472c: $04
	rst  $38                                         ; $472d: $ff
	ld   h, e                                        ; $472e: $63
	and  c                                           ; $472f: $a1
	ld   e, d                                        ; $4730: $5a
	inc  b                                           ; $4731: $04
	ld   [hl-], a                                    ; $4732: $32
	inc  b                                           ; $4733: $04
	dec  bc                                          ; $4734: $0b
	ld   [hl], l                                     ; $4735: $75
	dec  c                                           ; $4736: $0d
	dec  b                                           ; $4737: $05
	jr   nz, jr_05c_479f                             ; $4738: $20 $65

	ld   e, c                                        ; $473a: $59
	ld   e, a                                        ; $473b: $5f
	sbc  c                                           ; $473c: $99
	ld   e, c                                        ; $473d: $59
	sub  a                                           ; $473e: $97
	rst  $38                                         ; $473f: $ff
	rst  $38                                         ; $4740: $ff
	dec  c                                           ; $4741: $0d
	nop                                              ; $4742: $00
	ld   a, [bc]                                     ; $4743: $0a
	inc  e                                           ; $4744: $1c
	dec  c                                           ; $4745: $0d
	ld   [bc], a                                     ; $4746: $02
	ld   [bc], a                                     ; $4747: $02
	ld   bc, $5252                                   ; $4748: $01 $52 $52
	sbc  l                                           ; $474b: $9d
	ld   e, a                                        ; $474c: $5f
	ld   a, l                                        ; $474d: $7d
	ld   h, l                                        ; $474e: $65
	ld   a, b                                        ; $474f: $78
	ld   d, d                                        ; $4750: $52
	ld   a, h                                        ; $4751: $7c
	sbc  a                                           ; $4752: $9f
	dec  c                                           ; $4753: $0d
	inc  bc                                          ; $4754: $03
	and  $02                                         ; $4755: $e6 $02
	ld   b, $63                                      ; $4757: $06 $63
	sbc  d                                           ; $4759: $9a
	ld   l, l                                        ; $475a: $6d
	sub  a                                           ; $475b: $97
	sbc  [hl]                                        ; $475c: $9e
	adc  h                                           ; $475d: $8c
	ld   l, b                                        ; $475e: $68
	dec  c                                           ; $475f: $0d
	ld   d, b                                        ; $4760: $50
	sub  d                                           ; $4761: $92
	adc  h                                           ; $4762: $8c
	sbc  b                                           ; $4763: $98
	ld   a, b                                        ; $4764: $78
	ld   h, e                                        ; $4765: $63
	ld   d, d                                        ; $4766: $52
	sbc  a                                           ; $4767: $9f
	dec  c                                           ; $4768: $0d
	nop                                              ; $4769: $00
	ld   a, [bc]                                     ; $476a: $0a
	rrca                                             ; $476b: $0f
	nop                                              ; $476c: $00
	ld   bc, $7d01                                   ; $476d: $01 $01 $7d
	ld   d, d                                        ; $4770: $52
	rst  $38                                         ; $4771: $ff
	rst  $38                                         ; $4772: $ff
	sbc  a                                           ; $4773: $9f
	dec  c                                           ; $4774: $0d
	nop                                              ; $4775: $00
	ld   a, [bc]                                     ; $4776: $0a
	inc  e                                           ; $4777: $1c
	dec  c                                           ; $4778: $0d
	nop                                              ; $4779: $00
	nop                                              ; $477a: $00
	ld   bc, $9876                                   ; $477b: $01 $76 $98
	ld   d, b                                        ; $477e: $50
	ld   d, [hl]                                     ; $477f: $56
	ld   l, b                                        ; $4780: $68
	ld   h, d                                        ; $4781: $62
	ld   [bc], a                                     ; $4782: $02
	sub  h                                           ; $4783: $94
	dec  b                                           ; $4784: $05
	rrca                                             ; $4785: $0f
	ld   h, e                                        ; $4786: $63
	adc  h                                           ; $4787: $8c
	sbc  a                                           ; $4788: $9f
	dec  c                                           ; $4789: $0d
	sub  b                                           ; $478a: $90
	ld   [hl], a                                     ; $478b: $77
	ld   [hl], c                                     ; $478c: $71
	ld   [hl], h                                     ; $478d: $74
	ld   d, d                                        ; $478e: $52
	ld   d, d                                        ; $478f: $52
	sbc  l                                           ; $4790: $9d
	sub  [hl]                                        ; $4791: $96
	sbc  a                                           ; $4792: $9f
	dec  c                                           ; $4793: $0d
	nop                                              ; $4794: $00
	ld   a, [bc]                                     ; $4795: $0a
	dec  b                                           ; $4796: $05
	add  b                                           ; $4797: $80
	xor  h                                           ; $4798: $ac
	ld   bc, $0001                                   ; $4799: $01 $01 $00
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	inc  e                                           ; $479e: $1c

jr_05c_479f:
	inc  b                                           ; $479f: $04
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	ld   [bc], a                                     ; $47a2: $02
	ld   bc, $9e50                                   ; $47a3: $01 $50 $9e
	ld   l, a                                        ; $47a6: $6f
	ld   d, d                                        ; $47a7: $52
	ld   [bc], a                                     ; $47a8: $02
	inc  de                                          ; $47a9: $13
	ld   l, a                                        ; $47aa: $6f
	sub  c                                           ; $47ab: $91
	and  c                                           ; $47ac: $a1
	sbc  a                                           ; $47ad: $9f
	dec  c                                           ; $47ae: $0d
	nop                                              ; $47af: $00
	ld   a, [bc]                                     ; $47b0: $0a
	ld   bc, $567b                                   ; $47b1: $01 $7b $56
	sbc  [hl]                                        ; $47b4: $9e
	ld   l, a                                        ; $47b5: $6f
	ld   d, d                                        ; $47b6: $52
	ld   [bc], a                                     ; $47b7: $02
	inc  de                                          ; $47b8: $13
	ld   l, a                                        ; $47b9: $6f
	sub  c                                           ; $47ba: $91
	and  c                                           ; $47bb: $a1
	ld   [hl], h                                     ; $47bc: $74
	dec  c                                           ; $47bd: $0d
	cp   b                                           ; $47be: $b8
	push hl                                          ; $47bf: $e5
	db   $dd                                         ; $47c0: $dd
	push af                                          ; $47c1: $f5
	ld   l, [hl]                                     ; $47c2: $6e
	adc  h                                           ; $47c3: $8c
	ld   [hl], l                                     ; $47c4: $75
	ld   e, e                                        ; $47c5: $5b
	sbc  c                                           ; $47c6: $99
	ld   sp, hl                                      ; $47c7: $f9
	dec  c                                           ; $47c8: $0d
	nop                                              ; $47c9: $00
	ld   a, [bc]                                     ; $47ca: $0a
	add  hl, de                                      ; $47cb: $19
	dec  b                                           ; $47cc: $05
	ld   [bc], a                                     ; $47cd: $02
	ld   [hl], l                                     ; $47ce: $75
	ld   e, e                                        ; $47cf: $5b
	sbc  c                                           ; $47d0: $99
	nop                                              ; $47d1: $00
	nop                                              ; $47d2: $00
	ld   [hl], l                                     ; $47d3: $75
	ld   e, e                                        ; $47d4: $5b
	ld   a, b                                        ; $47d5: $78
	ld   d, d                                        ; $47d6: $52
	nop                                              ; $47d7: $00
	ld   bc, $cd07                                   ; $47d8: $01 $07 $cd
	nop                                              ; $47db: $00
	ld   [bc], a                                     ; $47dc: $02
	inc  bc                                          ; $47dd: $03
	ld   bc, $2000                                   ; $47de: $01 $00 $20
	nop                                              ; $47e1: $00
	rlca                                             ; $47e2: $07
	ld   d, b                                        ; $47e3: $50
	nop                                              ; $47e4: $00
	ld   [bc], a                                     ; $47e5: $02
	inc  bc                                          ; $47e6: $03
	ld   bc, $2001                                   ; $47e7: $01 $01 $20
	nop                                              ; $47ea: $00
	ld   b, $92                                      ; $47eb: $06 $92
	nop                                              ; $47ed: $00
	rrca                                             ; $47ee: $0f
	nop                                              ; $47ef: $00
	ld   bc, $6201                                   ; $47f0: $01 $01 $62
	adc  a                                           ; $47f3: $8f
	and  c                                           ; $47f4: $a1
	rst  $38                                         ; $47f5: $ff
	rst  $38                                         ; $47f6: $ff
	ld   [hl], l                                     ; $47f7: $75
	ld   e, e                                        ; $47f8: $5b
	ld   a, b                                        ; $47f9: $78
	ld   d, d                                        ; $47fa: $52
	and  c                                           ; $47fb: $a1
	ld   l, [hl]                                     ; $47fc: $6e
	sbc  a                                           ; $47fd: $9f
	dec  c                                           ; $47fe: $0d
	nop                                              ; $47ff: $00
	ld   a, [bc]                                     ; $4800: $0a
	inc  e                                           ; $4801: $1c
	inc  b                                           ; $4802: $04
	ld   b, $06                                      ; $4803: $06 $06
	ld   bc, $9e50                                   ; $4805: $01 $50 $9e
	ld   l, e                                        ; $4808: $6b
	ld   d, h                                        ; $4809: $54
	ld   a, b                                        ; $480a: $78
	and  c                                           ; $480b: $a1
	ld   l, [hl]                                     ; $480c: $6e
	rst  $38                                         ; $480d: $ff
	rst  $38                                         ; $480e: $ff
	dec  c                                           ; $480f: $0d
	nop                                              ; $4810: $00
	inc  e                                           ; $4811: $1c
	inc  b                                           ; $4812: $04
	nop                                              ; $4813: $00
	nop                                              ; $4814: $00
	ld   bc, $9166                                   ; $4815: $01 $66 $91
	sbc  [hl]                                        ; $4818: $9e
	rst  JumpTable                                         ; $4819: $df
	db   $ec                                         ; $481a: $ec
	and  e                                           ; $481b: $a3
	ld   a, c                                        ; $481c: $79
	ld   l, l                                        ; $481d: $6d
	ld   a, h                                        ; $481e: $7c
	sub  b                                           ; $481f: $90
	ld   d, h                                        ; $4820: $54
	ld   [hl], c                                     ; $4821: $71
	halt                                             ; $4822: $76
	sbc  a                                           ; $4823: $9f
	dec  c                                           ; $4824: $0d
	nop                                              ; $4825: $00
	ld   a, [bc]                                     ; $4826: $0a
	dec  c                                           ; $4827: $0d
	nop                                              ; $4828: $00
	nop                                              ; $4829: $00
	rrca                                             ; $482a: $0f
	nop                                              ; $482b: $00
	ld   bc, $1e09                                   ; $482c: $01 $09 $1e
	nop                                              ; $482f: $00
	inc  e                                           ; $4830: $1c
	inc  b                                           ; $4831: $04
	ld   [bc], a                                     ; $4832: $02
	ld   [bc], a                                     ; $4833: $02
	dec  e                                           ; $4834: $1d
	ld   b, b                                        ; $4835: $40
	inc  d                                           ; $4836: $14
	inc  bc                                          ; $4837: $03
	inc  d                                           ; $4838: $14
	ld   bc, $2902                                   ; $4839: $01 $02 $29
	nop                                              ; $483c: $00
	ld   bc, $ffff                                   ; $483d: $01 $ff $ff
	sub  b                                           ; $4840: $90
	ld   d, h                                        ; $4841: $54
	sbc  [hl]                                        ; $4842: $9e
	ld   [hl], l                                     ; $4843: $75
	ld   e, e                                        ; $4844: $5b
	ld   a, b                                        ; $4845: $78
	ld   d, d                                        ; $4846: $52
	and  c                                           ; $4847: $a1
	ld   [hl], l                                     ; $4848: $75
	ld   h, l                                        ; $4849: $65
	sub  l                                           ; $484a: $95
	ld   sp, hl                                      ; $484b: $f9
	dec  c                                           ; $484c: $0d
	ld   d, d                                        ; $484d: $52
	ld   d, d                                        ; $484e: $52
	sub  b                                           ; $484f: $90
	and  c                                           ; $4850: $a1
	sbc  [hl]                                        ; $4851: $9e
	adc  c                                           ; $4852: $89
	ld   e, c                                        ; $4853: $59
	ld   a, h                                        ; $4854: $7c
	add  b                                           ; $4855: $80
	halt                                             ; $4856: $76
	ld   a, c                                        ; $4857: $79
	dec  c                                           ; $4858: $0d
	ld   l, l                                        ; $4859: $6d
	ld   a, h                                        ; $485a: $7c
	adc  [hl]                                        ; $485b: $8e
	ld   e, c                                        ; $485c: $59
	sub  a                                           ; $485d: $97
	sbc  a                                           ; $485e: $9f
	dec  c                                           ; $485f: $0d
	nop                                              ; $4860: $00
	ld   a, [bc]                                     ; $4861: $0a
	dec  c                                           ; $4862: $0d
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	rrca                                             ; $4865: $0f
	nop                                              ; $4866: $00
	ld   bc, $1e09                                   ; $4867: $01 $09 $1e
	nop                                              ; $486a: $00
	rrca                                             ; $486b: $0f
	nop                                              ; $486c: $00
	ld   bc, $5001                                   ; $486d: $01 $01 $50
	ld   d, b                                        ; $4870: $50
	sbc  [hl]                                        ; $4871: $9e
	ld   [hl], l                                     ; $4872: $75
	ld   e, e                                        ; $4873: $5b
	sbc  c                                           ; $4874: $99
	sub  [hl]                                        ; $4875: $96
	sbc  a                                           ; $4876: $9f
	dec  c                                           ; $4877: $0d
	nop                                              ; $4878: $00
	ld   a, [bc]                                     ; $4879: $0a
	inc  e                                           ; $487a: $1c
	inc  b                                           ; $487b: $04
	ld   bc, $0101                                   ; $487c: $01 $01 $01
	ld   h, [hl]                                     ; $487f: $66
	sub  c                                           ; $4880: $91
	ld   d, b                                        ; $4881: $50
	sbc  [hl]                                        ; $4882: $9e
	dec  c                                           ; $4883: $0d
	ld   e, b                                        ; $4884: $58
	ld   e, b                                        ; $4885: $58
	ld   e, e                                        ; $4886: $5b
	ld   d, d                                        ; $4887: $52
	cp   b                                           ; $4888: $b8
	push hl                                          ; $4889: $e5
	db   $dd                                         ; $488a: $dd
	push af                                          ; $488b: $f5
	ld   l, [hl]                                     ; $488c: $6e
	adc  h                                           ; $488d: $8c
	dec  c                                           ; $488e: $0d
	ld   [hl], d                                     ; $488f: $72
	ld   e, l                                        ; $4890: $5d
	ld   [hl], c                                     ; $4891: $71
	ld   [hl], h                                     ; $4892: $74
	ld   a, [$000d]                                  ; $4893: $fa $0d $00
	ld   a, [bc]                                     ; $4896: $0a
	add  hl, de                                      ; $4897: $19
	dec  b                                           ; $4898: $05
	inc  bc                                          ; $4899: $03
	sub  h                                           ; $489a: $94
	ld   [hl], c                                     ; $489b: $71
	ld   e, l                                        ; $489c: $5d
	sbc  b                                           ; $489d: $98
	add  e                                           ; $489e: $83
	ld   e, l                                        ; $489f: $5d
	nop                                              ; $48a0: $00
	nop                                              ; $48a1: $00
	ld   d, d                                        ; $48a2: $52
	ld   e, e                                        ; $48a3: $5b
	ld   e, b                                        ; $48a4: $58
	ld   d, d                                        ; $48a5: $52
	sub  [hl]                                        ; $48a6: $96
	ld   e, l                                        ; $48a7: $5d
	add  e                                           ; $48a8: $83
	ld   e, l                                        ; $48a9: $5d
	nop                                              ; $48aa: $00
	ld   bc, $7167                                   ; $48ab: $01 $67 $71
	ld   [hl], h                                     ; $48ae: $74
	adc  l                                           ; $48af: $8d
	sbc  c                                           ; $48b0: $99
	nop                                              ; $48b1: $00
	ld   [bc], a                                     ; $48b2: $02
	rlca                                             ; $48b3: $07
	ld   l, h                                        ; $48b4: $6c
	ld   bc, $0302                                   ; $48b5: $01 $02 $03
	ld   bc, $2000                                   ; $48b8: $01 $00 $20
	nop                                              ; $48bb: $00
	rlca                                             ; $48bc: $07
	sbc  b                                           ; $48bd: $98
	ld   bc, $0302                                   ; $48be: $01 $02 $03
	ld   bc, $2001                                   ; $48c1: $01 $01 $20
	nop                                              ; $48c4: $00
	rlca                                             ; $48c5: $07
	call nz, $0201                                   ; $48c6: $c4 $01 $02
	inc  bc                                          ; $48c9: $03
	ld   bc, $2002                                   ; $48ca: $01 $02 $20
	nop                                              ; $48cd: $00
	ld   b, $33                                      ; $48ce: $06 $33
	ld   bc, $041c                                   ; $48d0: $01 $1c $04
	ld   [bc], a                                     ; $48d3: $02
	ld   [bc], a                                     ; $48d4: $02
	dec  e                                           ; $48d5: $1d
	ld   b, b                                        ; $48d6: $40
	inc  d                                           ; $48d7: $14
	inc  bc                                          ; $48d8: $03
	inc  d                                           ; $48d9: $14
	ld   bc, $2903                                   ; $48da: $01 $03 $29
	nop                                              ; $48dd: $00
	ld   bc, $526f                                   ; $48de: $01 $6f $52
	ld   [bc], a                                     ; $48e1: $02
	inc  de                                          ; $48e2: $13
	ld   l, a                                        ; $48e3: $6f
	sub  c                                           ; $48e4: $91
	and  c                                           ; $48e5: $a1
	ld   a, h                                        ; $48e6: $7c
	and  a                                           ; $48e7: $a7
	cp   [hl]                                        ; $48e8: $be
	push bc                                          ; $48e9: $c5
	xor  [hl]                                        ; $48ea: $ae
	rst  $38                                         ; $48eb: $ff
	rst  $38                                         ; $48ec: $ff
	dec  c                                           ; $48ed: $0d
	ld   [hl], l                                     ; $48ee: $75
	ld   e, e                                        ; $48ef: $5b
	ld   a, b                                        ; $48f0: $78
	ld   d, d                                        ; $48f1: $52
	and  c                                           ; $48f2: $a1
	ld   h, [hl]                                     ; $48f3: $66
	sub  c                                           ; $48f4: $91
	ld   a, b                                        ; $48f5: $78
	ld   d, d                                        ; $48f6: $52
	ld   a, [$900d]                                  ; $48f7: $fa $0d $90
	ld   d, h                                        ; $48fa: $54
	ld   d, d                                        ; $48fb: $52
	ld   d, d                                        ; $48fc: $52
	ld   a, [$000d]                                  ; $48fd: $fa $0d $00
	ld   a, [bc]                                     ; $4900: $0a
	dec  c                                           ; $4901: $0d
	nop                                              ; $4902: $00
	nop                                              ; $4903: $00
	rrca                                             ; $4904: $0f
	nop                                              ; $4905: $00
	ld   bc, $1e09                                   ; $4906: $01 $09 $1e
	nop                                              ; $4909: $00
	inc  e                                           ; $490a: $1c
	inc  b                                           ; $490b: $04
	ld   b, $06                                      ; $490c: $06 $06
	dec  e                                           ; $490e: $1d
	ld   b, b                                        ; $490f: $40
	inc  d                                           ; $4910: $14
	inc  bc                                          ; $4911: $03
	inc  d                                           ; $4912: $14
	ld   bc, $2803                                   ; $4913: $01 $03 $28
	nop                                              ; $4916: $00
	ld   bc, $9d54                                   ; $4917: $01 $54 $9d
	ld   c, a                                        ; $491a: $4f
	rst  $38                                         ; $491b: $ff
	rst  $38                                         ; $491c: $ff
	dec  c                                           ; $491d: $0d
	ld   e, b                                        ; $491e: $58
	ld   e, b                                        ; $491f: $58
	ld   e, e                                        ; $4920: $5b
	ld   d, d                                        ; $4921: $52
	rst  $38                                         ; $4922: $ff
	rst  $38                                         ; $4923: $ff
	dec  c                                           ; $4924: $0d
	ld   l, a                                        ; $4925: $6f
	ld   d, d                                        ; $4926: $52
	ld   [bc], a                                     ; $4927: $02
	inc  de                                          ; $4928: $13
	ld   l, a                                        ; $4929: $6f
	sub  c                                           ; $492a: $91
	and  c                                           ; $492b: $a1
	cp   d                                           ; $492c: $ba
	or   l                                           ; $492d: $b5
	and  l                                           ; $492e: $a5
	ld   a, [$000d]                                  ; $492f: $fa $0d $00
	ld   a, [bc]                                     ; $4932: $0a
	ld   b, $42                                      ; $4933: $06 $42
	ld   [bc], a                                     ; $4935: $02
	inc  e                                           ; $4936: $1c
	inc  b                                           ; $4937: $04
	inc  bc                                          ; $4938: $03
	inc  bc                                          ; $4939: $03
	dec  e                                           ; $493a: $1d
	ld   b, b                                        ; $493b: $40
	inc  d                                           ; $493c: $14
	inc  bc                                          ; $493d: $03
	inc  d                                           ; $493e: $14
	ld   bc, $2901                                   ; $493f: $01 $01 $29
	nop                                              ; $4942: $00
	ld   bc, $9a6b                                   ; $4943: $01 $6b $9a
	ld   h, [hl]                                     ; $4946: $66
	sub  c                                           ; $4947: $91
	sbc  [hl]                                        ; $4948: $9e
	ld   l, a                                        ; $4949: $6f
	ld   [hl], c                                     ; $494a: $71
	ld   l, a                                        ; $494b: $6f
	sub  c                                           ; $494c: $91
	ld   d, d                                        ; $494d: $52
	ld   a, h                                        ; $494e: $7c
	ld   a, [hl]                                     ; $494f: $7e
	ld   [hl], c                                     ; $4950: $71
	ld   e, c                                        ; $4951: $59
	dec  c                                           ; $4952: $0d
	ld   [hl], l                                     ; $4953: $75
	ld   e, e                                        ; $4954: $5b
	ld   l, a                                        ; $4955: $6f
	sub  c                                           ; $4956: $91
	ld   d, h                                        ; $4957: $54
	sub  [hl]                                        ; $4958: $96
	ld   d, a                                        ; $4959: $57
	rst  $38                                         ; $495a: $ff
	rst  $38                                         ; $495b: $ff
	dec  c                                           ; $495c: $0d
	nop                                              ; $495d: $00
	ld   a, [bc]                                     ; $495e: $0a
	ld   b, $42                                      ; $495f: $06 $42
	ld   [bc], a                                     ; $4961: $02
	rrca                                             ; $4962: $0f
	nop                                              ; $4963: $00
	ld   bc, $6001                                   ; $4964: $01 $01 $60
	adc  c                                           ; $4967: $89
	ld   [hl], c                                     ; $4968: $71
	ld   a, [$6010]                                  ; $4969: $fa $10 $60
	adc  c                                           ; $496c: $89
	ld   [hl], c                                     ; $496d: $71
	ld   a, [$000d]                                  ; $496e: $fa $0d $00
	ld   a, [bc]                                     ; $4971: $0a
	ld   sp, $2040                                   ; $4972: $31 $40 $20
	inc  bc                                          ; $4975: $03
	jr   nz, jr_05c_4979                             ; $4976: $20 $01

	add  hl, de                                      ; $4978: $19

jr_05c_4979:
	add  hl, hl                                      ; $4979: $29
	nop                                              ; $497a: $00
	ld   b, $e0                                      ; $497b: $06 $e0
	ld   bc, $041c                                   ; $497d: $01 $1c $04
	ld   b, $06                                      ; $4980: $06 $06
	dec  e                                           ; $4982: $1d
	ld   b, b                                        ; $4983: $40
	inc  d                                           ; $4984: $14
	inc  bc                                          ; $4985: $03
	inc  d                                           ; $4986: $14
	ld   bc, $2801                                   ; $4987: $01 $01 $28
	nop                                              ; $498a: $00
	ld   bc, $6267                                   ; $498b: $01 $67 $62
	ei                                               ; $498e: $fb
	ld   d, d                                        ; $498f: $52
	sbc  [hl]                                        ; $4990: $9e
	ld   l, a                                        ; $4991: $6f
	ld   d, d                                        ; $4992: $52
	ld   [bc], a                                     ; $4993: $02
	inc  de                                          ; $4994: $13
	ld   l, a                                        ; $4995: $6f
	sub  c                                           ; $4996: $91
	and  c                                           ; $4997: $a1
	rst  $38                                         ; $4998: $ff
	rst  $38                                         ; $4999: $ff
	dec  c                                           ; $499a: $0d
	ld   e, b                                        ; $499b: $58
	ld   e, l                                        ; $499c: $5d
	ld   l, a                                        ; $499d: $6f
	ld   e, c                                        ; $499e: $59
	sub  a                                           ; $499f: $97
	sbc  [hl]                                        ; $49a0: $9e
	cp   b                                           ; $49a1: $b8
	push hl                                          ; $49a2: $e5
	db   $dd                                         ; $49a3: $dd
	push af                                          ; $49a4: $f5
	ld   l, [hl]                                     ; $49a5: $6e
	adc  h                                           ; $49a6: $8c
	dec  c                                           ; $49a7: $0d
	ld   l, [hl]                                     ; $49a8: $6e
	ld   h, l                                        ; $49a9: $65
	ld   [hl], h                                     ; $49aa: $74
	sbc  c                                           ; $49ab: $99
	ld   d, e                                        ; $49ac: $53
	rst  $38                                         ; $49ad: $ff
	rst  $38                                         ; $49ae: $ff
	dec  c                                           ; $49af: $0d
	nop                                              ; $49b0: $00
	ld   a, [bc]                                     ; $49b1: $0a
	rrca                                             ; $49b2: $0f
	dec  b                                           ; $49b3: $05
	ld   bc, $401d                                   ; $49b4: $01 $1d $40
	dec  d                                           ; $49b7: $15
	inc  bc                                          ; $49b8: $03
	dec  d                                           ; $49b9: $15
	ld   bc, $2802                                   ; $49ba: $01 $02 $28
	nop                                              ; $49bd: $00
	ld   bc, $7158                                   ; $49be: $01 $58 $71
	ld   a, [$0810]                                  ; $49c1: $fa $10 $08
	nop                                              ; $49c4: $00
	ld   a, l                                        ; $49c5: $7d
	and  c                                           ; $49c6: $a1
	sbc  a                                           ; $49c7: $9f
	dec  c                                           ; $49c8: $0d
	ld   a, b                                        ; $49c9: $78
	ld   e, c                                        ; $49ca: $59
	ld   a, b                                        ; $49cb: $78
	ld   e, c                                        ; $49cc: $59
	sbc  [hl]                                        ; $49cd: $9e
	res  4, l                                        ; $49ce: $cb $a5
	cp   d                                           ; $49d0: $ba
	ld   a, b                                        ; $49d1: $78
	db   $dd                                         ; $49d2: $dd
	or   d                                           ; $49d3: $b2
	sub  d                                           ; $49d4: $92
	and  c                                           ; $49d5: $a1
	sbc  a                                           ; $49d6: $9f
	dec  c                                           ; $49d7: $0d
	sub  d                                           ; $49d8: $92
	sbc  c                                           ; $49d9: $99
	ld   a, b                                        ; $49da: $78
	db   $fc                                         ; $49db: $fc
	sbc  a                                           ; $49dc: $9f
	dec  c                                           ; $49dd: $0d
	nop                                              ; $49de: $00
	ld   a, [bc]                                     ; $49df: $0a
	inc  e                                           ; $49e0: $1c
	inc  b                                           ; $49e1: $04
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	ld   bc, $9166                                   ; $49e4: $01 $66 $91
	ld   d, b                                        ; $49e7: $50
	sbc  [hl]                                        ; $49e8: $9e
	ld   h, c                                        ; $49e9: $61
	and  c                                           ; $49ea: $a1
	ld   [hl], a                                     ; $49eb: $77
	ld   a, l                                        ; $49ec: $7d
	dec  c                                           ; $49ed: $0d
	ld   d, d                                        ; $49ee: $52
	ld   [hl], c                                     ; $49ef: $71
	ld   a, a                                        ; $49f0: $7f
	ld   d, d                                        ; $49f1: $52
	ld   d, d                                        ; $49f2: $52
	ld   [hl], c                                     ; $49f3: $71
	ld   a, a                                        ; $49f4: $7f
	ld   d, d                                        ; $49f5: $52
	ld   [hl], d                                     ; $49f6: $72
	ld   e, l                                        ; $49f7: $5d
	ld   [hl], c                                     ; $49f8: $71
	ld   [hl], h                                     ; $49f9: $74
	sbc  a                                           ; $49fa: $9f
	dec  c                                           ; $49fb: $0d
	nop                                              ; $49fc: $00
	ld   a, [bc]                                     ; $49fd: $0a
	add  hl, de                                      ; $49fe: $19
	dec  b                                           ; $49ff: $05
	inc  bc                                          ; $4a00: $03
	sub  h                                           ; $4a01: $94
	ld   [hl], c                                     ; $4a02: $71
	ld   e, l                                        ; $4a03: $5d
	sbc  b                                           ; $4a04: $98
	add  e                                           ; $4a05: $83
	ld   e, l                                        ; $4a06: $5d
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	ld   d, d                                        ; $4a09: $52
	ld   e, e                                        ; $4a0a: $5b
	ld   e, b                                        ; $4a0b: $58
	ld   d, d                                        ; $4a0c: $52
	sub  [hl]                                        ; $4a0d: $96
	ld   e, l                                        ; $4a0e: $5d
	add  e                                           ; $4a0f: $83
	ld   e, l                                        ; $4a10: $5d
	nop                                              ; $4a11: $00
	ld   bc, $7152                                   ; $4a12: $01 $52 $71
	ld   e, e                                        ; $4a15: $5b
	ld   a, c                                        ; $4a16: $79
	ld   a, h                                        ; $4a17: $7c
	adc  [hl]                                        ; $4a18: $8e
	nop                                              ; $4a19: $00
	ld   [bc], a                                     ; $4a1a: $02
	rlca                                             ; $4a1b: $07
	db   $e3                                         ; $4a1c: $e3
	ld   [bc], a                                     ; $4a1d: $02
	ld   [bc], a                                     ; $4a1e: $02
	inc  bc                                          ; $4a1f: $03
	ld   bc, $2000                                   ; $4a20: $01 $00 $20
	nop                                              ; $4a23: $00
	rlca                                             ; $4a24: $07
	ret  c                                           ; $4a25: $d8

	inc  bc                                          ; $4a26: $03
	ld   [bc], a                                     ; $4a27: $02
	inc  bc                                          ; $4a28: $03
	ld   bc, $2001                                   ; $4a29: $01 $01 $20
	nop                                              ; $4a2c: $00
	rlca                                             ; $4a2d: $07
	ld   [hl-], a                                    ; $4a2e: $32
	inc  bc                                          ; $4a2f: $03
	ld   [bc], a                                     ; $4a30: $02
	inc  bc                                          ; $4a31: $03
	ld   bc, $2002                                   ; $4a32: $01 $02 $20
	nop                                              ; $4a35: $00
	ld   b, $9b                                      ; $4a36: $06 $9b
	ld   [bc], a                                     ; $4a38: $02
	inc  e                                           ; $4a39: $1c
	inc  b                                           ; $4a3a: $04
	inc  bc                                          ; $4a3b: $03
	inc  bc                                          ; $4a3c: $03
	dec  e                                           ; $4a3d: $1d
	ld   b, b                                        ; $4a3e: $40
	inc  d                                           ; $4a3f: $14
	inc  bc                                          ; $4a40: $03
	inc  d                                           ; $4a41: $14
	ld   bc, $2902                                   ; $4a42: $01 $02 $29
	nop                                              ; $4a45: $00
	ld   bc, $a178                                   ; $4a46: $01 $78 $a1
	ld   l, [hl]                                     ; $4a49: $6e
	rst  $38                                         ; $4a4a: $ff
	rst  $38                                         ; $4a4b: $ff
	dec  c                                           ; $4a4c: $0d
	ld   [hl], l                                     ; $4a4d: $75
	ld   e, e                                        ; $4a4e: $5b
	ld   a, b                                        ; $4a4f: $78
	ld   d, d                                        ; $4a50: $52
	and  c                                           ; $4a51: $a1
	ld   l, [hl]                                     ; $4a52: $6e
	rst  $38                                         ; $4a53: $ff
	rst  $38                                         ; $4a54: $ff
	dec  c                                           ; $4a55: $0d
	ld   [hl], d                                     ; $4a56: $72
	adc  h                                           ; $4a57: $8c
	and  c                                           ; $4a58: $a1
	ld   a, b                                        ; $4a59: $78
	ld   d, d                                        ; $4a5a: $52
	ld   a, h                                        ; $4a5b: $7c
	rst  $38                                         ; $4a5c: $ff
	rst  $38                                         ; $4a5d: $ff
	dec  c                                           ; $4a5e: $0d
	nop                                              ; $4a5f: $00
	ld   a, [bc]                                     ; $4a60: $0a
	ld   bc, $9166                                   ; $4a61: $01 $66 $91
	sbc  [hl]                                        ; $4a64: $9e
	rst  JumpTable                                         ; $4a65: $df
	db   $ec                                         ; $4a66: $ec
	and  e                                           ; $4a67: $a3
	ld   a, c                                        ; $4a68: $79
	ld   l, l                                        ; $4a69: $6d
	ld   a, h                                        ; $4a6a: $7c
	and  c                                           ; $4a6b: $a1
	ld   [hl], l                                     ; $4a6c: $75
	dec  c                                           ; $4a6d: $0d
	adc  l                                           ; $4a6e: $8d
	sub  [hl]                                        ; $4a6f: $96
	ld   d, h                                        ; $4a70: $54
	ld   [hl], c                                     ; $4a71: $71
	halt                                             ; $4a72: $76
	rst  $38                                         ; $4a73: $ff
	rst  $38                                         ; $4a74: $ff
	dec  c                                           ; $4a75: $0d
	nop                                              ; $4a76: $00
	ld   a, [bc]                                     ; $4a77: $0a
	dec  c                                           ; $4a78: $0d
	nop                                              ; $4a79: $00
	nop                                              ; $4a7a: $00
	rrca                                             ; $4a7b: $0f
	nop                                              ; $4a7c: $00
	ld   bc, $1e09                                   ; $4a7d: $01 $09 $1e
	nop                                              ; $4a80: $00
	inc  e                                           ; $4a81: $1c
	inc  b                                           ; $4a82: $04
	inc  bc                                          ; $4a83: $03
	inc  bc                                          ; $4a84: $03
	dec  e                                           ; $4a85: $1d
	ld   b, b                                        ; $4a86: $40
	inc  d                                           ; $4a87: $14
	inc  bc                                          ; $4a88: $03
	inc  d                                           ; $4a89: $14
	ld   bc, $2901                                   ; $4a8a: $01 $01 $29
	nop                                              ; $4a8d: $00
	ld   bc, $7158                                   ; $4a8e: $01 $58 $71
	ld   e, e                                        ; $4a91: $5b
	ld   d, d                                        ; $4a92: $52
	and  c                                           ; $4a93: $a1
	ld   l, [hl]                                     ; $4a94: $6e
	ld   e, a                                        ; $4a95: $5f
	ld   [hl], a                                     ; $4a96: $77
	rst  $38                                         ; $4a97: $ff
	rst  $38                                         ; $4a98: $ff
	dec  c                                           ; $4a99: $0d
	ld   l, e                                        ; $4a9a: $6b
	sbc  d                                           ; $4a9b: $9a
	ld   h, [hl]                                     ; $4a9c: $66
	sub  c                                           ; $4a9d: $91
	sbc  [hl]                                        ; $4a9e: $9e
	ld   l, l                                        ; $4a9f: $6d
	ld   e, l                                        ; $4aa0: $5d
	ld   h, e                                        ; $4aa1: $63
	and  c                                           ; $4aa2: $a1
	dec  c                                           ; $4aa3: $0d
	ld   [hl], l                                     ; $4aa4: $75
	ld   e, e                                        ; $4aa5: $5b
	ld   a, b                                        ; $4aa6: $78
	ld   d, d                                        ; $4aa7: $52
	sub  [hl]                                        ; $4aa8: $96
	ld   d, a                                        ; $4aa9: $57
	rst  $38                                         ; $4aaa: $ff
	rst  $38                                         ; $4aab: $ff
	dec  c                                           ; $4aac: $0d
	nop                                              ; $4aad: $00
	ld   a, [bc]                                     ; $4aae: $0a
	ld   bc, $7192                                   ; $4aaf: $01 $92 $71
	ld   a, a                                        ; $4ab2: $7f
	sbc  b                                           ; $4ab3: $98
	sbc  [hl]                                        ; $4ab4: $9e
	rst  JumpTable                                         ; $4ab5: $df
	db   $ec                                         ; $4ab6: $ec
	and  e                                           ; $4ab7: $a3
	ld   a, c                                        ; $4ab8: $79
	dec  c                                           ; $4ab9: $0d
	ld   e, b                                        ; $4aba: $58
	ld   h, l                                        ; $4abb: $65
	ld   d, [hl]                                     ; $4abc: $56
	ld   [hl], h                                     ; $4abd: $74
	sub  b                                           ; $4abe: $90
	sub  a                                           ; $4abf: $97
	ld   e, b                                        ; $4ac0: $58
	ld   [hl], c                                     ; $4ac1: $71
	halt                                             ; $4ac2: $76
	sbc  a                                           ; $4ac3: $9f
	dec  c                                           ; $4ac4: $0d
	nop                                              ; $4ac5: $00
	ld   a, [bc]                                     ; $4ac6: $0a
	dec  c                                           ; $4ac7: $0d
	nop                                              ; $4ac8: $00
	nop                                              ; $4ac9: $00
	rrca                                             ; $4aca: $0f
	nop                                              ; $4acb: $00
	ld   bc, $1e09                                   ; $4acc: $01 $09 $1e
	nop                                              ; $4acf: $00
	rrca                                             ; $4ad0: $0f
	nop                                              ; $4ad1: $00
	ld   bc, $5a01                                   ; $4ad2: $01 $01 $5a
	ld   a, l                                        ; $4ad5: $7d
	ld   [hl], c                                     ; $4ad6: $71
	ld   a, [$6010]                                  ; $4ad7: $fa $10 $60
	add  [hl]                                        ; $4ada: $86
	ld   [hl], c                                     ; $4adb: $71
	ld   a, [$000d]                                  ; $4adc: $fa $0d $00
	ld   a, [bc]                                     ; $4adf: $0a
	ld   sp, $2040                                   ; $4ae0: $31 $40 $20
	inc  bc                                          ; $4ae3: $03
	jr   nz, jr_05c_4ae7                             ; $4ae4: $20 $01

	add  hl, de                                      ; $4ae6: $19

jr_05c_4ae7:
	add  hl, hl                                      ; $4ae7: $29
	nop                                              ; $4ae8: $00
	ld   b, $4e                                      ; $4ae9: $06 $4e
	inc  bc                                          ; $4aeb: $03
	inc  e                                           ; $4aec: $1c
	inc  b                                           ; $4aed: $04
	ld   b, $06                                      ; $4aee: $06 $06
	dec  e                                           ; $4af0: $1d
	ld   b, b                                        ; $4af1: $40
	inc  d                                           ; $4af2: $14
	inc  bc                                          ; $4af3: $03
	inc  d                                           ; $4af4: $14
	ld   bc, $2801                                   ; $4af5: $01 $01 $28
	nop                                              ; $4af8: $00
	ld   bc, $6267                                   ; $4af9: $01 $67 $62
	ei                                               ; $4afc: $fb
	ld   d, d                                        ; $4afd: $52
	sbc  [hl]                                        ; $4afe: $9e
	ld   l, a                                        ; $4aff: $6f
	ld   d, d                                        ; $4b00: $52
	ld   [bc], a                                     ; $4b01: $02
	inc  de                                          ; $4b02: $13
	ld   l, a                                        ; $4b03: $6f
	sub  c                                           ; $4b04: $91
	and  c                                           ; $4b05: $a1
	rst  $38                                         ; $4b06: $ff
	rst  $38                                         ; $4b07: $ff
	dec  c                                           ; $4b08: $0d
	ld   e, b                                        ; $4b09: $58
	ld   e, l                                        ; $4b0a: $5d
	ld   l, a                                        ; $4b0b: $6f
	ld   e, c                                        ; $4b0c: $59
	sub  a                                           ; $4b0d: $97
	sbc  [hl]                                        ; $4b0e: $9e
	cp   b                                           ; $4b0f: $b8
	push hl                                          ; $4b10: $e5
	db   $dd                                         ; $4b11: $dd
	push af                                          ; $4b12: $f5
	ld   l, [hl]                                     ; $4b13: $6e
	adc  h                                           ; $4b14: $8c
	dec  c                                           ; $4b15: $0d
	ld   l, [hl]                                     ; $4b16: $6e
	ld   h, l                                        ; $4b17: $65
	ld   [hl], h                                     ; $4b18: $74
	sbc  c                                           ; $4b19: $99
	ld   d, e                                        ; $4b1a: $53
	rst  $38                                         ; $4b1b: $ff
	rst  $38                                         ; $4b1c: $ff
	dec  c                                           ; $4b1d: $0d
	nop                                              ; $4b1e: $00
	ld   a, [bc]                                     ; $4b1f: $0a
	rrca                                             ; $4b20: $0f
	dec  b                                           ; $4b21: $05
	ld   bc, $401d                                   ; $4b22: $01 $1d $40
	dec  d                                           ; $4b25: $15
	inc  bc                                          ; $4b26: $03
	dec  d                                           ; $4b27: $15
	ld   bc, $2802                                   ; $4b28: $01 $02 $28
	nop                                              ; $4b2b: $00
	ld   bc, $7158                                   ; $4b2c: $01 $58 $71
	ld   a, [$0810]                                  ; $4b2f: $fa $10 $08
	nop                                              ; $4b32: $00
	ld   a, l                                        ; $4b33: $7d
	and  c                                           ; $4b34: $a1
	sbc  a                                           ; $4b35: $9f
	dec  c                                           ; $4b36: $0d
	inc  b                                           ; $4b37: $04
	dec  c                                           ; $4b38: $0d
	and  b                                           ; $4b39: $a0
	ld   a, l                                        ; $4b3a: $7d
	ld   [hl], c                                     ; $4b3b: $71
	ld   l, l                                        ; $4b3c: $6d
	xor  a                                           ; $4b3d: $af
	push hl                                          ; $4b3e: $e5
	or   c                                           ; $4b3f: $b1
	sub  d                                           ; $4b40: $92
	ld   a, b                                        ; $4b41: $78
	sbc  a                                           ; $4b42: $9f
	dec  c                                           ; $4b43: $0d
	sub  d                                           ; $4b44: $92
	sbc  c                                           ; $4b45: $99
	ld   a, b                                        ; $4b46: $78
	db   $fc                                         ; $4b47: $fc
	sbc  a                                           ; $4b48: $9f
	dec  c                                           ; $4b49: $0d
	nop                                              ; $4b4a: $00
	ld   a, [bc]                                     ; $4b4b: $0a
	inc  e                                           ; $4b4c: $1c
	inc  b                                           ; $4b4d: $04
	ld   bc, $0101                                   ; $4b4e: $01 $01 $01
	ld   d, b                                        ; $4b51: $50
	sbc  b                                           ; $4b52: $98
	ld   e, d                                        ; $4b53: $5a
	halt                                             ; $4b54: $76
	ld   d, h                                        ; $4b55: $54
	sbc  [hl]                                        ; $4b56: $9e
	ld   l, a                                        ; $4b57: $6f
	ld   d, d                                        ; $4b58: $52
	ld   [bc], a                                     ; $4b59: $02
	inc  de                                          ; $4b5a: $13
	ld   l, a                                        ; $4b5b: $6f
	sub  c                                           ; $4b5c: $91
	and  c                                           ; $4b5d: $a1
	sbc  a                                           ; $4b5e: $9f
	dec  c                                           ; $4b5f: $0d
	ld   l, l                                        ; $4b60: $6d
	ld   a, h                                        ; $4b61: $7c
	ld   h, l                                        ; $4b62: $65
	ld   e, c                                        ; $4b63: $59
	ld   [hl], c                                     ; $4b64: $71
	ld   l, l                                        ; $4b65: $6d
	sbc  a                                           ; $4b66: $9f
	dec  c                                           ; $4b67: $0d
	ld   [hl], l                                     ; $4b68: $75
	sub  b                                           ; $4b69: $90
	sbc  [hl]                                        ; $4b6a: $9e
	ld   l, [hl]                                     ; $4b6b: $6e
	ld   d, d                                        ; $4b6c: $52
	ld   h, [hl]                                     ; $4b6d: $66
	sub  l                                           ; $4b6e: $95
	ld   d, h                                        ; $4b6f: $54
	add  h                                           ; $4b70: $84
	ld   sp, hl                                      ; $4b71: $f9
	dec  c                                           ; $4b72: $0d
	nop                                              ; $4b73: $00
	ld   a, [bc]                                     ; $4b74: $0a
	nop                                              ; $4b75: $00
	inc  e                                           ; $4b76: $1c
	inc  b                                           ; $4b77: $04
	ld   b, $06                                      ; $4b78: $06 $06
	dec  e                                           ; $4b7a: $1d
	ld   b, b                                        ; $4b7b: $40
	inc  d                                           ; $4b7c: $14
	inc  bc                                          ; $4b7d: $03
	inc  d                                           ; $4b7e: $14
	ld   bc, $2803                                   ; $4b7f: $01 $03 $28
	nop                                              ; $4b82: $00
	ld   bc, $9d54                                   ; $4b83: $01 $54 $9d
	ld   c, a                                        ; $4b86: $4f
	rst  $38                                         ; $4b87: $ff
	rst  $38                                         ; $4b88: $ff
	dec  c                                           ; $4b89: $0d
	cp   b                                           ; $4b8a: $b8
	push hl                                          ; $4b8b: $e5
	db   $dd                                         ; $4b8c: $dd
	push af                                          ; $4b8d: $f5
	ld   l, [hl]                                     ; $4b8e: $6e
	adc  h                                           ; $4b8f: $8c
	rst  $38                                         ; $4b90: $ff
	rst  $38                                         ; $4b91: $ff
	ld   d, d                                        ; $4b92: $52
	ld   [hl], c                                     ; $4b93: $71
	ld   a, a                                        ; $4b94: $7f
	ld   d, d                                        ; $4b95: $52
	ld   a, [$000d]                                  ; $4b96: $fa $0d $00
	ld   a, [bc]                                     ; $4b99: $0a
	inc  e                                           ; $4b9a: $1c
	inc  b                                           ; $4b9b: $04
	ld   bc, $0101                                   ; $4b9c: $01 $01 $01
	ld   d, b                                        ; $4b9f: $50
	sbc  b                                           ; $4ba0: $98
	ld   e, d                                        ; $4ba1: $5a
	halt                                             ; $4ba2: $76
	ld   d, h                                        ; $4ba3: $54
	sbc  [hl]                                        ; $4ba4: $9e
	ld   l, a                                        ; $4ba5: $6f
	ld   d, d                                        ; $4ba6: $52
	ld   [bc], a                                     ; $4ba7: $02
	inc  de                                          ; $4ba8: $13
	ld   l, a                                        ; $4ba9: $6f
	sub  c                                           ; $4baa: $91
	and  c                                           ; $4bab: $a1
	sbc  a                                           ; $4bac: $9f
	dec  c                                           ; $4bad: $0d
	ld   l, l                                        ; $4bae: $6d
	ld   a, h                                        ; $4baf: $7c
	ld   h, l                                        ; $4bb0: $65
	ld   e, c                                        ; $4bb1: $59
	ld   [hl], c                                     ; $4bb2: $71
	ld   l, l                                        ; $4bb3: $6d
	sub  [hl]                                        ; $4bb4: $96
	sbc  a                                           ; $4bb5: $9f
	dec  c                                           ; $4bb6: $0d
	nop                                              ; $4bb7: $00
	ld   a, [bc]                                     ; $4bb8: $0a
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	ld   c, $3d                                      ; $4bbb: $0e $3d
	rrca                                             ; $4bbd: $0f
	nop                                              ; $4bbe: $00
	ld   bc, $0102                                   ; $4bbf: $01 $02 $01
	ld   d, b                                        ; $4bc2: $50
	sbc  d                                           ; $4bc3: $9a
	ld   sp, hl                                      ; $4bc4: $f9
	db   $10                                         ; $4bc5: $10
	rst  JumpTable                                         ; $4bc6: $df
	db   $ec                                         ; $4bc7: $ec
	and  e                                           ; $4bc8: $a3
	ld   h, e                                        ; $4bc9: $63
	and  c                                           ; $4bca: $a1
	dec  c                                           ; $4bcb: $0d
	inc  b                                           ; $4bcc: $04
	ld   c, c                                        ; $4bcd: $49
	and  b                                           ; $4bce: $a0
	sub  d                                           ; $4bcf: $92
	ld   [hl], c                                     ; $4bd0: $71
	ld   [hl], h                                     ; $4bd1: $74
	sbc  c                                           ; $4bd2: $99
	and  c                                           ; $4bd3: $a1
	ld   [hl], l                                     ; $4bd4: $75
	ld   h, a                                        ; $4bd5: $67
	ld   e, c                                        ; $4bd6: $59
	ld   sp, hl                                      ; $4bd7: $f9
	dec  c                                           ; $4bd8: $0d
	nop                                              ; $4bd9: $00
	ld   a, [bc]                                     ; $4bda: $0a
	inc  e                                           ; $4bdb: $1c
	inc  bc                                          ; $4bdc: $03
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	ld   bc, $9e50                                   ; $4bdf: $01 $50 $9e
	ld   [$5d00], sp                                 ; $4be2: $08 $00 $5d
	and  c                                           ; $4be5: $a1
	sbc  a                                           ; $4be6: $9f
	dec  c                                           ; $4be7: $0d
	ret  nz                                          ; $4be8: $c0

	rst  $28                                         ; $4be9: $ef
	call nz, $05c9                                   ; $4bea: $c4 $c9 $05
	sub  $52                                         ; $4bed: $d6 $52
	and  b                                           ; $4bef: $a0
	ld   h, l                                        ; $4bf0: $65
	ld   [hl], h                                     ; $4bf1: $74
	ld   d, d                                        ; $4bf2: $52
	sbc  c                                           ; $4bf3: $99
	ld   a, h                                        ; $4bf4: $7c
	sbc  a                                           ; $4bf5: $9f
	dec  c                                           ; $4bf6: $0d
	nop                                              ; $4bf7: $00
	ld   a, [bc]                                     ; $4bf8: $0a
	inc  e                                           ; $4bf9: $1c
	inc  bc                                          ; $4bfa: $03
	inc  bc                                          ; $4bfb: $03
	inc  bc                                          ; $4bfc: $03
	ld   bc, $546b                                   ; $4bfd: $01 $6b $54
	ld   l, [hl]                                     ; $4c00: $6e
	sbc  l                                           ; $4c01: $9d
	sbc  [hl]                                        ; $4c02: $9e
	ld   [$5d00], sp                                 ; $4c03: $08 $00 $5d
	and  c                                           ; $4c06: $a1
	sbc  a                                           ; $4c07: $9f
	dec  c                                           ; $4c08: $0d
	ld   d, b                                        ; $4c09: $50
	ld   a, b                                        ; $4c0a: $78
	ld   l, l                                        ; $4c0b: $6d
	sub  b                                           ; $4c0c: $90
	dec  b                                           ; $4c0d: $05
	sub  $71                                         ; $4c0e: $d6 $71
	ld   [hl], h                                     ; $4c10: $74
	ld   d, b                                        ; $4c11: $50
	ld   h, b                                        ; $4c12: $60
	sbc  c                                           ; $4c13: $99
	sbc  a                                           ; $4c14: $9f
	dec  c                                           ; $4c15: $0d
	nop                                              ; $4c16: $00
	ld   a, [bc]                                     ; $4c17: $0a
	ld   bc, $546b                                   ; $4c18: $01 $6b $54
	ld   a, e                                        ; $4c1b: $7b
	db   $fc                                         ; $4c1c: $fc
	sbc  [hl]                                        ; $4c1d: $9e
	ld   bc, $0307                                   ; $4c1e: $01 $07 $03
	nop                                              ; $4c21: $00
	inc  bc                                          ; $4c22: $03
	ret                                              ; $4c23: $c9


	ld   a, h                                        ; $4c24: $7c
	inc  b                                           ; $4c25: $04
	dec  bc                                          ; $4c26: $0b
	ld   [hl], l                                     ; $4c27: $75
	ld   a, h                                        ; $4c28: $7c
	dec  c                                           ; $4c29: $0d
	ld   d, b                                        ; $4c2a: $50
	ld   a, b                                        ; $4c2b: $78
	ld   l, l                                        ; $4c2c: $6d
	ld   a, h                                        ; $4c2d: $7c
	inc  b                                           ; $4c2e: $04
	db   $ec                                         ; $4c2f: $ec
	ld   [bc], a                                     ; $4c30: $02
	halt                                             ; $4c31: $76
	ld   bc, $7608                                   ; $4c32: $01 $08 $76
	ld   d, d                                        ; $4c35: $52
	ld   d, h                                        ; $4c36: $54
	ld   a, h                                        ; $4c37: $7c
	ld   a, l                                        ; $4c38: $7d
	dec  c                                           ; $4c39: $0d
	ld   d, d                                        ; $4c3a: $52
	ld   e, c                                        ; $4c3b: $59
	ld   e, d                                        ; $4c3c: $5a
	ld   e, c                                        ; $4c3d: $59
	ld   h, l                                        ; $4c3e: $65
	sub  a                                           ; $4c3f: $97
	ld   sp, hl                                      ; $4c40: $f9
	dec  c                                           ; $4c41: $0d
	nop                                              ; $4c42: $00
	ld   a, [bc]                                     ; $4c43: $0a
	inc  e                                           ; $4c44: $1c
	inc  bc                                          ; $4c45: $03
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	ld   bc, $5063                                   ; $4c48: $01 $63 $50
	sbc  [hl]                                        ; $4c4b: $9e
	ld   h, c                                        ; $4c4c: $61
	ld   a, h                                        ; $4c4d: $7c
	inc  b                                           ; $4c4e: $04
	dec  bc                                          ; $4c4f: $0b
	ld   e, c                                        ; $4c50: $59
	sub  a                                           ; $4c51: $97
	ld   [de], a                                     ; $4c52: $12
	inc  b                                           ; $4c53: $04
	push bc                                          ; $4c54: $c5
	dec  c                                           ; $4c55: $0d
	xor  h                                           ; $4c56: $ac
	ei                                               ; $4c57: $fb
	jp   z, $02a0                                    ; $4c58: $ca $a0 $02

	inc  l                                           ; $4c5b: $2c
	ld   d, d                                        ; $4c5c: $52
	ld   [hl], h                                     ; $4c5d: $74
	sbc  a                                           ; $4c5e: $9f
	dec  c                                           ; $4c5f: $0d
	nop                                              ; $4c60: $00
	ld   a, [bc]                                     ; $4c61: $0a
	db   $10                                         ; $4c62: $10
	rra                                              ; $4c63: $1f
	nop                                              ; $4c64: $00
	jr   jr_05c_4c6a                                 ; $4c65: $18 $03

	nop                                              ; $4c67: $00
	ld   [bc], a                                     ; $4c68: $02
	inc  e                                           ; $4c69: $1c

jr_05c_4c6a:
	inc  b                                           ; $4c6a: $04
	sbc  e                                           ; $4c6b: $9b
	ld   a, h                                        ; $4c6c: $7c
	xor  h                                           ; $4c6d: $ac
	ei                                               ; $4c6e: $fb
	jp   z, $02a0                                    ; $4c6f: $ca $a0 $02

	inc  l                                           ; $4c72: $2c
	ld   e, l                                        ; $4c73: $5d
	nop                                              ; $4c74: $00
	nop                                              ; $4c75: $00
	inc  bc                                          ; $4c76: $03
	xor  l                                           ; $4c77: $ad
	and  c                                           ; $4c78: $a1
	inc  b                                           ; $4c79: $04
	dec  bc                                          ; $4c7a: $0b
	ld   a, h                                        ; $4c7b: $7c
	xor  h                                           ; $4c7c: $ac
	ei                                               ; $4c7d: $fb
	jp   z, $02a0                                    ; $4c7e: $ca $a0 $02

	inc  l                                           ; $4c81: $2c
	ld   e, l                                        ; $4c82: $5d
	nop                                              ; $4c83: $00
	ld   bc, $6003                                   ; $4c84: $01 $03 $60
	inc  b                                           ; $4c87: $04
	sbc  e                                           ; $4c88: $9b
	ld   a, h                                        ; $4c89: $7c
	xor  h                                           ; $4c8a: $ac
	ei                                               ; $4c8b: $fb
	jp   z, $02a0                                    ; $4c8c: $ca $a0 $02

	inc  l                                           ; $4c8f: $2c
	ld   e, l                                        ; $4c90: $5d
	nop                                              ; $4c91: $00
	ld   [bc], a                                     ; $4c92: $02
	rlca                                             ; $4c93: $07
	di                                               ; $4c94: $f3
	nop                                              ; $4c95: $00
	ld   [bc], a                                     ; $4c96: $02
	ld   [bc], a                                     ; $4c97: $02
	ld   bc, $2000                                   ; $4c98: $01 $00 $20
	nop                                              ; $4c9b: $00
	rlca                                             ; $4c9c: $07
	ret  c                                           ; $4c9d: $d8

	ld   bc, $0202                                   ; $4c9e: $01 $02 $02
	ld   bc, $2001                                   ; $4ca1: $01 $01 $20
	nop                                              ; $4ca4: $00
	rlca                                             ; $4ca5: $07
	cp   l                                           ; $4ca6: $bd
	ld   [bc], a                                     ; $4ca7: $02
	ld   [bc], a                                     ; $4ca8: $02
	ld   [bc], a                                     ; $4ca9: $02
	ld   bc, $2002                                   ; $4caa: $01 $02 $20
	nop                                              ; $4cad: $00
	rlca                                             ; $4cae: $07
	ld   l, a                                        ; $4caf: $6f
	ld   bc, $1303                                   ; $4cb0: $01 $03 $13
	ld   bc, $22a0                                   ; $4cb3: $01 $a0 $22
	nop                                              ; $4cb6: $00
	inc  e                                           ; $4cb7: $1c
	inc  bc                                          ; $4cb8: $03
	nop                                              ; $4cb9: $00
	nop                                              ; $4cba: $00
	ld   bc, $8605                                   ; $4cbb: $01 $05 $86
	inc  bc                                          ; $4cbe: $03
	db   $10                                         ; $4cbf: $10
	inc  bc                                          ; $4cc0: $03
	ld   [hl-], a                                    ; $4cc1: $32
	ld   a, h                                        ; $4cc2: $7c
	xor  h                                           ; $4cc3: $ac
	ei                                               ; $4cc4: $fb
	jp   z, $ffff                                    ; $4cc5: $ca $ff $ff

	dec  c                                           ; $4cc8: $0d
	ld   [bc], a                                     ; $4cc9: $02
	or   [hl]                                        ; $4cca: $b6
	inc  bc                                          ; $4ccb: $03
	ld   a, [de]                                     ; $4ccc: $1a
	dec  b                                           ; $4ccd: $05
	ld   a, [bc]                                     ; $4cce: $0a
	sbc  [hl]                                        ; $4ccf: $9e
	inc  b                                           ; $4cd0: $04
	ld   e, [hl]                                     ; $4cd1: $5e
	inc  b                                           ; $4cd2: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cd3: $cf
	sbc  [hl]                                        ; $4cd4: $9e
	ld   [bc], a                                     ; $4cd5: $02
	adc  h                                           ; $4cd6: $8c
	inc  bc                                          ; $4cd7: $03
	db   $10                                         ; $4cd8: $10
	inc  b                                           ; $4cd9: $04
	jr   nz, jr_05c_4d54                             ; $4cda: $20 $78

	ld   h, c                                        ; $4cdc: $61
	halt                                             ; $4cdd: $76
	dec  c                                           ; $4cde: $0d
	ld   e, a                                        ; $4cdf: $5f
	ld   d, d                                        ; $4ce0: $52
	ld   e, a                                        ; $4ce1: $5f
	and  c                                           ; $4ce2: $a1
	ld   a, c                                        ; $4ce3: $79
	halt                                             ; $4ce4: $76
	and  c                                           ; $4ce5: $a1
	ld   l, [hl]                                     ; $4ce6: $6e
	ld   [bc], a                                     ; $4ce7: $02
	di                                               ; $4ce8: $f3
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	dec  c                                           ; $4ceb: $0d
	nop                                              ; $4cec: $00
	ld   a, [bc]                                     ; $4ced: $0a
	dec  e                                           ; $4cee: $1d
	ld   b, b                                        ; $4cef: $40
	inc  de                                          ; $4cf0: $13
	inc  bc                                          ; $4cf1: $03
	inc  de                                          ; $4cf2: $13
	ld   bc, $2801                                   ; $4cf3: $01 $01 $28
	nop                                              ; $4cf6: $00
	ld   bc, $7850                                   ; $4cf7: $01 $50 $78
	ld   l, l                                        ; $4cfa: $6d
	ld   a, l                                        ; $4cfb: $7d
	sbc  [hl]                                        ; $4cfc: $9e
	inc  bc                                          ; $4cfd: $03
	nop                                              ; $4cfe: $00
	inc  bc                                          ; $4cff: $03
	ret                                              ; $4d00: $c9


	ld   a, c                                        ; $4d01: $79
	ld   l, h                                        ; $4d02: $6c
	ld   e, l                                        ; $4d03: $5d
	ld   h, e                                        ; $4d04: $63
	ld   a, b                                        ; $4d05: $78
	ld   d, d                                        ; $4d06: $52
	dec  c                                           ; $4d07: $0d
	ld   [bc], a                                     ; $4d08: $02
	jr   nz, jr_05c_4d0f                             ; $4d09: $20 $04

	ld   l, c                                        ; $4d0b: $69
	ld   b, $32                                      ; $4d0c: $06 $32
	ret  nz                                          ; $4d0e: $c0

jr_05c_4d0f:
	and  l                                           ; $4d0f: $a5
	ret  c                                           ; $4d10: $d8

	ld   a, e                                        ; $4d11: $7b
	sbc  a                                           ; $4d12: $9f
	dec  c                                           ; $4d13: $0d
	inc  b                                           ; $4d14: $04
	bit  7, h                                        ; $4d15: $cb $7c
	inc  bc                                          ; $4d17: $03
	ret  z                                           ; $4d18: $c8

	and  b                                           ; $4d19: $a0
	dec  b                                           ; $4d1a: $05
	pop  de                                          ; $4d1b: $d1
	ld   d, d                                        ; $4d1c: $52
	inc  bc                                          ; $4d1d: $03
	add  b                                           ; $4d1e: $80
	ld   h, a                                        ; $4d1f: $67
	sbc  l                                           ; $4d20: $9d
	ld   a, e                                        ; $4d21: $7b
	rst  $38                                         ; $4d22: $ff
	rst  $38                                         ; $4d23: $ff
	dec  c                                           ; $4d24: $0d
	nop                                              ; $4d25: $00
	ld   a, [bc]                                     ; $4d26: $0a
	ld   b, $85                                      ; $4d27: $06 $85
	inc  bc                                          ; $4d29: $03
	inc  e                                           ; $4d2a: $1c
	inc  bc                                          ; $4d2b: $03
	nop                                              ; $4d2c: $00
	nop                                              ; $4d2d: $00
	ld   bc, $aad6                                   ; $4d2e: $01 $d6 $aa
	ei                                               ; $4d31: $fb
	cp   d                                           ; $4d32: $ba
	ld   a, h                                        ; $4d33: $7c
	xor  h                                           ; $4d34: $ac
	ei                                               ; $4d35: $fb
	jp   z, $ffff                                    ; $4d36: $ca $ff $ff

	dec  c                                           ; $4d39: $0d
	ld   b, $29                                      ; $4d3a: $06 $29
	ld   [bc], a                                     ; $4d3c: $02
	and  c                                           ; $4d3d: $a1
	sbc  [hl]                                        ; $4d3e: $9e
	sub  $a2                                         ; $4d3f: $d6 $a2
	and  l                                           ; $4d41: $a5
	ret                                              ; $4d42: $c9


	sbc  [hl]                                        ; $4d43: $9e
	dec  b                                           ; $4d44: $05
	ret  nz                                          ; $4d45: $c0

	ld   [bc], a                                     ; $4d46: $02
	db   $dd                                         ; $4d47: $dd
	ld   [bc], a                                     ; $4d48: $02
	db   $fc                                         ; $4d49: $fc
	sbc  [hl]                                        ; $4d4a: $9e
	dec  c                                           ; $4d4b: $0d
	ld   [bc], a                                     ; $4d4c: $02
	jp   nc, $5461                                   ; $4d4d: $d2 $61 $54

	ld   [bc], a                                     ; $4d50: $02
	sub  l                                           ; $4d51: $95
	ld   l, b                                        ; $4d52: $68
	ld   a, h                                        ; $4d53: $7c

jr_05c_4d54:
	ld   l, l                                        ; $4d54: $6d
	ld   d, d                                        ; $4d55: $52
	ld   [hl], a                                     ; $4d56: $77
	rst  $38                                         ; $4d57: $ff
	rst  $38                                         ; $4d58: $ff
	dec  c                                           ; $4d59: $0d
	nop                                              ; $4d5a: $00
	ld   a, [bc]                                     ; $4d5b: $0a
	dec  e                                           ; $4d5c: $1d
	ld   b, b                                        ; $4d5d: $40
	inc  de                                          ; $4d5e: $13
	inc  bc                                          ; $4d5f: $03
	inc  de                                          ; $4d60: $13
	ld   bc, $2801                                   ; $4d61: $01 $01 $28
	nop                                              ; $4d64: $00
	ld   bc, $7850                                   ; $4d65: $01 $50 $78
	ld   l, l                                        ; $4d68: $6d
	ld   a, l                                        ; $4d69: $7d
	sbc  [hl]                                        ; $4d6a: $9e
	inc  bc                                          ; $4d6b: $03
	nop                                              ; $4d6c: $00
	inc  bc                                          ; $4d6d: $03
	ret                                              ; $4d6e: $c9


	ld   a, c                                        ; $4d6f: $79
	ld   l, h                                        ; $4d70: $6c
	ld   e, l                                        ; $4d71: $5d
	ld   h, e                                        ; $4d72: $63
	ld   a, b                                        ; $4d73: $78
	ld   d, d                                        ; $4d74: $52
	dec  c                                           ; $4d75: $0d
	ld   [bc], a                                     ; $4d76: $02
	jr   nz, jr_05c_4d7d                             ; $4d77: $20 $04

	ld   l, c                                        ; $4d79: $69
	ld   b, $32                                      ; $4d7a: $06 $32
	ret  nz                                          ; $4d7c: $c0

jr_05c_4d7d:
	and  l                                           ; $4d7d: $a5
	ret  c                                           ; $4d7e: $d8

	ld   a, e                                        ; $4d7f: $7b
	sbc  a                                           ; $4d80: $9f
	dec  c                                           ; $4d81: $0d
	ld   [hl], l                                     ; $4d82: $75
	sub  b                                           ; $4d83: $90
	sbc  [hl]                                        ; $4d84: $9e
	ldh  [c], a                                      ; $4d85: $e2
	jp   nz, Jump_05c_7de5                           ; $4d86: $c2 $e5 $7d

	pop  bc                                          ; $4d89: $c1
	db   $e3                                         ; $4d8a: $e3
	sub  [hl]                                        ; $4d8b: $96
	sbc  a                                           ; $4d8c: $9f
	dec  c                                           ; $4d8d: $0d
	nop                                              ; $4d8e: $00
	ld   a, [bc]                                     ; $4d8f: $0a
	ld   b, $85                                      ; $4d90: $06 $85
	inc  bc                                          ; $4d92: $03
	rlca                                             ; $4d93: $07
	ld   c, h                                        ; $4d94: $4c
	ld   [bc], a                                     ; $4d95: $02
	inc  bc                                          ; $4d96: $03
	jr   nz, jr_05c_4d9a                             ; $4d97: $20 $01

	ld   a, l                                        ; $4d99: $7d

jr_05c_4d9a:
	inc  hl                                          ; $4d9a: $23
	nop                                              ; $4d9b: $00
	inc  e                                           ; $4d9c: $1c
	inc  bc                                          ; $4d9d: $03
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	ld   bc, $9205                                   ; $4da0: $01 $05 $92
	inc  b                                           ; $4da3: $04
	ld   [$ac7c], sp                                 ; $4da4: $08 $7c $ac
	ei                                               ; $4da7: $fb
	jp   z, $ffff                                    ; $4da8: $ca $ff $ff

	dec  c                                           ; $4dab: $0d
	dec  b                                           ; $4dac: $05
	add  l                                           ; $4dad: $85
	dec  b                                           ; $4dae: $05
	ld   a, [bc]                                     ; $4daf: $0a
	sbc  [hl]                                        ; $4db0: $9e
	ld   [bc], a                                     ; $4db1: $02
	ld   a, a                                        ; $4db2: $7f
	inc  b                                           ; $4db3: $04
	dec  de                                          ; $4db4: $1b
	dec  b                                           ; $4db5: $05
	ld   a, [bc]                                     ; $4db6: $0a
	sbc  [hl]                                        ; $4db7: $9e
	ld   l, l                                        ; $4db8: $6d
	ld   e, l                                        ; $4db9: $5d
	adc  h                                           ; $4dba: $8c
	ld   h, l                                        ; $4dbb: $65
	ld   h, e                                        ; $4dbc: $63
	sbc  [hl]                                        ; $4dbd: $9e
	dec  c                                           ; $4dbe: $0d
	inc  b                                           ; $4dbf: $04
	call nc, $2004                                   ; $4dc0: $d4 $04 $20
	ld   a, h                                        ; $4dc3: $7c
	inc  bc                                          ; $4dc4: $03
	adc  e                                           ; $4dc5: $8b
	ld   [bc], a                                     ; $4dc6: $02
	ld   h, d                                        ; $4dc7: $62
	rst  $38                                         ; $4dc8: $ff
	rst  $38                                         ; $4dc9: $ff
	dec  c                                           ; $4dca: $0d
	nop                                              ; $4dcb: $00
	ld   a, [bc]                                     ; $4dcc: $0a
	inc  e                                           ; $4dcd: $1c
	inc  bc                                          ; $4dce: $03
	inc  bc                                          ; $4dcf: $03
	inc  bc                                          ; $4dd0: $03
	dec  e                                           ; $4dd1: $1d
	ld   b, b                                        ; $4dd2: $40
	inc  de                                          ; $4dd3: $13
	inc  bc                                          ; $4dd4: $03
	inc  de                                          ; $4dd5: $13
	ld   bc, $2802                                   ; $4dd6: $01 $02 $28
	nop                                              ; $4dd9: $00
	ld   bc, $7850                                   ; $4dda: $01 $50 $78
	ld   l, l                                        ; $4ddd: $6d
	ld   a, l                                        ; $4dde: $7d
	sbc  [hl]                                        ; $4ddf: $9e
	inc  bc                                          ; $4de0: $03
	nop                                              ; $4de1: $00
	inc  bc                                          ; $4de2: $03
	ret                                              ; $4de3: $c9


	ld   a, h                                        ; $4de4: $7c
	inc  b                                           ; $4de5: $04
	dec  bc                                          ; $4de6: $0b
	inc  bc                                          ; $4de7: $03
	ld   [hl], l                                     ; $4de8: $75
	ld   a, c                                        ; $4de9: $79
	ld   d, d                                        ; $4dea: $52
	sbc  c                                           ; $4deb: $99
	dec  c                                           ; $4dec: $0d
	rst  $38                                         ; $4ded: $ff
	rst  $38                                         ; $4dee: $ff
	ld   l, e                                        ; $4def: $6b
	ld   d, h                                        ; $4df0: $54
	sbc  [hl]                                        ; $4df1: $9e
	inc  bc                                          ; $4df2: $03
	rra                                              ; $4df3: $1f
	dec  b                                           ; $4df4: $05
	ld   bc, $a5c0                                   ; $4df5: $01 $c0 $a5
	ret  c                                           ; $4df8: $d8

	ld   a, e                                        ; $4df9: $7b
	sbc  a                                           ; $4dfa: $9f
	dec  c                                           ; $4dfb: $0d
	sub  $d6                                         ; $4dfc: $d6 $d6
	sub  $ff                                         ; $4dfe: $d6 $ff
	rst  $38                                         ; $4e00: $ff
	dec  c                                           ; $4e01: $0d
	nop                                              ; $4e02: $00
	ld   a, [bc]                                     ; $4e03: $0a
	ld   b, $85                                      ; $4e04: $06 $85
	inc  bc                                          ; $4e06: $03
	inc  e                                           ; $4e07: $1c
	inc  bc                                          ; $4e08: $03
	nop                                              ; $4e09: $00
	nop                                              ; $4e0a: $00
	ld   bc, $6e03                                   ; $4e0b: $01 $03 $6e
	ld   [bc], a                                     ; $4e0e: $02
	ret  nc                                          ; $4e0f: $d0

	dec  b                                           ; $4e10: $05
	sub  d                                           ; $4e11: $92
	ld   a, h                                        ; $4e12: $7c
	xor  h                                           ; $4e13: $ac
	ei                                               ; $4e14: $fb
	jp   z, $ffff                                    ; $4e15: $ca $ff $ff

	dec  c                                           ; $4e18: $0d
	ld   [bc], a                                     ; $4e19: $02
	ret  nc                                          ; $4e1a: $d0

	inc  b                                           ; $4e1b: $04
	push af                                          ; $4e1c: $f5
	ld   a, c                                        ; $4e1d: $79
	ld   b, $15                                      ; $4e1e: $06 $15
	adc  [hl]                                        ; $4e20: $8e
	sbc  [hl]                                        ; $4e21: $9e
	inc  bc                                          ; $4e22: $03
	and  e                                           ; $4e23: $a3
	ld   d, d                                        ; $4e24: $52
	ld   [bc], a                                     ; $4e25: $02
	ld   h, l                                        ; $4e26: $65
	ld   d, [hl]                                     ; $4e27: $56
	sbc  [hl]                                        ; $4e28: $9e
	dec  c                                           ; $4e29: $0d
	and  l                                           ; $4e2a: $a5
	push af                                          ; $4e2b: $f5
	rst  ToBoot                                         ; $4e2c: $c7
	db   $ec                                         ; $4e2d: $ec
	cp   c                                           ; $4e2e: $b9
	xor  b                                           ; $4e2f: $a8
	push af                                          ; $4e30: $f5
	cp   d                                           ; $4e31: $ba
	sbc  [hl]                                        ; $4e32: $9e
	inc  b                                           ; $4e33: $04
	cp   [hl]                                        ; $4e34: $be
	ld   [bc], a                                     ; $4e35: $02
	sub  l                                           ; $4e36: $95
	sbc  c                                           ; $4e37: $99
	inc  bc                                          ; $4e38: $03
	ld   [hl], l                                     ; $4e39: $75
	rst  $38                                         ; $4e3a: $ff
	dec  c                                           ; $4e3b: $0d
	nop                                              ; $4e3c: $00
	ld   a, [bc]                                     ; $4e3d: $0a
	inc  e                                           ; $4e3e: $1c
	inc  bc                                          ; $4e3f: $03
	inc  bc                                          ; $4e40: $03
	inc  bc                                          ; $4e41: $03
	dec  e                                           ; $4e42: $1d
	ld   b, b                                        ; $4e43: $40
	inc  de                                          ; $4e44: $13
	inc  bc                                          ; $4e45: $03
	inc  de                                          ; $4e46: $13
	ld   bc, $2802                                   ; $4e47: $01 $02 $28
	nop                                              ; $4e4a: $00
	ld   bc, $7850                                   ; $4e4b: $01 $50 $78
	ld   l, l                                        ; $4e4e: $6d
	ld   a, l                                        ; $4e4f: $7d
	sbc  [hl]                                        ; $4e50: $9e
	inc  bc                                          ; $4e51: $03
	nop                                              ; $4e52: $00
	inc  bc                                          ; $4e53: $03
	ret                                              ; $4e54: $c9


	ld   a, h                                        ; $4e55: $7c
	inc  b                                           ; $4e56: $04
	dec  bc                                          ; $4e57: $0b
	inc  bc                                          ; $4e58: $03
	ld   [hl], l                                     ; $4e59: $75
	ld   a, c                                        ; $4e5a: $79
	ld   d, d                                        ; $4e5b: $52
	sbc  c                                           ; $4e5c: $99
	dec  c                                           ; $4e5d: $0d
	rst  $38                                         ; $4e5e: $ff
	rst  $38                                         ; $4e5f: $ff
	ld   l, e                                        ; $4e60: $6b
	ld   d, h                                        ; $4e61: $54
	sbc  [hl]                                        ; $4e62: $9e
	inc  bc                                          ; $4e63: $03
	rra                                              ; $4e64: $1f
	dec  b                                           ; $4e65: $05
	ld   bc, $a5c0                                   ; $4e66: $01 $c0 $a5
	ret  c                                           ; $4e69: $d8

	ld   a, e                                        ; $4e6a: $7b
	sbc  a                                           ; $4e6b: $9f
	dec  c                                           ; $4e6c: $0d
	sub  $d6                                         ; $4e6d: $d6 $d6
	sub  $ff                                         ; $4e6f: $d6 $ff
	rst  $38                                         ; $4e71: $ff
	dec  c                                           ; $4e72: $0d
	nop                                              ; $4e73: $00
	ld   a, [bc]                                     ; $4e74: $0a
	ld   b, $85                                      ; $4e75: $06 $85
	inc  bc                                          ; $4e77: $03
	rlca                                             ; $4e78: $07
	dec  h                                           ; $4e79: $25
	inc  bc                                          ; $4e7a: $03
	inc  bc                                          ; $4e7b: $03
	dec  h                                           ; $4e7c: $25
	ld   bc, $2396                                   ; $4e7d: $01 $96 $23
	nop                                              ; $4e80: $00
	inc  e                                           ; $4e81: $1c
	inc  bc                                          ; $4e82: $03
	nop                                              ; $4e83: $00
	nop                                              ; $4e84: $00
	ld   bc, $4a03                                   ; $4e85: $01 $03 $4a
	ld   [bc], a                                     ; $4e88: $02
	ld   a, c                                        ; $4e89: $79
	ld   a, h                                        ; $4e8a: $7c
	xor  h                                           ; $4e8b: $ac
	ei                                               ; $4e8c: $fb
	jp   z, $ffff                                    ; $4e8d: $ca $ff $ff

	dec  c                                           ; $4e90: $0d
	inc  b                                           ; $4e91: $04
	dec  bc                                          ; $4e92: $0b
	inc  bc                                          ; $4e93: $03
	ld   [hl], l                                     ; $4e94: $75
	and  b                                           ; $4e95: $a0
	inc  b                                           ; $4e96: $04
	or   h                                           ; $4e97: $b4
	ld   [hl], d                                     ; $4e98: $72
	sbc  [hl]                                        ; $4e99: $9e
	inc  bc                                          ; $4e9a: $03
	adc  d                                           ; $4e9b: $8a
	inc  bc                                          ; $4e9c: $03
	adc  e                                           ; $4e9d: $8b
	ld   h, e                                        ; $4e9e: $63
	sbc  [hl]                                        ; $4e9f: $9e
	dec  c                                           ; $4ea0: $0d
	ldh  [c], a                                      ; $4ea1: $e2
	db   $ec                                         ; $4ea2: $ec
	and  b                                           ; $4ea3: $a0
	ld   h, l                                        ; $4ea4: $65
	ld   a, b                                        ; $4ea5: $78
	ld   d, d                                        ; $4ea6: $52
	sbc  [hl]                                        ; $4ea7: $9e
	inc  bc                                          ; $4ea8: $03
	ld   c, d                                        ; $4ea9: $4a
	ld   h, l                                        ; $4eaa: $65
	ld   d, d                                        ; $4eab: $52
	inc  b                                           ; $4eac: $04
	ld   h, e                                        ; $4ead: $63
	ld   [bc], a                                     ; $4eae: $02
	add  e                                           ; $4eaf: $83
	rst  $38                                         ; $4eb0: $ff
	rst  $38                                         ; $4eb1: $ff
	dec  c                                           ; $4eb2: $0d
	nop                                              ; $4eb3: $00
	ld   a, [bc]                                     ; $4eb4: $0a
	inc  e                                           ; $4eb5: $1c
	inc  bc                                          ; $4eb6: $03
	inc  bc                                          ; $4eb7: $03
	inc  bc                                          ; $4eb8: $03
	dec  e                                           ; $4eb9: $1d
	ld   b, b                                        ; $4eba: $40
	inc  de                                          ; $4ebb: $13
	inc  bc                                          ; $4ebc: $03
	inc  de                                          ; $4ebd: $13
	ld   bc, $2803                                   ; $4ebe: $01 $03 $28
	nop                                              ; $4ec1: $00
	ld   bc, $7850                                   ; $4ec2: $01 $50 $78
	ld   l, l                                        ; $4ec5: $6d
	ld   a, l                                        ; $4ec6: $7d
	sbc  [hl]                                        ; $4ec7: $9e
	adc  l                                           ; $4ec8: $8d
	and  c                                           ; $4ec9: $a1
	ld   a, b                                        ; $4eca: $78
	and  b                                           ; $4ecb: $a0
	adc  h                                           ; $4ecc: $8c
	halt                                             ; $4ecd: $76
	adc  a                                           ; $4ece: $8f
	sbc  c                                           ; $4ecf: $99
	dec  c                                           ; $4ed0: $0d
	inc  b                                           ; $4ed1: $04
	ld   a, [bc]                                     ; $4ed2: $0a
	inc  bc                                          ; $4ed3: $03
	jp   nc, $a5c0                                   ; $4ed4: $d2 $c0 $a5

	ret  c                                           ; $4ed7: $d8

	ld   a, e                                        ; $4ed8: $7b
	sbc  a                                           ; $4ed9: $9f
	dec  c                                           ; $4eda: $0d
	nop                                              ; $4edb: $00
	ld   a, [bc]                                     ; $4edc: $0a
	ld   b, $85                                      ; $4edd: $06 $85
	inc  bc                                          ; $4edf: $03
	inc  e                                           ; $4ee0: $1c
	inc  bc                                          ; $4ee1: $03
	nop                                              ; $4ee2: $00
	nop                                              ; $4ee3: $00
	ld   bc, $5603                                   ; $4ee4: $01 $03 $56
	inc  bc                                          ; $4ee7: $03
	adc  [hl]                                        ; $4ee8: $8e
	ld   a, h                                        ; $4ee9: $7c
	xor  h                                           ; $4eea: $ac
	ei                                               ; $4eeb: $fb
	jp   z, $ffff                                    ; $4eec: $ca $ff $ff

	dec  c                                           ; $4eef: $0d
	inc  bc                                          ; $4ef0: $03
	ld   d, [hl]                                     ; $4ef1: $56
	inc  bc                                          ; $4ef2: $03
	adc  [hl]                                        ; $4ef3: $8e
	sbc  [hl]                                        ; $4ef4: $9e
	ld   b, $06                                      ; $4ef5: $06 $06
	dec  b                                           ; $4ef7: $05
	di                                               ; $4ef8: $f3
	sbc  [hl]                                        ; $4ef9: $9e
	inc  bc                                          ; $4efa: $03
	sub  h                                           ; $4efb: $94
	inc  bc                                          ; $4efc: $03
	ccf                                              ; $4efd: $3f
	ld   h, a                                        ; $4efe: $67
	sbc  c                                           ; $4eff: $99
	sbc  [hl]                                        ; $4f00: $9e
	dec  c                                           ; $4f01: $0d
	inc  bc                                          ; $4f02: $03
	cp   $05                                         ; $4f03: $fe $05
	ld   hl, $7da0                                   ; $4f05: $21 $a0 $7d
	ld   e, c                                        ; $4f08: $59
	sbc  c                                           ; $4f09: $99
	rst  $38                                         ; $4f0a: $ff
	rst  $38                                         ; $4f0b: $ff
	dec  c                                           ; $4f0c: $0d
	nop                                              ; $4f0d: $00
	ld   a, [bc]                                     ; $4f0e: $0a
	inc  e                                           ; $4f0f: $1c
	inc  bc                                          ; $4f10: $03
	inc  bc                                          ; $4f11: $03
	inc  bc                                          ; $4f12: $03
	dec  e                                           ; $4f13: $1d
	ld   b, b                                        ; $4f14: $40
	inc  de                                          ; $4f15: $13
	inc  bc                                          ; $4f16: $03
	inc  de                                          ; $4f17: $13
	ld   bc, $2803                                   ; $4f18: $01 $03 $28
	nop                                              ; $4f1b: $00
	ld   bc, $7850                                   ; $4f1c: $01 $50 $78
	ld   l, l                                        ; $4f1f: $6d
	ld   a, l                                        ; $4f20: $7d
	sbc  [hl]                                        ; $4f21: $9e
	adc  l                                           ; $4f22: $8d
	and  c                                           ; $4f23: $a1
	ld   a, b                                        ; $4f24: $78
	and  b                                           ; $4f25: $a0
	adc  h                                           ; $4f26: $8c
	halt                                             ; $4f27: $76
	adc  a                                           ; $4f28: $8f
	sbc  c                                           ; $4f29: $99
	dec  c                                           ; $4f2a: $0d
	inc  b                                           ; $4f2b: $04
	ld   a, [bc]                                     ; $4f2c: $0a
	inc  bc                                          ; $4f2d: $03
	jp   nc, $a5c0                                   ; $4f2e: $d2 $c0 $a5

	ret  c                                           ; $4f31: $d8

	sbc  a                                           ; $4f32: $9f
	dec  c                                           ; $4f33: $0d
	ld   l, e                                        ; $4f34: $6b
	ld   d, h                                        ; $4f35: $54
	inc  bc                                          ; $4f36: $03
	add  b                                           ; $4f37: $80
	ld   [hl], h                                     ; $4f38: $74
	ld   d, d                                        ; $4f39: $52
	sbc  c                                           ; $4f3a: $99
	sbc  l                                           ; $4f3b: $9d
	sbc  a                                           ; $4f3c: $9f
	dec  c                                           ; $4f3d: $0d
	nop                                              ; $4f3e: $00
	ld   a, [bc]                                     ; $4f3f: $0a
	ld   bc, $508c                                   ; $4f40: $01 $8c $50
	sbc  [hl]                                        ; $4f43: $9e
	ld   h, c                                        ; $4f44: $61
	sbc  d                                           ; $4f45: $9a
	ld   a, l                                        ; $4f46: $7d
	ld   d, b                                        ; $4f47: $50
	ld   e, l                                        ; $4f48: $5d
	adc  h                                           ; $4f49: $8c
	ld   [hl], l                                     ; $4f4a: $75
	dec  b                                           ; $4f4b: $05
	sub  $52                                         ; $4f4c: $d6 $52
	ld   l, [hl]                                     ; $4f4e: $6e
	ld   e, c                                        ; $4f4f: $59
	dec  c                                           ; $4f50: $0d
	sub  a                                           ; $4f51: $97
	rst  $38                                         ; $4f52: $ff
	rst  $38                                         ; $4f53: $ff
	sbc  [hl]                                        ; $4f54: $9e
	ld   h, c                                        ; $4f55: $61
	sbc  d                                           ; $4f56: $9a
	and  b                                           ; $4f57: $a0
	ld   [bc], a                                     ; $4f58: $02
	jr   nz, jr_05c_4fcd                             ; $4f59: $20 $72

	ld   a, h                                        ; $4f5b: $7c
	inc  b                                           ; $4f5c: $04
	ld   h, e                                        ; $4f5d: $63
	inc  b                                           ; $4f5e: $04
	inc  h                                           ; $4f5f: $24
	inc  bc                                          ; $4f60: $03
	jr   nc, jr_05c_4f68                             ; $4f61: $30 $05

	ld   [bc], a                                     ; $4f63: $02
	dec  c                                           ; $4f64: $0d
	halt                                             ; $4f65: $76
	ld   h, a                                        ; $4f66: $67
	sbc  c                                           ; $4f67: $99

jr_05c_4f68:
	ld   e, l                                        ; $4f68: $5d
	sub  a                                           ; $4f69: $97
	ld   d, d                                        ; $4f6a: $52
	ld   a, h                                        ; $4f6b: $7c
	ld   [bc], a                                     ; $4f6c: $02
	and  c                                           ; $4f6d: $a1
	inc  bc                                          ; $4f6e: $03
	and  b                                           ; $4f6f: $a0
	ld   l, a                                        ; $4f70: $6f
	ld   [hl], l                                     ; $4f71: $75
	ld   a, e                                        ; $4f72: $7b
	sbc  a                                           ; $4f73: $9f
	dec  c                                           ; $4f74: $0d
	nop                                              ; $4f75: $00
	ld   a, [bc]                                     ; $4f76: $0a
	nop                                              ; $4f77: $00
	nop                                              ; $4f78: $00
	inc  e                                           ; $4f79: $1c
	dec  b                                           ; $4f7a: $05
	ld   [bc], a                                     ; $4f7b: $02
	ld   [bc], a                                     ; $4f7c: $02
	ld   [bc], a                                     ; $4f7d: $02
	ld   de, $0100                                   ; $4f7e: $11 $00 $01
	ld   d, h                                        ; $4f81: $54
	db   $fc                                         ; $4f82: $fc
	and  c                                           ; $4f83: $a1
	rst  $38                                         ; $4f84: $ff
	rst  $38                                         ; $4f85: $ff
	dec  c                                           ; $4f86: $0d
	rst  $38                                         ; $4f87: $ff
	rst  $38                                         ; $4f88: $ff
	rst  $38                                         ; $4f89: $ff
	rst  $38                                         ; $4f8a: $ff
	rst  $38                                         ; $4f8b: $ff
	rst  $38                                         ; $4f8c: $ff
	rst  $38                                         ; $4f8d: $ff
	rst  $38                                         ; $4f8e: $ff
	rst  $38                                         ; $4f8f: $ff
	rst  $38                                         ; $4f90: $ff
	rst  $38                                         ; $4f91: $ff
	rst  $38                                         ; $4f92: $ff
	dec  c                                           ; $4f93: $0d
	nop                                              ; $4f94: $00
	ld   a, [bc]                                     ; $4f95: $0a
	rrca                                             ; $4f96: $0f
	nop                                              ; $4f97: $00
	ld   bc, $0201                                   ; $4f98: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f9b: $cf
	dec  b                                           ; $4f9c: $05
	ld   a, [de]                                     ; $4f9d: $1a
	ld   h, e                                        ; $4f9e: $63
	and  c                                           ; $4f9f: $a1
	sbc  a                                           ; $4fa0: $9f
	dec  c                                           ; $4fa1: $0d
	ld   a, b                                        ; $4fa2: $78
	ld   a, c                                        ; $4fa3: $79
	ld   e, c                                        ; $4fa4: $59
	inc  b                                           ; $4fa5: $04
	ld   b, b                                        ; $4fa6: $40
	and  c                                           ; $4fa7: $a1
	ld   [hl], l                                     ; $4fa8: $75
	sbc  c                                           ; $4fa9: $99
	and  c                                           ; $4faa: $a1
	ld   [hl], l                                     ; $4fab: $75
	ld   h, a                                        ; $4fac: $67
	ld   e, c                                        ; $4fad: $59
	ld   sp, hl                                      ; $4fae: $f9
	dec  c                                           ; $4faf: $0d
	nop                                              ; $4fb0: $00
	ld   a, [bc]                                     ; $4fb1: $0a
	ld   de, $1cff                                   ; $4fb2: $11 $ff $1c
	dec  b                                           ; $4fb5: $05
	nop                                              ; $4fb6: $00
	nop                                              ; $4fb7: $00
	ld   bc, $9e50                                   ; $4fb8: $01 $50 $9e
	ld   [$7d00], sp                                 ; $4fbb: $08 $00 $7d
	and  c                                           ; $4fbe: $a1
	sbc  a                                           ; $4fbf: $9f
	dec  c                                           ; $4fc0: $0d
	ld   bc, $0407                                   ; $4fc1: $01 $07 $04
	ld   e, [hl]                                     ; $4fc4: $5e
	inc  b                                           ; $4fc5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fc6: $cf
	ld   a, l                                        ; $4fc7: $7d
	ld   sp, hl                                      ; $4fc8: $f9
	ld   bc, $0d08                                   ; $4fc9: $01 $08 $0d
	nop                                              ; $4fcc: $00

jr_05c_4fcd:
	ld   a, [bc]                                     ; $4fcd: $0a
	add  hl, de                                      ; $4fce: $19
	dec  b                                           ; $4fcf: $05
	inc  bc                                          ; $4fd0: $03
	pop  de                                          ; $4fd1: $d1
	or   b                                           ; $4fd2: $b0
	ret  nc                                          ; $4fd3: $d0

	push bc                                          ; $4fd4: $c5
	sub  d                                           ; $4fd5: $92
	ld   a, [rRAMG]                                  ; $4fd6: $fa $00 $00
	pop  de                                          ; $4fd9: $d1
	or   b                                           ; $4fda: $b0
	pop  de                                          ; $4fdb: $d1
	or   b                                           ; $4fdc: $b0
	sub  d                                           ; $4fdd: $92
	ld   a, [$0100]                                  ; $4fde: $fa $00 $01
	ld   b, $3b                                      ; $4fe1: $06 $3b
	inc  b                                           ; $4fe3: $04
	ld   c, $92                                      ; $4fe4: $0e $92
	ld   a, [$0200]                                  ; $4fe6: $fa $00 $02
	rlca                                             ; $4fe9: $07
	adc  [hl]                                        ; $4fea: $8e
	nop                                              ; $4feb: $00
	ld   [bc], a                                     ; $4fec: $02
	inc  bc                                          ; $4fed: $03
	ld   bc, $2000                                   ; $4fee: $01 $00 $20
	nop                                              ; $4ff1: $00
	rlca                                             ; $4ff2: $07
	ldh  a, [c]                                      ; $4ff3: $f2
	nop                                              ; $4ff4: $00
	ld   [bc], a                                     ; $4ff5: $02
	inc  bc                                          ; $4ff6: $03
	ld   bc, $2001                                   ; $4ff7: $01 $01 $20
	nop                                              ; $4ffa: $00
	rlca                                             ; $4ffb: $07
	ld   e, a                                        ; $4ffc: $5f
	ld   bc, $0302                                   ; $4ffd: $01 $02 $03
	ld   bc, $2002                                   ; $5000: $01 $02 $20
	nop                                              ; $5003: $00
	ld   b, $d6                                      ; $5004: $06 $d6
	ld   bc, $000f                                   ; $5006: $01 $0f $00
	ld   bc, $0101                                   ; $5009: $01 $01 $01
	rlca                                             ; $500c: $07
	pop  de                                          ; $500d: $d1
	or   b                                           ; $500e: $b0
	ret  nc                                          ; $500f: $d0

	push bc                                          ; $5010: $c5
	sub  d                                           ; $5011: $92
	ld   a, [$0801]                                  ; $5012: $fa $01 $08
	ld   [hl], l                                     ; $5015: $75
	ld   h, l                                        ; $5016: $65
	sub  l                                           ; $5017: $95
	ld   d, h                                        ; $5018: $54
	ld   a, [$0dfa]                                  ; $5019: $fa $fa $0d
	nop                                              ; $501c: $00
	ld   a, [bc]                                     ; $501d: $0a
	inc  e                                           ; $501e: $1c
	dec  b                                           ; $501f: $05
	dec  b                                           ; $5020: $05
	dec  b                                           ; $5021: $05
	dec  e                                           ; $5022: $1d
	ld   b, b                                        ; $5023: $40
	dec  d                                           ; $5024: $15
	inc  bc                                          ; $5025: $03
	dec  d                                           ; $5026: $15
	ld   bc, $2803                                   ; $5027: $01 $03 $28
	nop                                              ; $502a: $00
	ld   bc, $7c6b                                   ; $502b: $01 $6b $7c
	inc  bc                                          ; $502e: $03
	pop  hl                                          ; $502f: $e1
	sbc  b                                           ; $5030: $98
	ld   a, [$d110]                                  ; $5031: $fa $10 $d1
	or   b                                           ; $5034: $b0
	ret  nc                                          ; $5035: $d0

	push bc                                          ; $5036: $c5
	sub  d                                           ; $5037: $92
	ld   a, [$960d]                                  ; $5038: $fa $0d $96
	ei                                               ; $503b: $fb
	ld   h, l                                        ; $503c: $65
	sbc  [hl]                                        ; $503d: $9e
	inc  b                                           ; $503e: $04
	ld   b, b                                        ; $503f: $40
	adc  [hl]                                        ; $5040: $8e
	ld   a, h                                        ; $5041: $7c
	and  $e3                                         ; $5042: $e6 $e3
	sub  d                                           ; $5044: $92
	sbc  a                                           ; $5045: $9f
	dec  c                                           ; $5046: $0d
	ld   e, d                                        ; $5047: $5a
	and  c                                           ; $5048: $a1
	ld   a, [hl]                                     ; $5049: $7e
	sbc  c                                           ; $504a: $99
	ld   [hl], l                                     ; $504b: $75
	ei                                               ; $504c: $fb
	ld   [hl], c                                     ; $504d: $71
	ld   a, [$000d]                                  ; $504e: $fa $0d $00
	ld   a, [bc]                                     ; $5051: $0a
	ld   bc, $9850                                   ; $5052: $01 $50 $98
	ld   e, d                                        ; $5055: $5a
	halt                                             ; $5056: $76
	ld   d, h                                        ; $5057: $54
	sbc  a                                           ; $5058: $9f
	dec  c                                           ; $5059: $0d

Jump_05c_505a:
	ld   [$7d00], sp                                 ; $505a: $08 $00 $7d
	and  c                                           ; $505d: $a1
	sbc  a                                           ; $505e: $9f
	dec  c                                           ; $505f: $0d
	nop                                              ; $5060: $00
	ld   a, [bc]                                     ; $5061: $0a
	dec  c                                           ; $5062: $0d
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	rrca                                             ; $5065: $0f
	nop                                              ; $5066: $00
	ld   bc, $1e09                                   ; $5067: $01 $09 $1e
	nop                                              ; $506a: $00
	rrca                                             ; $506b: $0f
	nop                                              ; $506c: $00
	ld   bc, $0101                                   ; $506d: $01 $01 $01
	rlca                                             ; $5070: $07
	pop  de                                          ; $5071: $d1
	or   b                                           ; $5072: $b0
	pop  de                                          ; $5073: $d1
	or   b                                           ; $5074: $b0
	sub  d                                           ; $5075: $92
	ld   a, [$0801]                                  ; $5076: $fa $01 $08
	rst  $38                                         ; $5079: $ff
	rst  $38                                         ; $507a: $ff
	dec  c                                           ; $507b: $0d
	ld   h, [hl]                                     ; $507c: $66
	sub  c                                           ; $507d: $91
	ld   a, b                                        ; $507e: $78
	ld   d, d                                        ; $507f: $52
	ld   [hl], l                                     ; $5080: $75
	ld   h, l                                        ; $5081: $65
	sub  l                                           ; $5082: $95
	ld   d, h                                        ; $5083: $54
	ld   e, c                                        ; $5084: $59
	ld   sp, hl                                      ; $5085: $f9
	dec  c                                           ; $5086: $0d
	nop                                              ; $5087: $00
	ld   a, [bc]                                     ; $5088: $0a
	inc  e                                           ; $5089: $1c
	dec  b                                           ; $508a: $05
	inc  bc                                          ; $508b: $03
	inc  bc                                          ; $508c: $03
	ld   bc, $b0d1                                   ; $508d: $01 $d1 $b0
	pop  de                                          ; $5090: $d1
	or   b                                           ; $5091: $b0
	ld   a, l                                        ; $5092: $7d
	xor  h                                           ; $5093: $ac
	push af                                          ; $5094: $f5
	bit  7, l                                        ; $5095: $cb $7d
	and  c                                           ; $5097: $a1
	sub  d                                           ; $5098: $92
	ld   a, [$000d]                                  ; $5099: $fa $0d $00
	ld   a, [bc]                                     ; $509c: $0a
	inc  e                                           ; $509d: $1c
	dec  b                                           ; $509e: $05
	ld   [bc], a                                     ; $509f: $02
	ld   [bc], a                                     ; $50a0: $02
	ld   bc, $fc54                                   ; $50a1: $01 $54 $fc
	and  c                                           ; $50a4: $a1
	rst  $38                                         ; $50a5: $ff
	rst  $38                                         ; $50a6: $ff
	rst  $38                                         ; $50a7: $ff
	dec  c                                           ; $50a8: $0d
	nop                                              ; $50a9: $00
	ld   a, [bc]                                     ; $50aa: $0a
	rrca                                             ; $50ab: $0f
	nop                                              ; $50ac: $00
	ld   bc, $0101                                   ; $50ad: $01 $01 $01
	inc  bc                                          ; $50b0: $03
	ld   a, b                                        ; $50b1: $78
	and  c                                           ; $50b2: $a1
	ld   l, [hl]                                     ; $50b3: $6e
	ld   e, c                                        ; $50b4: $59
	sbc  [hl]                                        ; $50b5: $9e
	ld   [bc], a                                     ; $50b6: $02
	ld   h, l                                        ; $50b7: $65
	ld   d, [hl]                                     ; $50b8: $56
	ld   [bc], a                                     ; $50b9: $02
	ld   b, b                                        ; $50ba: $40
	and  c                                           ; $50bb: $a1
	ld   [hl], l                                     ; $50bc: $75
	sbc  c                                           ; $50bd: $99
	dec  c                                           ; $50be: $0d
	db   $10                                         ; $50bf: $10
	adc  l                                           ; $50c0: $8d
	ld   l, l                                        ; $50c1: $6d
	ld   d, d                                        ; $50c2: $52
	ld   l, [hl]                                     ; $50c3: $6e
	ld   e, c                                        ; $50c4: $59
	sub  a                                           ; $50c5: $97
	sbc  [hl]                                        ; $50c6: $9e
	ld   h, c                                        ; $50c7: $61
	ld   a, h                                        ; $50c8: $7c
	inc  b                                           ; $50c9: $04
	ld   a, d                                        ; $50ca: $7a
	and  b                                           ; $50cb: $a0
	dec  c                                           ; $50cc: $0d
	db   $10                                         ; $50cd: $10
	ld   [bc], a                                     ; $50ce: $02
	ld   d, e                                        ; $50cf: $53
	sbc  e                                           ; $50d0: $9b
	ld   d, h                                        ; $50d1: $54
	ld   bc, $0d04                                   ; $50d2: $01 $04 $0d
	nop                                              ; $50d5: $00
	ld   a, [bc]                                     ; $50d6: $0a
	nop                                              ; $50d7: $00
	rrca                                             ; $50d8: $0f
	nop                                              ; $50d9: $00
	ld   bc, $0101                                   ; $50da: $01 $01 $01
	rlca                                             ; $50dd: $07
	ld   b, $3b                                      ; $50de: $06 $3b
	inc  b                                           ; $50e0: $04
	ld   c, $92                                      ; $50e1: $0e $92
	ld   a, [$0801]                                  ; $50e3: $fa $01 $08
	rst  $38                                         ; $50e6: $ff
	rst  $38                                         ; $50e7: $ff
	ld   [hl], l                                     ; $50e8: $75
	ld   h, a                                        ; $50e9: $67
	sub  [hl]                                        ; $50ea: $96
	ld   a, e                                        ; $50eb: $7b
	ld   sp, hl                                      ; $50ec: $f9
	dec  c                                           ; $50ed: $0d
	nop                                              ; $50ee: $00
	ld   a, [bc]                                     ; $50ef: $0a
	inc  e                                           ; $50f0: $1c
	dec  b                                           ; $50f1: $05
	nop                                              ; $50f2: $00
	nop                                              ; $50f3: $00
	dec  e                                           ; $50f4: $1d
	ld   b, b                                        ; $50f5: $40
	dec  d                                           ; $50f6: $15
	inc  bc                                          ; $50f7: $03
	dec  d                                           ; $50f8: $15
	ld   bc, $2801                                   ; $50f9: $01 $01 $28
	nop                                              ; $50fc: $00
	ld   bc, $3b06                                   ; $50fd: $01 $06 $3b
	inc  b                                           ; $5100: $04
	ld   c, $ff                                      ; $5101: $0e $ff
	rst  $38                                         ; $5103: $ff
	ld   sp, hl                                      ; $5104: $f9
	dec  c                                           ; $5105: $0d
	ld   l, e                                        ; $5106: $6b
	sub  a                                           ; $5107: $97
	adc  h                                           ; $5108: $8c
	ld   d, b                                        ; $5109: $50
	sbc  [hl]                                        ; $510a: $9e
	ld   l, e                                        ; $510b: $6b
	sub  d                                           ; $510c: $92
	sbc  l                                           ; $510d: $9d
	ld   a, b                                        ; $510e: $78
	rst  $38                                         ; $510f: $ff
	rst  $38                                         ; $5110: $ff
	dec  c                                           ; $5111: $0d
	nop                                              ; $5112: $00
	ld   a, [bc]                                     ; $5113: $0a
	inc  e                                           ; $5114: $1c
	dec  b                                           ; $5115: $05
	ld   [bc], a                                     ; $5116: $02
	ld   [bc], a                                     ; $5117: $02
	ld   bc, $fc54                                   ; $5118: $01 $54 $fc
	and  c                                           ; $511b: $a1
	rst  $38                                         ; $511c: $ff
	rst  $38                                         ; $511d: $ff
	rst  $38                                         ; $511e: $ff
	dec  c                                           ; $511f: $0d
	nop                                              ; $5120: $00
	ld   a, [bc]                                     ; $5121: $0a
	rrca                                             ; $5122: $0f
	nop                                              ; $5123: $00
	ld   bc, $0101                                   ; $5124: $01 $01 $01
	inc  bc                                          ; $5127: $03
	ld   a, b                                        ; $5128: $78
	and  c                                           ; $5129: $a1
	ld   l, [hl]                                     ; $512a: $6e
	ld   e, c                                        ; $512b: $59
	sbc  [hl]                                        ; $512c: $9e
	ld   [bc], a                                     ; $512d: $02
	ld   h, l                                        ; $512e: $65
	ld   d, [hl]                                     ; $512f: $56
	ld   [bc], a                                     ; $5130: $02
	ld   b, b                                        ; $5131: $40
	and  c                                           ; $5132: $a1
	ld   [hl], l                                     ; $5133: $75
	sbc  c                                           ; $5134: $99
	dec  c                                           ; $5135: $0d
	db   $10                                         ; $5136: $10
	adc  l                                           ; $5137: $8d
	ld   l, l                                        ; $5138: $6d
	ld   d, d                                        ; $5139: $52
	ld   l, [hl]                                     ; $513a: $6e
	ld   e, c                                        ; $513b: $59
	sub  a                                           ; $513c: $97
	sbc  [hl]                                        ; $513d: $9e
	ld   h, c                                        ; $513e: $61
	ld   a, h                                        ; $513f: $7c
	inc  b                                           ; $5140: $04
	ld   a, d                                        ; $5141: $7a
	and  b                                           ; $5142: $a0
	dec  c                                           ; $5143: $0d
	db   $10                                         ; $5144: $10
	ld   [bc], a                                     ; $5145: $02
	ld   d, e                                        ; $5146: $53
	sbc  e                                           ; $5147: $9b
	ld   d, h                                        ; $5148: $54
	ld   bc, $0d04                                   ; $5149: $01 $04 $0d
	nop                                              ; $514c: $00
	ld   a, [bc]                                     ; $514d: $0a
	nop                                              ; $514e: $00
	inc  e                                           ; $514f: $1c
	dec  b                                           ; $5150: $05
	ld   [bc], a                                     ; $5151: $02
	ld   [bc], a                                     ; $5152: $02
	ld   bc, $fc54                                   ; $5153: $01 $54 $fc
	and  c                                           ; $5156: $a1
	rst  $38                                         ; $5157: $ff
	rst  $38                                         ; $5158: $ff
	rst  $38                                         ; $5159: $ff
	dec  c                                           ; $515a: $0d
	nop                                              ; $515b: $00
	ld   a, [bc]                                     ; $515c: $0a
	rrca                                             ; $515d: $0f
	nop                                              ; $515e: $00
	ld   bc, $0101                                   ; $515f: $01 $01 $01
	inc  bc                                          ; $5162: $03
	ld   a, b                                        ; $5163: $78
	and  c                                           ; $5164: $a1
	ld   l, [hl]                                     ; $5165: $6e
	ld   e, c                                        ; $5166: $59
	sbc  [hl]                                        ; $5167: $9e
	ld   [bc], a                                     ; $5168: $02
	ld   h, l                                        ; $5169: $65
	ld   d, [hl]                                     ; $516a: $56
	ld   [bc], a                                     ; $516b: $02
	ld   b, b                                        ; $516c: $40
	and  c                                           ; $516d: $a1
	ld   [hl], l                                     ; $516e: $75
	sbc  c                                           ; $516f: $99
	dec  c                                           ; $5170: $0d
	db   $10                                         ; $5171: $10
	adc  l                                           ; $5172: $8d
	ld   l, l                                        ; $5173: $6d
	ld   d, d                                        ; $5174: $52
	ld   l, [hl]                                     ; $5175: $6e
	ld   e, c                                        ; $5176: $59
	sub  a                                           ; $5177: $97
	sbc  [hl]                                        ; $5178: $9e
	ld   h, c                                        ; $5179: $61
	ld   a, h                                        ; $517a: $7c
	inc  b                                           ; $517b: $04
	ld   a, d                                        ; $517c: $7a
	and  b                                           ; $517d: $a0
	dec  c                                           ; $517e: $0d
	db   $10                                         ; $517f: $10
	ld   [bc], a                                     ; $5180: $02
	ld   d, e                                        ; $5181: $53
	sbc  e                                           ; $5182: $9b
	ld   d, h                                        ; $5183: $54
	ld   bc, $0d04                                   ; $5184: $01 $04 $0d
	nop                                              ; $5187: $00
	ld   a, [bc]                                     ; $5188: $0a
	nop                                              ; $5189: $00
	nop                                              ; $518a: $00
	inc  bc                                          ; $518b: $03
	ld   c, a                                        ; $518c: $4f
	ld   [bc], a                                     ; $518d: $02
	nop                                              ; $518e: $00
	inc  bc                                          ; $518f: $03
	ld   c, c                                        ; $5190: $49
	add  hl, hl                                      ; $5191: $29
	add  hl, hl                                      ; $5192: $29
	ld   bc, $2201                                   ; $5193: $01 $01 $22
	nop                                              ; $5196: $00
	ld   c, $78                                      ; $5197: $0e $78
	inc  e                                           ; $5199: $1c
	ld   [bc], a                                     ; $519a: $02
	jr   nz, jr_05c_519d                             ; $519b: $20 $00

jr_05c_519d:
	ld   [bc], a                                     ; $519d: $02
	ld   bc, $9750                                   ; $519e: $01 $50 $97
	sbc  [hl]                                        ; $51a1: $9e
	ld   [$6300], sp                                 ; $51a2: $08 $00 $63
	and  c                                           ; $51a5: $a1
	sbc  a                                           ; $51a6: $9f
	dec  c                                           ; $51a7: $0d
	inc  bc                                          ; $51a8: $03
	ld   e, c                                        ; $51a9: $59
	ld   [bc], a                                     ; $51aa: $02
	ld   [hl-], a                                    ; $51ab: $32
	ld   a, h                                        ; $51ac: $7c
	inc  bc                                          ; $51ad: $03
	ld   l, l                                        ; $51ae: $6d
	dec  b                                           ; $51af: $05
	add  hl, de                                      ; $51b0: $19
	ld   a, c                                        ; $51b1: $79
	dec  c                                           ; $51b2: $0d
	ld   d, d                                        ; $51b3: $52
	sub  a                                           ; $51b4: $97
	ld   h, l                                        ; $51b5: $65
	ld   l, l                                        ; $51b6: $6d
	and  c                                           ; $51b7: $a1
	ld   [hl], l                                     ; $51b8: $75
	ld   h, a                                        ; $51b9: $67
	ld   a, h                                        ; $51ba: $7c
	ld   sp, hl                                      ; $51bb: $f9
	dec  c                                           ; $51bc: $0d
	nop                                              ; $51bd: $00
	ld   a, [bc]                                     ; $51be: $0a
	ld   bc, $546b                                   ; $51bf: $01 $6b $54
	ld   l, [hl]                                     ; $51c2: $6e
	sbc  l                                           ; $51c3: $9d
	sbc  a                                           ; $51c4: $9f
	ld   [$6300], sp                                 ; $51c5: $08 $00 $63
	and  c                                           ; $51c8: $a1
	ld   a, l                                        ; $51c9: $7d
	dec  c                                           ; $51ca: $0d
	ld   [hl], a                                     ; $51cb: $77
	sbc  d                                           ; $51cc: $9a
	ld   e, l                                        ; $51cd: $5d
	sub  a                                           ; $51ce: $97
	ld   d, d                                        ; $51cf: $52
	inc  bc                                          ; $51d0: $03
	ld   h, $a0                                      ; $51d1: $26 $a0
	inc  bc                                          ; $51d3: $03
	ld   b, c                                        ; $51d4: $41
	adc  a                                           ; $51d5: $8f
	ld   [hl], h                                     ; $51d6: $74
	ld   d, d                                        ; $51d7: $52
	sub  a                                           ; $51d8: $97
	dec  c                                           ; $51d9: $0d
	sbc  d                                           ; $51da: $9a
	sbc  c                                           ; $51db: $99
	ld   e, c                                        ; $51dc: $59
	sbc  [hl]                                        ; $51dd: $9e
	ld   [bc], a                                     ; $51de: $02
	sub  l                                           ; $51df: $95
	ld   l, c                                        ; $51e0: $69
	ld   [hl], h                                     ; $51e1: $74
	ld   e, l                                        ; $51e2: $5d
	ld   l, [hl]                                     ; $51e3: $6e
	ld   h, e                                        ; $51e4: $63
	ld   d, d                                        ; $51e5: $52
	ld   a, b                                        ; $51e6: $78
	sbc  a                                           ; $51e7: $9f
	dec  c                                           ; $51e8: $0d
	nop                                              ; $51e9: $00
	ld   a, [bc]                                     ; $51ea: $0a
	add  hl, de                                      ; $51eb: $19
	dec  b                                           ; $51ec: $05
	ld   [bc], a                                     ; $51ed: $02
	ld   a, l                                        ; $51ee: $7d
	ld   d, d                                        ; $51ef: $52
	nop                                              ; $51f0: $00
	nop                                              ; $51f1: $00
	ld   d, d                                        ; $51f2: $52
	ld   d, d                                        ; $51f3: $52
	ld   d, [hl]                                     ; $51f4: $56
	nop                                              ; $51f5: $00
	ld   bc, $fb07                                   ; $51f6: $01 $07 $fb
	nop                                              ; $51f9: $00
	ld   [bc], a                                     ; $51fa: $02
	inc  bc                                          ; $51fb: $03
	ld   bc, $2000                                   ; $51fc: $01 $00 $20
	nop                                              ; $51ff: $00
	rlca                                             ; $5200: $07
	ld   [hl], l                                     ; $5201: $75
	nop                                              ; $5202: $00
	ld   [bc], a                                     ; $5203: $02
	inc  bc                                          ; $5204: $03
	ld   bc, $2001                                   ; $5205: $01 $01 $20
	nop                                              ; $5208: $00
	ld   b, $b3                                      ; $5209: $06 $b3
	nop                                              ; $520b: $00
	rrca                                             ; $520c: $0f
	nop                                              ; $520d: $00
	ld   bc, $6701                                   ; $520e: $01 $01 $67
	adc  l                                           ; $5211: $8d
	adc  h                                           ; $5212: $8c
	ld   l, c                                        ; $5213: $69
	and  c                                           ; $5214: $a1
	sbc  a                                           ; $5215: $9f
	dec  c                                           ; $5216: $0d
	ld   [bc], a                                     ; $5217: $02
	and  l                                           ; $5218: $a5
	ld   l, a                                        ; $5219: $6f
	sub  l                                           ; $521a: $95
	ld   [hl], c                                     ; $521b: $71
	halt                                             ; $521c: $76
	inc  bc                                          ; $521d: $03
	ld   l, a                                        ; $521e: $6f
	ld   [bc], a                                     ; $521f: $02
	xor  c                                           ; $5220: $a9
	ld   e, d                                        ; $5221: $5a
	ld   a, b                                        ; $5222: $78
	ld   e, l                                        ; $5223: $5d
	ld   [hl], h                                     ; $5224: $74
	rst  $38                                         ; $5225: $ff
	dec  c                                           ; $5226: $0d
	nop                                              ; $5227: $00
	ld   a, [bc]                                     ; $5228: $0a
	inc  e                                           ; $5229: $1c
	ld   [bc], a                                     ; $522a: $02
	dec  h                                           ; $522b: $25
	dec  b                                           ; $522c: $05
	dec  e                                           ; $522d: $1d
	ld   b, b                                        ; $522e: $40
	ld   [de], a                                     ; $522f: $12
	inc  bc                                          ; $5230: $03
	ld   [de], a                                     ; $5231: $12
	ld   bc, $2901                                   ; $5232: $01 $01 $29
	nop                                              ; $5235: $00
	ld   bc, $546b                                   ; $5236: $01 $6b $54
	rst  $38                                         ; $5239: $ff
	rst  $38                                         ; $523a: $ff
	dec  c                                           ; $523b: $0d
	ld   a, b                                        ; $523c: $78
	sub  a                                           ; $523d: $97
	ld   h, l                                        ; $523e: $65
	ld   e, c                                        ; $523f: $59
	ld   l, l                                        ; $5240: $6d
	ld   a, b                                        ; $5241: $78
	ld   d, d                                        ; $5242: $52
	sbc  l                                           ; $5243: $9d
	ld   a, e                                        ; $5244: $7b
	sbc  a                                           ; $5245: $9f
	dec  c                                           ; $5246: $0d
	nop                                              ; $5247: $00
	ld   a, [bc]                                     ; $5248: $0a
	nop                                              ; $5249: $00
	inc  e                                           ; $524a: $1c
	ld   [bc], a                                     ; $524b: $02
	ld   [hl+], a                                    ; $524c: $22
	ld   [bc], a                                     ; $524d: $02
	dec  e                                           ; $524e: $1d
	ld   b, b                                        ; $524f: $40
	ld   [de], a                                     ; $5250: $12
	inc  bc                                          ; $5251: $03
	ld   [de], a                                     ; $5252: $12
	ld   bc, $2903                                   ; $5253: $01 $03 $29
	nop                                              ; $5256: $00
	ld   bc, $9704                                   ; $5257: $01 $04 $97
	ld   [bc], a                                     ; $525a: $02
	jp   Jump_05c_505a                               ; $525b: $c3 $5a $50


	sbc  b                                           ; $525e: $98
	adc  h                                           ; $525f: $8c
	ld   l, c                                        ; $5260: $69
	and  c                                           ; $5261: $a1
	sbc  l                                           ; $5262: $9d
	ld   a, e                                        ; $5263: $7b
	sbc  a                                           ; $5264: $9f
	dec  c                                           ; $5265: $0d
	sub  b                                           ; $5266: $90
	ld   d, h                                        ; $5267: $54
	ld   e, a                                        ; $5268: $5f
	ld   [hl], c                                     ; $5269: $71
	ld   h, c                                        ; $526a: $61
	ld   d, h                                        ; $526b: $54
	ld   [hl], l                                     ; $526c: $75
	ld   h, a                                        ; $526d: $67
	sbc  l                                           ; $526e: $9d
	sbc  a                                           ; $526f: $9f
	dec  c                                           ; $5270: $0d
	nop                                              ; $5271: $00
	ld   a, [bc]                                     ; $5272: $0a
	ld   bc, $6d03                                   ; $5273: $01 $03 $6d
	dec  b                                           ; $5276: $05
	add  hl, de                                      ; $5277: $19
	ld   a, h                                        ; $5278: $7c
	ld   h, [hl]                                     ; $5279: $66
	sub  c                                           ; $527a: $91
	adc  h                                           ; $527b: $8c
	ld   [hl], l                                     ; $527c: $75
	ld   h, a                                        ; $527d: $67
	ld   e, c                                        ; $527e: $59
	sub  a                                           ; $527f: $97
	dec  c                                           ; $5280: $0d
	ld   [hl], a                                     ; $5281: $77
	ld   h, c                                        ; $5282: $61
	ld   e, c                                        ; $5283: $59
	add  [hl]                                        ; $5284: $86
	ld   [bc], a                                     ; $5285: $02
	ld   a, a                                        ; $5286: $7f
	ld   [hl], c                                     ; $5287: $71
	ld   [hl], h                                     ; $5288: $74
	ld   [bc], a                                     ; $5289: $02
	inc  [hl]                                        ; $528a: $34
	ld   h, e                                        ; $528b: $63
	ld   d, d                                        ; $528c: $52
	sbc  a                                           ; $528d: $9f
	dec  c                                           ; $528e: $0d
	nop                                              ; $528f: $00
	ld   a, [bc]                                     ; $5290: $0a
	nop                                              ; $5291: $00
	dec  c                                           ; $5292: $0d
	nop                                              ; $5293: $00
	nop                                              ; $5294: $00
	rrca                                             ; $5295: $0f
	nop                                              ; $5296: $00
	ld   bc, $0b0c                                   ; $5297: $01 $0c $0b
	inc  e                                           ; $529a: $1c
	ld   [bc], a                                     ; $529b: $02
	jr   nz, jr_05c_529e                             ; $529c: $20 $00

jr_05c_529e:
	ld   bc, $7d75                                   ; $529e: $01 $75 $7d
	sbc  [hl]                                        ; $52a1: $9e
	dec  b                                           ; $52a2: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52a3: $cf
	adc  a                                           ; $52a4: $8f
	adc  h                                           ; $52a5: $8c
	ld   h, l                                        ; $52a6: $65
	sub  l                                           ; $52a7: $95
	ld   d, h                                        ; $52a8: $54
	ld   e, c                                        ; $52a9: $59
	sbc  a                                           ; $52aa: $9f
	dec  c                                           ; $52ab: $0d
	ld   h, [hl]                                     ; $52ac: $66
	sub  e                                           ; $52ad: $93
	and  c                                           ; $52ae: $a1
	add  c                                           ; $52af: $81
	ld   a, l                                        ; $52b0: $7d
	ld   d, d                                        ; $52b1: $52
	ld   d, d                                        ; $52b2: $52
	ld   [hl], l                                     ; $52b3: $75
	ld   h, a                                        ; $52b4: $67
	sbc  l                                           ; $52b5: $9d
	ld   a, e                                        ; $52b6: $7b
	sbc  a                                           ; $52b7: $9f
	dec  c                                           ; $52b8: $0d
	dec  b                                           ; $52b9: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ba: $cf
	adc  a                                           ; $52bb: $8f
	ld   a, [$000d]                                  ; $52bc: $fa $0d $00
	ld   a, [bc]                                     ; $52bf: $0a
	add  hl, de                                      ; $52c0: $19
	dec  b                                           ; $52c1: $05
	ld   bc, $5490                                   ; $52c2: $01 $90 $54
	sbc  [hl]                                        ; $52c5: $9e
	ld   [bc], a                                     ; $52c6: $02
	ld   [hl], d                                     ; $52c7: $72
	and  b                                           ; $52c8: $a0
	inc  bc                                          ; $52c9: $03
	ld   h, l                                        ; $52ca: $65
	ld   h, b                                        ; $52cb: $60
	sbc  c                                           ; $52cc: $99
	nop                                              ; $52cd: $00
	nop                                              ; $52ce: $00
	rlca                                             ; $52cf: $07
	ld   b, h                                        ; $52d0: $44
	ld   bc, $0302                                   ; $52d1: $01 $02 $03
	ld   bc, $2000                                   ; $52d4: $01 $00 $20
	nop                                              ; $52d7: $00
	ld   b, $9b                                      ; $52d8: $06 $9b
	ld   bc, $021c                                   ; $52da: $01 $1c $02
	daa                                              ; $52dd: $27
	rlca                                             ; $52de: $07
	dec  e                                           ; $52df: $1d
	ld   b, b                                        ; $52e0: $40
	ld   [de], a                                     ; $52e1: $12
	inc  bc                                          ; $52e2: $03
	ld   [de], a                                     ; $52e3: $12
	ld   bc, $2903                                   ; $52e4: $01 $03 $29
	nop                                              ; $52e7: $00
	ld   bc, $5490                                   ; $52e8: $01 $90 $54
	pop  bc                                          ; $52eb: $c1
	db   $e3                                         ; $52ec: $e3
	ld   a, b                                        ; $52ed: $78
	and  c                                           ; $52ee: $a1
	ld   [hl], l                                     ; $52ef: $75
	ld   h, a                                        ; $52f0: $67
	ld   a, h                                        ; $52f1: $7c
	ld   sp, hl                                      ; $52f2: $f9
	dec  c                                           ; $52f3: $0d
	ld   d, b                                        ; $52f4: $50
	sub  a                                           ; $52f5: $97
	sub  a                                           ; $52f6: $97
	rst  $38                                         ; $52f7: $ff
	rst  $38                                         ; $52f8: $ff
	dec  c                                           ; $52f9: $0d
	ld   a, b                                        ; $52fa: $78
	ld   h, e                                        ; $52fb: $63
	ld   e, a                                        ; $52fc: $5f
	ld   a, b                                        ; $52fd: $78
	ld   d, d                                        ; $52fe: $52
	ld   [hl], l                                     ; $52ff: $75
	ld   h, a                                        ; $5300: $67
	sbc  l                                           ; $5301: $9d
	ld   a, e                                        ; $5302: $7b
	db   $fc                                         ; $5303: $fc
	sbc  a                                           ; $5304: $9f
	dec  c                                           ; $5305: $0d
	nop                                              ; $5306: $00
	ld   a, [bc]                                     ; $5307: $0a
	ld   bc, $9e8c                                   ; $5308: $01 $8c $9e
	ld   [bc], a                                     ; $530b: $02
	pop  bc                                          ; $530c: $c1
	inc  b                                           ; $530d: $04
	rla                                              ; $530e: $17
	ld   h, l                                        ; $530f: $65
	ld   l, l                                        ; $5310: $6d
	sbc  l                                           ; $5311: $9d
	ld   l, l                                        ; $5312: $6d
	ld   e, l                                        ; $5313: $5d
	ld   h, l                                        ; $5314: $65
	ld   e, d                                        ; $5315: $5a
	dec  c                                           ; $5316: $0d
	pop  de                                          ; $5317: $d1
	xor  h                                           ; $5318: $ac
	ld   [hl], l                                     ; $5319: $75
	ld   h, l                                        ; $531a: $65
	ld   l, l                                        ; $531b: $6d
	sbc  l                                           ; $531c: $9d
	ld   a, e                                        ; $531d: $7b
	sbc  a                                           ; $531e: $9f
	dec  c                                           ; $531f: $0d
	inc  bc                                          ; $5320: $03
	add  e                                           ; $5321: $83
	dec  b                                           ; $5322: $05
	dec  c                                           ; $5323: $0d
	rst  $38                                         ; $5324: $ff
	rst  $38                                         ; $5325: $ff
	dec  c                                           ; $5326: $0d
	nop                                              ; $5327: $00
	ld   a, [bc]                                     ; $5328: $0a
	dec  c                                           ; $5329: $0d
	nop                                              ; $532a: $00
	nop                                              ; $532b: $00
	rrca                                             ; $532c: $0f
	nop                                              ; $532d: $00
	ld   bc, $1e09                                   ; $532e: $01 $09 $1e
	nop                                              ; $5331: $00
	rrca                                             ; $5332: $0f
	nop                                              ; $5333: $00
	ld   bc, $8c01                                   ; $5334: $01 $01 $8c
	ld   l, [hl]                                     ; $5337: $6e
	ld   d, d                                        ; $5338: $52
	ld   e, a                                        ; $5339: $5f
	sbc  c                                           ; $533a: $99
	ld   e, c                                        ; $533b: $59
	ld   a, b                                        ; $533c: $78
	rst  $38                                         ; $533d: $ff
	rst  $38                                         ; $533e: $ff
	dec  c                                           ; $533f: $0d
	nop                                              ; $5340: $00
	ld   a, [bc]                                     ; $5341: $0a
	add  hl, de                                      ; $5342: $19
	dec  b                                           ; $5343: $05
	ld   bc, $7202                                   ; $5344: $01 $02 $72
	and  b                                           ; $5347: $a0
	inc  bc                                          ; $5348: $03
	ld   h, l                                        ; $5349: $65
	ld   h, b                                        ; $534a: $60
	sbc  c                                           ; $534b: $99
	nop                                              ; $534c: $00
	nop                                              ; $534d: $00
	rlca                                             ; $534e: $07
	jp   $0201                                       ; $534f: $c3 $01 $02


	inc  bc                                          ; $5352: $03
	ld   bc, $2000                                   ; $5353: $01 $00 $20
	nop                                              ; $5356: $00
	ld   b, $20                                      ; $5357: $06 $20
	ld   [bc], a                                     ; $5359: $02
	inc  e                                           ; $535a: $1c
	ld   [bc], a                                     ; $535b: $02
	inc  hl                                          ; $535c: $23
	inc  bc                                          ; $535d: $03
	dec  e                                           ; $535e: $1d
	ld   b, b                                        ; $535f: $40
	ld   [de], a                                     ; $5360: $12
	inc  bc                                          ; $5361: $03
	ld   [de], a                                     ; $5362: $12
	ld   bc, $2901                                   ; $5363: $01 $01 $29
	nop                                              ; $5366: $00
	ld   bc, $9750                                   ; $5367: $01 $50 $97
	sbc  [hl]                                        ; $536a: $9e
	sub  b                                           ; $536b: $90
	ld   d, h                                        ; $536c: $54
	inc  bc                                          ; $536d: $03
	ld   a, [hl]                                     ; $536e: $7e
	sbc  l                                           ; $536f: $9d
	sbc  b                                           ; $5370: $98
	ld   [hl], l                                     ; $5371: $75
	ld   h, a                                        ; $5372: $67
	ld   a, h                                        ; $5373: $7c
	ld   sp, hl                                      ; $5374: $f9
	dec  c                                           ; $5375: $0d
	sub  b                                           ; $5376: $90
	ld   d, h                                        ; $5377: $54
	inc  bc                                          ; $5378: $03
	ld   l, h                                        ; $5379: $6c
	ld   h, l                                        ; $537a: $65
	sbc  [hl]                                        ; $537b: $9e
	ld   e, d                                        ; $537c: $5a
	and  c                                           ; $537d: $a1
	ld   a, [hl]                                     ; $537e: $7e
	sbc  d                                           ; $537f: $9a
	sbc  c                                           ; $5380: $99
	and  c                                           ; $5381: $a1
	ld   h, [hl]                                     ; $5382: $66
	sub  c                                           ; $5383: $91
	dec  c                                           ; $5384: $0d
	ld   d, b                                        ; $5385: $50
	sbc  b                                           ; $5386: $98
	adc  h                                           ; $5387: $8c
	ld   l, c                                        ; $5388: $69
	and  c                                           ; $5389: $a1
	ld   a, h                                        ; $538a: $7c
	ld   sp, hl                                      ; $538b: $f9
	dec  c                                           ; $538c: $0d
	nop                                              ; $538d: $00
	ld   a, [bc]                                     ; $538e: $0a
	inc  e                                           ; $538f: $1c
	ld   [bc], a                                     ; $5390: $02
	jr   nz, jr_05c_5393                             ; $5391: $20 $00

jr_05c_5393:
	ld   bc, $9e8c                                   ; $5393: $01 $8c $9e
	ld   d, b                                        ; $5396: $50
	ld   a, b                                        ; $5397: $78
	ld   l, l                                        ; $5398: $6d
	ld   a, h                                        ; $5399: $7c
	sub  d                                           ; $539a: $92
	sbc  c                                           ; $539b: $99
	ld   [bc], a                                     ; $539c: $02
	and  c                                           ; $539d: $a1
	ld   a, l                                        ; $539e: $7d
	dec  c                                           ; $539f: $0d
	ld   l, e                                        ; $53a0: $6b
	ld   a, h                                        ; $53a1: $7c
	ld   [hl], h                                     ; $53a2: $74
	ld   d, d                                        ; $53a3: $52
	ld   [hl], a                                     ; $53a4: $77
	ld   a, b                                        ; $53a5: $78
	ld   a, h                                        ; $53a6: $7c
	ld   [hl], l                                     ; $53a7: $75
	ld   h, a                                        ; $53a8: $67
	sbc  l                                           ; $53a9: $9d
	ld   a, e                                        ; $53aa: $7b
	sbc  a                                           ; $53ab: $9f
	dec  c                                           ; $53ac: $0d
	inc  bc                                          ; $53ad: $03
	add  e                                           ; $53ae: $83
	dec  b                                           ; $53af: $05
	dec  c                                           ; $53b0: $0d
	rst  $38                                         ; $53b1: $ff
	rst  $38                                         ; $53b2: $ff
	dec  c                                           ; $53b3: $0d
	nop                                              ; $53b4: $00
	ld   a, [bc]                                     ; $53b5: $0a
	nop                                              ; $53b6: $00
	rrca                                             ; $53b7: $0f
	nop                                              ; $53b8: $00
	ld   bc, $6e01                                   ; $53b9: $01 $01 $6e
	sbc  [hl]                                        ; $53bc: $9e
	ld   l, [hl]                                     ; $53bd: $6e
	ld   d, d                                        ; $53be: $52
	add  h                                           ; $53bf: $84
	ld   [bc], a                                     ; $53c0: $02
	sub  h                                           ; $53c1: $94
	ld   h, l                                        ; $53c2: $65
	ld   e, l                                        ; $53c3: $5d
	ld   a, b                                        ; $53c4: $78
	ld   [hl], c                                     ; $53c5: $71
	ld   [hl], h                                     ; $53c6: $74
	dec  c                                           ; $53c7: $0d
	ld   e, e                                        ; $53c8: $5b
	ld   l, l                                        ; $53c9: $6d
	ld   e, c                                        ; $53ca: $59
	ld   a, b                                        ; $53cb: $78
	rst  $38                                         ; $53cc: $ff
	rst  $38                                         ; $53cd: $ff
	dec  c                                           ; $53ce: $0d
	nop                                              ; $53cf: $00
	ld   a, [bc]                                     ; $53d0: $0a
	add  hl, de                                      ; $53d1: $19
	dec  b                                           ; $53d2: $05
	ld   bc, $9b6b                                   ; $53d3: $01 $6b $9b
	ld   l, e                                        ; $53d6: $6b
	sbc  e                                           ; $53d7: $9b
	sbc  [hl]                                        ; $53d8: $9e
	ld   [bc], a                                     ; $53d9: $02
	ld   [hl], d                                     ; $53da: $72
	and  b                                           ; $53db: $a0
	inc  bc                                          ; $53dc: $03
	ld   h, l                                        ; $53dd: $65
	ld   h, b                                        ; $53de: $60
	sbc  c                                           ; $53df: $99
	nop                                              ; $53e0: $00
	nop                                              ; $53e1: $00
	rlca                                             ; $53e2: $07
	ld   d, a                                        ; $53e3: $57
	ld   [bc], a                                     ; $53e4: $02
	ld   [bc], a                                     ; $53e5: $02
	inc  bc                                          ; $53e6: $03
	ld   bc, $2000                                   ; $53e7: $01 $00 $20
	nop                                              ; $53ea: $00
	ld   b, $ad                                      ; $53eb: $06 $ad
	ld   [bc], a                                     ; $53ed: $02
	inc  e                                           ; $53ee: $1c
	ld   [bc], a                                     ; $53ef: $02
	ld   hl, $1d01                                   ; $53f0: $21 $01 $1d
	ld   b, b                                        ; $53f3: $40
	ld   [de], a                                     ; $53f4: $12
	inc  bc                                          ; $53f5: $03
	ld   [de], a                                     ; $53f6: $12
	ld   bc, $2802                                   ; $53f7: $01 $02 $28
	nop                                              ; $53fa: $00
	ld   bc, $5978                                   ; $53fb: $01 $78 $59
	ld   a, b                                        ; $53fe: $78
	ld   e, c                                        ; $53ff: $59
	sub  d                                           ; $5400: $92
	sbc  b                                           ; $5401: $98
	adc  h                                           ; $5402: $8c
	ld   h, a                                        ; $5403: $67
	sbc  l                                           ; $5404: $9d
	ld   a, e                                        ; $5405: $7b
	sbc  a                                           ; $5406: $9f
	dec  c                                           ; $5407: $0d
	ld   [$6300], sp                                 ; $5408: $08 $00 $63
	and  c                                           ; $540b: $a1
	sbc  a                                           ; $540c: $9f
	dec  c                                           ; $540d: $0d
	adc  h                                           ; $540e: $8c
	ld   l, b                                        ; $540f: $68
	adc  h                                           ; $5410: $8c
	ld   l, b                                        ; $5411: $68
	ld   [hl], l                                     ; $5412: $75
	ld   h, a                                        ; $5413: $67
	sbc  l                                           ; $5414: $9d
	sbc  a                                           ; $5415: $9f
	dec  c                                           ; $5416: $0d
	nop                                              ; $5417: $00
	ld   a, [bc]                                     ; $5418: $0a
	ld   bc, $9a6b                                   ; $5419: $01 $6b $9a
	ld   [hl], l                                     ; $541c: $75
	ld   a, l                                        ; $541d: $7d
	sbc  [hl]                                        ; $541e: $9e
	sbc  l                                           ; $541f: $9d
	ld   l, l                                        ; $5420: $6d
	ld   e, l                                        ; $5421: $5d
	ld   h, l                                        ; $5422: $65
	dec  c                                           ; $5423: $0d
	sub  b                                           ; $5424: $90
	ld   d, h                                        ; $5425: $54
	inc  bc                                          ; $5426: $03
	ld   l, h                                        ; $5427: $6c
	ld   h, l                                        ; $5428: $65
	ld   [bc], a                                     ; $5429: $02
	ld   [hl-], a                                    ; $542a: $32
	ld   e, h                                        ; $542b: $5c
	adc  h                                           ; $542c: $8c
	ld   h, a                                        ; $542d: $67
	ld   e, c                                        ; $542e: $59
	sub  a                                           ; $542f: $97
	sbc  a                                           ; $5430: $9f
	dec  c                                           ; $5431: $0d
	inc  bc                                          ; $5432: $03
	add  e                                           ; $5433: $83
	dec  b                                           ; $5434: $05
	dec  c                                           ; $5435: $0d
	rst  $38                                         ; $5436: $ff
	rst  $38                                         ; $5437: $ff
	dec  c                                           ; $5438: $0d
	nop                                              ; $5439: $00
	ld   a, [bc]                                     ; $543a: $0a
	dec  c                                           ; $543b: $0d
	nop                                              ; $543c: $00
	nop                                              ; $543d: $00
	rrca                                             ; $543e: $0f
	nop                                              ; $543f: $00
	ld   bc, $1e09                                   ; $5440: $01 $09 $1e
	nop                                              ; $5443: $00
	inc  e                                           ; $5444: $1c
	ld   [bc], a                                     ; $5445: $02
	inc  hl                                          ; $5446: $23
	inc  bc                                          ; $5447: $03
	ld   bc, $0008                                   ; $5448: $01 $08 $00
	ld   h, e                                        ; $544b: $63
	and  c                                           ; $544c: $a1
	rst  $38                                         ; $544d: $ff
	rst  $38                                         ; $544e: $ff
	rst  $38                                         ; $544f: $ff
	rst  $38                                         ; $5450: $ff
	dec  c                                           ; $5451: $0d
	ld   [$6300], sp                                 ; $5452: $08 $00 $63
	and  c                                           ; $5455: $a1
	ld   a, [$000d]                                  ; $5456: $fa $0d $00
	ld   a, [bc]                                     ; $5459: $0a
	dec  c                                           ; $545a: $0d
	nop                                              ; $545b: $00
	nop                                              ; $545c: $00
	rrca                                             ; $545d: $0f
	nop                                              ; $545e: $00
	ld   bc, $020c                                   ; $545f: $01 $0c $02
	ld   c, $03                                      ; $5462: $0e $03
	add  hl, bc                                      ; $5464: $09
	ld   e, $0f                                      ; $5465: $1e $0f
	ld   [bc], a                                     ; $5467: $02
	dec  b                                           ; $5468: $05
	ld   bc, $0008                                   ; $5469: $01 $08 $00
	ld   h, e                                        ; $546c: $63
	and  c                                           ; $546d: $a1
	sbc  a                                           ; $546e: $9f
	dec  c                                           ; $546f: $0d
	ld   h, l                                        ; $5470: $65
	ld   [hl], c                                     ; $5471: $71
	ld   e, c                                        ; $5472: $59
	sbc  b                                           ; $5473: $98
	ld   h, l                                        ; $5474: $65
	ld   [hl], h                                     ; $5475: $74
	ld   l, a                                        ; $5476: $6f
	sub  l                                           ; $5477: $95
	ld   d, h                                        ; $5478: $54
	ld   l, [hl]                                     ; $5479: $6e
	ld   d, d                                        ; $547a: $52
	sbc  a                                           ; $547b: $9f
	dec  c                                           ; $547c: $0d
	ld   [$6300], sp                                 ; $547d: $08 $00 $63
	and  c                                           ; $5480: $a1
	sbc  a                                           ; $5481: $9f
	dec  c                                           ; $5482: $0d
	nop                                              ; $5483: $00
	ld   a, [bc]                                     ; $5484: $0a
	inc  c                                           ; $5485: $0c
	inc  c                                           ; $5486: $0c
	ld   c, $78                                      ; $5487: $0e $78
	rrca                                             ; $5489: $0f
	nop                                              ; $548a: $00
	ld   bc, $020d                                   ; $548b: $01 $0d $02
	dec  h                                           ; $548e: $25
	ld   bc, $9e54                                   ; $548f: $01 $54 $9e
	ld   d, h                                        ; $5492: $54
	db   $fc                                         ; $5493: $fc
	and  c                                           ; $5494: $a1
	rst  $38                                         ; $5495: $ff
	rst  $38                                         ; $5496: $ff
	dec  c                                           ; $5497: $0d
	nop                                              ; $5498: $00
	ld   a, [bc]                                     ; $5499: $0a
	inc  e                                           ; $549a: $1c
	ld   [bc], a                                     ; $549b: $02
	dec  h                                           ; $549c: $25
	dec  b                                           ; $549d: $05
	ld   bc, $5490                                   ; $549e: $01 $90 $54
	sbc  [hl]                                        ; $54a1: $9e
	ld   [$6300], sp                                 ; $54a2: $08 $00 $63
	and  c                                           ; $54a5: $a1
	ld   l, l                                        ; $54a6: $6d
	sub  a                                           ; $54a7: $97
	sbc  a                                           ; $54a8: $9f
	dec  c                                           ; $54a9: $0d
	ld   [bc], a                                     ; $54aa: $02
	and  c                                           ; $54ab: $a1
	and  b                                           ; $54ac: $a0
	inc  bc                                          ; $54ad: $03
	add  e                                           ; $54ae: $83
	ld   d, h                                        ; $54af: $54
	adc  h                                           ; $54b0: $8c
	ld   [hl], l                                     ; $54b1: $75
	sub  d                                           ; $54b2: $92
	sbc  c                                           ; $54b3: $99
	ld   h, c                                        ; $54b4: $61
	halt                                             ; $54b5: $76
	dec  c                                           ; $54b6: $0d
	ld   a, b                                        ; $54b7: $78
	ld   d, d                                        ; $54b8: $52
	and  c                                           ; $54b9: $a1
	ld   h, [hl]                                     ; $54ba: $66
	sub  c                                           ; $54bb: $91
	ld   d, b                                        ; $54bc: $50
	sbc  b                                           ; $54bd: $98
	adc  h                                           ; $54be: $8c
	ld   l, c                                        ; $54bf: $69
	and  c                                           ; $54c0: $a1
	ld   e, c                                        ; $54c1: $59
	sbc  a                                           ; $54c2: $9f
	dec  c                                           ; $54c3: $0d
	nop                                              ; $54c4: $00
	ld   a, [bc]                                     ; $54c5: $0a
	inc  e                                           ; $54c6: $1c
	ld   [bc], a                                     ; $54c7: $02
	ld   [hl+], a                                    ; $54c8: $22
	ld   [bc], a                                     ; $54c9: $02
	dec  e                                           ; $54ca: $1d
	ld   b, b                                        ; $54cb: $40
	ld   [de], a                                     ; $54cc: $12
	inc  bc                                          ; $54cd: $03
	ld   [de], a                                     ; $54ce: $12
	ld   bc, $2902                                   ; $54cf: $01 $02 $29
	nop                                              ; $54d2: $00
	ld   bc, $9403                                   ; $54d3: $01 $03 $94
	inc  b                                           ; $54d6: $04
	sbc  [hl]                                        ; $54d7: $9e
	ld   a, h                                        ; $54d8: $7c
	ld   h, b                                        ; $54d9: $60
	and  c                                           ; $54da: $a1
	ld   e, c                                        ; $54db: $59
	ld   d, d                                        ; $54dc: $52
	sub  b                                           ; $54dd: $90
	inc  b                                           ; $54de: $04
	sbc  [hl]                                        ; $54df: $9e
	ld   e, c                                        ; $54e0: $59
	sub  a                                           ; $54e1: $97
	ld   a, b                                        ; $54e2: $78
	ld   d, d                                        ; $54e3: $52
	dec  c                                           ; $54e4: $0d
	sub  [hl]                                        ; $54e5: $96
	ld   d, h                                        ; $54e6: $54
	ld   h, [hl]                                     ; $54e7: $66
	sub  c                                           ; $54e8: $91
	pop  bc                                          ; $54e9: $c1
	db   $e3                                         ; $54ea: $e3
	ld   [hl], l                                     ; $54eb: $75
	ld   h, a                                        ; $54ec: $67
	sbc  l                                           ; $54ed: $9d
	sub  [hl]                                        ; $54ee: $96
	sbc  a                                           ; $54ef: $9f
	dec  c                                           ; $54f0: $0d
	nop                                              ; $54f1: $00
	ld   a, [bc]                                     ; $54f2: $0a
	inc  e                                           ; $54f3: $1c
	ld   [bc], a                                     ; $54f4: $02
	jr   nz, jr_05c_54f7                             ; $54f5: $20 $00

jr_05c_54f7:
	ld   bc, $9a61                                   ; $54f7: $01 $61 $9a
	ld   e, c                                        ; $54fa: $59
	sub  a                                           ; $54fb: $97
	ld   a, l                                        ; $54fc: $7d
	ld   [bc], a                                     ; $54fd: $02
	and  c                                           ; $54fe: $a1
	and  b                                           ; $54ff: $a0
	ld   [hl], d                                     ; $5500: $72
	ld   e, a                                        ; $5501: $5f
	ld   a, b                                        ; $5502: $78
	ld   h, e                                        ; $5503: $63
	ld   d, d                                        ; $5504: $52
	sbc  a                                           ; $5505: $9f
	dec  c                                           ; $5506: $0d
	ld   h, [hl]                                     ; $5507: $66
	sub  c                                           ; $5508: $91
	sbc  [hl]                                        ; $5509: $9e
	inc  bc                                          ; $550a: $03
	add  e                                           ; $550b: $83
	dec  b                                           ; $550c: $05
	dec  c                                           ; $550d: $0d
	sbc  a                                           ; $550e: $9f
	dec  c                                           ; $550f: $0d
	nop                                              ; $5510: $00
	ld   a, [bc]                                     ; $5511: $0a
	dec  c                                           ; $5512: $0d
	nop                                              ; $5513: $00
	nop                                              ; $5514: $00
	rrca                                             ; $5515: $0f
	nop                                              ; $5516: $00
	ld   bc, $1e09                                   ; $5517: $01 $09 $1e
	nop                                              ; $551a: $00
	nop                                              ; $551b: $00
	inc  e                                           ; $551c: $1c
	ld   bc, $0000                                   ; $551d: $01 $00 $00
	ld   [bc], a                                     ; $5520: $02
	ld   bc, $9e50                                   ; $5521: $01 $50 $9e
	ld   [$6300], sp                                 ; $5524: $08 $00 $63
	and  c                                           ; $5527: $a1
	sbc  a                                           ; $5528: $9f
	dec  c                                           ; $5529: $0d
	ld   l, a                                        ; $552a: $6f
	sub  l                                           ; $552b: $95
	ld   d, h                                        ; $552c: $54
	ld   [hl], a                                     ; $552d: $77
	ld   d, d                                        ; $552e: $52
	ld   d, d                                        ; $552f: $52
	halt                                             ; $5530: $76
	ld   h, c                                        ; $5531: $61
	sbc  e                                           ; $5532: $9b
	ld   a, c                                        ; $5533: $79
	rst  $38                                         ; $5534: $ff
	rst  $38                                         ; $5535: $ff
	dec  c                                           ; $5536: $0d
	nop                                              ; $5537: $00
	ld   a, [bc]                                     ; $5538: $0a
	inc  e                                           ; $5539: $1c
	ld   bc, $0101                                   ; $553a: $01 $01 $01
	ld   bc, $a502                                   ; $553d: $01 $02 $a5
	sbc  [hl]                                        ; $5540: $9e
	inc  bc                                          ; $5541: $03
	ld   [hl], l                                     ; $5542: $75
	dec  b                                           ; $5543: $05
	ld   de, $bac7                                   ; $5544: $11 $c7 $ba
	ret                                              ; $5547: $c9


	ld   e, d                                        ; $5548: $5a
	dec  c                                           ; $5549: $0d
	ld   a, l                                        ; $554a: $7d
	sub  d                                           ; $554b: $92
	ld   [hl], c                                     ; $554c: $71
	ld   [hl], h                                     ; $554d: $74
	sbc  c                                           ; $554e: $99
	and  c                                           ; $554f: $a1
	ld   [hl], l                                     ; $5550: $75
	ld   h, a                                        ; $5551: $67
	ld   e, a                                        ; $5552: $5f
	ld   [hl], a                                     ; $5553: $77
	sbc  [hl]                                        ; $5554: $9e
	dec  c                                           ; $5555: $0d
	ld   l, a                                        ; $5556: $6f
	sub  l                                           ; $5557: $95
	ld   [hl], c                                     ; $5558: $71
	halt                                             ; $5559: $76
	sub  d                                           ; $555a: $92
	ld   [hl], c                                     ; $555b: $71
	ld   [hl], h                                     ; $555c: $74
	adc  l                                           ; $555d: $8d
	adc  h                                           ; $555e: $8c
	ld   l, c                                        ; $555f: $69
	and  c                                           ; $5560: $a1
	ld   e, c                                        ; $5561: $59
	ld   sp, hl                                      ; $5562: $f9
	dec  c                                           ; $5563: $0d
	nop                                              ; $5564: $00
	ld   a, [bc]                                     ; $5565: $0a
	add  hl, de                                      ; $5566: $19
	dec  b                                           ; $5567: $05
	ld   [bc], a                                     ; $5568: $02
	sub  d                                           ; $5569: $92
	sbc  c                                           ; $556a: $99
	nop                                              ; $556b: $00
	nop                                              ; $556c: $00
	sub  d                                           ; $556d: $92
	sub  a                                           ; $556e: $97
	ld   a, b                                        ; $556f: $78
	ld   d, d                                        ; $5570: $52
	nop                                              ; $5571: $00
	ld   bc, $e107                                   ; $5572: $01 $07 $e1
	nop                                              ; $5575: $00
	ld   [bc], a                                     ; $5576: $02
	inc  bc                                          ; $5577: $03
	ld   bc, $2000                                   ; $5578: $01 $00 $20
	nop                                              ; $557b: $00
	rlca                                             ; $557c: $07
	ld   l, h                                        ; $557d: $6c
	nop                                              ; $557e: $00
	ld   [bc], a                                     ; $557f: $02
	inc  bc                                          ; $5580: $03
	ld   bc, $2001                                   ; $5581: $01 $01 $20
	nop                                              ; $5584: $00
	ld   b, $a9                                      ; $5585: $06 $a9
	nop                                              ; $5587: $00
	rrca                                             ; $5588: $0f
	nop                                              ; $5589: $00
	ld   bc, $5201                                   ; $558a: $01 $01 $52
	ld   d, [hl]                                     ; $558d: $56
	rst  $38                                         ; $558e: $ff
	rst  $38                                         ; $558f: $ff
	ld   [bc], a                                     ; $5590: $02
	and  l                                           ; $5591: $a5
	ld   d, d                                        ; $5592: $52
	ld   l, e                                        ; $5593: $6b
	ld   e, d                                        ; $5594: $5a
	ld   h, l                                        ; $5595: $65
	ld   d, d                                        ; $5596: $52
	ld   a, h                                        ; $5597: $7c
	ld   [hl], l                                     ; $5598: $75
	sbc  a                                           ; $5599: $9f
	dec  c                                           ; $559a: $0d
	nop                                              ; $559b: $00
	ld   a, [bc]                                     ; $559c: $0a
	inc  e                                           ; $559d: $1c
	ld   bc, $0000                                   ; $559e: $01 $00 $00
	ld   bc, $546b                                   ; $55a1: $01 $6b $54
	ld   [hl], l                                     ; $55a4: $75
	ld   h, a                                        ; $55a5: $67
	ld   e, c                                        ; $55a6: $59
	sbc  a                                           ; $55a7: $9f
	dec  c                                           ; $55a8: $0d
	ld   h, [hl]                                     ; $55a9: $66
	sub  c                                           ; $55aa: $91
	sbc  [hl]                                        ; $55ab: $9e
	adc  h                                           ; $55ac: $8c
	ld   l, l                                        ; $55ad: $6d
	ld   [bc], a                                     ; $55ae: $02
	and  l                                           ; $55af: $a5
	inc  b                                           ; $55b0: $04
	add  hl, hl                                      ; $55b1: $29
	ld   a, c                                        ; $55b2: $79
	ld   h, l                                        ; $55b3: $65
	adc  h                                           ; $55b4: $8c
	ld   h, l                                        ; $55b5: $65
	sub  l                                           ; $55b6: $95
	ld   d, h                                        ; $55b7: $54
	sbc  a                                           ; $55b8: $9f
	dec  c                                           ; $55b9: $0d
	nop                                              ; $55ba: $00
	ld   a, [bc]                                     ; $55bb: $0a
	dec  c                                           ; $55bc: $0d
	nop                                              ; $55bd: $00
	nop                                              ; $55be: $00
	rrca                                             ; $55bf: $0f
	nop                                              ; $55c0: $00
	ld   bc, $1e09                                   ; $55c1: $01 $09 $1e
	nop                                              ; $55c4: $00
	inc  e                                           ; $55c5: $1c
	ld   bc, $0000                                   ; $55c6: $01 $00 $00
	ld   bc, $a16b                                   ; $55c9: $01 $6b $a1
	ld   a, b                                        ; $55cc: $78
	ld   a, c                                        ; $55cd: $79
	ld   a, b                                        ; $55ce: $78
	sub  d                                           ; $55cf: $92
	adc  h                                           ; $55d0: $8c
	ld   a, b                                        ; $55d1: $78
	ld   d, d                                        ; $55d2: $52
	ld   [hl], l                                     ; $55d3: $75
	ld   [bc], a                                     ; $55d4: $02
	inc  [hl]                                        ; $55d5: $34
	ld   h, e                                        ; $55d6: $63
	ld   d, d                                        ; $55d7: $52
	sbc  a                                           ; $55d8: $9f
	dec  c                                           ; $55d9: $0d
	ld   d, d                                        ; $55da: $52
	ld   l, e                                        ; $55db: $6b
	ld   e, d                                        ; $55dc: $5a
	ld   h, l                                        ; $55dd: $65
	ld   d, d                                        ; $55de: $52
	ld   a, b                                        ; $55df: $78
	sub  a                                           ; $55e0: $97
	sbc  [hl]                                        ; $55e1: $9e
	adc  h                                           ; $55e2: $8c
	ld   l, l                                        ; $55e3: $6d
	ld   [bc], a                                     ; $55e4: $02
	and  l                                           ; $55e5: $a5
	inc  b                                           ; $55e6: $04
	add  hl, hl                                      ; $55e7: $29
	halt                                             ; $55e8: $76
	dec  c                                           ; $55e9: $0d
	ld   d, d                                        ; $55ea: $52
	ld   d, h                                        ; $55eb: $54
	ld   h, c                                        ; $55ec: $61
	halt                                             ; $55ed: $76
	ld   [hl], l                                     ; $55ee: $75
	rst  $38                                         ; $55ef: $ff
	rst  $38                                         ; $55f0: $ff
	dec  c                                           ; $55f1: $0d
	nop                                              ; $55f2: $00
	ld   a, [bc]                                     ; $55f3: $0a
	dec  c                                           ; $55f4: $0d
	nop                                              ; $55f5: $00
	nop                                              ; $55f6: $00
	rrca                                             ; $55f7: $0f
	nop                                              ; $55f8: $00
	ld   bc, $1e09                                   ; $55f9: $01 $09 $1e
	nop                                              ; $55fc: $00
	rrca                                             ; $55fd: $0f
	nop                                              ; $55fe: $00
	ld   bc, $0401                                   ; $55ff: $01 $01 $04
	ret  c                                           ; $5602: $d8

	inc  b                                           ; $5603: $04
	xor  h                                           ; $5604: $ac
	ld   l, e                                        ; $5605: $6b
	ld   d, h                                        ; $5606: $54
	ld   [hl], l                                     ; $5607: $75
	ld   h, a                                        ; $5608: $67
	ld   a, e                                        ; $5609: $7b
	rst  $38                                         ; $560a: $ff
	rst  $38                                         ; $560b: $ff
	dec  c                                           ; $560c: $0d
	sub  d                                           ; $560d: $92
	ld   [hl], c                                     ; $560e: $71
	ld   [hl], h                                     ; $560f: $74
	adc  l                                           ; $5610: $8d
	adc  h                                           ; $5611: $8c
	ld   h, a                                        ; $5612: $67
	sbc  a                                           ; $5613: $9f
	dec  c                                           ; $5614: $0d
	nop                                              ; $5615: $00
	ld   a, [bc]                                     ; $5616: $0a
	inc  e                                           ; $5617: $1c
	ld   bc, $0000                                   ; $5618: $01 $00 $00
	ld   bc, $9166                                   ; $561b: $01 $66 $91
	sbc  [hl]                                        ; $561e: $9e
	ld   d, d                                        ; $561f: $52
	ld   e, e                                        ; $5620: $5b
	adc  h                                           ; $5621: $8c
	ld   h, a                                        ; $5622: $67
	sub  [hl]                                        ; $5623: $96
	rst  $38                                         ; $5624: $ff
	rst  $38                                         ; $5625: $ff
	dec  c                                           ; $5626: $0d
	nop                                              ; $5627: $00
	ld   a, [bc]                                     ; $5628: $0a
	ld   bc, $a502                                   ; $5629: $01 $02 $a5
	ld   d, b                                        ; $562c: $50
	ld   a, b                                        ; $562d: $78
	ld   l, l                                        ; $562e: $6d
	ld   a, l                                        ; $562f: $7d
	inc  bc                                          ; $5630: $03
	rrca                                             ; $5631: $0f
	ld   [bc], a                                     ; $5632: $02
	and  c                                           ; $5633: $a1
	inc  bc                                          ; $5634: $03
	sub  h                                           ; $5635: $94
	inc  b                                           ; $5636: $04
	dec  de                                          ; $5637: $1b
	inc  bc                                          ; $5638: $03
	sub  l                                           ; $5639: $95
	and  b                                           ; $563a: $a0
	dec  c                                           ; $563b: $0d
	ld   [bc], a                                     ; $563c: $02
	jr   nc, jr_05c_5643                             ; $563d: $30 $04

	inc  sp                                          ; $563f: $33
	ld   h, l                                        ; $5640: $65
	ld   [hl], h                                     ; $5641: $74
	ld   d, d                                        ; $5642: $52

jr_05c_5643:
	adc  h                                           ; $5643: $8c
	ld   h, a                                        ; $5644: $67
	sbc  a                                           ; $5645: $9f
	dec  c                                           ; $5646: $0d
	nop                                              ; $5647: $00
	ld   a, [bc]                                     ; $5648: $0a
	ld   bc, $9967                                   ; $5649: $01 $67 $99
	halt                                             ; $564c: $76
	inc  b                                           ; $564d: $04
	call nc, $037c                                   ; $564e: $d4 $7c $03
	ld   c, a                                        ; $5651: $4f
	ld   a, c                                        ; $5652: $79
	ret                                              ; $5653: $c9


	push af                                          ; $5654: $f5
	adc  $ed                                         ; $5655: $ce $ed
	ld   e, d                                        ; $5657: $5a
	dec  c                                           ; $5658: $0d
	ld   [bc], a                                     ; $5659: $02
	sub  l                                           ; $565a: $95
	ld   d, [hl]                                     ; $565b: $56
	ld   [hl], h                                     ; $565c: $74
	ld   e, e                                        ; $565d: $5b
	adc  h                                           ; $565e: $8c
	ld   h, l                                        ; $565f: $65
	ld   l, l                                        ; $5660: $6d
	rst  $38                                         ; $5661: $ff
	rst  $38                                         ; $5662: $ff
	dec  c                                           ; $5663: $0d
	nop                                              ; $5664: $00
	ld   a, [bc]                                     ; $5665: $0a
	ld   bc, $7c61                                   ; $5666: $01 $61 $7c
	inc  bc                                          ; $5669: $03
	ld   l, a                                        ; $566a: $6f
	sbc  [hl]                                        ; $566b: $9e
	ld   d, b                                        ; $566c: $50
	ld   a, b                                        ; $566d: $78
	ld   l, l                                        ; $566e: $6d
	ld   a, l                                        ; $566f: $7d
	ret                                              ; $5670: $c9


	push af                                          ; $5671: $f5
	adc  $ed                                         ; $5672: $ce $ed
	ld   a, h                                        ; $5674: $7c
	dec  c                                           ; $5675: $0d
	ld   [bc], a                                     ; $5676: $02
	jp   nc, $5461                                   ; $5677: $d2 $61 $54

	ld   a, c                                        ; $567a: $79
	inc  b                                           ; $567b: $04
	ld   c, c                                        ; $567c: $49
	and  b                                           ; $567d: $a0
	ld   l, e                                        ; $567e: $6b
	ld   d, h                                        ; $567f: $54
	ld   l, h                                        ; $5680: $6c
	ld   d, h                                        ; $5681: $54
	dec  c                                           ; $5682: $0d
	ld   h, l                                        ; $5683: $65
	adc  h                                           ; $5684: $8c
	ld   h, a                                        ; $5685: $67
	ld   e, c                                        ; $5686: $59
	ld   sp, hl                                      ; $5687: $f9
	dec  c                                           ; $5688: $0d
	nop                                              ; $5689: $00
	ld   a, [bc]                                     ; $568a: $0a
	jr   jr_05c_5690                                 ; $568b: $18 $03

	nop                                              ; $568d: $00
	add  b                                           ; $568e: $80
	sbc  e                                           ; $568f: $9b

jr_05c_5690:
	ld   e, d                                        ; $5690: $5a
	sbc  c                                           ; $5691: $99
	ld   [bc], a                                     ; $5692: $02
	add  l                                           ; $5693: $85
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	inc  bc                                          ; $5696: $03
	inc  bc                                          ; $5697: $03
	ld   [bc], a                                     ; $5698: $02
	ld   h, c                                        ; $5699: $61
	inc  bc                                          ; $569a: $03
	dec  bc                                          ; $569b: $0b
	nop                                              ; $569c: $00
	ld   bc, $af03                                   ; $569d: $01 $03 $af
	ld   h, e                                        ; $56a0: $63
	ld   a, b                                        ; $56a1: $78
	dec  b                                           ; $56a2: $05
	sbc  $00                                         ; $56a3: $de $00
	ld   [bc], a                                     ; $56a5: $02
	rlca                                             ; $56a6: $07
	and  l                                           ; $56a7: $a5
	ld   bc, $0202                                   ; $56a8: $01 $02 $02
	ld   bc, $2000                                   ; $56ab: $01 $00 $20
	nop                                              ; $56ae: $00
	rlca                                             ; $56af: $07
	ld   b, $02                                      ; $56b0: $06 $02
	ld   [bc], a                                     ; $56b2: $02
	ld   [bc], a                                     ; $56b3: $02
	ld   bc, $2001                                   ; $56b4: $01 $01 $20
	nop                                              ; $56b7: $00
	rlca                                             ; $56b8: $07
	ld   h, h                                        ; $56b9: $64
	ld   [bc], a                                     ; $56ba: $02
	ld   [bc], a                                     ; $56bb: $02
	ld   [bc], a                                     ; $56bc: $02
	ld   bc, $2002                                   ; $56bd: $01 $02 $20
	nop                                              ; $56c0: $00
	rrca                                             ; $56c1: $0f
	nop                                              ; $56c2: $00
	ld   bc, $8001                                   ; $56c3: $01 $01 $80
	sbc  e                                           ; $56c6: $9b
	ld   e, d                                        ; $56c7: $5a
	sbc  c                                           ; $56c8: $99
	ld   [bc], a                                     ; $56c9: $02
	add  l                                           ; $56ca: $85
	ld   [hl], l                                     ; $56cb: $75
	ld   h, a                                        ; $56cc: $67
	ld   e, c                                        ; $56cd: $59
	ld   a, e                                        ; $56ce: $7b
	rst  $38                                         ; $56cf: $ff
	rst  $38                                         ; $56d0: $ff
	dec  c                                           ; $56d1: $0d
	nop                                              ; $56d2: $00
	ld   a, [bc]                                     ; $56d3: $0a
	inc  e                                           ; $56d4: $1c
	ld   bc, $0000                                   ; $56d5: $01 $00 $00
	ld   bc, $a16b                                   ; $56d8: $01 $6b $a1
	ld   a, b                                        ; $56db: $78
	ld   d, b                                        ; $56dc: $50
	ld   a, b                                        ; $56dd: $78
	ld   l, l                                        ; $56de: $6d
	ld   a, l                                        ; $56df: $7d
	sbc  [hl]                                        ; $56e0: $9e
	sub  [hl]                                        ; $56e1: $96
	ld   d, d                                        ; $56e2: $52
	dec  b                                           ; $56e3: $05
	ld   [hl], h                                     ; $56e4: $74
	ld   h, l                                        ; $56e5: $65
	ld   a, h                                        ; $56e6: $7c
	dec  c                                           ; $56e7: $0d
	ld   e, b                                        ; $56e8: $58
	ld   [bc], a                                     ; $56e9: $02
	dec  sp                                          ; $56ea: $3b
	ld   a, l                                        ; $56eb: $7d
	inc  bc                                          ; $56ec: $03
	and  b                                           ; $56ed: $a0
	ld   l, l                                        ; $56ee: $6d
	ld   a, b                                        ; $56ef: $78
	ld   d, d                                        ; $56f0: $52
	ret  nz                                          ; $56f1: $c0

	and  l                                           ; $56f2: $a5
	ret  c                                           ; $56f3: $d8

	ld   [hl], l                                     ; $56f4: $75
	ld   h, a                                        ; $56f5: $67
	sbc  a                                           ; $56f6: $9f
	dec  c                                           ; $56f7: $0d
	nop                                              ; $56f8: $00
	ld   a, [bc]                                     ; $56f9: $0a
	inc  e                                           ; $56fa: $1c
	ld   bc, $0101                                   ; $56fb: $01 $01 $01
	dec  e                                           ; $56fe: $1d
	ld   b, b                                        ; $56ff: $40
	ld   de, $1103                                   ; $5700: $11 $03 $11
	ld   bc, $2801                                   ; $5703: $01 $01 $28
	nop                                              ; $5706: $00
	ld   bc, $a102                                   ; $5707: $01 $02 $a1
	ld   [hl], c                                     ; $570a: $71
	add  l                                           ; $570b: $85
	ld   e, d                                        ; $570c: $5a
	ld   d, d                                        ; $570d: $52
	ld   d, d                                        ; $570e: $52
	and  c                                           ; $570f: $a1
	ld   [hl], l                                     ; $5710: $75
	ld   h, a                                        ; $5711: $67
	ld   a, e                                        ; $5712: $7b
	sbc  a                                           ; $5713: $9f
	dec  c                                           ; $5714: $0d
	ld   [$6300], sp                                 ; $5715: $08 $00 $63
	and  c                                           ; $5718: $a1
	ld   [hl], c                                     ; $5719: $71
	ld   [hl], h                                     ; $571a: $74
	sbc  a                                           ; $571b: $9f
	dec  c                                           ; $571c: $0d
	nop                                              ; $571d: $00
	ld   a, [bc]                                     ; $571e: $0a
	ld   b, $c6                                      ; $571f: $06 $c6
	ld   [bc], a                                     ; $5721: $02
	rrca                                             ; $5722: $0f
	nop                                              ; $5723: $00
	ld   bc, $0301                                   ; $5724: $01 $01 $03
	inc  bc                                          ; $5727: $03
	ld   [bc], a                                     ; $5728: $02
	ld   h, c                                        ; $5729: $61
	inc  bc                                          ; $572a: $03
	dec  bc                                          ; $572b: $0b
	ld   [hl], l                                     ; $572c: $75
	ld   h, a                                        ; $572d: $67
	ld   e, c                                        ; $572e: $59
	ld   a, e                                        ; $572f: $7b
	rst  $38                                         ; $5730: $ff
	rst  $38                                         ; $5731: $ff
	dec  c                                           ; $5732: $0d
	nop                                              ; $5733: $00
	ld   a, [bc]                                     ; $5734: $0a
	inc  e                                           ; $5735: $1c
	ld   bc, $0000                                   ; $5736: $01 $00 $00
	ld   bc, $a16b                                   ; $5739: $01 $6b $a1
	ld   a, b                                        ; $573c: $78
	ld   d, b                                        ; $573d: $50
	ld   a, b                                        ; $573e: $78
	ld   l, l                                        ; $573f: $6d
	ld   a, l                                        ; $5740: $7d
	rst  $28                                         ; $5741: $ef
	rst  JumpTable                                         ; $5742: $df
	push af                                          ; $5743: $f5
	jp   nz, $c9ba                                   ; $5744: $c2 $ba $c9

	ld   [hl], l                                     ; $5747: $75
	dec  c                                           ; $5748: $0d
	ld   b, $00                                      ; $5749: $06 $00
	ld   h, l                                        ; $574b: $65
	ld   l, l                                        ; $574c: $6d
	ld   e, b                                        ; $574d: $58
	ld   [bc], a                                     ; $574e: $02
	dec  sp                                          ; $574f: $3b
	sub  b                                           ; $5750: $90
	inc  b                                           ; $5751: $04
	and  e                                           ; $5752: $a3
	sbc  d                                           ; $5753: $9a
	ld   [hl], h                                     ; $5754: $74
	ld   h, l                                        ; $5755: $65
	adc  h                                           ; $5756: $8c
	ld   d, h                                        ; $5757: $54
	dec  c                                           ; $5758: $0d
	ret  nz                                          ; $5759: $c0

	and  l                                           ; $575a: $a5
	ret  c                                           ; $575b: $d8

	ld   [hl], l                                     ; $575c: $75
	ld   h, a                                        ; $575d: $67
	sbc  a                                           ; $575e: $9f
	dec  c                                           ; $575f: $0d
	nop                                              ; $5760: $00
	ld   a, [bc]                                     ; $5761: $0a
	inc  e                                           ; $5762: $1c
	ld   bc, $0404                                   ; $5763: $01 $04 $04
	ld   bc, $7154                                   ; $5766: $01 $54 $71
	ld   e, c                                        ; $5769: $59
	sbc  b                                           ; $576a: $98
	ld   h, e                                        ; $576b: $63
	and  c                                           ; $576c: $a1
	ld   a, b                                        ; $576d: $78
	and  c                                           ; $576e: $a1
	ld   [hl], l                                     ; $576f: $75
	ld   h, a                                        ; $5770: $67
	ld   e, c                                        ; $5771: $59
	ld   sp, hl                                      ; $5772: $f9
	dec  c                                           ; $5773: $0d
	ld   [$6300], sp                                 ; $5774: $08 $00 $63
	and  c                                           ; $5777: $a1
	ld   a, l                                        ; $5778: $7d
	sbc  a                                           ; $5779: $9f
	dec  c                                           ; $577a: $0d
	nop                                              ; $577b: $00
	ld   a, [bc]                                     ; $577c: $0a
	ld   b, $c6                                      ; $577d: $06 $c6
	ld   [bc], a                                     ; $577f: $02
	rrca                                             ; $5780: $0f
	nop                                              ; $5781: $00
	ld   bc, $0301                                   ; $5782: $01 $01 $03
	xor  a                                           ; $5785: $af
	ld   h, e                                        ; $5786: $63
	ld   a, b                                        ; $5787: $78
	dec  b                                           ; $5788: $05
	sbc  $75                                         ; $5789: $de $75
	ld   h, a                                        ; $578b: $67
	ld   e, c                                        ; $578c: $59
	ld   a, e                                        ; $578d: $7b
	rst  $38                                         ; $578e: $ff
	rst  $38                                         ; $578f: $ff
	dec  c                                           ; $5790: $0d
	nop                                              ; $5791: $00
	ld   a, [bc]                                     ; $5792: $0a
	inc  e                                           ; $5793: $1c
	ld   bc, $0000                                   ; $5794: $01 $00 $00
	ld   bc, $a16b                                   ; $5797: $01 $6b $a1
	ld   a, b                                        ; $579a: $78
	ld   d, b                                        ; $579b: $50
	ld   a, b                                        ; $579c: $78
	ld   l, l                                        ; $579d: $6d
	ld   a, l                                        ; $579e: $7d
	inc  bc                                          ; $579f: $03
	xor  l                                           ; $57a0: $ad
	inc  b                                           ; $57a1: $04
	ret  c                                           ; $57a2: $d8

	inc  b                                           ; $57a3: $04
	call nc, $0d75                                   ; $57a4: $d4 $75 $0d
	ld   h, c                                        ; $57a7: $61
	ld   [hl], d                                     ; $57a8: $72
	ld   h, c                                        ; $57a9: $61
	ld   [hl], d                                     ; $57aa: $72
	halt                                             ; $57ab: $76
	ld   e, b                                        ; $57ac: $58
	ld   [bc], a                                     ; $57ad: $02
	dec  sp                                          ; $57ae: $3b
	and  b                                           ; $57af: $a0
	ld   l, l                                        ; $57b0: $6d
	adc  a                                           ; $57b1: $8f
	sbc  c                                           ; $57b2: $99
	dec  c                                           ; $57b3: $0d
	ret  nz                                          ; $57b4: $c0

	and  l                                           ; $57b5: $a5
	ret  c                                           ; $57b6: $d8

	ld   [hl], l                                     ; $57b7: $75
	ld   h, a                                        ; $57b8: $67
	sbc  a                                           ; $57b9: $9f
	dec  c                                           ; $57ba: $0d
	nop                                              ; $57bb: $00
	ld   a, [bc]                                     ; $57bc: $0a
	inc  e                                           ; $57bd: $1c
	ld   bc, $0101                                   ; $57be: $01 $01 $01
	dec  e                                           ; $57c1: $1d
	ld   b, b                                        ; $57c2: $40
	ld   de, $1103                                   ; $57c3: $11 $03 $11
	ld   bc, $2802                                   ; $57c6: $01 $02 $28
	nop                                              ; $57c9: $00
	ld   bc, $8a03                                   ; $57ca: $01 $03 $8a
	inc  bc                                          ; $57cd: $03
	adc  e                                           ; $57ce: $8b
	ld   a, b                                        ; $57cf: $78
	and  c                                           ; $57d0: $a1
	ld   [hl], l                                     ; $57d1: $75
	ld   h, a                                        ; $57d2: $67
	ld   a, e                                        ; $57d3: $7b
	sbc  a                                           ; $57d4: $9f
	dec  c                                           ; $57d5: $0d
	ld   [$6300], sp                                 ; $57d6: $08 $00 $63
	and  c                                           ; $57d9: $a1
	ld   [hl], h                                     ; $57da: $74
	sbc  a                                           ; $57db: $9f
	dec  c                                           ; $57dc: $0d
	nop                                              ; $57dd: $00
	ld   a, [bc]                                     ; $57de: $0a
	ld   b, $c6                                      ; $57df: $06 $c6
	ld   [bc], a                                     ; $57e1: $02
	inc  e                                           ; $57e2: $1c
	ld   bc, $0101                                   ; $57e3: $01 $01 $01
	ld   bc, $5477                                   ; $57e6: $01 $77 $54
	ld   [hl], l                                     ; $57e9: $75
	ld   h, a                                        ; $57ea: $67
	ld   sp, hl                                      ; $57eb: $f9
	dec  c                                           ; $57ec: $0d
	inc  b                                           ; $57ed: $04
	ret  c                                           ; $57ee: $d8

	inc  b                                           ; $57ef: $04
	xor  h                                           ; $57f0: $ac
	ld   e, c                                        ; $57f1: $59
	ld   [hl], c                                     ; $57f2: $71
	ld   l, l                                        ; $57f3: $6d
	ld   [hl], l                                     ; $57f4: $75
	ld   h, a                                        ; $57f5: $67
	ld   e, c                                        ; $57f6: $59
	ld   sp, hl                                      ; $57f7: $f9
	dec  c                                           ; $57f8: $0d
	nop                                              ; $57f9: $00
	ld   a, [bc]                                     ; $57fa: $0a
	add  hl, de                                      ; $57fb: $19
	dec  b                                           ; $57fc: $05
	ld   [bc], a                                     ; $57fd: $02
	inc  b                                           ; $57fe: $04
	ret  c                                           ; $57ff: $d8

	inc  b                                           ; $5800: $04
	xor  h                                           ; $5801: $ac
	ld   e, c                                        ; $5802: $59
	ld   [hl], c                                     ; $5803: $71
	ld   l, l                                        ; $5804: $6d
	nop                                              ; $5805: $00
	nop                                              ; $5806: $00
	inc  b                                           ; $5807: $04
	ret  c                                           ; $5808: $d8

	inc  b                                           ; $5809: $04
	xor  h                                           ; $580a: $ac
	ld   e, l                                        ; $580b: $5d
	ld   a, b                                        ; $580c: $78
	ld   e, c                                        ; $580d: $59
	ld   [hl], c                                     ; $580e: $71
	ld   l, l                                        ; $580f: $6d
	nop                                              ; $5810: $00
	ld   bc, $0b07                                   ; $5811: $01 $07 $0b
	inc  bc                                          ; $5814: $03
	ld   [bc], a                                     ; $5815: $02
	inc  bc                                          ; $5816: $03
	ld   bc, $2000                                   ; $5817: $01 $00 $20
	nop                                              ; $581a: $00
	rlca                                             ; $581b: $07
	ld   [hl], b                                     ; $581c: $70
	inc  bc                                          ; $581d: $03
	ld   [bc], a                                     ; $581e: $02
	inc  bc                                          ; $581f: $03
	ld   bc, $2001                                   ; $5820: $01 $01 $20
	nop                                              ; $5823: $00
	ld   b, $ea                                      ; $5824: $06 $ea
	inc  bc                                          ; $5826: $03
	rrca                                             ; $5827: $0f
	nop                                              ; $5828: $00
	ld   bc, $0401                                   ; $5829: $01 $01 $04
	ret  c                                           ; $582c: $d8

	inc  b                                           ; $582d: $04
	xor  h                                           ; $582e: $ac
	ld   e, c                                        ; $582f: $59
	ld   [hl], c                                     ; $5830: $71
	ld   l, l                                        ; $5831: $6d
	ld   [hl], l                                     ; $5832: $75
	ld   h, a                                        ; $5833: $67
	sbc  a                                           ; $5834: $9f
	dec  c                                           ; $5835: $0d
	adc  h                                           ; $5836: $8c
	ld   l, l                                        ; $5837: $6d
	inc  b                                           ; $5838: $04
	ld   c, c                                        ; $5839: $49
	ld   e, c                                        ; $583a: $59
	ld   d, b                                        ; $583b: $50
	ld   [hl], c                                     ; $583c: $71
	ld   l, l                                        ; $583d: $6d
	sub  a                                           ; $583e: $97
	dec  c                                           ; $583f: $0d
	sub  d                                           ; $5840: $92
	sbc  b                                           ; $5841: $98
	ld   l, l                                        ; $5842: $6d
	ld   d, d                                        ; $5843: $52
	ld   [hl], l                                     ; $5844: $75
	ld   h, a                                        ; $5845: $67
	ld   a, e                                        ; $5846: $7b
	sbc  a                                           ; $5847: $9f
	dec  c                                           ; $5848: $0d
	nop                                              ; $5849: $00
	ld   a, [bc]                                     ; $584a: $0a
	inc  e                                           ; $584b: $1c
	ld   bc, $0101                                   ; $584c: $01 $01 $01
	dec  e                                           ; $584f: $1d
	ld   b, b                                        ; $5850: $40
	ld   de, $1103                                   ; $5851: $11 $03 $11
	ld   bc, $2802                                   ; $5854: $01 $02 $28
	nop                                              ; $5857: $00
	ld   bc, $546b                                   ; $5858: $01 $6b $54
	ld   [hl], l                                     ; $585b: $75
	ld   h, a                                        ; $585c: $67
	ld   e, c                                        ; $585d: $59
	sbc  [hl]                                        ; $585e: $9e
	dec  c                                           ; $585f: $0d
	ld   h, [hl]                                     ; $5860: $66
	sub  c                                           ; $5861: $91
	adc  h                                           ; $5862: $8c
	ld   l, l                                        ; $5863: $6d
	inc  b                                           ; $5864: $04
	ld   c, c                                        ; $5865: $49
	ld   e, c                                        ; $5866: $59
	inc  b                                           ; $5867: $04
	ret  c                                           ; $5868: $d8

	inc  b                                           ; $5869: $04
	xor  h                                           ; $586a: $ac
	ld   d, d                                        ; $586b: $52
	ld   a, h                                        ; $586c: $7c
	and  b                                           ; $586d: $a0
	dec  c                                           ; $586e: $0d
	nop                                              ; $586f: $00
	dec  b                                           ; $5870: $05
	add  b                                           ; $5871: $80
	dec  bc                                          ; $5872: $0b
	ld   bc, $0001                                   ; $5873: $01 $01 $00
	ld   bc, $1404                                   ; $5876: $01 $04 $14
	ld   h, l                                        ; $5879: $65
	ld   [hl], h                                     ; $587a: $74
	adc  l                                           ; $587b: $8d
	adc  h                                           ; $587c: $8c
	ld   h, a                                        ; $587d: $67
	ld   a, e                                        ; $587e: $7b
	sbc  a                                           ; $587f: $9f
	dec  c                                           ; $5880: $0d
	nop                                              ; $5881: $00
	ld   a, [bc]                                     ; $5882: $0a
	dec  c                                           ; $5883: $0d
	nop                                              ; $5884: $00
	nop                                              ; $5885: $00
	rrca                                             ; $5886: $0f
	nop                                              ; $5887: $00
	ld   bc, $1e09                                   ; $5888: $01 $09 $1e
	nop                                              ; $588b: $00
	rrca                                             ; $588c: $0f
	nop                                              ; $588d: $00
	ld   bc, $5001                                   ; $588e: $01 $01 $50
	adc  h                                           ; $5891: $8c
	sbc  b                                           ; $5892: $98
	inc  b                                           ; $5893: $04
	ret  c                                           ; $5894: $d8

	inc  b                                           ; $5895: $04
	xor  h                                           ; $5896: $ac
	ld   d, d                                        ; $5897: $52
	sub  b                                           ; $5898: $90
	ld   a, h                                        ; $5899: $7c
	ld   h, [hl]                                     ; $589a: $66
	sub  c                                           ; $589b: $91
	dec  c                                           ; $589c: $0d
	ld   d, b                                        ; $589d: $50
	sbc  b                                           ; $589e: $98
	adc  h                                           ; $589f: $8c

Jump_05c_58a0:
	ld   l, c                                        ; $58a0: $69
	and  c                                           ; $58a1: $a1
	ld   a, e                                        ; $58a2: $7b
	rst  $38                                         ; $58a3: $ff
	rst  $38                                         ; $58a4: $ff
	dec  c                                           ; $58a5: $0d
	nop                                              ; $58a6: $00
	ld   a, [bc]                                     ; $58a7: $0a
	inc  e                                           ; $58a8: $1c
	ld   bc, $0404                                   ; $58a9: $01 $04 $04
	dec  e                                           ; $58ac: $1d
	ld   b, b                                        ; $58ad: $40
	ld   de, $1103                                   ; $58ae: $11 $03 $11
	ld   bc, $2902                                   ; $58b1: $01 $02 $29
	nop                                              ; $58b4: $00
	ld   bc, $546b                                   ; $58b5: $01 $6b $54
	ld   [hl], l                                     ; $58b8: $75
	ld   h, a                                        ; $58b9: $67
	ld   e, c                                        ; $58ba: $59
	rst  $38                                         ; $58bb: $ff
	rst  $38                                         ; $58bc: $ff
	ld   sp, hl                                      ; $58bd: $f9
	dec  c                                           ; $58be: $0d
	ld   e, a                                        ; $58bf: $5f
	ld   [hl], c                                     ; $58c0: $71
	ld   h, c                                        ; $58c1: $61
	ld   d, h                                        ; $58c2: $54
	adc  l                                           ; $58c3: $8d
	and  c                                           ; $58c4: $a1
	ld   a, b                                        ; $58c5: $78
	ld   a, h                                        ; $58c6: $7c
	ld   [bc], a                                     ; $58c7: $02
	xor  c                                           ; $58c8: $a9
	ld   [hl], l                                     ; $58c9: $75
	dec  c                                           ; $58ca: $0d
	inc  b                                           ; $58cb: $04
	ld   d, a                                        ; $58cc: $57
	inc  b                                           ; $58cd: $04
	ld   h, e                                        ; $58ce: $63
	ld   d, d                                        ; $58cf: $52
	ld   d, d                                        ; $58d0: $52
	and  c                                           ; $58d1: $a1
	ld   [hl], l                                     ; $58d2: $75
	ld   h, a                                        ; $58d3: $67
	ld   e, a                                        ; $58d4: $5f
	ld   [hl], a                                     ; $58d5: $77
	ld   a, e                                        ; $58d6: $7b
	sbc  a                                           ; $58d7: $9f
	dec  c                                           ; $58d8: $0d
	nop                                              ; $58d9: $00
	ld   a, [bc]                                     ; $58da: $0a
	ld   bc, $8d67                                   ; $58db: $01 $67 $8d
	adc  h                                           ; $58de: $8c
	ld   l, c                                        ; $58df: $69
	and  c                                           ; $58e0: $a1
	sbc  [hl]                                        ; $58e1: $9e
	ld   [hl], d                                     ; $58e2: $72
	adc  h                                           ; $58e3: $8c
	sub  a                                           ; $58e4: $97
	ld   a, b                                        ; $58e5: $78
	ld   d, d                                        ; $58e6: $52
	ld   h, c                                        ; $58e7: $61
	halt                                             ; $58e8: $76
	ld   [hl], l                                     ; $58e9: $75
	dec  c                                           ; $58ea: $0d
	ld   e, b                                        ; $58eb: $58
	inc  bc                                          ; $58ec: $03
	ld   l, a                                        ; $58ed: $6f
	ld   [bc], a                                     ; $58ee: $02
	xor  c                                           ; $58ef: $a9
	halt                                             ; $58f0: $76
	sub  a                                           ; $58f1: $97
	ld   l, c                                        ; $58f2: $69
	ld   [hl], h                                     ; $58f3: $74
	ld   h, l                                        ; $58f4: $65
	adc  h                                           ; $58f5: $8c
	ld   [hl], c                                     ; $58f6: $71
	ld   [hl], h                                     ; $58f7: $74
	rst  $38                                         ; $58f8: $ff
	rst  $38                                         ; $58f9: $ff
	dec  c                                           ; $58fa: $0d
	nop                                              ; $58fb: $00
	ld   a, [bc]                                     ; $58fc: $0a
	dec  c                                           ; $58fd: $0d
	nop                                              ; $58fe: $00
	nop                                              ; $58ff: $00
	rrca                                             ; $5900: $0f
	nop                                              ; $5901: $00
	ld   bc, $1e09                                   ; $5902: $01 $09 $1e
	nop                                              ; $5905: $00
	inc  e                                           ; $5906: $1c
	ld   bc, $0404                                   ; $5907: $01 $04 $04
	dec  e                                           ; $590a: $1d
	ld   b, b                                        ; $590b: $40
	ld   de, $1103                                   ; $590c: $11 $03 $11
	ld   bc, $2902                                   ; $590f: $01 $02 $29
	nop                                              ; $5912: $00
	ld   bc, $8c50                                   ; $5913: $01 $50 $8c
	sbc  b                                           ; $5916: $98
	ld   e, b                                        ; $5917: $58
	ld   [bc], a                                     ; $5918: $02
	and  c                                           ; $5919: $a1
	ld   a, c                                        ; $591a: $79
	adc  a                                           ; $591b: $8f
	ld   h, e                                        ; $591c: $63
	ld   a, b                                        ; $591d: $78
	ld   e, c                                        ; $591e: $59
	ld   [hl], c                                     ; $591f: $71
	ld   l, l                                        ; $5920: $6d
	dec  c                                           ; $5921: $0d
	sub  [hl]                                        ; $5922: $96
	ld   d, h                                        ; $5923: $54
	ld   [hl], l                                     ; $5924: $75
	ld   h, a                                        ; $5925: $67
	ld   a, e                                        ; $5926: $7b
	rst  $38                                         ; $5927: $ff
	rst  $38                                         ; $5928: $ff
	dec  c                                           ; $5929: $0d
	nop                                              ; $592a: $00
	ld   a, [bc]                                     ; $592b: $0a
	ld   bc, $8d67                                   ; $592c: $01 $67 $8d
	adc  h                                           ; $592f: $8c
	ld   l, c                                        ; $5930: $69
	and  c                                           ; $5931: $a1
	sbc  [hl]                                        ; $5932: $9e
	ld   [hl], d                                     ; $5933: $72
	adc  h                                           ; $5934: $8c
	sub  a                                           ; $5935: $97
	ld   a, b                                        ; $5936: $78
	ld   d, d                                        ; $5937: $52
	ld   h, c                                        ; $5938: $61
	halt                                             ; $5939: $76
	ld   [hl], l                                     ; $593a: $75
	dec  c                                           ; $593b: $0d
	ld   e, b                                        ; $593c: $58
	inc  bc                                          ; $593d: $03
	ld   l, a                                        ; $593e: $6f
	ld   [bc], a                                     ; $593f: $02
	xor  c                                           ; $5940: $a9
	halt                                             ; $5941: $76
	sub  a                                           ; $5942: $97
	ld   l, c                                        ; $5943: $69
	ld   [hl], h                                     ; $5944: $74
	ld   h, l                                        ; $5945: $65
	adc  h                                           ; $5946: $8c
	ld   [hl], c                                     ; $5947: $71
	ld   [hl], h                                     ; $5948: $74
	rst  $38                                         ; $5949: $ff
	rst  $38                                         ; $594a: $ff
	dec  c                                           ; $594b: $0d
	nop                                              ; $594c: $00
	ld   a, [bc]                                     ; $594d: $0a
	dec  c                                           ; $594e: $0d
	nop                                              ; $594f: $00
	nop                                              ; $5950: $00
	rrca                                             ; $5951: $0f
	nop                                              ; $5952: $00
	ld   bc, $1e09                                   ; $5953: $01 $09 $1e
	nop                                              ; $5956: $00
	nop                                              ; $5957: $00
	inc  b                                           ; $5958: $04
	add  b                                           ; $5959: $80
	and  l                                           ; $595a: $a5
	ld   bc, $20ff                                   ; $595b: $01 $ff $20
	inc  b                                           ; $595e: $04
	add  b                                           ; $595f: $80
	and  a                                           ; $5960: $a7
	ld   bc, $20ff                                   ; $5961: $01 $ff $20
	dec  de                                          ; $5964: $1b
	inc  b                                           ; $5965: $04
	add  b                                           ; $5966: $80
	xor  h                                           ; $5967: $ac
	ld   bc, $20ff                                   ; $5968: $01 $ff $20
	dec  de                                          ; $596b: $1b
	nop                                              ; $596c: $00
	inc  e                                           ; $596d: $1c
	inc  c                                           ; $596e: $0c
	ld   bc, $0201                                   ; $596f: $01 $01 $02
	inc  e                                           ; $5972: $1c
	inc  c                                           ; $5973: $0c
	ld   bc, $0101                                   ; $5974: $01 $01 $01
	ld   d, b                                        ; $5977: $50
	sub  a                                           ; $5978: $97
	sbc  [hl]                                        ; $5979: $9e
	ld   [$6300], sp                                 ; $597a: $08 $00 $63
	and  c                                           ; $597d: $a1
	sbc  a                                           ; $597e: $9f
	dec  c                                           ; $597f: $0d
	ld   d, d                                        ; $5980: $52
	ld   d, d                                        ; $5981: $52
	halt                                             ; $5982: $76
	ld   h, c                                        ; $5983: $61
	sbc  e                                           ; $5984: $9b
	ld   a, c                                        ; $5985: $79
	rst  $38                                         ; $5986: $ff
	rst  $38                                         ; $5987: $ff
	dec  c                                           ; $5988: $0d
	inc  bc                                          ; $5989: $03
	ld   l, a                                        ; $598a: $6f
	ld   [bc], a                                     ; $598b: $02
	xor  c                                           ; $598c: $a9
	ld   d, b                                        ; $598d: $50
	sbc  b                                           ; $598e: $98
	adc  h                                           ; $598f: $8c
	ld   h, a                                        ; $5990: $67
	ld   e, c                                        ; $5991: $59
	ld   sp, hl                                      ; $5992: $f9
	dec  c                                           ; $5993: $0d
	nop                                              ; $5994: $00
	ld   a, [bc]                                     ; $5995: $0a
	add  hl, de                                      ; $5996: $19
	dec  b                                           ; $5997: $05
	ld   [bc], a                                     ; $5998: $02
	ld   a, l                                        ; $5999: $7d
	ld   d, d                                        ; $599a: $52
	nop                                              ; $599b: $00
	nop                                              ; $599c: $00
	ld   d, d                                        ; $599d: $52
	ld   d, d                                        ; $599e: $52
	ld   d, [hl]                                     ; $599f: $56
	nop                                              ; $59a0: $00
	ld   bc, $ac07                                   ; $59a1: $01 $07 $ac
	nop                                              ; $59a4: $00
	ld   [bc], a                                     ; $59a5: $02
	inc  bc                                          ; $59a6: $03
	ld   bc, $2000                                   ; $59a7: $01 $00 $20
	nop                                              ; $59aa: $00
	rlca                                             ; $59ab: $07
	ld   c, d                                        ; $59ac: $4a
	nop                                              ; $59ad: $00
	ld   [bc], a                                     ; $59ae: $02
	inc  bc                                          ; $59af: $03
	ld   bc, $2001                                   ; $59b0: $01 $01 $20
	nop                                              ; $59b3: $00
	ld   b, $7f                                      ; $59b4: $06 $7f
	nop                                              ; $59b6: $00
	rrca                                             ; $59b7: $0f
	nop                                              ; $59b8: $00
	ld   bc, $6701                                   ; $59b9: $01 $01 $67
	adc  l                                           ; $59bc: $8d
	adc  h                                           ; $59bd: $8c
	ld   l, c                                        ; $59be: $69
	and  c                                           ; $59bf: $a1
	sbc  a                                           ; $59c0: $9f
	dec  c                                           ; $59c1: $0d
	ld   [bc], a                                     ; $59c2: $02
	and  l                                           ; $59c3: $a5
	ld   l, a                                        ; $59c4: $6f
	sub  l                                           ; $59c5: $95
	ld   [hl], c                                     ; $59c6: $71
	halt                                             ; $59c7: $76
	ld   d, d                                        ; $59c8: $52
	ld   l, e                                        ; $59c9: $6b
	ld   e, d                                        ; $59ca: $5a
	ld   h, l                                        ; $59cb: $65
	ld   d, d                                        ; $59cc: $52
	ld   a, h                                        ; $59cd: $7c
	ld   [hl], l                                     ; $59ce: $75
	rst  $38                                         ; $59cf: $ff
	rst  $38                                         ; $59d0: $ff
	dec  c                                           ; $59d1: $0d
	nop                                              ; $59d2: $00
	ld   a, [bc]                                     ; $59d3: $0a
	inc  e                                           ; $59d4: $1c
	inc  c                                           ; $59d5: $0c
	nop                                              ; $59d6: $00
	nop                                              ; $59d7: $00
	ld   bc, $546b                                   ; $59d8: $01 $6b $54
	ld   [hl], l                                     ; $59db: $75
	ld   h, a                                        ; $59dc: $67
	ld   e, c                                        ; $59dd: $59
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	dec  c                                           ; $59e0: $0d
	ld   [hl], l                                     ; $59e1: $75
	ld   a, l                                        ; $59e2: $7d
	sbc  [hl]                                        ; $59e3: $9e
	adc  h                                           ; $59e4: $8c
	ld   l, l                                        ; $59e5: $6d
	rst  $38                                         ; $59e6: $ff
	rst  $38                                         ; $59e7: $ff
	dec  c                                           ; $59e8: $0d
	nop                                              ; $59e9: $00
	ld   a, [bc]                                     ; $59ea: $0a
	nop                                              ; $59eb: $00
	rrca                                             ; $59ec: $0f
	inc  c                                           ; $59ed: $0c
	ld   bc, $0401                                   ; $59ee: $01 $01 $04
	ld   c, c                                        ; $59f1: $49
	ld   e, c                                        ; $59f2: $59
	inc  b                                           ; $59f3: $04
	di                                               ; $59f4: $f3
	ld   [bc], a                                     ; $59f5: $02
	jp   Jump_05c_505a                               ; $59f6: $c3 $5a $50


	sbc  c                                           ; $59f9: $99
	ld   a, h                                        ; $59fa: $7c
	ld   [hl], l                                     ; $59fb: $75
	ld   h, a                                        ; $59fc: $67
	ld   a, e                                        ; $59fd: $7b
	sbc  a                                           ; $59fe: $9f
	dec  c                                           ; $59ff: $0d
	ld   [hl], l                                     ; $5a00: $75
	ld   h, l                                        ; $5a01: $65
	ld   l, l                                        ; $5a02: $6d
	sub  a                                           ; $5a03: $97
	sbc  [hl]                                        ; $5a04: $9e
	ld   e, a                                        ; $5a05: $5f
	ld   [hl], c                                     ; $5a06: $71
	ld   h, c                                        ; $5a07: $61
	ld   d, h                                        ; $5a08: $54
	ld   [hl], l                                     ; $5a09: $75
	ld   h, a                                        ; $5a0a: $67
	sub  [hl]                                        ; $5a0b: $96
	sbc  a                                           ; $5a0c: $9f
	dec  c                                           ; $5a0d: $0d
	ld   [hl], l                                     ; $5a0e: $75
	ld   a, l                                        ; $5a0f: $7d
	sbc  [hl]                                        ; $5a10: $9e
	adc  h                                           ; $5a11: $8c
	ld   l, l                                        ; $5a12: $6d
	rst  $38                                         ; $5a13: $ff
	rst  $38                                         ; $5a14: $ff
	dec  c                                           ; $5a15: $0d
	nop                                              ; $5a16: $00
	ld   a, [bc]                                     ; $5a17: $0a
	nop                                              ; $5a18: $00
	rrca                                             ; $5a19: $0f
	nop                                              ; $5a1a: $00
	ld   bc, $7d01                                   ; $5a1b: $01 $01 $7d
	ld   d, d                                        ; $5a1e: $52
	sbc  [hl]                                        ; $5a1f: $9e
	ld   d, d                                        ; $5a20: $52
	ld   d, d                                        ; $5a21: $52
	ld   [hl], l                                     ; $5a22: $75
	ld   h, a                                        ; $5a23: $67
	sub  [hl]                                        ; $5a24: $96
	sbc  a                                           ; $5a25: $9f
	dec  c                                           ; $5a26: $0d
	nop                                              ; $5a27: $00
	ld   a, [bc]                                     ; $5a28: $0a
	inc  e                                           ; $5a29: $1c
	inc  c                                           ; $5a2a: $0c
	ld   bc, $0101                                   ; $5a2b: $01 $01 $01
	sub  [hl]                                        ; $5a2e: $96
	ld   e, c                                        ; $5a2f: $59
	ld   [hl], c                                     ; $5a30: $71
	ld   l, l                                        ; $5a31: $6d
	sbc  a                                           ; $5a32: $9f
	dec  c                                           ; $5a33: $0d
	inc  bc                                          ; $5a34: $03
	adc  e                                           ; $5a35: $8b
	ld   a, l                                        ; $5a36: $7d
	sbc  [hl]                                        ; $5a37: $9e
	ld   e, b                                        ; $5a38: $58
	ld   d, d                                        ; $5a39: $52
	ld   h, l                                        ; $5a3a: $65
	ld   d, d                                        ; $5a3b: $52
	ld   e, b                                        ; $5a3c: $58
	adc  h                                           ; $5a3d: $8c
	and  c                                           ; $5a3e: $a1
	ld   h, [hl]                                     ; $5a3f: $66
	sub  e                                           ; $5a40: $93
	ld   d, h                                        ; $5a41: $54
	dec  c                                           ; $5a42: $0d
	and  b                                           ; $5a43: $a0
	inc  b                                           ; $5a44: $04
	adc  l                                           ; $5a45: $8d
	ld   [hl], c                                     ; $5a46: $71
	ld   [hl], h                                     ; $5a47: $74
	ld   e, e                                        ; $5a48: $5b
	ld   l, l                                        ; $5a49: $6d
	and  c                                           ; $5a4a: $a1
	ld   [hl], l                                     ; $5a4b: $75
	ld   h, a                                        ; $5a4c: $67
	sub  [hl]                                        ; $5a4d: $96
	sbc  a                                           ; $5a4e: $9f
	dec  c                                           ; $5a4f: $0d
	nop                                              ; $5a50: $00
	ld   a, [bc]                                     ; $5a51: $0a
	db   $10                                         ; $5a52: $10
	ld   c, l                                        ; $5a53: $4d
	nop                                              ; $5a54: $00
	ld   bc, $5996                                   ; $5a55: $01 $96 $59
	ld   [hl], c                                     ; $5a58: $71
	ld   l, l                                        ; $5a59: $6d
	sub  a                                           ; $5a5a: $97
	sbc  [hl]                                        ; $5a5b: $9e
	ld   d, d                                        ; $5a5c: $52
	ld   [hl], c                                     ; $5a5d: $71
	ld   h, l                                        ; $5a5e: $65
	sub  l                                           ; $5a5f: $95
	ld   a, c                                        ; $5a60: $79
	dec  c                                           ; $5a61: $0d
	inc  bc                                          ; $5a62: $03
	ld   l, d                                        ; $5a63: $6a
	add  a                                           ; $5a64: $87
	adc  h                                           ; $5a65: $8c
	ld   l, c                                        ; $5a66: $69
	and  c                                           ; $5a67: $a1
	ld   e, c                                        ; $5a68: $59
	ld   sp, hl                                      ; $5a69: $f9
	dec  c                                           ; $5a6a: $0d
	nop                                              ; $5a6b: $00
	ld   a, [bc]                                     ; $5a6c: $0a
	inc  e                                           ; $5a6d: $1c
	dec  c                                           ; $5a6e: $0d
	ld   bc, $0101                                   ; $5a6f: $01 $01 $01
	inc  b                                           ; $5a72: $04
	adc  a                                           ; $5a73: $8f
	inc  b                                           ; $5a74: $04
	jr   @+$7b                                       ; $5a75: $18 $79

	ld   e, b                                        ; $5a77: $58
	ld   d, d                                        ; $5a78: $52
	ld   h, l                                        ; $5a79: $65
	ld   d, d                                        ; $5a7a: $52
	sbc  l                                           ; $5a7b: $9d
	sub  [hl]                                        ; $5a7c: $96
	sbc  a                                           ; $5a7d: $9f
	dec  c                                           ; $5a7e: $0d
	ld   h, c                                        ; $5a7f: $61
	ld   a, h                                        ; $5a80: $7c
	ld   e, b                                        ; $5a81: $58
	adc  h                                           ; $5a82: $8c
	and  c                                           ; $5a83: $a1
	ld   h, [hl]                                     ; $5a84: $66
	sub  e                                           ; $5a85: $93
	ld   d, h                                        ; $5a86: $54
	sbc  a                                           ; $5a87: $9f
	dec  c                                           ; $5a88: $0d
	nop                                              ; $5a89: $00
	ld   a, [bc]                                     ; $5a8a: $0a
	rrca                                             ; $5a8b: $0f
	ld   c, $01                                      ; $5a8c: $0e $01
	ld   bc, $6759                                   ; $5a8e: $01 $59 $67
	adc  l                                           ; $5a91: $8d
	ld   h, e                                        ; $5a92: $63
	ei                                               ; $5a93: $fb
	and  c                                           ; $5a94: $a1
	sbc  [hl]                                        ; $5a95: $9e
	sbc  l                                           ; $5a96: $9d
	ld   l, l                                        ; $5a97: $6d
	ld   h, l                                        ; $5a98: $65
	sub  b                                           ; $5a99: $90
	dec  c                                           ; $5a9a: $0d
	sbc  l                                           ; $5a9b: $9d
	ld   l, l                                        ; $5a9c: $6d
	ld   h, l                                        ; $5a9d: $65
	sub  b                                           ; $5a9e: $90
	ld   a, [$000d]                                  ; $5a9f: $fa $0d $00
	ld   a, [bc]                                     ; $5aa2: $0a
	inc  e                                           ; $5aa3: $1c
	ld   c, $01                                      ; $5aa4: $0e $01
	ld   bc, $8301                                   ; $5aa6: $01 $01 $83
	ld   d, h                                        ; $5aa9: $54
	rst  $38                                         ; $5aaa: $ff
	rst  $38                                         ; $5aab: $ff
	dec  c                                           ; $5aac: $0d
	sub  [hl]                                        ; $5aad: $96
	ld   e, c                                        ; $5aae: $59
	ld   [hl], c                                     ; $5aaf: $71
	ld   l, l                                        ; $5ab0: $6d
	sbc  [hl]                                        ; $5ab1: $9e
	ld   [bc], a                                     ; $5ab2: $02
	xor  c                                           ; $5ab3: $a9
	ld   a, c                                        ; $5ab4: $79
	ld   [bc], a                                     ; $5ab5: $02
	ld   a, e                                        ; $5ab6: $7b
	ld   [hl], c                                     ; $5ab7: $71
	ld   [hl], h                                     ; $5ab8: $74
	sbc  a                                           ; $5ab9: $9f
	dec  c                                           ; $5aba: $0d
	nop                                              ; $5abb: $00
	ld   a, [bc]                                     ; $5abc: $0a
	ld   d, $40                                      ; $5abd: $16 $40
	rrca                                             ; $5abf: $0f
	nop                                              ; $5ac0: $00
	ld   bc, $7d01                                   ; $5ac1: $01 $01 $7d
	ld   d, d                                        ; $5ac4: $52
	sbc  [hl]                                        ; $5ac5: $9e
	sub  b                                           ; $5ac6: $90
	ld   l, a                                        ; $5ac7: $6f
	sbc  e                                           ; $5ac8: $9b
	and  c                                           ; $5ac9: $a1
	sub  [hl]                                        ; $5aca: $96
	sbc  e                                           ; $5acb: $9b
	ld   h, c                                        ; $5acc: $61
	and  c                                           ; $5acd: $a1
	ld   [hl], l                                     ; $5ace: $75
	sbc  a                                           ; $5acf: $9f
	dec  c                                           ; $5ad0: $0d
	ld   h, [hl]                                     ; $5ad1: $66
	sub  c                                           ; $5ad2: $91
	ld   d, b                                        ; $5ad3: $50
	inc  b                                           ; $5ad4: $04
	ld   l, l                                        ; $5ad5: $6d
	sbc  [hl]                                        ; $5ad6: $9e
	ld   e, b                                        ; $5ad7: $58
	inc  bc                                          ; $5ad8: $03
	jp   Jump_05c_4504                               ; $5ad9: $c3 $04 $45


	sbc  d                                           ; $5adc: $9a
	adc  h                                           ; $5add: $8c
	ld   h, a                                        ; $5ade: $67
	sub  [hl]                                        ; $5adf: $96
	sbc  a                                           ; $5ae0: $9f
	dec  c                                           ; $5ae1: $0d
	adc  l                                           ; $5ae2: $8d
	ld   a, b                                        ; $5ae3: $78
	ld   h, e                                        ; $5ae4: $63
	and  c                                           ; $5ae5: $a1
	ld   a, h                                        ; $5ae6: $7c
	ld   [bc], a                                     ; $5ae7: $02
	sbc  d                                           ; $5ae8: $9a
	adc  l                                           ; $5ae9: $8d
	ld   a, l                                        ; $5aea: $7d
	ld   sp, hl                                      ; $5aeb: $f9
	dec  c                                           ; $5aec: $0d
	nop                                              ; $5aed: $00
	ld   a, [bc]                                     ; $5aee: $0a
	ld   c, $2f                                      ; $5aef: $0e $2f
	inc  e                                           ; $5af1: $1c
	inc  c                                           ; $5af2: $0c
	ld   bc, $0101                                   ; $5af3: $01 $01 $01
	sbc  l                                           ; $5af6: $9d
	ld   l, l                                        ; $5af7: $6d
	ld   h, l                                        ; $5af8: $65
	ld   a, l                                        ; $5af9: $7d
	sbc  [hl]                                        ; $5afa: $9e
	ld   a, [bc]                                     ; $5afb: $0a
	ld   [bc], a                                     ; $5afc: $02
	ld   d, b                                        ; $5afd: $50
	adc  h                                           ; $5afe: $8c
	sbc  b                                           ; $5aff: $98
	ld   b, $04                                      ; $5b00: $06 $04
	ld   e, l                                        ; $5b02: $5d
	ld   a, b                                        ; $5b03: $78
	ld   d, d                                        ; $5b04: $52
	dec  c                                           ; $5b05: $0d
	inc  b                                           ; $5b06: $04
	xor  d                                           ; $5b07: $aa
	inc  b                                           ; $5b08: $04
	adc  a                                           ; $5b09: $8f
	inc  bc                                          ; $5b0a: $03
	jp   $030a                                       ; $5b0b: $c3 $0a $03


	and  b                                           ; $5b0e: $a0
	ld   e, b                                        ; $5b0f: $58
	ld   [bc], a                                     ; $5b10: $02
	add  b                                           ; $5b11: $80
	ld   d, d                                        ; $5b12: $52
	ld   h, l                                        ; $5b13: $65
	adc  h                                           ; $5b14: $8c
	ld   h, a                                        ; $5b15: $67
	sbc  a                                           ; $5b16: $9f
	dec  c                                           ; $5b17: $0d
	nop                                              ; $5b18: $00
	ld   a, [bc]                                     ; $5b19: $0a
	inc  e                                           ; $5b1a: $1c
	dec  c                                           ; $5b1b: $0d
	ld   bc, $0101                                   ; $5b1c: $01 $01 $01
	ld   d, b                                        ; $5b1f: $50
	ld   l, l                                        ; $5b20: $6d
	ld   h, l                                        ; $5b21: $65
	ld   a, l                                        ; $5b22: $7d
	sbc  [hl]                                        ; $5b23: $9e
	ld   a, [bc]                                     ; $5b24: $0a
	ld   [bc], a                                     ; $5b25: $02
	xor  $e4                                         ; $5b26: $ee $e4
	push af                                          ; $5b28: $f5
	rst  ToBoot                                         ; $5b29: $c7
	and  h                                           ; $5b2a: $a4
	ei                                               ; $5b2b: $fb
	ld   a, [bc]                                     ; $5b2c: $0a
	inc  bc                                          ; $5b2d: $03
	and  b                                           ; $5b2e: $a0
	dec  c                                           ; $5b2f: $0d
	ld   e, b                                        ; $5b30: $58
	ld   [bc], a                                     ; $5b31: $02
	add  b                                           ; $5b32: $80
	ld   d, d                                        ; $5b33: $52
	ld   a, e                                        ; $5b34: $7b
	sbc  a                                           ; $5b35: $9f
	dec  c                                           ; $5b36: $0d
	nop                                              ; $5b37: $00
	ld   a, [bc]                                     ; $5b38: $0a
	inc  e                                           ; $5b39: $1c
	ld   c, $01                                      ; $5b3a: $0e $01
	ld   bc, $5001                                   ; $5b3c: $01 $01 $50
	ld   l, l                                        ; $5b3f: $6d
	ld   h, l                                        ; $5b40: $65
	ld   a, l                                        ; $5b41: $7d
	sbc  [hl]                                        ; $5b42: $9e
	ld   a, [bc]                                     ; $5b43: $0a
	ld   [bc], a                                     ; $5b44: $02
	halt                                             ; $5b45: $76
	ld   [hl], c                                     ; $5b46: $71
	ld   [hl], h                                     ; $5b47: $74
	sub  b                                           ; $5b48: $90
	ld   b, $04                                      ; $5b49: $06 $04
	adc  a                                           ; $5b4b: $8f
	ld   [hl], l                                     ; $5b4c: $75
	dec  c                                           ; $5b4d: $0d
	inc  bc                                          ; $5b4e: $03
	sbc  [hl]                                        ; $5b4f: $9e
	ld   d, d                                        ; $5b50: $52
	ld   e, l                                        ; $5b51: $5d
	sub  a                                           ; $5b52: $97
	ld   d, d                                        ; $5b53: $52
	dec  b                                           ; $5b54: $05
	ld   d, c                                        ; $5b55: $51
	ld   d, d                                        ; $5b56: $52
	inc  b                                           ; $5b57: $04
	xor  d                                           ; $5b58: $aa
	inc  b                                           ; $5b59: $04
	adc  a                                           ; $5b5a: $8f
	inc  bc                                          ; $5b5b: $03
	jp   $030a                                       ; $5b5c: $c3 $0a $03


	and  b                                           ; $5b5f: $a0
	ld   e, b                                        ; $5b60: $58
	ld   [bc], a                                     ; $5b61: $02
	add  b                                           ; $5b62: $80
	ld   d, d                                        ; $5b63: $52
	dec  c                                           ; $5b64: $0d
	ld   h, l                                        ; $5b65: $65
	adc  h                                           ; $5b66: $8c
	ld   h, a                                        ; $5b67: $67
	sbc  a                                           ; $5b68: $9f
	dec  c                                           ; $5b69: $0d
	nop                                              ; $5b6a: $00
	ld   a, [bc]                                     ; $5b6b: $0a
	rrca                                             ; $5b6c: $0f
	nop                                              ; $5b6d: $00
	ld   bc, $7d01                                   ; $5b6e: $01 $01 $7d
	ld   d, d                                        ; $5b71: $52
	sbc  [hl]                                        ; $5b72: $9e
	sbc  l                                           ; $5b73: $9d
	ld   e, c                                        ; $5b74: $59
	sbc  b                                           ; $5b75: $98
	adc  h                                           ; $5b76: $8c
	ld   h, l                                        ; $5b77: $65
	ld   l, l                                        ; $5b78: $6d
	sbc  a                                           ; $5b79: $9f
	dec  c                                           ; $5b7a: $0d
	ld   h, a                                        ; $5b7b: $67
	ld   e, [hl]                                     ; $5b7c: $5e
	ld   a, c                                        ; $5b7d: $79
	inc  b                                           ; $5b7e: $04
	ld   b, l                                        ; $5b7f: $45
	sbc  d                                           ; $5b80: $9a
	ld   [hl], h                                     ; $5b81: $74
	ld   e, e                                        ; $5b82: $5b
	adc  h                                           ; $5b83: $8c
	ld   h, a                                        ; $5b84: $67
	sbc  a                                           ; $5b85: $9f
	dec  c                                           ; $5b86: $0d
	nop                                              ; $5b87: $00
	ld   a, [bc]                                     ; $5b88: $0a
	dec  c                                           ; $5b89: $0d
	nop                                              ; $5b8a: $00
	nop                                              ; $5b8b: $00
	inc  c                                           ; $5b8c: $0c
	ld   [bc], a                                     ; $5b8d: $02
	ld   c, $88                                      ; $5b8e: $0e $88
	rrca                                             ; $5b90: $0f
	nop                                              ; $5b91: $00
	ld   bc, $6301                                   ; $5b92: $01 $01 $63
	ld   [hl], h                                     ; $5b95: $74
	halt                                             ; $5b96: $76
	sbc  [hl]                                        ; $5b97: $9e
	adc  h                                           ; $5b98: $8c
	ld   l, b                                        ; $5b99: $68
	ld   a, l                                        ; $5b9a: $7d
	sbc  [hl]                                        ; $5b9b: $9e
	ld   e, c                                        ; $5b9c: $59
	ld   h, a                                        ; $5b9d: $67
	adc  l                                           ; $5b9e: $8d
	ld   h, e                                        ; $5b9f: $63
	and  c                                           ; $5ba0: $a1
	sbc  a                                           ; $5ba1: $9f
	dec  c                                           ; $5ba2: $0d
	ld   d, [hl]                                     ; $5ba3: $56
	db   $fc                                         ; $5ba4: $fc
	halt                                             ; $5ba5: $76
	rst  $38                                         ; $5ba6: $ff
	sbc  [hl]                                        ; $5ba7: $9e
	ld   a, b                                        ; $5ba8: $78
	and  c                                           ; $5ba9: $a1
	ld   l, [hl]                                     ; $5baa: $6e
	ld   [hl], c                                     ; $5bab: $71
	ld   e, a                                        ; $5bac: $5f
	ld   sp, hl                                      ; $5bad: $f9
	dec  c                                           ; $5bae: $0d
	nop                                              ; $5baf: $00
	ld   a, [bc]                                     ; $5bb0: $0a
	add  hl, de                                      ; $5bb1: $19
	dec  b                                           ; $5bb2: $05
	inc  bc                                          ; $5bb3: $03
	ld   b, $04                                      ; $5bb4: $06 $04
	ld   e, l                                        ; $5bb6: $5d
	ld   a, b                                        ; $5bb7: $78
	ld   d, d                                        ; $5bb8: $52
	inc  b                                           ; $5bb9: $04
	xor  d                                           ; $5bba: $aa
	inc  b                                           ; $5bbb: $04
	adc  a                                           ; $5bbc: $8f
	inc  bc                                          ; $5bbd: $03
	jp   $0000                                      ; $5bbe: $c3 $00 $00


	ld   a, d                                        ; $5bc1: $7a
	sbc  c                                           ; $5bc2: $99
	adc  a                                           ; $5bc3: $8f
	ld   a, h                                        ; $5bc4: $7c
	ld   [bc], a                                     ; $5bc5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bc6: $cf
	inc  bc                                          ; $5bc7: $03
	jp   Boot                                        ; $5bc8: $c3 $00 $01


	ld   d, b                                        ; $5bcb: $50
	ld   [hl], d                                     ; $5bcc: $72
	ld   d, b                                        ; $5bcd: $50
	ld   [hl], d                                     ; $5bce: $72
	ld   a, h                                        ; $5bcf: $7c
	inc  b                                           ; $5bd0: $04
	xor  d                                           ; $5bd1: $aa
	inc  b                                           ; $5bd2: $04
	adc  a                                           ; $5bd3: $8f
	inc  bc                                          ; $5bd4: $03
	jp   $0200                                       ; $5bd5: $c3 $00 $02


	rlca                                             ; $5bd8: $07
	adc  c                                           ; $5bd9: $89
	ld   [bc], a                                     ; $5bda: $02
	ld   [bc], a                                     ; $5bdb: $02
	inc  bc                                          ; $5bdc: $03
	ld   bc, $2000                                   ; $5bdd: $01 $00 $20
	nop                                              ; $5be0: $00
	rlca                                             ; $5be1: $07
	or   d                                           ; $5be2: $b2
	ld   [bc], a                                     ; $5be3: $02
	ld   [bc], a                                     ; $5be4: $02
	inc  bc                                          ; $5be5: $03
	ld   bc, $2001                                   ; $5be6: $01 $01 $20
	nop                                              ; $5be9: $00
	rlca                                             ; $5bea: $07
	sub  $02                                         ; $5beb: $d6 $02
	ld   [bc], a                                     ; $5bed: $02
	inc  bc                                          ; $5bee: $03
	ld   bc, $2002                                   ; $5bef: $01 $02 $20
	nop                                              ; $5bf2: $00
	ld   b, $fd                                      ; $5bf3: $06 $fd
	ld   [bc], a                                     ; $5bf5: $02
	rrca                                             ; $5bf6: $0f
	nop                                              ; $5bf7: $00
	ld   bc, $0601                                   ; $5bf8: $01 $01 $06
	inc  b                                           ; $5bfb: $04
	ld   e, l                                        ; $5bfc: $5d
	ld   a, b                                        ; $5bfd: $78
	ld   d, d                                        ; $5bfe: $52
	sbc  [hl]                                        ; $5bff: $9e
	ld   a, d                                        ; $5c00: $7a
	sbc  c                                           ; $5c01: $99
	adc  a                                           ; $5c02: $8f
	ld   a, h                                        ; $5c03: $7c
	inc  b                                           ; $5c04: $04
	xor  d                                           ; $5c05: $aa
	inc  b                                           ; $5c06: $04
	adc  a                                           ; $5c07: $8f
	inc  bc                                          ; $5c08: $03
	jp   $000d                                       ; $5c09: $c3 $0d $00


	dec  b                                           ; $5c0c: $05
	add  b                                           ; $5c0d: $80
	xor  a                                           ; $5c0e: $af
	ld   bc, $0001                                   ; $5c0f: $01 $01 $00
	ld   bc, $716e                                   ; $5c12: $01 $6e $71
	ld   l, l                                        ; $5c15: $6d
	sub  [hl]                                        ; $5c16: $96
	ld   a, b                                        ; $5c17: $78
	sbc  a                                           ; $5c18: $9f
	dec  c                                           ; $5c19: $0d
	nop                                              ; $5c1a: $00
	ld   a, [bc]                                     ; $5c1b: $0a
	ld   b, $25                                      ; $5c1c: $06 $25
	inc  bc                                          ; $5c1e: $03
	rrca                                             ; $5c1f: $0f
	nop                                              ; $5c20: $00
	ld   bc, $7a01                                   ; $5c21: $01 $01 $7a
	sbc  c                                           ; $5c24: $99
	adc  a                                           ; $5c25: $8f
	ld   a, h                                        ; $5c26: $7c
	ld   [bc], a                                     ; $5c27: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c28: $cf
	inc  bc                                          ; $5c29: $03
	jp   $ffff                                       ; $5c2a: $c3 $ff $ff


	ld   l, [hl]                                     ; $5c2d: $6e
	ld   [hl], c                                     ; $5c2e: $71
	ld   l, l                                        ; $5c2f: $6d
	dec  c                                           ; $5c30: $0d
	sub  [hl]                                        ; $5c31: $96
	ld   d, h                                        ; $5c32: $54
	ld   a, b                                        ; $5c33: $78
	ld   [bc], a                                     ; $5c34: $02
	and  c                                           ; $5c35: $a1
	ld   e, d                                        ; $5c36: $5a
	ld   h, a                                        ; $5c37: $67
	sbc  c                                           ; $5c38: $99
	ld   a, b                                        ; $5c39: $78
	ld   c, a                                        ; $5c3a: $4f
	db   $fc                                         ; $5c3b: $fc
	sbc  a                                           ; $5c3c: $9f
	dec  c                                           ; $5c3d: $0d
	nop                                              ; $5c3e: $00
	ld   a, [bc]                                     ; $5c3f: $0a
	ld   b, $25                                      ; $5c40: $06 $25
	inc  bc                                          ; $5c42: $03
	rrca                                             ; $5c43: $0f
	nop                                              ; $5c44: $00
	ld   bc, $5001                                   ; $5c45: $01 $01 $50
	ld   [hl], d                                     ; $5c48: $72
	ld   d, b                                        ; $5c49: $50
	ld   [hl], d                                     ; $5c4a: $72
	ld   a, h                                        ; $5c4b: $7c
	inc  b                                           ; $5c4c: $04
	xor  d                                           ; $5c4d: $aa
	inc  b                                           ; $5c4e: $04
	adc  a                                           ; $5c4f: $8f
	inc  bc                                          ; $5c50: $03
	jp   $ffff                                       ; $5c51: $c3 $ff $ff


	ld   l, [hl]                                     ; $5c54: $6e
	ld   [hl], c                                     ; $5c55: $71
	ld   l, l                                        ; $5c56: $6d
	dec  c                                           ; $5c57: $0d
	sub  [hl]                                        ; $5c58: $96
	ld   d, h                                        ; $5c59: $54
	ld   a, b                                        ; $5c5a: $78
	ld   [bc], a                                     ; $5c5b: $02
	and  c                                           ; $5c5c: $a1
	ld   e, d                                        ; $5c5d: $5a
	ld   h, a                                        ; $5c5e: $67
	sbc  c                                           ; $5c5f: $99
	ld   a, b                                        ; $5c60: $78
	ld   c, a                                        ; $5c61: $4f
	db   $fc                                         ; $5c62: $fc
	sbc  a                                           ; $5c63: $9f
	dec  c                                           ; $5c64: $0d
	nop                                              ; $5c65: $00
	ld   a, [bc]                                     ; $5c66: $0a
	ld   b, $25                                      ; $5c67: $06 $25
	inc  bc                                          ; $5c69: $03
	rrca                                             ; $5c6a: $0f
	nop                                              ; $5c6b: $00
	ld   bc, $6d01                                   ; $5c6c: $01 $01 $6d
	add  h                                           ; $5c6f: $84
	and  c                                           ; $5c70: $a1
	sbc  [hl]                                        ; $5c71: $9e
	or   h                                           ; $5c72: $b4
	ei                                               ; $5c73: $fb
	db   $d3                                         ; $5c74: $d3
	ei                                               ; $5c75: $fb
	ld   l, [hl]                                     ; $5c76: $6e
	sbc  e                                           ; $5c77: $9b
	ld   d, h                                        ; $5c78: $54
	sbc  a                                           ; $5c79: $9f
	dec  c                                           ; $5c7a: $0d
	ld   d, h                                        ; $5c7b: $54
	and  c                                           ; $5c7c: $a1
	sbc  a                                           ; $5c7d: $9f
	ld   l, e                                        ; $5c7e: $6b
	ld   d, h                                        ; $5c7f: $54
	ld   l, [hl]                                     ; $5c80: $6e
	sbc  a                                           ; $5c81: $9f
	dec  c                                           ; $5c82: $0d
	ld   l, e                                        ; $5c83: $6b
	sbc  d                                           ; $5c84: $9a
	ld   a, c                                        ; $5c85: $79
	ld   l, a                                        ; $5c86: $6f
	ld   e, d                                        ; $5c87: $5a
	ld   d, d                                        ; $5c88: $52
	ld   a, b                                        ; $5c89: $78
	ld   d, d                                        ; $5c8a: $52
	sbc  a                                           ; $5c8b: $9f
	dec  c                                           ; $5c8c: $0d
	nop                                              ; $5c8d: $00
	ld   a, [bc]                                     ; $5c8e: $0a
	ld   b, $25                                      ; $5c8f: $06 $25
	inc  bc                                          ; $5c91: $03
	ld   bc, $6803                                   ; $5c92: $01 $03 $68
	ld   a, l                                        ; $5c95: $7d
	sbc  [hl]                                        ; $5c96: $9e
	inc  b                                           ; $5c97: $04
	pop  hl                                          ; $5c98: $e1
	inc  b                                           ; $5c99: $04
	rst  $38                                         ; $5c9a: $ff
	ld   h, e                                        ; $5c9b: $63
	and  c                                           ; $5c9c: $a1
	ld   l, [hl]                                     ; $5c9d: $6e
	sbc  a                                           ; $5c9e: $9f
	dec  c                                           ; $5c9f: $0d
	ld   d, [hl]                                     ; $5ca0: $56
	db   $fc                                         ; $5ca1: $fc
	halt                                             ; $5ca2: $76
	rst  $38                                         ; $5ca3: $ff
	sbc  [hl]                                        ; $5ca4: $9e
	ld   a, b                                        ; $5ca5: $78
	and  c                                           ; $5ca6: $a1
	ld   l, [hl]                                     ; $5ca7: $6e
	ld   [hl], c                                     ; $5ca8: $71
	ld   e, a                                        ; $5ca9: $5f
	ld   sp, hl                                      ; $5caa: $f9
	dec  c                                           ; $5cab: $0d
	nop                                              ; $5cac: $00
	ld   a, [bc]                                     ; $5cad: $0a
	add  hl, de                                      ; $5cae: $19
	dec  b                                           ; $5caf: $05
	inc  bc                                          ; $5cb0: $03
	xor  $e4                                         ; $5cb1: $ee $e4
	push af                                          ; $5cb3: $f5
	rst  ToBoot                                         ; $5cb4: $c7
	and  h                                           ; $5cb5: $a4
	ei                                               ; $5cb6: $fb
	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	ldh  [$ed], a                                    ; $5cb9: $e0 $ed
	or   b                                           ; $5cbb: $b0
	rst  ToBoot                                         ; $5cbc: $c7
	and  h                                           ; $5cbd: $a4
	ei                                               ; $5cbe: $fb
	nop                                              ; $5cbf: $00
	ld   bc, $a5a3                                   ; $5cc0: $01 $a3 $a5
	cp   d                                           ; $5cc3: $ba
	rst  ToBoot                                         ; $5cc4: $c7
	and  h                                           ; $5cc5: $a4
	ei                                               ; $5cc6: $fb
	nop                                              ; $5cc7: $00
	ld   [bc], a                                     ; $5cc8: $02
	rlca                                             ; $5cc9: $07
	ld   a, d                                        ; $5cca: $7a
	inc  bc                                          ; $5ccb: $03
	ld   [bc], a                                     ; $5ccc: $02
	inc  bc                                          ; $5ccd: $03
	ld   bc, $2000                                   ; $5cce: $01 $00 $20
	nop                                              ; $5cd1: $00
	rlca                                             ; $5cd2: $07
	sub  [hl]                                        ; $5cd3: $96
	inc  bc                                          ; $5cd4: $03
	ld   [bc], a                                     ; $5cd5: $02
	inc  bc                                          ; $5cd6: $03
	ld   bc, $2001                                   ; $5cd7: $01 $01 $20
	nop                                              ; $5cda: $00
	rlca                                             ; $5cdb: $07
	cp   b                                           ; $5cdc: $b8
	inc  bc                                          ; $5cdd: $03
	ld   [bc], a                                     ; $5cde: $02
	inc  bc                                          ; $5cdf: $03
	ld   bc, $2002                                   ; $5ce0: $01 $02 $20
	nop                                              ; $5ce3: $00
	ld   b, $da                                      ; $5ce4: $06 $da
	inc  bc                                          ; $5ce6: $03
	rrca                                             ; $5ce7: $0f
	nop                                              ; $5ce8: $00
	ld   bc, $ee01                                   ; $5ce9: $01 $01 $ee
	db   $e4                                         ; $5cec: $e4
	push af                                          ; $5ced: $f5
	rst  ToBoot                                         ; $5cee: $c7
	and  h                                           ; $5cef: $a4
	ei                                               ; $5cf0: $fb
	ld   l, [hl]                                     ; $5cf1: $6e
	ld   [hl], c                                     ; $5cf2: $71
	ld   l, l                                        ; $5cf3: $6d
	sub  [hl]                                        ; $5cf4: $96
	ld   a, b                                        ; $5cf5: $78
	sbc  a                                           ; $5cf6: $9f
	dec  c                                           ; $5cf7: $0d
	nop                                              ; $5cf8: $00
	ld   a, [bc]                                     ; $5cf9: $0a
	dec  b                                           ; $5cfa: $05
	add  b                                           ; $5cfb: $80
	or   b                                           ; $5cfc: $b0
	ld   bc, $0001                                   ; $5cfd: $01 $01 $00
	ld   b, $04                                      ; $5d00: $06 $04
	inc  b                                           ; $5d02: $04
	rrca                                             ; $5d03: $0f
	nop                                              ; $5d04: $00
	ld   bc, $e001                                   ; $5d05: $01 $01 $e0
	db   $ed                                         ; $5d08: $ed
	or   b                                           ; $5d09: $b0
	rst  ToBoot                                         ; $5d0a: $c7
	and  h                                           ; $5d0b: $a4
	ei                                               ; $5d0c: $fb
	rst  $38                                         ; $5d0d: $ff
	rst  $38                                         ; $5d0e: $ff
	ld   l, [hl]                                     ; $5d0f: $6e
	ld   [hl], c                                     ; $5d10: $71
	ld   l, l                                        ; $5d11: $6d
	dec  c                                           ; $5d12: $0d
	sub  [hl]                                        ; $5d13: $96
	ld   d, h                                        ; $5d14: $54
	ld   a, b                                        ; $5d15: $78
	ld   [bc], a                                     ; $5d16: $02
	and  c                                           ; $5d17: $a1
	ld   e, d                                        ; $5d18: $5a
	ld   h, a                                        ; $5d19: $67
	sbc  c                                           ; $5d1a: $99
	ld   a, b                                        ; $5d1b: $78
	ld   c, a                                        ; $5d1c: $4f
	db   $fc                                         ; $5d1d: $fc
	sbc  a                                           ; $5d1e: $9f
	dec  c                                           ; $5d1f: $0d
	nop                                              ; $5d20: $00
	ld   a, [bc]                                     ; $5d21: $0a
	ld   b, $04                                      ; $5d22: $06 $04
	inc  b                                           ; $5d24: $04
	rrca                                             ; $5d25: $0f
	nop                                              ; $5d26: $00
	ld   bc, $a301                                   ; $5d27: $01 $01 $a3
	and  l                                           ; $5d2a: $a5
	cp   d                                           ; $5d2b: $ba
	rst  ToBoot                                         ; $5d2c: $c7
	and  h                                           ; $5d2d: $a4
	ei                                               ; $5d2e: $fb
	rst  $38                                         ; $5d2f: $ff
	rst  $38                                         ; $5d30: $ff
	ld   l, [hl]                                     ; $5d31: $6e
	ld   [hl], c                                     ; $5d32: $71
	ld   l, l                                        ; $5d33: $6d
	dec  c                                           ; $5d34: $0d
	sub  [hl]                                        ; $5d35: $96
	ld   d, h                                        ; $5d36: $54
	ld   a, b                                        ; $5d37: $78
	ld   [bc], a                                     ; $5d38: $02
	and  c                                           ; $5d39: $a1
	ld   e, d                                        ; $5d3a: $5a
	ld   h, a                                        ; $5d3b: $67
	sbc  c                                           ; $5d3c: $99
	ld   a, b                                        ; $5d3d: $78
	ld   c, a                                        ; $5d3e: $4f
	db   $fc                                         ; $5d3f: $fc
	sbc  a                                           ; $5d40: $9f
	dec  c                                           ; $5d41: $0d
	nop                                              ; $5d42: $00
	ld   a, [bc]                                     ; $5d43: $0a
	ld   b, $04                                      ; $5d44: $06 $04
	inc  b                                           ; $5d46: $04
	rrca                                             ; $5d47: $0f
	nop                                              ; $5d48: $00
	ld   bc, $6d01                                   ; $5d49: $01 $01 $6d
	add  h                                           ; $5d4c: $84
	and  c                                           ; $5d4d: $a1
	sbc  [hl]                                        ; $5d4e: $9e
	ld   b, $20                                      ; $5d4f: $06 $20
	ld   h, c                                        ; $5d51: $61
	add  h                                           ; $5d52: $84
	inc  bc                                          ; $5d53: $03
	jp   $9b6e                                       ; $5d54: $c3 $6e $9b


	ld   d, h                                        ; $5d57: $54
	sbc  a                                           ; $5d58: $9f
	dec  c                                           ; $5d59: $0d
	ld   d, h                                        ; $5d5a: $54
	and  c                                           ; $5d5b: $a1
	sbc  a                                           ; $5d5c: $9f
	ld   l, e                                        ; $5d5d: $6b
	ld   d, h                                        ; $5d5e: $54
	ld   l, [hl]                                     ; $5d5f: $6e
	sbc  a                                           ; $5d60: $9f
	dec  c                                           ; $5d61: $0d
	ld   l, e                                        ; $5d62: $6b
	sbc  d                                           ; $5d63: $9a
	ld   a, c                                        ; $5d64: $79
	ld   l, a                                        ; $5d65: $6f
	ld   e, d                                        ; $5d66: $5a
	ld   d, d                                        ; $5d67: $52
	ld   a, b                                        ; $5d68: $78
	ld   d, d                                        ; $5d69: $52
	sbc  a                                           ; $5d6a: $9f
	dec  c                                           ; $5d6b: $0d
	nop                                              ; $5d6c: $00
	ld   a, [bc]                                     ; $5d6d: $0a
	ld   b, $04                                      ; $5d6e: $06 $04
	inc  b                                           ; $5d70: $04
	ld   bc, $6903                                   ; $5d71: $01 $03 $69
	ld   [bc], a                                     ; $5d74: $02
	xor  d                                           ; $5d75: $aa
	ld   a, l                                        ; $5d76: $7d
	ld   b, $5b                                      ; $5d77: $06 $5b
	ld   h, e                                        ; $5d79: $63
	and  c                                           ; $5d7a: $a1
	ld   l, [hl]                                     ; $5d7b: $6e
	sbc  a                                           ; $5d7c: $9f
	dec  c                                           ; $5d7d: $0d
	ld   d, [hl]                                     ; $5d7e: $56
	db   $fc                                         ; $5d7f: $fc
	halt                                             ; $5d80: $76
	rst  $38                                         ; $5d81: $ff
	sbc  [hl]                                        ; $5d82: $9e
	ld   a, b                                        ; $5d83: $78
	and  c                                           ; $5d84: $a1
	ld   l, [hl]                                     ; $5d85: $6e
	ld   [hl], c                                     ; $5d86: $71
	ld   e, a                                        ; $5d87: $5f
	ld   sp, hl                                      ; $5d88: $f9
	dec  c                                           ; $5d89: $0d
	nop                                              ; $5d8a: $00
	ld   a, [bc]                                     ; $5d8b: $0a
	add  hl, de                                      ; $5d8c: $19
	dec  b                                           ; $5d8d: $05
	inc  bc                                          ; $5d8e: $03
	ld   b, $04                                      ; $5d8f: $06 $04
	ld   e, l                                        ; $5d91: $5d
	dec  b                                           ; $5d92: $05
	ld   d, c                                        ; $5d93: $51
	ld   d, d                                        ; $5d94: $52
	inc  b                                           ; $5d95: $04
	xor  d                                           ; $5d96: $aa
	inc  b                                           ; $5d97: $04
	adc  a                                           ; $5d98: $8f
	inc  bc                                          ; $5d99: $03
	jp   $0000                                      ; $5d9a: $c3 $00 $00


	ld   b, $04                                      ; $5d9d: $06 $04
	ld   e, l                                        ; $5d9f: $5d
	ld   d, h                                        ; $5da0: $54
	ld   h, a                                        ; $5da1: $67
	adc  a                                           ; $5da2: $8f
	ld   a, h                                        ; $5da3: $7c
	inc  b                                           ; $5da4: $04
	xor  d                                           ; $5da5: $aa
	inc  b                                           ; $5da6: $04
	adc  a                                           ; $5da7: $8f
	inc  bc                                          ; $5da8: $03
	jp   Boot                                        ; $5da9: $c3 $00 $01


	ld   b, $04                                      ; $5dac: $06 $04
	ld   e, l                                        ; $5dae: $5d
	dec  b                                           ; $5daf: $05
	ld   d, c                                        ; $5db0: $51
	ld   d, d                                        ; $5db1: $52
	ld   [bc], a                                     ; $5db2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5db3: $cf
	inc  bc                                          ; $5db4: $03
	jp   $0200                                       ; $5db5: $c3 $00 $02


	rlca                                             ; $5db8: $07
	ld   l, c                                        ; $5db9: $69
	inc  b                                           ; $5dba: $04
	ld   [bc], a                                     ; $5dbb: $02
	inc  bc                                          ; $5dbc: $03
	ld   bc, $2000                                   ; $5dbd: $01 $00 $20
	nop                                              ; $5dc0: $00
	rlca                                             ; $5dc1: $07
	sub  c                                           ; $5dc2: $91
	inc  b                                           ; $5dc3: $04
	ld   [bc], a                                     ; $5dc4: $02
	inc  bc                                          ; $5dc5: $03
	ld   bc, $2001                                   ; $5dc6: $01 $01 $20
	nop                                              ; $5dc9: $00
	rlca                                             ; $5dca: $07
	cp   e                                           ; $5dcb: $bb
	inc  b                                           ; $5dcc: $04
	ld   [bc], a                                     ; $5dcd: $02
	inc  bc                                          ; $5dce: $03
	ld   bc, $2002                                   ; $5dcf: $01 $02 $20
	nop                                              ; $5dd2: $00
	ld   b, $e2                                      ; $5dd3: $06 $e2
	inc  b                                           ; $5dd5: $04
	rrca                                             ; $5dd6: $0f
	nop                                              ; $5dd7: $00
	ld   bc, $5001                                   ; $5dd8: $01 $01 $50
	ld   [hl], d                                     ; $5ddb: $72
	ld   d, b                                        ; $5ddc: $50
	ld   [hl], d                                     ; $5ddd: $72
	ld   [hl], l                                     ; $5dde: $75
	sbc  [hl]                                        ; $5ddf: $9e
	dec  b                                           ; $5de0: $05
	ld   d, c                                        ; $5de1: $51
	ld   d, d                                        ; $5de2: $52
	inc  b                                           ; $5de3: $04
	xor  d                                           ; $5de4: $aa
	inc  b                                           ; $5de5: $04
	adc  a                                           ; $5de6: $8f
	inc  bc                                          ; $5de7: $03
	jp   $000d                                       ; $5de8: $c3 $0d $00


	dec  b                                           ; $5deb: $05
	add  b                                           ; $5dec: $80
	or   c                                           ; $5ded: $b1
	ld   bc, $0001                                   ; $5dee: $01 $01 $00
	ld   bc, $716e                                   ; $5df1: $01 $6e $71
	ld   l, l                                        ; $5df4: $6d
	sub  [hl]                                        ; $5df5: $96
	ld   a, b                                        ; $5df6: $78
	sbc  a                                           ; $5df7: $9f
	dec  c                                           ; $5df8: $0d
	nop                                              ; $5df9: $00
	ld   a, [bc]                                     ; $5dfa: $0a
	ld   b, $0a                                      ; $5dfb: $06 $0a
	dec  b                                           ; $5dfd: $05
	rrca                                             ; $5dfe: $0f
	nop                                              ; $5dff: $00
	ld   bc, $0601                                   ; $5e00: $01 $01 $06
	inc  b                                           ; $5e03: $04
	ld   e, l                                        ; $5e04: $5d
	ld   [hl], h                                     ; $5e05: $74
	ld   d, h                                        ; $5e06: $54
	ld   h, a                                        ; $5e07: $67
	adc  a                                           ; $5e08: $8f
	ld   a, h                                        ; $5e09: $7c
	inc  b                                           ; $5e0a: $04
	xor  d                                           ; $5e0b: $aa
	inc  b                                           ; $5e0c: $04
	adc  a                                           ; $5e0d: $8f
	inc  bc                                          ; $5e0e: $03
	jp   $ffff                                       ; $5e0f: $c3 $ff $ff


	dec  c                                           ; $5e12: $0d
	ld   l, [hl]                                     ; $5e13: $6e
	ld   [hl], c                                     ; $5e14: $71
	ld   l, l                                        ; $5e15: $6d
	sub  [hl]                                        ; $5e16: $96
	ld   d, h                                        ; $5e17: $54
	ld   a, b                                        ; $5e18: $78
	ld   [bc], a                                     ; $5e19: $02
	and  c                                           ; $5e1a: $a1
	ld   e, d                                        ; $5e1b: $5a
	ld   h, a                                        ; $5e1c: $67
	sbc  c                                           ; $5e1d: $99
	ld   a, b                                        ; $5e1e: $78
	ld   c, a                                        ; $5e1f: $4f
	db   $fc                                         ; $5e20: $fc
	sbc  a                                           ; $5e21: $9f
	dec  c                                           ; $5e22: $0d
	nop                                              ; $5e23: $00
	ld   a, [bc]                                     ; $5e24: $0a
	ld   b, $0a                                      ; $5e25: $06 $0a
	dec  b                                           ; $5e27: $05
	rrca                                             ; $5e28: $0f
	nop                                              ; $5e29: $00
	ld   bc, $5001                                   ; $5e2a: $01 $01 $50
	ld   [hl], d                                     ; $5e2d: $72
	ld   d, b                                        ; $5e2e: $50
	ld   [hl], d                                     ; $5e2f: $72
	ld   [hl], l                                     ; $5e30: $75
	sbc  [hl]                                        ; $5e31: $9e
	dec  b                                           ; $5e32: $05
	ld   d, c                                        ; $5e33: $51
	ld   d, d                                        ; $5e34: $52
	ld   [bc], a                                     ; $5e35: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e36: $cf
	inc  bc                                          ; $5e37: $03
	jp   Jump_05c_6e0d                               ; $5e38: $c3 $0d $6e


	ld   [hl], c                                     ; $5e3b: $71
	ld   l, l                                        ; $5e3c: $6d
	sub  [hl]                                        ; $5e3d: $96
	ld   d, h                                        ; $5e3e: $54
	ld   a, b                                        ; $5e3f: $78
	ld   [bc], a                                     ; $5e40: $02
	and  c                                           ; $5e41: $a1
	ld   e, d                                        ; $5e42: $5a
	ld   h, a                                        ; $5e43: $67
	sbc  c                                           ; $5e44: $99
	ld   a, b                                        ; $5e45: $78
	ld   c, a                                        ; $5e46: $4f
	db   $fc                                         ; $5e47: $fc
	sbc  a                                           ; $5e48: $9f
	dec  c                                           ; $5e49: $0d
	nop                                              ; $5e4a: $00
	ld   a, [bc]                                     ; $5e4b: $0a
	ld   b, $0a                                      ; $5e4c: $06 $0a
	dec  b                                           ; $5e4e: $05
	rrca                                             ; $5e4f: $0f
	nop                                              ; $5e50: $00
	ld   bc, $6d01                                   ; $5e51: $01 $01 $6d
	add  h                                           ; $5e54: $84
	and  c                                           ; $5e55: $a1
	sbc  [hl]                                        ; $5e56: $9e
	ld   [bc], a                                     ; $5e57: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e58: $cf
	inc  bc                                          ; $5e59: $03
	jp   $9b6e                                       ; $5e5a: $c3 $6e $9b


	ld   d, h                                        ; $5e5d: $54
	sbc  a                                           ; $5e5e: $9f
	dec  c                                           ; $5e5f: $0d
	ld   d, h                                        ; $5e60: $54
	and  c                                           ; $5e61: $a1
	sbc  a                                           ; $5e62: $9f
	ld   l, e                                        ; $5e63: $6b
	ld   d, h                                        ; $5e64: $54
	ld   l, [hl]                                     ; $5e65: $6e
	sbc  a                                           ; $5e66: $9f
	dec  c                                           ; $5e67: $0d
	ld   l, e                                        ; $5e68: $6b
	sbc  d                                           ; $5e69: $9a
	ld   a, c                                        ; $5e6a: $79
	ld   l, a                                        ; $5e6b: $6f
	ld   e, d                                        ; $5e6c: $5a
	ld   d, d                                        ; $5e6d: $52
	ld   a, b                                        ; $5e6e: $78
	ld   d, d                                        ; $5e6f: $52
	sbc  a                                           ; $5e70: $9f
	dec  c                                           ; $5e71: $0d
	nop                                              ; $5e72: $00
	ld   a, [bc]                                     ; $5e73: $0a
	ld   b, $0a                                      ; $5e74: $06 $0a
	dec  b                                           ; $5e76: $05
	ld   bc, $6596                                   ; $5e77: $01 $96 $65
	sbc  [hl]                                        ; $5e7a: $9e
	inc  b                                           ; $5e7b: $04
	di                                               ; $5e7c: $f3
	ld   [bc], a                                     ; $5e7d: $02
	ld   b, $75                                      ; $5e7e: $06 $75
	ld   e, e                                        ; $5e80: $5b
	ld   l, l                                        ; $5e81: $6d
	sbc  a                                           ; $5e82: $9f
	dec  c                                           ; $5e83: $0d
	nop                                              ; $5e84: $00
	ld   a, [bc]                                     ; $5e85: $0a
	inc  c                                           ; $5e86: $0c
	ld   [bc], a                                     ; $5e87: $02
	ld   c, $2f                                      ; $5e88: $0e $2f
	rrca                                             ; $5e8a: $0f
	nop                                              ; $5e8b: $00
	ld   bc, $5801                                   ; $5e8c: $01 $01 $58
	inc  b                                           ; $5e8f: $04
	rla                                              ; $5e90: $17
	ld   l, l                                        ; $5e91: $6d
	ld   l, c                                        ; $5e92: $69
	ld   h, l                                        ; $5e93: $65
	adc  h                                           ; $5e94: $8c
	ld   h, l                                        ; $5e95: $65
	ld   l, l                                        ; $5e96: $6d
	sbc  a                                           ; $5e97: $9f
	dec  c                                           ; $5e98: $0d
	nop                                              ; $5e99: $00
	ld   a, [bc]                                     ; $5e9a: $0a
	ld   bc, $527d                                   ; $5e9b: $01 $7d $52
	sbc  [hl]                                        ; $5e9e: $9e
	ld   e, c                                        ; $5e9f: $59
	ld   h, a                                        ; $5ea0: $67
	adc  l                                           ; $5ea1: $8d
	ld   h, e                                        ; $5ea2: $63
	and  c                                           ; $5ea3: $a1
	sbc  a                                           ; $5ea4: $9f
	dec  c                                           ; $5ea5: $0d
	ld   a, l                                        ; $5ea6: $7d
	ld   d, d                                        ; $5ea7: $52
	sbc  [hl]                                        ; $5ea8: $9e
	inc  b                                           ; $5ea9: $04
	pop  hl                                          ; $5eaa: $e1
	inc  b                                           ; $5eab: $04
	rst  $38                                         ; $5eac: $ff
	ld   h, e                                        ; $5ead: $63
	and  c                                           ; $5eae: $a1
	sbc  a                                           ; $5eaf: $9f
	dec  c                                           ; $5eb0: $0d
	ld   a, l                                        ; $5eb1: $7d
	ld   d, d                                        ; $5eb2: $52
	sbc  [hl]                                        ; $5eb3: $9e
	ld   b, $5b                                      ; $5eb4: $06 $5b
	ld   h, e                                        ; $5eb6: $63
	and  c                                           ; $5eb7: $a1
	sbc  a                                           ; $5eb8: $9f
	dec  c                                           ; $5eb9: $0d
	nop                                              ; $5eba: $00
	ld   a, [bc]                                     ; $5ebb: $0a
	rlca                                             ; $5ebc: $07
	rst  JumpTable                                         ; $5ebd: $df
	add  hl, bc                                      ; $5ebe: $09
	inc  b                                           ; $5ebf: $04
	add  b                                           ; $5ec0: $80
	xor  a                                           ; $5ec1: $af
	ld   bc, $20ff                                   ; $5ec2: $01 $ff $20
	inc  b                                           ; $5ec5: $04
	add  b                                           ; $5ec6: $80
	or   b                                           ; $5ec7: $b0
	ld   bc, $20ff                                   ; $5ec8: $01 $ff $20
	inc  e                                           ; $5ecb: $1c
	inc  b                                           ; $5ecc: $04
	add  b                                           ; $5ecd: $80
	or   c                                           ; $5ece: $b1
	ld   bc, $20ff                                   ; $5ecf: $01 $ff $20
	inc  e                                           ; $5ed2: $1c
	nop                                              ; $5ed3: $00
	rlca                                             ; $5ed4: $07
	db   $e3                                         ; $5ed5: $e3
	rlca                                             ; $5ed6: $07
	inc  b                                           ; $5ed7: $04
	add  b                                           ; $5ed8: $80
	xor  a                                           ; $5ed9: $af
	ld   bc, $2000                                   ; $5eda: $01 $00 $20
	inc  b                                           ; $5edd: $04
	add  b                                           ; $5ede: $80
	or   b                                           ; $5edf: $b0
	ld   bc, $20ff                                   ; $5ee0: $01 $ff $20
	inc  e                                           ; $5ee3: $1c
	inc  b                                           ; $5ee4: $04
	add  b                                           ; $5ee5: $80
	or   c                                           ; $5ee6: $b1
	ld   bc, $20ff                                   ; $5ee7: $01 $ff $20
	inc  e                                           ; $5eea: $1c
	nop                                              ; $5eeb: $00
	rlca                                             ; $5eec: $07
	cp   d                                           ; $5eed: $ba
	dec  bc                                          ; $5eee: $0b
	inc  b                                           ; $5eef: $04
	add  b                                           ; $5ef0: $80
	xor  a                                           ; $5ef1: $af
	ld   bc, $20ff                                   ; $5ef2: $01 $ff $20
	inc  b                                           ; $5ef5: $04
	add  b                                           ; $5ef6: $80
	or   b                                           ; $5ef7: $b0
	ld   bc, $2000                                   ; $5ef8: $01 $00 $20
	inc  e                                           ; $5efb: $1c
	inc  b                                           ; $5efc: $04
	add  b                                           ; $5efd: $80
	or   c                                           ; $5efe: $b1
	ld   bc, $2000                                   ; $5eff: $01 $00 $20
	inc  e                                           ; $5f02: $1c
	nop                                              ; $5f03: $00
	rlca                                             ; $5f04: $07
	ld   a, e                                        ; $5f05: $7b
	ld   [$8004], sp                                 ; $5f06: $08 $04 $80
	xor  a                                           ; $5f09: $af
	ld   bc, $20ff                                   ; $5f0a: $01 $ff $20
	inc  b                                           ; $5f0d: $04
	add  b                                           ; $5f0e: $80
	or   b                                           ; $5f0f: $b0
	ld   bc, $2000                                   ; $5f10: $01 $00 $20
	inc  e                                           ; $5f13: $1c
	inc  b                                           ; $5f14: $04
	add  b                                           ; $5f15: $80
	or   c                                           ; $5f16: $b1
	ld   bc, $20ff                                   ; $5f17: $01 $ff $20
	inc  e                                           ; $5f1a: $1c
	nop                                              ; $5f1b: $00
	rlca                                             ; $5f1c: $07
	or   c                                           ; $5f1d: $b1
	inc  c                                           ; $5f1e: $0c
	inc  b                                           ; $5f1f: $04
	add  b                                           ; $5f20: $80
	xor  a                                           ; $5f21: $af
	ld   bc, $2000                                   ; $5f22: $01 $00 $20
	inc  b                                           ; $5f25: $04
	add  b                                           ; $5f26: $80
	or   b                                           ; $5f27: $b0
	ld   bc, $20ff                                   ; $5f28: $01 $ff $20
	inc  e                                           ; $5f2b: $1c
	inc  b                                           ; $5f2c: $04
	add  b                                           ; $5f2d: $80
	or   c                                           ; $5f2e: $b1
	ld   bc, $2000                                   ; $5f2f: $01 $00 $20
	inc  e                                           ; $5f32: $1c
	nop                                              ; $5f33: $00
	rlca                                             ; $5f34: $07
	add  hl, hl                                      ; $5f35: $29
	add  hl, bc                                      ; $5f36: $09
	inc  b                                           ; $5f37: $04
	add  b                                           ; $5f38: $80
	xor  a                                           ; $5f39: $af
	ld   bc, $20ff                                   ; $5f3a: $01 $ff $20
	inc  b                                           ; $5f3d: $04
	add  b                                           ; $5f3e: $80
	or   b                                           ; $5f3f: $b0
	ld   bc, $20ff                                   ; $5f40: $01 $ff $20
	inc  e                                           ; $5f43: $1c
	inc  b                                           ; $5f44: $04
	add  b                                           ; $5f45: $80
	or   c                                           ; $5f46: $b1
	ld   bc, $2000                                   ; $5f47: $01 $00 $20
	inc  e                                           ; $5f4a: $1c
	nop                                              ; $5f4b: $00
	rlca                                             ; $5f4c: $07
	adc  [hl]                                        ; $5f4d: $8e
	dec  c                                           ; $5f4e: $0d
	inc  b                                           ; $5f4f: $04
	add  b                                           ; $5f50: $80
	xor  a                                           ; $5f51: $af
	ld   bc, $2000                                   ; $5f52: $01 $00 $20
	inc  b                                           ; $5f55: $04
	add  b                                           ; $5f56: $80
	or   b                                           ; $5f57: $b0
	ld   bc, $2000                                   ; $5f58: $01 $00 $20
	inc  e                                           ; $5f5b: $1c
	inc  b                                           ; $5f5c: $04
	add  b                                           ; $5f5d: $80
	or   c                                           ; $5f5e: $b1
	ld   bc, $20ff                                   ; $5f5f: $01 $ff $20
	inc  e                                           ; $5f62: $1c
	nop                                              ; $5f63: $00
	inc  e                                           ; $5f64: $1c
	inc  c                                           ; $5f65: $0c
	inc  bc                                          ; $5f66: $03
	inc  bc                                          ; $5f67: $03
	ld   bc, $9750                                   ; $5f68: $01 $50 $97
	sbc  [hl]                                        ; $5f6b: $9e
	sbc  l                                           ; $5f6c: $9d
	ld   l, l                                        ; $5f6d: $6d
	ld   h, l                                        ; $5f6e: $65
	ld   a, l                                        ; $5f6f: $7d
	sbc  [hl]                                        ; $5f70: $9e
	ld   a, d                                        ; $5f71: $7a
	sbc  c                                           ; $5f72: $99
	adc  a                                           ; $5f73: $8f
	ld   a, h                                        ; $5f74: $7c
	dec  c                                           ; $5f75: $0d
	inc  b                                           ; $5f76: $04
	xor  d                                           ; $5f77: $aa
	inc  b                                           ; $5f78: $04
	adc  a                                           ; $5f79: $8f
	inc  bc                                          ; $5f7a: $03
	jp   Jump_05c_58a0                               ; $5f7b: $c3 $a0 $58


	ld   [bc], a                                     ; $5f7e: $02
	add  b                                           ; $5f7f: $80
	ld   d, d                                        ; $5f80: $52
	ld   h, l                                        ; $5f81: $65
	ld   l, l                                        ; $5f82: $6d
	ld   a, l                                        ; $5f83: $7d
	ld   l, b                                        ; $5f84: $68
	dec  c                                           ; $5f85: $0d
	ld   [hl], l                                     ; $5f86: $75
	ld   h, a                                        ; $5f87: $67
	ld   e, a                                        ; $5f88: $5f
	ld   [hl], a                                     ; $5f89: $77
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	dec  c                                           ; $5f8c: $0d
	nop                                              ; $5f8d: $00
	ld   a, [bc]                                     ; $5f8e: $0a
	inc  e                                           ; $5f8f: $1c
	dec  c                                           ; $5f90: $0d
	ld   [bc], a                                     ; $5f91: $02
	ld   [bc], a                                     ; $5f92: $02
	ld   bc, $6d50                                   ; $5f93: $01 $50 $6d
	ld   h, l                                        ; $5f96: $65
	ld   a, l                                        ; $5f97: $7d
	sbc  [hl]                                        ; $5f98: $9e
	xor  $e4                                         ; $5f99: $ee $e4
	push af                                          ; $5f9b: $f5
	rst  ToBoot                                         ; $5f9c: $c7
	and  h                                           ; $5f9d: $a4
	ei                                               ; $5f9e: $fb
	and  b                                           ; $5f9f: $a0
	dec  c                                           ; $5fa0: $0d
	ld   e, b                                        ; $5fa1: $58
	ld   [bc], a                                     ; $5fa2: $02
	add  b                                           ; $5fa3: $80
	ld   d, d                                        ; $5fa4: $52
	ld   h, l                                        ; $5fa5: $65
	ld   l, l                                        ; $5fa6: $6d
	ld   a, l                                        ; $5fa7: $7d
	ld   l, b                                        ; $5fa8: $68
	sub  [hl]                                        ; $5fa9: $96
	sbc  a                                           ; $5faa: $9f
	dec  c                                           ; $5fab: $0d
	nop                                              ; $5fac: $00
	ld   a, [bc]                                     ; $5fad: $0a
	inc  e                                           ; $5fae: $1c
	ld   c, $02                                      ; $5faf: $0e $02
	ld   [bc], a                                     ; $5fb1: $02
	ld   bc, $6d50                                   ; $5fb2: $01 $50 $6d
	ld   h, l                                        ; $5fb5: $65
	ld   a, l                                        ; $5fb6: $7d
	sbc  [hl]                                        ; $5fb7: $9e
	ld   d, b                                        ; $5fb8: $50
	ld   [hl], d                                     ; $5fb9: $72
	ld   d, b                                        ; $5fba: $50
	ld   [hl], d                                     ; $5fbb: $72
	ld   [hl], l                                     ; $5fbc: $75
	dec  b                                           ; $5fbd: $05
	ld   d, c                                        ; $5fbe: $51
	ld   d, d                                        ; $5fbf: $52
	adc  a                                           ; $5fc0: $8f
	ld   a, h                                        ; $5fc1: $7c
	dec  c                                           ; $5fc2: $0d
	inc  b                                           ; $5fc3: $04
	xor  d                                           ; $5fc4: $aa
	inc  b                                           ; $5fc5: $04
	adc  a                                           ; $5fc6: $8f
	inc  bc                                          ; $5fc7: $03
	jp   Jump_05c_58a0                               ; $5fc8: $c3 $a0 $58


	ld   [bc], a                                     ; $5fcb: $02
	add  b                                           ; $5fcc: $80
	ld   d, d                                        ; $5fcd: $52
	ld   h, l                                        ; $5fce: $65
	ld   l, l                                        ; $5fcf: $6d
	ld   a, h                                        ; $5fd0: $7c
	ld   a, c                                        ; $5fd1: $79
	db   $fc                                         ; $5fd2: $fc
	sbc  a                                           ; $5fd3: $9f
	dec  c                                           ; $5fd4: $0d
	nop                                              ; $5fd5: $00
	ld   a, [bc]                                     ; $5fd6: $0a
	rrca                                             ; $5fd7: $0f
	nop                                              ; $5fd8: $00
	ld   bc, $6701                                   ; $5fd9: $01 $01 $67
	sbc  [hl]                                        ; $5fdc: $9e
	ld   h, a                                        ; $5fdd: $67
	adc  l                                           ; $5fde: $8d
	adc  h                                           ; $5fdf: $8c
	ld   l, c                                        ; $5fe0: $69
	and  c                                           ; $5fe1: $a1
	sbc  a                                           ; $5fe2: $9f
	dec  c                                           ; $5fe3: $0d
	nop                                              ; $5fe4: $00
	ld   a, [bc]                                     ; $5fe5: $0a
	inc  e                                           ; $5fe6: $1c
	inc  c                                           ; $5fe7: $0c
	nop                                              ; $5fe8: $00
	nop                                              ; $5fe9: $00
	ld   bc, $508c                                   ; $5fea: $01 $8c $50
	sbc  [hl]                                        ; $5fed: $9e
	adc  h                                           ; $5fee: $8c
	ld   d, b                                        ; $5fef: $50
	sbc  a                                           ; $5ff0: $9f
	dec  c                                           ; $5ff1: $0d
	ld   l, c                                        ; $5ff2: $69
	ld   [hl], c                                     ; $5ff3: $71
	ld   e, c                                        ; $5ff4: $59
	ld   e, l                                        ; $5ff5: $5d
	ld   [$6300], sp                                 ; $5ff6: $08 $00 $63
	and  c                                           ; $5ff9: $a1
	ld   e, d                                        ; $5ffa: $5a
	dec  c                                           ; $5ffb: $0d
	inc  b                                           ; $5ffc: $04
	ld   b, l                                        ; $5ffd: $45
	sbc  d                                           ; $5ffe: $9a
	ld   [hl], h                                     ; $5fff: $74
	ld   e, l                                        ; $6000: $5d
	sbc  d                                           ; $6001: $9a
	ld   l, l                                        ; $6002: $6d
	and  c                                           ; $6003: $a1
	ld   l, [hl]                                     ; $6004: $6e
	ld   h, l                                        ; $6005: $65
	sbc  a                                           ; $6006: $9f
	dec  c                                           ; $6007: $0d
	nop                                              ; $6008: $00
	ld   a, [bc]                                     ; $6009: $0a
	ld   bc, $9a61                                   ; $600a: $01 $61 $9a
	ld   [hl], l                                     ; $600d: $75
	sbc  [hl]                                        ; $600e: $9e
	ld   d, d                                        ; $600f: $52
	ld   l, l                                        ; $6010: $6d
	ld   l, [hl]                                     ; $6011: $6e
	ld   e, e                                        ; $6012: $5b
	adc  h                                           ; $6013: $8c
	ld   h, l                                        ; $6014: $65
	sub  l                                           ; $6015: $95
	sbc  a                                           ; $6016: $9f
	dec  c                                           ; $6017: $0d
	nop                                              ; $6018: $00
	ld   a, [bc]                                     ; $6019: $0a
	rrca                                             ; $601a: $0f
	dec  c                                           ; $601b: $0d
	nop                                              ; $601c: $00
	ld   bc, $9e8c                                   ; $601d: $01 $8c $9e
	ld   h, l                                        ; $6020: $65
	ld   e, c                                        ; $6021: $59
	ld   l, l                                        ; $6022: $6d
	ld   a, b                                        ; $6023: $78
	ld   d, d                                        ; $6024: $52
	sbc  l                                           ; $6025: $9d
	ld   a, e                                        ; $6026: $7b
	sbc  a                                           ; $6027: $9f
	dec  c                                           ; $6028: $0d
	ld   d, d                                        ; $6029: $52
	ld   l, l                                        ; $602a: $6d
	ld   l, [hl]                                     ; $602b: $6e
	ld   e, e                                        ; $602c: $5b
	adc  h                                           ; $602d: $8c
	ei                                               ; $602e: $fb
	ld   h, a                                        ; $602f: $67
	sbc  a                                           ; $6030: $9f
	dec  c                                           ; $6031: $0d
	nop                                              ; $6032: $00
	ld   a, [bc]                                     ; $6033: $0a
	inc  e                                           ; $6034: $1c
	ld   c, $00                                      ; $6035: $0e $00
	nop                                              ; $6037: $00
	ld   bc, $fc7d                                   ; $6038: $01 $7d $fc
	ld   d, d                                        ; $603b: $52
	sbc  a                                           ; $603c: $9f
	dec  c                                           ; $603d: $0d
	ld   d, d                                        ; $603e: $52
	ld   l, l                                        ; $603f: $6d
	ld   l, [hl]                                     ; $6040: $6e
	ld   e, e                                        ; $6041: $5b
	adc  h                                           ; $6042: $8c
	ld   h, a                                        ; $6043: $67
	sbc  a                                           ; $6044: $9f
	dec  c                                           ; $6045: $0d
	nop                                              ; $6046: $00
	ld   a, [bc]                                     ; $6047: $0a
	inc  e                                           ; $6048: $1c
	inc  c                                           ; $6049: $0c
	ld   bc, $0101                                   ; $604a: $01 $01 $01
	ld   h, e                                        ; $604d: $63
	sbc  [hl]                                        ; $604e: $9e
	ld   [$6300], sp                                 ; $604f: $08 $00 $63
	and  c                                           ; $6052: $a1
	sub  b                                           ; $6053: $90
	dec  c                                           ; $6054: $0d
	ld   l, e                                        ; $6055: $6b
	and  c                                           ; $6056: $a1
	ld   a, b                                        ; $6057: $78
	halt                                             ; $6058: $76
	ld   h, c                                        ; $6059: $61
	sbc  e                                           ; $605a: $9b
	ld   a, c                                        ; $605b: $79
	dec  b                                           ; $605c: $05
	ld   d, $71                                      ; $605d: $16 $71
	ld   [hl], h                                     ; $605f: $74
	ld   a, b                                        ; $6060: $78
	ld   d, d                                        ; $6061: $52
	ld   [hl], l                                     ; $6062: $75
	sbc  [hl]                                        ; $6063: $9e
	dec  c                                           ; $6064: $0d
	inc  bc                                          ; $6065: $03
	ld   d, h                                        ; $6066: $54
	ld   [hl], c                                     ; $6067: $71
	ld   [hl], h                                     ; $6068: $74
	ld   [hl], a                                     ; $6069: $77
	ld   d, h                                        ; $606a: $54
	ld   l, h                                        ; $606b: $6c
	sbc  a                                           ; $606c: $9f
	dec  c                                           ; $606d: $0d
	nop                                              ; $606e: $00
	ld   a, [bc]                                     ; $606f: $0a
	rrca                                             ; $6070: $0f
	nop                                              ; $6071: $00
	ld   bc, $7d01                                   ; $6072: $01 $01 $7d
	ld   d, d                                        ; $6075: $52
	ld   a, [$5210]                                  ; $6076: $fa $10 $52
	ld   l, l                                        ; $6079: $6d
	ld   l, [hl]                                     ; $607a: $6e
	ld   e, e                                        ; $607b: $5b
	adc  h                                           ; $607c: $8c
	ld   h, a                                        ; $607d: $67
	sbc  a                                           ; $607e: $9f
	dec  c                                           ; $607f: $0d
	nop                                              ; $6080: $00
	ld   a, [bc]                                     ; $6081: $0a
	ld   bc, $9a61                                   ; $6082: $01 $61 $9a
	ld   a, l                                        ; $6085: $7d
	sbc  [hl]                                        ; $6086: $9e
	ld   e, b                                        ; $6087: $58
	ld   d, d                                        ; $6088: $52
	ld   h, l                                        ; $6089: $65
	ld   d, d                                        ; $608a: $52
	ld   a, [$580d]                                  ; $608b: $fa $0d $58
	ld   d, d                                        ; $608e: $52
	ld   h, l                                        ; $608f: $65
	ld   d, d                                        ; $6090: $52
	ld   [hl], l                                     ; $6091: $75
	ld   h, a                                        ; $6092: $67
	sub  [hl]                                        ; $6093: $96
	sbc  [hl]                                        ; $6094: $9e
	ld   e, c                                        ; $6095: $59
	ld   h, a                                        ; $6096: $67
	adc  l                                           ; $6097: $8d
	ld   h, e                                        ; $6098: $63
	and  c                                           ; $6099: $a1
	sbc  a                                           ; $609a: $9f
	dec  c                                           ; $609b: $0d
	nop                                              ; $609c: $00
	ld   a, [bc]                                     ; $609d: $0a
	inc  e                                           ; $609e: $1c
	inc  c                                           ; $609f: $0c
	ld   bc, $0101                                   ; $60a0: $01 $01 $01
	ld   l, e                                        ; $60a3: $6b
	ld   d, h                                        ; $60a4: $54
	sbc  [hl]                                        ; $60a5: $9e
	sub  [hl]                                        ; $60a6: $96
	ld   e, c                                        ; $60a7: $59
	ld   [hl], c                                     ; $60a8: $71
	ld   l, l                                        ; $60a9: $6d
	sbc  a                                           ; $60aa: $9f
	dec  c                                           ; $60ab: $0d
	inc  b                                           ; $60ac: $04
	dec  c                                           ; $60ad: $0d
	ld   [bc], a                                     ; $60ae: $02
	sub  [hl]                                        ; $60af: $96
	inc  b                                           ; $60b0: $04
	ld   b, l                                        ; $60b1: $45
	inc  b                                           ; $60b2: $04
	ld   a, [bc]                                     ; $60b3: $0a
	sub  b                                           ; $60b4: $90
	ld   d, b                                        ; $60b5: $50
	halt                                             ; $60b6: $76
	sbc  l                                           ; $60b7: $9d
	ld   l, b                                        ; $60b8: $68
	ld   e, c                                        ; $60b9: $59
	ld   l, [hl]                                     ; $60ba: $6e
	ld   e, a                                        ; $60bb: $5f
	ld   [hl], a                                     ; $60bc: $77
	dec  c                                           ; $60bd: $0d
	ld   e, d                                        ; $60be: $5a
	and  c                                           ; $60bf: $a1
	ld   a, [hl]                                     ; $60c0: $7e
	ld   [hl], c                                     ; $60c1: $71
	ld   [hl], h                                     ; $60c2: $74
	ld   e, l                                        ; $60c3: $5d
	ld   l, [hl]                                     ; $60c4: $6e
	ld   h, e                                        ; $60c5: $63
	ld   d, d                                        ; $60c6: $52
	sbc  a                                           ; $60c7: $9f
	dec  c                                           ; $60c8: $0d
	nop                                              ; $60c9: $00
	ld   a, [bc]                                     ; $60ca: $0a
	inc  e                                           ; $60cb: $1c
	dec  c                                           ; $60cc: $0d
	nop                                              ; $60cd: $00
	nop                                              ; $60ce: $00
	ld   bc, $546b                                   ; $60cf: $01 $6b $54
	ld   l, e                                        ; $60d2: $6b
	ld   d, h                                        ; $60d3: $54
	sbc  a                                           ; $60d4: $9f
	dec  c                                           ; $60d5: $0d
	ld   d, b                                        ; $60d6: $50
	halt                                             ; $60d7: $76
	inc  bc                                          ; $60d8: $03
	ld   l, h                                        ; $60d9: $6c
	ld   h, l                                        ; $60da: $65
	ld   l, [hl]                                     ; $60db: $6e
	ld   e, c                                        ; $60dc: $59
	sub  a                                           ; $60dd: $97
	ld   [hl], c                                     ; $60de: $71
	ld   [hl], h                                     ; $60df: $74
	sbc  [hl]                                        ; $60e0: $9e
	dec  c                                           ; $60e1: $0d
	ld   [bc], a                                     ; $60e2: $02
	and  c                                           ; $60e3: $a1
	and  b                                           ; $60e4: $a0
	inc  b                                           ; $60e5: $04
	sub  h                                           ; $60e6: $94
	ld   d, d                                        ; $60e7: $52
	ld   l, a                                        ; $60e8: $6f
	sub  c                                           ; $60e9: $91
	ld   l, [hl]                                     ; $60ea: $6e
	adc  a                                           ; $60eb: $8f
	sub  [hl]                                        ; $60ec: $96
	sbc  a                                           ; $60ed: $9f
	dec  c                                           ; $60ee: $0d
	nop                                              ; $60ef: $00
	ld   a, [bc]                                     ; $60f0: $0a
	inc  e                                           ; $60f1: $1c
	ld   c, $01                                      ; $60f2: $0e $01
	ld   bc, $eb01                                   ; $60f4: $01 $01 $eb
	cp   d                                           ; $60f7: $ba
	ret                                              ; $60f8: $c9


	cp   d                                           ; $60f9: $ba
	jp   nc, $c9fb                                   ; $60fa: $d2 $fb $c9

	sbc  a                                           ; $60fd: $9f
	dec  c                                           ; $60fe: $0d
	ld   e, d                                        ; $60ff: $5a
	and  c                                           ; $6100: $a1
	ld   a, [hl]                                     ; $6101: $7e
	ld   [hl], c                                     ; $6102: $71
	ld   [hl], h                                     ; $6103: $74
	ld   e, l                                        ; $6104: $5d
	ld   l, [hl]                                     ; $6105: $6e
	ld   h, e                                        ; $6106: $63
	ld   d, d                                        ; $6107: $52
	ld   a, e                                        ; $6108: $7b
	sbc  a                                           ; $6109: $9f
	dec  c                                           ; $610a: $0d
	nop                                              ; $610b: $00
	ld   a, [bc]                                     ; $610c: $0a
	rrca                                             ; $610d: $0f
	nop                                              ; $610e: $00
	ld   bc, $7d01                                   ; $610f: $01 $01 $7d
	ld   d, d                                        ; $6112: $52
	sbc  [hl]                                        ; $6113: $9e
	ld   d, b                                        ; $6114: $50
	sbc  b                                           ; $6115: $98
	ld   e, d                                        ; $6116: $5a
	halt                                             ; $6117: $76
	ld   d, h                                        ; $6118: $54
	ld   h, d                                        ; $6119: $62
	ld   h, h                                        ; $611a: $64
	ld   d, d                                        ; $611b: $52
	adc  h                                           ; $611c: $8c
	ld   h, a                                        ; $611d: $67
	sbc  a                                           ; $611e: $9f
	dec  c                                           ; $611f: $0d
	ld   e, b                                        ; $6120: $58
	ld   d, d                                        ; $6121: $52
	ld   h, l                                        ; $6122: $65
	ld   e, c                                        ; $6123: $59
	ld   [hl], c                                     ; $6124: $71
	ld   l, l                                        ; $6125: $6d
	ld   [hl], l                                     ; $6126: $75
	ld   h, a                                        ; $6127: $67
	sbc  a                                           ; $6128: $9f
	dec  c                                           ; $6129: $0d
	ld   h, d                                        ; $612a: $62
	ld   l, a                                        ; $612b: $6f
	ld   l, e                                        ; $612c: $6b
	ld   d, h                                        ; $612d: $54
	ld   h, e                                        ; $612e: $63
	adc  h                                           ; $612f: $8c
	ld   [hl], l                                     ; $6130: $75
	ld   h, l                                        ; $6131: $65
	ld   l, l                                        ; $6132: $6d
	sbc  a                                           ; $6133: $9f
	dec  c                                           ; $6134: $0d
	nop                                              ; $6135: $00
	ld   a, [bc]                                     ; $6136: $0a
	inc  e                                           ; $6137: $1c
	inc  c                                           ; $6138: $0c
	ld   bc, $0101                                   ; $6139: $01 $01 $01
	ld   e, b                                        ; $613c: $58
	ld   l, e                                        ; $613d: $6b
	adc  h                                           ; $613e: $8c
	ld   [hl], d                                     ; $613f: $72
	ld   h, e                                        ; $6140: $63
	adc  h                                           ; $6141: $8c
	ld   [hl], l                                     ; $6142: $75
	ld   h, l                                        ; $6143: $65
	ld   l, l                                        ; $6144: $6d
	sbc  a                                           ; $6145: $9f
	dec  c                                           ; $6146: $0d
	nop                                              ; $6147: $00
	ld   a, [bc]                                     ; $6148: $0a
	dec  b                                           ; $6149: $05
	add  b                                           ; $614a: $80
	or   d                                           ; $614b: $b2
	ld   bc, $0001                                   ; $614c: $01 $01 $00
	nop                                              ; $614f: $00
	inc  e                                           ; $6150: $1c
	inc  c                                           ; $6151: $0c
	inc  bc                                          ; $6152: $03
	inc  bc                                          ; $6153: $03
	ld   bc, $9750                                   ; $6154: $01 $50 $97
	sbc  [hl]                                        ; $6157: $9e
	sbc  l                                           ; $6158: $9d
	ld   l, l                                        ; $6159: $6d
	ld   h, l                                        ; $615a: $65
	ld   a, l                                        ; $615b: $7d
	sbc  [hl]                                        ; $615c: $9e
	ld   a, d                                        ; $615d: $7a
	sbc  c                                           ; $615e: $99
	adc  a                                           ; $615f: $8f
	ld   a, h                                        ; $6160: $7c
	dec  c                                           ; $6161: $0d
	inc  b                                           ; $6162: $04
	xor  d                                           ; $6163: $aa
	inc  b                                           ; $6164: $04
	adc  a                                           ; $6165: $8f
	inc  bc                                          ; $6166: $03
	jp   Jump_05c_58a0                               ; $6167: $c3 $a0 $58


	ld   [bc], a                                     ; $616a: $02
	add  b                                           ; $616b: $80
	ld   d, d                                        ; $616c: $52
	ld   h, l                                        ; $616d: $65
	ld   l, l                                        ; $616e: $6d
	ld   a, l                                        ; $616f: $7d
	ld   l, b                                        ; $6170: $68
	dec  c                                           ; $6171: $0d
	ld   [hl], l                                     ; $6172: $75
	ld   h, a                                        ; $6173: $67
	ld   e, a                                        ; $6174: $5f
	ld   [hl], a                                     ; $6175: $77
	rst  $38                                         ; $6176: $ff
	rst  $38                                         ; $6177: $ff
	dec  c                                           ; $6178: $0d
	nop                                              ; $6179: $00
	ld   a, [bc]                                     ; $617a: $0a
	rrca                                             ; $617b: $0f
	nop                                              ; $617c: $00
	ld   bc, $6701                                   ; $617d: $01 $01 $67
	sbc  [hl]                                        ; $6180: $9e
	ld   h, a                                        ; $6181: $67
	adc  l                                           ; $6182: $8d
	adc  h                                           ; $6183: $8c
	ld   l, c                                        ; $6184: $69
	and  c                                           ; $6185: $a1
	sbc  a                                           ; $6186: $9f
	dec  c                                           ; $6187: $0d
	nop                                              ; $6188: $00
	ld   a, [bc]                                     ; $6189: $0a
	inc  e                                           ; $618a: $1c
	inc  c                                           ; $618b: $0c
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	ld   bc, $9075                                   ; $618e: $01 $75 $90
	sbc  [hl]                                        ; $6191: $9e
	adc  h                                           ; $6192: $8c
	ld   d, b                                        ; $6193: $50
	ld   l, c                                        ; $6194: $69
	ld   [hl], c                                     ; $6195: $71
	ld   e, c                                        ; $6196: $59
	ld   e, l                                        ; $6197: $5d
	dec  c                                           ; $6198: $0d
	ld   [$6300], sp                                 ; $6199: $08 $00 $63
	and  c                                           ; $619c: $a1
	ld   e, d                                        ; $619d: $5a
	dec  c                                           ; $619e: $0d
	inc  b                                           ; $619f: $04
	ld   b, l                                        ; $61a0: $45
	sbc  d                                           ; $61a1: $9a
	ld   [hl], h                                     ; $61a2: $74
	ld   e, l                                        ; $61a3: $5d
	sbc  d                                           ; $61a4: $9a
	ld   l, l                                        ; $61a5: $6d
	and  c                                           ; $61a6: $a1
	ld   l, [hl]                                     ; $61a7: $6e
	ld   h, l                                        ; $61a8: $65
	sbc  a                                           ; $61a9: $9f
	dec  c                                           ; $61aa: $0d
	nop                                              ; $61ab: $00
	ld   a, [bc]                                     ; $61ac: $0a
	ld   bc, $9a61                                   ; $61ad: $01 $61 $9a
	ld   [hl], l                                     ; $61b0: $75
	sbc  [hl]                                        ; $61b1: $9e
	ld   d, d                                        ; $61b2: $52
	ld   l, l                                        ; $61b3: $6d
	ld   l, [hl]                                     ; $61b4: $6e
	ld   e, e                                        ; $61b5: $5b
	adc  h                                           ; $61b6: $8c
	ld   h, a                                        ; $61b7: $67
	sbc  l                                           ; $61b8: $9d
	sbc  a                                           ; $61b9: $9f
	dec  c                                           ; $61ba: $0d
	nop                                              ; $61bb: $00
	ld   a, [bc]                                     ; $61bc: $0a
	inc  e                                           ; $61bd: $1c
	inc  c                                           ; $61be: $0c
	ld   bc, $0101                                   ; $61bf: $01 $01 $01
	ld   h, e                                        ; $61c2: $63
	sbc  [hl]                                        ; $61c3: $9e
	ld   [$6300], sp                                 ; $61c4: $08 $00 $63
	and  c                                           ; $61c7: $a1
	sub  b                                           ; $61c8: $90
	dec  c                                           ; $61c9: $0d
	ld   l, e                                        ; $61ca: $6b
	and  c                                           ; $61cb: $a1
	ld   a, b                                        ; $61cc: $78
	halt                                             ; $61cd: $76
	ld   h, c                                        ; $61ce: $61
	sbc  e                                           ; $61cf: $9b
	ld   a, c                                        ; $61d0: $79
	dec  b                                           ; $61d1: $05
	ld   d, $71                                      ; $61d2: $16 $71
	ld   [hl], h                                     ; $61d4: $74
	ld   a, b                                        ; $61d5: $78
	ld   d, d                                        ; $61d6: $52
	ld   [hl], l                                     ; $61d7: $75
	sbc  [hl]                                        ; $61d8: $9e
	dec  c                                           ; $61d9: $0d
	inc  bc                                          ; $61da: $03
	ld   d, h                                        ; $61db: $54
	ld   [hl], c                                     ; $61dc: $71
	ld   [hl], h                                     ; $61dd: $74
	ld   [hl], a                                     ; $61de: $77
	ld   d, h                                        ; $61df: $54
	ld   l, h                                        ; $61e0: $6c
	sbc  a                                           ; $61e1: $9f
	dec  c                                           ; $61e2: $0d
	nop                                              ; $61e3: $00
	ld   a, [bc]                                     ; $61e4: $0a
	ld   b, $03                                      ; $61e5: $06 $03
	rlca                                             ; $61e7: $07
	inc  e                                           ; $61e8: $1c
	dec  c                                           ; $61e9: $0d
	ld   [bc], a                                     ; $61ea: $02
	ld   [bc], a                                     ; $61eb: $02
	ld   bc, $9a50                                   ; $61ec: $01 $50 $9a
	ei                                               ; $61ef: $fb
	ei                                               ; $61f0: $fb
	ei                                               ; $61f1: $fb
	ld   [hl], c                                     ; $61f2: $71
	ld   sp, hl                                      ; $61f3: $f9
	dec  c                                           ; $61f4: $0d
	ld   d, b                                        ; $61f5: $50
	ld   l, l                                        ; $61f6: $6d
	ld   h, l                                        ; $61f7: $65
	ld   a, l                                        ; $61f8: $7d
	sbc  [hl]                                        ; $61f9: $9e
	xor  $e4                                         ; $61fa: $ee $e4
	push af                                          ; $61fc: $f5
	rst  ToBoot                                         ; $61fd: $c7
	and  h                                           ; $61fe: $a4
	ei                                               ; $61ff: $fb
	and  b                                           ; $6200: $a0
	dec  c                                           ; $6201: $0d
	ld   e, b                                        ; $6202: $58
	ld   [bc], a                                     ; $6203: $02
	add  b                                           ; $6204: $80
	ld   d, d                                        ; $6205: $52
	ld   h, l                                        ; $6206: $65
	ld   l, l                                        ; $6207: $6d
	ld   a, l                                        ; $6208: $7d
	ld   l, b                                        ; $6209: $68
	sub  [hl]                                        ; $620a: $96
	sbc  a                                           ; $620b: $9f
	dec  c                                           ; $620c: $0d
	nop                                              ; $620d: $00
	ld   a, [bc]                                     ; $620e: $0a
	rrca                                             ; $620f: $0f
	nop                                              ; $6210: $00
	ld   bc, $6701                                   ; $6211: $01 $01 $67
	sbc  [hl]                                        ; $6214: $9e
	ld   h, a                                        ; $6215: $67
	adc  l                                           ; $6216: $8d
	adc  h                                           ; $6217: $8c
	ld   l, c                                        ; $6218: $69
	and  c                                           ; $6219: $a1
	sbc  a                                           ; $621a: $9f
	dec  c                                           ; $621b: $0d
	nop                                              ; $621c: $00
	ld   a, [bc]                                     ; $621d: $0a
	inc  e                                           ; $621e: $1c
	inc  c                                           ; $621f: $0c
	nop                                              ; $6220: $00
	nop                                              ; $6221: $00
	ld   bc, $508c                                   ; $6222: $01 $8c $50
	sbc  [hl]                                        ; $6225: $9e
	adc  h                                           ; $6226: $8c
	ld   d, b                                        ; $6227: $50
	sbc  a                                           ; $6228: $9f
	dec  c                                           ; $6229: $0d
	ld   l, c                                        ; $622a: $69
	ld   [hl], c                                     ; $622b: $71
	ld   e, c                                        ; $622c: $59
	ld   e, l                                        ; $622d: $5d
	ld   [$6300], sp                                 ; $622e: $08 $00 $63
	and  c                                           ; $6231: $a1
	ld   e, d                                        ; $6232: $5a
	dec  c                                           ; $6233: $0d
	inc  b                                           ; $6234: $04
	ld   b, l                                        ; $6235: $45
	sbc  d                                           ; $6236: $9a
	ld   [hl], h                                     ; $6237: $74
	ld   e, l                                        ; $6238: $5d
	sbc  d                                           ; $6239: $9a
	ld   l, l                                        ; $623a: $6d
	and  c                                           ; $623b: $a1
	ld   l, [hl]                                     ; $623c: $6e
	ld   h, l                                        ; $623d: $65
	sbc  a                                           ; $623e: $9f
	dec  c                                           ; $623f: $0d
	nop                                              ; $6240: $00
	ld   a, [bc]                                     ; $6241: $0a
	ld   bc, $9a61                                   ; $6242: $01 $61 $9a
	ld   [hl], l                                     ; $6245: $75
	sbc  [hl]                                        ; $6246: $9e
	ld   d, d                                        ; $6247: $52
	ld   l, l                                        ; $6248: $6d
	ld   l, [hl]                                     ; $6249: $6e
	ld   e, e                                        ; $624a: $5b
	adc  h                                           ; $624b: $8c
	ld   h, l                                        ; $624c: $65
	sub  l                                           ; $624d: $95
	sbc  a                                           ; $624e: $9f
	dec  c                                           ; $624f: $0d
	nop                                              ; $6250: $00
	ld   a, [bc]                                     ; $6251: $0a
	rrca                                             ; $6252: $0f
	dec  c                                           ; $6253: $0d
	nop                                              ; $6254: $00
	ld   bc, $9e8c                                   ; $6255: $01 $8c $9e
	ld   h, l                                        ; $6258: $65
	ld   e, c                                        ; $6259: $59
	ld   l, l                                        ; $625a: $6d
	ld   a, b                                        ; $625b: $78
	ld   d, d                                        ; $625c: $52
	sbc  l                                           ; $625d: $9d
	ld   a, e                                        ; $625e: $7b
	sbc  a                                           ; $625f: $9f
	dec  c                                           ; $6260: $0d
	ld   d, d                                        ; $6261: $52
	ld   l, l                                        ; $6262: $6d
	ld   l, [hl]                                     ; $6263: $6e
	ld   e, e                                        ; $6264: $5b
	adc  h                                           ; $6265: $8c
	ei                                               ; $6266: $fb
	ld   h, a                                        ; $6267: $67
	sbc  a                                           ; $6268: $9f
	dec  c                                           ; $6269: $0d
	nop                                              ; $626a: $00
	ld   a, [bc]                                     ; $626b: $0a
	inc  e                                           ; $626c: $1c
	inc  c                                           ; $626d: $0c
	ld   bc, $0101                                   ; $626e: $01 $01 $01
	ld   h, e                                        ; $6271: $63
	sbc  [hl]                                        ; $6272: $9e
	ld   [$6300], sp                                 ; $6273: $08 $00 $63
	and  c                                           ; $6276: $a1
	sub  b                                           ; $6277: $90
	dec  c                                           ; $6278: $0d
	ld   l, e                                        ; $6279: $6b
	and  c                                           ; $627a: $a1
	ld   a, b                                        ; $627b: $78
	halt                                             ; $627c: $76
	ld   h, c                                        ; $627d: $61
	sbc  e                                           ; $627e: $9b
	ld   a, c                                        ; $627f: $79
	dec  b                                           ; $6280: $05
	ld   d, $71                                      ; $6281: $16 $71
	ld   [hl], h                                     ; $6283: $74
	ld   a, b                                        ; $6284: $78
	ld   d, d                                        ; $6285: $52
	ld   [hl], l                                     ; $6286: $75
	dec  c                                           ; $6287: $0d
	inc  bc                                          ; $6288: $03
	ld   d, h                                        ; $6289: $54
	ld   [hl], c                                     ; $628a: $71
	ld   [hl], h                                     ; $628b: $74
	ld   [hl], a                                     ; $628c: $77
	ld   d, h                                        ; $628d: $54
	ld   l, h                                        ; $628e: $6c
	sbc  a                                           ; $628f: $9f
	dec  c                                           ; $6290: $0d
	nop                                              ; $6291: $00
	ld   a, [bc]                                     ; $6292: $0a
	ld   b, $03                                      ; $6293: $06 $03
	rlca                                             ; $6295: $07
	inc  e                                           ; $6296: $1c
	ld   c, $03                                      ; $6297: $0e $03
	inc  bc                                          ; $6299: $03
	ld   bc, $9a50                                   ; $629a: $01 $50 $9a
	ld   sp, hl                                      ; $629d: $f9
	db   $10                                         ; $629e: $10
	ld   d, b                                        ; $629f: $50
	ld   l, l                                        ; $62a0: $6d
	ld   h, l                                        ; $62a1: $65
	ld   a, l                                        ; $62a2: $7d
	sbc  [hl]                                        ; $62a3: $9e
	ld   d, b                                        ; $62a4: $50
	ld   [hl], d                                     ; $62a5: $72
	ld   d, b                                        ; $62a6: $50
	ld   [hl], d                                     ; $62a7: $72
	ld   [hl], l                                     ; $62a8: $75
	dec  c                                           ; $62a9: $0d
	dec  b                                           ; $62aa: $05
	ld   d, c                                        ; $62ab: $51
	ld   d, d                                        ; $62ac: $52
	adc  a                                           ; $62ad: $8f
	ld   a, h                                        ; $62ae: $7c
	inc  b                                           ; $62af: $04
	xor  d                                           ; $62b0: $aa
	inc  b                                           ; $62b1: $04
	adc  a                                           ; $62b2: $8f
	inc  bc                                          ; $62b3: $03
	jp   Jump_05c_58a0                               ; $62b4: $c3 $a0 $58


	ld   [bc], a                                     ; $62b7: $02
	add  b                                           ; $62b8: $80
	ld   d, d                                        ; $62b9: $52
	ld   h, l                                        ; $62ba: $65
	ld   l, l                                        ; $62bb: $6d
	dec  c                                           ; $62bc: $0d
	ld   a, l                                        ; $62bd: $7d
	ld   l, b                                        ; $62be: $68
	ld   a, b                                        ; $62bf: $78
	and  c                                           ; $62c0: $a1
	ld   l, [hl]                                     ; $62c1: $6e
	ld   e, a                                        ; $62c2: $5f
	ld   [hl], a                                     ; $62c3: $77
	ld   a, b                                        ; $62c4: $78
	ld   c, a                                        ; $62c5: $4f
	db   $fc                                         ; $62c6: $fc
	sbc  a                                           ; $62c7: $9f
	dec  c                                           ; $62c8: $0d
	nop                                              ; $62c9: $00
	ld   a, [bc]                                     ; $62ca: $0a
	rrca                                             ; $62cb: $0f
	nop                                              ; $62cc: $00
	ld   bc, $6701                                   ; $62cd: $01 $01 $67
	sbc  [hl]                                        ; $62d0: $9e
	ld   h, a                                        ; $62d1: $67
	adc  l                                           ; $62d2: $8d
	adc  h                                           ; $62d3: $8c
	ld   l, c                                        ; $62d4: $69
	and  c                                           ; $62d5: $a1
	sbc  a                                           ; $62d6: $9f
	dec  c                                           ; $62d7: $0d
	nop                                              ; $62d8: $00
	ld   a, [bc]                                     ; $62d9: $0a
	inc  e                                           ; $62da: $1c
	inc  c                                           ; $62db: $0c
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	ld   bc, $508c                                   ; $62de: $01 $8c $50
	sbc  [hl]                                        ; $62e1: $9e
	adc  h                                           ; $62e2: $8c
	ld   d, b                                        ; $62e3: $50
	sbc  a                                           ; $62e4: $9f
	dec  c                                           ; $62e5: $0d
	ld   l, c                                        ; $62e6: $69
	ld   [hl], c                                     ; $62e7: $71
	ld   e, c                                        ; $62e8: $59
	ld   e, l                                        ; $62e9: $5d
	ld   [$6300], sp                                 ; $62ea: $08 $00 $63
	and  c                                           ; $62ed: $a1
	ld   e, d                                        ; $62ee: $5a
	dec  c                                           ; $62ef: $0d
	inc  b                                           ; $62f0: $04
	ld   b, l                                        ; $62f1: $45
	sbc  d                                           ; $62f2: $9a
	ld   [hl], h                                     ; $62f3: $74
	ld   e, l                                        ; $62f4: $5d
	sbc  d                                           ; $62f5: $9a
	ld   l, l                                        ; $62f6: $6d
	and  c                                           ; $62f7: $a1
	ld   l, [hl]                                     ; $62f8: $6e
	ld   h, l                                        ; $62f9: $65
	sbc  a                                           ; $62fa: $9f
	dec  c                                           ; $62fb: $0d
	nop                                              ; $62fc: $00
	ld   a, [bc]                                     ; $62fd: $0a
	ld   bc, $9a61                                   ; $62fe: $01 $61 $9a
	ld   [hl], l                                     ; $6301: $75
	sbc  [hl]                                        ; $6302: $9e
	ld   d, d                                        ; $6303: $52
	ld   l, l                                        ; $6304: $6d
	ld   l, [hl]                                     ; $6305: $6e
	ld   e, e                                        ; $6306: $5b
	adc  h                                           ; $6307: $8c
	ld   h, l                                        ; $6308: $65
	sub  l                                           ; $6309: $95
	sbc  a                                           ; $630a: $9f
	dec  c                                           ; $630b: $0d
	nop                                              ; $630c: $00
	ld   a, [bc]                                     ; $630d: $0a
	inc  e                                           ; $630e: $1c
	ld   c, $00                                      ; $630f: $0e $00
	nop                                              ; $6311: $00
	ld   bc, $fc7d                                   ; $6312: $01 $7d $fc
	ld   d, d                                        ; $6315: $52
	sbc  a                                           ; $6316: $9f
	dec  c                                           ; $6317: $0d
	ld   d, d                                        ; $6318: $52
	ld   l, l                                        ; $6319: $6d
	ld   l, [hl]                                     ; $631a: $6e
	ld   e, e                                        ; $631b: $5b
	adc  h                                           ; $631c: $8c
	ld   h, a                                        ; $631d: $67
	sbc  a                                           ; $631e: $9f
	dec  c                                           ; $631f: $0d
	nop                                              ; $6320: $00
	ld   a, [bc]                                     ; $6321: $0a
	inc  e                                           ; $6322: $1c
	inc  c                                           ; $6323: $0c
	ld   bc, $0101                                   ; $6324: $01 $01 $01
	ld   h, e                                        ; $6327: $63
	sbc  [hl]                                        ; $6328: $9e
	ld   [$6300], sp                                 ; $6329: $08 $00 $63
	and  c                                           ; $632c: $a1
	sub  b                                           ; $632d: $90
	dec  c                                           ; $632e: $0d
	ld   l, e                                        ; $632f: $6b
	and  c                                           ; $6330: $a1
	ld   a, b                                        ; $6331: $78
	halt                                             ; $6332: $76
	ld   h, c                                        ; $6333: $61
	sbc  e                                           ; $6334: $9b
	ld   a, c                                        ; $6335: $79
	dec  b                                           ; $6336: $05
	ld   d, $71                                      ; $6337: $16 $71
	ld   [hl], h                                     ; $6339: $74
	ld   a, b                                        ; $633a: $78
	ld   d, d                                        ; $633b: $52
	ld   [hl], l                                     ; $633c: $75
	dec  c                                           ; $633d: $0d
	inc  bc                                          ; $633e: $03
	ld   d, h                                        ; $633f: $54
	ld   [hl], c                                     ; $6340: $71
	ld   [hl], h                                     ; $6341: $74
	ld   [hl], a                                     ; $6342: $77
	ld   d, h                                        ; $6343: $54
	ld   l, h                                        ; $6344: $6c
	sbc  a                                           ; $6345: $9f
	dec  c                                           ; $6346: $0d
	nop                                              ; $6347: $00
	ld   a, [bc]                                     ; $6348: $0a
	ld   b, $03                                      ; $6349: $06 $03
	rlca                                             ; $634b: $07
	inc  e                                           ; $634c: $1c
	inc  c                                           ; $634d: $0c
	ld   bc, $0101                                   ; $634e: $01 $01 $01
	ld   d, b                                        ; $6351: $50
	sbc  b                                           ; $6352: $98
	ld   e, d                                        ; $6353: $5a
	halt                                             ; $6354: $76
	ld   d, h                                        ; $6355: $54
	ld   h, d                                        ; $6356: $62
	ld   h, h                                        ; $6357: $64
	ld   d, d                                        ; $6358: $52
	adc  h                                           ; $6359: $8c
	ld   h, a                                        ; $635a: $67
	sbc  a                                           ; $635b: $9f
	dec  c                                           ; $635c: $0d
	adc  c                                           ; $635d: $89
	ld   [hl], a                                     ; $635e: $77
	sub  [hl]                                        ; $635f: $96
	ld   d, d                                        ; $6360: $52
	ld   e, c                                        ; $6361: $59
	ld   h, b                                        ; $6362: $60
	and  c                                           ; $6363: $a1
	ld   a, h                                        ; $6364: $7c
	ld   b, $04                                      ; $6365: $06 $04
	ld   h, e                                        ; $6367: $63
	ld   [hl], l                                     ; $6368: $75
	ld   h, a                                        ; $6369: $67
	ld   a, e                                        ; $636a: $7b
	sbc  a                                           ; $636b: $9f
	dec  c                                           ; $636c: $0d
	ld   e, b                                        ; $636d: $58
	ld   d, d                                        ; $636e: $52
	ld   h, l                                        ; $636f: $65
	ld   d, d                                        ; $6370: $52
	ld   [hl], l                                     ; $6371: $75
	ld   h, a                                        ; $6372: $67
	sub  [hl]                                        ; $6373: $96
	sbc  a                                           ; $6374: $9f
	dec  c                                           ; $6375: $0d
	nop                                              ; $6376: $00
	ld   a, [bc]                                     ; $6377: $0a
	inc  e                                           ; $6378: $1c
	dec  c                                           ; $6379: $0d
	ld   bc, $0101                                   ; $637a: $01 $01 $01
	ld   d, d                                        ; $637d: $52
	ld   d, d                                        ; $637e: $52
	ld   e, c                                        ; $637f: $59
	ld   e, b                                        ; $6380: $58
	sbc  b                                           ; $6381: $98
	ld   a, h                                        ; $6382: $7c
	xor  $e4                                         ; $6383: $ee $e4
	push af                                          ; $6385: $f5
	rst  ToBoot                                         ; $6386: $c7
	and  h                                           ; $6387: $a4
	ei                                               ; $6388: $fb
	rst  $38                                         ; $6389: $ff
	rst  $38                                         ; $638a: $ff
	dec  c                                           ; $638b: $0d
	ld   d, b                                        ; $638c: $50
	sbc  b                                           ; $638d: $98
	ld   e, d                                        ; $638e: $5a
	halt                                             ; $638f: $76
	ld   d, h                                        ; $6390: $54
	sbc  a                                           ; $6391: $9f
	dec  c                                           ; $6392: $0d
	nop                                              ; $6393: $00
	ld   a, [bc]                                     ; $6394: $0a
	inc  e                                           ; $6395: $1c
	ld   c, $01                                      ; $6396: $0e $01
	ld   bc, $5001                                   ; $6398: $01 $01 $50
	ld   [hl], c                                     ; $639b: $71
	ld   [hl], d                                     ; $639c: $72
	ei                                               ; $639d: $fb
	ld   a, [$6b10]                                  ; $639e: $fa $10 $6b
	sbc  d                                           ; $63a1: $9a
	ld   a, c                                        ; $63a2: $79
	dec  b                                           ; $63a3: $05
	ld   d, c                                        ; $63a4: $51
	ld   d, d                                        ; $63a5: $52
	inc  bc                                          ; $63a6: $03
	dec  bc                                          ; $63a7: $0b
	ld   a, [$030d]                                  ; $63a8: $fa $0d $03
	sbc  [hl]                                        ; $63ab: $9e
	ld   e, l                                        ; $63ac: $5d
	ld   [hl], h                                     ; $63ad: $74
	ld   e, b                                        ; $63ae: $58
	ld   d, d                                        ; $63af: $52
	ld   h, l                                        ; $63b0: $65
	ld   l, e                                        ; $63b1: $6b
	ld   d, h                                        ; $63b2: $54
	sbc  a                                           ; $63b3: $9f
	dec  c                                           ; $63b4: $0d
	ld   d, b                                        ; $63b5: $50
	sbc  b                                           ; $63b6: $98
	ld   e, d                                        ; $63b7: $5a
	halt                                             ; $63b8: $76
	ld   d, h                                        ; $63b9: $54
	ld   h, d                                        ; $63ba: $62
	ld   h, h                                        ; $63bb: $64
	ld   d, d                                        ; $63bc: $52
	adc  h                                           ; $63bd: $8c
	ld   h, a                                        ; $63be: $67
	sbc  a                                           ; $63bf: $9f
	dec  c                                           ; $63c0: $0d
	nop                                              ; $63c1: $00
	ld   a, [bc]                                     ; $63c2: $0a
	rrca                                             ; $63c3: $0f
	nop                                              ; $63c4: $00
	ld   bc, $0101                                   ; $63c5: $01 $01 $01
	inc  bc                                          ; $63c8: $03
	sub  [hl]                                        ; $63c9: $96
	ld   e, c                                        ; $63ca: $59
	ld   [hl], c                                     ; $63cb: $71
	ld   l, l                                        ; $63cc: $6d
	db   $fc                                         ; $63cd: $fc
	sbc  a                                           ; $63ce: $9f
	dec  c                                           ; $63cf: $0d
	db   $10                                         ; $63d0: $10
	inc  bc                                          ; $63d1: $03
	ld   d, a                                        ; $63d2: $57
	inc  b                                           ; $63d3: $04
	sub  l                                           ; $63d4: $95
	ld   d, b                                        ; $63d5: $50
	ld   [hl], c                                     ; $63d6: $71
	ld   [hl], h                                     ; $63d7: $74
	ld   l, l                                        ; $63d8: $6d
	sub  [hl]                                        ; $63d9: $96
	rst  $38                                         ; $63da: $ff
	rst  $38                                         ; $63db: $ff
	ld   bc, $0d04                                   ; $63dc: $01 $04 $0d
	nop                                              ; $63df: $00
	ld   a, [bc]                                     ; $63e0: $0a
	inc  e                                           ; $63e1: $1c
	inc  c                                           ; $63e2: $0c
	ld   bc, $0101                                   ; $63e3: $01 $01 $01
	ld   h, e                                        ; $63e6: $63
	ld   d, b                                        ; $63e7: $50
	sbc  [hl]                                        ; $63e8: $9e
	ld   d, d                                        ; $63e9: $52
	ld   l, l                                        ; $63ea: $6d
	ld   l, [hl]                                     ; $63eb: $6e
	ld   e, e                                        ; $63ec: $5b
	adc  h                                           ; $63ed: $8c
	ld   h, l                                        ; $63ee: $65
	sub  l                                           ; $63ef: $95
	sbc  a                                           ; $63f0: $9f
	dec  c                                           ; $63f1: $0d
	nop                                              ; $63f2: $00
	ld   a, [bc]                                     ; $63f3: $0a
	rrca                                             ; $63f4: $0f
	dec  c                                           ; $63f5: $0d
	ld   bc, $5201                                   ; $63f6: $01 $01 $52
	ld   l, l                                        ; $63f9: $6d
	ld   l, [hl]                                     ; $63fa: $6e
	ld   e, e                                        ; $63fb: $5b
	adc  h                                           ; $63fc: $8c
	ei                                               ; $63fd: $fb
	ld   h, a                                        ; $63fe: $67
	sbc  a                                           ; $63ff: $9f
	dec  c                                           ; $6400: $0d
	nop                                              ; $6401: $00
	ld   a, [bc]                                     ; $6402: $0a
	inc  e                                           ; $6403: $1c
	ld   c, $01                                      ; $6404: $0e $01
	ld   bc, $7d01                                   ; $6406: $01 $01 $7d
	db   $fc                                         ; $6409: $fc
	ld   d, d                                        ; $640a: $52
	sbc  a                                           ; $640b: $9f
	dec  c                                           ; $640c: $0d
	ld   d, d                                        ; $640d: $52
	ld   l, l                                        ; $640e: $6d
	ld   l, [hl]                                     ; $640f: $6e
	ld   e, e                                        ; $6410: $5b
	adc  h                                           ; $6411: $8c
	ld   h, a                                        ; $6412: $67
	sbc  a                                           ; $6413: $9f
	dec  c                                           ; $6414: $0d
	nop                                              ; $6415: $00
	ld   a, [bc]                                     ; $6416: $0a
	inc  e                                           ; $6417: $1c
	inc  c                                           ; $6418: $0c
	ld   bc, $0101                                   ; $6419: $01 $01 $01
	ld   h, e                                        ; $641c: $63
	sbc  [hl]                                        ; $641d: $9e
	ld   [$6300], sp                                 ; $641e: $08 $00 $63
	and  c                                           ; $6421: $a1
	sub  b                                           ; $6422: $90
	dec  c                                           ; $6423: $0d
	ld   l, e                                        ; $6424: $6b
	and  c                                           ; $6425: $a1
	ld   a, b                                        ; $6426: $78
	halt                                             ; $6427: $76
	ld   h, c                                        ; $6428: $61
	sbc  e                                           ; $6429: $9b
	ld   a, c                                        ; $642a: $79
	dec  b                                           ; $642b: $05
	ld   d, $71                                      ; $642c: $16 $71
	ld   [hl], h                                     ; $642e: $74
	ld   a, b                                        ; $642f: $78
	ld   d, d                                        ; $6430: $52
	ld   [hl], l                                     ; $6431: $75
	dec  c                                           ; $6432: $0d
	inc  bc                                          ; $6433: $03
	ld   d, h                                        ; $6434: $54
	ld   [hl], c                                     ; $6435: $71
	ld   [hl], h                                     ; $6436: $74
	ld   [hl], a                                     ; $6437: $77
	ld   d, h                                        ; $6438: $54
	ld   l, h                                        ; $6439: $6c
	sbc  a                                           ; $643a: $9f
	dec  c                                           ; $643b: $0d
	nop                                              ; $643c: $00
	ld   a, [bc]                                     ; $643d: $0a
	rrca                                             ; $643e: $0f
	nop                                              ; $643f: $00
	ld   bc, $7d01                                   ; $6440: $01 $01 $7d
	ld   d, d                                        ; $6443: $52
	ld   a, [$5210]                                  ; $6444: $fa $10 $52
	ld   l, l                                        ; $6447: $6d
	ld   l, [hl]                                     ; $6448: $6e
	ld   e, e                                        ; $6449: $5b
	adc  h                                           ; $644a: $8c
	ld   h, a                                        ; $644b: $67
	sbc  a                                           ; $644c: $9f
	dec  c                                           ; $644d: $0d
	nop                                              ; $644e: $00
	ld   a, [bc]                                     ; $644f: $0a
	ld   bc, $9a61                                   ; $6450: $01 $61 $9a
	ld   a, l                                        ; $6453: $7d
	sbc  [hl]                                        ; $6454: $9e
	ld   e, b                                        ; $6455: $58
	ld   d, d                                        ; $6456: $52
	ld   h, l                                        ; $6457: $65
	ld   d, d                                        ; $6458: $52
	ld   a, [$580d]                                  ; $6459: $fa $0d $58
	ld   d, d                                        ; $645c: $52
	ld   h, l                                        ; $645d: $65
	ld   d, d                                        ; $645e: $52
	ld   [hl], l                                     ; $645f: $75
	ld   h, a                                        ; $6460: $67
	sub  [hl]                                        ; $6461: $96
	sbc  [hl]                                        ; $6462: $9e
	ld   e, c                                        ; $6463: $59
	ld   h, a                                        ; $6464: $67
	adc  l                                           ; $6465: $8d
	ld   h, e                                        ; $6466: $63
	and  c                                           ; $6467: $a1
	sbc  a                                           ; $6468: $9f
	dec  c                                           ; $6469: $0d
	nop                                              ; $646a: $00
	ld   a, [bc]                                     ; $646b: $0a
	inc  e                                           ; $646c: $1c
	inc  c                                           ; $646d: $0c
	ld   bc, $0101                                   ; $646e: $01 $01 $01
	ld   l, e                                        ; $6471: $6b
	ld   d, h                                        ; $6472: $54
	sbc  [hl]                                        ; $6473: $9e
	sub  [hl]                                        ; $6474: $96
	ld   e, c                                        ; $6475: $59
	ld   [hl], c                                     ; $6476: $71
	ld   l, l                                        ; $6477: $6d
	sbc  a                                           ; $6478: $9f
	dec  c                                           ; $6479: $0d
	inc  b                                           ; $647a: $04
	dec  c                                           ; $647b: $0d
	ld   [bc], a                                     ; $647c: $02
	sub  [hl]                                        ; $647d: $96
	inc  b                                           ; $647e: $04
	ld   b, l                                        ; $647f: $45
	inc  b                                           ; $6480: $04
	ld   a, [bc]                                     ; $6481: $0a
	sub  b                                           ; $6482: $90
	ld   d, b                                        ; $6483: $50
	halt                                             ; $6484: $76
	sbc  l                                           ; $6485: $9d
	ld   l, b                                        ; $6486: $68
	ld   e, c                                        ; $6487: $59
	ld   l, [hl]                                     ; $6488: $6e
	ld   e, a                                        ; $6489: $5f
	ld   [hl], a                                     ; $648a: $77
	dec  c                                           ; $648b: $0d
	ld   e, d                                        ; $648c: $5a
	and  c                                           ; $648d: $a1
	ld   a, [hl]                                     ; $648e: $7e
	ld   [hl], c                                     ; $648f: $71
	ld   [hl], h                                     ; $6490: $74
	ld   e, l                                        ; $6491: $5d
	ld   l, [hl]                                     ; $6492: $6e
	ld   h, e                                        ; $6493: $63
	ld   d, d                                        ; $6494: $52
	ld   a, e                                        ; $6495: $7b
	sbc  a                                           ; $6496: $9f
	dec  c                                           ; $6497: $0d
	nop                                              ; $6498: $00
	ld   a, [bc]                                     ; $6499: $0a
	inc  e                                           ; $649a: $1c
	dec  c                                           ; $649b: $0d
	ld   bc, $0101                                   ; $649c: $01 $01 $01
	ld   l, e                                        ; $649f: $6b
	ld   d, h                                        ; $64a0: $54
	ld   e, c                                        ; $64a1: $59
	rst  $38                                         ; $64a2: $ff
	rst  $38                                         ; $64a3: $ff
	sbc  [hl]                                        ; $64a4: $9e
	ld   d, b                                        ; $64a5: $50
	halt                                             ; $64a6: $76
	inc  bc                                          ; $64a7: $03
	ld   l, h                                        ; $64a8: $6c
	ld   h, l                                        ; $64a9: $65
	ld   [hl], l                                     ; $64aa: $75
	dec  c                                           ; $64ab: $0d
	inc  b                                           ; $64ac: $04
	dec  c                                           ; $64ad: $0d
	ld   [bc], a                                     ; $64ae: $02
	sub  [hl]                                        ; $64af: $96
	inc  b                                           ; $64b0: $04
	ld   b, l                                        ; $64b1: $45
	inc  b                                           ; $64b2: $04
	ld   a, [bc]                                     ; $64b3: $0a
	inc  bc                                          ; $64b4: $03
	ld   a, [hl]                                     ; $64b5: $7e
	sbc  l                                           ; $64b6: $9d
	ld   [hl], c                                     ; $64b7: $71
	ld   l, a                                        ; $64b8: $6f
	sub  c                                           ; $64b9: $91
	ld   d, h                                        ; $64ba: $54
	and  c                                           ; $64bb: $a1
	ld   l, [hl]                                     ; $64bc: $6e
	sbc  a                                           ; $64bd: $9f
	dec  c                                           ; $64be: $0d
	ld   e, d                                        ; $64bf: $5a
	and  c                                           ; $64c0: $a1
	ld   a, [hl]                                     ; $64c1: $7e
	ld   [hl], c                                     ; $64c2: $71
	ld   [hl], h                                     ; $64c3: $74
	ld   a, e                                        ; $64c4: $7b
	sbc  a                                           ; $64c5: $9f
	dec  c                                           ; $64c6: $0d
	nop                                              ; $64c7: $00
	ld   a, [bc]                                     ; $64c8: $0a
	inc  e                                           ; $64c9: $1c
	ld   c, $01                                      ; $64ca: $0e $01
	ld   bc, $eb01                                   ; $64cc: $01 $01 $eb
	cp   d                                           ; $64cf: $ba
	ret                                              ; $64d0: $c9


	cp   d                                           ; $64d1: $ba
	jp   nc, $c9fb                                   ; $64d2: $d2 $fb $c9

	sbc  a                                           ; $64d5: $9f
	dec  c                                           ; $64d6: $0d
	ld   e, d                                        ; $64d7: $5a
	and  c                                           ; $64d8: $a1
	ld   a, [hl]                                     ; $64d9: $7e
	ld   [hl], c                                     ; $64da: $71
	ld   [hl], h                                     ; $64db: $74
	ld   e, l                                        ; $64dc: $5d
	ld   l, [hl]                                     ; $64dd: $6e
	ld   h, e                                        ; $64de: $63
	ld   d, d                                        ; $64df: $52
	sbc  a                                           ; $64e0: $9f
	dec  c                                           ; $64e1: $0d
	nop                                              ; $64e2: $00
	ld   a, [bc]                                     ; $64e3: $0a
	rrca                                             ; $64e4: $0f
	nop                                              ; $64e5: $00
	ld   bc, $7d01                                   ; $64e6: $01 $01 $7d
	ld   d, d                                        ; $64e9: $52
	sbc  [hl]                                        ; $64ea: $9e
	ld   d, b                                        ; $64eb: $50
	sbc  b                                           ; $64ec: $98
	ld   e, d                                        ; $64ed: $5a
	halt                                             ; $64ee: $76
	ld   d, h                                        ; $64ef: $54
	ld   h, d                                        ; $64f0: $62
	ld   h, h                                        ; $64f1: $64
	ld   d, d                                        ; $64f2: $52
	adc  h                                           ; $64f3: $8c
	ld   h, a                                        ; $64f4: $67
	sbc  a                                           ; $64f5: $9f
	dec  c                                           ; $64f6: $0d
	ld   e, b                                        ; $64f7: $58
	ld   d, d                                        ; $64f8: $52
	ld   h, l                                        ; $64f9: $65
	ld   e, c                                        ; $64fa: $59
	ld   [hl], c                                     ; $64fb: $71
	ld   l, l                                        ; $64fc: $6d
	ld   [hl], l                                     ; $64fd: $75
	ld   h, a                                        ; $64fe: $67
	sbc  a                                           ; $64ff: $9f
	dec  c                                           ; $6500: $0d
	ld   h, d                                        ; $6501: $62
	ld   l, a                                        ; $6502: $6f
	ld   l, e                                        ; $6503: $6b
	ld   d, h                                        ; $6504: $54
	ld   h, e                                        ; $6505: $63
	adc  h                                           ; $6506: $8c
	ld   [hl], l                                     ; $6507: $75
	ld   h, l                                        ; $6508: $65
	ld   l, l                                        ; $6509: $6d
	sbc  a                                           ; $650a: $9f
	dec  c                                           ; $650b: $0d
	nop                                              ; $650c: $00
	ld   a, [bc]                                     ; $650d: $0a
	inc  e                                           ; $650e: $1c
	inc  c                                           ; $650f: $0c
	ld   bc, $0101                                   ; $6510: $01 $01 $01
	ld   e, b                                        ; $6513: $58
	ld   l, e                                        ; $6514: $6b
	adc  h                                           ; $6515: $8c
	ld   [hl], d                                     ; $6516: $72
	ld   h, e                                        ; $6517: $63
	adc  h                                           ; $6518: $8c
	ld   [hl], l                                     ; $6519: $75
	ld   h, l                                        ; $651a: $65
	ld   l, l                                        ; $651b: $6d
	sbc  a                                           ; $651c: $9f
	dec  c                                           ; $651d: $0d
	nop                                              ; $651e: $00
	ld   a, [bc]                                     ; $651f: $0a
	dec  b                                           ; $6520: $05
	add  b                                           ; $6521: $80
	or   d                                           ; $6522: $b2
	ld   bc, $0001                                   ; $6523: $01 $01 $00
	nop                                              ; $6526: $00
	inc  e                                           ; $6527: $1c
	dec  c                                           ; $6528: $0d
	ld   [bc], a                                     ; $6529: $02
	ld   [bc], a                                     ; $652a: $02
	ld   bc, $9a50                                   ; $652b: $01 $50 $9a
	ei                                               ; $652e: $fb
	ei                                               ; $652f: $fb
	ei                                               ; $6530: $fb
	ld   [hl], c                                     ; $6531: $71
	ld   sp, hl                                      ; $6532: $f9
	dec  c                                           ; $6533: $0d
	ld   d, b                                        ; $6534: $50
	ld   l, l                                        ; $6535: $6d
	ld   h, l                                        ; $6536: $65
	ld   a, l                                        ; $6537: $7d
	sbc  [hl]                                        ; $6538: $9e
	xor  $e4                                         ; $6539: $ee $e4
	push af                                          ; $653b: $f5
	rst  ToBoot                                         ; $653c: $c7
	and  h                                           ; $653d: $a4
	ei                                               ; $653e: $fb
	and  b                                           ; $653f: $a0
	dec  c                                           ; $6540: $0d
	ld   e, b                                        ; $6541: $58
	ld   [bc], a                                     ; $6542: $02
	add  b                                           ; $6543: $80
	ld   d, d                                        ; $6544: $52
	ld   h, l                                        ; $6545: $65
	ld   l, l                                        ; $6546: $6d
	ld   a, l                                        ; $6547: $7d
	ld   l, b                                        ; $6548: $68
	sub  [hl]                                        ; $6549: $96
	sbc  a                                           ; $654a: $9f
	dec  c                                           ; $654b: $0d
	nop                                              ; $654c: $00
	ld   a, [bc]                                     ; $654d: $0a
	inc  e                                           ; $654e: $1c
	ld   c, $03                                      ; $654f: $0e $03
	inc  bc                                          ; $6551: $03
	ld   bc, $9a50                                   ; $6552: $01 $50 $9a
	ld   sp, hl                                      ; $6555: $f9
	db   $10                                         ; $6556: $10
	ld   d, b                                        ; $6557: $50
	ld   l, l                                        ; $6558: $6d
	ld   h, l                                        ; $6559: $65
	ld   a, l                                        ; $655a: $7d
	sbc  [hl]                                        ; $655b: $9e
	ld   d, b                                        ; $655c: $50
	ld   [hl], d                                     ; $655d: $72
	ld   d, b                                        ; $655e: $50
	ld   [hl], d                                     ; $655f: $72
	ld   [hl], l                                     ; $6560: $75
	dec  c                                           ; $6561: $0d
	dec  b                                           ; $6562: $05
	ld   d, c                                        ; $6563: $51
	ld   d, d                                        ; $6564: $52
	adc  a                                           ; $6565: $8f
	ld   a, h                                        ; $6566: $7c
	inc  b                                           ; $6567: $04
	xor  d                                           ; $6568: $aa
	inc  b                                           ; $6569: $04
	adc  a                                           ; $656a: $8f
	inc  bc                                          ; $656b: $03
	jp   Jump_05c_58a0                               ; $656c: $c3 $a0 $58


	ld   [bc], a                                     ; $656f: $02
	add  b                                           ; $6570: $80
	ld   d, d                                        ; $6571: $52
	ld   h, l                                        ; $6572: $65
	ld   l, l                                        ; $6573: $6d
	dec  c                                           ; $6574: $0d
	ld   a, l                                        ; $6575: $7d
	ld   l, b                                        ; $6576: $68
	ld   a, b                                        ; $6577: $78
	and  c                                           ; $6578: $a1
	ld   l, [hl]                                     ; $6579: $6e
	ld   e, a                                        ; $657a: $5f
	ld   [hl], a                                     ; $657b: $77
	ld   a, b                                        ; $657c: $78
	ld   c, a                                        ; $657d: $4f
	db   $fc                                         ; $657e: $fc
	sbc  a                                           ; $657f: $9f
	dec  c                                           ; $6580: $0d
	nop                                              ; $6581: $00
	ld   a, [bc]                                     ; $6582: $0a
	rrca                                             ; $6583: $0f
	nop                                              ; $6584: $00
	ld   bc, $6701                                   ; $6585: $01 $01 $67
	sbc  [hl]                                        ; $6588: $9e
	ld   h, a                                        ; $6589: $67
	adc  l                                           ; $658a: $8d
	adc  h                                           ; $658b: $8c
	ld   l, c                                        ; $658c: $69
	and  c                                           ; $658d: $a1
	sbc  a                                           ; $658e: $9f
	dec  c                                           ; $658f: $0d
	nop                                              ; $6590: $00
	ld   a, [bc]                                     ; $6591: $0a
	inc  e                                           ; $6592: $1c
	inc  c                                           ; $6593: $0c
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	ld   bc, $508c                                   ; $6596: $01 $8c $50
	sbc  [hl]                                        ; $6599: $9e
	adc  h                                           ; $659a: $8c
	ld   d, b                                        ; $659b: $50
	sbc  a                                           ; $659c: $9f
	dec  c                                           ; $659d: $0d
	ld   l, c                                        ; $659e: $69
	ld   [hl], c                                     ; $659f: $71
	ld   e, c                                        ; $65a0: $59
	ld   e, l                                        ; $65a1: $5d
	ld   [$6300], sp                                 ; $65a2: $08 $00 $63
	and  c                                           ; $65a5: $a1
	ld   e, d                                        ; $65a6: $5a
	dec  c                                           ; $65a7: $0d
	inc  b                                           ; $65a8: $04
	ld   b, l                                        ; $65a9: $45
	sbc  d                                           ; $65aa: $9a
	ld   [hl], h                                     ; $65ab: $74
	ld   e, l                                        ; $65ac: $5d
	sbc  d                                           ; $65ad: $9a
	ld   l, l                                        ; $65ae: $6d
	and  c                                           ; $65af: $a1
	ld   l, [hl]                                     ; $65b0: $6e
	ld   h, l                                        ; $65b1: $65
	sbc  a                                           ; $65b2: $9f
	dec  c                                           ; $65b3: $0d
	nop                                              ; $65b4: $00
	ld   a, [bc]                                     ; $65b5: $0a
	ld   bc, $9a61                                   ; $65b6: $01 $61 $9a
	ld   [hl], l                                     ; $65b9: $75
	sbc  [hl]                                        ; $65ba: $9e
	ld   d, d                                        ; $65bb: $52
	ld   l, l                                        ; $65bc: $6d
	ld   l, [hl]                                     ; $65bd: $6e
	ld   e, e                                        ; $65be: $5b
	adc  h                                           ; $65bf: $8c
	ld   h, l                                        ; $65c0: $65
	sub  l                                           ; $65c1: $95
	sbc  a                                           ; $65c2: $9f
	dec  c                                           ; $65c3: $0d
	nop                                              ; $65c4: $00
	ld   a, [bc]                                     ; $65c5: $0a
	rrca                                             ; $65c6: $0f
	dec  c                                           ; $65c7: $0d
	nop                                              ; $65c8: $00
	ld   bc, $9e8c                                   ; $65c9: $01 $8c $9e
	ld   h, l                                        ; $65cc: $65
	ld   e, c                                        ; $65cd: $59
	ld   l, l                                        ; $65ce: $6d
	ld   a, b                                        ; $65cf: $78
	ld   d, d                                        ; $65d0: $52
	sbc  l                                           ; $65d1: $9d
	ld   a, e                                        ; $65d2: $7b
	sbc  a                                           ; $65d3: $9f
	dec  c                                           ; $65d4: $0d
	ld   d, d                                        ; $65d5: $52
	ld   l, l                                        ; $65d6: $6d
	ld   l, [hl]                                     ; $65d7: $6e
	ld   e, e                                        ; $65d8: $5b
	adc  h                                           ; $65d9: $8c
	ei                                               ; $65da: $fb
	ld   h, a                                        ; $65db: $67
	sbc  a                                           ; $65dc: $9f
	dec  c                                           ; $65dd: $0d
	nop                                              ; $65de: $00
	ld   a, [bc]                                     ; $65df: $0a
	inc  e                                           ; $65e0: $1c
	ld   c, $00                                      ; $65e1: $0e $00
	nop                                              ; $65e3: $00
	ld   bc, $fc7d                                   ; $65e4: $01 $7d $fc
	ld   d, d                                        ; $65e7: $52
	sbc  a                                           ; $65e8: $9f
	dec  c                                           ; $65e9: $0d
	ld   d, d                                        ; $65ea: $52
	ld   l, l                                        ; $65eb: $6d
	ld   l, [hl]                                     ; $65ec: $6e
	ld   e, e                                        ; $65ed: $5b
	adc  h                                           ; $65ee: $8c
	ld   h, a                                        ; $65ef: $67
	sbc  a                                           ; $65f0: $9f
	dec  c                                           ; $65f1: $0d
	nop                                              ; $65f2: $00
	ld   a, [bc]                                     ; $65f3: $0a
	inc  e                                           ; $65f4: $1c
	inc  c                                           ; $65f5: $0c
	ld   bc, $0101                                   ; $65f6: $01 $01 $01
	ld   h, e                                        ; $65f9: $63
	sbc  [hl]                                        ; $65fa: $9e
	ld   [$6300], sp                                 ; $65fb: $08 $00 $63
	and  c                                           ; $65fe: $a1
	sub  b                                           ; $65ff: $90
	dec  c                                           ; $6600: $0d
	ld   l, e                                        ; $6601: $6b
	and  c                                           ; $6602: $a1
	ld   a, b                                        ; $6603: $78
	halt                                             ; $6604: $76
	ld   h, c                                        ; $6605: $61
	sbc  e                                           ; $6606: $9b
	ld   a, c                                        ; $6607: $79
	dec  b                                           ; $6608: $05
	ld   d, $71                                      ; $6609: $16 $71
	ld   [hl], h                                     ; $660b: $74
	ld   a, b                                        ; $660c: $78
	ld   d, d                                        ; $660d: $52
	ld   [hl], l                                     ; $660e: $75
	dec  c                                           ; $660f: $0d
	inc  bc                                          ; $6610: $03
	ld   d, h                                        ; $6611: $54
	ld   [hl], c                                     ; $6612: $71
	ld   [hl], h                                     ; $6613: $74
	ld   [hl], a                                     ; $6614: $77
	ld   d, h                                        ; $6615: $54
	ld   l, h                                        ; $6616: $6c
	sbc  a                                           ; $6617: $9f
	dec  c                                           ; $6618: $0d
	nop                                              ; $6619: $00
	ld   a, [bc]                                     ; $661a: $0a
	ld   b, $03                                      ; $661b: $06 $03
	rlca                                             ; $661d: $07
	inc  e                                           ; $661e: $1c
	inc  c                                           ; $661f: $0c
	inc  bc                                          ; $6620: $03
	inc  bc                                          ; $6621: $03
	ld   bc, $9750                                   ; $6622: $01 $50 $97
	sbc  [hl]                                        ; $6625: $9e
	sbc  l                                           ; $6626: $9d
	ld   l, l                                        ; $6627: $6d
	ld   h, l                                        ; $6628: $65
	ld   a, l                                        ; $6629: $7d
	sbc  [hl]                                        ; $662a: $9e
	ld   a, d                                        ; $662b: $7a
	sbc  c                                           ; $662c: $99
	adc  a                                           ; $662d: $8f
	ld   a, h                                        ; $662e: $7c
	dec  c                                           ; $662f: $0d
	inc  b                                           ; $6630: $04
	xor  d                                           ; $6631: $aa
	inc  b                                           ; $6632: $04
	adc  a                                           ; $6633: $8f
	inc  bc                                          ; $6634: $03
	jp   Jump_05c_58a0                               ; $6635: $c3 $a0 $58


	ld   [bc], a                                     ; $6638: $02
	add  b                                           ; $6639: $80
	ld   d, d                                        ; $663a: $52
	ld   h, l                                        ; $663b: $65
	ld   l, l                                        ; $663c: $6d
	ld   a, l                                        ; $663d: $7d
	ld   l, b                                        ; $663e: $68
	dec  c                                           ; $663f: $0d
	ld   [hl], l                                     ; $6640: $75
	ld   h, a                                        ; $6641: $67
	ld   e, a                                        ; $6642: $5f
	ld   [hl], a                                     ; $6643: $77
	rst  $38                                         ; $6644: $ff
	rst  $38                                         ; $6645: $ff
	dec  c                                           ; $6646: $0d
	nop                                              ; $6647: $00
	ld   a, [bc]                                     ; $6648: $0a
	inc  e                                           ; $6649: $1c
	ld   c, $03                                      ; $664a: $0e $03
	inc  bc                                          ; $664c: $03
	ld   bc, $6d50                                   ; $664d: $01 $50 $6d
	ld   h, l                                        ; $6650: $65
	ld   a, l                                        ; $6651: $7d
	sbc  [hl]                                        ; $6652: $9e
	ld   d, b                                        ; $6653: $50
	ld   [hl], d                                     ; $6654: $72
	ld   d, b                                        ; $6655: $50
	ld   [hl], d                                     ; $6656: $72
	ld   [hl], l                                     ; $6657: $75
	dec  c                                           ; $6658: $0d
	dec  b                                           ; $6659: $05
	ld   d, c                                        ; $665a: $51
	ld   d, d                                        ; $665b: $52
	adc  a                                           ; $665c: $8f
	ld   a, h                                        ; $665d: $7c
	inc  b                                           ; $665e: $04
	xor  d                                           ; $665f: $aa
	inc  b                                           ; $6660: $04
	adc  a                                           ; $6661: $8f
	inc  bc                                          ; $6662: $03
	jp   Jump_05c_58a0                               ; $6663: $c3 $a0 $58


	ld   [bc], a                                     ; $6666: $02
	add  b                                           ; $6667: $80
	ld   d, d                                        ; $6668: $52
	ld   h, l                                        ; $6669: $65
	ld   l, l                                        ; $666a: $6d
	dec  c                                           ; $666b: $0d
	ld   a, l                                        ; $666c: $7d
	ld   l, b                                        ; $666d: $68
	ld   a, b                                        ; $666e: $78
	and  c                                           ; $666f: $a1
	ld   l, [hl]                                     ; $6670: $6e
	ld   e, a                                        ; $6671: $5f
	ld   [hl], a                                     ; $6672: $77
	ld   a, b                                        ; $6673: $78
	ld   c, a                                        ; $6674: $4f
	db   $fc                                         ; $6675: $fc
	sbc  a                                           ; $6676: $9f
	dec  c                                           ; $6677: $0d
	nop                                              ; $6678: $00
	ld   a, [bc]                                     ; $6679: $0a
	rrca                                             ; $667a: $0f
	nop                                              ; $667b: $00
	ld   bc, $6701                                   ; $667c: $01 $01 $67
	sbc  [hl]                                        ; $667f: $9e
	ld   h, a                                        ; $6680: $67
	adc  l                                           ; $6681: $8d
	adc  h                                           ; $6682: $8c
	ld   l, c                                        ; $6683: $69
	and  c                                           ; $6684: $a1
	sbc  a                                           ; $6685: $9f
	dec  c                                           ; $6686: $0d
	nop                                              ; $6687: $00
	ld   a, [bc]                                     ; $6688: $0a
	inc  e                                           ; $6689: $1c
	inc  c                                           ; $668a: $0c
	nop                                              ; $668b: $00
	nop                                              ; $668c: $00
	ld   bc, $9075                                   ; $668d: $01 $75 $90
	sbc  [hl]                                        ; $6690: $9e
	adc  h                                           ; $6691: $8c
	ld   d, b                                        ; $6692: $50
	ld   l, c                                        ; $6693: $69
	ld   [hl], c                                     ; $6694: $71
	ld   e, c                                        ; $6695: $59
	ld   e, l                                        ; $6696: $5d
	dec  c                                           ; $6697: $0d
	ld   [$6300], sp                                 ; $6698: $08 $00 $63
	and  c                                           ; $669b: $a1
	ld   e, d                                        ; $669c: $5a
	dec  c                                           ; $669d: $0d
	inc  b                                           ; $669e: $04
	ld   b, l                                        ; $669f: $45
	sbc  d                                           ; $66a0: $9a
	ld   [hl], h                                     ; $66a1: $74
	ld   e, l                                        ; $66a2: $5d
	sbc  d                                           ; $66a3: $9a
	ld   l, l                                        ; $66a4: $6d
	and  c                                           ; $66a5: $a1
	ld   l, [hl]                                     ; $66a6: $6e
	ld   h, l                                        ; $66a7: $65
	sbc  a                                           ; $66a8: $9f
	dec  c                                           ; $66a9: $0d
	nop                                              ; $66aa: $00
	ld   a, [bc]                                     ; $66ab: $0a
	ld   bc, $9a61                                   ; $66ac: $01 $61 $9a
	ld   [hl], l                                     ; $66af: $75
	sbc  [hl]                                        ; $66b0: $9e
	ld   d, d                                        ; $66b1: $52
	ld   l, l                                        ; $66b2: $6d
	ld   l, [hl]                                     ; $66b3: $6e
	ld   e, e                                        ; $66b4: $5b
	adc  h                                           ; $66b5: $8c
	ld   h, l                                        ; $66b6: $65
	sub  l                                           ; $66b7: $95
	sbc  a                                           ; $66b8: $9f
	dec  c                                           ; $66b9: $0d
	nop                                              ; $66ba: $00
	ld   a, [bc]                                     ; $66bb: $0a
	inc  e                                           ; $66bc: $1c
	ld   c, $00                                      ; $66bd: $0e $00
	nop                                              ; $66bf: $00
	ld   bc, $fc7d                                   ; $66c0: $01 $7d $fc
	ld   d, d                                        ; $66c3: $52
	sbc  a                                           ; $66c4: $9f
	dec  c                                           ; $66c5: $0d
	ld   d, d                                        ; $66c6: $52
	ld   l, l                                        ; $66c7: $6d
	ld   l, [hl]                                     ; $66c8: $6e
	ld   e, e                                        ; $66c9: $5b
	adc  h                                           ; $66ca: $8c
	ld   h, a                                        ; $66cb: $67
	sbc  a                                           ; $66cc: $9f
	dec  c                                           ; $66cd: $0d
	nop                                              ; $66ce: $00
	ld   a, [bc]                                     ; $66cf: $0a
	inc  e                                           ; $66d0: $1c
	inc  c                                           ; $66d1: $0c
	ld   bc, $0101                                   ; $66d2: $01 $01 $01
	ld   h, e                                        ; $66d5: $63
	sbc  [hl]                                        ; $66d6: $9e
	ld   [$6300], sp                                 ; $66d7: $08 $00 $63
	and  c                                           ; $66da: $a1
	sub  b                                           ; $66db: $90
	dec  c                                           ; $66dc: $0d
	ld   l, e                                        ; $66dd: $6b
	and  c                                           ; $66de: $a1
	ld   a, b                                        ; $66df: $78
	halt                                             ; $66e0: $76
	ld   h, c                                        ; $66e1: $61
	sbc  e                                           ; $66e2: $9b
	ld   a, c                                        ; $66e3: $79
	dec  b                                           ; $66e4: $05
	ld   d, $71                                      ; $66e5: $16 $71
	ld   [hl], h                                     ; $66e7: $74
	ld   a, b                                        ; $66e8: $78
	ld   d, d                                        ; $66e9: $52
	ld   [hl], l                                     ; $66ea: $75
	sbc  [hl]                                        ; $66eb: $9e
	dec  c                                           ; $66ec: $0d
	inc  bc                                          ; $66ed: $03
	ld   d, h                                        ; $66ee: $54
	ld   [hl], c                                     ; $66ef: $71
	ld   [hl], h                                     ; $66f0: $74
	ld   [hl], a                                     ; $66f1: $77
	ld   d, h                                        ; $66f2: $54
	ld   l, h                                        ; $66f3: $6c
	sbc  a                                           ; $66f4: $9f
	dec  c                                           ; $66f5: $0d
	nop                                              ; $66f6: $00
	ld   a, [bc]                                     ; $66f7: $0a
	ld   b, $03                                      ; $66f8: $06 $03
	rlca                                             ; $66fa: $07
	inc  e                                           ; $66fb: $1c
	inc  c                                           ; $66fc: $0c
	inc  bc                                          ; $66fd: $03
	inc  bc                                          ; $66fe: $03
	ld   bc, $9750                                   ; $66ff: $01 $50 $97
	sbc  [hl]                                        ; $6702: $9e
	sbc  l                                           ; $6703: $9d
	ld   l, l                                        ; $6704: $6d
	ld   h, l                                        ; $6705: $65
	ld   a, l                                        ; $6706: $7d
	sbc  [hl]                                        ; $6707: $9e
	ld   a, d                                        ; $6708: $7a
	sbc  c                                           ; $6709: $99
	adc  a                                           ; $670a: $8f
	ld   a, h                                        ; $670b: $7c
	dec  c                                           ; $670c: $0d
	inc  b                                           ; $670d: $04
	xor  d                                           ; $670e: $aa
	inc  b                                           ; $670f: $04
	adc  a                                           ; $6710: $8f
	inc  bc                                          ; $6711: $03
	jp   Jump_05c_58a0                               ; $6712: $c3 $a0 $58


	ld   [bc], a                                     ; $6715: $02
	add  b                                           ; $6716: $80
	ld   d, d                                        ; $6717: $52
	ld   h, l                                        ; $6718: $65
	ld   l, l                                        ; $6719: $6d
	ld   a, l                                        ; $671a: $7d
	ld   l, b                                        ; $671b: $68
	dec  c                                           ; $671c: $0d
	ld   [hl], l                                     ; $671d: $75
	ld   h, a                                        ; $671e: $67
	ld   e, a                                        ; $671f: $5f
	ld   [hl], a                                     ; $6720: $77
	rst  $38                                         ; $6721: $ff
	rst  $38                                         ; $6722: $ff
	dec  c                                           ; $6723: $0d
	nop                                              ; $6724: $00
	ld   a, [bc]                                     ; $6725: $0a
	inc  e                                           ; $6726: $1c
	dec  c                                           ; $6727: $0d
	ld   [bc], a                                     ; $6728: $02
	ld   [bc], a                                     ; $6729: $02
	ld   bc, $9a50                                   ; $672a: $01 $50 $9a
	ei                                               ; $672d: $fb
	ei                                               ; $672e: $fb
	ei                                               ; $672f: $fb
	ld   [hl], c                                     ; $6730: $71
	ld   sp, hl                                      ; $6731: $f9
	dec  c                                           ; $6732: $0d
	ld   d, b                                        ; $6733: $50
	ld   l, l                                        ; $6734: $6d
	ld   h, l                                        ; $6735: $65
	ld   a, l                                        ; $6736: $7d
	sbc  [hl]                                        ; $6737: $9e
	xor  $e4                                         ; $6738: $ee $e4
	push af                                          ; $673a: $f5
	rst  ToBoot                                         ; $673b: $c7
	and  h                                           ; $673c: $a4
	ei                                               ; $673d: $fb
	and  b                                           ; $673e: $a0
	dec  c                                           ; $673f: $0d
	ld   e, b                                        ; $6740: $58
	ld   [bc], a                                     ; $6741: $02
	add  b                                           ; $6742: $80
	ld   d, d                                        ; $6743: $52
	ld   h, l                                        ; $6744: $65
	ld   l, l                                        ; $6745: $6d
	ld   a, l                                        ; $6746: $7d
	ld   l, b                                        ; $6747: $68
	sub  [hl]                                        ; $6748: $96
	sbc  a                                           ; $6749: $9f
	dec  c                                           ; $674a: $0d
	nop                                              ; $674b: $00
	ld   a, [bc]                                     ; $674c: $0a
	rrca                                             ; $674d: $0f
	nop                                              ; $674e: $00
	ld   bc, $6701                                   ; $674f: $01 $01 $67
	sbc  [hl]                                        ; $6752: $9e
	ld   h, a                                        ; $6753: $67
	adc  l                                           ; $6754: $8d
	adc  h                                           ; $6755: $8c
	ld   l, c                                        ; $6756: $69
	and  c                                           ; $6757: $a1
	sbc  a                                           ; $6758: $9f
	dec  c                                           ; $6759: $0d
	nop                                              ; $675a: $00
	ld   a, [bc]                                     ; $675b: $0a
	inc  e                                           ; $675c: $1c
	inc  c                                           ; $675d: $0c
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	ld   bc, $9075                                   ; $6760: $01 $75 $90
	sbc  [hl]                                        ; $6763: $9e
	adc  h                                           ; $6764: $8c
	ld   d, b                                        ; $6765: $50
	ld   l, c                                        ; $6766: $69
	ld   [hl], c                                     ; $6767: $71
	ld   e, c                                        ; $6768: $59
	ld   e, l                                        ; $6769: $5d
	dec  c                                           ; $676a: $0d
	ld   [$6300], sp                                 ; $676b: $08 $00 $63
	and  c                                           ; $676e: $a1
	ld   e, d                                        ; $676f: $5a
	dec  c                                           ; $6770: $0d
	inc  b                                           ; $6771: $04
	ld   b, l                                        ; $6772: $45
	sbc  d                                           ; $6773: $9a
	ld   [hl], h                                     ; $6774: $74
	ld   e, l                                        ; $6775: $5d
	sbc  d                                           ; $6776: $9a
	ld   l, l                                        ; $6777: $6d
	and  c                                           ; $6778: $a1
	ld   l, [hl]                                     ; $6779: $6e
	ld   h, l                                        ; $677a: $65
	sbc  a                                           ; $677b: $9f
	dec  c                                           ; $677c: $0d
	nop                                              ; $677d: $00
	ld   a, [bc]                                     ; $677e: $0a
	ld   bc, $9a61                                   ; $677f: $01 $61 $9a
	ld   [hl], l                                     ; $6782: $75
	sbc  [hl]                                        ; $6783: $9e
	ld   d, d                                        ; $6784: $52
	ld   l, l                                        ; $6785: $6d
	ld   l, [hl]                                     ; $6786: $6e
	ld   e, e                                        ; $6787: $5b
	adc  h                                           ; $6788: $8c
	ld   h, l                                        ; $6789: $65
	sub  l                                           ; $678a: $95
	sbc  a                                           ; $678b: $9f
	dec  c                                           ; $678c: $0d
	nop                                              ; $678d: $00
	ld   a, [bc]                                     ; $678e: $0a
	rrca                                             ; $678f: $0f
	dec  c                                           ; $6790: $0d
	nop                                              ; $6791: $00
	ld   bc, $9e8c                                   ; $6792: $01 $8c $9e
	ld   h, l                                        ; $6795: $65
	ld   e, c                                        ; $6796: $59
	ld   l, l                                        ; $6797: $6d
	ld   a, b                                        ; $6798: $78
	ld   d, d                                        ; $6799: $52
	sbc  l                                           ; $679a: $9d
	ld   a, e                                        ; $679b: $7b
	sbc  a                                           ; $679c: $9f
	dec  c                                           ; $679d: $0d
	ld   d, d                                        ; $679e: $52
	ld   l, l                                        ; $679f: $6d
	ld   l, [hl]                                     ; $67a0: $6e
	ld   e, e                                        ; $67a1: $5b
	adc  h                                           ; $67a2: $8c
	ei                                               ; $67a3: $fb
	ld   h, a                                        ; $67a4: $67
	sbc  a                                           ; $67a5: $9f
	dec  c                                           ; $67a6: $0d
	nop                                              ; $67a7: $00
	ld   a, [bc]                                     ; $67a8: $0a
	inc  e                                           ; $67a9: $1c
	inc  c                                           ; $67aa: $0c
	ld   bc, $0101                                   ; $67ab: $01 $01 $01
	ld   h, e                                        ; $67ae: $63
	sbc  [hl]                                        ; $67af: $9e
	ld   [$6300], sp                                 ; $67b0: $08 $00 $63
	and  c                                           ; $67b3: $a1
	sub  b                                           ; $67b4: $90
	dec  c                                           ; $67b5: $0d
	ld   l, e                                        ; $67b6: $6b
	and  c                                           ; $67b7: $a1
	ld   a, b                                        ; $67b8: $78
	halt                                             ; $67b9: $76
	ld   h, c                                        ; $67ba: $61
	sbc  e                                           ; $67bb: $9b
	ld   a, c                                        ; $67bc: $79
	dec  b                                           ; $67bd: $05
	ld   d, $71                                      ; $67be: $16 $71
	ld   [hl], h                                     ; $67c0: $74
	ld   a, b                                        ; $67c1: $78
	ld   d, d                                        ; $67c2: $52
	ld   [hl], l                                     ; $67c3: $75
	sbc  [hl]                                        ; $67c4: $9e
	dec  c                                           ; $67c5: $0d
	inc  bc                                          ; $67c6: $03
	ld   d, h                                        ; $67c7: $54
	ld   [hl], c                                     ; $67c8: $71
	ld   [hl], h                                     ; $67c9: $74
	ld   [hl], a                                     ; $67ca: $77
	ld   d, h                                        ; $67cb: $54
	ld   l, h                                        ; $67cc: $6c
	sbc  a                                           ; $67cd: $9f
	dec  c                                           ; $67ce: $0d
	nop                                              ; $67cf: $00
	ld   a, [bc]                                     ; $67d0: $0a
	ld   b, $03                                      ; $67d1: $06 $03
	rlca                                             ; $67d3: $07
	nop                                              ; $67d4: $00
	ld   [bc], a                                     ; $67d5: $02
	rlca                                             ; $67d6: $07
	rra                                              ; $67d7: $1f
	nop                                              ; $67d8: $00
	inc  bc                                          ; $67d9: $03
	ld   [de], a                                     ; $67da: $12
	ld   bc, $2265                                   ; $67db: $01 $65 $22
	nop                                              ; $67de: $00
	rlca                                             ; $67df: $07
	and  d                                           ; $67e0: $a2
	nop                                              ; $67e1: $00
	inc  bc                                          ; $67e2: $03
	ld   [de], a                                     ; $67e3: $12
	ld   bc, $259b                                   ; $67e4: $01 $9b $25
	ld   [bc], a                                     ; $67e7: $02
	nop                                              ; $67e8: $00
	ld   bc, $2c02                                   ; $67e9: $01 $02 $2c
	ld   bc, $2000                                   ; $67ec: $01 $00 $20
	inc  e                                           ; $67ef: $1c
	nop                                              ; $67f0: $00
	ld   b, $57                                      ; $67f1: $06 $57
	nop                                              ; $67f3: $00
	rrca                                             ; $67f4: $0f
	nop                                              ; $67f5: $00
	ld   bc, $6701                                   ; $67f6: $01 $01 $67
	adc  l                                           ; $67f9: $8d
	sbc  d                                           ; $67fa: $9a
	ld   h, e                                        ; $67fb: $63
	and  c                                           ; $67fc: $a1
	sbc  a                                           ; $67fd: $9f
	dec  c                                           ; $67fe: $0d
	nop                                              ; $67ff: $00
	ld   a, [bc]                                     ; $6800: $0a
	inc  e                                           ; $6801: $1c
	ld   [bc], a                                     ; $6802: $02
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	ld   bc, $8c52                                   ; $6805: $01 $52 $8c
	sbc  [hl]                                        ; $6808: $9e
	inc  bc                                          ; $6809: $03
	ld   l, e                                        ; $680a: $6b
	ld   e, d                                        ; $680b: $5a
	inc  b                                           ; $680c: $04
	sbc  c                                           ; $680d: $99
	ld   l, c                                        ; $680e: $69
	adc  h                                           ; $680f: $8c
	ld   l, c                                        ; $6810: $69
	and  c                                           ; $6811: $a1
	ld   a, h                                        ; $6812: $7c
	sbc  a                                           ; $6813: $9f
	dec  c                                           ; $6814: $0d
	ld   d, b                                        ; $6815: $50
	halt                                             ; $6816: $76
	ld   a, c                                        ; $6817: $79
	ld   h, l                                        ; $6818: $65
	ld   [hl], h                                     ; $6819: $74
	ld   e, l                                        ; $681a: $5d
	ld   l, [hl]                                     ; $681b: $6e
	ld   h, e                                        ; $681c: $63
	ld   d, d                                        ; $681d: $52
	ld   a, b                                        ; $681e: $78
	sbc  a                                           ; $681f: $9f
	dec  c                                           ; $6820: $0d
	nop                                              ; $6821: $00
	ld   a, [bc]                                     ; $6822: $0a
	dec  c                                           ; $6823: $0d
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	rrca                                             ; $6826: $0f
	nop                                              ; $6827: $00
	ld   bc, $1e09                                   ; $6828: $01 $09 $1e
	nop                                              ; $682b: $00
	inc  e                                           ; $682c: $1c
	ld   [bc], a                                     ; $682d: $02
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	ld   bc, $9750                                   ; $6830: $01 $50 $97
	sbc  [hl]                                        ; $6833: $9e
	ld   [$6300], sp                                 ; $6834: $08 $00 $63
	and  c                                           ; $6837: $a1
	sbc  a                                           ; $6838: $9f
	dec  c                                           ; $6839: $0d
	nop                                              ; $683a: $00
	ld   a, [bc]                                     ; $683b: $0a
	rrca                                             ; $683c: $0f
	nop                                              ; $683d: $00
	ld   bc, $6701                                   ; $683e: $01 $01 $67
	adc  l                                           ; $6841: $8d
	sbc  d                                           ; $6842: $9a
	ld   h, e                                        ; $6843: $63
	and  c                                           ; $6844: $a1
	sbc  a                                           ; $6845: $9f
	dec  c                                           ; $6846: $0d
	ld   e, b                                        ; $6847: $58
	inc  b                                           ; $6848: $04
	ld   a, e                                        ; $6849: $7b
	sbc  d                                           ; $684a: $9a
	ld   h, e                                        ; $684b: $63
	adc  h                                           ; $684c: $8c
	ld   [hl], l                                     ; $684d: $75
	ld   h, a                                        ; $684e: $67
	sbc  a                                           ; $684f: $9f
	dec  c                                           ; $6850: $0d
	nop                                              ; $6851: $00
	ld   a, [bc]                                     ; $6852: $0a
	inc  e                                           ; $6853: $1c
	ld   [bc], a                                     ; $6854: $02
	ld   bc, $0101                                   ; $6855: $01 $01 $01
	ld   e, b                                        ; $6858: $58
	inc  b                                           ; $6859: $04
	ld   a, e                                        ; $685a: $7b
	sbc  d                                           ; $685b: $9a
	ld   h, e                                        ; $685c: $63
	adc  h                                           ; $685d: $8c
	ld   [hl], l                                     ; $685e: $75
	ld   h, a                                        ; $685f: $67
	sbc  l                                           ; $6860: $9d
	sbc  a                                           ; $6861: $9f
	dec  c                                           ; $6862: $0d
	ld   [hl], l                                     ; $6863: $75
	ld   a, l                                        ; $6864: $7d
	inc  bc                                          ; $6865: $03
	add  e                                           ; $6866: $83
	dec  b                                           ; $6867: $05
	dec  c                                           ; $6868: $0d
	rst  $38                                         ; $6869: $ff
	rst  $38                                         ; $686a: $ff
	dec  c                                           ; $686b: $0d
	nop                                              ; $686c: $00
	ld   a, [bc]                                     ; $686d: $0a
	dec  c                                           ; $686e: $0d
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	rrca                                             ; $6871: $0f
	nop                                              ; $6872: $00
	ld   bc, $1e09                                   ; $6873: $01 $09 $1e
	nop                                              ; $6876: $00
	dec  c                                           ; $6877: $0d
	ld   [bc], a                                     ; $6878: $02
	nop                                              ; $6879: $00
	rrca                                             ; $687a: $0f
	nop                                              ; $687b: $00
	ld   bc, $5001                                   ; $687c: $01 $01 $50
	sbc  [hl]                                        ; $687f: $9e
	ld   h, a                                        ; $6880: $67
	adc  l                                           ; $6881: $8d
	sbc  d                                           ; $6882: $9a
	ld   h, e                                        ; $6883: $63
	and  c                                           ; $6884: $a1
	sbc  a                                           ; $6885: $9f
	dec  c                                           ; $6886: $0d
	nop                                              ; $6887: $00
	ld   a, [bc]                                     ; $6888: $0a
	rrca                                             ; $6889: $0f
	ld   [bc], a                                     ; $688a: $02
	nop                                              ; $688b: $00
	ld   bc, $9750                                   ; $688c: $01 $50 $97
	sbc  [hl]                                        ; $688f: $9e
	ld   [$6300], sp                                 ; $6890: $08 $00 $63
	and  c                                           ; $6893: $a1
	sbc  a                                           ; $6894: $9f
	dec  c                                           ; $6895: $0d
	nop                                              ; $6896: $00
	ld   a, [bc]                                     ; $6897: $0a
	rrca                                             ; $6898: $0f
	nop                                              ; $6899: $00
	ld   bc, $0201                                   ; $689a: $01 $01 $02
	and  l                                           ; $689d: $a5
	inc  b                                           ; $689e: $04
	xor  d                                           ; $689f: $aa
	ld   a, h                                        ; $68a0: $7c
	ld   e, b                                        ; $68a1: $58
	inc  b                                           ; $68a2: $04
	xor  l                                           ; $68a3: $ad
	ld   h, d                                        ; $68a4: $62
	inc  b                                           ; $68a5: $04
	sbc  h                                           ; $68a6: $9c
	ld   a, l                                        ; $68a7: $7d
	dec  c                                           ; $68a8: $0d
	ld   e, b                                        ; $68a9: $58
	ld   d, d                                        ; $68aa: $52
	ld   h, l                                        ; $68ab: $65
	ld   e, c                                        ; $68ac: $59
	ld   [hl], c                                     ; $68ad: $71
	ld   l, l                                        ; $68ae: $6d
	ld   [hl], l                                     ; $68af: $75
	ld   h, a                                        ; $68b0: $67
	ld   a, e                                        ; $68b1: $7b
	sbc  a                                           ; $68b2: $9f
	dec  c                                           ; $68b3: $0d
	nop                                              ; $68b4: $00
	ld   a, [bc]                                     ; $68b5: $0a
	rlca                                             ; $68b6: $07
	db   $fc                                         ; $68b7: $fc
	nop                                              ; $68b8: $00
	ld   [bc], a                                     ; $68b9: $02
	nop                                              ; $68ba: $00
	ld   bc, $2010                                   ; $68bb: $01 $10 $20
	nop                                              ; $68be: $00
	rlca                                             ; $68bf: $07
	inc  e                                           ; $68c0: $1c
	ld   bc, $0002                                   ; $68c1: $01 $02 $00
	ld   bc, $2012                                   ; $68c4: $01 $12 $20
	nop                                              ; $68c7: $00
	rlca                                             ; $68c8: $07
	dec  sp                                          ; $68c9: $3b
	ld   bc, $0002                                   ; $68ca: $01 $02 $00
	ld   bc, $2014                                   ; $68cd: $01 $14 $20
	nop                                              ; $68d0: $00
	inc  e                                           ; $68d1: $1c
	ld   [bc], a                                     ; $68d2: $02
	ld   bc, $0101                                   ; $68d3: $01 $01 $01
	ld   d, [hl]                                     ; $68d6: $56
	ld   d, [hl]                                     ; $68d7: $56
	sbc  [hl]                                        ; $68d8: $9e
	ld   e, b                                        ; $68d9: $58
	ld   d, d                                        ; $68da: $52
	ld   h, l                                        ; $68db: $65
	ld   d, d                                        ; $68dc: $52
	dec  c                                           ; $68dd: $0d
	ret  nc                                          ; $68de: $d0

	and  l                                           ; $68df: $a5
	xor  h                                           ; $68e0: $ac
	db   $eb                                         ; $68e1: $eb
	ld   d, h                                        ; $68e2: $54
	ld   [hl], a                                     ; $68e3: $77
	and  c                                           ; $68e4: $a1
	ld   [hl], l                                     ; $68e5: $75
	ld   h, l                                        ; $68e6: $65
	ld   l, l                                        ; $68e7: $6d
	sbc  l                                           ; $68e8: $9d
	ld   a, e                                        ; $68e9: $7b
	sbc  a                                           ; $68ea: $9f
	dec  c                                           ; $68eb: $0d
	nop                                              ; $68ec: $00
	ld   a, [bc]                                     ; $68ed: $0a
	ld   b, $59                                      ; $68ee: $06 $59
	ld   bc, $021c                                   ; $68f0: $01 $1c $02
	ld   bc, $0101                                   ; $68f3: $01 $01 $01
	ld   d, [hl]                                     ; $68f6: $56
	ld   d, [hl]                                     ; $68f7: $56
	sbc  [hl]                                        ; $68f8: $9e
	ld   e, b                                        ; $68f9: $58
	ld   d, d                                        ; $68fa: $52
	ld   h, l                                        ; $68fb: $65
	ld   d, d                                        ; $68fc: $52
	dec  c                                           ; $68fd: $0d
	inc  bc                                          ; $68fe: $03
	ld   e, b                                        ; $68ff: $58
	dec  b                                           ; $6900: $05
	or   l                                           ; $6901: $b5
	ld   l, e                                        ; $6902: $6b
	ld   a, [hl]                                     ; $6903: $7e
	ld   [hl], l                                     ; $6904: $75
	ld   h, l                                        ; $6905: $65
	ld   l, l                                        ; $6906: $6d
	sbc  l                                           ; $6907: $9d
	ld   a, e                                        ; $6908: $7b
	sbc  a                                           ; $6909: $9f
	dec  c                                           ; $690a: $0d
	nop                                              ; $690b: $00
	ld   a, [bc]                                     ; $690c: $0a
	ld   b, $59                                      ; $690d: $06 $59
	ld   bc, $021c                                   ; $690f: $01 $1c $02
	ld   bc, $0101                                   ; $6912: $01 $01 $01
	ld   d, [hl]                                     ; $6915: $56
	ld   d, [hl]                                     ; $6916: $56
	sbc  [hl]                                        ; $6917: $9e
	ld   e, b                                        ; $6918: $58
	ld   d, d                                        ; $6919: $52
	ld   h, l                                        ; $691a: $65
	ld   d, d                                        ; $691b: $52
	dec  c                                           ; $691c: $0d
	ld   l, a                                        ; $691d: $6f
	sub  a                                           ; $691e: $97
	ld   h, l                                        ; $691f: $65
	ld   l, b                                        ; $6920: $68
	ld   h, l                                        ; $6921: $65
	ld   [hl], l                                     ; $6922: $75
	ld   h, l                                        ; $6923: $65
	ld   l, l                                        ; $6924: $6d
	sbc  l                                           ; $6925: $9d
	ld   a, e                                        ; $6926: $7b
	sbc  a                                           ; $6927: $9f
	dec  c                                           ; $6928: $0d
	nop                                              ; $6929: $00
	ld   a, [bc]                                     ; $692a: $0a
	ld   b, $59                                      ; $692b: $06 $59
	ld   bc, $021c                                   ; $692d: $01 $1c $02
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	ld   bc, $9a6b                                   ; $6932: $01 $6b $9a
	ld   [hl], l                                     ; $6935: $75
	ld   a, l                                        ; $6936: $7d
	sbc  [hl]                                        ; $6937: $9e
	inc  bc                                          ; $6938: $03
	add  e                                           ; $6939: $83
	dec  b                                           ; $693a: $05
	dec  c                                           ; $693b: $0d
	ld   h, l                                        ; $693c: $65
	adc  h                                           ; $693d: $8c
	ld   h, a                                        ; $693e: $67
	sbc  l                                           ; $693f: $9d
	sbc  a                                           ; $6940: $9f
	dec  c                                           ; $6941: $0d
	nop                                              ; $6942: $00
	ld   a, [bc]                                     ; $6943: $0a
	dec  c                                           ; $6944: $0d
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	rrca                                             ; $6947: $0f
	nop                                              ; $6948: $00
	ld   bc, $1e09                                   ; $6949: $01 $09 $1e
	nop                                              ; $694c: $00
	nop                                              ; $694d: $00
	ld   [bc], a                                     ; $694e: $02
	rlca                                             ; $694f: $07
	rra                                              ; $6950: $1f
	nop                                              ; $6951: $00
	inc  bc                                          ; $6952: $03
	ld   de, $6501                                   ; $6953: $11 $01 $65
	ld   [hl+], a                                    ; $6956: $22
	nop                                              ; $6957: $00
	rlca                                             ; $6958: $07
	sub  [hl]                                        ; $6959: $96
	nop                                              ; $695a: $00
	inc  bc                                          ; $695b: $03
	ld   de, $9b01                                   ; $695c: $11 $01 $9b
	dec  h                                           ; $695f: $25
	ld   [bc], a                                     ; $6960: $02
	nop                                              ; $6961: $00
	ld   bc, $2c02                                   ; $6962: $01 $02 $2c
	ld   bc, $2000                                   ; $6965: $01 $00 $20
	inc  e                                           ; $6968: $1c
	nop                                              ; $6969: $00
	ld   b, $50                                      ; $696a: $06 $50
	nop                                              ; $696c: $00
	rrca                                             ; $696d: $0f
	nop                                              ; $696e: $00
	ld   bc, $6301                                   ; $696f: $01 $01 $63
	ld   e, l                                        ; $6972: $5d
	sub  a                                           ; $6973: $97
	ld   h, e                                        ; $6974: $63
	and  c                                           ; $6975: $a1
	sbc  a                                           ; $6976: $9f
	dec  c                                           ; $6977: $0d
	nop                                              ; $6978: $00
	ld   a, [bc]                                     ; $6979: $0a
	inc  e                                           ; $697a: $1c
	ld   bc, $0000                                   ; $697b: $01 $00 $00
	ld   bc, $8f62                                   ; $697e: $01 $62 $8f
	and  c                                           ; $6981: $a1
	ld   a, b                                        ; $6982: $78
	ld   h, e                                        ; $6983: $63
	ld   d, d                                        ; $6984: $52
	sbc  a                                           ; $6985: $9f
	dec  c                                           ; $6986: $0d
	ld   d, d                                        ; $6987: $52
	adc  h                                           ; $6988: $8c
	dec  b                                           ; $6989: $05
	jr   z, jr_05c_69de                              ; $698a: $28 $52

	ld   [hl], l                                     ; $698c: $75
	sbc  c                                           ; $698d: $99
	and  c                                           ; $698e: $a1
	ld   [hl], l                                     ; $698f: $75
	ld   h, a                                        ; $6990: $67
	sbc  a                                           ; $6991: $9f
	dec  c                                           ; $6992: $0d
	nop                                              ; $6993: $00
	ld   a, [bc]                                     ; $6994: $0a
	dec  c                                           ; $6995: $0d
	nop                                              ; $6996: $00
	nop                                              ; $6997: $00
	rrca                                             ; $6998: $0f
	nop                                              ; $6999: $00
	ld   bc, $1e09                                   ; $699a: $01 $09 $1e
	nop                                              ; $699d: $00
	inc  e                                           ; $699e: $1c
	ld   bc, $0000                                   ; $699f: $01 $00 $00
	ld   bc, $9e50                                   ; $69a2: $01 $50 $9e
	ld   [$6300], sp                                 ; $69a5: $08 $00 $63
	and  c                                           ; $69a8: $a1
	sbc  a                                           ; $69a9: $9f
	dec  c                                           ; $69aa: $0d
	nop                                              ; $69ab: $00
	ld   a, [bc]                                     ; $69ac: $0a
	rrca                                             ; $69ad: $0f
	nop                                              ; $69ae: $00
	ld   bc, $6301                                   ; $69af: $01 $01 $63
	ld   e, l                                        ; $69b2: $5d
	sub  a                                           ; $69b3: $97
	ld   h, e                                        ; $69b4: $63
	and  c                                           ; $69b5: $a1
	sbc  a                                           ; $69b6: $9f
	dec  c                                           ; $69b7: $0d
	ld   e, b                                        ; $69b8: $58
	inc  b                                           ; $69b9: $04
	ld   a, e                                        ; $69ba: $7b
	sbc  d                                           ; $69bb: $9a
	ld   h, e                                        ; $69bc: $63
	adc  h                                           ; $69bd: $8c
	ld   [hl], l                                     ; $69be: $75
	ld   h, a                                        ; $69bf: $67
	sbc  a                                           ; $69c0: $9f
	dec  c                                           ; $69c1: $0d
	nop                                              ; $69c2: $00
	ld   a, [bc]                                     ; $69c3: $0a
	rrca                                             ; $69c4: $0f
	ld   bc, $0100                                   ; $69c5: $01 $00 $01
	ld   e, b                                        ; $69c8: $58
	inc  b                                           ; $69c9: $04
	ld   a, e                                        ; $69ca: $7b
	sbc  d                                           ; $69cb: $9a
	ld   h, e                                        ; $69cc: $63
	adc  h                                           ; $69cd: $8c
	ld   [hl], l                                     ; $69ce: $75
	ld   h, a                                        ; $69cf: $67
	sbc  a                                           ; $69d0: $9f
	dec  c                                           ; $69d1: $0d
	ld   l, e                                        ; $69d2: $6b
	sbc  d                                           ; $69d3: $9a
	ld   [hl], l                                     ; $69d4: $75
	ld   a, l                                        ; $69d5: $7d
	rst  $38                                         ; $69d6: $ff
	rst  $38                                         ; $69d7: $ff
	dec  c                                           ; $69d8: $0d
	nop                                              ; $69d9: $00
	ld   a, [bc]                                     ; $69da: $0a
	dec  c                                           ; $69db: $0d
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00

jr_05c_69de:
	rrca                                             ; $69de: $0f
	nop                                              ; $69df: $00
	ld   bc, $1e09                                   ; $69e0: $01 $09 $1e
	nop                                              ; $69e3: $00
	rrca                                             ; $69e4: $0f
	nop                                              ; $69e5: $00
	ld   bc, $010d                                   ; $69e6: $01 $0d $01
	nop                                              ; $69e9: $00
	ld   bc, $5d63                                   ; $69ea: $01 $63 $5d
	sub  a                                           ; $69ed: $97
	ld   h, e                                        ; $69ee: $63
	and  c                                           ; $69ef: $a1
	sbc  a                                           ; $69f0: $9f
	dec  c                                           ; $69f1: $0d
	nop                                              ; $69f2: $00
	ld   a, [bc]                                     ; $69f3: $0a
	rrca                                             ; $69f4: $0f
	ld   bc, $0100                                   ; $69f5: $01 $00 $01
	ld   d, b                                        ; $69f8: $50
	sub  a                                           ; $69f9: $97
	sbc  [hl]                                        ; $69fa: $9e
	ld   [$6300], sp                                 ; $69fb: $08 $00 $63
	and  c                                           ; $69fe: $a1
	sbc  a                                           ; $69ff: $9f
	dec  c                                           ; $6a00: $0d
	nop                                              ; $6a01: $00
	ld   a, [bc]                                     ; $6a02: $0a

Call_05c_6a03:
	rrca                                             ; $6a03: $0f
	nop                                              ; $6a04: $00
	ld   bc, $0201                                   ; $6a05: $01 $01 $02
	and  l                                           ; $6a08: $a5
	inc  b                                           ; $6a09: $04
	xor  d                                           ; $6a0a: $aa
	ld   a, h                                        ; $6a0b: $7c
	ld   e, b                                        ; $6a0c: $58
	inc  b                                           ; $6a0d: $04
	xor  l                                           ; $6a0e: $ad
	ld   h, d                                        ; $6a0f: $62
	inc  b                                           ; $6a10: $04
	sbc  h                                           ; $6a11: $9c
	ld   a, l                                        ; $6a12: $7d
	dec  c                                           ; $6a13: $0d
	ld   e, b                                        ; $6a14: $58
	ld   d, d                                        ; $6a15: $52
	ld   h, l                                        ; $6a16: $65
	ld   e, c                                        ; $6a17: $59
	ld   [hl], c                                     ; $6a18: $71
	ld   l, l                                        ; $6a19: $6d
	ld   [hl], l                                     ; $6a1a: $75
	ld   h, a                                        ; $6a1b: $67
	ld   a, e                                        ; $6a1c: $7b
	sbc  a                                           ; $6a1d: $9f
	dec  c                                           ; $6a1e: $0d
	nop                                              ; $6a1f: $00
	ld   a, [bc]                                     ; $6a20: $0a
	rlca                                             ; $6a21: $07
	xor  $00                                         ; $6a22: $ee $00
	ld   [bc], a                                     ; $6a24: $02
	nop                                              ; $6a25: $00
	ld   bc, $2010                                   ; $6a26: $01 $10 $20
	nop                                              ; $6a29: $00
	rlca                                             ; $6a2a: $07
	dec  c                                           ; $6a2b: $0d
	ld   bc, $0002                                   ; $6a2c: $01 $02 $00
	ld   bc, $2012                                   ; $6a2f: $01 $12 $20
	nop                                              ; $6a32: $00
	rlca                                             ; $6a33: $07
	dec  hl                                          ; $6a34: $2b
	ld   bc, $0002                                   ; $6a35: $01 $02 $00
	ld   bc, $2014                                   ; $6a38: $01 $14 $20
	nop                                              ; $6a3b: $00
	inc  e                                           ; $6a3c: $1c
	ld   bc, $0101                                   ; $6a3d: $01 $01 $01
	ld   bc, $5656                                   ; $6a40: $01 $56 $56
	sbc  [hl]                                        ; $6a43: $9e
	ld   e, b                                        ; $6a44: $58
	ld   d, d                                        ; $6a45: $52
	ld   h, l                                        ; $6a46: $65
	ld   d, d                                        ; $6a47: $52
	dec  c                                           ; $6a48: $0d
	ret  nc                                          ; $6a49: $d0

	and  l                                           ; $6a4a: $a5
	xor  h                                           ; $6a4b: $ac
	db   $eb                                         ; $6a4c: $eb
	ld   d, h                                        ; $6a4d: $54
	ld   [hl], a                                     ; $6a4e: $77
	and  c                                           ; $6a4f: $a1
	ld   [hl], l                                     ; $6a50: $75
	ld   h, l                                        ; $6a51: $65
	ld   l, l                                        ; $6a52: $6d
	ld   a, e                                        ; $6a53: $7b
	sbc  a                                           ; $6a54: $9f
	dec  c                                           ; $6a55: $0d
	nop                                              ; $6a56: $00
	ld   a, [bc]                                     ; $6a57: $0a
	ld   b, $48                                      ; $6a58: $06 $48
	ld   bc, $011c                                   ; $6a5a: $01 $1c $01
	ld   bc, $0101                                   ; $6a5d: $01 $01 $01
	ld   d, [hl]                                     ; $6a60: $56
	ld   d, [hl]                                     ; $6a61: $56
	sbc  [hl]                                        ; $6a62: $9e
	ld   e, b                                        ; $6a63: $58
	ld   d, d                                        ; $6a64: $52
	ld   h, l                                        ; $6a65: $65
	ld   d, d                                        ; $6a66: $52
	dec  c                                           ; $6a67: $0d
	inc  bc                                          ; $6a68: $03
	ld   e, b                                        ; $6a69: $58
	dec  b                                           ; $6a6a: $05
	or   l                                           ; $6a6b: $b5
	ld   l, e                                        ; $6a6c: $6b
	ld   a, [hl]                                     ; $6a6d: $7e
	ld   [hl], l                                     ; $6a6e: $75
	ld   h, l                                        ; $6a6f: $65
	ld   l, l                                        ; $6a70: $6d
	ld   a, e                                        ; $6a71: $7b
	sbc  a                                           ; $6a72: $9f
	dec  c                                           ; $6a73: $0d
	nop                                              ; $6a74: $00
	ld   a, [bc]                                     ; $6a75: $0a
	ld   b, $48                                      ; $6a76: $06 $48
	ld   bc, $011c                                   ; $6a78: $01 $1c $01
	ld   bc, $0101                                   ; $6a7b: $01 $01 $01
	ld   d, [hl]                                     ; $6a7e: $56
	ld   d, [hl]                                     ; $6a7f: $56
	sbc  [hl]                                        ; $6a80: $9e
	ld   e, b                                        ; $6a81: $58
	ld   d, d                                        ; $6a82: $52
	ld   h, l                                        ; $6a83: $65
	ld   d, d                                        ; $6a84: $52
	dec  c                                           ; $6a85: $0d
	ld   l, a                                        ; $6a86: $6f
	sub  a                                           ; $6a87: $97
	ld   h, l                                        ; $6a88: $65
	ld   l, b                                        ; $6a89: $68
	ld   h, l                                        ; $6a8a: $65
	ld   [hl], l                                     ; $6a8b: $75
	ld   h, l                                        ; $6a8c: $65
	ld   l, l                                        ; $6a8d: $6d
	ld   a, e                                        ; $6a8e: $7b
	sbc  a                                           ; $6a8f: $9f
	dec  c                                           ; $6a90: $0d
	nop                                              ; $6a91: $00
	ld   a, [bc]                                     ; $6a92: $0a
	ld   b, $48                                      ; $6a93: $06 $48
	ld   bc, $011c                                   ; $6a95: $01 $1c $01
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	ld   bc, $9a6b                                   ; $6a9a: $01 $6b $9a
	ld   [hl], l                                     ; $6a9d: $75
	ld   a, l                                        ; $6a9e: $7d
	adc  h                                           ; $6a9f: $8c
	ld   l, l                                        ; $6aa0: $6d
	sbc  a                                           ; $6aa1: $9f
	dec  c                                           ; $6aa2: $0d
	nop                                              ; $6aa3: $00
	ld   a, [bc]                                     ; $6aa4: $0a
	dec  c                                           ; $6aa5: $0d
	nop                                              ; $6aa6: $00
	nop                                              ; $6aa7: $00
	rrca                                             ; $6aa8: $0f
	nop                                              ; $6aa9: $00
	ld   bc, $1e09                                   ; $6aaa: $01 $09 $1e
	nop                                              ; $6aad: $00
	nop                                              ; $6aae: $00
	ld   [bc], a                                     ; $6aaf: $02
	rlca                                             ; $6ab0: $07
	rra                                              ; $6ab1: $1f
	nop                                              ; $6ab2: $00
	inc  bc                                          ; $6ab3: $03
	inc  de                                          ; $6ab4: $13
	ld   bc, $2265                                   ; $6ab5: $01 $65 $22
	nop                                              ; $6ab8: $00
	rlca                                             ; $6ab9: $07
	sub  e                                           ; $6aba: $93
	nop                                              ; $6abb: $00
	inc  bc                                          ; $6abc: $03
	inc  de                                          ; $6abd: $13
	ld   bc, $259b                                   ; $6abe: $01 $9b $25
	ld   [bc], a                                     ; $6ac1: $02
	nop                                              ; $6ac2: $00
	ld   bc, $2c02                                   ; $6ac3: $01 $02 $2c
	ld   bc, $2000                                   ; $6ac6: $01 $00 $20
	inc  e                                           ; $6ac9: $1c
	nop                                              ; $6aca: $00
	ld   b, $4f                                      ; $6acb: $06 $4f
	nop                                              ; $6acd: $00
	rrca                                             ; $6ace: $0f
	nop                                              ; $6acf: $00
	ld   bc, $df01                                   ; $6ad0: $01 $01 $df
	db   $ec                                         ; $6ad3: $ec
	and  e                                           ; $6ad4: $a3
	ld   h, e                                        ; $6ad5: $63
	and  c                                           ; $6ad6: $a1
	sbc  a                                           ; $6ad7: $9f
	dec  c                                           ; $6ad8: $0d
	nop                                              ; $6ad9: $00
	ld   a, [bc]                                     ; $6ada: $0a
	inc  e                                           ; $6adb: $1c
	inc  bc                                          ; $6adc: $03
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	ld   bc, $8c52                                   ; $6adf: $01 $52 $8c
	dec  b                                           ; $6ae2: $05
	jr   z, jr_05c_6b37                              ; $6ae3: $28 $52

	ld   [hl], l                                     ; $6ae5: $75
	sbc  c                                           ; $6ae6: $99
	ld   a, h                                        ; $6ae7: $7c
	sbc  a                                           ; $6ae8: $9f
	dec  c                                           ; $6ae9: $0d
	adc  h                                           ; $6aea: $8c
	ld   l, l                                        ; $6aeb: $6d
	sbc  [hl]                                        ; $6aec: $9e
	ld   [bc], a                                     ; $6aed: $02
	xor  d                                           ; $6aee: $aa
	ld   [hl], l                                     ; $6aef: $75
	ld   a, e                                        ; $6af0: $7b
	sbc  a                                           ; $6af1: $9f
	dec  c                                           ; $6af2: $0d
	nop                                              ; $6af3: $00
	ld   a, [bc]                                     ; $6af4: $0a
	dec  c                                           ; $6af5: $0d
	nop                                              ; $6af6: $00
	nop                                              ; $6af7: $00
	rrca                                             ; $6af8: $0f
	nop                                              ; $6af9: $00
	ld   bc, $1e09                                   ; $6afa: $01 $09 $1e
	nop                                              ; $6afd: $00
	inc  e                                           ; $6afe: $1c
	inc  bc                                          ; $6aff: $03
	nop                                              ; $6b00: $00
	nop                                              ; $6b01: $00
	ld   bc, $9750                                   ; $6b02: $01 $50 $97
	sbc  [hl]                                        ; $6b05: $9e
	ld   [$5d00], sp                                 ; $6b06: $08 $00 $5d
	and  c                                           ; $6b09: $a1
	sbc  a                                           ; $6b0a: $9f
	dec  c                                           ; $6b0b: $0d
	nop                                              ; $6b0c: $00
	ld   a, [bc]                                     ; $6b0d: $0a
	rrca                                             ; $6b0e: $0f
	nop                                              ; $6b0f: $00
	ld   bc, $df01                                   ; $6b10: $01 $01 $df
	db   $ec                                         ; $6b13: $ec
	and  e                                           ; $6b14: $a3
	ld   h, e                                        ; $6b15: $63
	and  c                                           ; $6b16: $a1
	sbc  a                                           ; $6b17: $9f
	dec  c                                           ; $6b18: $0d
	ld   e, b                                        ; $6b19: $58
	inc  b                                           ; $6b1a: $04
	ld   a, e                                        ; $6b1b: $7b
	sbc  d                                           ; $6b1c: $9a
	ld   h, e                                        ; $6b1d: $63
	adc  h                                           ; $6b1e: $8c
	ld   [hl], l                                     ; $6b1f: $75
	ld   h, a                                        ; $6b20: $67
	sbc  a                                           ; $6b21: $9f
	dec  c                                           ; $6b22: $0d
	nop                                              ; $6b23: $00
	ld   a, [bc]                                     ; $6b24: $0a
	rrca                                             ; $6b25: $0f
	inc  bc                                          ; $6b26: $03
	nop                                              ; $6b27: $00
	ld   bc, $0458                                   ; $6b28: $01 $58 $04
	ld   a, e                                        ; $6b2b: $7b
	sbc  d                                           ; $6b2c: $9a
	ld   h, e                                        ; $6b2d: $63
	adc  h                                           ; $6b2e: $8c
	sbc  a                                           ; $6b2f: $9f
	dec  c                                           ; $6b30: $0d
	ld   h, [hl]                                     ; $6b31: $66
	sub  c                                           ; $6b32: $91
	ld   d, b                                        ; $6b33: $50
	ld   a, e                                        ; $6b34: $7b
	sbc  a                                           ; $6b35: $9f
	dec  c                                           ; $6b36: $0d

jr_05c_6b37:
	nop                                              ; $6b37: $00
	ld   a, [bc]                                     ; $6b38: $0a
	dec  c                                           ; $6b39: $0d
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	rrca                                             ; $6b3c: $0f
	nop                                              ; $6b3d: $00
	ld   bc, $1e09                                   ; $6b3e: $01 $09 $1e
	nop                                              ; $6b41: $00
	rrca                                             ; $6b42: $0f
	nop                                              ; $6b43: $00
	ld   bc, $030d                                   ; $6b44: $01 $0d $03
	nop                                              ; $6b47: $00
	ld   bc, $ecdf                                   ; $6b48: $01 $df $ec
	and  e                                           ; $6b4b: $a3
	ld   h, e                                        ; $6b4c: $63
	and  c                                           ; $6b4d: $a1
	sbc  a                                           ; $6b4e: $9f
	dec  c                                           ; $6b4f: $0d
	nop                                              ; $6b50: $00
	ld   a, [bc]                                     ; $6b51: $0a
	inc  e                                           ; $6b52: $1c
	inc  bc                                          ; $6b53: $03
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00
	ld   bc, $9750                                   ; $6b56: $01 $50 $97
	sbc  [hl]                                        ; $6b59: $9e
	ld   [$5d00], sp                                 ; $6b5a: $08 $00 $5d
	and  c                                           ; $6b5d: $a1
	sbc  a                                           ; $6b5e: $9f
	dec  c                                           ; $6b5f: $0d
	nop                                              ; $6b60: $00
	ld   a, [bc]                                     ; $6b61: $0a
	rrca                                             ; $6b62: $0f
	nop                                              ; $6b63: $00
	ld   bc, $0201                                   ; $6b64: $01 $01 $02
	and  l                                           ; $6b67: $a5
	inc  b                                           ; $6b68: $04
	xor  d                                           ; $6b69: $aa
	ld   a, h                                        ; $6b6a: $7c
	ld   e, b                                        ; $6b6b: $58
	inc  b                                           ; $6b6c: $04
	xor  l                                           ; $6b6d: $ad
	ld   h, d                                        ; $6b6e: $62
	inc  b                                           ; $6b6f: $04
	sbc  h                                           ; $6b70: $9c
	ld   a, l                                        ; $6b71: $7d
	dec  c                                           ; $6b72: $0d
	ld   e, b                                        ; $6b73: $58
	ld   d, d                                        ; $6b74: $52
	ld   h, l                                        ; $6b75: $65
	ld   e, c                                        ; $6b76: $59
	ld   [hl], c                                     ; $6b77: $71
	ld   l, l                                        ; $6b78: $6d
	ld   [hl], l                                     ; $6b79: $75
	ld   h, a                                        ; $6b7a: $67
	ld   a, e                                        ; $6b7b: $7b
	sbc  a                                           ; $6b7c: $9f
	dec  c                                           ; $6b7d: $0d
	nop                                              ; $6b7e: $00
	ld   a, [bc]                                     ; $6b7f: $0a
	rlca                                             ; $6b80: $07
	db   $ec                                         ; $6b81: $ec
	nop                                              ; $6b82: $00
	ld   [bc], a                                     ; $6b83: $02
	nop                                              ; $6b84: $00
	ld   bc, $2010                                   ; $6b85: $01 $10 $20
	nop                                              ; $6b88: $00
	rlca                                             ; $6b89: $07
	inc  c                                           ; $6b8a: $0c
	ld   bc, $0002                                   ; $6b8b: $01 $02 $00
	ld   bc, $2012                                   ; $6b8e: $01 $12 $20
	nop                                              ; $6b91: $00
	rlca                                             ; $6b92: $07
	dec  hl                                          ; $6b93: $2b
	ld   bc, $0002                                   ; $6b94: $01 $02 $00
	ld   bc, $2014                                   ; $6b97: $01 $14 $20
	nop                                              ; $6b9a: $00
	inc  e                                           ; $6b9b: $1c
	inc  bc                                          ; $6b9c: $03
	inc  bc                                          ; $6b9d: $03
	inc  bc                                          ; $6b9e: $03
	ld   bc, $5656                                   ; $6b9f: $01 $56 $56
	sbc  [hl]                                        ; $6ba2: $9e
	ld   e, b                                        ; $6ba3: $58
	ld   d, d                                        ; $6ba4: $52
	ld   h, l                                        ; $6ba5: $65
	ld   d, d                                        ; $6ba6: $52
	dec  c                                           ; $6ba7: $0d
	ret  nc                                          ; $6ba8: $d0

	and  l                                           ; $6ba9: $a5
	xor  h                                           ; $6baa: $ac
	db   $eb                                         ; $6bab: $eb
	ld   d, h                                        ; $6bac: $54
	ld   [hl], a                                     ; $6bad: $77
	and  c                                           ; $6bae: $a1
	ld   l, [hl]                                     ; $6baf: $6e
	ld   [hl], c                                     ; $6bb0: $71
	ld   l, l                                        ; $6bb1: $6d
	sbc  l                                           ; $6bb2: $9d
	ld   a, e                                        ; $6bb3: $7b
	sbc  a                                           ; $6bb4: $9f
	dec  c                                           ; $6bb5: $0d
	nop                                              ; $6bb6: $00
	ld   a, [bc]                                     ; $6bb7: $0a
	ld   b, $49                                      ; $6bb8: $06 $49
	ld   bc, $031c                                   ; $6bba: $01 $1c $03
	inc  bc                                          ; $6bbd: $03
	inc  bc                                          ; $6bbe: $03
	ld   bc, $5656                                   ; $6bbf: $01 $56 $56
	sbc  [hl]                                        ; $6bc2: $9e
	ld   e, b                                        ; $6bc3: $58
	ld   d, d                                        ; $6bc4: $52
	ld   h, l                                        ; $6bc5: $65
	ld   d, d                                        ; $6bc6: $52
	dec  c                                           ; $6bc7: $0d
	inc  bc                                          ; $6bc8: $03
	ld   e, b                                        ; $6bc9: $58
	dec  b                                           ; $6bca: $05
	or   l                                           ; $6bcb: $b5
	ld   l, e                                        ; $6bcc: $6b
	ld   a, [hl]                                     ; $6bcd: $7e
	ld   l, [hl]                                     ; $6bce: $6e
	ld   [hl], c                                     ; $6bcf: $71
	ld   l, l                                        ; $6bd0: $6d
	sbc  l                                           ; $6bd1: $9d
	ld   a, e                                        ; $6bd2: $7b
	sbc  a                                           ; $6bd3: $9f
	dec  c                                           ; $6bd4: $0d
	nop                                              ; $6bd5: $00
	ld   a, [bc]                                     ; $6bd6: $0a
	ld   b, $49                                      ; $6bd7: $06 $49
	ld   bc, $031c                                   ; $6bd9: $01 $1c $03
	inc  bc                                          ; $6bdc: $03
	inc  bc                                          ; $6bdd: $03
	ld   bc, $5656                                   ; $6bde: $01 $56 $56
	sbc  [hl]                                        ; $6be1: $9e
	ld   e, b                                        ; $6be2: $58
	ld   d, d                                        ; $6be3: $52
	ld   h, l                                        ; $6be4: $65
	ld   d, d                                        ; $6be5: $52
	dec  c                                           ; $6be6: $0d
	ld   l, a                                        ; $6be7: $6f
	sub  a                                           ; $6be8: $97
	ld   h, l                                        ; $6be9: $65
	ld   l, b                                        ; $6bea: $68
	ld   h, l                                        ; $6beb: $65
	ld   l, [hl]                                     ; $6bec: $6e
	ld   [hl], c                                     ; $6bed: $71
	ld   l, l                                        ; $6bee: $6d
	sbc  l                                           ; $6bef: $9d
	ld   a, e                                        ; $6bf0: $7b
	sbc  a                                           ; $6bf1: $9f
	dec  c                                           ; $6bf2: $0d
	nop                                              ; $6bf3: $00
	ld   a, [bc]                                     ; $6bf4: $0a
	ld   b, $49                                      ; $6bf5: $06 $49
	ld   bc, $031c                                   ; $6bf7: $01 $1c $03
	nop                                              ; $6bfa: $00
	nop                                              ; $6bfb: $00
	ld   bc, $9b6b                                   ; $6bfc: $01 $6b $9b
	ld   l, e                                        ; $6bff: $6b
	sbc  e                                           ; $6c00: $9b
	inc  bc                                          ; $6c01: $03
	ld   l, l                                        ; $6c02: $6d
	dec  b                                           ; $6c03: $05
	add  hl, de                                      ; $6c04: $19
	ld   a, h                                        ; $6c05: $7c
	inc  bc                                          ; $6c06: $03
	ld   l, a                                        ; $6c07: $6f
	ld   [bc], a                                     ; $6c08: $02
	xor  c                                           ; $6c09: $a9
	sub  [hl]                                        ; $6c0a: $96
	sbc  a                                           ; $6c0b: $9f
	dec  c                                           ; $6c0c: $0d
	ld   l, e                                        ; $6c0d: $6b
	sbc  d                                           ; $6c0e: $9a
	ld   h, [hl]                                     ; $6c0f: $66
	sub  c                                           ; $6c10: $91
	sbc  a                                           ; $6c11: $9f
	dec  c                                           ; $6c12: $0d
	nop                                              ; $6c13: $00
	ld   a, [bc]                                     ; $6c14: $0a
	dec  c                                           ; $6c15: $0d
	nop                                              ; $6c16: $00
	nop                                              ; $6c17: $00
	rrca                                             ; $6c18: $0f
	nop                                              ; $6c19: $00
	ld   bc, $1e09                                   ; $6c1a: $01 $09 $1e
	nop                                              ; $6c1d: $00
	nop                                              ; $6c1e: $00
	ld   [bc], a                                     ; $6c1f: $02
	rlca                                             ; $6c20: $07
	rra                                              ; $6c21: $1f
	nop                                              ; $6c22: $00
	inc  bc                                          ; $6c23: $03
	inc  d                                           ; $6c24: $14
	ld   bc, $2265                                   ; $6c25: $01 $65 $22
	nop                                              ; $6c28: $00
	rlca                                             ; $6c29: $07
	sub  c                                           ; $6c2a: $91
	nop                                              ; $6c2b: $00
	inc  bc                                          ; $6c2c: $03
	inc  d                                           ; $6c2d: $14
	ld   bc, $259b                                   ; $6c2e: $01 $9b $25
	ld   [bc], a                                     ; $6c31: $02
	nop                                              ; $6c32: $00
	ld   bc, $2c02                                   ; $6c33: $01 $02 $2c
	ld   bc, $2000                                   ; $6c36: $01 $00 $20
	inc  e                                           ; $6c39: $1c
	nop                                              ; $6c3a: $00
	ld   b, $50                                      ; $6c3b: $06 $50
	nop                                              ; $6c3d: $00
	rrca                                             ; $6c3e: $0f
	nop                                              ; $6c3f: $00
	ld   bc, $9201                                   ; $6c40: $01 $01 $92
	ld   d, b                                        ; $6c43: $50
	sbc  [hl]                                        ; $6c44: $9e
	and  e                                           ; $6c45: $a3
	and  l                                           ; $6c46: $a5
	db   $ec                                         ; $6c47: $ec
	cp   d                                           ; $6c48: $ba
	sbc  a                                           ; $6c49: $9f
	dec  c                                           ; $6c4a: $0d
	nop                                              ; $6c4b: $00
	ld   a, [bc]                                     ; $6c4c: $0a
	inc  e                                           ; $6c4d: $1c
	inc  b                                           ; $6c4e: $04
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	ld   bc, $a5a3                                   ; $6c51: $01 $a3 $a5
	db   $ec                                         ; $6c54: $ec
	cp   d                                           ; $6c55: $ba
	sbc  [hl]                                        ; $6c56: $9e
	ld   d, d                                        ; $6c57: $52
	ld   l, e                                        ; $6c58: $6b
	ld   e, d                                        ; $6c59: $5a
	ld   h, l                                        ; $6c5a: $65
	ld   d, d                                        ; $6c5b: $52
	ld   a, h                                        ; $6c5c: $7c
	sbc  a                                           ; $6c5d: $9f
	dec  c                                           ; $6c5e: $0d
	adc  h                                           ; $6c5f: $8c
	ld   l, l                                        ; $6c60: $6d
	ld   a, e                                        ; $6c61: $7b
	sbc  a                                           ; $6c62: $9f
	dec  c                                           ; $6c63: $0d
	nop                                              ; $6c64: $00
	ld   a, [bc]                                     ; $6c65: $0a
	dec  c                                           ; $6c66: $0d
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00
	rrca                                             ; $6c69: $0f
	nop                                              ; $6c6a: $00
	ld   bc, $1e09                                   ; $6c6b: $01 $09 $1e
	nop                                              ; $6c6e: $00
	inc  e                                           ; $6c6f: $1c
	inc  b                                           ; $6c70: $04
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	ld   bc, $9e50                                   ; $6c73: $01 $50 $9e
	ld   l, a                                        ; $6c76: $6f
	ld   d, d                                        ; $6c77: $52
	ld   [bc], a                                     ; $6c78: $02
	inc  de                                          ; $6c79: $13
	ld   l, a                                        ; $6c7a: $6f
	sub  c                                           ; $6c7b: $91
	and  c                                           ; $6c7c: $a1
	sbc  a                                           ; $6c7d: $9f
	dec  c                                           ; $6c7e: $0d
	nop                                              ; $6c7f: $00
	ld   a, [bc]                                     ; $6c80: $0a
	rrca                                             ; $6c81: $0f
	nop                                              ; $6c82: $00
	ld   bc, $9201                                   ; $6c83: $01 $01 $92
	ld   d, b                                        ; $6c86: $50
	sbc  [hl]                                        ; $6c87: $9e
	and  e                                           ; $6c88: $a3
	and  l                                           ; $6c89: $a5
	db   $ec                                         ; $6c8a: $ec
	cp   d                                           ; $6c8b: $ba
	sbc  a                                           ; $6c8c: $9f
	dec  c                                           ; $6c8d: $0d
	nop                                              ; $6c8e: $00
	ld   a, [bc]                                     ; $6c8f: $0a
	rrca                                             ; $6c90: $0f
	inc  b                                           ; $6c91: $04
	nop                                              ; $6c92: $00
	ld   bc, $9166                                   ; $6c93: $01 $66 $91
	ld   d, b                                        ; $6c96: $50
	adc  h                                           ; $6c97: $8c
	ld   l, l                                        ; $6c98: $6d
	ld   a, e                                        ; $6c99: $7b
	sbc  [hl]                                        ; $6c9a: $9e
	dec  c                                           ; $6c9b: $0d
	ld   l, a                                        ; $6c9c: $6f
	ld   d, d                                        ; $6c9d: $52
	ld   [bc], a                                     ; $6c9e: $02
	inc  de                                          ; $6c9f: $13
	ld   l, a                                        ; $6ca0: $6f
	sub  c                                           ; $6ca1: $91
	and  c                                           ; $6ca2: $a1
	sbc  a                                           ; $6ca3: $9f
	dec  c                                           ; $6ca4: $0d
	nop                                              ; $6ca5: $00
	ld   a, [bc]                                     ; $6ca6: $0a
	dec  c                                           ; $6ca7: $0d
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	rrca                                             ; $6caa: $0f
	nop                                              ; $6cab: $00
	ld   bc, $1e09                                   ; $6cac: $01 $09 $1e
	nop                                              ; $6caf: $00
	rrca                                             ; $6cb0: $0f
	nop                                              ; $6cb1: $00
	ld   bc, $040d                                   ; $6cb2: $01 $0d $04
	nop                                              ; $6cb5: $00
	ld   bc, $5092                                   ; $6cb6: $01 $92 $50
	sbc  [hl]                                        ; $6cb9: $9e
	and  e                                           ; $6cba: $a3
	and  l                                           ; $6cbb: $a5
	db   $ec                                         ; $6cbc: $ec
	cp   d                                           ; $6cbd: $ba
	sbc  a                                           ; $6cbe: $9f
	dec  c                                           ; $6cbf: $0d
	nop                                              ; $6cc0: $00
	ld   a, [bc]                                     ; $6cc1: $0a
	inc  e                                           ; $6cc2: $1c
	inc  b                                           ; $6cc3: $04
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	ld   bc, $9e50                                   ; $6cc6: $01 $50 $9e
	ld   l, a                                        ; $6cc9: $6f
	ld   d, d                                        ; $6cca: $52
	ld   [bc], a                                     ; $6ccb: $02
	inc  de                                          ; $6ccc: $13
	ld   l, a                                        ; $6ccd: $6f
	sub  c                                           ; $6cce: $91
	and  c                                           ; $6ccf: $a1
	sbc  a                                           ; $6cd0: $9f
	dec  c                                           ; $6cd1: $0d
	nop                                              ; $6cd2: $00
	ld   a, [bc]                                     ; $6cd3: $0a
	rrca                                             ; $6cd4: $0f
	nop                                              ; $6cd5: $00
	ld   bc, $0201                                   ; $6cd6: $01 $01 $02
	and  l                                           ; $6cd9: $a5
	inc  b                                           ; $6cda: $04
	xor  d                                           ; $6cdb: $aa
	ld   a, h                                        ; $6cdc: $7c
	ld   e, b                                        ; $6cdd: $58
	inc  b                                           ; $6cde: $04
	xor  l                                           ; $6cdf: $ad
	ld   h, d                                        ; $6ce0: $62
	inc  b                                           ; $6ce1: $04
	sbc  h                                           ; $6ce2: $9c
	ld   a, l                                        ; $6ce3: $7d
	dec  c                                           ; $6ce4: $0d
	ld   e, b                                        ; $6ce5: $58
	ld   d, d                                        ; $6ce6: $52
	ld   h, l                                        ; $6ce7: $65
	ld   e, c                                        ; $6ce8: $59
	ld   [hl], c                                     ; $6ce9: $71
	ld   l, l                                        ; $6cea: $6d
	ld   a, e                                        ; $6ceb: $7b
	sbc  a                                           ; $6cec: $9f
	dec  c                                           ; $6ced: $0d
	nop                                              ; $6cee: $00
	ld   a, [bc]                                     ; $6cef: $0a
	rlca                                             ; $6cf0: $07
	db   $ec                                         ; $6cf1: $ec
	nop                                              ; $6cf2: $00
	ld   [bc], a                                     ; $6cf3: $02
	nop                                              ; $6cf4: $00
	ld   bc, $2010                                   ; $6cf5: $01 $10 $20
	nop                                              ; $6cf8: $00
	rlca                                             ; $6cf9: $07
	db   $10                                         ; $6cfa: $10
	ld   bc, $0002                                   ; $6cfb: $01 $02 $00
	ld   bc, $2012                                   ; $6cfe: $01 $12 $20
	nop                                              ; $6d01: $00
	rlca                                             ; $6d02: $07
	inc  sp                                          ; $6d03: $33
	ld   bc, $0002                                   ; $6d04: $01 $02 $00
	ld   bc, $2014                                   ; $6d07: $01 $14 $20
	nop                                              ; $6d0a: $00
	inc  e                                           ; $6d0b: $1c
	inc  b                                           ; $6d0c: $04
	ld   bc, $0101                                   ; $6d0d: $01 $01 $01
	ld   d, h                                        ; $6d10: $54
	and  c                                           ; $6d11: $a1
	sbc  a                                           ; $6d12: $9f
	and  e                                           ; $6d13: $a3
	and  l                                           ; $6d14: $a5
	db   $ec                                         ; $6d15: $ec
	cp   d                                           ; $6d16: $ba
	sbc  [hl]                                        ; $6d17: $9e
	dec  c                                           ; $6d18: $0d
	ret  nc                                          ; $6d19: $d0

	and  l                                           ; $6d1a: $a5
	xor  h                                           ; $6d1b: $ac
	db   $eb                                         ; $6d1c: $eb
	ld   d, h                                        ; $6d1d: $54
	ld   [hl], a                                     ; $6d1e: $77
	and  c                                           ; $6d1f: $a1
	dec  c                                           ; $6d20: $0d
	ld   e, b                                        ; $6d21: $58
	ld   d, d                                        ; $6d22: $52
	ld   h, l                                        ; $6d23: $65
	ld   e, c                                        ; $6d24: $59
	ld   [hl], c                                     ; $6d25: $71
	ld   l, l                                        ; $6d26: $6d
	sub  [hl]                                        ; $6d27: $96
	sbc  a                                           ; $6d28: $9f
	dec  c                                           ; $6d29: $0d
	nop                                              ; $6d2a: $00
	ld   a, [bc]                                     ; $6d2b: $0a
	ld   b, $55                                      ; $6d2c: $06 $55
	ld   bc, $041c                                   ; $6d2e: $01 $1c $04
	ld   bc, $0101                                   ; $6d31: $01 $01 $01
	ld   d, h                                        ; $6d34: $54
	and  c                                           ; $6d35: $a1
	sbc  a                                           ; $6d36: $9f
	and  e                                           ; $6d37: $a3
	and  l                                           ; $6d38: $a5
	db   $ec                                         ; $6d39: $ec
	cp   d                                           ; $6d3a: $ba
	sbc  [hl]                                        ; $6d3b: $9e
	dec  c                                           ; $6d3c: $0d
	ld   h, e                                        ; $6d3d: $63
	and  c                                           ; $6d3e: $a1
	ld   h, e                                        ; $6d3f: $63
	ld   d, d                                        ; $6d40: $52
	ld   l, e                                        ; $6d41: $6b
	ld   a, [hl]                                     ; $6d42: $7e
	dec  c                                           ; $6d43: $0d
	ld   e, b                                        ; $6d44: $58
	ld   d, d                                        ; $6d45: $52
	ld   h, l                                        ; $6d46: $65
	ld   e, c                                        ; $6d47: $59
	ld   [hl], c                                     ; $6d48: $71
	ld   l, l                                        ; $6d49: $6d
	sub  [hl]                                        ; $6d4a: $96
	sbc  a                                           ; $6d4b: $9f
	dec  c                                           ; $6d4c: $0d
	nop                                              ; $6d4d: $00
	ld   a, [bc]                                     ; $6d4e: $0a
	ld   b, $55                                      ; $6d4f: $06 $55
	ld   bc, $041c                                   ; $6d51: $01 $1c $04
	ld   bc, $0101                                   ; $6d54: $01 $01 $01
	ld   d, h                                        ; $6d57: $54
	and  c                                           ; $6d58: $a1
	sbc  a                                           ; $6d59: $9f
	and  e                                           ; $6d5a: $a3
	and  l                                           ; $6d5b: $a5
	db   $ec                                         ; $6d5c: $ec
	cp   d                                           ; $6d5d: $ba
	sbc  [hl]                                        ; $6d5e: $9e
	dec  c                                           ; $6d5f: $0d
	ld   l, a                                        ; $6d60: $6f
	sub  a                                           ; $6d61: $97
	ld   h, l                                        ; $6d62: $65
	ld   l, b                                        ; $6d63: $68
	ld   h, l                                        ; $6d64: $65
	dec  c                                           ; $6d65: $0d
	ld   e, b                                        ; $6d66: $58
	ld   d, d                                        ; $6d67: $52
	ld   h, l                                        ; $6d68: $65
	ld   e, c                                        ; $6d69: $59
	ld   [hl], c                                     ; $6d6a: $71
	ld   l, l                                        ; $6d6b: $6d
	sub  [hl]                                        ; $6d6c: $96
	sbc  a                                           ; $6d6d: $9f
	dec  c                                           ; $6d6e: $0d
	nop                                              ; $6d6f: $00
	ld   a, [bc]                                     ; $6d70: $0a
	ld   b, $55                                      ; $6d71: $06 $55
	ld   bc, $041c                                   ; $6d73: $01 $1c $04
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	ld   bc, $9166                                   ; $6d78: $01 $66 $91
	ld   d, b                                        ; $6d7b: $50
	ld   a, e                                        ; $6d7c: $7b
	sbc  [hl]                                        ; $6d7d: $9e
	ld   l, a                                        ; $6d7e: $6f
	ld   d, d                                        ; $6d7f: $52
	ld   [bc], a                                     ; $6d80: $02
	inc  de                                          ; $6d81: $13
	ld   l, a                                        ; $6d82: $6f
	sub  c                                           ; $6d83: $91
	and  c                                           ; $6d84: $a1
	sbc  a                                           ; $6d85: $9f
	dec  c                                           ; $6d86: $0d
	nop                                              ; $6d87: $00
	ld   a, [bc]                                     ; $6d88: $0a
	dec  c                                           ; $6d89: $0d
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	rrca                                             ; $6d8c: $0f
	nop                                              ; $6d8d: $00
	ld   bc, $1e09                                   ; $6d8e: $01 $09 $1e
	nop                                              ; $6d91: $00
	nop                                              ; $6d92: $00
	ld   [bc], a                                     ; $6d93: $02
	rlca                                             ; $6d94: $07
	ld   l, $00                                      ; $6d95: $2e $00
	inc  bc                                          ; $6d97: $03
	ld   d, $01                                      ; $6d98: $16 $01
	ld   h, l                                        ; $6d9a: $65
	ld   [hl+], a                                    ; $6d9b: $22
	nop                                              ; $6d9c: $00
	rlca                                             ; $6d9d: $07
	ld   h, [hl]                                     ; $6d9e: $66
	nop                                              ; $6d9f: $00
	inc  bc                                          ; $6da0: $03
	ld   d, $01                                      ; $6da1: $16 $01
	ld   h, [hl]                                     ; $6da3: $66
	dec  h                                           ; $6da4: $25
	inc  bc                                          ; $6da5: $03
	ld   d, $01                                      ; $6da6: $16 $01
	sbc  e                                           ; $6da8: $9b
	ld   [hl+], a                                    ; $6da9: $22
	inc  e                                           ; $6daa: $1c
	nop                                              ; $6dab: $00
	rlca                                             ; $6dac: $07
	xor  b                                           ; $6dad: $a8
	nop                                              ; $6dae: $00
	inc  bc                                          ; $6daf: $03
	ld   d, $01                                      ; $6db0: $16 $01
	sbc  e                                           ; $6db2: $9b
	dec  h                                           ; $6db3: $25
	ld   [bc], a                                     ; $6db4: $02
	nop                                              ; $6db5: $00
	ld   bc, $2c02                                   ; $6db6: $01 $02 $2c
	ld   bc, $2000                                   ; $6db9: $01 $00 $20
	inc  e                                           ; $6dbc: $1c
	nop                                              ; $6dbd: $00
	ld   b, $66                                      ; $6dbe: $06 $66
	nop                                              ; $6dc0: $00
	rrca                                             ; $6dc1: $0f
	nop                                              ; $6dc2: $00
	ld   bc, $ac01                                   ; $6dc3: $01 $01 $ac
	push af                                          ; $6dc6: $f5
	bit  4, e                                        ; $6dc7: $cb $63
	and  c                                           ; $6dc9: $a1
	sbc  a                                           ; $6dca: $9f
	dec  c                                           ; $6dcb: $0d
	nop                                              ; $6dcc: $00
	ld   a, [bc]                                     ; $6dcd: $0a
	inc  e                                           ; $6dce: $1c
	ld   b, $00                                      ; $6dcf: $06 $00
	nop                                              ; $6dd1: $00
	ld   bc, $999d                                   ; $6dd2: $01 $9d $99
	ld   d, d                                        ; $6dd5: $52
	sbc  a                                           ; $6dd6: $9f
	ld   l, a                                        ; $6dd7: $6f
	sub  l                                           ; $6dd8: $95
	ld   d, d                                        ; $6dd9: $52
	halt                                             ; $6dda: $76
	dec  b                                           ; $6ddb: $05
	jr   z, jr_05c_6e3a                              ; $6ddc: $28 $5c

	ld   a, h                                        ; $6dde: $7c
	dec  c                                           ; $6ddf: $0d
	inc  b                                           ; $6de0: $04
	di                                               ; $6de1: $f3
	ld   e, d                                        ; $6de2: $5a
	ld   d, b                                        ; $6de3: $50
	sbc  c                                           ; $6de4: $99
	and  c                                           ; $6de5: $a1
	ld   l, [hl]                                     ; $6de6: $6e
	sbc  a                                           ; $6de7: $9f
	dec  c                                           ; $6de8: $0d
	adc  h                                           ; $6de9: $8c
	ld   l, l                                        ; $6dea: $6d
	ld   a, b                                        ; $6deb: $78
	sbc  a                                           ; $6dec: $9f
	dec  c                                           ; $6ded: $0d
	nop                                              ; $6dee: $00
	ld   a, [bc]                                     ; $6def: $0a
	dec  c                                           ; $6df0: $0d
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	rrca                                             ; $6df3: $0f
	nop                                              ; $6df4: $00
	ld   bc, $1e09                                   ; $6df5: $01 $09 $1e
	nop                                              ; $6df8: $00
	inc  e                                           ; $6df9: $1c
	ld   b, $00                                      ; $6dfa: $06 $00
	nop                                              ; $6dfc: $00
	ld   bc, $5496                                   ; $6dfd: $01 $96 $54
	sbc  [hl]                                        ; $6e00: $9e
	ld   [$9f00], sp                                 ; $6e01: $08 $00 $9f
	dec  c                                           ; $6e04: $0d
	nop                                              ; $6e05: $00
	ld   a, [bc]                                     ; $6e06: $0a
	rrca                                             ; $6e07: $0f
	nop                                              ; $6e08: $00
	ld   bc, $5801                                   ; $6e09: $01 $01 $58
	inc  b                                           ; $6e0c: $04

Jump_05c_6e0d:
	ld   a, e                                        ; $6e0d: $7b
	sbc  d                                           ; $6e0e: $9a
	ld   h, e                                        ; $6e0f: $63
	adc  h                                           ; $6e10: $8c
	ld   [hl], l                                     ; $6e11: $75
	ld   h, a                                        ; $6e12: $67
	sbc  a                                           ; $6e13: $9f
	dec  c                                           ; $6e14: $0d
	xor  h                                           ; $6e15: $ac
	push af                                          ; $6e16: $f5
	bit  4, e                                        ; $6e17: $cb $63
	and  c                                           ; $6e19: $a1
	sbc  a                                           ; $6e1a: $9f
	dec  c                                           ; $6e1b: $0d
	nop                                              ; $6e1c: $00
	ld   a, [bc]                                     ; $6e1d: $0a
	rrca                                             ; $6e1e: $0f
	ld   b, $00                                      ; $6e1f: $06 $00
	ld   bc, $0458                                   ; $6e21: $01 $58 $04
	ld   a, e                                        ; $6e24: $7b
	sbc  d                                           ; $6e25: $9a
	ld   h, e                                        ; $6e26: $63
	and  c                                           ; $6e27: $a1
	sbc  a                                           ; $6e28: $9f
	dec  c                                           ; $6e29: $0d
	ld   h, [hl]                                     ; $6e2a: $66
	sub  c                                           ; $6e2b: $91
	ld   d, b                                        ; $6e2c: $50
	ld   a, b                                        ; $6e2d: $78
	sbc  a                                           ; $6e2e: $9f
	dec  c                                           ; $6e2f: $0d
	nop                                              ; $6e30: $00
	ld   a, [bc]                                     ; $6e31: $0a
	dec  c                                           ; $6e32: $0d
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	rrca                                             ; $6e35: $0f
	nop                                              ; $6e36: $00
	ld   bc, $1e09                                   ; $6e37: $01 $09 $1e

jr_05c_6e3a:
	nop                                              ; $6e3a: $00
	rrca                                             ; $6e3b: $0f
	nop                                              ; $6e3c: $00
	ld   bc, $060d                                   ; $6e3d: $01 $0d $06
	nop                                              ; $6e40: $00
	ld   bc, $f5ac                                   ; $6e41: $01 $ac $f5
	bit  4, e                                        ; $6e44: $cb $63
	and  c                                           ; $6e46: $a1
	sbc  a                                           ; $6e47: $9f
	dec  c                                           ; $6e48: $0d
	nop                                              ; $6e49: $00
	ld   a, [bc]                                     ; $6e4a: $0a
	inc  e                                           ; $6e4b: $1c
	ld   b, $00                                      ; $6e4c: $06 $00
	nop                                              ; $6e4e: $00
	ld   bc, $5496                                   ; $6e4f: $01 $96 $54
	sbc  [hl]                                        ; $6e52: $9e
	ld   [$9f00], sp                                 ; $6e53: $08 $00 $9f
	dec  c                                           ; $6e56: $0d
	nop                                              ; $6e57: $00
	ld   a, [bc]                                     ; $6e58: $0a
	rrca                                             ; $6e59: $0f
	nop                                              ; $6e5a: $00
	ld   bc, $0201                                   ; $6e5b: $01 $01 $02
	and  l                                           ; $6e5e: $a5
	inc  b                                           ; $6e5f: $04
	xor  d                                           ; $6e60: $aa
	ld   a, h                                        ; $6e61: $7c
	ld   e, b                                        ; $6e62: $58
	inc  b                                           ; $6e63: $04
	xor  l                                           ; $6e64: $ad
	ld   h, d                                        ; $6e65: $62
	inc  b                                           ; $6e66: $04
	sbc  h                                           ; $6e67: $9c
	ld   a, l                                        ; $6e68: $7d
	dec  c                                           ; $6e69: $0d
	ld   e, b                                        ; $6e6a: $58
	ld   d, d                                        ; $6e6b: $52
	ld   h, l                                        ; $6e6c: $65
	ld   e, c                                        ; $6e6d: $59
	ld   [hl], c                                     ; $6e6e: $71
	ld   l, l                                        ; $6e6f: $6d
	ld   [hl], l                                     ; $6e70: $75
	ld   h, a                                        ; $6e71: $67
	ld   a, e                                        ; $6e72: $7b
	sbc  a                                           ; $6e73: $9f
	dec  c                                           ; $6e74: $0d
	nop                                              ; $6e75: $00
	ld   a, [bc]                                     ; $6e76: $0a
	rlca                                             ; $6e77: $07
	rst  $38                                         ; $6e78: $ff
	nop                                              ; $6e79: $00
	ld   [bc], a                                     ; $6e7a: $02
	nop                                              ; $6e7b: $00
	ld   bc, $2010                                   ; $6e7c: $01 $10 $20
	nop                                              ; $6e7f: $00
	rlca                                             ; $6e80: $07
	rra                                              ; $6e81: $1f
	ld   bc, $0002                                   ; $6e82: $01 $02 $00
	ld   bc, $2012                                   ; $6e85: $01 $12 $20
	nop                                              ; $6e88: $00
	rlca                                             ; $6e89: $07
	ld   a, $01                                      ; $6e8a: $3e $01
	ld   [bc], a                                     ; $6e8c: $02
	nop                                              ; $6e8d: $00
	ld   bc, $2014                                   ; $6e8e: $01 $14 $20
	nop                                              ; $6e91: $00
	inc  e                                           ; $6e92: $1c
	ld   b, $01                                      ; $6e93: $06 $01
	ld   bc, $6b01                                   ; $6e95: $01 $01 $6b
	ld   d, h                                        ; $6e98: $54
	ld   l, e                                        ; $6e99: $6b
	ld   d, h                                        ; $6e9a: $54
	sbc  [hl]                                        ; $6e9b: $9e
	ld   d, h                                        ; $6e9c: $54
	adc  h                                           ; $6e9d: $8c
	ld   d, d                                        ; $6e9e: $52
	dec  c                                           ; $6e9f: $0d
	ret  nc                                          ; $6ea0: $d0

	and  l                                           ; $6ea1: $a5
	xor  h                                           ; $6ea2: $ac
	db   $eb                                         ; $6ea3: $eb
	ld   d, h                                        ; $6ea4: $54
	ld   [hl], a                                     ; $6ea5: $77
	and  c                                           ; $6ea6: $a1
	ld   l, [hl]                                     ; $6ea7: $6e
	ld   [hl], c                                     ; $6ea8: $71
	ld   l, l                                        ; $6ea9: $6d
	ld   a, b                                        ; $6eaa: $78
	sbc  a                                           ; $6eab: $9f
	dec  c                                           ; $6eac: $0d
	nop                                              ; $6ead: $00
	ld   a, [bc]                                     ; $6eae: $0a
	ld   b, $5c                                      ; $6eaf: $06 $5c
	ld   bc, $061c                                   ; $6eb1: $01 $1c $06
	ld   bc, $0101                                   ; $6eb4: $01 $01 $01
	ld   l, e                                        ; $6eb7: $6b
	ld   d, h                                        ; $6eb8: $54
	ld   l, e                                        ; $6eb9: $6b
	ld   d, h                                        ; $6eba: $54
	sbc  [hl]                                        ; $6ebb: $9e
	ld   d, h                                        ; $6ebc: $54
	adc  h                                           ; $6ebd: $8c
	ld   d, d                                        ; $6ebe: $52
	dec  c                                           ; $6ebf: $0d
	inc  bc                                          ; $6ec0: $03
	ld   e, b                                        ; $6ec1: $58
	dec  b                                           ; $6ec2: $05
	or   l                                           ; $6ec3: $b5
	ld   l, e                                        ; $6ec4: $6b
	ld   a, [hl]                                     ; $6ec5: $7e
	ld   l, [hl]                                     ; $6ec6: $6e
	ld   [hl], c                                     ; $6ec7: $71
	ld   l, l                                        ; $6ec8: $6d
	ld   a, b                                        ; $6ec9: $78
	sbc  a                                           ; $6eca: $9f
	dec  c                                           ; $6ecb: $0d
	nop                                              ; $6ecc: $00
	ld   a, [bc]                                     ; $6ecd: $0a
	ld   b, $5c                                      ; $6ece: $06 $5c
	ld   bc, $061c                                   ; $6ed0: $01 $1c $06
	ld   bc, $0101                                   ; $6ed3: $01 $01 $01
	ld   l, e                                        ; $6ed6: $6b
	ld   d, h                                        ; $6ed7: $54
	ld   l, e                                        ; $6ed8: $6b
	ld   d, h                                        ; $6ed9: $54
	sbc  [hl]                                        ; $6eda: $9e
	ld   d, h                                        ; $6edb: $54
	adc  h                                           ; $6edc: $8c
	ld   d, d                                        ; $6edd: $52
	dec  c                                           ; $6ede: $0d
	ld   l, a                                        ; $6edf: $6f
	sub  a                                           ; $6ee0: $97
	ld   h, l                                        ; $6ee1: $65
	ld   l, b                                        ; $6ee2: $68
	ld   h, l                                        ; $6ee3: $65
	ld   l, [hl]                                     ; $6ee4: $6e
	ld   [hl], c                                     ; $6ee5: $71
	ld   l, l                                        ; $6ee6: $6d
	ld   a, b                                        ; $6ee7: $78
	sbc  a                                           ; $6ee8: $9f
	dec  c                                           ; $6ee9: $0d
	nop                                              ; $6eea: $00
	ld   a, [bc]                                     ; $6eeb: $0a
	ld   b, $5c                                      ; $6eec: $06 $5c
	ld   bc, $061c                                   ; $6eee: $01 $1c $06
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	ld   bc, $9166                                   ; $6ef3: $01 $66 $91
	ld   d, b                                        ; $6ef6: $50
	ld   a, b                                        ; $6ef7: $78
	sbc  a                                           ; $6ef8: $9f
	dec  c                                           ; $6ef9: $0d
	nop                                              ; $6efa: $00
	ld   a, [bc]                                     ; $6efb: $0a
	dec  c                                           ; $6efc: $0d
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	rrca                                             ; $6eff: $0f
	nop                                              ; $6f00: $00
	ld   bc, $1e09                                   ; $6f01: $01 $09 $1e
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	ld   [bc], a                                     ; $6f06: $02
	rlca                                             ; $6f07: $07
	rra                                              ; $6f08: $1f
	nop                                              ; $6f09: $00
	inc  bc                                          ; $6f0a: $03
	dec  d                                           ; $6f0b: $15
	ld   bc, $2265                                   ; $6f0c: $01 $65 $22
	nop                                              ; $6f0f: $00
	rlca                                             ; $6f10: $07
	sbc  d                                           ; $6f11: $9a
	nop                                              ; $6f12: $00
	inc  bc                                          ; $6f13: $03
	dec  d                                           ; $6f14: $15
	ld   bc, $259b                                   ; $6f15: $01 $9b $25
	ld   [bc], a                                     ; $6f18: $02
	nop                                              ; $6f19: $00
	ld   bc, $2c02                                   ; $6f1a: $01 $02 $2c
	ld   bc, $2000                                   ; $6f1d: $01 $00 $20
	inc  e                                           ; $6f20: $1c
	nop                                              ; $6f21: $00
	ld   b, $57                                      ; $6f22: $06 $57
	nop                                              ; $6f24: $00
	rrca                                             ; $6f25: $0f
	nop                                              ; $6f26: $00
	ld   bc, $0201                                   ; $6f27: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f2a: $cf
	dec  b                                           ; $6f2b: $05
	ld   a, [de]                                     ; $6f2c: $1a
	ld   h, e                                        ; $6f2d: $63
	and  c                                           ; $6f2e: $a1
	sbc  a                                           ; $6f2f: $9f
	dec  c                                           ; $6f30: $0d
	nop                                              ; $6f31: $00
	ld   a, [bc]                                     ; $6f32: $0a
	inc  e                                           ; $6f33: $1c
	dec  b                                           ; $6f34: $05
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	ld   bc, $a502                                   ; $6f37: $01 $02 $a5
	ld   l, a                                        ; $6f3a: $6f
	sub  l                                           ; $6f3b: $95
	ld   [hl], c                                     ; $6f3c: $71
	halt                                             ; $6f3d: $76
	sbc  [hl]                                        ; $6f3e: $9e
	inc  b                                           ; $6f3f: $04
	ld   c, $04                                      ; $6f40: $0e $04
	adc  h                                           ; $6f42: $8c
	ld   a, b                                        ; $6f43: $78
	and  c                                           ; $6f44: $a1
	sub  d                                           ; $6f45: $92
	sbc  a                                           ; $6f46: $9f
	dec  c                                           ; $6f47: $0d
	ld   h, a                                        ; $6f48: $67
	adc  h                                           ; $6f49: $8c
	and  c                                           ; $6f4a: $a1
	ld   a, b                                        ; $6f4b: $78
	db   $fc                                         ; $6f4c: $fc
	sbc  a                                           ; $6f4d: $9f
	adc  c                                           ; $6f4e: $89
	ld   a, b                                        ; $6f4f: $78
	sbc  a                                           ; $6f50: $9f
	dec  c                                           ; $6f51: $0d
	nop                                              ; $6f52: $00
	ld   a, [bc]                                     ; $6f53: $0a
	dec  c                                           ; $6f54: $0d
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	rrca                                             ; $6f57: $0f
	nop                                              ; $6f58: $00
	ld   bc, $1e09                                   ; $6f59: $01 $09 $1e
	nop                                              ; $6f5c: $00
	inc  e                                           ; $6f5d: $1c
	dec  b                                           ; $6f5e: $05
	nop                                              ; $6f5f: $00
	nop                                              ; $6f60: $00
	ld   bc, $7196                                   ; $6f61: $01 $96 $71
	sbc  [hl]                                        ; $6f64: $9e
	ld   [$7d00], sp                                 ; $6f65: $08 $00 $7d
	and  c                                           ; $6f68: $a1
	sbc  a                                           ; $6f69: $9f
	dec  c                                           ; $6f6a: $0d
	nop                                              ; $6f6b: $00
	ld   a, [bc]                                     ; $6f6c: $0a
	rrca                                             ; $6f6d: $0f
	nop                                              ; $6f6e: $00
	ld   bc, $0201                                   ; $6f6f: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f72: $cf
	dec  b                                           ; $6f73: $05
	ld   a, [de]                                     ; $6f74: $1a
	ld   h, e                                        ; $6f75: $63
	and  c                                           ; $6f76: $a1
	sbc  a                                           ; $6f77: $9f
	dec  c                                           ; $6f78: $0d
	ld   e, b                                        ; $6f79: $58
	inc  b                                           ; $6f7a: $04
	ld   a, e                                        ; $6f7b: $7b
	sbc  d                                           ; $6f7c: $9a
	ld   h, e                                        ; $6f7d: $63
	adc  h                                           ; $6f7e: $8c
	ld   [hl], l                                     ; $6f7f: $75
	ld   h, a                                        ; $6f80: $67
	sbc  a                                           ; $6f81: $9f
	dec  c                                           ; $6f82: $0d
	nop                                              ; $6f83: $00
	ld   a, [bc]                                     ; $6f84: $0a
	rrca                                             ; $6f85: $0f
	dec  b                                           ; $6f86: $05
	nop                                              ; $6f87: $00
	ld   bc, $0458                                   ; $6f88: $01 $58 $04
	ld   a, e                                        ; $6f8b: $7b
	sbc  d                                           ; $6f8c: $9a
	ld   h, e                                        ; $6f8d: $63
	and  c                                           ; $6f8e: $a1
	sbc  a                                           ; $6f8f: $9f
	dec  c                                           ; $6f90: $0d
	adc  c                                           ; $6f91: $89
	ld   a, b                                        ; $6f92: $78
	sbc  a                                           ; $6f93: $9f
	dec  c                                           ; $6f94: $0d
	nop                                              ; $6f95: $00
	ld   a, [bc]                                     ; $6f96: $0a
	dec  c                                           ; $6f97: $0d
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	rrca                                             ; $6f9a: $0f
	nop                                              ; $6f9b: $00
	ld   bc, $1e09                                   ; $6f9c: $01 $09 $1e
	nop                                              ; $6f9f: $00
	rrca                                             ; $6fa0: $0f
	nop                                              ; $6fa1: $00
	ld   bc, $050d                                   ; $6fa2: $01 $0d $05
	nop                                              ; $6fa5: $00
	ld   bc, $cf02                                   ; $6fa6: $01 $02 $cf
	dec  b                                           ; $6fa9: $05
	ld   a, [de]                                     ; $6faa: $1a
	ld   h, e                                        ; $6fab: $63
	and  c                                           ; $6fac: $a1
	sbc  a                                           ; $6fad: $9f
	dec  c                                           ; $6fae: $0d
	nop                                              ; $6faf: $00
	ld   a, [bc]                                     ; $6fb0: $0a
	inc  e                                           ; $6fb1: $1c
	dec  b                                           ; $6fb2: $05
	nop                                              ; $6fb3: $00
	nop                                              ; $6fb4: $00
	ld   bc, $7196                                   ; $6fb5: $01 $96 $71
	sbc  [hl]                                        ; $6fb8: $9e
	ld   [$7d00], sp                                 ; $6fb9: $08 $00 $7d
	and  c                                           ; $6fbc: $a1
	sbc  a                                           ; $6fbd: $9f
	dec  c                                           ; $6fbe: $0d
	nop                                              ; $6fbf: $00
	ld   a, [bc]                                     ; $6fc0: $0a
	rrca                                             ; $6fc1: $0f
	nop                                              ; $6fc2: $00
	ld   bc, $0201                                   ; $6fc3: $01 $01 $02
	and  l                                           ; $6fc6: $a5
	inc  b                                           ; $6fc7: $04
	xor  d                                           ; $6fc8: $aa
	ld   a, h                                        ; $6fc9: $7c
	ld   e, b                                        ; $6fca: $58
	inc  b                                           ; $6fcb: $04
	xor  l                                           ; $6fcc: $ad
	ld   h, d                                        ; $6fcd: $62
	inc  b                                           ; $6fce: $04
	sbc  h                                           ; $6fcf: $9c
	ld   a, l                                        ; $6fd0: $7d
	dec  c                                           ; $6fd1: $0d
	ld   e, b                                        ; $6fd2: $58
	ld   d, d                                        ; $6fd3: $52
	ld   h, l                                        ; $6fd4: $65
	ld   e, c                                        ; $6fd5: $59
	ld   [hl], c                                     ; $6fd6: $71
	ld   l, l                                        ; $6fd7: $6d
	ld   [hl], l                                     ; $6fd8: $75
	ld   h, a                                        ; $6fd9: $67
	ld   a, e                                        ; $6fda: $7b
	sbc  a                                           ; $6fdb: $9f
	dec  c                                           ; $6fdc: $0d
	nop                                              ; $6fdd: $00
	ld   a, [bc]                                     ; $6fde: $0a
	rlca                                             ; $6fdf: $07
	db   $f4                                         ; $6fe0: $f4
	nop                                              ; $6fe1: $00
	ld   [bc], a                                     ; $6fe2: $02
	nop                                              ; $6fe3: $00
	ld   bc, $2010                                   ; $6fe4: $01 $10 $20
	nop                                              ; $6fe7: $00
	rlca                                             ; $6fe8: $07
	ld   [de], a                                     ; $6fe9: $12
	ld   bc, $0002                                   ; $6fea: $01 $02 $00
	ld   bc, $2012                                   ; $6fed: $01 $12 $20
	nop                                              ; $6ff0: $00
	rlca                                             ; $6ff1: $07
	jr   nc, jr_05c_6ff5                             ; $6ff2: $30 $01

	ld   [bc], a                                     ; $6ff4: $02

jr_05c_6ff5:
	nop                                              ; $6ff5: $00
	ld   bc, $2014                                   ; $6ff6: $01 $14 $20
	nop                                              ; $6ff9: $00
	inc  e                                           ; $6ffa: $1c
	dec  b                                           ; $6ffb: $05
	ld   bc, $0101                                   ; $6ffc: $01 $01 $01
	ld   l, e                                        ; $6fff: $6b
	ld   l, e                                        ; $7000: $6b
	sbc  [hl]                                        ; $7001: $9e
	ld   d, h                                        ; $7002: $54
	adc  h                                           ; $7003: $8c
	ld   d, d                                        ; $7004: $52
	dec  c                                           ; $7005: $0d
	ret  nc                                          ; $7006: $d0

	and  l                                           ; $7007: $a5
	xor  h                                           ; $7008: $ac
	db   $eb                                         ; $7009: $eb
	ld   d, h                                        ; $700a: $54
	ld   [hl], a                                     ; $700b: $77
	and  c                                           ; $700c: $a1
	sub  d                                           ; $700d: $92
	ld   [hl], c                                     ; $700e: $71
	ld   l, l                                        ; $700f: $6d
	ld   a, b                                        ; $7010: $78
	sbc  a                                           ; $7011: $9f
	dec  c                                           ; $7012: $0d
	nop                                              ; $7013: $00
	ld   a, [bc]                                     ; $7014: $0a
	ld   b, $4c                                      ; $7015: $06 $4c
	ld   bc, $051c                                   ; $7017: $01 $1c $05
	ld   bc, $0101                                   ; $701a: $01 $01 $01
	ld   l, e                                        ; $701d: $6b
	ld   l, e                                        ; $701e: $6b
	sbc  [hl]                                        ; $701f: $9e
	ld   d, h                                        ; $7020: $54
	adc  h                                           ; $7021: $8c
	ld   d, d                                        ; $7022: $52
	dec  c                                           ; $7023: $0d
	inc  bc                                          ; $7024: $03
	ld   e, b                                        ; $7025: $58
	dec  b                                           ; $7026: $05
	or   l                                           ; $7027: $b5
	ld   l, e                                        ; $7028: $6b
	ld   a, [hl]                                     ; $7029: $7e
	ld   [hl], l                                     ; $702a: $75
	sub  d                                           ; $702b: $92
	ld   [hl], c                                     ; $702c: $71
	ld   l, l                                        ; $702d: $6d
	ld   a, b                                        ; $702e: $78
	sbc  a                                           ; $702f: $9f
	dec  c                                           ; $7030: $0d
	nop                                              ; $7031: $00
	ld   a, [bc]                                     ; $7032: $0a
	ld   b, $4c                                      ; $7033: $06 $4c
	ld   bc, $051c                                   ; $7035: $01 $1c $05
	ld   bc, $0101                                   ; $7038: $01 $01 $01
	ld   l, e                                        ; $703b: $6b
	ld   l, e                                        ; $703c: $6b
	sbc  [hl]                                        ; $703d: $9e
	ld   d, h                                        ; $703e: $54
	adc  h                                           ; $703f: $8c
	ld   d, d                                        ; $7040: $52
	dec  c                                           ; $7041: $0d
	ld   l, a                                        ; $7042: $6f
	sub  a                                           ; $7043: $97
	ld   h, l                                        ; $7044: $65
	ld   l, b                                        ; $7045: $68
	ld   h, l                                        ; $7046: $65
	sub  d                                           ; $7047: $92
	ld   [hl], c                                     ; $7048: $71
	ld   l, l                                        ; $7049: $6d
	ld   a, b                                        ; $704a: $78
	sbc  a                                           ; $704b: $9f
	dec  c                                           ; $704c: $0d
	nop                                              ; $704d: $00
	ld   a, [bc]                                     ; $704e: $0a
	ld   b, $4c                                      ; $704f: $06 $4c
	ld   bc, $051c                                   ; $7051: $01 $1c $05
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	ld   bc, $7889                                   ; $7056: $01 $89 $78
	sbc  a                                           ; $7059: $9f
	dec  c                                           ; $705a: $0d
	nop                                              ; $705b: $00
	ld   a, [bc]                                     ; $705c: $0a
	dec  c                                           ; $705d: $0d
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	rrca                                             ; $7060: $0f
	nop                                              ; $7061: $00
	ld   bc, $1e09                                   ; $7062: $01 $09 $1e
	nop                                              ; $7065: $00
	nop                                              ; $7066: $00
	ld   [bc], a                                     ; $7067: $02
	rlca                                             ; $7068: $07
	ld   [hl+], a                                    ; $7069: $22
	nop                                              ; $706a: $00
	inc  bc                                          ; $706b: $03
	ld   [de], a                                     ; $706c: $12
	ld   bc, $2265                                   ; $706d: $01 $65 $22
	nop                                              ; $7070: $00
	rlca                                             ; $7071: $07
	ld   e, d                                        ; $7072: $5a
	nop                                              ; $7073: $00
	inc  bc                                          ; $7074: $03
	ld   [de], a                                     ; $7075: $12
	ld   bc, $2565                                   ; $7076: $01 $65 $25
	inc  bc                                          ; $7079: $03
	ld   [de], a                                     ; $707a: $12
	ld   bc, $229b                                   ; $707b: $01 $9b $22
	inc  e                                           ; $707e: $1c
	nop                                              ; $707f: $00
	rlca                                             ; $7080: $07
	and  d                                           ; $7081: $a2
	nop                                              ; $7082: $00
	inc  bc                                          ; $7083: $03
	ld   [de], a                                     ; $7084: $12
	ld   bc, $259b                                   ; $7085: $01 $9b $25
	nop                                              ; $7088: $00
	rrca                                             ; $7089: $0f
	nop                                              ; $708a: $00
	ld   bc, $6701                                   ; $708b: $01 $01 $67
	adc  l                                           ; $708e: $8d
	sbc  d                                           ; $708f: $9a
	ld   h, e                                        ; $7090: $63
	and  c                                           ; $7091: $a1
	sbc  a                                           ; $7092: $9f
	dec  c                                           ; $7093: $0d
	nop                                              ; $7094: $00
	ld   a, [bc]                                     ; $7095: $0a
	inc  e                                           ; $7096: $1c
	ld   [bc], a                                     ; $7097: $02
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	ld   bc, $8c52                                   ; $709a: $01 $52 $8c
	sbc  [hl]                                        ; $709d: $9e
	inc  bc                                          ; $709e: $03
	ld   l, e                                        ; $709f: $6b
	ld   e, d                                        ; $70a0: $5a
	inc  b                                           ; $70a1: $04
	sbc  c                                           ; $70a2: $99
	ld   l, c                                        ; $70a3: $69
	adc  h                                           ; $70a4: $8c
	ld   l, c                                        ; $70a5: $69
	and  c                                           ; $70a6: $a1
	ld   a, h                                        ; $70a7: $7c
	sbc  a                                           ; $70a8: $9f
	dec  c                                           ; $70a9: $0d
	ld   d, b                                        ; $70aa: $50
	halt                                             ; $70ab: $76
	ld   a, c                                        ; $70ac: $79
	ld   h, l                                        ; $70ad: $65
	ld   [hl], h                                     ; $70ae: $74
	ld   e, l                                        ; $70af: $5d
	ld   l, [hl]                                     ; $70b0: $6e
	ld   h, e                                        ; $70b1: $63
	ld   d, d                                        ; $70b2: $52
	ld   a, b                                        ; $70b3: $78
	sbc  a                                           ; $70b4: $9f
	dec  c                                           ; $70b5: $0d
	nop                                              ; $70b6: $00
	ld   a, [bc]                                     ; $70b7: $0a
	dec  c                                           ; $70b8: $0d
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	rrca                                             ; $70bb: $0f
	nop                                              ; $70bc: $00
	ld   bc, $1e09                                   ; $70bd: $01 $09 $1e
	nop                                              ; $70c0: $00
	inc  e                                           ; $70c1: $1c
	ld   [bc], a                                     ; $70c2: $02
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	ld   bc, $9750                                   ; $70c5: $01 $50 $97
	sbc  [hl]                                        ; $70c8: $9e
	ld   [$6300], sp                                 ; $70c9: $08 $00 $63
	and  c                                           ; $70cc: $a1
	sbc  a                                           ; $70cd: $9f
	dec  c                                           ; $70ce: $0d
	nop                                              ; $70cf: $00
	ld   a, [bc]                                     ; $70d0: $0a
	rrca                                             ; $70d1: $0f
	nop                                              ; $70d2: $00
	ld   bc, $6701                                   ; $70d3: $01 $01 $67
	adc  l                                           ; $70d6: $8d
	sbc  d                                           ; $70d7: $9a
	ld   h, e                                        ; $70d8: $63
	and  c                                           ; $70d9: $a1
	sbc  a                                           ; $70da: $9f
	dec  c                                           ; $70db: $0d
	ld   e, b                                        ; $70dc: $58
	inc  b                                           ; $70dd: $04
	ld   a, e                                        ; $70de: $7b
	sbc  d                                           ; $70df: $9a
	ld   h, e                                        ; $70e0: $63
	adc  h                                           ; $70e1: $8c
	ld   [hl], l                                     ; $70e2: $75
	ld   h, a                                        ; $70e3: $67
	sbc  a                                           ; $70e4: $9f
	dec  c                                           ; $70e5: $0d
	nop                                              ; $70e6: $00
	ld   a, [bc]                                     ; $70e7: $0a
	inc  e                                           ; $70e8: $1c
	ld   [bc], a                                     ; $70e9: $02
	ld   bc, $0101                                   ; $70ea: $01 $01 $01
	ld   e, b                                        ; $70ed: $58
	inc  b                                           ; $70ee: $04
	ld   a, e                                        ; $70ef: $7b
	sbc  d                                           ; $70f0: $9a
	ld   h, e                                        ; $70f1: $63
	adc  h                                           ; $70f2: $8c
	sbc  a                                           ; $70f3: $9f
	dec  c                                           ; $70f4: $0d
	ld   [hl], l                                     ; $70f5: $75
	ld   a, l                                        ; $70f6: $7d
	inc  bc                                          ; $70f7: $03
	add  e                                           ; $70f8: $83
	dec  b                                           ; $70f9: $05
	dec  c                                           ; $70fa: $0d
	rst  $38                                         ; $70fb: $ff
	rst  $38                                         ; $70fc: $ff
	dec  c                                           ; $70fd: $0d
	nop                                              ; $70fe: $00
	ld   a, [bc]                                     ; $70ff: $0a
	dec  c                                           ; $7100: $0d
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	rrca                                             ; $7103: $0f
	nop                                              ; $7104: $00
	ld   bc, $1e09                                   ; $7105: $01 $09 $1e
	nop                                              ; $7108: $00
	dec  c                                           ; $7109: $0d
	ld   [bc], a                                     ; $710a: $02
	nop                                              ; $710b: $00
	rrca                                             ; $710c: $0f
	nop                                              ; $710d: $00
	ld   bc, $5001                                   ; $710e: $01 $01 $50
	sbc  [hl]                                        ; $7111: $9e
	ld   h, a                                        ; $7112: $67
	adc  l                                           ; $7113: $8d
	sbc  d                                           ; $7114: $9a
	ld   h, e                                        ; $7115: $63
	and  c                                           ; $7116: $a1
	sbc  a                                           ; $7117: $9f
	dec  c                                           ; $7118: $0d
	nop                                              ; $7119: $00
	ld   a, [bc]                                     ; $711a: $0a
	rrca                                             ; $711b: $0f
	ld   [bc], a                                     ; $711c: $02
	nop                                              ; $711d: $00
	ld   bc, $9750                                   ; $711e: $01 $50 $97
	sbc  [hl]                                        ; $7121: $9e
	ld   [$6300], sp                                 ; $7122: $08 $00 $63
	and  c                                           ; $7125: $a1
	sbc  a                                           ; $7126: $9f
	dec  c                                           ; $7127: $0d
	nop                                              ; $7128: $00
	ld   a, [bc]                                     ; $7129: $0a
	rrca                                             ; $712a: $0f
	nop                                              ; $712b: $00
	ld   bc, $0201                                   ; $712c: $01 $01 $02
	and  l                                           ; $712f: $a5
	inc  b                                           ; $7130: $04
	xor  d                                           ; $7131: $aa
	ld   a, h                                        ; $7132: $7c
	ld   e, b                                        ; $7133: $58
	inc  b                                           ; $7134: $04
	xor  l                                           ; $7135: $ad
	ld   h, d                                        ; $7136: $62
	inc  b                                           ; $7137: $04
	sbc  h                                           ; $7138: $9c
	ld   a, l                                        ; $7139: $7d
	dec  c                                           ; $713a: $0d
	ld   e, b                                        ; $713b: $58
	ld   d, d                                        ; $713c: $52
	ld   h, l                                        ; $713d: $65
	ld   e, c                                        ; $713e: $59
	ld   [hl], c                                     ; $713f: $71
	ld   l, l                                        ; $7140: $6d
	ld   [hl], l                                     ; $7141: $75
	ld   h, a                                        ; $7142: $67
	ld   a, e                                        ; $7143: $7b
	sbc  a                                           ; $7144: $9f
	dec  c                                           ; $7145: $0d
	nop                                              ; $7146: $00
	ld   a, [bc]                                     ; $7147: $0a
	inc  e                                           ; $7148: $1c
	ld   [bc], a                                     ; $7149: $02
	ld   bc, $0101                                   ; $714a: $01 $01 $01
	ld   d, [hl]                                     ; $714d: $56
	ld   d, [hl]                                     ; $714e: $56
	sbc  [hl]                                        ; $714f: $9e
	ld   e, b                                        ; $7150: $58
	ld   d, d                                        ; $7151: $52
	ld   h, l                                        ; $7152: $65
	ld   d, d                                        ; $7153: $52
	dec  c                                           ; $7154: $0d
	ret  nc                                          ; $7155: $d0

	and  $b8                                         ; $7156: $e6 $b8
	db   $eb                                         ; $7158: $eb
	and  l                                           ; $7159: $a5
	cp   d                                           ; $715a: $ba
	ld   [hl], l                                     ; $715b: $75
	ld   h, l                                        ; $715c: $65
	ld   l, l                                        ; $715d: $6d
	sbc  l                                           ; $715e: $9d
	ld   a, e                                        ; $715f: $7b
	sbc  a                                           ; $7160: $9f
	dec  c                                           ; $7161: $0d
	nop                                              ; $7162: $00
	ld   a, [bc]                                     ; $7163: $0a
	inc  e                                           ; $7164: $1c
	ld   [bc], a                                     ; $7165: $02
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	ld   bc, $9a6b                                   ; $7168: $01 $6b $9a
	ld   [hl], l                                     ; $716b: $75
	ld   a, l                                        ; $716c: $7d
	sbc  [hl]                                        ; $716d: $9e
	inc  bc                                          ; $716e: $03
	add  e                                           ; $716f: $83
	dec  b                                           ; $7170: $05
	dec  c                                           ; $7171: $0d
	ld   h, l                                        ; $7172: $65
	adc  h                                           ; $7173: $8c
	ld   h, a                                        ; $7174: $67
	sbc  l                                           ; $7175: $9d
	sbc  a                                           ; $7176: $9f
	dec  c                                           ; $7177: $0d
	nop                                              ; $7178: $00
	ld   a, [bc]                                     ; $7179: $0a
	dec  c                                           ; $717a: $0d
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	rrca                                             ; $717d: $0f
	nop                                              ; $717e: $00
	ld   bc, $1e09                                   ; $717f: $01 $09 $1e
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	ld   [bc], a                                     ; $7184: $02
	rlca                                             ; $7185: $07
	ld   [hl+], a                                    ; $7186: $22
	nop                                              ; $7187: $00
	inc  bc                                          ; $7188: $03
	ld   de, $6501                                   ; $7189: $11 $01 $65
	ld   [hl+], a                                    ; $718c: $22
	nop                                              ; $718d: $00
	rlca                                             ; $718e: $07
	ld   d, e                                        ; $718f: $53
	nop                                              ; $7190: $00
	inc  bc                                          ; $7191: $03
	ld   de, $6501                                   ; $7192: $11 $01 $65
	dec  h                                           ; $7195: $25
	inc  bc                                          ; $7196: $03
	ld   de, $9b01                                   ; $7197: $11 $01 $9b
	ld   [hl+], a                                    ; $719a: $22
	inc  e                                           ; $719b: $1c
	nop                                              ; $719c: $00
	rlca                                             ; $719d: $07
	sbc  b                                           ; $719e: $98
	nop                                              ; $719f: $00
	inc  bc                                          ; $71a0: $03
	ld   de, $9b01                                   ; $71a1: $11 $01 $9b
	dec  h                                           ; $71a4: $25
	nop                                              ; $71a5: $00
	rrca                                             ; $71a6: $0f
	nop                                              ; $71a7: $00
	ld   bc, $6301                                   ; $71a8: $01 $01 $63
	ld   e, l                                        ; $71ab: $5d
	sub  a                                           ; $71ac: $97
	ld   h, e                                        ; $71ad: $63
	and  c                                           ; $71ae: $a1
	sbc  a                                           ; $71af: $9f
	dec  c                                           ; $71b0: $0d
	nop                                              ; $71b1: $00
	ld   a, [bc]                                     ; $71b2: $0a
	inc  e                                           ; $71b3: $1c
	ld   bc, $0000                                   ; $71b4: $01 $00 $00
	ld   bc, $8f62                                   ; $71b7: $01 $62 $8f
	and  c                                           ; $71ba: $a1
	ld   a, b                                        ; $71bb: $78
	ld   h, e                                        ; $71bc: $63
	ld   d, d                                        ; $71bd: $52
	sbc  a                                           ; $71be: $9f
	dec  c                                           ; $71bf: $0d
	ld   d, d                                        ; $71c0: $52
	adc  h                                           ; $71c1: $8c
	dec  b                                           ; $71c2: $05
	jr   z, jr_05c_7217                              ; $71c3: $28 $52

	ld   [hl], l                                     ; $71c5: $75
	sbc  c                                           ; $71c6: $99
	and  c                                           ; $71c7: $a1
	ld   [hl], l                                     ; $71c8: $75
	ld   h, a                                        ; $71c9: $67
	sbc  a                                           ; $71ca: $9f
	dec  c                                           ; $71cb: $0d
	nop                                              ; $71cc: $00
	ld   a, [bc]                                     ; $71cd: $0a
	dec  c                                           ; $71ce: $0d
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	rrca                                             ; $71d1: $0f
	nop                                              ; $71d2: $00
	ld   bc, $1e09                                   ; $71d3: $01 $09 $1e
	nop                                              ; $71d6: $00
	inc  e                                           ; $71d7: $1c
	ld   bc, $0000                                   ; $71d8: $01 $00 $00
	ld   bc, $9e50                                   ; $71db: $01 $50 $9e
	ld   [$6300], sp                                 ; $71de: $08 $00 $63
	and  c                                           ; $71e1: $a1
	sbc  a                                           ; $71e2: $9f
	dec  c                                           ; $71e3: $0d
	nop                                              ; $71e4: $00
	ld   a, [bc]                                     ; $71e5: $0a
	rrca                                             ; $71e6: $0f
	nop                                              ; $71e7: $00
	ld   bc, $6301                                   ; $71e8: $01 $01 $63
	ld   e, l                                        ; $71eb: $5d
	sub  a                                           ; $71ec: $97
	ld   h, e                                        ; $71ed: $63
	and  c                                           ; $71ee: $a1
	sbc  a                                           ; $71ef: $9f
	dec  c                                           ; $71f0: $0d
	ld   e, b                                        ; $71f1: $58
	inc  b                                           ; $71f2: $04
	ld   a, e                                        ; $71f3: $7b
	sbc  d                                           ; $71f4: $9a
	ld   h, e                                        ; $71f5: $63
	adc  h                                           ; $71f6: $8c
	ld   [hl], l                                     ; $71f7: $75
	ld   h, a                                        ; $71f8: $67
	sbc  a                                           ; $71f9: $9f
	dec  c                                           ; $71fa: $0d
	nop                                              ; $71fb: $00
	ld   a, [bc]                                     ; $71fc: $0a
	rrca                                             ; $71fd: $0f
	ld   bc, $0100                                   ; $71fe: $01 $00 $01
	ld   e, b                                        ; $7201: $58
	inc  b                                           ; $7202: $04
	ld   a, e                                        ; $7203: $7b
	sbc  d                                           ; $7204: $9a
	ld   h, e                                        ; $7205: $63
	adc  h                                           ; $7206: $8c
	ld   [hl], l                                     ; $7207: $75
	ld   h, a                                        ; $7208: $67
	sbc  a                                           ; $7209: $9f
	dec  c                                           ; $720a: $0d
	ld   l, e                                        ; $720b: $6b
	sbc  d                                           ; $720c: $9a
	ld   [hl], l                                     ; $720d: $75
	ld   a, l                                        ; $720e: $7d
	sbc  a                                           ; $720f: $9f
	dec  c                                           ; $7210: $0d
	nop                                              ; $7211: $00
	ld   a, [bc]                                     ; $7212: $0a
	dec  c                                           ; $7213: $0d
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	rrca                                             ; $7216: $0f

jr_05c_7217:
	nop                                              ; $7217: $00
	ld   bc, $1e09                                   ; $7218: $01 $09 $1e
	nop                                              ; $721b: $00
	rrca                                             ; $721c: $0f
	nop                                              ; $721d: $00
	ld   bc, $010d                                   ; $721e: $01 $0d $01
	nop                                              ; $7221: $00
	ld   bc, $5d63                                   ; $7222: $01 $63 $5d
	sub  a                                           ; $7225: $97
	ld   h, e                                        ; $7226: $63
	and  c                                           ; $7227: $a1
	sbc  a                                           ; $7228: $9f
	dec  c                                           ; $7229: $0d
	nop                                              ; $722a: $00
	ld   a, [bc]                                     ; $722b: $0a
	rrca                                             ; $722c: $0f
	ld   bc, $0100                                   ; $722d: $01 $00 $01
	ld   d, b                                        ; $7230: $50
	sub  a                                           ; $7231: $97
	sbc  [hl]                                        ; $7232: $9e
	ld   [$6300], sp                                 ; $7233: $08 $00 $63
	and  c                                           ; $7236: $a1
	sbc  a                                           ; $7237: $9f
	dec  c                                           ; $7238: $0d
	nop                                              ; $7239: $00
	ld   a, [bc]                                     ; $723a: $0a
	rrca                                             ; $723b: $0f
	nop                                              ; $723c: $00
	ld   bc, $0201                                   ; $723d: $01 $01 $02
	and  l                                           ; $7240: $a5
	inc  b                                           ; $7241: $04
	xor  d                                           ; $7242: $aa
	ld   a, h                                        ; $7243: $7c
	ld   e, b                                        ; $7244: $58
	inc  b                                           ; $7245: $04
	xor  l                                           ; $7246: $ad
	ld   h, d                                        ; $7247: $62
	inc  b                                           ; $7248: $04
	sbc  h                                           ; $7249: $9c
	ld   a, l                                        ; $724a: $7d
	dec  c                                           ; $724b: $0d
	ld   e, b                                        ; $724c: $58
	ld   d, d                                        ; $724d: $52
	ld   h, l                                        ; $724e: $65
	ld   e, c                                        ; $724f: $59
	ld   [hl], c                                     ; $7250: $71
	ld   l, l                                        ; $7251: $6d
	ld   [hl], l                                     ; $7252: $75
	ld   h, a                                        ; $7253: $67
	ld   a, e                                        ; $7254: $7b
	sbc  a                                           ; $7255: $9f
	dec  c                                           ; $7256: $0d
	nop                                              ; $7257: $00
	ld   a, [bc]                                     ; $7258: $0a
	inc  e                                           ; $7259: $1c
	ld   bc, $0101                                   ; $725a: $01 $01 $01
	ld   bc, $5656                                   ; $725d: $01 $56 $56
	sbc  [hl]                                        ; $7260: $9e
	ld   e, b                                        ; $7261: $58
	ld   d, d                                        ; $7262: $52
	ld   h, l                                        ; $7263: $65
	ld   d, d                                        ; $7264: $52
	dec  c                                           ; $7265: $0d
	ret  nc                                          ; $7266: $d0

	and  $b8                                         ; $7267: $e6 $b8
	db   $eb                                         ; $7269: $eb
	and  l                                           ; $726a: $a5
	cp   d                                           ; $726b: $ba
	ld   [hl], l                                     ; $726c: $75
	ld   h, l                                        ; $726d: $65
	ld   l, l                                        ; $726e: $6d
	ld   a, e                                        ; $726f: $7b
	sbc  a                                           ; $7270: $9f
	dec  c                                           ; $7271: $0d
	nop                                              ; $7272: $00
	ld   a, [bc]                                     ; $7273: $0a
	inc  e                                           ; $7274: $1c
	ld   bc, $0000                                   ; $7275: $01 $00 $00
	ld   bc, $9a6b                                   ; $7278: $01 $6b $9a
	ld   [hl], l                                     ; $727b: $75
	ld   a, l                                        ; $727c: $7d
	adc  h                                           ; $727d: $8c
	ld   l, l                                        ; $727e: $6d
	sbc  a                                           ; $727f: $9f
	dec  c                                           ; $7280: $0d
	nop                                              ; $7281: $00
	ld   a, [bc]                                     ; $7282: $0a
	dec  c                                           ; $7283: $0d
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	rrca                                             ; $7286: $0f
	nop                                              ; $7287: $00
	ld   bc, $1e09                                   ; $7288: $01 $09 $1e
	nop                                              ; $728b: $00
	nop                                              ; $728c: $00
	ld   [bc], a                                     ; $728d: $02
	rlca                                             ; $728e: $07
	ld   [hl+], a                                    ; $728f: $22
	nop                                              ; $7290: $00
	inc  bc                                          ; $7291: $03
	inc  de                                          ; $7292: $13
	ld   bc, $2265                                   ; $7293: $01 $65 $22
	nop                                              ; $7296: $00
	rlca                                             ; $7297: $07
	ld   d, d                                        ; $7298: $52
	nop                                              ; $7299: $00
	inc  bc                                          ; $729a: $03
	inc  de                                          ; $729b: $13
	ld   bc, $2566                                   ; $729c: $01 $66 $25
	inc  bc                                          ; $729f: $03
	inc  de                                          ; $72a0: $13
	ld   bc, $229b                                   ; $72a1: $01 $9b $22
	inc  e                                           ; $72a4: $1c
	nop                                              ; $72a5: $00
	rlca                                             ; $72a6: $07
	sub  [hl]                                        ; $72a7: $96
	nop                                              ; $72a8: $00
	inc  bc                                          ; $72a9: $03
	inc  de                                          ; $72aa: $13
	ld   bc, $259b                                   ; $72ab: $01 $9b $25
	nop                                              ; $72ae: $00
	rrca                                             ; $72af: $0f
	nop                                              ; $72b0: $00
	ld   bc, $df01                                   ; $72b1: $01 $01 $df
	db   $ec                                         ; $72b4: $ec
	and  e                                           ; $72b5: $a3
	ld   h, e                                        ; $72b6: $63
	and  c                                           ; $72b7: $a1
	sbc  a                                           ; $72b8: $9f
	dec  c                                           ; $72b9: $0d
	nop                                              ; $72ba: $00
	ld   a, [bc]                                     ; $72bb: $0a
	inc  e                                           ; $72bc: $1c
	inc  bc                                          ; $72bd: $03
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	ld   bc, $8c52                                   ; $72c0: $01 $52 $8c
	dec  b                                           ; $72c3: $05
	jr   z, jr_05c_7318                              ; $72c4: $28 $52

	ld   [hl], l                                     ; $72c6: $75
	sbc  c                                           ; $72c7: $99
	ld   a, h                                        ; $72c8: $7c
	sbc  a                                           ; $72c9: $9f
	dec  c                                           ; $72ca: $0d
	adc  h                                           ; $72cb: $8c
	ld   l, l                                        ; $72cc: $6d
	sbc  [hl]                                        ; $72cd: $9e
	ld   [bc], a                                     ; $72ce: $02
	xor  d                                           ; $72cf: $aa
	ld   [hl], l                                     ; $72d0: $75
	ld   a, e                                        ; $72d1: $7b
	sbc  a                                           ; $72d2: $9f
	dec  c                                           ; $72d3: $0d
	nop                                              ; $72d4: $00
	ld   a, [bc]                                     ; $72d5: $0a
	dec  c                                           ; $72d6: $0d
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	rrca                                             ; $72d9: $0f
	nop                                              ; $72da: $00
	ld   bc, $1e09                                   ; $72db: $01 $09 $1e
	nop                                              ; $72de: $00
	inc  e                                           ; $72df: $1c
	inc  bc                                          ; $72e0: $03
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	ld   bc, $9750                                   ; $72e3: $01 $50 $97
	sbc  [hl]                                        ; $72e6: $9e
	ld   [$5d00], sp                                 ; $72e7: $08 $00 $5d
	and  c                                           ; $72ea: $a1
	sbc  a                                           ; $72eb: $9f
	dec  c                                           ; $72ec: $0d
	nop                                              ; $72ed: $00
	ld   a, [bc]                                     ; $72ee: $0a
	rrca                                             ; $72ef: $0f
	nop                                              ; $72f0: $00
	ld   bc, $df01                                   ; $72f1: $01 $01 $df
	db   $ec                                         ; $72f4: $ec
	and  e                                           ; $72f5: $a3
	ld   h, e                                        ; $72f6: $63
	and  c                                           ; $72f7: $a1
	sbc  a                                           ; $72f8: $9f
	dec  c                                           ; $72f9: $0d
	ld   e, b                                        ; $72fa: $58
	inc  b                                           ; $72fb: $04
	ld   a, e                                        ; $72fc: $7b
	sbc  d                                           ; $72fd: $9a
	ld   h, e                                        ; $72fe: $63
	adc  h                                           ; $72ff: $8c
	ld   [hl], l                                     ; $7300: $75
	ld   h, a                                        ; $7301: $67
	sbc  a                                           ; $7302: $9f
	dec  c                                           ; $7303: $0d
	nop                                              ; $7304: $00
	ld   a, [bc]                                     ; $7305: $0a
	rrca                                             ; $7306: $0f
	inc  bc                                          ; $7307: $03
	nop                                              ; $7308: $00
	ld   bc, $0458                                   ; $7309: $01 $58 $04
	ld   a, e                                        ; $730c: $7b
	sbc  d                                           ; $730d: $9a
	ld   h, e                                        ; $730e: $63
	adc  h                                           ; $730f: $8c
	sbc  a                                           ; $7310: $9f
	dec  c                                           ; $7311: $0d
	ld   h, [hl]                                     ; $7312: $66
	sub  c                                           ; $7313: $91
	ld   d, b                                        ; $7314: $50
	ld   a, e                                        ; $7315: $7b
	sbc  a                                           ; $7316: $9f
	dec  c                                           ; $7317: $0d

jr_05c_7318:
	nop                                              ; $7318: $00
	ld   a, [bc]                                     ; $7319: $0a
	dec  c                                           ; $731a: $0d
	nop                                              ; $731b: $00
	nop                                              ; $731c: $00
	rrca                                             ; $731d: $0f
	nop                                              ; $731e: $00
	ld   bc, $1e09                                   ; $731f: $01 $09 $1e
	nop                                              ; $7322: $00
	dec  c                                           ; $7323: $0d
	inc  bc                                          ; $7324: $03
	nop                                              ; $7325: $00
	rrca                                             ; $7326: $0f
	nop                                              ; $7327: $00
	ld   bc, $df01                                   ; $7328: $01 $01 $df
	db   $ec                                         ; $732b: $ec
	and  e                                           ; $732c: $a3
	ld   h, e                                        ; $732d: $63
	and  c                                           ; $732e: $a1
	sbc  a                                           ; $732f: $9f
	dec  c                                           ; $7330: $0d
	nop                                              ; $7331: $00
	ld   a, [bc]                                     ; $7332: $0a
	inc  e                                           ; $7333: $1c
	inc  bc                                          ; $7334: $03
	nop                                              ; $7335: $00
	nop                                              ; $7336: $00
	ld   bc, $9750                                   ; $7337: $01 $50 $97
	sbc  [hl]                                        ; $733a: $9e
	ld   [$5d00], sp                                 ; $733b: $08 $00 $5d
	and  c                                           ; $733e: $a1
	sbc  a                                           ; $733f: $9f
	dec  c                                           ; $7340: $0d
	nop                                              ; $7341: $00
	ld   a, [bc]                                     ; $7342: $0a
	rrca                                             ; $7343: $0f
	nop                                              ; $7344: $00
	ld   bc, $0201                                   ; $7345: $01 $01 $02
	and  l                                           ; $7348: $a5
	inc  b                                           ; $7349: $04
	xor  d                                           ; $734a: $aa
	ld   a, h                                        ; $734b: $7c
	ld   e, b                                        ; $734c: $58
	inc  b                                           ; $734d: $04
	xor  l                                           ; $734e: $ad
	ld   h, d                                        ; $734f: $62
	inc  b                                           ; $7350: $04
	sbc  h                                           ; $7351: $9c
	ld   a, l                                        ; $7352: $7d
	dec  c                                           ; $7353: $0d
	ld   e, b                                        ; $7354: $58
	ld   d, d                                        ; $7355: $52
	ld   h, l                                        ; $7356: $65
	ld   e, c                                        ; $7357: $59
	ld   [hl], c                                     ; $7358: $71
	ld   l, l                                        ; $7359: $6d
	ld   [hl], l                                     ; $735a: $75
	ld   h, a                                        ; $735b: $67
	ld   a, e                                        ; $735c: $7b
	sbc  a                                           ; $735d: $9f
	dec  c                                           ; $735e: $0d
	nop                                              ; $735f: $00
	ld   a, [bc]                                     ; $7360: $0a
	inc  e                                           ; $7361: $1c
	inc  bc                                          ; $7362: $03
	inc  bc                                          ; $7363: $03
	inc  bc                                          ; $7364: $03
	ld   bc, $5656                                   ; $7365: $01 $56 $56
	sbc  [hl]                                        ; $7368: $9e
	ld   e, b                                        ; $7369: $58
	ld   d, d                                        ; $736a: $52
	ld   h, l                                        ; $736b: $65
	ld   d, d                                        ; $736c: $52
	dec  c                                           ; $736d: $0d
	ret  nc                                          ; $736e: $d0

	and  $b8                                         ; $736f: $e6 $b8
	db   $eb                                         ; $7371: $eb
	and  l                                           ; $7372: $a5
	cp   d                                           ; $7373: $ba
	ld   l, [hl]                                     ; $7374: $6e
	ld   [hl], c                                     ; $7375: $71
	ld   l, l                                        ; $7376: $6d
	sbc  l                                           ; $7377: $9d
	ld   a, e                                        ; $7378: $7b
	sbc  a                                           ; $7379: $9f
	dec  c                                           ; $737a: $0d
	nop                                              ; $737b: $00
	ld   a, [bc]                                     ; $737c: $0a
	inc  e                                           ; $737d: $1c
	inc  bc                                          ; $737e: $03
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	ld   bc, $9a6b                                   ; $7381: $01 $6b $9a
	ld   h, [hl]                                     ; $7384: $66
	sub  c                                           ; $7385: $91
	sbc  a                                           ; $7386: $9f
	dec  c                                           ; $7387: $0d
	nop                                              ; $7388: $00
	ld   a, [bc]                                     ; $7389: $0a
	dec  c                                           ; $738a: $0d
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	rrca                                             ; $738d: $0f
	nop                                              ; $738e: $00
	ld   bc, $1e09                                   ; $738f: $01 $09 $1e
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	inc  b                                           ; $7394: $04
	add  b                                           ; $7395: $80
	ld   b, e                                        ; $7396: $43
	ld   bc, $2000                                   ; $7397: $01 $00 $20
	nop                                              ; $739a: $00
	ld   [bc], a                                     ; $739b: $02
	rlca                                             ; $739c: $07
	ld   [hl+], a                                    ; $739d: $22
	nop                                              ; $739e: $00
	inc  bc                                          ; $739f: $03
	inc  d                                           ; $73a0: $14
	ld   bc, $2265                                   ; $73a1: $01 $65 $22
	nop                                              ; $73a4: $00
	rlca                                             ; $73a5: $07
	ld   d, e                                        ; $73a6: $53
	nop                                              ; $73a7: $00
	inc  bc                                          ; $73a8: $03
	inc  d                                           ; $73a9: $14
	ld   bc, $2566                                   ; $73aa: $01 $66 $25
	inc  bc                                          ; $73ad: $03
	inc  d                                           ; $73ae: $14
	ld   bc, $229b                                   ; $73af: $01 $9b $22
	inc  e                                           ; $73b2: $1c
	nop                                              ; $73b3: $00
	rlca                                             ; $73b4: $07
	sub  b                                           ; $73b5: $90
	nop                                              ; $73b6: $00
	inc  bc                                          ; $73b7: $03
	inc  d                                           ; $73b8: $14
	ld   bc, $259b                                   ; $73b9: $01 $9b $25
	nop                                              ; $73bc: $00
	rrca                                             ; $73bd: $0f
	nop                                              ; $73be: $00
	ld   bc, $9201                                   ; $73bf: $01 $01 $92
	ld   d, b                                        ; $73c2: $50
	sbc  [hl]                                        ; $73c3: $9e
	and  e                                           ; $73c4: $a3
	and  l                                           ; $73c5: $a5
	db   $ec                                         ; $73c6: $ec
	cp   d                                           ; $73c7: $ba
	sbc  a                                           ; $73c8: $9f
	dec  c                                           ; $73c9: $0d
	nop                                              ; $73ca: $00
	ld   a, [bc]                                     ; $73cb: $0a
	inc  e                                           ; $73cc: $1c
	inc  b                                           ; $73cd: $04
	nop                                              ; $73ce: $00
	nop                                              ; $73cf: $00
	ld   bc, $a5a3                                   ; $73d0: $01 $a3 $a5
	db   $ec                                         ; $73d3: $ec
	cp   d                                           ; $73d4: $ba
	sbc  [hl]                                        ; $73d5: $9e
	ld   d, d                                        ; $73d6: $52
	ld   l, e                                        ; $73d7: $6b
	ld   e, d                                        ; $73d8: $5a
	ld   h, l                                        ; $73d9: $65
	ld   d, d                                        ; $73da: $52
	ld   a, h                                        ; $73db: $7c
	sbc  a                                           ; $73dc: $9f
	dec  c                                           ; $73dd: $0d
	adc  h                                           ; $73de: $8c
	ld   l, l                                        ; $73df: $6d
	ld   a, e                                        ; $73e0: $7b
	sbc  a                                           ; $73e1: $9f
	dec  c                                           ; $73e2: $0d
	nop                                              ; $73e3: $00
	ld   a, [bc]                                     ; $73e4: $0a
	dec  c                                           ; $73e5: $0d
	nop                                              ; $73e6: $00
	nop                                              ; $73e7: $00
	rrca                                             ; $73e8: $0f
	nop                                              ; $73e9: $00
	ld   bc, $1e09                                   ; $73ea: $01 $09 $1e
	nop                                              ; $73ed: $00
	inc  e                                           ; $73ee: $1c
	inc  b                                           ; $73ef: $04
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	ld   bc, $9e50                                   ; $73f2: $01 $50 $9e
	ld   l, a                                        ; $73f5: $6f
	ld   d, d                                        ; $73f6: $52
	ld   [bc], a                                     ; $73f7: $02
	inc  de                                          ; $73f8: $13
	ld   l, a                                        ; $73f9: $6f
	sub  c                                           ; $73fa: $91
	and  c                                           ; $73fb: $a1
	sbc  a                                           ; $73fc: $9f
	dec  c                                           ; $73fd: $0d
	nop                                              ; $73fe: $00
	ld   a, [bc]                                     ; $73ff: $0a
	rrca                                             ; $7400: $0f
	nop                                              ; $7401: $00
	ld   bc, $9201                                   ; $7402: $01 $01 $92
	ld   d, b                                        ; $7405: $50
	sbc  [hl]                                        ; $7406: $9e
	and  e                                           ; $7407: $a3
	and  l                                           ; $7408: $a5
	db   $ec                                         ; $7409: $ec
	cp   d                                           ; $740a: $ba
	sbc  a                                           ; $740b: $9f
	dec  c                                           ; $740c: $0d
	nop                                              ; $740d: $00
	ld   a, [bc]                                     ; $740e: $0a
	rrca                                             ; $740f: $0f
	inc  b                                           ; $7410: $04
	nop                                              ; $7411: $00
	ld   bc, $6d8c                                   ; $7412: $01 $8c $6d
	ld   a, e                                        ; $7415: $7b
	sbc  [hl]                                        ; $7416: $9e
	ld   l, a                                        ; $7417: $6f
	ld   d, d                                        ; $7418: $52
	ld   [bc], a                                     ; $7419: $02
	inc  de                                          ; $741a: $13
	ld   l, a                                        ; $741b: $6f
	sub  c                                           ; $741c: $91
	and  c                                           ; $741d: $a1
	sbc  a                                           ; $741e: $9f
	dec  c                                           ; $741f: $0d
	nop                                              ; $7420: $00
	ld   a, [bc]                                     ; $7421: $0a
	dec  c                                           ; $7422: $0d
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	rrca                                             ; $7425: $0f
	nop                                              ; $7426: $00
	ld   bc, $1e09                                   ; $7427: $01 $09 $1e
	nop                                              ; $742a: $00
	rrca                                             ; $742b: $0f
	nop                                              ; $742c: $00
	ld   bc, $040d                                   ; $742d: $01 $0d $04
	nop                                              ; $7430: $00
	ld   bc, $5092                                   ; $7431: $01 $92 $50
	sbc  [hl]                                        ; $7434: $9e
	and  e                                           ; $7435: $a3
	and  l                                           ; $7436: $a5
	db   $ec                                         ; $7437: $ec
	cp   d                                           ; $7438: $ba
	sbc  a                                           ; $7439: $9f
	dec  c                                           ; $743a: $0d
	nop                                              ; $743b: $00
	ld   a, [bc]                                     ; $743c: $0a
	inc  e                                           ; $743d: $1c
	inc  b                                           ; $743e: $04
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	ld   bc, $9e50                                   ; $7441: $01 $50 $9e
	ld   l, a                                        ; $7444: $6f
	ld   d, d                                        ; $7445: $52
	ld   [bc], a                                     ; $7446: $02
	inc  de                                          ; $7447: $13
	ld   l, a                                        ; $7448: $6f
	sub  c                                           ; $7449: $91
	and  c                                           ; $744a: $a1
	sbc  a                                           ; $744b: $9f
	dec  c                                           ; $744c: $0d
	nop                                              ; $744d: $00
	ld   a, [bc]                                     ; $744e: $0a
	rrca                                             ; $744f: $0f
	nop                                              ; $7450: $00
	ld   bc, $0201                                   ; $7451: $01 $01 $02
	and  l                                           ; $7454: $a5
	inc  b                                           ; $7455: $04
	xor  d                                           ; $7456: $aa
	ld   a, h                                        ; $7457: $7c
	ld   e, b                                        ; $7458: $58
	inc  b                                           ; $7459: $04
	xor  l                                           ; $745a: $ad
	ld   h, d                                        ; $745b: $62
	inc  b                                           ; $745c: $04
	sbc  h                                           ; $745d: $9c
	ld   a, l                                        ; $745e: $7d
	dec  c                                           ; $745f: $0d
	ld   e, b                                        ; $7460: $58
	ld   d, d                                        ; $7461: $52
	ld   h, l                                        ; $7462: $65
	ld   e, c                                        ; $7463: $59
	ld   [hl], c                                     ; $7464: $71
	ld   l, l                                        ; $7465: $6d
	ld   a, e                                        ; $7466: $7b
	sbc  a                                           ; $7467: $9f
	dec  c                                           ; $7468: $0d
	nop                                              ; $7469: $00
	ld   a, [bc]                                     ; $746a: $0a
	inc  e                                           ; $746b: $1c
	inc  b                                           ; $746c: $04
	ld   bc, $0101                                   ; $746d: $01 $01 $01
	ld   d, h                                        ; $7470: $54
	and  c                                           ; $7471: $a1
	sbc  a                                           ; $7472: $9f
	ret  nc                                          ; $7473: $d0

	and  $b8                                         ; $7474: $e6 $b8
	db   $eb                                         ; $7476: $eb
	and  l                                           ; $7477: $a5
	cp   d                                           ; $7478: $ba
	dec  c                                           ; $7479: $0d
	ld   e, b                                        ; $747a: $58
	ld   d, d                                        ; $747b: $52
	ld   h, l                                        ; $747c: $65
	ld   e, c                                        ; $747d: $59
	ld   [hl], c                                     ; $747e: $71
	ld   l, l                                        ; $747f: $6d
	ld   a, e                                        ; $7480: $7b
	sbc  a                                           ; $7481: $9f
	dec  c                                           ; $7482: $0d
	nop                                              ; $7483: $00
	ld   a, [bc]                                     ; $7484: $0a
	inc  e                                           ; $7485: $1c
	inc  b                                           ; $7486: $04
	nop                                              ; $7487: $00
	nop                                              ; $7488: $00
	ld   bc, $9166                                   ; $7489: $01 $66 $91
	ld   d, b                                        ; $748c: $50
	ld   a, e                                        ; $748d: $7b
	sbc  [hl]                                        ; $748e: $9e
	ld   l, a                                        ; $748f: $6f
	ld   d, d                                        ; $7490: $52
	ld   [bc], a                                     ; $7491: $02
	inc  de                                          ; $7492: $13
	ld   l, a                                        ; $7493: $6f
	sub  c                                           ; $7494: $91
	and  c                                           ; $7495: $a1
	sbc  a                                           ; $7496: $9f
	dec  c                                           ; $7497: $0d
	nop                                              ; $7498: $00
	ld   a, [bc]                                     ; $7499: $0a
	dec  c                                           ; $749a: $0d
	nop                                              ; $749b: $00
	nop                                              ; $749c: $00
	rrca                                             ; $749d: $0f
	nop                                              ; $749e: $00
	ld   bc, $1e09                                   ; $749f: $01 $09 $1e
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	ld   [bc], a                                     ; $74a4: $02
	rlca                                             ; $74a5: $07
	ld   [hl+], a                                    ; $74a6: $22
	nop                                              ; $74a7: $00
	inc  bc                                          ; $74a8: $03
	ld   d, $01                                      ; $74a9: $16 $01
	ld   h, l                                        ; $74ab: $65
	ld   [hl+], a                                    ; $74ac: $22
	nop                                              ; $74ad: $00
	rlca                                             ; $74ae: $07
	ld   e, d                                        ; $74af: $5a
	nop                                              ; $74b0: $00
	inc  bc                                          ; $74b1: $03
	ld   d, $01                                      ; $74b2: $16 $01
	ld   h, [hl]                                     ; $74b4: $66
	dec  h                                           ; $74b5: $25
	inc  bc                                          ; $74b6: $03
	ld   d, $01                                      ; $74b7: $16 $01
	sbc  e                                           ; $74b9: $9b
	ld   [hl+], a                                    ; $74ba: $22
	inc  e                                           ; $74bb: $1c
	nop                                              ; $74bc: $00
	rlca                                             ; $74bd: $07
	sbc  h                                           ; $74be: $9c
	nop                                              ; $74bf: $00
	inc  bc                                          ; $74c0: $03
	ld   d, $01                                      ; $74c1: $16 $01
	sbc  e                                           ; $74c3: $9b
	dec  h                                           ; $74c4: $25
	nop                                              ; $74c5: $00
	rrca                                             ; $74c6: $0f
	nop                                              ; $74c7: $00
	ld   bc, $ac01                                   ; $74c8: $01 $01 $ac
	push af                                          ; $74cb: $f5
	bit  4, e                                        ; $74cc: $cb $63
	and  c                                           ; $74ce: $a1
	sbc  a                                           ; $74cf: $9f
	dec  c                                           ; $74d0: $0d
	nop                                              ; $74d1: $00
	ld   a, [bc]                                     ; $74d2: $0a
	inc  e                                           ; $74d3: $1c
	ld   b, $00                                      ; $74d4: $06 $00
	nop                                              ; $74d6: $00
	ld   bc, $999d                                   ; $74d7: $01 $9d $99
	ld   d, d                                        ; $74da: $52
	sbc  a                                           ; $74db: $9f
	ld   l, a                                        ; $74dc: $6f
	sub  l                                           ; $74dd: $95
	ld   d, d                                        ; $74de: $52
	halt                                             ; $74df: $76
	dec  b                                           ; $74e0: $05
	jr   z, jr_05c_753f                              ; $74e1: $28 $5c

	ld   a, h                                        ; $74e3: $7c
	dec  c                                           ; $74e4: $0d
	inc  b                                           ; $74e5: $04
	di                                               ; $74e6: $f3
	ld   e, d                                        ; $74e7: $5a
	ld   d, b                                        ; $74e8: $50
	sbc  c                                           ; $74e9: $99
	and  c                                           ; $74ea: $a1
	ld   l, [hl]                                     ; $74eb: $6e
	sbc  a                                           ; $74ec: $9f
	dec  c                                           ; $74ed: $0d
	adc  h                                           ; $74ee: $8c
	ld   l, l                                        ; $74ef: $6d
	ld   a, b                                        ; $74f0: $78
	sbc  a                                           ; $74f1: $9f
	dec  c                                           ; $74f2: $0d
	nop                                              ; $74f3: $00
	ld   a, [bc]                                     ; $74f4: $0a
	dec  c                                           ; $74f5: $0d
	nop                                              ; $74f6: $00
	nop                                              ; $74f7: $00
	rrca                                             ; $74f8: $0f
	nop                                              ; $74f9: $00
	ld   bc, $1e09                                   ; $74fa: $01 $09 $1e
	nop                                              ; $74fd: $00
	inc  e                                           ; $74fe: $1c
	ld   b, $00                                      ; $74ff: $06 $00
	nop                                              ; $7501: $00
	ld   bc, $5496                                   ; $7502: $01 $96 $54
	sbc  [hl]                                        ; $7505: $9e
	ld   [$9f00], sp                                 ; $7506: $08 $00 $9f
	dec  c                                           ; $7509: $0d
	nop                                              ; $750a: $00
	ld   a, [bc]                                     ; $750b: $0a
	rrca                                             ; $750c: $0f
	nop                                              ; $750d: $00
	ld   bc, $5801                                   ; $750e: $01 $01 $58
	inc  b                                           ; $7511: $04
	ld   a, e                                        ; $7512: $7b
	sbc  d                                           ; $7513: $9a
	ld   h, e                                        ; $7514: $63
	adc  h                                           ; $7515: $8c
	ld   [hl], l                                     ; $7516: $75
	ld   h, a                                        ; $7517: $67
	sbc  a                                           ; $7518: $9f
	dec  c                                           ; $7519: $0d
	xor  h                                           ; $751a: $ac
	push af                                          ; $751b: $f5
	bit  4, e                                        ; $751c: $cb $63
	and  c                                           ; $751e: $a1
	sbc  a                                           ; $751f: $9f
	dec  c                                           ; $7520: $0d
	nop                                              ; $7521: $00
	ld   a, [bc]                                     ; $7522: $0a
	rrca                                             ; $7523: $0f
	ld   b, $00                                      ; $7524: $06 $00
	ld   bc, $0458                                   ; $7526: $01 $58 $04
	ld   a, e                                        ; $7529: $7b
	sbc  d                                           ; $752a: $9a
	ld   h, e                                        ; $752b: $63
	and  c                                           ; $752c: $a1
	sbc  a                                           ; $752d: $9f
	dec  c                                           ; $752e: $0d
	ld   h, [hl]                                     ; $752f: $66
	sub  c                                           ; $7530: $91
	ld   d, b                                        ; $7531: $50
	ld   a, b                                        ; $7532: $78
	sbc  a                                           ; $7533: $9f
	dec  c                                           ; $7534: $0d
	nop                                              ; $7535: $00
	ld   a, [bc]                                     ; $7536: $0a
	dec  c                                           ; $7537: $0d
	nop                                              ; $7538: $00
	nop                                              ; $7539: $00
	rrca                                             ; $753a: $0f
	nop                                              ; $753b: $00
	ld   bc, $1e09                                   ; $753c: $01 $09 $1e

jr_05c_753f:
	nop                                              ; $753f: $00
	rrca                                             ; $7540: $0f
	nop                                              ; $7541: $00
	ld   bc, $060d                                   ; $7542: $01 $0d $06
	nop                                              ; $7545: $00
	ld   bc, $f5ac                                   ; $7546: $01 $ac $f5
	bit  4, e                                        ; $7549: $cb $63
	and  c                                           ; $754b: $a1
	sbc  a                                           ; $754c: $9f
	dec  c                                           ; $754d: $0d
	nop                                              ; $754e: $00
	ld   a, [bc]                                     ; $754f: $0a
	inc  e                                           ; $7550: $1c
	ld   b, $00                                      ; $7551: $06 $00
	nop                                              ; $7553: $00
	ld   bc, $5496                                   ; $7554: $01 $96 $54
	sbc  [hl]                                        ; $7557: $9e
	ld   [$9f00], sp                                 ; $7558: $08 $00 $9f
	dec  c                                           ; $755b: $0d
	nop                                              ; $755c: $00
	ld   a, [bc]                                     ; $755d: $0a
	rrca                                             ; $755e: $0f
	nop                                              ; $755f: $00
	ld   bc, $0201                                   ; $7560: $01 $01 $02
	and  l                                           ; $7563: $a5
	inc  b                                           ; $7564: $04
	xor  d                                           ; $7565: $aa
	ld   a, h                                        ; $7566: $7c
	ld   e, b                                        ; $7567: $58
	inc  b                                           ; $7568: $04
	xor  l                                           ; $7569: $ad
	ld   h, d                                        ; $756a: $62
	inc  b                                           ; $756b: $04
	sbc  h                                           ; $756c: $9c
	ld   a, l                                        ; $756d: $7d
	dec  c                                           ; $756e: $0d
	ld   e, b                                        ; $756f: $58
	ld   d, d                                        ; $7570: $52
	ld   h, l                                        ; $7571: $65
	ld   e, c                                        ; $7572: $59
	ld   [hl], c                                     ; $7573: $71
	ld   l, l                                        ; $7574: $6d
	ld   [hl], l                                     ; $7575: $75
	ld   h, a                                        ; $7576: $67
	ld   a, e                                        ; $7577: $7b
	sbc  a                                           ; $7578: $9f
	dec  c                                           ; $7579: $0d
	nop                                              ; $757a: $00
	ld   a, [bc]                                     ; $757b: $0a
	inc  e                                           ; $757c: $1c
	ld   b, $01                                      ; $757d: $06 $01
	ld   bc, $6b01                                   ; $757f: $01 $01 $6b
	ld   d, h                                        ; $7582: $54
	ld   l, e                                        ; $7583: $6b
	ld   d, h                                        ; $7584: $54
	sbc  [hl]                                        ; $7585: $9e
	ld   d, h                                        ; $7586: $54
	adc  h                                           ; $7587: $8c
	ld   d, d                                        ; $7588: $52
	dec  c                                           ; $7589: $0d
	ret  nc                                          ; $758a: $d0

	and  $b8                                         ; $758b: $e6 $b8
	db   $eb                                         ; $758d: $eb
	and  l                                           ; $758e: $a5
	cp   d                                           ; $758f: $ba
	ld   l, [hl]                                     ; $7590: $6e
	ld   [hl], c                                     ; $7591: $71
	ld   l, l                                        ; $7592: $6d
	sub  [hl]                                        ; $7593: $96
	ld   a, b                                        ; $7594: $78
	sbc  a                                           ; $7595: $9f
	dec  c                                           ; $7596: $0d
	nop                                              ; $7597: $00
	ld   a, [bc]                                     ; $7598: $0a
	inc  e                                           ; $7599: $1c
	ld   b, $00                                      ; $759a: $06 $00
	nop                                              ; $759c: $00
	ld   bc, $9166                                   ; $759d: $01 $66 $91
	ld   d, b                                        ; $75a0: $50
	ld   a, b                                        ; $75a1: $78
	sbc  a                                           ; $75a2: $9f
	dec  c                                           ; $75a3: $0d
	nop                                              ; $75a4: $00
	ld   a, [bc]                                     ; $75a5: $0a
	dec  c                                           ; $75a6: $0d
	nop                                              ; $75a7: $00
	nop                                              ; $75a8: $00
	rrca                                             ; $75a9: $0f
	nop                                              ; $75aa: $00
	ld   bc, $1e09                                   ; $75ab: $01 $09 $1e
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	ld   [bc], a                                     ; $75b0: $02
	rlca                                             ; $75b1: $07
	ld   [hl+], a                                    ; $75b2: $22
	nop                                              ; $75b3: $00
	inc  bc                                          ; $75b4: $03
	dec  d                                           ; $75b5: $15
	ld   bc, $2265                                   ; $75b6: $01 $65 $22
	nop                                              ; $75b9: $00
	rlca                                             ; $75ba: $07
	ld   e, d                                        ; $75bb: $5a
	nop                                              ; $75bc: $00
	inc  bc                                          ; $75bd: $03
	dec  d                                           ; $75be: $15
	ld   bc, $2566                                   ; $75bf: $01 $66 $25
	inc  bc                                          ; $75c2: $03
	dec  d                                           ; $75c3: $15
	ld   bc, $229b                                   ; $75c4: $01 $9b $22
	inc  e                                           ; $75c7: $1c
	nop                                              ; $75c8: $00
	rlca                                             ; $75c9: $07
	sbc  l                                           ; $75ca: $9d
	nop                                              ; $75cb: $00
	inc  bc                                          ; $75cc: $03
	dec  d                                           ; $75cd: $15
	ld   bc, $259b                                   ; $75ce: $01 $9b $25
	nop                                              ; $75d1: $00
	rrca                                             ; $75d2: $0f
	nop                                              ; $75d3: $00
	ld   bc, $0201                                   ; $75d4: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75d7: $cf
	dec  b                                           ; $75d8: $05
	ld   a, [de]                                     ; $75d9: $1a
	ld   h, e                                        ; $75da: $63
	and  c                                           ; $75db: $a1
	sbc  a                                           ; $75dc: $9f
	dec  c                                           ; $75dd: $0d
	nop                                              ; $75de: $00
	ld   a, [bc]                                     ; $75df: $0a
	inc  e                                           ; $75e0: $1c
	dec  b                                           ; $75e1: $05
	nop                                              ; $75e2: $00
	nop                                              ; $75e3: $00
	ld   bc, $a502                                   ; $75e4: $01 $02 $a5
	ld   l, a                                        ; $75e7: $6f
	sub  l                                           ; $75e8: $95
	ld   [hl], c                                     ; $75e9: $71
	halt                                             ; $75ea: $76
	sbc  [hl]                                        ; $75eb: $9e
	inc  b                                           ; $75ec: $04
	ld   c, $04                                      ; $75ed: $0e $04
	adc  h                                           ; $75ef: $8c
	ld   a, b                                        ; $75f0: $78
	and  c                                           ; $75f1: $a1
	sub  d                                           ; $75f2: $92
	sbc  a                                           ; $75f3: $9f
	dec  c                                           ; $75f4: $0d
	ld   h, a                                        ; $75f5: $67
	adc  h                                           ; $75f6: $8c
	and  c                                           ; $75f7: $a1
	ld   a, b                                        ; $75f8: $78
	db   $fc                                         ; $75f9: $fc
	sbc  a                                           ; $75fa: $9f
	adc  c                                           ; $75fb: $89
	ld   a, b                                        ; $75fc: $78
	sbc  a                                           ; $75fd: $9f
	dec  c                                           ; $75fe: $0d
	nop                                              ; $75ff: $00
	ld   a, [bc]                                     ; $7600: $0a
	dec  c                                           ; $7601: $0d
	nop                                              ; $7602: $00
	nop                                              ; $7603: $00
	rrca                                             ; $7604: $0f
	nop                                              ; $7605: $00
	ld   bc, $1e09                                   ; $7606: $01 $09 $1e
	nop                                              ; $7609: $00
	inc  e                                           ; $760a: $1c
	dec  b                                           ; $760b: $05
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	ld   bc, $7196                                   ; $760e: $01 $96 $71
	sbc  [hl]                                        ; $7611: $9e
	ld   [$7d00], sp                                 ; $7612: $08 $00 $7d
	and  c                                           ; $7615: $a1
	sbc  a                                           ; $7616: $9f
	dec  c                                           ; $7617: $0d
	nop                                              ; $7618: $00
	ld   a, [bc]                                     ; $7619: $0a
	rrca                                             ; $761a: $0f
	nop                                              ; $761b: $00
	ld   bc, $0201                                   ; $761c: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $761f: $cf
	dec  b                                           ; $7620: $05
	ld   a, [de]                                     ; $7621: $1a
	ld   h, e                                        ; $7622: $63
	and  c                                           ; $7623: $a1
	sbc  a                                           ; $7624: $9f
	dec  c                                           ; $7625: $0d
	ld   e, b                                        ; $7626: $58
	inc  b                                           ; $7627: $04
	ld   a, e                                        ; $7628: $7b
	sbc  d                                           ; $7629: $9a
	ld   h, e                                        ; $762a: $63
	adc  h                                           ; $762b: $8c
	ld   [hl], l                                     ; $762c: $75
	ld   h, a                                        ; $762d: $67
	sbc  a                                           ; $762e: $9f
	dec  c                                           ; $762f: $0d
	nop                                              ; $7630: $00
	ld   a, [bc]                                     ; $7631: $0a
	rrca                                             ; $7632: $0f
	dec  b                                           ; $7633: $05
	nop                                              ; $7634: $00
	ld   bc, $0458                                   ; $7635: $01 $58 $04
	ld   a, e                                        ; $7638: $7b
	sbc  d                                           ; $7639: $9a
	ld   h, e                                        ; $763a: $63
	and  c                                           ; $763b: $a1
	sbc  a                                           ; $763c: $9f
	dec  c                                           ; $763d: $0d
	adc  c                                           ; $763e: $89
	ld   a, b                                        ; $763f: $78
	sbc  a                                           ; $7640: $9f
	dec  c                                           ; $7641: $0d
	nop                                              ; $7642: $00
	ld   a, [bc]                                     ; $7643: $0a
	dec  c                                           ; $7644: $0d
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	rrca                                             ; $7647: $0f
	nop                                              ; $7648: $00
	ld   bc, $1e09                                   ; $7649: $01 $09 $1e
	nop                                              ; $764c: $00
	rrca                                             ; $764d: $0f
	nop                                              ; $764e: $00
	ld   bc, $050d                                   ; $764f: $01 $0d $05
	nop                                              ; $7652: $00
	ld   bc, $cf02                                   ; $7653: $01 $02 $cf
	dec  b                                           ; $7656: $05
	ld   a, [de]                                     ; $7657: $1a
	ld   h, e                                        ; $7658: $63
	and  c                                           ; $7659: $a1
	sbc  a                                           ; $765a: $9f
	dec  c                                           ; $765b: $0d
	nop                                              ; $765c: $00
	ld   a, [bc]                                     ; $765d: $0a
	inc  e                                           ; $765e: $1c
	dec  b                                           ; $765f: $05
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	ld   bc, $7196                                   ; $7662: $01 $96 $71
	sbc  [hl]                                        ; $7665: $9e
	ld   [$7d00], sp                                 ; $7666: $08 $00 $7d
	and  c                                           ; $7669: $a1
	sbc  a                                           ; $766a: $9f
	dec  c                                           ; $766b: $0d
	nop                                              ; $766c: $00
	ld   a, [bc]                                     ; $766d: $0a
	rrca                                             ; $766e: $0f
	nop                                              ; $766f: $00
	ld   bc, $0201                                   ; $7670: $01 $01 $02
	and  l                                           ; $7673: $a5
	inc  b                                           ; $7674: $04
	xor  d                                           ; $7675: $aa
	ld   a, h                                        ; $7676: $7c
	ld   e, b                                        ; $7677: $58
	inc  b                                           ; $7678: $04
	xor  l                                           ; $7679: $ad
	ld   h, d                                        ; $767a: $62
	inc  b                                           ; $767b: $04
	sbc  h                                           ; $767c: $9c
	ld   a, l                                        ; $767d: $7d
	dec  c                                           ; $767e: $0d
	ld   e, b                                        ; $767f: $58
	ld   d, d                                        ; $7680: $52
	ld   h, l                                        ; $7681: $65
	ld   e, c                                        ; $7682: $59
	ld   [hl], c                                     ; $7683: $71
	ld   l, l                                        ; $7684: $6d
	ld   [hl], l                                     ; $7685: $75
	ld   h, a                                        ; $7686: $67
	ld   a, e                                        ; $7687: $7b
	sbc  a                                           ; $7688: $9f
	dec  c                                           ; $7689: $0d
	nop                                              ; $768a: $00
	ld   a, [bc]                                     ; $768b: $0a
	inc  e                                           ; $768c: $1c
	dec  b                                           ; $768d: $05
	ld   bc, $0101                                   ; $768e: $01 $01 $01
	ld   l, e                                        ; $7691: $6b
	ld   l, e                                        ; $7692: $6b
	sbc  [hl]                                        ; $7693: $9e
	ld   d, h                                        ; $7694: $54
	adc  h                                           ; $7695: $8c
	ld   d, d                                        ; $7696: $52
	dec  c                                           ; $7697: $0d
	ret  nc                                          ; $7698: $d0

	and  $b8                                         ; $7699: $e6 $b8
	db   $eb                                         ; $769b: $eb
	and  l                                           ; $769c: $a5
	cp   d                                           ; $769d: $ba
	sub  d                                           ; $769e: $92
	ld   [hl], c                                     ; $769f: $71
	ld   l, l                                        ; $76a0: $6d
	ld   a, b                                        ; $76a1: $78
	sbc  a                                           ; $76a2: $9f
	dec  c                                           ; $76a3: $0d
	nop                                              ; $76a4: $00
	ld   a, [bc]                                     ; $76a5: $0a
	inc  e                                           ; $76a6: $1c
	dec  b                                           ; $76a7: $05
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	ld   bc, $7889                                   ; $76aa: $01 $89 $78
	sbc  a                                           ; $76ad: $9f
	dec  c                                           ; $76ae: $0d
	nop                                              ; $76af: $00
	ld   a, [bc]                                     ; $76b0: $0a
	dec  c                                           ; $76b1: $0d
	nop                                              ; $76b2: $00
	nop                                              ; $76b3: $00
	rrca                                             ; $76b4: $0f
	nop                                              ; $76b5: $00
	ld   bc, $1e09                                   ; $76b6: $01 $09 $1e
	nop                                              ; $76b9: $00
	nop                                              ; $76ba: $00
	ld   [bc], a                                     ; $76bb: $02
	rlca                                             ; $76bc: $07
	rra                                              ; $76bd: $1f
	nop                                              ; $76be: $00
	inc  bc                                          ; $76bf: $03
	ld   [de], a                                     ; $76c0: $12
	ld   bc, $2265                                   ; $76c1: $01 $65 $22
	nop                                              ; $76c4: $00
	rlca                                             ; $76c5: $07
	and  d                                           ; $76c6: $a2
	nop                                              ; $76c7: $00
	inc  bc                                          ; $76c8: $03
	ld   [de], a                                     ; $76c9: $12
	ld   bc, $25af                                   ; $76ca: $01 $af $25
	ld   [bc], a                                     ; $76cd: $02
	nop                                              ; $76ce: $00
	ld   bc, $2c02                                   ; $76cf: $01 $02 $2c
	ld   bc, $2000                                   ; $76d2: $01 $00 $20
	inc  e                                           ; $76d5: $1c
	nop                                              ; $76d6: $00
	ld   b, $57                                      ; $76d7: $06 $57
	nop                                              ; $76d9: $00
	rrca                                             ; $76da: $0f
	nop                                              ; $76db: $00
	ld   bc, $6701                                   ; $76dc: $01 $01 $67
	adc  l                                           ; $76df: $8d
	sbc  d                                           ; $76e0: $9a
	ld   h, e                                        ; $76e1: $63
	and  c                                           ; $76e2: $a1
	sbc  a                                           ; $76e3: $9f
	dec  c                                           ; $76e4: $0d
	nop                                              ; $76e5: $00
	ld   a, [bc]                                     ; $76e6: $0a
	inc  e                                           ; $76e7: $1c
	ld   [bc], a                                     ; $76e8: $02
	nop                                              ; $76e9: $00
	nop                                              ; $76ea: $00
	ld   bc, $8c52                                   ; $76eb: $01 $52 $8c
	sbc  [hl]                                        ; $76ee: $9e
	inc  bc                                          ; $76ef: $03
	ld   l, e                                        ; $76f0: $6b
	ld   e, d                                        ; $76f1: $5a
	inc  b                                           ; $76f2: $04
	sbc  c                                           ; $76f3: $99
	ld   l, c                                        ; $76f4: $69
	adc  h                                           ; $76f5: $8c
	ld   l, c                                        ; $76f6: $69
	and  c                                           ; $76f7: $a1
	ld   a, h                                        ; $76f8: $7c
	sbc  a                                           ; $76f9: $9f
	dec  c                                           ; $76fa: $0d
	ld   d, b                                        ; $76fb: $50
	halt                                             ; $76fc: $76
	ld   a, c                                        ; $76fd: $79
	ld   h, l                                        ; $76fe: $65
	ld   [hl], h                                     ; $76ff: $74
	ld   e, l                                        ; $7700: $5d
	ld   l, [hl]                                     ; $7701: $6e
	ld   h, e                                        ; $7702: $63
	ld   d, d                                        ; $7703: $52
	ld   a, b                                        ; $7704: $78
	sbc  a                                           ; $7705: $9f
	dec  c                                           ; $7706: $0d
	nop                                              ; $7707: $00
	ld   a, [bc]                                     ; $7708: $0a
	dec  c                                           ; $7709: $0d
	nop                                              ; $770a: $00
	nop                                              ; $770b: $00
	rrca                                             ; $770c: $0f
	nop                                              ; $770d: $00
	ld   bc, $1e09                                   ; $770e: $01 $09 $1e
	nop                                              ; $7711: $00
	inc  e                                           ; $7712: $1c
	ld   [bc], a                                     ; $7713: $02
	nop                                              ; $7714: $00
	nop                                              ; $7715: $00
	ld   bc, $9750                                   ; $7716: $01 $50 $97
	sbc  [hl]                                        ; $7719: $9e
	ld   [$6300], sp                                 ; $771a: $08 $00 $63
	and  c                                           ; $771d: $a1
	sbc  a                                           ; $771e: $9f
	dec  c                                           ; $771f: $0d
	nop                                              ; $7720: $00
	ld   a, [bc]                                     ; $7721: $0a
	rrca                                             ; $7722: $0f
	nop                                              ; $7723: $00
	ld   bc, $6701                                   ; $7724: $01 $01 $67
	adc  l                                           ; $7727: $8d
	sbc  d                                           ; $7728: $9a
	ld   h, e                                        ; $7729: $63
	and  c                                           ; $772a: $a1
	sbc  a                                           ; $772b: $9f
	dec  c                                           ; $772c: $0d
	ld   e, b                                        ; $772d: $58
	inc  b                                           ; $772e: $04
	ld   a, e                                        ; $772f: $7b
	sbc  d                                           ; $7730: $9a
	ld   h, e                                        ; $7731: $63
	adc  h                                           ; $7732: $8c
	ld   [hl], l                                     ; $7733: $75
	ld   h, a                                        ; $7734: $67
	sbc  a                                           ; $7735: $9f
	dec  c                                           ; $7736: $0d
	nop                                              ; $7737: $00
	ld   a, [bc]                                     ; $7738: $0a
	inc  e                                           ; $7739: $1c
	ld   [bc], a                                     ; $773a: $02
	ld   bc, $0101                                   ; $773b: $01 $01 $01
	ld   e, b                                        ; $773e: $58
	inc  b                                           ; $773f: $04
	ld   a, e                                        ; $7740: $7b
	sbc  d                                           ; $7741: $9a
	ld   h, e                                        ; $7742: $63
	adc  h                                           ; $7743: $8c
	ld   [hl], l                                     ; $7744: $75
	ld   h, a                                        ; $7745: $67
	sbc  l                                           ; $7746: $9d
	sbc  a                                           ; $7747: $9f
	dec  c                                           ; $7748: $0d
	ld   [hl], l                                     ; $7749: $75
	ld   a, l                                        ; $774a: $7d
	inc  bc                                          ; $774b: $03
	add  e                                           ; $774c: $83
	dec  b                                           ; $774d: $05
	dec  c                                           ; $774e: $0d
	rst  $38                                         ; $774f: $ff
	rst  $38                                         ; $7750: $ff
	dec  c                                           ; $7751: $0d
	nop                                              ; $7752: $00
	ld   a, [bc]                                     ; $7753: $0a
	dec  c                                           ; $7754: $0d
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	rrca                                             ; $7757: $0f
	nop                                              ; $7758: $00
	ld   bc, $1e09                                   ; $7759: $01 $09 $1e
	nop                                              ; $775c: $00
	rrca                                             ; $775d: $0f
	nop                                              ; $775e: $00
	ld   bc, $020d                                   ; $775f: $01 $0d $02
	nop                                              ; $7762: $00
	ld   bc, $9e50                                   ; $7763: $01 $50 $9e
	ld   h, a                                        ; $7766: $67
	adc  l                                           ; $7767: $8d
	sbc  d                                           ; $7768: $9a
	ld   h, e                                        ; $7769: $63
	and  c                                           ; $776a: $a1
	sbc  a                                           ; $776b: $9f
	dec  c                                           ; $776c: $0d
	nop                                              ; $776d: $00
	ld   a, [bc]                                     ; $776e: $0a
	inc  e                                           ; $776f: $1c
	ld   [bc], a                                     ; $7770: $02
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	ld   bc, $9750                                   ; $7773: $01 $50 $97
	sbc  [hl]                                        ; $7776: $9e
	ld   [$6300], sp                                 ; $7777: $08 $00 $63
	and  c                                           ; $777a: $a1
	sbc  a                                           ; $777b: $9f
	dec  c                                           ; $777c: $0d
	nop                                              ; $777d: $00
	ld   a, [bc]                                     ; $777e: $0a
	rrca                                             ; $777f: $0f
	nop                                              ; $7780: $00
	ld   bc, $0201                                   ; $7781: $01 $01 $02
	and  l                                           ; $7784: $a5
	inc  b                                           ; $7785: $04
	xor  d                                           ; $7786: $aa
	ld   a, h                                        ; $7787: $7c
	ld   e, b                                        ; $7788: $58
	inc  b                                           ; $7789: $04
	xor  l                                           ; $778a: $ad
	ld   h, d                                        ; $778b: $62
	inc  b                                           ; $778c: $04
	sbc  h                                           ; $778d: $9c
	ld   a, l                                        ; $778e: $7d
	dec  c                                           ; $778f: $0d
	ld   e, b                                        ; $7790: $58
	ld   d, d                                        ; $7791: $52
	ld   h, l                                        ; $7792: $65
	ld   e, c                                        ; $7793: $59
	ld   [hl], c                                     ; $7794: $71
	ld   l, l                                        ; $7795: $6d
	ld   [hl], l                                     ; $7796: $75
	ld   h, a                                        ; $7797: $67
	ld   a, e                                        ; $7798: $7b
	sbc  a                                           ; $7799: $9f
	dec  c                                           ; $779a: $0d
	nop                                              ; $779b: $00
	ld   a, [bc]                                     ; $779c: $0a
	rlca                                             ; $779d: $07
	db   $f4                                         ; $779e: $f4
	nop                                              ; $779f: $00
	ld   [bc], a                                     ; $77a0: $02
	nop                                              ; $77a1: $00
	ld   bc, $2018                                   ; $77a2: $01 $18 $20
	nop                                              ; $77a5: $00
	rlca                                             ; $77a6: $07
	ld   hl, $0201                                   ; $77a7: $21 $01 $02
	nop                                              ; $77aa: $00
	ld   bc, $201a                                   ; $77ab: $01 $1a $20
	nop                                              ; $77ae: $00
	inc  e                                           ; $77af: $1c
	ld   [bc], a                                     ; $77b0: $02
	ld   bc, $0101                                   ; $77b1: $01 $01 $01
	ld   d, [hl]                                     ; $77b4: $56
	ld   d, [hl]                                     ; $77b5: $56
	sbc  [hl]                                        ; $77b6: $9e
	halt                                             ; $77b7: $76
	ld   e, l                                        ; $77b8: $5d
	ld   a, c                                        ; $77b9: $79
	dec  c                                           ; $77ba: $0d
	ld   [bc], a                                     ; $77bb: $02
	xor  b                                           ; $77bc: $a8
	ld   l, [hl]                                     ; $77bd: $6e
	ld   e, l                                        ; $77be: $5d
	ld   h, e                                        ; $77bf: $63
	and  c                                           ; $77c0: $a1
	ld   a, h                                        ; $77c1: $7c
	ld   e, a                                        ; $77c2: $5f
	and  c                                           ; $77c3: $a1
	ld   l, a                                        ; $77c4: $6f
	and  c                                           ; $77c5: $a1
	inc  bc                                          ; $77c6: $03
	ld   b, [hl]                                     ; $77c7: $46
	dec  c                                           ; $77c8: $0d
	ld   e, d                                        ; $77c9: $5a
	sbc  [hl]                                        ; $77ca: $9e
	ld   e, b                                        ; $77cb: $58
	ld   d, d                                        ; $77cc: $52
	ld   h, l                                        ; $77cd: $65
	ld   e, c                                        ; $77ce: $59
	ld   [hl], c                                     ; $77cf: $71
	ld   l, l                                        ; $77d0: $6d
	ld   [hl], l                                     ; $77d1: $75
	ld   h, a                                        ; $77d2: $67
	sbc  l                                           ; $77d3: $9d
	ld   a, e                                        ; $77d4: $7b
	sbc  a                                           ; $77d5: $9f
	dec  c                                           ; $77d6: $0d
	nop                                              ; $77d7: $00
	ld   a, [bc]                                     ; $77d8: $0a
	ld   b, $42                                      ; $77d9: $06 $42
	ld   bc, $021c                                   ; $77db: $01 $1c $02
	ld   bc, $0101                                   ; $77de: $01 $01 $01
	ld   d, [hl]                                     ; $77e1: $56
	ld   d, [hl]                                     ; $77e2: $56
	sbc  [hl]                                        ; $77e3: $9e
	ld   e, b                                        ; $77e4: $58
	ld   d, d                                        ; $77e5: $52
	ld   h, l                                        ; $77e6: $65
	ld   d, d                                        ; $77e7: $52
	dec  c                                           ; $77e8: $0d
	ld   [hl], h                                     ; $77e9: $74
	and  c                                           ; $77ea: $a1
	add  l                                           ; $77eb: $85
	sub  a                                           ; $77ec: $97
	inc  bc                                          ; $77ed: $03
	call nc, Call_05c_6a03                           ; $77ee: $d4 $03 $6a
	ld   [hl], l                                     ; $77f1: $75
	ld   h, l                                        ; $77f2: $65
	ld   l, l                                        ; $77f3: $6d
	sbc  l                                           ; $77f4: $9d
	ld   a, e                                        ; $77f5: $7b
	sbc  a                                           ; $77f6: $9f
	dec  c                                           ; $77f7: $0d
	nop                                              ; $77f8: $00
	ld   a, [bc]                                     ; $77f9: $0a
	ld   b, $42                                      ; $77fa: $06 $42
	ld   bc, $021c                                   ; $77fc: $01 $1c $02
	nop                                              ; $77ff: $00
	nop                                              ; $7800: $00
	ld   bc, $9a6b                                   ; $7801: $01 $6b $9a
	ld   [hl], l                                     ; $7804: $75
	ld   a, l                                        ; $7805: $7d
	sbc  [hl]                                        ; $7806: $9e
	inc  bc                                          ; $7807: $03
	add  e                                           ; $7808: $83
	dec  b                                           ; $7809: $05
	dec  c                                           ; $780a: $0d
	ld   h, l                                        ; $780b: $65
	adc  h                                           ; $780c: $8c
	ld   h, a                                        ; $780d: $67
	sbc  l                                           ; $780e: $9d
	sbc  a                                           ; $780f: $9f
	dec  c                                           ; $7810: $0d
	nop                                              ; $7811: $00
	ld   a, [bc]                                     ; $7812: $0a
	dec  c                                           ; $7813: $0d
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	rrca                                             ; $7816: $0f
	nop                                              ; $7817: $00
	ld   bc, $1e09                                   ; $7818: $01 $09 $1e
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	ld   [bc], a                                     ; $781d: $02
	rlca                                             ; $781e: $07
	rra                                              ; $781f: $1f
	nop                                              ; $7820: $00
	inc  bc                                          ; $7821: $03
	ld   de, $6501                                   ; $7822: $11 $01 $65
	ld   [hl+], a                                    ; $7825: $22
	nop                                              ; $7826: $00
	rlca                                             ; $7827: $07
	sub  [hl]                                        ; $7828: $96
	nop                                              ; $7829: $00
	inc  bc                                          ; $782a: $03
	ld   de, $af01                                   ; $782b: $11 $01 $af
	dec  h                                           ; $782e: $25
	ld   [bc], a                                     ; $782f: $02
	nop                                              ; $7830: $00
	ld   bc, $2c02                                   ; $7831: $01 $02 $2c
	ld   bc, $2000                                   ; $7834: $01 $00 $20
	inc  e                                           ; $7837: $1c
	nop                                              ; $7838: $00
	ld   b, $50                                      ; $7839: $06 $50
	nop                                              ; $783b: $00
	rrca                                             ; $783c: $0f
	nop                                              ; $783d: $00
	ld   bc, $6301                                   ; $783e: $01 $01 $63
	ld   e, l                                        ; $7841: $5d
	sub  a                                           ; $7842: $97
	ld   h, e                                        ; $7843: $63
	and  c                                           ; $7844: $a1
	sbc  a                                           ; $7845: $9f
	dec  c                                           ; $7846: $0d
	nop                                              ; $7847: $00
	ld   a, [bc]                                     ; $7848: $0a
	inc  e                                           ; $7849: $1c
	ld   bc, $0000                                   ; $784a: $01 $00 $00
	ld   bc, $8f62                                   ; $784d: $01 $62 $8f
	and  c                                           ; $7850: $a1
	ld   a, b                                        ; $7851: $78
	ld   h, e                                        ; $7852: $63
	ld   d, d                                        ; $7853: $52
	sbc  a                                           ; $7854: $9f
	dec  c                                           ; $7855: $0d
	ld   d, d                                        ; $7856: $52
	adc  h                                           ; $7857: $8c
	dec  b                                           ; $7858: $05
	jr   z, jr_05c_78ad                              ; $7859: $28 $52

	ld   [hl], l                                     ; $785b: $75
	sbc  c                                           ; $785c: $99
	and  c                                           ; $785d: $a1
	ld   [hl], l                                     ; $785e: $75
	ld   h, a                                        ; $785f: $67
	sbc  a                                           ; $7860: $9f
	dec  c                                           ; $7861: $0d
	nop                                              ; $7862: $00
	ld   a, [bc]                                     ; $7863: $0a
	dec  c                                           ; $7864: $0d
	nop                                              ; $7865: $00
	nop                                              ; $7866: $00
	rrca                                             ; $7867: $0f
	nop                                              ; $7868: $00
	ld   bc, $1e09                                   ; $7869: $01 $09 $1e
	nop                                              ; $786c: $00
	inc  e                                           ; $786d: $1c
	ld   bc, $0000                                   ; $786e: $01 $00 $00
	ld   bc, $9e50                                   ; $7871: $01 $50 $9e
	ld   [$6300], sp                                 ; $7874: $08 $00 $63
	and  c                                           ; $7877: $a1
	sbc  a                                           ; $7878: $9f
	dec  c                                           ; $7879: $0d
	nop                                              ; $787a: $00
	ld   a, [bc]                                     ; $787b: $0a
	rrca                                             ; $787c: $0f
	nop                                              ; $787d: $00
	ld   bc, $6301                                   ; $787e: $01 $01 $63
	ld   e, l                                        ; $7881: $5d
	sub  a                                           ; $7882: $97
	ld   h, e                                        ; $7883: $63
	and  c                                           ; $7884: $a1
	sbc  a                                           ; $7885: $9f
	dec  c                                           ; $7886: $0d
	ld   e, b                                        ; $7887: $58
	inc  b                                           ; $7888: $04
	ld   a, e                                        ; $7889: $7b
	sbc  d                                           ; $788a: $9a
	ld   h, e                                        ; $788b: $63
	adc  h                                           ; $788c: $8c
	ld   [hl], l                                     ; $788d: $75
	ld   h, a                                        ; $788e: $67
	sbc  a                                           ; $788f: $9f
	dec  c                                           ; $7890: $0d
	nop                                              ; $7891: $00
	ld   a, [bc]                                     ; $7892: $0a
	rrca                                             ; $7893: $0f
	ld   bc, $0100                                   ; $7894: $01 $00 $01
	ld   e, b                                        ; $7897: $58
	inc  b                                           ; $7898: $04
	ld   a, e                                        ; $7899: $7b
	sbc  d                                           ; $789a: $9a
	ld   h, e                                        ; $789b: $63
	adc  h                                           ; $789c: $8c
	ld   [hl], l                                     ; $789d: $75
	ld   h, a                                        ; $789e: $67
	sbc  a                                           ; $789f: $9f
	dec  c                                           ; $78a0: $0d
	ld   l, e                                        ; $78a1: $6b
	sbc  d                                           ; $78a2: $9a
	ld   [hl], l                                     ; $78a3: $75
	ld   a, l                                        ; $78a4: $7d
	rst  $38                                         ; $78a5: $ff
	rst  $38                                         ; $78a6: $ff
	dec  c                                           ; $78a7: $0d
	nop                                              ; $78a8: $00
	ld   a, [bc]                                     ; $78a9: $0a
	dec  c                                           ; $78aa: $0d
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00

jr_05c_78ad:
	rrca                                             ; $78ad: $0f
	nop                                              ; $78ae: $00
	ld   bc, $1e09                                   ; $78af: $01 $09 $1e
	nop                                              ; $78b2: $00
	rrca                                             ; $78b3: $0f
	nop                                              ; $78b4: $00
	ld   bc, $010d                                   ; $78b5: $01 $0d $01
	nop                                              ; $78b8: $00
	ld   bc, $5d63                                   ; $78b9: $01 $63 $5d
	sub  a                                           ; $78bc: $97
	ld   h, e                                        ; $78bd: $63
	and  c                                           ; $78be: $a1
	sbc  a                                           ; $78bf: $9f
	dec  c                                           ; $78c0: $0d
	nop                                              ; $78c1: $00
	ld   a, [bc]                                     ; $78c2: $0a
	inc  e                                           ; $78c3: $1c
	ld   bc, $0000                                   ; $78c4: $01 $00 $00
	ld   bc, $9750                                   ; $78c7: $01 $50 $97
	sbc  [hl]                                        ; $78ca: $9e
	ld   [$6300], sp                                 ; $78cb: $08 $00 $63
	and  c                                           ; $78ce: $a1
	sbc  a                                           ; $78cf: $9f
	dec  c                                           ; $78d0: $0d
	nop                                              ; $78d1: $00
	ld   a, [bc]                                     ; $78d2: $0a
	rrca                                             ; $78d3: $0f
	nop                                              ; $78d4: $00
	ld   bc, $0201                                   ; $78d5: $01 $01 $02
	and  l                                           ; $78d8: $a5
	inc  b                                           ; $78d9: $04
	xor  d                                           ; $78da: $aa
	ld   a, h                                        ; $78db: $7c
	ld   e, b                                        ; $78dc: $58
	inc  b                                           ; $78dd: $04
	xor  l                                           ; $78de: $ad
	ld   h, d                                        ; $78df: $62
	inc  b                                           ; $78e0: $04
	sbc  h                                           ; $78e1: $9c
	ld   a, l                                        ; $78e2: $7d
	dec  c                                           ; $78e3: $0d
	ld   e, b                                        ; $78e4: $58
	ld   d, d                                        ; $78e5: $52
	ld   h, l                                        ; $78e6: $65
	ld   e, c                                        ; $78e7: $59
	ld   [hl], c                                     ; $78e8: $71
	ld   l, l                                        ; $78e9: $6d
	ld   [hl], l                                     ; $78ea: $75
	ld   h, a                                        ; $78eb: $67
	ld   a, e                                        ; $78ec: $7b
	sbc  a                                           ; $78ed: $9f
	dec  c                                           ; $78ee: $0d
	nop                                              ; $78ef: $00
	ld   a, [bc]                                     ; $78f0: $0a
	rlca                                             ; $78f1: $07
	and  $00                                         ; $78f2: $e6 $00
	ld   [bc], a                                     ; $78f4: $02
	nop                                              ; $78f5: $00
	ld   bc, $2018                                   ; $78f6: $01 $18 $20
	nop                                              ; $78f9: $00
	rlca                                             ; $78fa: $07
	ld   [de], a                                     ; $78fb: $12
	ld   bc, $0002                                   ; $78fc: $01 $02 $00
	ld   bc, $201a                                   ; $78ff: $01 $1a $20
	nop                                              ; $7902: $00
	inc  e                                           ; $7903: $1c
	ld   bc, $0101                                   ; $7904: $01 $01 $01
	ld   bc, $5656                                   ; $7907: $01 $56 $56
	sbc  [hl]                                        ; $790a: $9e
	halt                                             ; $790b: $76
	ld   e, l                                        ; $790c: $5d
	ld   a, c                                        ; $790d: $79
	dec  c                                           ; $790e: $0d
	ld   [bc], a                                     ; $790f: $02
	xor  b                                           ; $7910: $a8
	ld   l, [hl]                                     ; $7911: $6e
	ld   e, l                                        ; $7912: $5d
	ld   h, e                                        ; $7913: $63
	and  c                                           ; $7914: $a1
	ld   a, h                                        ; $7915: $7c
	ld   e, a                                        ; $7916: $5f
	and  c                                           ; $7917: $a1
	ld   l, a                                        ; $7918: $6f
	and  c                                           ; $7919: $a1
	inc  bc                                          ; $791a: $03
	ld   b, [hl]                                     ; $791b: $46
	dec  c                                           ; $791c: $0d
	ld   e, d                                        ; $791d: $5a
	sbc  [hl]                                        ; $791e: $9e
	ld   e, b                                        ; $791f: $58
	ld   d, d                                        ; $7920: $52
	ld   h, l                                        ; $7921: $65
	ld   e, c                                        ; $7922: $59
	ld   [hl], c                                     ; $7923: $71
	ld   l, l                                        ; $7924: $6d
	ld   [hl], l                                     ; $7925: $75
	ld   h, a                                        ; $7926: $67
	ld   a, e                                        ; $7927: $7b
	sbc  a                                           ; $7928: $9f
	dec  c                                           ; $7929: $0d
	nop                                              ; $792a: $00
	ld   a, [bc]                                     ; $792b: $0a
	ld   b, $32                                      ; $792c: $06 $32
	ld   bc, $011c                                   ; $792e: $01 $1c $01
	ld   bc, $0101                                   ; $7931: $01 $01 $01
	ld   d, [hl]                                     ; $7934: $56
	ld   d, [hl]                                     ; $7935: $56
	sbc  [hl]                                        ; $7936: $9e
	ld   e, b                                        ; $7937: $58
	ld   d, d                                        ; $7938: $52
	ld   h, l                                        ; $7939: $65
	ld   d, d                                        ; $793a: $52
	dec  c                                           ; $793b: $0d
	ld   [hl], h                                     ; $793c: $74
	and  c                                           ; $793d: $a1
	add  l                                           ; $793e: $85
	sub  a                                           ; $793f: $97
	inc  bc                                          ; $7940: $03
	call nc, Call_05c_6a03                           ; $7941: $d4 $03 $6a
	ld   [hl], l                                     ; $7944: $75
	ld   h, l                                        ; $7945: $65
	ld   l, l                                        ; $7946: $6d
	ld   a, e                                        ; $7947: $7b
	sbc  a                                           ; $7948: $9f
	dec  c                                           ; $7949: $0d
	nop                                              ; $794a: $00
	ld   a, [bc]                                     ; $794b: $0a
	ld   b, $32                                      ; $794c: $06 $32
	ld   bc, $011c                                   ; $794e: $01 $1c $01
	nop                                              ; $7951: $00
	nop                                              ; $7952: $00
	ld   bc, $9a6b                                   ; $7953: $01 $6b $9a
	ld   [hl], l                                     ; $7956: $75
	ld   a, l                                        ; $7957: $7d
	adc  h                                           ; $7958: $8c
	ld   l, l                                        ; $7959: $6d
	sbc  a                                           ; $795a: $9f
	dec  c                                           ; $795b: $0d
	nop                                              ; $795c: $00
	ld   a, [bc]                                     ; $795d: $0a
	dec  c                                           ; $795e: $0d
	nop                                              ; $795f: $00
	nop                                              ; $7960: $00
	rrca                                             ; $7961: $0f
	nop                                              ; $7962: $00
	ld   bc, $1e09                                   ; $7963: $01 $09 $1e
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	ld   [bc], a                                     ; $7968: $02
	rlca                                             ; $7969: $07
	rra                                              ; $796a: $1f
	nop                                              ; $796b: $00
	inc  bc                                          ; $796c: $03
	inc  de                                          ; $796d: $13
	ld   bc, $2265                                   ; $796e: $01 $65 $22
	nop                                              ; $7971: $00
	rlca                                             ; $7972: $07
	sub  e                                           ; $7973: $93
	nop                                              ; $7974: $00
	inc  bc                                          ; $7975: $03
	inc  de                                          ; $7976: $13
	ld   bc, $25af                                   ; $7977: $01 $af $25
	ld   [bc], a                                     ; $797a: $02
	nop                                              ; $797b: $00
	ld   bc, $2c02                                   ; $797c: $01 $02 $2c
	ld   bc, $2000                                   ; $797f: $01 $00 $20
	inc  e                                           ; $7982: $1c
	nop                                              ; $7983: $00
	ld   b, $4f                                      ; $7984: $06 $4f
	nop                                              ; $7986: $00
	rrca                                             ; $7987: $0f
	nop                                              ; $7988: $00
	ld   bc, $df01                                   ; $7989: $01 $01 $df
	db   $ec                                         ; $798c: $ec
	and  e                                           ; $798d: $a3
	ld   h, e                                        ; $798e: $63
	and  c                                           ; $798f: $a1
	sbc  a                                           ; $7990: $9f
	dec  c                                           ; $7991: $0d
	nop                                              ; $7992: $00
	ld   a, [bc]                                     ; $7993: $0a
	inc  e                                           ; $7994: $1c
	inc  bc                                          ; $7995: $03
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	ld   bc, $8c52                                   ; $7998: $01 $52 $8c
	dec  b                                           ; $799b: $05
	jr   z, jr_05c_79f0                              ; $799c: $28 $52

	ld   [hl], l                                     ; $799e: $75
	sbc  c                                           ; $799f: $99
	ld   a, h                                        ; $79a0: $7c
	sbc  a                                           ; $79a1: $9f
	dec  c                                           ; $79a2: $0d
	adc  h                                           ; $79a3: $8c
	ld   l, l                                        ; $79a4: $6d
	sbc  [hl]                                        ; $79a5: $9e
	ld   [bc], a                                     ; $79a6: $02
	xor  d                                           ; $79a7: $aa
	ld   [hl], l                                     ; $79a8: $75
	ld   a, e                                        ; $79a9: $7b
	sbc  a                                           ; $79aa: $9f
	dec  c                                           ; $79ab: $0d
	nop                                              ; $79ac: $00
	ld   a, [bc]                                     ; $79ad: $0a
	dec  c                                           ; $79ae: $0d
	nop                                              ; $79af: $00
	nop                                              ; $79b0: $00
	rrca                                             ; $79b1: $0f
	nop                                              ; $79b2: $00
	ld   bc, $1e09                                   ; $79b3: $01 $09 $1e
	nop                                              ; $79b6: $00
	inc  e                                           ; $79b7: $1c
	inc  bc                                          ; $79b8: $03
	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	ld   bc, $9750                                   ; $79bb: $01 $50 $97
	sbc  [hl]                                        ; $79be: $9e
	ld   [$5d00], sp                                 ; $79bf: $08 $00 $5d
	and  c                                           ; $79c2: $a1
	sbc  a                                           ; $79c3: $9f
	dec  c                                           ; $79c4: $0d
	nop                                              ; $79c5: $00
	ld   a, [bc]                                     ; $79c6: $0a
	rrca                                             ; $79c7: $0f
	nop                                              ; $79c8: $00
	ld   bc, $df01                                   ; $79c9: $01 $01 $df
	db   $ec                                         ; $79cc: $ec
	and  e                                           ; $79cd: $a3
	ld   h, e                                        ; $79ce: $63
	and  c                                           ; $79cf: $a1
	sbc  a                                           ; $79d0: $9f
	dec  c                                           ; $79d1: $0d
	ld   e, b                                        ; $79d2: $58
	inc  b                                           ; $79d3: $04
	ld   a, e                                        ; $79d4: $7b
	sbc  d                                           ; $79d5: $9a
	ld   h, e                                        ; $79d6: $63
	adc  h                                           ; $79d7: $8c
	ld   [hl], l                                     ; $79d8: $75
	ld   h, a                                        ; $79d9: $67
	sbc  a                                           ; $79da: $9f
	dec  c                                           ; $79db: $0d
	nop                                              ; $79dc: $00
	ld   a, [bc]                                     ; $79dd: $0a
	rrca                                             ; $79de: $0f
	inc  bc                                          ; $79df: $03
	nop                                              ; $79e0: $00
	ld   bc, $0458                                   ; $79e1: $01 $58 $04
	ld   a, e                                        ; $79e4: $7b
	sbc  d                                           ; $79e5: $9a
	ld   h, e                                        ; $79e6: $63
	adc  h                                           ; $79e7: $8c
	sbc  a                                           ; $79e8: $9f
	dec  c                                           ; $79e9: $0d
	ld   h, [hl]                                     ; $79ea: $66
	sub  c                                           ; $79eb: $91
	ld   d, b                                        ; $79ec: $50
	ld   a, e                                        ; $79ed: $7b
	sbc  a                                           ; $79ee: $9f
	dec  c                                           ; $79ef: $0d

jr_05c_79f0:
	nop                                              ; $79f0: $00
	ld   a, [bc]                                     ; $79f1: $0a
	dec  c                                           ; $79f2: $0d
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	rrca                                             ; $79f5: $0f
	nop                                              ; $79f6: $00
	ld   bc, $1e09                                   ; $79f7: $01 $09 $1e
	nop                                              ; $79fa: $00
	dec  c                                           ; $79fb: $0d
	inc  bc                                          ; $79fc: $03
	nop                                              ; $79fd: $00
	rrca                                             ; $79fe: $0f
	nop                                              ; $79ff: $00
	ld   bc, $df01                                   ; $7a00: $01 $01 $df
	db   $ec                                         ; $7a03: $ec
	and  e                                           ; $7a04: $a3
	ld   h, e                                        ; $7a05: $63
	and  c                                           ; $7a06: $a1
	sbc  a                                           ; $7a07: $9f
	dec  c                                           ; $7a08: $0d
	nop                                              ; $7a09: $00
	ld   a, [bc]                                     ; $7a0a: $0a
	inc  e                                           ; $7a0b: $1c
	inc  bc                                          ; $7a0c: $03
	nop                                              ; $7a0d: $00
	nop                                              ; $7a0e: $00
	ld   bc, $9750                                   ; $7a0f: $01 $50 $97
	sbc  [hl]                                        ; $7a12: $9e
	ld   [$5d00], sp                                 ; $7a13: $08 $00 $5d
	and  c                                           ; $7a16: $a1
	sbc  a                                           ; $7a17: $9f
	dec  c                                           ; $7a18: $0d
	nop                                              ; $7a19: $00
	ld   a, [bc]                                     ; $7a1a: $0a
	rrca                                             ; $7a1b: $0f
	nop                                              ; $7a1c: $00
	ld   bc, $0201                                   ; $7a1d: $01 $01 $02
	and  l                                           ; $7a20: $a5
	inc  b                                           ; $7a21: $04
	xor  d                                           ; $7a22: $aa
	ld   a, h                                        ; $7a23: $7c
	ld   e, b                                        ; $7a24: $58
	inc  b                                           ; $7a25: $04
	xor  l                                           ; $7a26: $ad
	ld   h, d                                        ; $7a27: $62
	inc  b                                           ; $7a28: $04
	sbc  h                                           ; $7a29: $9c
	ld   a, l                                        ; $7a2a: $7d
	dec  c                                           ; $7a2b: $0d
	ld   e, b                                        ; $7a2c: $58
	ld   d, d                                        ; $7a2d: $52
	ld   h, l                                        ; $7a2e: $65
	ld   e, c                                        ; $7a2f: $59
	ld   [hl], c                                     ; $7a30: $71
	ld   l, l                                        ; $7a31: $6d
	ld   [hl], l                                     ; $7a32: $75
	ld   h, a                                        ; $7a33: $67
	ld   a, e                                        ; $7a34: $7b
	sbc  a                                           ; $7a35: $9f
	dec  c                                           ; $7a36: $0d
	nop                                              ; $7a37: $00
	ld   a, [bc]                                     ; $7a38: $0a
	rlca                                             ; $7a39: $07
	db   $e3                                         ; $7a3a: $e3
	nop                                              ; $7a3b: $00
	ld   [bc], a                                     ; $7a3c: $02
	nop                                              ; $7a3d: $00
	ld   bc, $2018                                   ; $7a3e: $01 $18 $20
	nop                                              ; $7a41: $00
	rlca                                             ; $7a42: $07
	ld   c, $01                                      ; $7a43: $0e $01
	ld   [bc], a                                     ; $7a45: $02
	nop                                              ; $7a46: $00
	ld   bc, $201a                                   ; $7a47: $01 $1a $20
	nop                                              ; $7a4a: $00
	inc  e                                           ; $7a4b: $1c
	inc  bc                                          ; $7a4c: $03
	inc  bc                                          ; $7a4d: $03
	inc  bc                                          ; $7a4e: $03
	ld   bc, $5656                                   ; $7a4f: $01 $56 $56
	sbc  [hl]                                        ; $7a52: $9e
	halt                                             ; $7a53: $76
	ld   e, l                                        ; $7a54: $5d
	ld   a, c                                        ; $7a55: $79
	dec  c                                           ; $7a56: $0d
	ld   [bc], a                                     ; $7a57: $02
	xor  b                                           ; $7a58: $a8
	ld   l, [hl]                                     ; $7a59: $6e
	ld   e, l                                        ; $7a5a: $5d
	ld   h, e                                        ; $7a5b: $63
	and  c                                           ; $7a5c: $a1
	ld   a, h                                        ; $7a5d: $7c
	ld   e, a                                        ; $7a5e: $5f
	and  c                                           ; $7a5f: $a1
	ld   l, a                                        ; $7a60: $6f
	and  c                                           ; $7a61: $a1
	inc  bc                                          ; $7a62: $03
	ld   b, [hl]                                     ; $7a63: $46
	dec  c                                           ; $7a64: $0d
	ld   e, d                                        ; $7a65: $5a
	sbc  [hl]                                        ; $7a66: $9e
	ld   e, b                                        ; $7a67: $58
	ld   d, d                                        ; $7a68: $52
	ld   h, l                                        ; $7a69: $65
	ld   e, c                                        ; $7a6a: $59
	ld   [hl], c                                     ; $7a6b: $71
	ld   l, l                                        ; $7a6c: $6d
	sbc  l                                           ; $7a6d: $9d
	ld   a, e                                        ; $7a6e: $7b
	sbc  a                                           ; $7a6f: $9f
	dec  c                                           ; $7a70: $0d
	nop                                              ; $7a71: $00
	ld   a, [bc]                                     ; $7a72: $0a
	ld   b, $2f                                      ; $7a73: $06 $2f
	ld   bc, $031c                                   ; $7a75: $01 $1c $03
	inc  bc                                          ; $7a78: $03
	inc  bc                                          ; $7a79: $03
	ld   bc, $5656                                   ; $7a7a: $01 $56 $56
	sbc  [hl]                                        ; $7a7d: $9e
	ld   e, b                                        ; $7a7e: $58
	ld   d, d                                        ; $7a7f: $52
	ld   h, l                                        ; $7a80: $65
	ld   d, d                                        ; $7a81: $52
	dec  c                                           ; $7a82: $0d
	ld   [hl], h                                     ; $7a83: $74
	and  c                                           ; $7a84: $a1
	add  l                                           ; $7a85: $85
	sub  a                                           ; $7a86: $97
	inc  bc                                          ; $7a87: $03
	call nc, Call_05c_6a03                           ; $7a88: $d4 $03 $6a
	ld   l, [hl]                                     ; $7a8b: $6e
	ld   [hl], c                                     ; $7a8c: $71
	ld   l, l                                        ; $7a8d: $6d
	sbc  l                                           ; $7a8e: $9d
	ld   a, e                                        ; $7a8f: $7b
	sbc  a                                           ; $7a90: $9f
	dec  c                                           ; $7a91: $0d
	nop                                              ; $7a92: $00
	ld   a, [bc]                                     ; $7a93: $0a
	ld   b, $2f                                      ; $7a94: $06 $2f
	ld   bc, $031c                                   ; $7a96: $01 $1c $03
	nop                                              ; $7a99: $00
	nop                                              ; $7a9a: $00
	ld   bc, $9b6b                                   ; $7a9b: $01 $6b $9b
	ld   l, e                                        ; $7a9e: $6b
	sbc  e                                           ; $7a9f: $9b
	inc  bc                                          ; $7aa0: $03
	ld   l, l                                        ; $7aa1: $6d
	dec  b                                           ; $7aa2: $05
	add  hl, de                                      ; $7aa3: $19
	ld   a, h                                        ; $7aa4: $7c
	inc  bc                                          ; $7aa5: $03
	ld   l, a                                        ; $7aa6: $6f
	ld   [bc], a                                     ; $7aa7: $02
	xor  c                                           ; $7aa8: $a9
	sub  [hl]                                        ; $7aa9: $96
	sbc  a                                           ; $7aaa: $9f
	dec  c                                           ; $7aab: $0d
	ld   l, e                                        ; $7aac: $6b
	sbc  d                                           ; $7aad: $9a
	ld   h, [hl]                                     ; $7aae: $66
	sub  c                                           ; $7aaf: $91
	sbc  a                                           ; $7ab0: $9f
	dec  c                                           ; $7ab1: $0d
	nop                                              ; $7ab2: $00
	ld   a, [bc]                                     ; $7ab3: $0a
	dec  c                                           ; $7ab4: $0d
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	rrca                                             ; $7ab7: $0f
	nop                                              ; $7ab8: $00
	ld   bc, $1e09                                   ; $7ab9: $01 $09 $1e
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	ld   [bc], a                                     ; $7abe: $02
	rlca                                             ; $7abf: $07
	rra                                              ; $7ac0: $1f
	nop                                              ; $7ac1: $00
	inc  bc                                          ; $7ac2: $03
	inc  d                                           ; $7ac3: $14
	ld   bc, $2265                                   ; $7ac4: $01 $65 $22
	nop                                              ; $7ac7: $00
	rlca                                             ; $7ac8: $07
	adc  [hl]                                        ; $7ac9: $8e
	nop                                              ; $7aca: $00
	inc  bc                                          ; $7acb: $03
	inc  d                                           ; $7acc: $14
	ld   bc, $25af                                   ; $7acd: $01 $af $25
	ld   [bc], a                                     ; $7ad0: $02
	nop                                              ; $7ad1: $00
	ld   bc, $2c02                                   ; $7ad2: $01 $02 $2c
	ld   bc, $2000                                   ; $7ad5: $01 $00 $20
	inc  e                                           ; $7ad8: $1c
	nop                                              ; $7ad9: $00
	ld   b, $50                                      ; $7ada: $06 $50
	nop                                              ; $7adc: $00
	rrca                                             ; $7add: $0f
	nop                                              ; $7ade: $00
	ld   bc, $9201                                   ; $7adf: $01 $01 $92
	ld   d, b                                        ; $7ae2: $50
	sbc  [hl]                                        ; $7ae3: $9e
	and  e                                           ; $7ae4: $a3
	and  l                                           ; $7ae5: $a5
	db   $ec                                         ; $7ae6: $ec
	cp   d                                           ; $7ae7: $ba
	sbc  a                                           ; $7ae8: $9f
	dec  c                                           ; $7ae9: $0d
	nop                                              ; $7aea: $00
	ld   a, [bc]                                     ; $7aeb: $0a
	inc  e                                           ; $7aec: $1c
	inc  b                                           ; $7aed: $04
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	ld   bc, $a5a3                                   ; $7af0: $01 $a3 $a5
	db   $ec                                         ; $7af3: $ec
	cp   d                                           ; $7af4: $ba
	sbc  [hl]                                        ; $7af5: $9e
	ld   d, d                                        ; $7af6: $52
	ld   l, e                                        ; $7af7: $6b
	ld   e, d                                        ; $7af8: $5a
	ld   h, l                                        ; $7af9: $65
	ld   d, d                                        ; $7afa: $52
	ld   a, h                                        ; $7afb: $7c
	sbc  a                                           ; $7afc: $9f
	dec  c                                           ; $7afd: $0d
	adc  h                                           ; $7afe: $8c
	ld   l, l                                        ; $7aff: $6d
	ld   a, e                                        ; $7b00: $7b
	sbc  a                                           ; $7b01: $9f
	dec  c                                           ; $7b02: $0d
	nop                                              ; $7b03: $00
	ld   a, [bc]                                     ; $7b04: $0a
	dec  c                                           ; $7b05: $0d
	nop                                              ; $7b06: $00
	nop                                              ; $7b07: $00
	rrca                                             ; $7b08: $0f
	nop                                              ; $7b09: $00
	ld   bc, $1e09                                   ; $7b0a: $01 $09 $1e
	nop                                              ; $7b0d: $00
	inc  e                                           ; $7b0e: $1c
	inc  b                                           ; $7b0f: $04
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	ld   bc, $9e50                                   ; $7b12: $01 $50 $9e
	ld   l, a                                        ; $7b15: $6f
	ld   d, d                                        ; $7b16: $52
	ld   [bc], a                                     ; $7b17: $02
	inc  de                                          ; $7b18: $13
	ld   l, a                                        ; $7b19: $6f
	sub  c                                           ; $7b1a: $91
	and  c                                           ; $7b1b: $a1
	sbc  a                                           ; $7b1c: $9f
	dec  c                                           ; $7b1d: $0d
	nop                                              ; $7b1e: $00
	ld   a, [bc]                                     ; $7b1f: $0a
	rrca                                             ; $7b20: $0f
	nop                                              ; $7b21: $00
	ld   bc, $9201                                   ; $7b22: $01 $01 $92
	ld   d, b                                        ; $7b25: $50
	sbc  [hl]                                        ; $7b26: $9e
	and  e                                           ; $7b27: $a3
	and  l                                           ; $7b28: $a5
	db   $ec                                         ; $7b29: $ec
	cp   d                                           ; $7b2a: $ba
	sbc  a                                           ; $7b2b: $9f
	dec  c                                           ; $7b2c: $0d
	nop                                              ; $7b2d: $00
	ld   a, [bc]                                     ; $7b2e: $0a
	rrca                                             ; $7b2f: $0f
	inc  b                                           ; $7b30: $04
	nop                                              ; $7b31: $00
	ld   bc, $9166                                   ; $7b32: $01 $66 $91
	ld   d, b                                        ; $7b35: $50
	ld   a, e                                        ; $7b36: $7b
	sbc  [hl]                                        ; $7b37: $9e
	ld   l, a                                        ; $7b38: $6f
	ld   d, d                                        ; $7b39: $52
	ld   [bc], a                                     ; $7b3a: $02
	inc  de                                          ; $7b3b: $13
	ld   l, a                                        ; $7b3c: $6f
	sub  c                                           ; $7b3d: $91
	and  c                                           ; $7b3e: $a1
	sbc  a                                           ; $7b3f: $9f
	dec  c                                           ; $7b40: $0d
	nop                                              ; $7b41: $00
	ld   a, [bc]                                     ; $7b42: $0a
	dec  c                                           ; $7b43: $0d
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	rrca                                             ; $7b46: $0f
	nop                                              ; $7b47: $00
	ld   bc, $1e09                                   ; $7b48: $01 $09 $1e
	nop                                              ; $7b4b: $00
	rrca                                             ; $7b4c: $0f
	nop                                              ; $7b4d: $00
	ld   bc, $040d                                   ; $7b4e: $01 $0d $04
	nop                                              ; $7b51: $00
	ld   bc, $5092                                   ; $7b52: $01 $92 $50
	sbc  [hl]                                        ; $7b55: $9e
	and  e                                           ; $7b56: $a3
	and  l                                           ; $7b57: $a5
	db   $ec                                         ; $7b58: $ec
	cp   d                                           ; $7b59: $ba
	sbc  a                                           ; $7b5a: $9f
	dec  c                                           ; $7b5b: $0d
	nop                                              ; $7b5c: $00
	ld   a, [bc]                                     ; $7b5d: $0a
	inc  e                                           ; $7b5e: $1c
	inc  b                                           ; $7b5f: $04
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	ld   bc, $9e50                                   ; $7b62: $01 $50 $9e
	ld   l, a                                        ; $7b65: $6f
	ld   d, d                                        ; $7b66: $52
	ld   [bc], a                                     ; $7b67: $02
	inc  de                                          ; $7b68: $13
	ld   l, a                                        ; $7b69: $6f
	sub  c                                           ; $7b6a: $91
	and  c                                           ; $7b6b: $a1
	sbc  a                                           ; $7b6c: $9f
	dec  c                                           ; $7b6d: $0d
	nop                                              ; $7b6e: $00
	ld   a, [bc]                                     ; $7b6f: $0a
	rrca                                             ; $7b70: $0f
	nop                                              ; $7b71: $00
	ld   bc, $0201                                   ; $7b72: $01 $01 $02
	and  l                                           ; $7b75: $a5
	inc  b                                           ; $7b76: $04
	xor  d                                           ; $7b77: $aa
	ld   a, h                                        ; $7b78: $7c
	ld   e, b                                        ; $7b79: $58
	inc  b                                           ; $7b7a: $04
	xor  l                                           ; $7b7b: $ad
	ld   h, d                                        ; $7b7c: $62
	inc  b                                           ; $7b7d: $04
	sbc  h                                           ; $7b7e: $9c
	ld   a, l                                        ; $7b7f: $7d
	dec  c                                           ; $7b80: $0d
	ld   e, b                                        ; $7b81: $58
	ld   d, d                                        ; $7b82: $52
	ld   h, l                                        ; $7b83: $65
	ld   e, c                                        ; $7b84: $59
	ld   [hl], c                                     ; $7b85: $71
	ld   l, l                                        ; $7b86: $6d
	ld   a, e                                        ; $7b87: $7b
	sbc  a                                           ; $7b88: $9f
	dec  c                                           ; $7b89: $0d
	nop                                              ; $7b8a: $00
	ld   a, [bc]                                     ; $7b8b: $0a
	rlca                                             ; $7b8c: $07
	ldh  [rP1], a                                    ; $7b8d: $e0 $00
	ld   [bc], a                                     ; $7b8f: $02
	nop                                              ; $7b90: $00
	ld   bc, $2018                                   ; $7b91: $01 $18 $20
	nop                                              ; $7b94: $00
	rlca                                             ; $7b95: $07
	dec  bc                                          ; $7b96: $0b
	ld   bc, $0002                                   ; $7b97: $01 $02 $00
	ld   bc, $201a                                   ; $7b9a: $01 $1a $20
	nop                                              ; $7b9d: $00
	inc  e                                           ; $7b9e: $1c
	inc  b                                           ; $7b9f: $04
	ld   bc, $0101                                   ; $7ba0: $01 $01 $01
	ld   d, h                                        ; $7ba3: $54
	and  c                                           ; $7ba4: $a1
	sbc  a                                           ; $7ba5: $9f
	and  e                                           ; $7ba6: $a3
	and  l                                           ; $7ba7: $a5
	db   $ec                                         ; $7ba8: $ec
	cp   d                                           ; $7ba9: $ba
	sbc  [hl]                                        ; $7baa: $9e
	dec  c                                           ; $7bab: $0d
	ld   e, [hl]                                     ; $7bac: $5e
	ld   l, [hl]                                     ; $7bad: $6e
	ld   e, l                                        ; $7bae: $5d
	ld   h, e                                        ; $7baf: $63
	and  c                                           ; $7bb0: $a1
	ld   a, h                                        ; $7bb1: $7c
	ld   e, a                                        ; $7bb2: $5f
	and  c                                           ; $7bb3: $a1
	ld   l, a                                        ; $7bb4: $6f
	and  c                                           ; $7bb5: $a1
	ld   h, [hl]                                     ; $7bb6: $66
	sbc  c                                           ; $7bb7: $99
	dec  c                                           ; $7bb8: $0d
	ld   e, d                                        ; $7bb9: $5a
	sbc  [hl]                                        ; $7bba: $9e
	ld   e, b                                        ; $7bbb: $58
	ld   d, d                                        ; $7bbc: $52
	ld   h, l                                        ; $7bbd: $65
	ld   e, c                                        ; $7bbe: $59
	ld   [hl], c                                     ; $7bbf: $71
	ld   l, l                                        ; $7bc0: $6d
	sub  [hl]                                        ; $7bc1: $96
	sbc  a                                           ; $7bc2: $9f
	dec  c                                           ; $7bc3: $0d
	nop                                              ; $7bc4: $00
	ld   a, [bc]                                     ; $7bc5: $0a
	ld   b, $2c                                      ; $7bc6: $06 $2c
	ld   bc, $041c                                   ; $7bc8: $01 $1c $04
	ld   bc, $0101                                   ; $7bcb: $01 $01 $01
	ld   d, h                                        ; $7bce: $54
	and  c                                           ; $7bcf: $a1
	sbc  a                                           ; $7bd0: $9f
	ld   [hl], h                                     ; $7bd1: $74
	and  c                                           ; $7bd2: $a1
	add  l                                           ; $7bd3: $85
	sub  a                                           ; $7bd4: $97
	ld   [hl], h                                     ; $7bd5: $74
	ld   d, d                                        ; $7bd6: $52
	ld   h, l                                        ; $7bd7: $65
	sub  l                                           ; $7bd8: $95
	ld   e, l                                        ; $7bd9: $5d
	sbc  [hl]                                        ; $7bda: $9e
	dec  c                                           ; $7bdb: $0d
	ld   e, b                                        ; $7bdc: $58
	ld   d, d                                        ; $7bdd: $52
	ld   h, l                                        ; $7bde: $65
	ld   e, c                                        ; $7bdf: $59
	ld   [hl], c                                     ; $7be0: $71
	ld   l, l                                        ; $7be1: $6d
	ld   a, e                                        ; $7be2: $7b
	sbc  a                                           ; $7be3: $9f
	dec  c                                           ; $7be4: $0d
	nop                                              ; $7be5: $00
	ld   a, [bc]                                     ; $7be6: $0a
	ld   b, $2c                                      ; $7be7: $06 $2c
	ld   bc, $041c                                   ; $7be9: $01 $1c $04
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
	ld   bc, $9166                                   ; $7bee: $01 $66 $91
	ld   d, b                                        ; $7bf1: $50
	ld   a, e                                        ; $7bf2: $7b
	sbc  [hl]                                        ; $7bf3: $9e
	ld   l, a                                        ; $7bf4: $6f
	ld   d, d                                        ; $7bf5: $52
	ld   [bc], a                                     ; $7bf6: $02
	inc  de                                          ; $7bf7: $13
	ld   l, a                                        ; $7bf8: $6f
	sub  c                                           ; $7bf9: $91
	and  c                                           ; $7bfa: $a1
	sbc  a                                           ; $7bfb: $9f
	dec  c                                           ; $7bfc: $0d
	nop                                              ; $7bfd: $00
	ld   a, [bc]                                     ; $7bfe: $0a
	dec  c                                           ; $7bff: $0d
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	rrca                                             ; $7c02: $0f
	nop                                              ; $7c03: $00
	ld   bc, $1e09                                   ; $7c04: $01 $09 $1e
	nop                                              ; $7c07: $00
	nop                                              ; $7c08: $00
	ld   [bc], a                                     ; $7c09: $02
	rlca                                             ; $7c0a: $07
	jr   z, jr_05c_7c0d                              ; $7c0b: $28 $00

jr_05c_7c0d:
	inc  bc                                          ; $7c0d: $03
	ld   d, $01                                      ; $7c0e: $16 $01
	ld   h, l                                        ; $7c10: $65
	inc  hl                                          ; $7c11: $23
	nop                                              ; $7c12: $00
	rlca                                             ; $7c13: $07
	ld   h, b                                        ; $7c14: $60
	nop                                              ; $7c15: $00
	inc  bc                                          ; $7c16: $03
	ld   d, $01                                      ; $7c17: $16 $01
	ld   h, [hl]                                     ; $7c19: $66
	dec  h                                           ; $7c1a: $25
	inc  bc                                          ; $7c1b: $03
	ld   d, $01                                      ; $7c1c: $16 $01
	xor  a                                           ; $7c1e: $af
	ld   [hl+], a                                    ; $7c1f: $22
	inc  e                                           ; $7c20: $1c
	nop                                              ; $7c21: $00
	rlca                                             ; $7c22: $07
	and  d                                           ; $7c23: $a2
	nop                                              ; $7c24: $00
	ld   [bc], a                                     ; $7c25: $02
	nop                                              ; $7c26: $00
	ld   bc, $2c02                                   ; $7c27: $01 $02 $2c
	ld   bc, $2000                                   ; $7c2a: $01 $00 $20
	nop                                              ; $7c2d: $00
	ld   b, $60                                      ; $7c2e: $06 $60
	nop                                              ; $7c30: $00
	rrca                                             ; $7c31: $0f
	nop                                              ; $7c32: $00
	ld   bc, $ac01                                   ; $7c33: $01 $01 $ac
	push af                                          ; $7c36: $f5
	bit  4, e                                        ; $7c37: $cb $63
	and  c                                           ; $7c39: $a1
	sbc  a                                           ; $7c3a: $9f
	dec  c                                           ; $7c3b: $0d
	nop                                              ; $7c3c: $00
	ld   a, [bc]                                     ; $7c3d: $0a
	inc  e                                           ; $7c3e: $1c
	ld   b, $00                                      ; $7c3f: $06 $00
	nop                                              ; $7c41: $00
	ld   bc, $999d                                   ; $7c42: $01 $9d $99
	ld   d, d                                        ; $7c45: $52
	sbc  a                                           ; $7c46: $9f
	dec  c                                           ; $7c47: $0d
	ld   l, a                                        ; $7c48: $6f
	sub  l                                           ; $7c49: $95
	ld   d, d                                        ; $7c4a: $52
	halt                                             ; $7c4b: $76
	dec  b                                           ; $7c4c: $05
	jr   z, jr_05c_7cab                              ; $7c4d: $28 $5c

	ld   a, h                                        ; $7c4f: $7c
	inc  b                                           ; $7c50: $04
	di                                               ; $7c51: $f3
	ld   e, d                                        ; $7c52: $5a
	ld   d, b                                        ; $7c53: $50
	sbc  c                                           ; $7c54: $99
	and  c                                           ; $7c55: $a1
	ld   l, [hl]                                     ; $7c56: $6e
	sbc  a                                           ; $7c57: $9f
	dec  c                                           ; $7c58: $0d
	adc  h                                           ; $7c59: $8c
	ld   l, l                                        ; $7c5a: $6d
	ld   a, b                                        ; $7c5b: $78
	sbc  a                                           ; $7c5c: $9f
	dec  c                                           ; $7c5d: $0d
	nop                                              ; $7c5e: $00
	ld   a, [bc]                                     ; $7c5f: $0a
	dec  c                                           ; $7c60: $0d
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	rrca                                             ; $7c63: $0f
	nop                                              ; $7c64: $00
	ld   bc, $1e09                                   ; $7c65: $01 $09 $1e
	nop                                              ; $7c68: $00
	inc  e                                           ; $7c69: $1c
	ld   b, $00                                      ; $7c6a: $06 $00
	nop                                              ; $7c6c: $00
	ld   bc, $5496                                   ; $7c6d: $01 $96 $54
	sbc  [hl]                                        ; $7c70: $9e
	ld   [$9f00], sp                                 ; $7c71: $08 $00 $9f
	dec  c                                           ; $7c74: $0d
	nop                                              ; $7c75: $00
	ld   a, [bc]                                     ; $7c76: $0a
	rrca                                             ; $7c77: $0f
	nop                                              ; $7c78: $00
	ld   bc, $5801                                   ; $7c79: $01 $01 $58
	inc  b                                           ; $7c7c: $04
	ld   a, e                                        ; $7c7d: $7b
	sbc  d                                           ; $7c7e: $9a
	ld   h, e                                        ; $7c7f: $63
	adc  h                                           ; $7c80: $8c
	ld   [hl], l                                     ; $7c81: $75
	ld   h, a                                        ; $7c82: $67
	sbc  a                                           ; $7c83: $9f
	dec  c                                           ; $7c84: $0d
	xor  h                                           ; $7c85: $ac
	push af                                          ; $7c86: $f5
	bit  4, e                                        ; $7c87: $cb $63
	and  c                                           ; $7c89: $a1
	sbc  a                                           ; $7c8a: $9f
	dec  c                                           ; $7c8b: $0d
	nop                                              ; $7c8c: $00
	ld   a, [bc]                                     ; $7c8d: $0a
	rrca                                             ; $7c8e: $0f
	ld   b, $00                                      ; $7c8f: $06 $00
	ld   bc, $0458                                   ; $7c91: $01 $58 $04
	ld   a, e                                        ; $7c94: $7b
	sbc  d                                           ; $7c95: $9a
	ld   h, e                                        ; $7c96: $63
	and  c                                           ; $7c97: $a1
	sbc  a                                           ; $7c98: $9f
	dec  c                                           ; $7c99: $0d
	ld   h, [hl]                                     ; $7c9a: $66
	sub  c                                           ; $7c9b: $91
	ld   d, b                                        ; $7c9c: $50
	ld   a, b                                        ; $7c9d: $78
	sbc  a                                           ; $7c9e: $9f
	dec  c                                           ; $7c9f: $0d
	nop                                              ; $7ca0: $00
	ld   a, [bc]                                     ; $7ca1: $0a
	dec  c                                           ; $7ca2: $0d
	nop                                              ; $7ca3: $00
	nop                                              ; $7ca4: $00
	rrca                                             ; $7ca5: $0f
	nop                                              ; $7ca6: $00
	ld   bc, $1e09                                   ; $7ca7: $01 $09 $1e
	nop                                              ; $7caa: $00

jr_05c_7cab:
	rrca                                             ; $7cab: $0f
	nop                                              ; $7cac: $00
	ld   bc, $060d                                   ; $7cad: $01 $0d $06
	nop                                              ; $7cb0: $00
	ld   bc, $f5ac                                   ; $7cb1: $01 $ac $f5
	bit  4, e                                        ; $7cb4: $cb $63
	and  c                                           ; $7cb6: $a1
	sbc  a                                           ; $7cb7: $9f
	dec  c                                           ; $7cb8: $0d
	nop                                              ; $7cb9: $00
	ld   a, [bc]                                     ; $7cba: $0a
	inc  e                                           ; $7cbb: $1c
	ld   b, $00                                      ; $7cbc: $06 $00
	nop                                              ; $7cbe: $00
	ld   bc, $5496                                   ; $7cbf: $01 $96 $54
	sbc  [hl]                                        ; $7cc2: $9e
	ld   [$9f00], sp                                 ; $7cc3: $08 $00 $9f
	dec  c                                           ; $7cc6: $0d
	nop                                              ; $7cc7: $00
	ld   a, [bc]                                     ; $7cc8: $0a
	rrca                                             ; $7cc9: $0f
	nop                                              ; $7cca: $00
	ld   bc, $0201                                   ; $7ccb: $01 $01 $02
	and  l                                           ; $7cce: $a5
	inc  b                                           ; $7ccf: $04
	xor  d                                           ; $7cd0: $aa
	ld   a, h                                        ; $7cd1: $7c
	ld   e, b                                        ; $7cd2: $58
	inc  b                                           ; $7cd3: $04
	xor  l                                           ; $7cd4: $ad
	ld   h, d                                        ; $7cd5: $62
	inc  b                                           ; $7cd6: $04
	sbc  h                                           ; $7cd7: $9c
	ld   a, l                                        ; $7cd8: $7d
	dec  c                                           ; $7cd9: $0d
	ld   e, b                                        ; $7cda: $58
	ld   d, d                                        ; $7cdb: $52
	ld   h, l                                        ; $7cdc: $65
	ld   e, c                                        ; $7cdd: $59
	ld   [hl], c                                     ; $7cde: $71
	ld   l, l                                        ; $7cdf: $6d
	ld   [hl], l                                     ; $7ce0: $75
	ld   h, a                                        ; $7ce1: $67
	ld   a, e                                        ; $7ce2: $7b
	sbc  a                                           ; $7ce3: $9f
	dec  c                                           ; $7ce4: $0d
	nop                                              ; $7ce5: $00
	ld   a, [bc]                                     ; $7ce6: $0a
	rlca                                             ; $7ce7: $07
	ldh  a, [rP1]                                    ; $7ce8: $f0 $00
	ld   [bc], a                                     ; $7cea: $02
	nop                                              ; $7ceb: $00
	ld   bc, $2018                                   ; $7cec: $01 $18 $20
	nop                                              ; $7cef: $00
	rlca                                             ; $7cf0: $07
	inc  e                                           ; $7cf1: $1c
	ld   bc, $0002                                   ; $7cf2: $01 $02 $00
	ld   bc, $201a                                   ; $7cf5: $01 $1a $20
	nop                                              ; $7cf8: $00
	inc  e                                           ; $7cf9: $1c
	ld   b, $01                                      ; $7cfa: $06 $01
	ld   bc, $6b01                                   ; $7cfc: $01 $01 $6b
	ld   d, h                                        ; $7cff: $54
	ld   l, e                                        ; $7d00: $6b
	ld   d, h                                        ; $7d01: $54
	sbc  [hl]                                        ; $7d02: $9e
	halt                                             ; $7d03: $76
	ld   e, l                                        ; $7d04: $5d
	ld   a, c                                        ; $7d05: $79
	dec  c                                           ; $7d06: $0d
	ld   [bc], a                                     ; $7d07: $02
	xor  b                                           ; $7d08: $a8
	ld   l, [hl]                                     ; $7d09: $6e
	ld   e, l                                        ; $7d0a: $5d
	ld   h, e                                        ; $7d0b: $63
	and  c                                           ; $7d0c: $a1
	ld   a, h                                        ; $7d0d: $7c
	ld   e, a                                        ; $7d0e: $5f
	and  c                                           ; $7d0f: $a1
	ld   l, a                                        ; $7d10: $6f
	and  c                                           ; $7d11: $a1
	inc  bc                                          ; $7d12: $03
	ld   b, [hl]                                     ; $7d13: $46
	dec  c                                           ; $7d14: $0d
	ld   e, d                                        ; $7d15: $5a
	sbc  [hl]                                        ; $7d16: $9e
	ld   d, h                                        ; $7d17: $54
	adc  h                                           ; $7d18: $8c
	ld   e, c                                        ; $7d19: $59
	ld   [hl], c                                     ; $7d1a: $71
	ld   l, l                                        ; $7d1b: $6d
	sub  [hl]                                        ; $7d1c: $96
	ld   a, b                                        ; $7d1d: $78
	sbc  a                                           ; $7d1e: $9f
	dec  c                                           ; $7d1f: $0d
	nop                                              ; $7d20: $00
	ld   a, [bc]                                     ; $7d21: $0a
	ld   b, $3e                                      ; $7d22: $06 $3e
	ld   bc, $061c                                   ; $7d24: $01 $1c $06
	ld   bc, $0101                                   ; $7d27: $01 $01 $01
	ld   l, e                                        ; $7d2a: $6b
	ld   d, h                                        ; $7d2b: $54
	ld   l, e                                        ; $7d2c: $6b
	ld   d, h                                        ; $7d2d: $54
	sbc  [hl]                                        ; $7d2e: $9e
	ld   d, h                                        ; $7d2f: $54
	adc  h                                           ; $7d30: $8c
	ld   d, d                                        ; $7d31: $52
	dec  c                                           ; $7d32: $0d
	ld   [hl], h                                     ; $7d33: $74
	and  c                                           ; $7d34: $a1
	add  l                                           ; $7d35: $85
	sub  a                                           ; $7d36: $97
	inc  bc                                          ; $7d37: $03
	call nc, Call_05c_6a03                           ; $7d38: $d4 $03 $6a
	ld   l, [hl]                                     ; $7d3b: $6e
	ld   [hl], c                                     ; $7d3c: $71
	ld   l, l                                        ; $7d3d: $6d
	sub  [hl]                                        ; $7d3e: $96
	ld   a, b                                        ; $7d3f: $78
	sbc  a                                           ; $7d40: $9f
	dec  c                                           ; $7d41: $0d
	nop                                              ; $7d42: $00
	ld   a, [bc]                                     ; $7d43: $0a
	ld   b, $3e                                      ; $7d44: $06 $3e
	ld   bc, $061c                                   ; $7d46: $01 $1c $06
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	ld   bc, $9166                                   ; $7d4b: $01 $66 $91
	ld   d, b                                        ; $7d4e: $50
	ld   a, b                                        ; $7d4f: $78
	sbc  a                                           ; $7d50: $9f
	dec  c                                           ; $7d51: $0d
	nop                                              ; $7d52: $00
	ld   a, [bc]                                     ; $7d53: $0a
	dec  c                                           ; $7d54: $0d
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	rrca                                             ; $7d57: $0f
	nop                                              ; $7d58: $00
	ld   bc, $1e09                                   ; $7d59: $01 $09 $1e
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	ld   [bc], a                                     ; $7d5e: $02
	rlca                                             ; $7d5f: $07
	rra                                              ; $7d60: $1f
	nop                                              ; $7d61: $00
	inc  bc                                          ; $7d62: $03
	dec  d                                           ; $7d63: $15
	ld   bc, $2265                                   ; $7d64: $01 $65 $22
	nop                                              ; $7d67: $00
	rlca                                             ; $7d68: $07
	sbc  d                                           ; $7d69: $9a
	nop                                              ; $7d6a: $00
	inc  bc                                          ; $7d6b: $03
	dec  d                                           ; $7d6c: $15
	ld   bc, $25af                                   ; $7d6d: $01 $af $25
	ld   [bc], a                                     ; $7d70: $02
	nop                                              ; $7d71: $00
	ld   bc, $2c02                                   ; $7d72: $01 $02 $2c
	ld   bc, $2000                                   ; $7d75: $01 $00 $20
	inc  e                                           ; $7d78: $1c
	nop                                              ; $7d79: $00
	ld   b, $57                                      ; $7d7a: $06 $57
	nop                                              ; $7d7c: $00
	rrca                                             ; $7d7d: $0f
	nop                                              ; $7d7e: $00
	ld   bc, $0201                                   ; $7d7f: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d82: $cf
	dec  b                                           ; $7d83: $05
	ld   a, [de]                                     ; $7d84: $1a
	ld   h, e                                        ; $7d85: $63
	and  c                                           ; $7d86: $a1
	sbc  a                                           ; $7d87: $9f
	dec  c                                           ; $7d88: $0d
	nop                                              ; $7d89: $00
	ld   a, [bc]                                     ; $7d8a: $0a
	inc  e                                           ; $7d8b: $1c
	dec  b                                           ; $7d8c: $05
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	ld   bc, $a502                                   ; $7d8f: $01 $02 $a5
	ld   l, a                                        ; $7d92: $6f
	sub  l                                           ; $7d93: $95
	ld   [hl], c                                     ; $7d94: $71
	halt                                             ; $7d95: $76
	sbc  [hl]                                        ; $7d96: $9e
	inc  b                                           ; $7d97: $04
	ld   c, $04                                      ; $7d98: $0e $04
	adc  h                                           ; $7d9a: $8c
	ld   a, b                                        ; $7d9b: $78
	and  c                                           ; $7d9c: $a1
	sub  d                                           ; $7d9d: $92
	sbc  a                                           ; $7d9e: $9f
	dec  c                                           ; $7d9f: $0d
	ld   h, a                                        ; $7da0: $67
	adc  h                                           ; $7da1: $8c
	and  c                                           ; $7da2: $a1
	ld   a, b                                        ; $7da3: $78
	db   $fc                                         ; $7da4: $fc
	sbc  a                                           ; $7da5: $9f
	adc  c                                           ; $7da6: $89
	ld   a, b                                        ; $7da7: $78
	sbc  a                                           ; $7da8: $9f
	dec  c                                           ; $7da9: $0d
	nop                                              ; $7daa: $00
	ld   a, [bc]                                     ; $7dab: $0a
	dec  c                                           ; $7dac: $0d
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	rrca                                             ; $7daf: $0f
	nop                                              ; $7db0: $00
	ld   bc, $1e09                                   ; $7db1: $01 $09 $1e
	nop                                              ; $7db4: $00
	inc  e                                           ; $7db5: $1c
	dec  b                                           ; $7db6: $05
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	ld   bc, $7196                                   ; $7db9: $01 $96 $71
	sbc  [hl]                                        ; $7dbc: $9e
	ld   [$7d00], sp                                 ; $7dbd: $08 $00 $7d
	and  c                                           ; $7dc0: $a1
	sbc  a                                           ; $7dc1: $9f
	dec  c                                           ; $7dc2: $0d
	nop                                              ; $7dc3: $00
	ld   a, [bc]                                     ; $7dc4: $0a
	rrca                                             ; $7dc5: $0f
	nop                                              ; $7dc6: $00
	ld   bc, $0201                                   ; $7dc7: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dca: $cf
	dec  b                                           ; $7dcb: $05
	ld   a, [de]                                     ; $7dcc: $1a
	ld   h, e                                        ; $7dcd: $63
	and  c                                           ; $7dce: $a1
	sbc  a                                           ; $7dcf: $9f
	dec  c                                           ; $7dd0: $0d
	ld   e, b                                        ; $7dd1: $58
	inc  b                                           ; $7dd2: $04
	ld   a, e                                        ; $7dd3: $7b
	sbc  d                                           ; $7dd4: $9a
	ld   h, e                                        ; $7dd5: $63
	adc  h                                           ; $7dd6: $8c
	ld   [hl], l                                     ; $7dd7: $75
	ld   h, a                                        ; $7dd8: $67
	sbc  a                                           ; $7dd9: $9f
	dec  c                                           ; $7dda: $0d
	nop                                              ; $7ddb: $00
	ld   a, [bc]                                     ; $7ddc: $0a
	rrca                                             ; $7ddd: $0f
	dec  b                                           ; $7dde: $05
	nop                                              ; $7ddf: $00
	ld   bc, $0458                                   ; $7de0: $01 $58 $04
	ld   a, e                                        ; $7de3: $7b
	sbc  d                                           ; $7de4: $9a

Jump_05c_7de5:
	ld   h, e                                        ; $7de5: $63
	and  c                                           ; $7de6: $a1
	sbc  a                                           ; $7de7: $9f
	dec  c                                           ; $7de8: $0d
	adc  c                                           ; $7de9: $89
	ld   a, b                                        ; $7dea: $78
	sbc  a                                           ; $7deb: $9f
	dec  c                                           ; $7dec: $0d
	nop                                              ; $7ded: $00
	ld   a, [bc]                                     ; $7dee: $0a
	dec  c                                           ; $7def: $0d
	nop                                              ; $7df0: $00
	nop                                              ; $7df1: $00
	rrca                                             ; $7df2: $0f
	nop                                              ; $7df3: $00
	ld   bc, $1e09                                   ; $7df4: $01 $09 $1e
	nop                                              ; $7df7: $00
	rrca                                             ; $7df8: $0f
	nop                                              ; $7df9: $00
	ld   bc, $050d                                   ; $7dfa: $01 $0d $05
	nop                                              ; $7dfd: $00
	ld   bc, $cf02                                   ; $7dfe: $01 $02 $cf
	dec  b                                           ; $7e01: $05
	ld   a, [de]                                     ; $7e02: $1a
	ld   h, e                                        ; $7e03: $63
	and  c                                           ; $7e04: $a1
	sbc  a                                           ; $7e05: $9f
	dec  c                                           ; $7e06: $0d
	nop                                              ; $7e07: $00
	ld   a, [bc]                                     ; $7e08: $0a
	inc  e                                           ; $7e09: $1c
	dec  b                                           ; $7e0a: $05
	nop                                              ; $7e0b: $00
	nop                                              ; $7e0c: $00
	ld   bc, $7196                                   ; $7e0d: $01 $96 $71
	sbc  [hl]                                        ; $7e10: $9e
	ld   [$7d00], sp                                 ; $7e11: $08 $00 $7d
	and  c                                           ; $7e14: $a1
	sbc  a                                           ; $7e15: $9f
	dec  c                                           ; $7e16: $0d
	nop                                              ; $7e17: $00
	ld   a, [bc]                                     ; $7e18: $0a
	rrca                                             ; $7e19: $0f
	nop                                              ; $7e1a: $00
	ld   bc, $0201                                   ; $7e1b: $01 $01 $02
	and  l                                           ; $7e1e: $a5
	inc  b                                           ; $7e1f: $04
	xor  d                                           ; $7e20: $aa
	ld   a, h                                        ; $7e21: $7c
	ld   e, b                                        ; $7e22: $58
	inc  b                                           ; $7e23: $04
	xor  l                                           ; $7e24: $ad
	ld   h, d                                        ; $7e25: $62
	inc  b                                           ; $7e26: $04
	sbc  h                                           ; $7e27: $9c
	ld   a, l                                        ; $7e28: $7d
	dec  c                                           ; $7e29: $0d
	ld   e, b                                        ; $7e2a: $58
	ld   d, d                                        ; $7e2b: $52
	ld   h, l                                        ; $7e2c: $65
	ld   e, c                                        ; $7e2d: $59
	ld   [hl], c                                     ; $7e2e: $71
	ld   l, l                                        ; $7e2f: $6d
	ld   [hl], l                                     ; $7e30: $75
	ld   h, a                                        ; $7e31: $67
	ld   a, e                                        ; $7e32: $7b
	sbc  a                                           ; $7e33: $9f
	dec  c                                           ; $7e34: $0d
	nop                                              ; $7e35: $00
	ld   a, [bc]                                     ; $7e36: $0a
	rlca                                             ; $7e37: $07
	db   $eb                                         ; $7e38: $eb
	nop                                              ; $7e39: $00
	ld   [bc], a                                     ; $7e3a: $02
	nop                                              ; $7e3b: $00
	ld   bc, $2018                                   ; $7e3c: $01 $18 $20
	nop                                              ; $7e3f: $00
	rlca                                             ; $7e40: $07
	dec  d                                           ; $7e41: $15
	ld   bc, $0002                                   ; $7e42: $01 $02 $00
	ld   bc, $201a                                   ; $7e45: $01 $1a $20
	nop                                              ; $7e48: $00
	inc  e                                           ; $7e49: $1c
	dec  b                                           ; $7e4a: $05
	ld   bc, $0101                                   ; $7e4b: $01 $01 $01
	ld   l, e                                        ; $7e4e: $6b
	ld   l, e                                        ; $7e4f: $6b
	sbc  [hl]                                        ; $7e50: $9e
	halt                                             ; $7e51: $76
	ld   e, l                                        ; $7e52: $5d
	ld   a, c                                        ; $7e53: $79
	dec  c                                           ; $7e54: $0d
	ld   [bc], a                                     ; $7e55: $02
	xor  b                                           ; $7e56: $a8
	ld   l, [hl]                                     ; $7e57: $6e
	ld   e, l                                        ; $7e58: $5d
	ld   h, e                                        ; $7e59: $63
	and  c                                           ; $7e5a: $a1
	ld   a, h                                        ; $7e5b: $7c
	ld   e, a                                        ; $7e5c: $5f
	and  c                                           ; $7e5d: $a1
	ld   l, a                                        ; $7e5e: $6f
	and  c                                           ; $7e5f: $a1
	inc  bc                                          ; $7e60: $03
	ld   b, [hl]                                     ; $7e61: $46
	dec  c                                           ; $7e62: $0d
	ld   e, d                                        ; $7e63: $5a
	sbc  [hl]                                        ; $7e64: $9e
	ld   d, h                                        ; $7e65: $54
	adc  h                                           ; $7e66: $8c
	ld   e, c                                        ; $7e67: $59
	ld   [hl], c                                     ; $7e68: $71
	ld   l, l                                        ; $7e69: $6d
	ld   a, b                                        ; $7e6a: $78
	ld   d, b                                        ; $7e6b: $50
	sbc  a                                           ; $7e6c: $9f
	dec  c                                           ; $7e6d: $0d
	nop                                              ; $7e6e: $00
	ld   a, [bc]                                     ; $7e6f: $0a
	ld   b, $34                                      ; $7e70: $06 $34
	ld   bc, $051c                                   ; $7e72: $01 $1c $05
	ld   bc, $0101                                   ; $7e75: $01 $01 $01
	ld   l, e                                        ; $7e78: $6b
	ld   l, e                                        ; $7e79: $6b
	sbc  [hl]                                        ; $7e7a: $9e
	ld   d, h                                        ; $7e7b: $54
	adc  h                                           ; $7e7c: $8c
	ld   d, d                                        ; $7e7d: $52
	dec  c                                           ; $7e7e: $0d
	ld   [hl], h                                     ; $7e7f: $74
	and  c                                           ; $7e80: $a1
	add  l                                           ; $7e81: $85
	sub  a                                           ; $7e82: $97
	inc  bc                                          ; $7e83: $03
	call nc, Call_05c_6a03                           ; $7e84: $d4 $03 $6a
	sub  d                                           ; $7e87: $92
	ld   [hl], c                                     ; $7e88: $71
	ld   l, l                                        ; $7e89: $6d
	ld   a, b                                        ; $7e8a: $78
	sbc  a                                           ; $7e8b: $9f
	dec  c                                           ; $7e8c: $0d
	nop                                              ; $7e8d: $00
	ld   a, [bc]                                     ; $7e8e: $0a
	ld   b, $34                                      ; $7e8f: $06 $34
	ld   bc, $051c                                   ; $7e91: $01 $1c $05
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	ld   bc, $7889                                   ; $7e96: $01 $89 $78
	sbc  a                                           ; $7e99: $9f
	dec  c                                           ; $7e9a: $0d
	nop                                              ; $7e9b: $00
	ld   a, [bc]                                     ; $7e9c: $0a
	dec  c                                           ; $7e9d: $0d
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	rrca                                             ; $7ea0: $0f
	nop                                              ; $7ea1: $00
	ld   bc, $1e09                                   ; $7ea2: $01 $09 $1e
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	ld   [bc], a                                     ; $7ea7: $02
	ld   b, $01                                      ; $7ea8: $06 $01
	add  hl, bc                                      ; $7eaa: $09
	jr   nz, jr_05c_7ead                             ; $7eab: $20 $00

jr_05c_7ead:
	ld   c, $7b                                      ; $7ead: $0e $7b
	inc  e                                           ; $7eaf: $1c
	add  hl, bc                                      ; $7eb0: $09
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	ld   [bc], a                                     ; $7eb3: $02
	ld   bc, $5092                                   ; $7eb4: $01 $92 $50
	sbc  [hl]                                        ; $7eb7: $9e
	ld   [$5d00], sp                                 ; $7eb8: $08 $00 $5d
	and  c                                           ; $7ebb: $a1
	sbc  a                                           ; $7ebc: $9f
	dec  c                                           ; $7ebd: $0d
	ld   l, e                                        ; $7ebe: $6b
	sbc  d                                           ; $7ebf: $9a
	ld   h, [hl]                                     ; $7ec0: $66
	sub  c                                           ; $7ec1: $91
	sbc  [hl]                                        ; $7ec2: $9e
	ld   h, e                                        ; $7ec3: $63
	ld   [hl], c                                     ; $7ec4: $71
	ld   l, e                                        ; $7ec5: $6b
	ld   e, l                                        ; $7ec6: $5d
	rst  ToBoot                                         ; $7ec7: $c7
	cp   d                                           ; $7ec8: $ba
	ret                                              ; $7ec9: $c9


	and  b                                           ; $7eca: $a0
	dec  c                                           ; $7ecb: $0d
	dec  b                                           ; $7ecc: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ecd: $cf
	adc  a                                           ; $7ece: $8f
	sub  [hl]                                        ; $7ecf: $96
	ld   d, h                                        ; $7ed0: $54
	ld   e, c                                        ; $7ed1: $59
	sbc  a                                           ; $7ed2: $9f
	dec  c                                           ; $7ed3: $0d
	nop                                              ; $7ed4: $00
	ld   a, [bc]                                     ; $7ed5: $0a
	ld   bc, $3802                                   ; $7ed6: $01 $02 $38
	inc  b                                           ; $7ed9: $04
	ld   d, d                                        ; $7eda: $52
	and  b                                           ; $7edb: $a0
	inc  bc                                          ; $7edc: $03
	ld   sp, $75a1                                   ; $7edd: $31 $a1 $75
	ld   e, l                                        ; $7ee0: $5d
	sbc  d                                           ; $7ee1: $9a
	sbc  a                                           ; $7ee2: $9f
	dec  c                                           ; $7ee3: $0d
	nop                                              ; $7ee4: $00
	ld   a, [bc]                                     ; $7ee5: $0a
	dec  c                                           ; $7ee6: $0d
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	rrca                                             ; $7ee9: $0f
	nop                                              ; $7eea: $00
	ld   bc, $1c28                                   ; $7eeb: $01 $28 $1c
	add  hl, bc                                      ; $7eee: $09
	ld   [bc], a                                     ; $7eef: $02
	ld   [bc], a                                     ; $7ef0: $02
	ld   bc, $7c61                                   ; $7ef1: $01 $61 $7c
	ld   [bc], a                                     ; $7ef4: $02
	jr   c, jr_05c_7efb                              ; $7ef5: $38 $04

	ld   d, d                                        ; $7ef7: $52
	ld   [hl], l                                     ; $7ef8: $75
	ld   d, d                                        ; $7ef9: $52
	ld   d, d                                        ; $7efa: $52

jr_05c_7efb:
	and  c                                           ; $7efb: $a1
	ld   l, [hl]                                     ; $7efc: $6e
	ld   a, b                                        ; $7efd: $78
	ld   sp, hl                                      ; $7efe: $f9
	dec  c                                           ; $7eff: $0d
	nop                                              ; $7f00: $00
	ld   a, [bc]                                     ; $7f01: $0a
	jr   jr_05c_7f06                                 ; $7f02: $18 $02

	nop                                              ; $7f04: $00
	ld   a, l                                        ; $7f05: $7d

jr_05c_7f06:
	ld   d, d                                        ; $7f06: $52
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	ld   d, d                                        ; $7f09: $52
	ld   d, d                                        ; $7f0a: $52
	ld   d, [hl]                                     ; $7f0b: $56
	nop                                              ; $7f0c: $00
	ld   bc, $7307                                   ; $7f0d: $01 $07 $73
	nop                                              ; $7f10: $00
	ld   [bc], a                                     ; $7f11: $02
	ld   [bc], a                                     ; $7f12: $02
	ld   bc, $2000                                   ; $7f13: $01 $00 $20
	nop                                              ; $7f16: $00
	rlca                                             ; $7f17: $07
	add  hl, sp                                      ; $7f18: $39
	nop                                              ; $7f19: $00
	ld   [bc], a                                     ; $7f1a: $02
	ld   [bc], a                                     ; $7f1b: $02
	ld   bc, $2001                                   ; $7f1c: $01 $01 $20
	nop                                              ; $7f1f: $00
	inc  e                                           ; $7f20: $1c
	add  hl, bc                                      ; $7f21: $09
	ld   [bc], a                                     ; $7f22: $02
	ld   [bc], a                                     ; $7f23: $02
	ld   bc, $6596                                   ; $7f24: $01 $96 $65
	rst  $38                                         ; $7f27: $ff
	rst  $38                                         ; $7f28: $ff
	dec  c                                           ; $7f29: $0d
	ld   b, $a5                                      ; $7f2a: $06 $a5
	ld   b, $a6                                      ; $7f2c: $06 $a6
	inc  bc                                          ; $7f2e: $03
	xor  b                                           ; $7f2f: $a8
	dec  b                                           ; $7f30: $05
	rst  $38                                         ; $7f31: $ff
	ld   l, [hl]                                     ; $7f32: $6e
	ld   e, c                                        ; $7f33: $59
	sub  a                                           ; $7f34: $97
	halt                                             ; $7f35: $76
	ld   d, d                                        ; $7f36: $52
	ld   [hl], c                                     ; $7f37: $71
	ld   [hl], h                                     ; $7f38: $74
	sbc  [hl]                                        ; $7f39: $9e
	dec  c                                           ; $7f3a: $0d
	ld   [bc], a                                     ; $7f3b: $02
	and  c                                           ; $7f3c: $a1
	and  b                                           ; $7f3d: $a0
	inc  b                                           ; $7f3e: $04
	sub  h                                           ; $7f3f: $94
	ld   e, l                                        ; $7f40: $5d
	and  c                                           ; $7f41: $a1
	ld   h, [hl]                                     ; $7f42: $66
	sub  c                                           ; $7f43: $91
	ld   a, b                                        ; $7f44: $78
	ld   d, d                                        ; $7f45: $52
	ld   l, h                                        ; $7f46: $6c
	sbc  a                                           ; $7f47: $9f
	dec  c                                           ; $7f48: $0d
	nop                                              ; $7f49: $00
	ld   a, [bc]                                     ; $7f4a: $0a
	ld   bc, $7d75                                   ; $7f4b: $01 $75 $7d
	sbc  [hl]                                        ; $7f4e: $9e
	dec  b                                           ; $7f4f: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f50: $cf
	adc  a                                           ; $7f51: $8f
	ld   a, [$000d]                                  ; $7f52: $fa $0d $00
	ld   a, [bc]                                     ; $7f55: $0a
	dec  c                                           ; $7f56: $0d
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	rrca                                             ; $7f59: $0f
	nop                                              ; $7f5a: $00
	ld   bc, $0327                                   ; $7f5b: $01 $27 $03
	rlca                                             ; $7f5e: $07
	cp   d                                           ; $7f5f: $ba
	nop                                              ; $7f60: $00
	ld   [bc], a                                     ; $7f61: $02
	inc  b                                           ; $7f62: $04
	nop                                              ; $7f63: $00
	ld   b, $7b                                      ; $7f64: $06 $7b
	ld   bc, $091c                                   ; $7f66: $01 $1c $09
	ld   bc, $0501                                   ; $7f69: $01 $01 $05
	ld   b, b                                        ; $7f6c: $40
	ld   d, l                                        ; $7f6d: $55
	inc  bc                                          ; $7f6e: $03
	ld   d, l                                        ; $7f6f: $55
	ld   bc, $2801                                   ; $7f70: $01 $01 $28
	nop                                              ; $7f73: $00
	ld   bc, $7192                                   ; $7f74: $01 $92 $71
	ld   l, l                                        ; $7f77: $6d
	ld   a, b                                        ; $7f78: $78
	sbc  [hl]                                        ; $7f79: $9e
	ld   [$5d00], sp                                 ; $7f7a: $08 $00 $5d
	and  c                                           ; $7f7d: $a1
	sbc  a                                           ; $7f7e: $9f
	dec  c                                           ; $7f7f: $0d
	ld   a, b                                        ; $7f80: $78
	ld   e, c                                        ; $7f81: $59
	ld   a, b                                        ; $7f82: $78
	ld   e, c                                        ; $7f83: $59
	ld   a, h                                        ; $7f84: $7c
	inc  bc                                          ; $7f85: $03
	xor  b                                           ; $7f86: $a8
	ld   d, d                                        ; $7f87: $52
	add  h                                           ; $7f88: $84
	sbc  b                                           ; $7f89: $98
	ld   l, [hl]                                     ; $7f8a: $6e
	ld   [hl], c                                     ; $7f8b: $71
	ld   l, l                                        ; $7f8c: $6d
	ld   l, h                                        ; $7f8d: $6c
	sbc  a                                           ; $7f8e: $9f
	dec  c                                           ; $7f8f: $0d
	nop                                              ; $7f90: $00
	ld   a, [bc]                                     ; $7f91: $0a
	ld   bc, $7c61                                   ; $7f92: $01 $61 $7c
	ld   [bc], a                                     ; $7f95: $02
	jp   $9e7d                                       ; $7f96: $c3 $7d $9e


	inc  b                                           ; $7f99: $04
	rst  $10                                         ; $7f9a: $d7
	inc  b                                           ; $7f9b: $04
	ld   hl, $0b04                                   ; $7f9c: $21 $04 $0b
	inc  bc                                          ; $7f9f: $03
	ld   h, h                                        ; $7fa0: $64
	ld   a, c                                        ; $7fa1: $79
	sub  b                                           ; $7fa2: $90
	dec  c                                           ; $7fa3: $0d
	inc  b                                           ; $7fa4: $04
	ld   l, a                                        ; $7fa5: $6f
	ld   [bc], a                                     ; $7fa6: $02
	ld   [hl], h                                     ; $7fa7: $74
	ld   h, l                                        ; $7fa8: $65
	ld   [hl], h                                     ; $7fa9: $74
	ld   e, b                                        ; $7faa: $58
	ld   e, l                                        ; $7fab: $5d
	sub  [hl]                                        ; $7fac: $96
	sbc  a                                           ; $7fad: $9f
	dec  c                                           ; $7fae: $0d
	nop                                              ; $7faf: $00
	ld   a, [bc]                                     ; $7fb0: $0a
	rrca                                             ; $7fb1: $0f
	nop                                              ; $7fb2: $00
	ld   bc, $0401                                   ; $7fb3: $01 $01 $04
	ld   c, $03                                      ; $7fb6: $0e $03
	sub  b                                           ; $7fb8: $90
	ld   h, e                                        ; $7fb9: $63
	and  c                                           ; $7fba: $a1
	rst  $38                                         ; $7fbb: $ff
	rst  $38                                         ; $7fbc: $ff
	dec  c                                           ; $7fbd: $0d
	ld   d, b                                        ; $7fbe: $50
	sbc  b                                           ; $7fbf: $98
	ld   e, d                                        ; $7fc0: $5a
	halt                                             ; $7fc1: $76
	ld   d, h                                        ; $7fc2: $54
	ld   h, d                                        ; $7fc3: $62
	ld   h, h                                        ; $7fc4: $64
	ld   d, d                                        ; $7fc5: $52
	adc  h                                           ; $7fc6: $8c
	ld   h, l                                        ; $7fc7: $65
	ld   l, l                                        ; $7fc8: $6d
	ld   a, [$0dfa]                                  ; $7fc9: $fa $fa $0d
	nop                                              ; $7fcc: $00
	ld   a, [bc]                                     ; $7fcd: $0a
	rrca                                             ; $7fce: $0f
	add  hl, bc                                      ; $7fcf: $09
	ld   bc, $5401                                   ; $7fd0: $01 $01 $54
	and  c                                           ; $7fd3: $a1
	sbc  [hl]                                        ; $7fd4: $9e
	ld   l, e                                        ; $7fd5: $6b
	sbc  d                                           ; $7fd6: $9a
	ld   h, [hl]                                     ; $7fd7: $66
	sub  c                                           ; $7fd8: $91
	sbc  [hl]                                        ; $7fd9: $9e
	dec  c                                           ; $7fda: $0d
	dec  b                                           ; $7fdb: $05
	db   $10                                         ; $7fdc: $10
	inc  bc                                          ; $7fdd: $03
	ld   a, c                                        ; $7fde: $79
	sub  b                                           ; $7fdf: $90
	ld   e, d                                        ; $7fe0: $5a
	and  c                                           ; $7fe1: $a1
	ld   a, [hl]                                     ; $7fe2: $7e
	ld   [hl], c                                     ; $7fe3: $71
	ld   [hl], h                                     ; $7fe4: $74
	ld   a, b                                        ; $7fe5: $78
	sbc  a                                           ; $7fe6: $9f
	dec  c                                           ; $7fe7: $0d
	nop                                              ; $7fe8: $00
	ld   a, [bc]                                     ; $7fe9: $0a
	dec  c                                           ; $7fea: $0d
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	rrca                                             ; $7fed: $0f
	nop                                              ; $7fee: $00
	ld   bc, $1e09                                   ; $7fef: $01 $09 $1e
	rlca                                             ; $7ff2: $07
	db   $f4                                         ; $7ff3: $f4
	ld   bc, $0702                                   ; $7ff4: $01 $02 $07
	ld   bc, $2001                                   ; $7ff7: $01 $01 $20
	nop                                              ; $7ffa: $00
	rlca                                             ; $7ffb: $07
	sub  e                                           ; $7ffc: $93
	dec  b                                           ; $7ffd: $05
	ld   [bc], a                                     ; $7ffe: $02
	rlca                                             ; $7fff: $07
