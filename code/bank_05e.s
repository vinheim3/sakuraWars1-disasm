; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05e", ROMX[$4000], BANK[$5e]

	adc  h                                           ; $4000: $8c
	ld   h, l                                        ; $4001: $65
	ld   l, l                                        ; $4002: $6d
	halt                                             ; $4003: $76
	ld   h, e                                        ; $4004: $63
	sbc  a                                           ; $4005: $9f
	dec  c                                           ; $4006: $0d
	nop                                              ; $4007: $00
	ld   a, [bc]                                     ; $4008: $0a
	dec  b                                           ; $4009: $05
	ld   b, b                                        ; $400a: $40
	rst  $38                                         ; $400b: $ff
	inc  bc                                          ; $400c: $03
	rst  $38                                         ; $400d: $ff
	ld   bc, $2802                                   ; $400e: $01 $02 $28
	nop                                              ; $4011: $00
	ld   b, $e9                                      ; $4012: $06 $e9
	inc  b                                           ; $4014: $04
	rrca                                             ; $4015: $0f
	nop                                              ; $4016: $00
	ld   bc, $5801                                   ; $4017: $01 $01 $58
	ld   h, l                                        ; $401a: $65
	adc  h                                           ; $401b: $8c
	ld   d, d                                        ; $401c: $52
	sbc  a                                           ; $401d: $9f
	dec  c                                           ; $401e: $0d
	nop                                              ; $401f: $00
	ld   a, [bc]                                     ; $4020: $0a
	rlca                                             ; $4021: $07
	ld   a, $05                                      ; $4022: $3e $05
	inc  bc                                          ; $4024: $03
	rst  $38                                         ; $4025: $ff
	ld   bc, $2501                                   ; $4026: $01 $01 $25
	inc  bc                                          ; $4029: $03
	rst  $38                                         ; $402a: $ff
	ld   bc, $2307                                   ; $402b: $01 $07 $23
	inc  e                                           ; $402e: $1c
	nop                                              ; $402f: $00
	rlca                                             ; $4030: $07
	ld   h, a                                        ; $4031: $67
	dec  b                                           ; $4032: $05
	inc  bc                                          ; $4033: $03
	rst  $38                                         ; $4034: $ff
	ld   bc, $2201                                   ; $4035: $01 $01 $22
	nop                                              ; $4038: $00
	inc  e                                           ; $4039: $1c
	inc  b                                           ; $403a: $04
	ld   bc, $1d01                                   ; $403b: $01 $01 $1d
	ld   b, b                                        ; $403e: $40
	inc  d                                           ; $403f: $14
	inc  bc                                          ; $4040: $03
	inc  d                                           ; $4041: $14
	ld   bc, $2803                                   ; $4042: $01 $03 $28
	nop                                              ; $4045: $00
	ld   bc, $6267                                   ; $4046: $01 $67 $62
	ld   e, l                                        ; $4049: $5d
	ld   e, b                                        ; $404a: $58
	sub  b                                           ; $404b: $90
	ld   h, l                                        ; $404c: $65
	sbc  e                                           ; $404d: $9b
	ld   e, c                                        ; $404e: $59
	ld   [hl], c                                     ; $404f: $71
	ld   l, l                                        ; $4050: $6d
	sub  [hl]                                        ; $4051: $96
	dec  c                                           ; $4052: $0d
	ld   l, a                                        ; $4053: $6f
	ld   d, d                                        ; $4054: $52
	ld   [bc], a                                     ; $4055: $02
	inc  de                                          ; $4056: $13
	ld   l, a                                        ; $4057: $6f
	sub  c                                           ; $4058: $91
	and  c                                           ; $4059: $a1
	ld   a, [$8c0d]                                  ; $405a: $fa $0d $8c
	ld   l, l                                        ; $405d: $6d
	ld   e, b                                        ; $405e: $58
	ld   a, l                                        ; $405f: $7d
	ld   a, b                                        ; $4060: $78
	ld   h, l                                        ; $4061: $65
	ld   h, l                                        ; $4062: $65
	ld   [hl], h                                     ; $4063: $74
	ld   a, e                                        ; $4064: $7b
	sbc  a                                           ; $4065: $9f
	dec  c                                           ; $4066: $0d
	nop                                              ; $4067: $00
	ld   a, [bc]                                     ; $4068: $0a
	nop                                              ; $4069: $00
	inc  e                                           ; $406a: $1c
	inc  b                                           ; $406b: $04
	ld   bc, $1d01                                   ; $406c: $01 $01 $1d
	ld   b, b                                        ; $406f: $40
	inc  d                                           ; $4070: $14
	inc  bc                                          ; $4071: $03
	inc  d                                           ; $4072: $14
	ld   bc, $2801                                   ; $4073: $01 $01 $28
	nop                                              ; $4076: $00
	ld   bc, $9058                                   ; $4077: $01 $58 $90
	ld   h, l                                        ; $407a: $65
	sbc  e                                           ; $407b: $9b
	ld   e, c                                        ; $407c: $59
	ld   [hl], c                                     ; $407d: $71
	ld   l, l                                        ; $407e: $6d
	sbc  a                                           ; $407f: $9f
	dec  c                                           ; $4080: $0d
	ld   d, b                                        ; $4081: $50
	sbc  b                                           ; $4082: $98
	ld   e, d                                        ; $4083: $5a
	halt                                             ; $4084: $76
	ld   d, h                                        ; $4085: $54
	sbc  [hl]                                        ; $4086: $9e
	ld   l, a                                        ; $4087: $6f
	ld   d, d                                        ; $4088: $52
	ld   [bc], a                                     ; $4089: $02
	inc  de                                          ; $408a: $13
	ld   l, a                                        ; $408b: $6f
	sub  c                                           ; $408c: $91
	and  c                                           ; $408d: $a1
	sbc  a                                           ; $408e: $9f
	dec  c                                           ; $408f: $0d
	nop                                              ; $4090: $00
	ld   a, [bc]                                     ; $4091: $0a
	nop                                              ; $4092: $00
	inc  e                                           ; $4093: $1c
	inc  b                                           ; $4094: $04
	inc  bc                                          ; $4095: $03
	inc  bc                                          ; $4096: $03
	dec  e                                           ; $4097: $1d
	ld   b, b                                        ; $4098: $40
	inc  d                                           ; $4099: $14
	inc  bc                                          ; $409a: $03
	inc  d                                           ; $409b: $14
	ld   bc, $2901                                   ; $409c: $01 $01 $29
	nop                                              ; $409f: $00
	ld   bc, $a178                                   ; $40a0: $01 $78 $a1
	ld   e, c                                        ; $40a3: $59
	add  e                                           ; $40a4: $83
	ld   [hl], d                                     ; $40a5: $72
	ld   d, h                                        ; $40a6: $54
	ld   a, h                                        ; $40a7: $7c
	ld   e, b                                        ; $40a8: $58
	ld   a, l                                        ; $40a9: $7d
	ld   a, b                                        ; $40aa: $78
	ld   h, l                                        ; $40ab: $65
	dec  c                                           ; $40ac: $0d
	ld   l, [hl]                                     ; $40ad: $6e
	ld   [hl], c                                     ; $40ae: $71
	ld   l, l                                        ; $40af: $6d
	ld   a, e                                        ; $40b0: $7b
	rst  $38                                         ; $40b1: $ff
	rst  $38                                         ; $40b2: $ff
	dec  c                                           ; $40b3: $0d
	ld   [hl], l                                     ; $40b4: $75
	sub  b                                           ; $40b5: $90
	sbc  [hl]                                        ; $40b6: $9e
	ld   d, b                                        ; $40b7: $50
	sbc  b                                           ; $40b8: $98
	ld   e, d                                        ; $40b9: $5a
	halt                                             ; $40ba: $76
	ld   d, h                                        ; $40bb: $54
	sbc  a                                           ; $40bc: $9f
	dec  c                                           ; $40bd: $0d
	nop                                              ; $40be: $00
	ld   a, [bc]                                     ; $40bf: $0a
	rrca                                             ; $40c0: $0f
	nop                                              ; $40c1: $00
	ld   bc, $0101                                   ; $40c2: $01 $01 $01
	inc  bc                                          ; $40c5: $03
	ld   [bc], a                                     ; $40c6: $02
	and  l                                           ; $40c7: $a5
	ld   a, h                                        ; $40c8: $7c
	inc  bc                                          ; $40c9: $03
	add  [hl]                                        ; $40ca: $86
	ld   a, c                                        ; $40cb: $79
	ld   a, l                                        ; $40cc: $7d
	sbc  [hl]                                        ; $40cd: $9e
	inc  bc                                          ; $40ce: $03
	ld   l, $03                                      ; $40cf: $2e $03
	pop  hl                                          ; $40d1: $e1
	ld   a, h                                        ; $40d2: $7c
	inc  b                                           ; $40d3: $04
	rlc  l                                           ; $40d4: $cb $05
	jr   nz, jr_05e_4155                             ; $40d6: $20 $7d

	dec  c                                           ; $40d8: $0d
	db   $10                                         ; $40d9: $10
	inc  b                                           ; $40da: $04
	ret  c                                           ; $40db: $d8

	inc  b                                           ; $40dc: $04
	xor  h                                           ; $40dd: $ac
	ld   e, l                                        ; $40de: $5d
	ld   a, b                                        ; $40df: $78
	ld   d, d                                        ; $40e0: $52
	ld   a, h                                        ; $40e1: $7c
	ld   e, c                                        ; $40e2: $59
	ld   a, b                                        ; $40e3: $78
	rst  $38                                         ; $40e4: $ff
	rst  $38                                         ; $40e5: $ff
	ld   bc, $0d04                                   ; $40e6: $01 $04 $0d
	nop                                              ; $40e9: $00
	ld   a, [bc]                                     ; $40ea: $0a
	nop                                              ; $40eb: $00
	nop                                              ; $40ec: $00
	ld   d, $06                                      ; $40ed: $16 $06
	rrca                                             ; $40ef: $0f
	nop                                              ; $40f0: $00
	ld   bc, $0102                                   ; $40f1: $01 $02 $01
	rst  $38                                         ; $40f4: $ff
	rst  $38                                         ; $40f5: $ff
	rst  $38                                         ; $40f6: $ff
	rst  $38                                         ; $40f7: $ff
	rst  $38                                         ; $40f8: $ff
	rst  $38                                         ; $40f9: $ff
	dec  c                                           ; $40fa: $0d
	nop                                              ; $40fb: $00
	ld   a, [bc]                                     ; $40fc: $0a
	ld   bc, $0301                                   ; $40fd: $01 $01 $03
	ld   e, b                                        ; $4100: $58
	ld   e, b                                        ; $4101: $58
	ld   a, [$0210]                                  ; $4102: $fa $10 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4105: $cf
	dec  b                                           ; $4106: $05
	ld   a, [de]                                     ; $4107: $1a
	ld   h, e                                        ; $4108: $63
	and  c                                           ; $4109: $a1
	ld   l, [hl]                                     ; $410a: $6e
	ld   a, [$01fa]                                  ; $410b: $fa $fa $01
	inc  b                                           ; $410e: $04
	dec  c                                           ; $410f: $0d
	nop                                              ; $4110: $00
	ld   a, [bc]                                     ; $4111: $0a
	add  hl, de                                      ; $4112: $19
	dec  b                                           ; $4113: $05
	ld   [bc], a                                     ; $4114: $02
	ld   [bc], a                                     ; $4115: $02
	and  b                                           ; $4116: $a0
	ld   [hl], e                                     ; $4117: $73
	ld   e, l                                        ; $4118: $5d
	nop                                              ; $4119: $00
	nop                                              ; $411a: $00
	dec  b                                           ; $411b: $05
	ld   d, $6f                                      ; $411c: $16 $6f
	ld   [bc], a                                     ; $411e: $02
	ld   d, e                                        ; $411f: $53
	sbc  c                                           ; $4120: $99
	nop                                              ; $4121: $00
	ld   bc, $9d07                                   ; $4122: $01 $07 $9d
	nop                                              ; $4125: $00
	ld   [bc], a                                     ; $4126: $02
	inc  bc                                          ; $4127: $03
	ld   bc, $2000                                   ; $4128: $01 $00 $20
	nop                                              ; $412b: $00
	rlca                                             ; $412c: $07
	ld   c, e                                        ; $412d: $4b
	nop                                              ; $412e: $00
	ld   [bc], a                                     ; $412f: $02
	inc  bc                                          ; $4130: $03
	ld   bc, $2001                                   ; $4131: $01 $01 $20
	nop                                              ; $4134: $00
	ld   b, $72                                      ; $4135: $06 $72
	nop                                              ; $4137: $00
	rrca                                             ; $4138: $0f
	nop                                              ; $4139: $00
	ld   bc, $0101                                   ; $413a: $01 $01 $01
	inc  bc                                          ; $413d: $03
	sub  d                                           ; $413e: $92
	ld   [hl], c                                     ; $413f: $71
	ld   a, a                                        ; $4140: $7f
	sbc  b                                           ; $4141: $98
	sbc  [hl]                                        ; $4142: $9e
	ld   a, h                                        ; $4143: $7c
	ld   l, h                                        ; $4144: $6c
	ld   e, e                                        ; $4145: $5b
	ld   a, l                                        ; $4146: $7d
	pop  bc                                          ; $4147: $c1
	db   $e3                                         ; $4148: $e3
	ld   l, [hl]                                     ; $4149: $6e
	sub  [hl]                                        ; $414a: $96
	dec  c                                           ; $414b: $0d
	db   $10                                         ; $414c: $10
	ld   h, c                                        ; $414d: $61
	ld   h, c                                        ; $414e: $61
	ld   a, l                                        ; $414f: $7d
	ld   d, d                                        ; $4150: $52
	ld   h, e                                        ; $4151: $63
	ld   e, h                                        ; $4152: $5c
	sub  [hl]                                        ; $4153: $96
	ld   e, l                                        ; $4154: $5d

jr_05e_4155:
	ld   [bc], a                                     ; $4155: $02
	ld   d, e                                        ; $4156: $53
	sbc  e                                           ; $4157: $9b
	ld   d, h                                        ; $4158: $54
	ld   bc, $0d04                                   ; $4159: $01 $04 $0d
	nop                                              ; $415c: $00
	ld   a, [bc]                                     ; $415d: $0a
	nop                                              ; $415e: $00
	rrca                                             ; $415f: $0f
	dec  b                                           ; $4160: $05
	ld   de, $0301                                   ; $4161: $11 $01 $03
	xor  c                                           ; $4164: $a9
	ld   e, c                                        ; $4165: $59
	ld   l, e                                        ; $4166: $6b
	ld   h, c                                        ; $4167: $61
	ld   a, c                                        ; $4168: $79
	sbc  [hl]                                        ; $4169: $9e
	ld   d, d                                        ; $416a: $52
	ld   [hl], h                                     ; $416b: $74
	sbc  c                                           ; $416c: $99
	and  c                                           ; $416d: $a1
	ld   e, c                                        ; $416e: $59
	ld   sp, hl                                      ; $416f: $f9
	dec  c                                           ; $4170: $0d
	nop                                              ; $4171: $00
	ld   a, [bc]                                     ; $4172: $0a
	rrca                                             ; $4173: $0f
	nop                                              ; $4174: $00
	ld   bc, $0101                                   ; $4175: $01 $01 $01
	inc  bc                                          ; $4178: $03
	adc  h                                           ; $4179: $8c
	ld   l, b                                        ; $417a: $68
	ld   d, d                                        ; $417b: $52
	rst  $38                                         ; $417c: $ff
	rst  $38                                         ; $417d: $ff
	inc  bc                                          ; $417e: $03
	push de                                          ; $417f: $d5
	ld   h, b                                        ; $4180: $60
	sub  [hl]                                        ; $4181: $96
	ld   d, h                                        ; $4182: $54
	ld   a, [$0401]                                  ; $4183: $fa $01 $04
	dec  c                                           ; $4186: $0d
	nop                                              ; $4187: $00
	ld   a, [bc]                                     ; $4188: $0a
	nop                                              ; $4189: $00
	rrca                                             ; $418a: $0f
	nop                                              ; $418b: $00
	ld   bc, $0101                                   ; $418c: $01 $01 $01
	inc  bc                                          ; $418f: $03
	sub  b                                           ; $4190: $90
	ld   d, h                                        ; $4191: $54
	inc  bc                                          ; $4192: $03
	ld   l, h                                        ; $4193: $6c
	ld   h, l                                        ; $4194: $65
	ld   [bc], a                                     ; $4195: $02
	and  b                                           ; $4196: $a0
	ld   [hl], e                                     ; $4197: $73
	ld   d, d                                        ; $4198: $52
	ld   [hl], h                                     ; $4199: $74
	adc  l                                           ; $419a: $8d
	sub  [hl]                                        ; $419b: $96
	ld   d, h                                        ; $419c: $54
	ld   bc, $0d04                                   ; $419d: $01 $04 $0d
	nop                                              ; $41a0: $00
	ld   a, [bc]                                     ; $41a1: $0a
	rlca                                             ; $41a2: $07
	ld   [$0301], sp                                 ; $41a3: $08 $01 $03
	dec  d                                           ; $41a6: $15
	ld   bc, $2296                                   ; $41a7: $01 $96 $22
	nop                                              ; $41aa: $00
	rrca                                             ; $41ab: $0f
	dec  b                                           ; $41ac: $05
	ld   [de], a                                     ; $41ad: $12
	ld   bc, $fc50                                   ; $41ae: $01 $50 $fc
	cp   b                                           ; $41b1: $b8
	push hl                                          ; $41b2: $e5
	pop  af                                          ; $41b3: $f1
	ei                                               ; $41b4: $fb
	ld   a, l                                        ; $41b5: $7d
	dec  c                                           ; $41b6: $0d
	ld   [bc], a                                     ; $41b7: $02
	and  c                                           ; $41b8: $a1
	inc  bc                                          ; $41b9: $03
	and  b                                           ; $41ba: $a0
	ld   l, a                                        ; $41bb: $6f
	xor  c                                           ; $41bc: $a9
	xor  c                                           ; $41bd: $a9
	ld   a, b                                        ; $41be: $78
	db   $fc                                         ; $41bf: $fc
	sbc  a                                           ; $41c0: $9f
	dec  c                                           ; $41c1: $0d
	nop                                              ; $41c2: $00
	ld   a, [bc]                                     ; $41c3: $0a
	add  hl, de                                      ; $41c4: $19
	dec  b                                           ; $41c5: $05
	ld   bc, $c004                                   ; $41c6: $01 $04 $c0
	inc  bc                                          ; $41c9: $03
	ld   a, l                                        ; $41ca: $7d
	ld   h, l                                        ; $41cb: $65
	ld   l, l                                        ; $41cc: $6d
	nop                                              ; $41cd: $00
	nop                                              ; $41ce: $00
	rlca                                             ; $41cf: $07
	xor  $00                                         ; $41d0: $ee $00
	ld   [bc], a                                     ; $41d2: $02
	inc  bc                                          ; $41d3: $03
	ld   bc, $2000                                   ; $41d4: $01 $00 $20
	nop                                              ; $41d7: $00
	ld   b, $08                                      ; $41d8: $06 $08
	ld   bc, $000f                                   ; $41da: $01 $0f $00
	ld   bc, $0101                                   ; $41dd: $01 $01 $01
	inc  bc                                          ; $41e0: $03
	ld   l, e                                        ; $41e1: $6b
	sbc  e                                           ; $41e2: $9b
	ld   l, e                                        ; $41e3: $6b
	sbc  e                                           ; $41e4: $9b
	ld   [bc], a                                     ; $41e5: $02
	inc  l                                           ; $41e6: $2c
	ld   e, e                                        ; $41e7: $5b
	inc  bc                                          ; $41e8: $03
	ld   h, l                                        ; $41e9: $65
	ld   h, b                                        ; $41ea: $60
	sub  [hl]                                        ; $41eb: $96
	ld   d, h                                        ; $41ec: $54
	rst  $38                                         ; $41ed: $ff
	rst  $38                                         ; $41ee: $ff
	ld   bc, $0d04                                   ; $41ef: $01 $04 $0d
	nop                                              ; $41f2: $00
	ld   a, [bc]                                     ; $41f3: $0a
	nop                                              ; $41f4: $00
	rrca                                             ; $41f5: $0f
	dec  b                                           ; $41f6: $05
	jr   jr_05e_41fa                                 ; $41f7: $18 $01

	rst  $38                                         ; $41f9: $ff

jr_05e_41fa:
	rst  $38                                         ; $41fa: $ff
	ld   a, [$030d]                                  ; $41fb: $fa $0d $03
	xor  c                                           ; $41fe: $a9
	sub  d                                           ; $41ff: $92
	ld   a, [$6b10]                                  ; $4200: $fa $10 $6b
	ld   h, c                                        ; $4203: $61
	ld   a, c                                        ; $4204: $79
	ld   e, b                                        ; $4205: $58
	and  c                                           ; $4206: $a1
	ld   a, h                                        ; $4207: $7c
	ld   a, l                                        ; $4208: $7d
	ld   a, [$000d]                                  ; $4209: $fa $0d $00
	ld   a, [bc]                                     ; $420c: $0a
	rrca                                             ; $420d: $0f
	nop                                              ; $420e: $00
	ld   bc, $0101                                   ; $420f: $01 $01 $01
	inc  bc                                          ; $4212: $03
	ld   [bc], a                                     ; $4213: $02
	and  c                                           ; $4214: $a1
	ld   [hl], e                                     ; $4215: $73
	ld   e, c                                        ; $4216: $59
	sbc  d                                           ; $4217: $9a
	ld   l, l                                        ; $4218: $6d
	ld   a, [$0401]                                  ; $4219: $fa $01 $04
	dec  c                                           ; $421c: $0d
	nop                                              ; $421d: $00
	ld   a, [bc]                                     ; $421e: $0a
	add  hl, de                                      ; $421f: $19
	dec  b                                           ; $4220: $05
	inc  bc                                          ; $4221: $03
	inc  bc                                          ; $4222: $03
	db   $db                                         ; $4223: $db
	ld   bc, $7614                                   ; $4224: $01 $14 $76
	ld   h, a                                        ; $4227: $67
	sbc  c                                           ; $4228: $99
	nop                                              ; $4229: $00
	nop                                              ; $422a: $00
	sub  b                                           ; $422b: $90
	ld   a, h                                        ; $422c: $7c
	adc  h                                           ; $422d: $8c
	ld   a, e                                        ; $422e: $7b
	and  b                                           ; $422f: $a0
	ld   h, a                                        ; $4230: $67
	sbc  c                                           ; $4231: $99
	nop                                              ; $4232: $00
	ld   bc, $d503                                   ; $4233: $01 $03 $d5
	ld   h, b                                        ; $4236: $60
	inc  bc                                          ; $4237: $03
	add  b                                           ; $4238: $80
	ld   h, a                                        ; $4239: $67
	nop                                              ; $423a: $00
	ld   [bc], a                                     ; $423b: $02
	rlca                                             ; $423c: $07
	ld   l, l                                        ; $423d: $6d
	ld   bc, $0302                                   ; $423e: $01 $02 $03
	ld   bc, $2000                                   ; $4241: $01 $00 $20
	nop                                              ; $4244: $00
	rlca                                             ; $4245: $07
	or   $01                                         ; $4246: $f6 $01
	ld   [bc], a                                     ; $4248: $02
	inc  bc                                          ; $4249: $03
	ld   bc, $2001                                   ; $424a: $01 $01 $20
	nop                                              ; $424d: $00
	rlca                                             ; $424e: $07
	ld   h, h                                        ; $424f: $64
	ld   [bc], a                                     ; $4250: $02
	ld   [bc], a                                     ; $4251: $02
	inc  bc                                          ; $4252: $03
	ld   bc, $2002                                   ; $4253: $01 $02 $20
	nop                                              ; $4256: $00
	ld   b, $b6                                      ; $4257: $06 $b6
	ld   [bc], a                                     ; $4259: $02
	rrca                                             ; $425a: $0f
	nop                                              ; $425b: $00
	ld   bc, $0101                                   ; $425c: $01 $01 $01
	inc  bc                                          ; $425f: $03
	ld   h, c                                        ; $4260: $61
	ld   h, c                                        ; $4261: $61
	ld   a, l                                        ; $4262: $7d
	inc  bc                                          ; $4263: $03
	db   $db                                         ; $4264: $db
	ld   bc, $7614                                   ; $4265: $01 $14 $76
	rst  $38                                         ; $4268: $ff
	rst  $38                                         ; $4269: $ff
	ld   bc, $0d04                                   ; $426a: $01 $04 $0d
	nop                                              ; $426d: $00
	ld   a, [bc]                                     ; $426e: $0a
	ld   bc, $9e50                                   ; $426f: $01 $50 $9e
	ld   h, a                                        ; $4272: $67
	adc  l                                           ; $4273: $8d
	adc  h                                           ; $4274: $8c
	ld   l, c                                        ; $4275: $69
	and  c                                           ; $4276: $a1
	rst  $38                                         ; $4277: $ff
	rst  $38                                         ; $4278: $ff
	dec  c                                           ; $4279: $0d
	ld   [hl], a                                     ; $427a: $77
	ld   a, b                                        ; $427b: $78
	ld   l, l                                        ; $427c: $6d
	ld   e, c                                        ; $427d: $59
	inc  b                                           ; $427e: $04
	ld   b, l                                        ; $427f: $45
	ld   [hl], c                                     ; $4280: $71
	ld   [hl], h                                     ; $4281: $74
	sub  a                                           ; $4282: $97
	ld   [hl], c                                     ; $4283: $71
	ld   h, l                                        ; $4284: $65
	sub  c                                           ; $4285: $91
	sbc  c                                           ; $4286: $99
	dec  c                                           ; $4287: $0d
	ld   a, h                                        ; $4288: $7c
	ld   [hl], l                                     ; $4289: $75
	ld   h, a                                        ; $428a: $67
	ld   a, e                                        ; $428b: $7b
	ld   sp, hl                                      ; $428c: $f9
	dec  c                                           ; $428d: $0d
	nop                                              ; $428e: $00
	ld   a, [bc]                                     ; $428f: $0a
	rrca                                             ; $4290: $0f
	dec  b                                           ; $4291: $05
	ld   de, $5001                                   ; $4292: $11 $01 $50
	sbc  [hl]                                        ; $4295: $9e
	ld   [$7d00], sp                                 ; $4296: $08 $00 $7d
	and  c                                           ; $4299: $a1
	ld   sp, hl                                      ; $429a: $f9
	dec  c                                           ; $429b: $0d
	ld   [bc], a                                     ; $429c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $429d: $cf
	dec  b                                           ; $429e: $05
	ld   a, [de]                                     ; $429f: $1a
	sub  d                                           ; $42a0: $92
	sbc  a                                           ; $42a1: $9f
	dec  c                                           ; $42a2: $0d
	nop                                              ; $42a3: $00
	ld   a, [bc]                                     ; $42a4: $0a
	rrca                                             ; $42a5: $0f
	nop                                              ; $42a6: $00
	ld   bc, $0201                                   ; $42a7: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42aa: $cf
	dec  b                                           ; $42ab: $05
	ld   a, [de]                                     ; $42ac: $1a
	ld   h, e                                        ; $42ad: $63
	and  c                                           ; $42ae: $a1
	ld   [hl], l                                     ; $42af: $75
	ld   h, l                                        ; $42b0: $65
	ld   l, l                                        ; $42b1: $6d
	ld   e, c                                        ; $42b2: $59
	rst  $38                                         ; $42b3: $ff
	rst  $38                                         ; $42b4: $ff
	dec  c                                           ; $42b5: $0d
	ld   h, c                                        ; $42b6: $61
	sbc  d                                           ; $42b7: $9a
	ld   a, l                                        ; $42b8: $7d
	inc  bc                                          ; $42b9: $03
	add  e                                           ; $42ba: $83
	dec  b                                           ; $42bb: $05
	dec  c                                           ; $42bc: $0d
	ld   h, l                                        ; $42bd: $65
	adc  h                                           ; $42be: $8c
	ld   h, l                                        ; $42bf: $65
	ld   l, l                                        ; $42c0: $6d
	sbc  a                                           ; $42c1: $9f
	dec  c                                           ; $42c2: $0d
	nop                                              ; $42c3: $00
	ld   a, [bc]                                     ; $42c4: $0a
	rrca                                             ; $42c5: $0f
	dec  b                                           ; $42c6: $05
	ld   [de], a                                     ; $42c7: $12
	ld   bc, $5252                                   ; $42c8: $01 $52 $52
	ld   d, [hl]                                     ; $42cb: $56
	sbc  a                                           ; $42cc: $9f
	dec  c                                           ; $42cd: $0d
	nop                                              ; $42ce: $00
	ld   a, [bc]                                     ; $42cf: $0a
	rrca                                             ; $42d0: $0f
	nop                                              ; $42d1: $00
	ld   bc, $0101                                   ; $42d2: $01 $01 $01
	inc  bc                                          ; $42d5: $03
	inc  bc                                          ; $42d6: $03
	ld   e, e                                        ; $42d7: $5b
	ld   e, c                                        ; $42d8: $59
	ld   [hl], c                                     ; $42d9: $71
	ld   l, l                                        ; $42da: $6d
	rst  $38                                         ; $42db: $ff
	rst  $38                                         ; $42dc: $ff
	ld   bc, $0d04                                   ; $42dd: $01 $04 $0d
	nop                                              ; $42e0: $00
	ld   a, [bc]                                     ; $42e1: $0a
	nop                                              ; $42e2: $00
	rrca                                             ; $42e3: $0f
	nop                                              ; $42e4: $00
	ld   bc, $0101                                   ; $42e5: $01 $01 $01
	inc  bc                                          ; $42e8: $03
	ld   h, c                                        ; $42e9: $61
	ld   d, h                                        ; $42ea: $54
	ld   a, b                                        ; $42eb: $78
	ld   [hl], c                                     ; $42ec: $71
	ld   l, l                                        ; $42ed: $6d
	sub  a                                           ; $42ee: $97
	rst  $38                                         ; $42ef: $ff
	rst  $38                                         ; $42f0: $ff
	ld   bc, $0d04                                   ; $42f1: $01 $04 $0d
	nop                                              ; $42f4: $00
	ld   a, [bc]                                     ; $42f5: $0a
	ld   bc, $e7c2                                   ; $42f6: $01 $c2 $e7
	ei                                               ; $42f9: $fb
	jp   nz, $fbe7                                   ; $42fa: $c2 $e7 $fb

	dec  c                                           ; $42fd: $0d
	nop                                              ; $42fe: $00
	ld   a, [bc]                                     ; $42ff: $0a
	rrca                                             ; $4300: $0f
	dec  b                                           ; $4301: $05
	ld   [de], a                                     ; $4302: $12
	ld   bc, $a178                                   ; $4303: $01 $78 $a1
	sub  d                                           ; $4306: $92
	sbc  [hl]                                        ; $4307: $9e
	adc  $bb                                         ; $4308: $ce $bb
	ldh  [$59], a                                    ; $430a: $e0 $59
	sbc  a                                           ; $430c: $9f
	dec  c                                           ; $430d: $0d
	nop                                              ; $430e: $00
	ld   a, [bc]                                     ; $430f: $0a
	rrca                                             ; $4310: $0f
	nop                                              ; $4311: $00
	ld   bc, $0101                                   ; $4312: $01 $01 $01
	inc  bc                                          ; $4315: $03
	inc  bc                                          ; $4316: $03
	ld   e, e                                        ; $4317: $5b
	ld   e, c                                        ; $4318: $59
	ld   [hl], c                                     ; $4319: $71
	ld   l, l                                        ; $431a: $6d
	rst  $38                                         ; $431b: $ff
	rst  $38                                         ; $431c: $ff
	ld   bc, $0d04                                   ; $431d: $01 $04 $0d
	nop                                              ; $4320: $00
	ld   a, [bc]                                     ; $4321: $0a
	rrca                                             ; $4322: $0f
	dec  b                                           ; $4323: $05
	jr   jr_05e_4327                                 ; $4324: $18 $01

	rst  $38                                         ; $4326: $ff

jr_05e_4327:
	ld   a, b                                        ; $4327: $78
	and  c                                           ; $4328: $a1
	ld   [hl], h                                     ; $4329: $74
	sbc  [hl]                                        ; $432a: $9e
	ld   l, e                                        ; $432b: $6b
	and  c                                           ; $432c: $a1
	ld   a, b                                        ; $432d: $78
	ld   a, c                                        ; $432e: $79
	ld   b, $3d                                      ; $432f: $06 $3d
	ld   a, h                                        ; $4331: $7c
	ld   [hl], l                                     ; $4332: $75
	ld   e, c                                        ; $4333: $59
	ld   d, d                                        ; $4334: $52
	dec  c                                           ; $4335: $0d
	adc  $bb                                         ; $4336: $ce $bb
	ldh  [$5a], a                                    ; $4338: $e0 $5a
	ld   e, b                                        ; $433a: $58
	sbc  c                                           ; $433b: $99
	sbc  l                                           ; $433c: $9d
	ld   e, a                                        ; $433d: $5f
	ld   a, b                                        ; $433e: $78
	ld   d, d                                        ; $433f: $52
	sub  d                                           ; $4340: $92
	sbc  e                                           ; $4341: $9b
	ld   a, [$000d]                                  ; $4342: $fa $0d $00
	ld   a, [bc]                                     ; $4345: $0a
	dec  c                                           ; $4346: $0d
	nop                                              ; $4347: $00
	nop                                              ; $4348: $00
	rrca                                             ; $4349: $0f
	nop                                              ; $434a: $00
	ld   bc, $020c                                   ; $434b: $01 $0c $02
	ld   b, $b6                                      ; $434e: $06 $b6
	ld   [bc], a                                     ; $4350: $02
	rrca                                             ; $4351: $0f
	nop                                              ; $4352: $00
	ld   bc, $0101                                   ; $4353: $01 $01 $01
	inc  bc                                          ; $4356: $03
	ld   h, c                                        ; $4357: $61
	ld   h, c                                        ; $4358: $61
	ld   a, l                                        ; $4359: $7d
	inc  bc                                          ; $435a: $03
	push de                                          ; $435b: $d5
	ld   h, b                                        ; $435c: $60
	sub  [hl]                                        ; $435d: $96
	ld   d, h                                        ; $435e: $54
	rst  $38                                         ; $435f: $ff
	rst  $38                                         ; $4360: $ff
	ld   bc, $0d04                                   ; $4361: $01 $04 $0d
	nop                                              ; $4364: $00
	ld   a, [bc]                                     ; $4365: $0a
	ld   bc, $fa50                                   ; $4366: $01 $50 $fa
	dec  c                                           ; $4369: $0d
	pop  de                                          ; $436a: $d1
	set  1, e                                        ; $436b: $cb $cb
	ld   a, h                                        ; $436d: $7c
	ld   b, $1c                                      ; $436e: $06 $1c
	ld   e, d                                        ; $4370: $5a
	ld   a, [$580d]                                  ; $4371: $fa $0d $58
	sbc  [hl]                                        ; $4374: $9e
	ld   e, b                                        ; $4375: $58
	inc  b                                           ; $4376: $04
	ldh  [$03], a                                    ; $4377: $e0 $03
	dec  hl                                          ; $4379: $2b
	ld   h, a                                        ; $437a: $67
	ld   e, h                                        ; $437b: $5c
	sbc  c                                           ; $437c: $99
	ei                                               ; $437d: $fb
	ei                                               ; $437e: $fb
	ld   [hl], c                                     ; $437f: $71
	ld   a, [$000d]                                  ; $4380: $fa $0d $00
	ld   a, [bc]                                     ; $4383: $0a
	ld   bc, $9d54                                   ; $4384: $01 $54 $9d
	ld   [hl], c                                     ; $4387: $71
	ld   a, [$000d]                                  ; $4388: $fa $0d $00
	ld   a, [bc]                                     ; $438b: $0a
	inc  c                                           ; $438c: $0c
	rlca                                             ; $438d: $07
	ld   bc, $6d50                                   ; $438e: $01 $50 $6d
	ld   l, l                                        ; $4391: $6d
	ld   l, l                                        ; $4392: $6d
	ld   l, l                                        ; $4393: $6d
	ld   l, l                                        ; $4394: $6d
	ld   l, l                                        ; $4395: $6d
	rst  $38                                         ; $4396: $ff
	rst  $38                                         ; $4397: $ff
	dec  c                                           ; $4398: $0d
	nop                                              ; $4399: $00
	ld   a, [bc]                                     ; $439a: $0a
	dec  c                                           ; $439b: $0d
	nop                                              ; $439c: $00
	nop                                              ; $439d: $00
	rrca                                             ; $439e: $0f
	nop                                              ; $439f: $00
	ld   bc, $020c                                   ; $43a0: $01 $0c $02
	ld   c, $65                                      ; $43a3: $0e $65
	inc  e                                           ; $43a5: $1c
	dec  b                                           ; $43a6: $05
	rlca                                             ; $43a7: $07
	rlca                                             ; $43a8: $07
	dec  e                                           ; $43a9: $1d
	ld   b, b                                        ; $43aa: $40
	dec  d                                           ; $43ab: $15
	inc  bc                                          ; $43ac: $03
	dec  d                                           ; $43ad: $15
	ld   bc, $2903                                   ; $43ae: $01 $03 $29
	nop                                              ; $43b1: $00
	ld   bc, $0008                                   ; $43b2: $01 $08 $00
	ld   a, l                                        ; $43b5: $7d
	and  c                                           ; $43b6: $a1
	ld   a, [$7c0d]                                  ; $43b7: $fa $0d $7c
	ld   l, h                                        ; $43ba: $6c
	ld   e, e                                        ; $43bb: $5b
	sub  d                                           ; $43bc: $92
	ld   a, b                                        ; $43bd: $78
	and  c                                           ; $43be: $a1
	ld   [hl], h                                     ; $43bf: $74
	or   [hl]                                        ; $43c0: $b6
	and  l                                           ; $43c1: $a5
	rst  ToBoot                                         ; $43c2: $c7
	ei                                               ; $43c3: $fb
	sub  d                                           ; $43c4: $92
	ld   a, b                                        ; $43c5: $78
	ld   a, [$a70d]                                  ; $43c6: $fa $0d $a7
	jp   nz, $9502                                   ; $43c9: $c2 $02 $95

	ld   l, e                                        ; $43cc: $6b
	ld   h, c                                        ; $43cd: $61
	ld   a, h                                        ; $43ce: $7c
	ld   d, h                                        ; $43cf: $54
	ld   l, l                                        ; $43d0: $6d
	ld   [hl], l                                     ; $43d1: $75
	ld   a, [$000d]                                  ; $43d2: $fa $0d $00
	ld   a, [bc]                                     ; $43d5: $0a
	dec  b                                           ; $43d6: $05
	ld   b, b                                        ; $43d7: $40
	ld   c, h                                        ; $43d8: $4c
	ld   [bc], a                                     ; $43d9: $02
	nop                                              ; $43da: $00
	nop                                              ; $43db: $00
	ld   bc, $f5d6                                   ; $43dc: $01 $d6 $f5
	ld   a, [$000d]                                  ; $43df: $fa $0d $00
	ld   a, [bc]                                     ; $43e2: $0a
	dec  b                                           ; $43e3: $05
	ld   b, b                                        ; $43e4: $40
	ld   d, d                                        ; $43e5: $52
	ld   bc, $0002                                   ; $43e6: $01 $02 $00
	dec  c                                           ; $43e9: $0d
	nop                                              ; $43ea: $00
	nop                                              ; $43eb: $00
	rrca                                             ; $43ec: $0f
	nop                                              ; $43ed: $00
	ld   bc, $1e09                                   ; $43ee: $01 $09 $1e
	rlca                                             ; $43f1: $07
	dec  d                                           ; $43f2: $15
	inc  bc                                          ; $43f3: $03
	inc  b                                           ; $43f4: $04
	add  b                                           ; $43f5: $80
	ld   b, $01                                      ; $43f6: $06 $01
	rst  $38                                         ; $43f8: $ff
	jr   nz, jr_05e_43fb                             ; $43f9: $20 $00

jr_05e_43fb:
	dec  b                                           ; $43fb: $05
	add  b                                           ; $43fc: $80
	ld   b, $01                                      ; $43fd: $06 $01
	ld   bc, $0000                                   ; $43ff: $01 $00 $00
	inc  c                                           ; $4402: $0c
	ld   [bc], a                                     ; $4403: $02
	ld   c, $02                                      ; $4404: $0e $02
	rrca                                             ; $4406: $0f
	nop                                              ; $4407: $00
	ld   bc, $5001                                   ; $4408: $01 $01 $50
	rst  $38                                         ; $440b: $ff
	rst  $38                                         ; $440c: $ff
	sbc  [hl]                                        ; $440d: $9e
	sub  d                                           ; $440e: $92
	ld   a, [hl]                                     ; $440f: $7e
	ld   d, d                                        ; $4410: $52
	sub  [hl]                                        ; $4411: $96
	ld   a, b                                        ; $4412: $78
	db   $fc                                         ; $4413: $fc
	rst  $38                                         ; $4414: $ff
	rst  $38                                         ; $4415: $ff
	dec  c                                           ; $4416: $0d
	inc  bc                                          ; $4417: $03
	add  b                                           ; $4418: $80
	dec  b                                           ; $4419: $05
	db   $10                                         ; $441a: $10
	inc  bc                                          ; $441b: $03
	ld   [hl], l                                     ; $441c: $75
	halt                                             ; $441d: $76
	ld   a, l                                        ; $441e: $7d
	ld   d, d                                        ; $441f: $52
	ld   d, [hl]                                     ; $4420: $56
	rst  $38                                         ; $4421: $ff
	rst  $38                                         ; $4422: $ff
	rst  $38                                         ; $4423: $ff
	rst  $38                                         ; $4424: $ff
	dec  c                                           ; $4425: $0d
	rst  $38                                         ; $4426: $ff
	rst  $38                                         ; $4427: $ff
	rst  $38                                         ; $4428: $ff
	rst  $38                                         ; $4429: $ff
	rst  $38                                         ; $442a: $ff
	rst  $38                                         ; $442b: $ff
	rst  $38                                         ; $442c: $ff
	rst  $38                                         ; $442d: $ff
	rst  $38                                         ; $442e: $ff
	rst  $38                                         ; $442f: $ff
	dec  c                                           ; $4430: $0d
	nop                                              ; $4431: $00
	ld   a, [bc]                                     ; $4432: $0a
	inc  d                                           ; $4433: $14
	ld   b, $01                                      ; $4434: $06 $01
	rrca                                             ; $4436: $0f
	dec  bc                                          ; $4437: $0b
	ld   [bc], a                                     ; $4438: $02
	ld   bc, $0008                                   ; $4439: $01 $08 $00
	ld   e, l                                        ; $443c: $5d
	and  c                                           ; $443d: $a1
	sbc  a                                           ; $443e: $9f
	dec  c                                           ; $443f: $0d
	ld   [bc], a                                     ; $4440: $02
	and  l                                           ; $4441: $a5
	ld   h, a                                        ; $4442: $67
	ld   e, [hl]                                     ; $4443: $5e
	sbc  [hl]                                        ; $4444: $9e
	inc  bc                                          ; $4445: $03
	add  l                                           ; $4446: $85
	inc  b                                           ; $4447: $04
	xor  e                                           ; $4448: $ab
	inc  bc                                          ; $4449: $03
	add  d                                           ; $444a: $82
	inc  bc                                          ; $444b: $03
	ld   c, l                                        ; $444c: $4d
	ld   a, c                                        ; $444d: $79
	dec  b                                           ; $444e: $05
	db   $10                                         ; $444f: $10
	ld   a, b                                        ; $4450: $78
	ld   h, e                                        ; $4451: $63
	ld   d, d                                        ; $4452: $52
	sbc  a                                           ; $4453: $9f
	dec  c                                           ; $4454: $0d
	nop                                              ; $4455: $00
	ld   a, [bc]                                     ; $4456: $0a
	rrca                                             ; $4457: $0f
	nop                                              ; $4458: $00
	ld   bc, $020c                                   ; $4459: $01 $0c $02
	add  hl, bc                                      ; $445c: $09
	ld   e, $01                                      ; $445d: $1e $01
	adc  h                                           ; $445f: $8c
	sbc  [hl]                                        ; $4460: $9e
	adc  h                                           ; $4461: $8c
	ld   h, e                                        ; $4462: $63
	ld   e, c                                        ; $4463: $59
	rst  $38                                         ; $4464: $ff
	rst  $38                                         ; $4465: $ff
	dec  c                                           ; $4466: $0d
	nop                                              ; $4467: $00
	ld   a, [bc]                                     ; $4468: $0a
	ld   c, $0e                                      ; $4469: $0e $0e
	inc  e                                           ; $446b: $1c
	ld   a, [bc]                                     ; $446c: $0a
	inc  b                                           ; $446d: $04
	inc  b                                           ; $446e: $04
	ld   bc, $5258                                   ; $446f: $01 $58 $52
	sbc  [hl]                                        ; $4472: $9e
	ld   [$9f00], sp                                 ; $4473: $08 $00 $9f
	dec  c                                           ; $4476: $0d
	ld   e, b                                        ; $4477: $58
	adc  a                                           ; $4478: $8f
	ei                                               ; $4479: $fb
	cp   b                                           ; $447a: $b8
	push hl                                          ; $447b: $e5
	pop  af                                          ; $447c: $f1
	ei                                               ; $447d: $fb
	ld   a, h                                        ; $447e: $7c
	ld   l, h                                        ; $447f: $6c
	ld   d, d                                        ; $4480: $52
	ld   [hl], h                                     ; $4481: $74
	ld   l, l                                        ; $4482: $6d
	and  c                                           ; $4483: $a1
	dec  c                                           ; $4484: $0d
	ld   l, [hl]                                     ; $4485: $6e
	ld   [hl], c                                     ; $4486: $71
	ld   [hl], h                                     ; $4487: $74
	ld   a, b                                        ; $4488: $78
	sbc  a                                           ; $4489: $9f
	dec  c                                           ; $448a: $0d
	nop                                              ; $448b: $00
	ld   a, [bc]                                     ; $448c: $0a
	ld   bc, $a102                                   ; $448d: $01 $02 $a1
	inc  bc                                          ; $4490: $03
	and  b                                           ; $4491: $a0
	ld   l, a                                        ; $4492: $6f
	ld   a, l                                        ; $4493: $7d
	sbc  [hl]                                        ; $4494: $9e
	sbc  l                                           ; $4495: $9d
	ld   e, c                                        ; $4496: $59
	sub  a                                           ; $4497: $97
	and  c                                           ; $4498: $a1
	ld   [hl], l                                     ; $4499: $75
	sub  b                                           ; $449a: $90
	ld   a, b                                        ; $449b: $78
	ld   d, d                                        ; $449c: $52
	dec  c                                           ; $449d: $0d
	ld   e, d                                        ; $449e: $5a
	sbc  [hl]                                        ; $449f: $9e
	inc  de                                          ; $44a0: $13
	ld   [bc], a                                     ; $44a1: $02
	sub  e                                           ; $44a2: $93
	sub  b                                           ; $44a3: $90
	sub  d                                           ; $44a4: $92
	ld   [hl], c                                     ; $44a5: $71
	ld   l, a                                        ; $44a6: $6f
	sub  c                                           ; $44a7: $91
	ei                                               ; $44a8: $fb
	dec  c                                           ; $44a9: $0d
	adc  h                                           ; $44aa: $8c
	ld   l, b                                        ; $44ab: $68
	ld   d, d                                        ; $44ac: $52
	ld   l, [hl]                                     ; $44ad: $6e
	sbc  e                                           ; $44ae: $9b
	sbc  a                                           ; $44af: $9f
	dec  c                                           ; $44b0: $0d
	nop                                              ; $44b1: $00
	ld   a, [bc]                                     ; $44b2: $0a
	ld   bc, $7e59                                   ; $44b3: $01 $59 $7e
	ld   [hl], c                                     ; $44b6: $71
	ld   [hl], h                                     ; $44b7: $74
	sub  d                                           ; $44b8: $92
	sbc  b                                           ; $44b9: $98
	ld   l, l                                        ; $44ba: $6d
	ld   d, d                                        ; $44bb: $52
	ld   e, d                                        ; $44bc: $5a
	dec  c                                           ; $44bd: $0d
	ld   [bc], a                                     ; $44be: $02
	sbc  b                                           ; $44bf: $98
	inc  bc                                          ; $44c0: $03
	nop                                              ; $44c1: $00
	ld   a, h                                        ; $44c2: $7c
	inc  bc                                          ; $44c3: $03
	ld   l, e                                        ; $44c4: $6b
	inc  bc                                          ; $44c5: $03
	ld   c, a                                        ; $44c6: $4f
	sbc  [hl]                                        ; $44c7: $9e
	ld   l, a                                        ; $44c8: $6f
	sub  l                                           ; $44c9: $95
	ld   [hl], c                                     ; $44ca: $71
	halt                                             ; $44cb: $76
	ldh  [c], a                                      ; $44cc: $e2
	db   $ec                                         ; $44cd: $ec
	dec  c                                           ; $44ce: $0d
	ld   a, b                                        ; $44cf: $78
	and  c                                           ; $44d0: $a1
	ld   [hl], l                                     ; $44d1: $75
	ld   a, b                                        ; $44d2: $78
	sbc  a                                           ; $44d3: $9f
	dec  c                                           ; $44d4: $0d
	nop                                              ; $44d5: $00
	ld   a, [bc]                                     ; $44d6: $0a
	inc  e                                           ; $44d7: $1c
	ld   a, [bc]                                     ; $44d8: $0a
	ld   [bc], a                                     ; $44d9: $02
	ld   [bc], a                                     ; $44da: $02
	ld   bc, $9d59                                   ; $44db: $01 $59 $9d
	ld   d, d                                        ; $44de: $52
	ld   l, e                                        ; $44df: $6b
	ld   d, h                                        ; $44e0: $54
	ld   l, [hl]                                     ; $44e1: $6e
	ld   e, d                                        ; $44e2: $5a
	sbc  [hl]                                        ; $44e3: $9e
	dec  c                                           ; $44e4: $0d
	inc  b                                           ; $44e5: $04
	dec  c                                           ; $44e6: $0d
	ld   [bc], a                                     ; $44e7: $02
	sub  [hl]                                        ; $44e8: $96
	inc  b                                           ; $44e9: $04
	ld   b, l                                        ; $44ea: $45
	inc  b                                           ; $44eb: $04
	ld   a, [bc]                                     ; $44ec: $0a
	ld   a, l                                        ; $44ed: $7d
	ld   h, c                                        ; $44ee: $61
	ld   h, c                                        ; $44ef: $61
	ld   [hl], l                                     ; $44f0: $75
	inc  bc                                          ; $44f1: $03
	ld   a, [hl]                                     ; $44f2: $7e
	dec  b                                           ; $44f3: $05
	nop                                              ; $44f4: $00
	ld   l, [hl]                                     ; $44f5: $6e
	ld   a, [$000d]                                  ; $44f6: $fa $0d $00
	ld   a, [bc]                                     ; $44f9: $0a
	ld   bc, $a102                                   ; $44fa: $01 $02 $a1
	inc  bc                                          ; $44fd: $03
	and  b                                           ; $44fe: $a0
	ld   l, a                                        ; $44ff: $6f
	and  b                                           ; $4500: $a0
	inc  b                                           ; $4501: $04
	ld   b, l                                        ; $4502: $45
	sbc  d                                           ; $4503: $9a
	dec  b                                           ; $4504: $05
	scf                                              ; $4505: $37
	ld   d, [hl]                                     ; $4506: $56
	ld   [hl], h                                     ; $4507: $74
	dec  c                                           ; $4508: $0d
	inc  bc                                          ; $4509: $03
	add  b                                           ; $450a: $80
	inc  bc                                          ; $450b: $03
	jp   c, Jump_05e_7465                            ; $450c: $da $65 $74

	ld   e, e                                        ; $450f: $5b
	ld   a, b                                        ; $4510: $78
	ld   a, [$000d]                                  ; $4511: $fa $0d $00
	ld   a, [bc]                                     ; $4514: $0a
	ld   h, $00                                      ; $4515: $26 $00
	ld   c, $5d                                      ; $4517: $0e $5d
	rrca                                             ; $4519: $0f
	nop                                              ; $451a: $00
	ld   bc, $0102                                   ; $451b: $01 $02 $01
	ld   d, b                                        ; $451e: $50
	sbc  d                                           ; $451f: $9a
	ld   sp, hl                                      ; $4520: $f9
	db   $10                                         ; $4521: $10
	inc  b                                           ; $4522: $04
	pop  hl                                          ; $4523: $e1
	inc  b                                           ; $4524: $04
	rst  $38                                         ; $4525: $ff
	ld   h, e                                        ; $4526: $63
	and  c                                           ; $4527: $a1
	rst  $38                                         ; $4528: $ff
	rst  $38                                         ; $4529: $ff
	dec  c                                           ; $452a: $0d
	nop                                              ; $452b: $00
	ld   a, [bc]                                     ; $452c: $0a
	inc  e                                           ; $452d: $1c
	dec  c                                           ; $452e: $0d
	nop                                              ; $452f: $00
	nop                                              ; $4530: $00
	ld   bc, $9e50                                   ; $4531: $01 $50 $9e
	ld   l, a                                        ; $4534: $6f
	sub  l                                           ; $4535: $95
	ld   d, h                                        ; $4536: $54
	ld   [hl], a                                     ; $4537: $77
	sub  [hl]                                        ; $4538: $96
	ld   e, c                                        ; $4539: $59
	ld   [hl], c                                     ; $453a: $71
	ld   l, l                                        ; $453b: $6d
	sbc  a                                           ; $453c: $9f
	dec  c                                           ; $453d: $0d
	ld   [$5d00], sp                                 ; $453e: $08 $00 $5d
	and  c                                           ; $4541: $a1
	sbc  [hl]                                        ; $4542: $9e
	ld   h, c                                        ; $4543: $61
	sbc  d                                           ; $4544: $9a
	and  b                                           ; $4545: $a0
	dec  c                                           ; $4546: $0d
	ld   h, a                                        ; $4547: $67
	adc  l                                           ; $4548: $8d
	sbc  d                                           ; $4549: $9a
	ld   h, e                                        ; $454a: $63
	and  c                                           ; $454b: $a1
	ld   a, c                                        ; $454c: $79
	inc  b                                           ; $454d: $04
	ld   b, $5f                                      ; $454e: $06 $5f
	ld   [hl], h                                     ; $4550: $74
	inc  b                                           ; $4551: $04
	db   $e3                                         ; $4552: $e3
	ld   h, l                                        ; $4553: $65
	ld   d, d                                        ; $4554: $52
	ld   a, h                                        ; $4555: $7c
	sbc  a                                           ; $4556: $9f
	dec  c                                           ; $4557: $0d
	nop                                              ; $4558: $00
	ld   a, [bc]                                     ; $4559: $0a
	db   $10                                         ; $455a: $10
	ld   de, $0f00                                   ; $455b: $11 $00 $0f
	nop                                              ; $455e: $00
	ld   bc, $0401                                   ; $455f: $01 $01 $04
	ld   c, c                                        ; $4562: $49
	ld   [hl], l                                     ; $4563: $75
	ld   h, a                                        ; $4564: $67
	ld   e, c                                        ; $4565: $59
	ld   sp, hl                                      ; $4566: $f9
	dec  c                                           ; $4567: $0d
	ld   h, c                                        ; $4568: $61
	ld   a, h                                        ; $4569: $7c
	inc  bc                                          ; $456a: $03
	ld   l, e                                        ; $456b: $6b
	dec  b                                           ; $456c: $05
	db   $e4                                         ; $456d: $e4
	ld   a, h                                        ; $456e: $7c
	inc  bc                                          ; $456f: $03
	ld   e, b                                        ; $4570: $58
	ld   a, l                                        ; $4571: $7d
	rst  $38                                         ; $4572: $ff
	rst  $38                                         ; $4573: $ff
	dec  c                                           ; $4574: $0d
	nop                                              ; $4575: $00
	ld   a, [bc]                                     ; $4576: $0a
	inc  e                                           ; $4577: $1c
	dec  c                                           ; $4578: $0d
	ld   bc, $0101                                   ; $4579: $01 $01 $01
	sub  $a2                                         ; $457c: $d6 $a2
	push af                                          ; $457e: $f5
	xor  $c0                                         ; $457f: $ee $c0
	ei                                               ; $4581: $fb
	sub  [hl]                                        ; $4582: $96
	sbc  [hl]                                        ; $4583: $9e
	dec  c                                           ; $4584: $0d
	ld   h, [hl]                                     ; $4585: $66
	sub  c                                           ; $4586: $91
	sbc  [hl]                                        ; $4587: $9e
	sub  [hl]                                        ; $4588: $96
	sbc  e                                           ; $4589: $9b
	ld   h, l                                        ; $458a: $65
	ld   e, l                                        ; $458b: $5d
	ld   a, e                                        ; $458c: $7b
	sbc  a                                           ; $458d: $9f
	dec  c                                           ; $458e: $0d
	nop                                              ; $458f: $00
	ld   a, [bc]                                     ; $4590: $0a
	dec  c                                           ; $4591: $0d
	nop                                              ; $4592: $00
	nop                                              ; $4593: $00
	rrca                                             ; $4594: $0f
	nop                                              ; $4595: $00
	ld   bc, $3c09                                   ; $4596: $01 $09 $3c
	inc  hl                                          ; $4599: $23
	ld   b, h                                        ; $459a: $44
	inc  d                                           ; $459b: $14
	ld   b, $01                                      ; $459c: $06 $01
	ld   bc, $8d67                                   ; $459e: $01 $67 $8d
	sbc  d                                           ; $45a1: $9a
	ld   h, e                                        ; $45a2: $63
	and  c                                           ; $45a3: $a1
	sbc  [hl]                                        ; $45a4: $9e
	inc  b                                           ; $45a5: $04
	pop  hl                                          ; $45a6: $e1
	inc  b                                           ; $45a7: $04
	rst  $38                                         ; $45a8: $ff
	ld   h, e                                        ; $45a9: $63
	and  c                                           ; $45aa: $a1
	ld   e, c                                        ; $45ab: $59
	sub  a                                           ; $45ac: $97
	dec  c                                           ; $45ad: $0d
	inc  b                                           ; $45ae: $04
	push hl                                          ; $45af: $e5
	ld   e, c                                        ; $45b0: $59
	ld   [hl], c                                     ; $45b1: $71
	ld   l, l                                        ; $45b2: $6d
	sub  $a2                                         ; $45b3: $d6 $a2
	push af                                          ; $45b5: $f5
	xor  $c0                                         ; $45b6: $ee $c0
	ei                                               ; $45b8: $fb
	and  b                                           ; $45b9: $a0
	dec  c                                           ; $45ba: $0d
	ld   e, b                                        ; $45bb: $58
	inc  b                                           ; $45bc: $04
	ld   b, $5f                                      ; $45bd: $06 $5f
	ld   a, c                                        ; $45bf: $79
	inc  bc                                          ; $45c0: $03
	ld   h, l                                        ; $45c1: $65
	ld   e, d                                        ; $45c2: $5a
	sbc  b                                           ; $45c3: $98
	adc  h                                           ; $45c4: $8c
	ld   h, l                                        ; $45c5: $65
	ld   l, l                                        ; $45c6: $6d
	sbc  a                                           ; $45c7: $9f
	dec  c                                           ; $45c8: $0d
	nop                                              ; $45c9: $00
	ld   a, [bc]                                     ; $45ca: $0a
	rlca                                             ; $45cb: $07
	inc  [hl]                                        ; $45cc: $34
	ld   bc, $1203                                   ; $45cd: $01 $03 $12
	ld   bc, $228c                                   ; $45d0: $01 $8c $22
	nop                                              ; $45d3: $00
	rrca                                             ; $45d4: $0f
	ld   [bc], a                                     ; $45d5: $02
	ld   bc, $6201                                   ; $45d6: $01 $01 $62
	ld   [bc], a                                     ; $45d9: $02
	sub  h                                           ; $45da: $94
	dec  b                                           ; $45db: $05
	rrca                                             ; $45dc: $0f
	ld   h, e                                        ; $45dd: $63
	adc  h                                           ; $45de: $8c
	sbc  a                                           ; $45df: $9f
	dec  c                                           ; $45e0: $0d
	jp   z, Jump_05e_7da3                            ; $45e1: $ca $a3 $7d

	ld   [bc], a                                     ; $45e4: $02
	adc  b                                           ; $45e5: $88
	ld   d, d                                        ; $45e6: $52
	ld   [hl], h                                     ; $45e7: $74
	ld   d, d                                        ; $45e8: $52
	adc  h                                           ; $45e9: $8c
	ld   h, a                                        ; $45ea: $67
	ld   e, c                                        ; $45eb: $59
	sub  a                                           ; $45ec: $97
	sbc  [hl]                                        ; $45ed: $9e
	dec  c                                           ; $45ee: $0d
	inc  b                                           ; $45ef: $04
	ld   b, l                                        ; $45f0: $45
	ld   [hl], c                                     ; $45f1: $71
	ld   [hl], h                                     ; $45f2: $74
	ld   e, e                                        ; $45f3: $5b
	ld   [hl], h                                     ; $45f4: $74
	ld   l, a                                        ; $45f5: $6f
	sub  l                                           ; $45f6: $95
	ld   d, h                                        ; $45f7: $54
	ld   l, [hl]                                     ; $45f8: $6e
	ld   d, d                                        ; $45f9: $52
	sbc  a                                           ; $45fa: $9f
	dec  c                                           ; $45fb: $0d
	nop                                              ; $45fc: $00
	ld   a, [bc]                                     ; $45fd: $0a
	inc  d                                           ; $45fe: $14
	ld   a, [bc]                                     ; $45ff: $0a
	ld   bc, $450e                                   ; $4600: $01 $0e $45
	rrca                                             ; $4603: $0f
	nop                                              ; $4604: $00
	ld   bc, $5a09                                   ; $4605: $01 $09 $5a
	inc  hl                                          ; $4608: $23
	ld   d, c                                        ; $4609: $51
	rrca                                             ; $460a: $0f
	nop                                              ; $460b: $00
	ld   bc, $020d                                   ; $460c: $01 $0d $02
	ld   bc, $7d01                                   ; $460f: $01 $01 $7d
	ld   d, d                                        ; $4612: $52
	sbc  [hl]                                        ; $4613: $9e
	ld   h, a                                        ; $4614: $67
	adc  l                                           ; $4615: $8d
	sbc  d                                           ; $4616: $9a
	ld   h, e                                        ; $4617: $63
	and  c                                           ; $4618: $a1
	sbc  a                                           ; $4619: $9f
	dec  c                                           ; $461a: $0d
	sub  $a2                                         ; $461b: $d6 $a2
	push af                                          ; $461d: $f5
	xor  $c0                                         ; $461e: $ee $c0
	ei                                               ; $4620: $fb
	ld   [hl], l                                     ; $4621: $75
	ld   h, a                                        ; $4622: $67
	sbc  a                                           ; $4623: $9f
	dec  c                                           ; $4624: $0d
	nop                                              ; $4625: $00
	ld   a, [bc]                                     ; $4626: $0a
	db   $10                                         ; $4627: $10
	ld   de, $1c00                                   ; $4628: $11 $00 $1c
	ld   [bc], a                                     ; $462b: $02
	ld   bc, $1d01                                   ; $462c: $01 $01 $1d
	ld   b, b                                        ; $462f: $40
	ld   [de], a                                     ; $4630: $12
	inc  bc                                          ; $4631: $03
	ld   [de], a                                     ; $4632: $12
	ld   bc, $2802                                   ; $4633: $01 $02 $28
	nop                                              ; $4636: $00
	ld   bc, $5477                                   ; $4637: $01 $77 $54
	sub  b                                           ; $463a: $90
	ld   d, b                                        ; $463b: $50
	sbc  b                                           ; $463c: $98
	ld   e, d                                        ; $463d: $5a
	halt                                             ; $463e: $76
	ld   d, h                                        ; $463f: $54
	sbc  a                                           ; $4640: $9f
	dec  c                                           ; $4641: $0d
	ld   [$6300], sp                                 ; $4642: $08 $00 $63
	and  c                                           ; $4645: $a1
	sbc  a                                           ; $4646: $9f
	dec  c                                           ; $4647: $0d
	nop                                              ; $4648: $00
	ld   a, [bc]                                     ; $4649: $0a
	nop                                              ; $464a: $00
	rrca                                             ; $464b: $0f
	ld   [bc], a                                     ; $464c: $02
	nop                                              ; $464d: $00
	ld   bc, $a502                                   ; $464e: $01 $02 $a5
	ld   l, a                                        ; $4651: $6f
	sub  l                                           ; $4652: $95
	ld   [hl], c                                     ; $4653: $71
	halt                                             ; $4654: $76
	inc  bc                                          ; $4655: $03
	ld   l, e                                        ; $4656: $6b
	ld   e, d                                        ; $4657: $5a
	inc  b                                           ; $4658: $04
	sbc  c                                           ; $4659: $99
	ld   l, c                                        ; $465a: $69
	ld   a, b                                        ; $465b: $78
	ld   d, d                                        ; $465c: $52
	ld   a, h                                        ; $465d: $7c
	ld   [hl], l                                     ; $465e: $75
	dec  c                                           ; $465f: $0d
	jp   z, Jump_05e_7ca3                            ; $4660: $ca $a3 $7c

	inc  bc                                          ; $4663: $03
	ld   c, a                                        ; $4664: $4f
	ld   a, c                                        ; $4665: $79
	inc  b                                           ; $4666: $04
	jr   z, jr_05e_46bb                              ; $4667: $28 $52

	halt                                             ; $4669: $76
	ld   d, d                                        ; $466a: $52
	ld   [hl], h                                     ; $466b: $74
	dec  c                                           ; $466c: $0d
	ld   d, d                                        ; $466d: $52
	ld   l, l                                        ; $466e: $6d
	ld   l, [hl]                                     ; $466f: $6e
	ld   e, a                                        ; $4670: $5f
	adc  h                                           ; $4671: $8c
	ld   l, c                                        ; $4672: $69
	and  c                                           ; $4673: $a1
	ld   sp, hl                                      ; $4674: $f9
	dec  c                                           ; $4675: $0d
	nop                                              ; $4676: $00
	ld   a, [bc]                                     ; $4677: $0a
	rrca                                             ; $4678: $0f
	nop                                              ; $4679: $00
	ld   bc, $7d01                                   ; $467a: $01 $01 $7d
	ld   d, d                                        ; $467d: $52
	sbc  [hl]                                        ; $467e: $9e
	sbc  l                                           ; $467f: $9d
	ld   e, c                                        ; $4680: $59
	sbc  b                                           ; $4681: $98
	adc  h                                           ; $4682: $8c
	ld   h, l                                        ; $4683: $65
	ld   l, l                                        ; $4684: $6d
	sbc  a                                           ; $4685: $9f
	dec  c                                           ; $4686: $0d
	nop                                              ; $4687: $00
	ld   a, [bc]                                     ; $4688: $0a
	nop                                              ; $4689: $00
	nop                                              ; $468a: $00
	ld   c, $1a                                      ; $468b: $0e $1a
	rrca                                             ; $468d: $0f
	nop                                              ; $468e: $00
	ld   bc, $0102                                   ; $468f: $01 $02 $01
	ld   d, b                                        ; $4692: $50
	sbc  [hl]                                        ; $4693: $9e
	ld   h, e                                        ; $4694: $63
	ld   e, l                                        ; $4695: $5d
	sub  a                                           ; $4696: $97
	ld   h, e                                        ; $4697: $63
	and  c                                           ; $4698: $a1
	ld   e, d                                        ; $4699: $5a
	dec  c                                           ; $469a: $0d
	ld   [bc], a                                     ; $469b: $02
	jr   nz, jr_05e_46a1                             ; $469c: $20 $03

	add  d                                           ; $469e: $82
	ld   [hl], l                                     ; $469f: $75
	ld   e, a                                        ; $46a0: $5f

jr_05e_46a1:
	ld   d, d                                        ; $46a1: $52
	ld   h, c                                        ; $46a2: $61
	ld   h, l                                        ; $46a3: $65
	ld   [hl], h                                     ; $46a4: $74
	ld   d, d                                        ; $46a5: $52
	sbc  c                                           ; $46a6: $99
	ld   l, h                                        ; $46a7: $6c
	rst  $38                                         ; $46a8: $ff
	dec  c                                           ; $46a9: $0d
	nop                                              ; $46aa: $00
	ld   a, [bc]                                     ; $46ab: $0a
	ld   d, $35                                      ; $46ac: $16 $35
	ld   bc, $5477                                   ; $46ae: $01 $77 $54
	ld   h, l                                        ; $46b1: $65
	sub  [hl]                                        ; $46b2: $96
	ld   d, h                                        ; $46b3: $54
	ld   e, c                                        ; $46b4: $59
	ld   a, b                                        ; $46b5: $78
	rst  $38                                         ; $46b6: $ff
	rst  $38                                         ; $46b7: $ff
	dec  c                                           ; $46b8: $0d
	nop                                              ; $46b9: $00
	ld   a, [bc]                                     ; $46ba: $0a

jr_05e_46bb:
	add  hl, de                                      ; $46bb: $19
	dec  b                                           ; $46bc: $05
	ld   [bc], a                                     ; $46bd: $02
	ld   a, l                                        ; $46be: $7d
	ld   e, l                                        ; $46bf: $5d
	ld   h, l                                        ; $46c0: $65
	sub  e                                           ; $46c1: $93
	and  b                                           ; $46c2: $a0
	ld   h, a                                        ; $46c3: $67
	sbc  c                                           ; $46c4: $99
	nop                                              ; $46c5: $00
	nop                                              ; $46c6: $00
	ld   e, a                                        ; $46c7: $5f
	ld   d, d                                        ; $46c8: $52
	ld   h, c                                        ; $46c9: $61
	ld   a, h                                        ; $46ca: $7c
	ld   [bc], a                                     ; $46cb: $02
	ld   a, [de]                                     ; $46cc: $1a
	inc  bc                                          ; $46cd: $03
	ld   l, e                                        ; $46ce: $6b
	and  b                                           ; $46cf: $a0
	ld   h, a                                        ; $46d0: $67
	sbc  c                                           ; $46d1: $99
	nop                                              ; $46d2: $00
	ld   bc, $5e07                                   ; $46d3: $01 $07 $5e
	nop                                              ; $46d6: $00
	ld   [bc], a                                     ; $46d7: $02
	inc  bc                                          ; $46d8: $03
	ld   bc, $2000                                   ; $46d9: $01 $00 $20
	nop                                              ; $46dc: $00
	rlca                                             ; $46dd: $07
	ld   [$0200], a                                  ; $46de: $ea $00 $02
	inc  bc                                          ; $46e1: $03
	ld   bc, $2001                                   ; $46e2: $01 $01 $20
	nop                                              ; $46e5: $00
	ld   b, $b5                                      ; $46e6: $06 $b5
	ld   bc, $000f                                   ; $46e8: $01 $0f $00
	ld   bc, $d201                                   ; $46eb: $01 $01 $d2
	jp   nz, $c2d2                                   ; $46ee: $c2 $d2 $c2

	jp   nc, $ffc2                                   ; $46f1: $d2 $c2 $ff

	rst  $38                                         ; $46f4: $ff
	dec  c                                           ; $46f5: $0d
	cp   d                                           ; $46f6: $ba
	rst  ToBoot                                         ; $46f7: $c7
	xor  [hl]                                        ; $46f8: $ae
	ld   [hl], l                                     ; $46f9: $75
	ld   h, a                                        ; $46fa: $67
	sub  [hl]                                        ; $46fb: $96
	sbc  [hl]                                        ; $46fc: $9e
	ld   h, e                                        ; $46fd: $63
	ld   e, l                                        ; $46fe: $5d
	sub  a                                           ; $46ff: $97
	ld   h, e                                        ; $4700: $63
	and  c                                           ; $4701: $a1
	sbc  a                                           ; $4702: $9f
	dec  c                                           ; $4703: $0d
	nop                                              ; $4704: $00
	ld   a, [bc]                                     ; $4705: $0a
	dec  c                                           ; $4706: $0d
	nop                                              ; $4707: $00
	nop                                              ; $4708: $00
	ld   c, $1a                                      ; $4709: $0e $1a
	inc  e                                           ; $470b: $1c
	ld   bc, $0303                                   ; $470c: $01 $03 $03
	ld   bc, $9e50                                   ; $470f: $01 $50 $9e
	ld   [$6300], sp                                 ; $4712: $08 $00 $63
	and  c                                           ; $4715: $a1
	ld   a, [$000d]                                  ; $4716: $fa $0d $00
	ld   a, [bc]                                     ; $4719: $0a
	inc  e                                           ; $471a: $1c
	ld   bc, $0505                                   ; $471b: $01 $05 $05
	dec  e                                           ; $471e: $1d
	ld   b, b                                        ; $471f: $40
	ld   de, $1103                                   ; $4720: $11 $03 $11
	ld   bc, $2801                                   ; $4723: $01 $01 $28
	nop                                              ; $4726: $00
	ld   bc, $c7ba                                   ; $4727: $01 $ba $c7
	xor  [hl]                                        ; $472a: $ae
	ld   l, [hl]                                     ; $472b: $6e
	ld   a, b                                        ; $472c: $78
	and  c                                           ; $472d: $a1
	ld   [hl], h                                     ; $472e: $74
	dec  c                                           ; $472f: $0d
	dec  b                                           ; $4730: $05
	ld   c, h                                        ; $4731: $4c
	ld   l, b                                        ; $4732: $68
	ld   e, c                                        ; $4733: $59
	ld   h, l                                        ; $4734: $65
	ld   d, d                                        ; $4735: $52
	ld   [hl], l                                     ; $4736: $75
	ld   h, a                                        ; $4737: $67
	sub  [hl]                                        ; $4738: $96
	rst  $38                                         ; $4739: $ff
	rst  $38                                         ; $473a: $ff
	dec  c                                           ; $473b: $0d
	nop                                              ; $473c: $00
	ld   a, [bc]                                     ; $473d: $0a
	ld   bc, $8d67                                   ; $473e: $01 $67 $8d
	adc  h                                           ; $4741: $8c
	ld   l, c                                        ; $4742: $69
	and  c                                           ; $4743: $a1
	rst  $38                                         ; $4744: $ff
	rst  $38                                         ; $4745: $ff
	dec  c                                           ; $4746: $0d
	adc  h                                           ; $4747: $8c
	ld   l, [hl]                                     ; $4748: $6e
	ld   e, a                                        ; $4749: $5f
	ld   d, d                                        ; $474a: $52
	ld   h, c                                        ; $474b: $61
	and  b                                           ; $474c: $a0
	ld   [bc], a                                     ; $474d: $02
	ei                                               ; $474e: $fb
	ld   e, a                                        ; $474f: $5f
	adc  h                                           ; $4750: $8c
	ld   h, a                                        ; $4751: $67
	ld   a, h                                        ; $4752: $7c
	ld   [hl], l                                     ; $4753: $75
	sbc  a                                           ; $4754: $9f
	dec  c                                           ; $4755: $0d
	nop                                              ; $4756: $00
	ld   a, [bc]                                     ; $4757: $0a
	rrca                                             ; $4758: $0f
	nop                                              ; $4759: $00
	ld   bc, $7501                                   ; $475a: $01 $01 $75
	ld   a, l                                        ; $475d: $7d
	sbc  [hl]                                        ; $475e: $9e
	ld   e, d                                        ; $475f: $5a
	and  c                                           ; $4760: $a1
	ld   a, [hl]                                     ; $4761: $7e
	ld   [hl], c                                     ; $4762: $71
	ld   [hl], h                                     ; $4763: $74
	ld   e, l                                        ; $4764: $5d
	ld   l, [hl]                                     ; $4765: $6e
	ld   h, e                                        ; $4766: $63
	ld   d, d                                        ; $4767: $52
	sbc  a                                           ; $4768: $9f
	dec  c                                           ; $4769: $0d
	nop                                              ; $476a: $00
	ld   a, [bc]                                     ; $476b: $0a
	dec  c                                           ; $476c: $0d
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	rrca                                             ; $476f: $0f
	nop                                              ; $4770: $00
	ld   bc, $1e09                                   ; $4771: $01 $09 $1e
	nop                                              ; $4774: $00
	rrca                                             ; $4775: $0f
	nop                                              ; $4776: $00
	ld   bc, $9201                                   ; $4777: $01 $01 $92
	ld   d, b                                        ; $477a: $50
	sbc  [hl]                                        ; $477b: $9e
	sub  d                                           ; $477c: $92
	ld   d, b                                        ; $477d: $50
	sbc  [hl]                                        ; $477e: $9e
	sub  d                                           ; $477f: $92
	ld   d, b                                        ; $4780: $50
	dec  c                                           ; $4781: $0d
	dec  b                                           ; $4782: $05
	dec  hl                                          ; $4783: $2b
	ld   h, c                                        ; $4784: $61
	ld   l, e                                        ; $4785: $6b
	ld   a, l                                        ; $4786: $7d
	rst  $38                                         ; $4787: $ff
	rst  $38                                         ; $4788: $ff
	dec  c                                           ; $4789: $0d
	nop                                              ; $478a: $00
	ld   a, [bc]                                     ; $478b: $0a
	dec  c                                           ; $478c: $0d
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	ld   c, $1a                                      ; $478f: $0e $1a
	inc  e                                           ; $4791: $1c
	ld   bc, $0303                                   ; $4792: $01 $03 $03
	ld   bc, $f956                                   ; $4795: $01 $56 $f9
	db   $10                                         ; $4798: $10
	ld   d, [hl]                                     ; $4799: $56
	ld   sp, hl                                      ; $479a: $f9
	dec  c                                           ; $479b: $0d
	inc  b                                           ; $479c: $04
	ld   c, c                                        ; $479d: $49
	ld   [hl], l                                     ; $479e: $75
	ld   h, a                                        ; $479f: $67
	ld   e, c                                        ; $47a0: $59
	ld   sp, hl                                      ; $47a1: $f9
	db   $10                                         ; $47a2: $10
	inc  b                                           ; $47a3: $04
	ld   c, c                                        ; $47a4: $49
	ld   [hl], l                                     ; $47a5: $75
	ld   h, a                                        ; $47a6: $67
	ld   e, c                                        ; $47a7: $59
	ld   sp, hl                                      ; $47a8: $f9
	dec  c                                           ; $47a9: $0d
	nop                                              ; $47aa: $00
	ld   a, [bc]                                     ; $47ab: $0a
	rrca                                             ; $47ac: $0f
	nop                                              ; $47ad: $00
	ld   bc, $5201                                   ; $47ae: $01 $01 $52
	sub  d                                           ; $47b1: $92
	sbc  [hl]                                        ; $47b2: $9e
	dec  b                                           ; $47b3: $05
	add  hl, de                                      ; $47b4: $19
	inc  bc                                          ; $47b5: $03
	and  h                                           ; $47b6: $a4
	ld   [bc], a                                     ; $47b7: $02
	ld   a, [de]                                     ; $47b8: $1a
	inc  bc                                          ; $47b9: $03
	ld   l, e                                        ; $47ba: $6b
	ld   a, c                                        ; $47bb: $79
	ld   a, b                                        ; $47bc: $78
	sbc  e                                           ; $47bd: $9b
	ld   d, h                                        ; $47be: $54
	ld   e, c                                        ; $47bf: $59
	halt                                             ; $47c0: $76
	dec  c                                           ; $47c1: $0d
	dec  b                                           ; $47c2: $05
	pop  de                                          ; $47c3: $d1
	ld   d, d                                        ; $47c4: $52
	adc  h                                           ; $47c5: $8c
	ld   h, l                                        ; $47c6: $65
	ld   [hl], h                                     ; $47c7: $74
	rst  $38                                         ; $47c8: $ff
	rst  $38                                         ; $47c9: $ff
	dec  c                                           ; $47ca: $0d
	nop                                              ; $47cb: $00
	ld   a, [bc]                                     ; $47cc: $0a
	inc  e                                           ; $47cd: $1c
	ld   bc, $0707                                   ; $47ce: $01 $07 $07
	dec  e                                           ; $47d1: $1d
	ld   b, b                                        ; $47d2: $40
	ld   de, $1103                                   ; $47d3: $11 $03 $11
	ld   bc, $2902                                   ; $47d6: $01 $02 $29
	nop                                              ; $47d9: $00
	ld   bc, $0c04                                   ; $47da: $01 $04 $0c
	inc  b                                           ; $47dd: $04
	adc  a                                           ; $47de: $8f
	and  b                                           ; $47df: $a0
	inc  b                                           ; $47e0: $04
	ld   de, $75a1                                   ; $47e1: $11 $a1 $75
	ld   a, b                                        ; $47e4: $78
	ld   d, d                                        ; $47e5: $52
	inc  bc                                          ; $47e6: $03
	add  d                                           ; $47e7: $82
	ld   a, c                                        ; $47e8: $79
	ld   a, l                                        ; $47e9: $7d
	dec  c                                           ; $47ea: $0d
	inc  b                                           ; $47eb: $04
	sub  $05                                         ; $47ec: $d6 $05
	ld   de, $6775                                   ; $47ee: $11 $75 $67
	sub  [hl]                                        ; $47f1: $96
	rst  $38                                         ; $47f2: $ff
	rst  $38                                         ; $47f3: $ff
	dec  c                                           ; $47f4: $0d
	ld   e, c                                        ; $47f5: $59
	ld   d, [hl]                                     ; $47f6: $56
	ld   [hl], c                                     ; $47f7: $71
	ld   [hl], h                                     ; $47f8: $74
	ld   e, a                                        ; $47f9: $5f
	ld   d, d                                        ; $47fa: $52
	ld   h, c                                        ; $47fb: $61
	ld   a, h                                        ; $47fc: $7c
	ld   h, [hl]                                     ; $47fd: $66
	sub  c                                           ; $47fe: $91
	adc  h                                           ; $47ff: $8c
	ld   [hl], l                                     ; $4800: $75
	ld   h, a                                        ; $4801: $67
	sbc  a                                           ; $4802: $9f
	dec  c                                           ; $4803: $0d
	nop                                              ; $4804: $00
	ld   a, [bc]                                     ; $4805: $0a
	ld   bc, $9a6b                                   ; $4806: $01 $6b $9a
	ld   h, [hl]                                     ; $4809: $66
	sub  c                                           ; $480a: $91
	sbc  [hl]                                        ; $480b: $9e
	ld   d, b                                        ; $480c: $50
	ld   l, l                                        ; $480d: $6d
	ld   h, l                                        ; $480e: $65
	ld   a, l                                        ; $480f: $7d
	ld   e, a                                        ; $4810: $5f
	ld   d, d                                        ; $4811: $52
	ld   h, c                                        ; $4812: $61
	and  b                                           ; $4813: $a0
	dec  c                                           ; $4814: $0d
	ld   [bc], a                                     ; $4815: $02
	ei                                               ; $4816: $fb
	ld   e, a                                        ; $4817: $5f
	adc  h                                           ; $4818: $8c
	ld   h, a                                        ; $4819: $67
	ld   a, h                                        ; $481a: $7c
	ld   [hl], l                                     ; $481b: $75
	rst  $38                                         ; $481c: $ff
	rst  $38                                         ; $481d: $ff
	dec  c                                           ; $481e: $0d
	nop                                              ; $481f: $00
	ld   a, [bc]                                     ; $4820: $0a
	rrca                                             ; $4821: $0f
	nop                                              ; $4822: $00
	ld   bc, $6701                                   ; $4823: $01 $01 $67
	sbc  [hl]                                        ; $4826: $9e
	ld   h, a                                        ; $4827: $67
	adc  l                                           ; $4828: $8d
	adc  h                                           ; $4829: $8c
	ld   l, c                                        ; $482a: $69
	and  c                                           ; $482b: $a1
	sbc  a                                           ; $482c: $9f
	dec  c                                           ; $482d: $0d
	ld   e, b                                        ; $482e: $58
	ld   h, [hl]                                     ; $482f: $66
	sub  c                                           ; $4830: $91
	adc  h                                           ; $4831: $8c
	ld   h, l                                        ; $4832: $65
	adc  h                                           ; $4833: $8c
	ld   h, l                                        ; $4834: $65
	ld   l, l                                        ; $4835: $6d
	sbc  a                                           ; $4836: $9f
	dec  c                                           ; $4837: $0d
	nop                                              ; $4838: $00
	ld   a, [bc]                                     ; $4839: $0a
	dec  c                                           ; $483a: $0d
	nop                                              ; $483b: $00
	nop                                              ; $483c: $00
	add  hl, bc                                      ; $483d: $09
	ld   e, $00                                      ; $483e: $1e $00
	dec  c                                           ; $4840: $0d
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	ld   c, $1a                                      ; $4843: $0e $1a
	inc  e                                           ; $4845: $1c
	ld   bc, $0101                                   ; $4846: $01 $01 $01
	ld   bc, $9e50                                   ; $4849: $01 $50 $9e
	ld   [$6300], sp                                 ; $484c: $08 $00 $63
	and  c                                           ; $484f: $a1
	rst  $38                                         ; $4850: $ff
	rst  $38                                         ; $4851: $ff
	dec  c                                           ; $4852: $0d
	ld   l, [hl]                                     ; $4853: $6e
	adc  h                                           ; $4854: $8c
	ld   [hl], c                                     ; $4855: $71
	ld   [hl], h                                     ; $4856: $74
	ld   [bc], a                                     ; $4857: $02
	sub  l                                           ; $4858: $95
	ld   [hl], h                                     ; $4859: $74
	ld   [hl], h                                     ; $485a: $74
	dec  c                                           ; $485b: $0d
	ld   e, l                                        ; $485c: $5d
	sbc  d                                           ; $485d: $9a
	ld   l, l                                        ; $485e: $6d
	and  c                                           ; $485f: $a1
	ld   [hl], l                                     ; $4860: $75
	ld   h, a                                        ; $4861: $67
	ld   a, e                                        ; $4862: $7b
	sbc  a                                           ; $4863: $9f
	dec  c                                           ; $4864: $0d
	nop                                              ; $4865: $00
	ld   a, [bc]                                     ; $4866: $0a
	ld   bc, $7680                                   ; $4867: $01 $80 $76
	sbc  b                                           ; $486a: $98
	ld   h, b                                        ; $486b: $60
	ld   d, d                                        ; $486c: $52
	ld   h, c                                        ; $486d: $61
	ld   a, h                                        ; $486e: $7c
	inc  bc                                          ; $486f: $03
	ld   l, a                                        ; $4870: $6f
	ld   [hl], c                                     ; $4871: $71
	ld   [hl], h                                     ; $4872: $74
	dec  c                                           ; $4873: $0d
	inc  bc                                          ; $4874: $03
	and  l                                           ; $4875: $a5
	halt                                             ; $4876: $76
	ld   e, c                                        ; $4877: $59
	ld   e, c                                        ; $4878: $59
	ld   e, a                                        ; $4879: $5f
	sub  a                                           ; $487a: $97
	sbc  d                                           ; $487b: $9a
	ld   l, a                                        ; $487c: $6f
	sub  c                                           ; $487d: $91
	ld   d, h                                        ; $487e: $54
	halt                                             ; $487f: $76
	dec  c                                           ; $4880: $0d
	ld   [bc], a                                     ; $4881: $02
	and  c                                           ; $4882: $a1
	ld   e, d                                        ; $4883: $5a
	ld   l, a                                        ; $4884: $6f
	ld   [hl], c                                     ; $4885: $71
	ld   l, a                                        ; $4886: $6f
	sub  c                                           ; $4887: $91
	ld   d, h                                        ; $4888: $54
	and  c                                           ; $4889: $a1
	ld   [hl], l                                     ; $488a: $75
	ld   h, a                                        ; $488b: $67
	sub  [hl]                                        ; $488c: $96
	ld   a, e                                        ; $488d: $7b
	sbc  a                                           ; $488e: $9f
	dec  c                                           ; $488f: $0d
	nop                                              ; $4890: $00
	ld   a, [bc]                                     ; $4891: $0a
	inc  e                                           ; $4892: $1c
	ld   bc, $0505                                   ; $4893: $01 $05 $05
	dec  e                                           ; $4896: $1d
	ld   b, b                                        ; $4897: $40
	ld   de, $1103                                   ; $4898: $11 $03 $11
	ld   bc, $2803                                   ; $489b: $01 $03 $28
	nop                                              ; $489e: $00
	ld   bc, $0008                                   ; $489f: $01 $08 $00
	ld   h, e                                        ; $48a2: $63
	and  c                                           ; $48a3: $a1
	ld   [hl], h                                     ; $48a4: $74
	sbc  [hl]                                        ; $48a5: $9e
	dec  c                                           ; $48a6: $0d
	ld   [bc], a                                     ; $48a7: $02
	and  c                                           ; $48a8: $a1
	inc  b                                           ; $48a9: $04
	xor  e                                           ; $48aa: $ab
	sbc  b                                           ; $48ab: $98
	inc  bc                                          ; $48ac: $03
	ld   h, l                                        ; $48ad: $65
	inc  bc                                          ; $48ae: $03
	ld   l, e                                        ; $48af: $6b
	ld   a, b                                        ; $48b0: $78
	and  c                                           ; $48b1: $a1
	ld   [hl], l                                     ; $48b2: $75
	ld   h, a                                        ; $48b3: $67
	ld   a, e                                        ; $48b4: $7b
	sbc  a                                           ; $48b5: $9f
	dec  c                                           ; $48b6: $0d
	nop                                              ; $48b7: $00
	ld   a, [bc]                                     ; $48b8: $0a
	inc  e                                           ; $48b9: $1c
	ld   bc, $0101                                   ; $48ba: $01 $01 $01
	ld   bc, $9a6b                                   ; $48bd: $01 $6b $9a
	ld   h, [hl]                                     ; $48c0: $66
	sub  c                                           ; $48c1: $91
	sbc  [hl]                                        ; $48c2: $9e
	ld   d, b                                        ; $48c3: $50
	ld   l, l                                        ; $48c4: $6d
	ld   h, l                                        ; $48c5: $65
	ld   a, l                                        ; $48c6: $7d
	ld   e, a                                        ; $48c7: $5f
	ld   d, d                                        ; $48c8: $52
	ld   h, c                                        ; $48c9: $61
	and  b                                           ; $48ca: $a0
	dec  c                                           ; $48cb: $0d
	ld   [bc], a                                     ; $48cc: $02
	ei                                               ; $48cd: $fb
	ld   e, a                                        ; $48ce: $5f
	adc  h                                           ; $48cf: $8c
	ld   h, a                                        ; $48d0: $67
	ld   a, h                                        ; $48d1: $7c
	ld   [hl], l                                     ; $48d2: $75
	rst  $38                                         ; $48d3: $ff
	rst  $38                                         ; $48d4: $ff
	dec  c                                           ; $48d5: $0d
	nop                                              ; $48d6: $00
	ld   a, [bc]                                     ; $48d7: $0a
	rrca                                             ; $48d8: $0f
	nop                                              ; $48d9: $00
	ld   bc, $5a01                                   ; $48da: $01 $01 $5a
	and  c                                           ; $48dd: $a1
	ld   a, [hl]                                     ; $48de: $7e
	ld   [hl], c                                     ; $48df: $71
	ld   [hl], h                                     ; $48e0: $74
	ld   e, l                                        ; $48e1: $5d
	ld   l, [hl]                                     ; $48e2: $6e
	ld   h, e                                        ; $48e3: $63
	ld   d, d                                        ; $48e4: $52
	sbc  a                                           ; $48e5: $9f
	dec  c                                           ; $48e6: $0d
	ld   h, e                                        ; $48e7: $63
	ld   e, l                                        ; $48e8: $5d
	sub  a                                           ; $48e9: $97
	ld   h, e                                        ; $48ea: $63
	and  c                                           ; $48eb: $a1
	sbc  a                                           ; $48ec: $9f
	dec  c                                           ; $48ed: $0d
	nop                                              ; $48ee: $00
	ld   a, [bc]                                     ; $48ef: $0a
	dec  c                                           ; $48f0: $0d
	nop                                              ; $48f1: $00
	nop                                              ; $48f2: $00
	add  hl, bc                                      ; $48f3: $09
	ld   e, $00                                      ; $48f4: $1e $00
	nop                                              ; $48f6: $00
	ld   c, $41                                      ; $48f7: $0e $41
	rrca                                             ; $48f9: $0f
	nop                                              ; $48fa: $00
	ld   bc, $1c02                                   ; $48fb: $01 $02 $1c
	add  hl, bc                                      ; $48fe: $09
	nop                                              ; $48ff: $00
	nop                                              ; $4900: $00
	ld   bc, $0008                                   ; $4901: $01 $08 $00
	ld   e, l                                        ; $4904: $5d
	and  c                                           ; $4905: $a1
	ld   h, [hl]                                     ; $4906: $66
	sub  c                                           ; $4907: $91
	ld   a, b                                        ; $4908: $78
	ld   d, d                                        ; $4909: $52
	ld   e, c                                        ; $490a: $59
	sbc  a                                           ; $490b: $9f
	dec  c                                           ; $490c: $0d
	ld   a, b                                        ; $490d: $78
	ld   a, c                                        ; $490e: $79
	ld   e, c                                        ; $490f: $59
	inc  b                                           ; $4910: $04
	di                                               ; $4911: $f3
	ld   e, c                                        ; $4912: $59
	ld   d, d                                        ; $4913: $52
	ld   sp, hl                                      ; $4914: $f9
	dec  c                                           ; $4915: $0d
	nop                                              ; $4916: $00
	ld   a, [bc]                                     ; $4917: $0a
	add  hl, de                                      ; $4918: $19
	dec  b                                           ; $4919: $05
	ld   [bc], a                                     ; $491a: $02
	inc  b                                           ; $491b: $04
	ld   a, [bc]                                     ; $491c: $0a
	ld   [bc], a                                     ; $491d: $02
	nop                                              ; $491e: $00
	ld   e, c                                        ; $491f: $59
	sub  a                                           ; $4920: $97
	ld   a, h                                        ; $4921: $7c
	inc  b                                           ; $4922: $04
	ld   d, a                                        ; $4923: $57
	inc  b                                           ; $4924: $04
	ld   h, e                                        ; $4925: $63
	and  b                                           ; $4926: $a0
	ld   [bc], a                                     ; $4927: $02
	jp   nz, $005d                                   ; $4928: $c2 $5d $00

	nop                                              ; $492b: $00
	inc  bc                                          ; $492c: $03
	ld   l, l                                        ; $492d: $6d
	dec  b                                           ; $492e: $05
	add  hl, de                                      ; $492f: $19
	ld   a, h                                        ; $4930: $7c
	and  e                                           ; $4931: $a3
	jp   z, $a5d1                                    ; $4932: $ca $d1 $a5

	cp   d                                           ; $4935: $ba
	and  b                                           ; $4936: $a0
	ld   [bc], a                                     ; $4937: $02
	jp   nz, $005d                                   ; $4938: $c2 $5d $00

	ld   bc, $8b07                                   ; $493b: $01 $07 $8b
	ld   bc, $0302                                   ; $493e: $01 $02 $03
	ld   bc, $2000                                   ; $4941: $01 $00 $20
	nop                                              ; $4944: $00
	rlca                                             ; $4945: $07
	ld   c, c                                        ; $4946: $49
	ld   a, [bc]                                     ; $4947: $0a
	ld   [bc], a                                     ; $4948: $02
	inc  bc                                          ; $4949: $03
	ld   bc, $2001                                   ; $494a: $01 $01 $20
	nop                                              ; $494d: $00
	ld   b, $5a                                      ; $494e: $06 $5a
	nop                                              ; $4950: $00
	rrca                                             ; $4951: $0f
	nop                                              ; $4952: $00
	ld   bc, $5201                                   ; $4953: $01 $01 $52
	ld   d, [hl]                                     ; $4956: $56
	rst  $38                                         ; $4957: $ff
	rst  $38                                         ; $4958: $ff
	sbc  a                                           ; $4959: $9f
	dec  c                                           ; $495a: $0d
	halt                                             ; $495b: $76
	ld   e, l                                        ; $495c: $5d
	ld   a, c                                        ; $495d: $79
	inc  b                                           ; $495e: $04
	di                                               ; $495f: $f3
	ld   [bc], a                                     ; $4960: $02
	jp   $5276                                       ; $4961: $c3 $76 $52


	ld   d, h                                        ; $4964: $54
	sbc  l                                           ; $4965: $9d
	ld   e, a                                        ; $4966: $5f
	ld   [hl], l                                     ; $4967: $75
	ld   a, l                                        ; $4968: $7d
	rst  $38                                         ; $4969: $ff
	sbc  a                                           ; $496a: $9f
	dec  c                                           ; $496b: $0d
	nop                                              ; $496c: $00
	ld   a, [bc]                                     ; $496d: $0a
	rlca                                             ; $496e: $07
	rst  JumpTable                                         ; $496f: $df
	nop                                              ; $4970: $00
	inc  bc                                          ; $4971: $03
	jr   nz, jr_05e_4975                             ; $4972: $20 $01

	ld   h, h                                        ; $4974: $64

jr_05e_4975:
	inc  hl                                          ; $4975: $23
	nop                                              ; $4976: $00
	rrca                                             ; $4977: $0f
	add  hl, bc                                      ; $4978: $09
	nop                                              ; $4979: $00
	ld   bc, $546b                                   ; $497a: $01 $6b $54
	ld   e, c                                        ; $497d: $59
	rst  $38                                         ; $497e: $ff
	rst  $38                                         ; $497f: $ff
	adc  h                                           ; $4980: $8c
	ld   d, b                                        ; $4981: $50
	sbc  [hl]                                        ; $4982: $9e
	dec  c                                           ; $4983: $0d
	ld   a, b                                        ; $4984: $78
	ld   a, c                                        ; $4985: $79
	ld   e, c                                        ; $4986: $59
	ld   [bc], a                                     ; $4987: $02
	ld   a, [de]                                     ; $4988: $1a
	dec  b                                           ; $4989: $05
	ldh  a, [$5a]                                    ; $498a: $f0 $5a
	ld   d, b                                        ; $498c: $50
	sbc  c                                           ; $498d: $99
	ld   a, b                                        ; $498e: $78
	sub  a                                           ; $498f: $97
	dec  c                                           ; $4990: $0d
	ld   d, d                                        ; $4991: $52
	ld   [hl], d                                     ; $4992: $72
	ld   [hl], l                                     ; $4993: $75
	sub  b                                           ; $4994: $90
	dec  b                                           ; $4995: $05
	db   $10                                         ; $4996: $10
	sbc  c                                           ; $4997: $99
	halt                                             ; $4998: $76
	ld   d, d                                        ; $4999: $52
	ld   d, d                                        ; $499a: $52
	sbc  a                                           ; $499b: $9f
	dec  c                                           ; $499c: $0d
	nop                                              ; $499d: $00
	ld   a, [bc]                                     ; $499e: $0a
	rrca                                             ; $499f: $0f
	nop                                              ; $49a0: $00
	ld   bc, $7d01                                   ; $49a1: $01 $01 $7d
	rst  $38                                         ; $49a4: $ff
	rst  $38                                         ; $49a5: $ff
	ld   a, l                                        ; $49a6: $7d
	ld   d, d                                        ; $49a7: $52
	sbc  a                                           ; $49a8: $9f
	dec  c                                           ; $49a9: $0d
	ld   d, b                                        ; $49aa: $50
	sbc  b                                           ; $49ab: $98
	ld   e, d                                        ; $49ac: $5a
	halt                                             ; $49ad: $76
	ld   d, h                                        ; $49ae: $54
	ld   h, d                                        ; $49af: $62
	ld   h, h                                        ; $49b0: $64
	ld   d, d                                        ; $49b1: $52
	adc  h                                           ; $49b2: $8c
	ld   h, a                                        ; $49b3: $67
	sbc  a                                           ; $49b4: $9f
	dec  c                                           ; $49b5: $0d
	nop                                              ; $49b6: $00
	ld   a, [bc]                                     ; $49b7: $0a
	rrca                                             ; $49b8: $0f
	add  hl, bc                                      ; $49b9: $09
	nop                                              ; $49ba: $00
	ld   bc, $9a6b                                   ; $49bb: $01 $6b $9a
	ld   h, [hl]                                     ; $49be: $66
	sub  c                                           ; $49bf: $91
	sbc  [hl]                                        ; $49c0: $9e
	dec  b                                           ; $49c1: $05
	ld   [hl], e                                     ; $49c2: $73
	sub  b                                           ; $49c3: $90
	inc  bc                                          ; $49c4: $03
	dec  c                                           ; $49c5: $0d
	ld   [bc], a                                     ; $49c6: $02
	jp   Jump_05e_505a                               ; $49c7: $c3 $5a $50


	sbc  c                                           ; $49ca: $99
	ld   e, c                                        ; $49cb: $59
	sub  a                                           ; $49cc: $97
	dec  c                                           ; $49cd: $0d
	ld   h, c                                        ; $49ce: $61
	sbc  d                                           ; $49cf: $9a
	ld   [hl], l                                     ; $49d0: $75
	sbc  a                                           ; $49d1: $9f
	dec  c                                           ; $49d2: $0d
	nop                                              ; $49d3: $00
	ld   a, [bc]                                     ; $49d4: $0a
	nop                                              ; $49d5: $00
	inc  e                                           ; $49d6: $1c
	add  hl, bc                                      ; $49d7: $09
	dec  b                                           ; $49d8: $05
	ld   a, [bc]                                     ; $49d9: $0a
	ld   bc, $0008                                   ; $49da: $01 $08 $00
	ld   e, l                                        ; $49dd: $5d
	and  c                                           ; $49de: $a1
	sbc  a                                           ; $49df: $9f
	dec  c                                           ; $49e0: $0d
	ld   a, b                                        ; $49e1: $78
	and  c                                           ; $49e2: $a1
	ld   l, [hl]                                     ; $49e3: $6e
	ld   e, c                                        ; $49e4: $59
	ld   [bc], a                                     ; $49e5: $02
	ld   [hl], d                                     ; $49e6: $72
	inc  bc                                          ; $49e7: $03
	dec  bc                                          ; $49e8: $0b
	ld   e, d                                        ; $49e9: $5a
	ld   [bc], a                                     ; $49ea: $02
	jr   z, jr_05e_4a3f                              ; $49eb: $28 $52

	ld   l, h                                        ; $49ed: $6c
	sbc  a                                           ; $49ee: $9f
	dec  c                                           ; $49ef: $0d
	nop                                              ; $49f0: $00
	ld   a, [bc]                                     ; $49f1: $0a
	inc  e                                           ; $49f2: $1c
	add  hl, bc                                      ; $49f3: $09
	nop                                              ; $49f4: $00
	nop                                              ; $49f5: $00
	ld   bc, $a15a                                   ; $49f6: $01 $5a $a1
	ld   a, [hl]                                     ; $49f9: $7e
	sbc  c                                           ; $49fa: $99
	ld   a, h                                        ; $49fb: $7c
	sub  b                                           ; $49fc: $90
	ld   d, d                                        ; $49fd: $52
	ld   d, d                                        ; $49fe: $52
	ld   e, d                                        ; $49ff: $5a
	sbc  [hl]                                        ; $4a00: $9e
	dec  c                                           ; $4a01: $0d
	ld   l, l                                        ; $4a02: $6d
	adc  h                                           ; $4a03: $8c
	ld   a, c                                        ; $4a04: $79
	ld   a, l                                        ; $4a05: $7d
	inc  bc                                          ; $4a06: $03
	and  a                                           ; $4a07: $a7
	adc  l                                           ; $4a08: $8d
	and  b                                           ; $4a09: $a0
	halt                                             ; $4a0a: $76
	sub  a                                           ; $4a0b: $97
	ld   a, b                                        ; $4a0c: $78
	ld   d, d                                        ; $4a0d: $52
	halt                                             ; $4a0e: $76
	dec  c                                           ; $4a0f: $0d
	inc  b                                           ; $4a10: $04
	dec  c                                           ; $4a11: $0d
	ld   e, d                                        ; $4a12: $5a
	sub  b                                           ; $4a13: $90
	ld   l, l                                        ; $4a14: $6d
	ld   a, b                                        ; $4a15: $78
	ld   d, d                                        ; $4a16: $52
	ld   l, h                                        ; $4a17: $6c
	sbc  a                                           ; $4a18: $9f
	dec  c                                           ; $4a19: $0d
	nop                                              ; $4a1a: $00
	ld   a, [bc]                                     ; $4a1b: $0a
	ld   bc, $0a04                                   ; $4a1c: $01 $04 $0a
	ld   [bc], a                                     ; $4a1f: $02
	nop                                              ; $4a20: $00
	ld   a, c                                        ; $4a21: $79
	halt                                             ; $4a22: $76
	ld   [hl], c                                     ; $4a23: $71
	ld   [hl], h                                     ; $4a24: $74
	ld   a, l                                        ; $4a25: $7d
	inc  bc                                          ; $4a26: $03
	sub  h                                           ; $4a27: $94
	dec  b                                           ; $4a28: $05
	inc  sp                                          ; $4a29: $33
	ld   [bc], a                                     ; $4a2a: $02
	ld   l, b                                        ; $4a2b: $68
	dec  b                                           ; $4a2c: $05
	ld   de, $0d90                                   ; $4a2d: $11 $90 $0d
	inc  b                                           ; $4a30: $04
	ld   c, $02                                      ; $4a31: $0e $02
	jp   $0378                                       ; $4a33: $c3 $78 $03


	dec  c                                           ; $4a36: $0d
	ld   [bc], a                                     ; $4a37: $02
	jp   Jump_05e_547c                               ; $4a38: $c3 $7c $54


	ld   l, a                                        ; $4a3b: $6f
	ld   l, [hl]                                     ; $4a3c: $6e
	ld   e, c                                        ; $4a3d: $59
	sub  a                                           ; $4a3e: $97

jr_05e_4a3f:
	ld   a, b                                        ; $4a3f: $78
	sbc  a                                           ; $4a40: $9f
	dec  c                                           ; $4a41: $0d
	nop                                              ; $4a42: $00
	ld   a, [bc]                                     ; $4a43: $0a
	rrca                                             ; $4a44: $0f
	nop                                              ; $4a45: $00
	ld   bc, $7d01                                   ; $4a46: $01 $01 $7d
	rst  $38                                         ; $4a49: $ff
	rst  $38                                         ; $4a4a: $ff
	ld   a, l                                        ; $4a4b: $7d
	ld   d, d                                        ; $4a4c: $52
	sbc  a                                           ; $4a4d: $9f
	dec  c                                           ; $4a4e: $0d
	ld   [bc], a                                     ; $4a4f: $02
	and  c                                           ; $4a50: $a1
	and  b                                           ; $4a51: $a0
	ld   [hl], d                                     ; $4a52: $72
	ld   e, a                                        ; $4a53: $5f
	adc  h                                           ; $4a54: $8c
	ld   h, a                                        ; $4a55: $67
	sbc  a                                           ; $4a56: $9f
	dec  c                                           ; $4a57: $0d
	nop                                              ; $4a58: $00
	ld   a, [bc]                                     ; $4a59: $0a
	inc  e                                           ; $4a5a: $1c
	add  hl, bc                                      ; $4a5b: $09
	ld   bc, $0101                                   ; $4a5c: $01 $01 $01
	ld   d, h                                        ; $4a5f: $54
	and  c                                           ; $4a60: $a1
	sbc  a                                           ; $4a61: $9f
	dec  c                                           ; $4a62: $0d
	ld   l, e                                        ; $4a63: $6b
	sbc  d                                           ; $4a64: $9a
	ld   h, [hl]                                     ; $4a65: $66
	sub  c                                           ; $4a66: $91
	sbc  [hl]                                        ; $4a67: $9e
	dec  b                                           ; $4a68: $05
	ld   [hl], e                                     ; $4a69: $73
	sub  b                                           ; $4a6a: $90
	ld   l, e                                        ; $4a6b: $6b
	sbc  e                                           ; $4a6c: $9b
	ld   l, e                                        ; $4a6d: $6b
	sbc  e                                           ; $4a6e: $9b
	inc  bc                                          ; $4a6f: $03
	dec  c                                           ; $4a70: $0d
	ld   [bc], a                                     ; $4a71: $02
	jp   $0d79                                       ; $4a72: $c3 $79 $0d


	sub  b                                           ; $4a75: $90
	ld   [hl], a                                     ; $4a76: $77
	sbc  c                                           ; $4a77: $99
	ld   e, c                                        ; $4a78: $59
	sub  a                                           ; $4a79: $97
	ld   h, c                                        ; $4a7a: $61
	sbc  d                                           ; $4a7b: $9a
	ld   [hl], l                                     ; $4a7c: $75
	sbc  a                                           ; $4a7d: $9f
	dec  c                                           ; $4a7e: $0d
	nop                                              ; $4a7f: $00
	ld   a, [bc]                                     ; $4a80: $0a
	nop                                              ; $4a81: $00
	rrca                                             ; $4a82: $0f
	nop                                              ; $4a83: $00
	ld   bc, $5001                                   ; $4a84: $01 $01 $50
	ld   a, h                                        ; $4a87: $7c
	rst  $38                                         ; $4a88: $ff
	rst  $38                                         ; $4a89: $ff
	ld   l, a                                        ; $4a8a: $6f
	sub  l                                           ; $4a8b: $95
	ld   [hl], c                                     ; $4a8c: $71
	halt                                             ; $4a8d: $76
	dec  c                                           ; $4a8e: $0d
	ld   e, b                                        ; $4a8f: $58
	ld   [bc], a                                     ; $4a90: $02
	jp   nz, Jump_05e_655b                           ; $4a91: $c2 $5b $65

	ld   l, l                                        ; $4a94: $6d
	ld   d, d                                        ; $4a95: $52
	ld   h, c                                        ; $4a96: $61
	halt                                             ; $4a97: $76
	ld   e, d                                        ; $4a98: $5a
	dec  c                                           ; $4a99: $0d
	ld   d, b                                        ; $4a9a: $50
	sbc  c                                           ; $4a9b: $99
	and  c                                           ; $4a9c: $a1
	ld   [hl], l                                     ; $4a9d: $75
	ld   h, a                                        ; $4a9e: $67
	ld   e, a                                        ; $4a9f: $5f
	ld   [hl], a                                     ; $4aa0: $77
	rst  $38                                         ; $4aa1: $ff
	dec  c                                           ; $4aa2: $0d
	nop                                              ; $4aa3: $00
	ld   a, [bc]                                     ; $4aa4: $0a
	rrca                                             ; $4aa5: $0f
	add  hl, bc                                      ; $4aa6: $09
	nop                                              ; $4aa7: $00
	ld   bc, $ffff                                   ; $4aa8: $01 $ff $ff
	ld   [bc], a                                     ; $4aab: $02
	jp   nz, Jump_05e_6d5b                           ; $4aac: $c2 $5b $6d

	ld   d, d                                        ; $4aaf: $52
	ld   h, c                                        ; $4ab0: $61
	halt                                             ; $4ab1: $76
	ld   sp, hl                                      ; $4ab2: $f9
	dec  c                                           ; $4ab3: $0d
	nop                                              ; $4ab4: $00
	ld   a, [bc]                                     ; $4ab5: $0a
	jr   jr_05e_4abb                                 ; $4ab6: $18 $03

	ld   bc, $5d63                                   ; $4ab8: $01 $63 $5d

jr_05e_4abb:
	sub  a                                           ; $4abb: $97
	ld   e, c                                        ; $4abc: $59
	sub  a                                           ; $4abd: $97
	ld   a, h                                        ; $4abe: $7c
	inc  b                                           ; $4abf: $04
	ld   d, a                                        ; $4ac0: $57
	inc  b                                           ; $4ac1: $04
	ld   h, e                                        ; $4ac2: $63
	and  b                                           ; $4ac3: $a0
	ld   e, e                                        ; $4ac4: $5b
	ld   e, l                                        ; $4ac5: $5d
	nop                                              ; $4ac6: $00
	nop                                              ; $4ac7: $00
	ld   h, a                                        ; $4ac8: $67
	adc  l                                           ; $4ac9: $8d
	sbc  d                                           ; $4aca: $9a
	ld   e, c                                        ; $4acb: $59
	sub  a                                           ; $4acc: $97
	ld   a, h                                        ; $4acd: $7c
	inc  b                                           ; $4ace: $04
	ld   d, a                                        ; $4acf: $57
	inc  b                                           ; $4ad0: $04
	ld   h, e                                        ; $4ad1: $63
	and  b                                           ; $4ad2: $a0
	ld   e, e                                        ; $4ad3: $5b
	ld   e, l                                        ; $4ad4: $5d
	nop                                              ; $4ad5: $00
	ld   bc, $7c6b                                   ; $4ad6: $01 $6b $7c
	inc  b                                           ; $4ad9: $04
	ld   e, $7c                                      ; $4ada: $1e $7c
	inc  bc                                          ; $4adc: $03
	add  d                                           ; $4add: $82
	ld   a, h                                        ; $4ade: $7c
	inc  b                                           ; $4adf: $04
	ld   d, a                                        ; $4ae0: $57
	inc  b                                           ; $4ae1: $04
	ld   h, e                                        ; $4ae2: $63
	and  b                                           ; $4ae3: $a0
	ld   e, e                                        ; $4ae4: $5b
	ld   e, l                                        ; $4ae5: $5d
	nop                                              ; $4ae6: $00
	ld   [bc], a                                     ; $4ae7: $02
	rlca                                             ; $4ae8: $07
	ld   h, $03                                      ; $4ae9: $26 $03
	ld   [bc], a                                     ; $4aeb: $02
	ld   [bc], a                                     ; $4aec: $02
	ld   bc, $2000                                   ; $4aed: $01 $00 $20
	nop                                              ; $4af0: $00
	rlca                                             ; $4af1: $07
	ld   d, d                                        ; $4af2: $52
	inc  b                                           ; $4af3: $04
	ld   [bc], a                                     ; $4af4: $02
	ld   [bc], a                                     ; $4af5: $02
	ld   bc, $2001                                   ; $4af6: $01 $01 $20
	nop                                              ; $4af9: $00
	rlca                                             ; $4afa: $07
	inc  c                                           ; $4afb: $0c
	ld   [bc], a                                     ; $4afc: $02
	ld   [bc], a                                     ; $4afd: $02
	ld   [bc], a                                     ; $4afe: $02
	ld   bc, $2002                                   ; $4aff: $01 $02 $20
	nop                                              ; $4b02: $00
	jr   jr_05e_4b08                                 ; $4b03: $18 $03

	ld   bc, $ecdf                                   ; $4b05: $01 $df $ec

jr_05e_4b08:
	and  e                                           ; $4b08: $a3
	ld   e, c                                        ; $4b09: $59
	sub  a                                           ; $4b0a: $97
	ld   a, h                                        ; $4b0b: $7c
	inc  b                                           ; $4b0c: $04
	ld   d, a                                        ; $4b0d: $57
	inc  b                                           ; $4b0e: $04
	ld   h, e                                        ; $4b0f: $63
	and  b                                           ; $4b10: $a0
	ld   e, e                                        ; $4b11: $5b
	ld   e, l                                        ; $4b12: $5d
	nop                                              ; $4b13: $00
	nop                                              ; $4b14: $00
	xor  h                                           ; $4b15: $ac
	push af                                          ; $4b16: $f5
	bit  3, c                                        ; $4b17: $cb $59
	sub  a                                           ; $4b19: $97
	ld   a, h                                        ; $4b1a: $7c
	inc  b                                           ; $4b1b: $04
	ld   d, a                                        ; $4b1c: $57
	inc  b                                           ; $4b1d: $04
	ld   h, e                                        ; $4b1e: $63
	and  b                                           ; $4b1f: $a0
	ld   e, e                                        ; $4b20: $5b
	ld   e, l                                        ; $4b21: $5d
	nop                                              ; $4b22: $00
	ld   bc, $7c6b                                   ; $4b23: $01 $6b $7c
	inc  b                                           ; $4b26: $04
	ld   e, $7c                                      ; $4b27: $1e $7c
	inc  bc                                          ; $4b29: $03
	add  d                                           ; $4b2a: $82
	ld   a, h                                        ; $4b2b: $7c
	inc  b                                           ; $4b2c: $04
	ld   d, a                                        ; $4b2d: $57
	inc  b                                           ; $4b2e: $04
	ld   h, e                                        ; $4b2f: $63
	and  b                                           ; $4b30: $a0
	ld   e, e                                        ; $4b31: $5b
	ld   e, l                                        ; $4b32: $5d
	nop                                              ; $4b33: $00
	ld   [bc], a                                     ; $4b34: $02
	rlca                                             ; $4b35: $07
	ld   a, [hl]                                     ; $4b36: $7e
	dec  b                                           ; $4b37: $05
	ld   [bc], a                                     ; $4b38: $02
	ld   [bc], a                                     ; $4b39: $02
	ld   bc, $2000                                   ; $4b3a: $01 $00 $20
	nop                                              ; $4b3d: $00
	rlca                                             ; $4b3e: $07
	or   $08                                         ; $4b3f: $f6 $08
	ld   [bc], a                                     ; $4b41: $02
	ld   [bc], a                                     ; $4b42: $02
	ld   bc, $2001                                   ; $4b43: $01 $01 $20
	nop                                              ; $4b46: $00
	rlca                                             ; $4b47: $07
	ld   e, c                                        ; $4b48: $59
	ld   [bc], a                                     ; $4b49: $02
	ld   [bc], a                                     ; $4b4a: $02
	ld   [bc], a                                     ; $4b4b: $02
	ld   bc, $2002                                   ; $4b4c: $01 $02 $20
	nop                                              ; $4b4f: $00
	jr   jr_05e_4b55                                 ; $4b50: $18 $03

	ld   bc, $cf02                                   ; $4b52: $01 $02 $cf

jr_05e_4b55:
	dec  b                                           ; $4b55: $05
	ld   a, [de]                                     ; $4b56: $1a
	ld   e, c                                        ; $4b57: $59
	sub  a                                           ; $4b58: $97
	ld   a, h                                        ; $4b59: $7c
	inc  b                                           ; $4b5a: $04
	ld   d, a                                        ; $4b5b: $57
	inc  b                                           ; $4b5c: $04
	ld   h, e                                        ; $4b5d: $63
	and  b                                           ; $4b5e: $a0
	ld   e, e                                        ; $4b5f: $5b
	ld   e, l                                        ; $4b60: $5d
	nop                                              ; $4b61: $00
	nop                                              ; $4b62: $00
	and  e                                           ; $4b63: $a3
	and  l                                           ; $4b64: $a5
	db   $ec                                         ; $4b65: $ec
	cp   d                                           ; $4b66: $ba
	ld   e, c                                        ; $4b67: $59
	sub  a                                           ; $4b68: $97
	ld   a, h                                        ; $4b69: $7c
	inc  b                                           ; $4b6a: $04
	ld   d, a                                        ; $4b6b: $57
	inc  b                                           ; $4b6c: $04
	ld   h, e                                        ; $4b6d: $63
	and  b                                           ; $4b6e: $a0
	ld   e, e                                        ; $4b6f: $5b
	ld   e, l                                        ; $4b70: $5d
	nop                                              ; $4b71: $00
	ld   bc, $7c6b                                   ; $4b72: $01 $6b $7c
	inc  b                                           ; $4b75: $04
	ld   e, $7c                                      ; $4b76: $1e $7c
	inc  bc                                          ; $4b78: $03
	add  d                                           ; $4b79: $82
	ld   a, h                                        ; $4b7a: $7c
	inc  b                                           ; $4b7b: $04
	ld   d, a                                        ; $4b7c: $57
	inc  b                                           ; $4b7d: $04
	ld   h, e                                        ; $4b7e: $63
	and  b                                           ; $4b7f: $a0
	ld   e, e                                        ; $4b80: $5b
	ld   e, l                                        ; $4b81: $5d
	nop                                              ; $4b82: $00
	ld   [bc], a                                     ; $4b83: $02
	rlca                                             ; $4b84: $07
	call z, $0207                                    ; $4b85: $cc $07 $02
	ld   [bc], a                                     ; $4b88: $02
	ld   bc, $2000                                   ; $4b89: $01 $00 $20
	nop                                              ; $4b8c: $00
	rlca                                             ; $4b8d: $07
	and  h                                           ; $4b8e: $a4
	ld   b, $02                                      ; $4b8f: $06 $02
	ld   [bc], a                                     ; $4b91: $02
	ld   bc, $2001                                   ; $4b92: $01 $01 $20
	nop                                              ; $4b95: $00
	rlca                                             ; $4b96: $07
	xor  b                                           ; $4b97: $a8
	ld   [bc], a                                     ; $4b98: $02
	ld   [bc], a                                     ; $4b99: $02
	ld   [bc], a                                     ; $4b9a: $02
	ld   bc, $2002                                   ; $4b9b: $01 $02 $20
	nop                                              ; $4b9e: $00
	jr   @+$04                                       ; $4b9f: $18 $02

	ld   bc, $7192                                   ; $4ba1: $01 $92 $71
	ld   a, a                                        ; $4ba4: $7f
	sbc  b                                           ; $4ba5: $98
	sub  d                                           ; $4ba6: $92
	adc  a                                           ; $4ba7: $8f
	sbc  c                                           ; $4ba8: $99
	nop                                              ; $4ba9: $00
	nop                                              ; $4baa: $00
	ld   l, e                                        ; $4bab: $6b
	ld   a, h                                        ; $4bac: $7c
	inc  b                                           ; $4bad: $04
	ld   e, $7c                                      ; $4bae: $1e $7c
	inc  bc                                          ; $4bb0: $03
	add  d                                           ; $4bb1: $82
	ld   a, h                                        ; $4bb2: $7c
	inc  b                                           ; $4bb3: $04
	ld   d, a                                        ; $4bb4: $57
	inc  b                                           ; $4bb5: $04
	ld   h, e                                        ; $4bb6: $63
	and  b                                           ; $4bb7: $a0
	ld   e, e                                        ; $4bb8: $5b
	ld   e, l                                        ; $4bb9: $5d
	nop                                              ; $4bba: $00
	ld   bc, $d707                                   ; $4bbb: $01 $07 $d7
	ld   [bc], a                                     ; $4bbe: $02
	ld   [bc], a                                     ; $4bbf: $02
	ld   [bc], a                                     ; $4bc0: $02
	ld   bc, $2000                                   ; $4bc1: $01 $00 $20
	nop                                              ; $4bc4: $00
	rlca                                             ; $4bc5: $07
	cp   a                                           ; $4bc6: $bf
	ld   bc, $0202                                   ; $4bc7: $01 $02 $02
	ld   bc, $2001                                   ; $4bca: $01 $01 $20
	nop                                              ; $4bcd: $00
	rrca                                             ; $4bce: $0f
	nop                                              ; $4bcf: $00
	ld   bc, $5001                                   ; $4bd0: $01 $01 $50
	sbc  [hl]                                        ; $4bd3: $9e
	sub  d                                           ; $4bd4: $92
	ld   [hl], c                                     ; $4bd5: $71
	ld   a, a                                        ; $4bd6: $7f
	sbc  b                                           ; $4bd7: $98
	ld   d, d                                        ; $4bd8: $52
	ld   d, d                                        ; $4bd9: $52
	ld   [hl], l                                     ; $4bda: $75
	ld   h, a                                        ; $4bdb: $67
	sbc  a                                           ; $4bdc: $9f
	dec  c                                           ; $4bdd: $0d
	ld   [hl], l                                     ; $4bde: $75
	ld   a, l                                        ; $4bdf: $7d
	sbc  [hl]                                        ; $4be0: $9e
	inc  bc                                          ; $4be1: $03
	add  e                                           ; $4be2: $83
	dec  b                                           ; $4be3: $05
	dec  c                                           ; $4be4: $0d
	ld   h, l                                        ; $4be5: $65
	adc  h                                           ; $4be6: $8c
	ld   h, a                                        ; $4be7: $67
	sbc  a                                           ; $4be8: $9f
	dec  c                                           ; $4be9: $0d
	nop                                              ; $4bea: $00
	ld   a, [bc]                                     ; $4beb: $0a
	rrca                                             ; $4bec: $0f
	add  hl, bc                                      ; $4bed: $09
	nop                                              ; $4bee: $00
	ld   bc, $546b                                   ; $4bef: $01 $6b $54
	ld   e, c                                        ; $4bf2: $59
	ld   d, d                                        ; $4bf3: $52
	sbc  a                                           ; $4bf4: $9f
	dec  c                                           ; $4bf5: $0d
	ld   [hl], l                                     ; $4bf6: $75
	sub  b                                           ; $4bf7: $90
	sbc  [hl]                                        ; $4bf8: $9e
	inc  b                                           ; $4bf9: $04
	di                                               ; $4bfa: $f3
	ld   e, d                                        ; $4bfb: $5a
	ld   d, b                                        ; $4bfc: $50
	ld   [hl], c                                     ; $4bfd: $71
	ld   l, l                                        ; $4bfe: $6d
	sub  a                                           ; $4bff: $97
	dec  c                                           ; $4c00: $0d
	ld   d, d                                        ; $4c01: $52
	ld   [hl], d                                     ; $4c02: $72
	ld   [hl], l                                     ; $4c03: $75
	sub  b                                           ; $4c04: $90
	dec  b                                           ; $4c05: $05
	db   $10                                         ; $4c06: $10
	sbc  c                                           ; $4c07: $99
	halt                                             ; $4c08: $76
	ld   d, d                                        ; $4c09: $52
	ld   d, d                                        ; $4c0a: $52
	sbc  a                                           ; $4c0b: $9f
	dec  c                                           ; $4c0c: $0d
	nop                                              ; $4c0d: $00
	ld   a, [bc]                                     ; $4c0e: $0a
	ld   bc, $9166                                   ; $4c0f: $01 $66 $91
	sbc  [hl]                                        ; $4c12: $9e
	ld   e, d                                        ; $4c13: $5a
	and  c                                           ; $4c14: $a1
	ld   a, [hl]                                     ; $4c15: $7e
	sbc  d                                           ; $4c16: $9a
	sub  [hl]                                        ; $4c17: $96
	sbc  a                                           ; $4c18: $9f
	dec  c                                           ; $4c19: $0d
	nop                                              ; $4c1a: $00
	ld   a, [bc]                                     ; $4c1b: $0a
	nop                                              ; $4c1c: $00
	rrca                                             ; $4c1d: $0f
	nop                                              ; $4c1e: $00
	ld   bc, $6301                                   ; $4c1f: $01 $01 $63

jr_05e_4c22:
	ld   e, l                                        ; $4c22: $5d
	sub  a                                           ; $4c23: $97
	ld   h, e                                        ; $4c24: $63
	and  c                                           ; $4c25: $a1
	ld   a, h                                        ; $4c26: $7c
	inc  b                                           ; $4c27: $04
	ld   l, l                                        ; $4c28: $6d
	add  [hl]                                        ; $4c29: $86
	ld   a, h                                        ; $4c2a: $7c
	inc  b                                           ; $4c2b: $04
	ld   d, a                                        ; $4c2c: $57
	inc  b                                           ; $4c2d: $04
	ld   h, e                                        ; $4c2e: $63
	ld   [hl], c                                     ; $4c2f: $71
	ld   [hl], h                                     ; $4c30: $74
	dec  c                                           ; $4c31: $0d
	ld   [hl], a                                     ; $4c32: $77
	ld   d, h                                        ; $4c33: $54
	ld   a, b                                        ; $4c34: $78
	and  c                                           ; $4c35: $a1
	ld   [hl], l                                     ; $4c36: $75
	ld   h, l                                        ; $4c37: $65
	sub  l                                           ; $4c38: $95

jr_05e_4c39:
	ld   d, h                                        ; $4c39: $54
	ld   e, c                                        ; $4c3a: $59
	ld   sp, hl                                      ; $4c3b: $f9
	dec  c                                           ; $4c3c: $0d
	nop                                              ; $4c3d: $00
	ld   a, [bc]                                     ; $4c3e: $0a
	rrca                                             ; $4c3f: $0f
	add  hl, bc                                      ; $4c40: $09
	nop                                              ; $4c41: $00
	ld   bc, $8e83                                   ; $4c42: $01 $83 $8e
	sbc  [hl]                                        ; $4c45: $9e
	ld   l, e                                        ; $4c46: $6b
	ld   d, h                                        ; $4c47: $54
	ld   l, [hl]                                     ; $4c48: $6e
	ld   a, b                                        ; $4c49: $78
	rst  $38                                         ; $4c4a: $ff
	rst  $38                                         ; $4c4b: $ff
	dec  c                                           ; $4c4c: $0d
	nop                                              ; $4c4d: $00
	ld   a, [bc]                                     ; $4c4e: $0a
	rlca                                             ; $4c4f: $07
	ret  nz                                          ; $4c50: $c0

	inc  bc                                          ; $4c51: $03
	inc  bc                                          ; $4c52: $03
	ld   de, $7301                                   ; $4c53: $11 $01 $73
	inc  hl                                          ; $4c56: $23
	nop                                              ; $4c57: $00
	rlca                                             ; $4c58: $07
	rrca                                             ; $4c59: $0f
	inc  b                                           ; $4c5a: $04
	inc  bc                                          ; $4c5b: $03
	ld   de, $c401                                   ; $4c5c: $11 $01 $c4
	dec  h                                           ; $4c5f: $25
	nop                                              ; $4c60: $00
	ld   bc, $5d63                                   ; $4c61: $01 $63 $5d
	sub  a                                           ; $4c64: $97
	ld   e, l                                        ; $4c65: $5d
	and  c                                           ; $4c66: $a1
	ld   a, h                                        ; $4c67: $7c
	sbc  [hl]                                        ; $4c68: $9e
	ld   [$5d00], sp                                 ; $4c69: $08 $00 $5d
	and  c                                           ; $4c6c: $a1
	dec  c                                           ; $4c6d: $0d
	add  [hl]                                        ; $4c6e: $86
	ld   a, h                                        ; $4c6f: $7c
	inc  b                                           ; $4c70: $04
	ld   d, a                                        ; $4c71: $57
	inc  b                                           ; $4c72: $04
	ld   h, e                                        ; $4c73: $63
	ld   a, l                                        ; $4c74: $7d
	sbc  [hl]                                        ; $4c75: $9e
	adc  h                                           ; $4c76: $8c
	ld   d, b                                        ; $4c77: $50
	adc  h                                           ; $4c78: $8c
	ld   d, b                                        ; $4c79: $50
	dec  c                                           ; $4c7a: $0d
	halt                                             ; $4c7b: $76
	ld   d, d                                        ; $4c7c: $52
	ld   [hl], c                                     ; $4c7d: $71
	ld   l, l                                        ; $4c7e: $6d
	halt                                             ; $4c7f: $76
	ld   h, c                                        ; $4c80: $61
	sbc  e                                           ; $4c81: $9b
	ld   e, c                                        ; $4c82: $59
	ld   a, b                                        ; $4c83: $78
	sbc  a                                           ; $4c84: $9f
	dec  c                                           ; $4c85: $0d
	nop                                              ; $4c86: $00
	ld   a, [bc]                                     ; $4c87: $0a
	ld   bc, $5d76                                   ; $4c88: $01 $76 $5d
	ld   a, c                                        ; $4c8b: $79
	ld   [bc], a                                     ; $4c8c: $02
	jr   z, jr_05e_4ce1                              ; $4c8d: $28 $52

	dec  b                                           ; $4c8f: $05
	jr   nz, jr_05e_4c22                             ; $4c90: $20 $90

	ld   [bc], a                                     ; $4c92: $02
	jp   nz, Jump_05e_7859                           ; $4c93: $c2 $59 $78

	ld   d, d                                        ; $4c96: $52
	ld   h, l                                        ; $4c97: $65
	rst  $38                                         ; $4c98: $ff
	rst  $38                                         ; $4c99: $ff
	dec  c                                           ; $4c9a: $0d
	ld   e, c                                        ; $4c9b: $59
	halt                                             ; $4c9c: $76
	ld   d, d                                        ; $4c9d: $52
	ld   [hl], c                                     ; $4c9e: $71
	ld   [hl], h                                     ; $4c9f: $74
	sbc  [hl]                                        ; $4ca0: $9e
	ld   d, d                                        ; $4ca1: $52
	ld   d, d                                        ; $4ca2: $52
	halt                                             ; $4ca3: $76
	ld   d, d                                        ; $4ca4: $52
	ld   d, h                                        ; $4ca5: $54
	dec  b                                           ; $4ca6: $05
	jr   nz, jr_05e_4c39                             ; $4ca7: $20 $90

	dec  c                                           ; $4ca9: $0d
	ld   [bc], a                                     ; $4caa: $02
	jp   nz, Jump_05e_7859                           ; $4cab: $c2 $59 $78

	ld   d, d                                        ; $4cae: $52
	ld   a, b                                        ; $4caf: $78
	sbc  a                                           ; $4cb0: $9f
	dec  c                                           ; $4cb1: $0d
	nop                                              ; $4cb2: $00
	ld   a, [bc]                                     ; $4cb3: $0a
	ld   b, $1c                                      ; $4cb4: $06 $1c
	ld   a, [bc]                                     ; $4cb6: $0a
	ld   bc, $5d63                                   ; $4cb7: $01 $63 $5d
	sub  a                                           ; $4cba: $97
	ld   e, l                                        ; $4cbb: $5d
	and  c                                           ; $4cbc: $a1
	ld   a, h                                        ; $4cbd: $7c
	sbc  [hl]                                        ; $4cbe: $9e
	ld   [$5d00], sp                                 ; $4cbf: $08 $00 $5d
	and  c                                           ; $4cc2: $a1
	dec  c                                           ; $4cc3: $0d
	add  [hl]                                        ; $4cc4: $86
	ld   a, h                                        ; $4cc5: $7c
	inc  b                                           ; $4cc6: $04
	ld   d, a                                        ; $4cc7: $57
	inc  b                                           ; $4cc8: $04
	ld   h, e                                        ; $4cc9: $63
	ld   a, l                                        ; $4cca: $7d
	rst  $38                                         ; $4ccb: $ff
	rst  $38                                         ; $4ccc: $ff
	dec  c                                           ; $4ccd: $0d
	ld   d, b                                        ; $4cce: $50
	adc  h                                           ; $4ccf: $8c
	sbc  b                                           ; $4cd0: $98
	sub  [hl]                                        ; $4cd1: $96
	ld   e, l                                        ; $4cd2: $5d
	ld   a, b                                        ; $4cd3: $78
	ld   d, d                                        ; $4cd4: $52
	ld   a, b                                        ; $4cd5: $78
	sbc  a                                           ; $4cd6: $9f
	dec  c                                           ; $4cd7: $0d
	nop                                              ; $4cd8: $00
	ld   a, [bc]                                     ; $4cd9: $0a
	ld   bc, $7190                                   ; $4cda: $01 $90 $71
	halt                                             ; $4cdd: $76
	ld   [bc], a                                     ; $4cde: $02
	ld   a, [de]                                     ; $4cdf: $1a
	inc  bc                                          ; $4ce0: $03

jr_05e_4ce1:
	ld   l, e                                        ; $4ce1: $6b
	ld   a, h                                        ; $4ce2: $7c
	ld   [bc], a                                     ; $4ce3: $02
	and  c                                           ; $4ce4: $a1
	inc  bc                                          ; $4ce5: $03
	and  b                                           ; $4ce6: $a0
	ld   l, a                                        ; $4ce7: $6f
	and  b                                           ; $4ce8: $a0
	dec  c                                           ; $4ce9: $0d
	ld   [bc], a                                     ; $4cea: $02
	ld   h, l                                        ; $4ceb: $65
	ld   d, [hl]                                     ; $4cec: $56
	ld   [hl], h                                     ; $4ced: $74
	ld   [bc], a                                     ; $4cee: $02
	ld   a, a                                        ; $4cef: $7f
	inc  b                                           ; $4cf0: $04
	dec  de                                          ; $4cf1: $1b
	ld   h, l                                        ; $4cf2: $65
	ld   l, l                                        ; $4cf3: $6d
	adc  c                                           ; $4cf4: $89
	ld   d, h                                        ; $4cf5: $54
	ld   e, d                                        ; $4cf6: $5a
	ld   d, d                                        ; $4cf7: $52
	ld   d, d                                        ; $4cf8: $52
	halt                                             ; $4cf9: $76
	dec  c                                           ; $4cfa: $0d
	dec  b                                           ; $4cfb: $05
	pop  de                                          ; $4cfc: $d1
	ld   d, h                                        ; $4cfd: $54
	ld   l, h                                        ; $4cfe: $6c
	sbc  a                                           ; $4cff: $9f
	dec  c                                           ; $4d00: $0d
	nop                                              ; $4d01: $00
	ld   a, [bc]                                     ; $4d02: $0a
	ld   b, $1c                                      ; $4d03: $06 $1c
	ld   a, [bc]                                     ; $4d05: $0a
	ld   bc, $5d63                                   ; $4d06: $01 $63 $5d
	sub  a                                           ; $4d09: $97
	ld   e, l                                        ; $4d0a: $5d
	and  c                                           ; $4d0b: $a1
	ld   a, h                                        ; $4d0c: $7c
	sbc  [hl]                                        ; $4d0d: $9e
	ld   [$5d00], sp                                 ; $4d0e: $08 $00 $5d
	and  c                                           ; $4d11: $a1
	dec  c                                           ; $4d12: $0d
	add  [hl]                                        ; $4d13: $86
	ld   a, h                                        ; $4d14: $7c
	inc  b                                           ; $4d15: $04
	ld   d, a                                        ; $4d16: $57
	inc  b                                           ; $4d17: $04
	ld   h, e                                        ; $4d18: $63
	ld   a, l                                        ; $4d19: $7d
	sbc  [hl]                                        ; $4d1a: $9e
	ld   e, c                                        ; $4d1b: $59
	ld   a, b                                        ; $4d1c: $78
	sbc  b                                           ; $4d1d: $98
	ld   d, d                                        ; $4d1e: $52
	ld   d, d                                        ; $4d1f: $52
	dec  c                                           ; $4d20: $0d
	halt                                             ; $4d21: $76
	dec  b                                           ; $4d22: $05
	pop  de                                          ; $4d23: $d1
	ld   d, h                                        ; $4d24: $54
	ld   l, h                                        ; $4d25: $6c
	sbc  a                                           ; $4d26: $9f
	dec  c                                           ; $4d27: $0d
	nop                                              ; $4d28: $00
	ld   a, [bc]                                     ; $4d29: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $4d2a: $01 $02 $ca
	sub  b                                           ; $4d2d: $90
	ld   l, e                                        ; $4d2e: $6b
	sbc  d                                           ; $4d2f: $9a
	ld   a, c                                        ; $4d30: $79
	ld   [bc], a                                     ; $4d31: $02
	add  hl, bc                                      ; $4d32: $09
	ld   d, [hl]                                     ; $4d33: $56
	sub  a                                           ; $4d34: $97
	sbc  d                                           ; $4d35: $9a
	sbc  c                                           ; $4d36: $99
	sub  [hl]                                        ; $4d37: $96
	ld   d, h                                        ; $4d38: $54
	ld   a, c                                        ; $4d39: $79
	dec  c                                           ; $4d3a: $0d
	ld   e, d                                        ; $4d3b: $5a
	and  c                                           ; $4d3c: $a1
	ld   a, [hl]                                     ; $4d3d: $7e
	sbc  c                                           ; $4d3e: $99
	and  c                                           ; $4d3f: $a1
	ld   l, [hl]                                     ; $4d40: $6e
	ld   l, h                                        ; $4d41: $6c
	sbc  a                                           ; $4d42: $9f
	dec  c                                           ; $4d43: $0d
	nop                                              ; $4d44: $00
	ld   a, [bc]                                     ; $4d45: $0a
	ld   b, $1c                                      ; $4d46: $06 $1c
	ld   a, [bc]                                     ; $4d48: $0a
	rrca                                             ; $4d49: $0f
	nop                                              ; $4d4a: $00
	ld   bc, $6701                                   ; $4d4b: $01 $01 $67

jr_05e_4d4e:
	adc  l                                           ; $4d4e: $8d
	sbc  d                                           ; $4d4f: $9a
	ld   h, e                                        ; $4d50: $63
	and  c                                           ; $4d51: $a1
	ld   a, h                                        ; $4d52: $7c
	inc  b                                           ; $4d53: $04
	ld   l, l                                        ; $4d54: $6d
	add  [hl]                                        ; $4d55: $86
	ld   a, h                                        ; $4d56: $7c
	inc  b                                           ; $4d57: $04
	ld   d, a                                        ; $4d58: $57
	inc  b                                           ; $4d59: $04
	ld   h, e                                        ; $4d5a: $63
	ld   [hl], c                                     ; $4d5b: $71
	ld   [hl], h                                     ; $4d5c: $74
	dec  c                                           ; $4d5d: $0d
	ld   [hl], a                                     ; $4d5e: $77
	ld   d, h                                        ; $4d5f: $54
	ld   a, b                                        ; $4d60: $78
	and  c                                           ; $4d61: $a1
	ld   [hl], l                                     ; $4d62: $75
	ld   h, l                                        ; $4d63: $65
	sub  l                                           ; $4d64: $95

jr_05e_4d65:
	ld   d, h                                        ; $4d65: $54
	ld   e, c                                        ; $4d66: $59
	ld   sp, hl                                      ; $4d67: $f9
	dec  c                                           ; $4d68: $0d
	nop                                              ; $4d69: $00
	ld   a, [bc]                                     ; $4d6a: $0a
	rrca                                             ; $4d6b: $0f
	add  hl, bc                                      ; $4d6c: $09
	nop                                              ; $4d6d: $00
	ld   bc, $8e83                                   ; $4d6e: $01 $83 $8e
	sbc  [hl]                                        ; $4d71: $9e
	ld   l, e                                        ; $4d72: $6b
	ld   d, h                                        ; $4d73: $54
	ld   l, [hl]                                     ; $4d74: $6e
	ld   a, b                                        ; $4d75: $78
	rst  $38                                         ; $4d76: $ff
	rst  $38                                         ; $4d77: $ff
	dec  c                                           ; $4d78: $0d
	nop                                              ; $4d79: $00
	ld   a, [bc]                                     ; $4d7a: $0a
	rlca                                             ; $4d7b: $07
	db   $ec                                         ; $4d7c: $ec
	inc  b                                           ; $4d7d: $04
	inc  bc                                          ; $4d7e: $03
	ld   [de], a                                     ; $4d7f: $12
	ld   bc, $2373                                   ; $4d80: $01 $73 $23
	nop                                              ; $4d83: $00
	rlca                                             ; $4d84: $07
	dec  sp                                          ; $4d85: $3b
	dec  b                                           ; $4d86: $05
	inc  bc                                          ; $4d87: $03
	ld   [de], a                                     ; $4d88: $12
	ld   bc, $25c4                                   ; $4d89: $01 $c4 $25
	nop                                              ; $4d8c: $00
	ld   bc, $8d67                                   ; $4d8d: $01 $67 $8d
	sbc  d                                           ; $4d90: $9a
	ld   e, l                                        ; $4d91: $5d
	and  c                                           ; $4d92: $a1
	ld   a, h                                        ; $4d93: $7c
	sbc  [hl]                                        ; $4d94: $9e
	ld   [$5d00], sp                                 ; $4d95: $08 $00 $5d
	and  c                                           ; $4d98: $a1
	dec  c                                           ; $4d99: $0d
	add  [hl]                                        ; $4d9a: $86
	ld   a, h                                        ; $4d9b: $7c
	inc  b                                           ; $4d9c: $04
	ld   d, a                                        ; $4d9d: $57
	inc  b                                           ; $4d9e: $04
	ld   h, e                                        ; $4d9f: $63
	ld   a, l                                        ; $4da0: $7d
	sbc  [hl]                                        ; $4da1: $9e
	adc  h                                           ; $4da2: $8c
	ld   d, b                                        ; $4da3: $50
	adc  h                                           ; $4da4: $8c
	ld   d, b                                        ; $4da5: $50
	dec  c                                           ; $4da6: $0d
	halt                                             ; $4da7: $76
	ld   d, d                                        ; $4da8: $52
	ld   [hl], c                                     ; $4da9: $71
	ld   l, l                                        ; $4daa: $6d
	halt                                             ; $4dab: $76
	ld   h, c                                        ; $4dac: $61
	sbc  e                                           ; $4dad: $9b
	ld   e, c                                        ; $4dae: $59
	ld   a, b                                        ; $4daf: $78
	sbc  a                                           ; $4db0: $9f
	dec  c                                           ; $4db1: $0d
	nop                                              ; $4db2: $00
	ld   a, [bc]                                     ; $4db3: $0a
	ld   bc, $5d76                                   ; $4db4: $01 $76 $5d
	ld   a, c                                        ; $4db7: $79
	ld   [bc], a                                     ; $4db8: $02
	jr   z, jr_05e_4e0d                              ; $4db9: $28 $52

	dec  b                                           ; $4dbb: $05
	jr   nz, jr_05e_4d4e                             ; $4dbc: $20 $90

	ld   [bc], a                                     ; $4dbe: $02
	jp   nz, Jump_05e_7859                           ; $4dbf: $c2 $59 $78

	ld   d, d                                        ; $4dc2: $52
	ld   h, l                                        ; $4dc3: $65
	rst  $38                                         ; $4dc4: $ff
	rst  $38                                         ; $4dc5: $ff
	dec  c                                           ; $4dc6: $0d
	ld   e, c                                        ; $4dc7: $59
	halt                                             ; $4dc8: $76
	ld   d, d                                        ; $4dc9: $52
	ld   [hl], c                                     ; $4dca: $71
	ld   [hl], h                                     ; $4dcb: $74
	sbc  [hl]                                        ; $4dcc: $9e
	ld   d, d                                        ; $4dcd: $52
	ld   d, d                                        ; $4dce: $52
	halt                                             ; $4dcf: $76
	ld   d, d                                        ; $4dd0: $52
	ld   d, h                                        ; $4dd1: $54
	dec  b                                           ; $4dd2: $05
	jr   nz, jr_05e_4d65                             ; $4dd3: $20 $90

	dec  c                                           ; $4dd5: $0d
	ld   [bc], a                                     ; $4dd6: $02
	jp   nz, Jump_05e_7859                           ; $4dd7: $c2 $59 $78

	ld   d, d                                        ; $4dda: $52
	ld   a, b                                        ; $4ddb: $78
	sbc  a                                           ; $4ddc: $9f
	dec  c                                           ; $4ddd: $0d
	nop                                              ; $4dde: $00
	ld   a, [bc]                                     ; $4ddf: $0a
	ld   b, $1c                                      ; $4de0: $06 $1c
	ld   a, [bc]                                     ; $4de2: $0a
	ld   bc, $8d67                                   ; $4de3: $01 $67 $8d
	sbc  d                                           ; $4de6: $9a
	ld   e, l                                        ; $4de7: $5d
	and  c                                           ; $4de8: $a1
	ld   a, h                                        ; $4de9: $7c
	sbc  [hl]                                        ; $4dea: $9e
	ld   [$5d00], sp                                 ; $4deb: $08 $00 $5d
	and  c                                           ; $4dee: $a1
	dec  c                                           ; $4def: $0d
	add  [hl]                                        ; $4df0: $86
	ld   a, h                                        ; $4df1: $7c
	inc  b                                           ; $4df2: $04
	ld   d, a                                        ; $4df3: $57
	inc  b                                           ; $4df4: $04
	ld   h, e                                        ; $4df5: $63
	ld   a, l                                        ; $4df6: $7d
	rst  $38                                         ; $4df7: $ff
	rst  $38                                         ; $4df8: $ff
	dec  c                                           ; $4df9: $0d
	ld   d, b                                        ; $4dfa: $50
	adc  h                                           ; $4dfb: $8c
	sbc  b                                           ; $4dfc: $98
	sub  [hl]                                        ; $4dfd: $96
	ld   e, l                                        ; $4dfe: $5d
	ld   a, b                                        ; $4dff: $78
	ld   d, d                                        ; $4e00: $52
	ld   a, b                                        ; $4e01: $78
	sbc  a                                           ; $4e02: $9f
	dec  c                                           ; $4e03: $0d
	nop                                              ; $4e04: $00
	ld   a, [bc]                                     ; $4e05: $0a
	ld   bc, $7190                                   ; $4e06: $01 $90 $71
	halt                                             ; $4e09: $76
	ld   [bc], a                                     ; $4e0a: $02
	ld   a, [de]                                     ; $4e0b: $1a
	inc  bc                                          ; $4e0c: $03

jr_05e_4e0d:
	ld   l, e                                        ; $4e0d: $6b
	ld   a, h                                        ; $4e0e: $7c
	ld   [bc], a                                     ; $4e0f: $02
	and  c                                           ; $4e10: $a1
	inc  bc                                          ; $4e11: $03
	and  b                                           ; $4e12: $a0
	ld   l, a                                        ; $4e13: $6f
	and  b                                           ; $4e14: $a0
	dec  c                                           ; $4e15: $0d
	ld   [bc], a                                     ; $4e16: $02
	ld   h, l                                        ; $4e17: $65
	ld   d, [hl]                                     ; $4e18: $56
	ld   [hl], h                                     ; $4e19: $74
	ld   [bc], a                                     ; $4e1a: $02
	ld   a, a                                        ; $4e1b: $7f
	inc  b                                           ; $4e1c: $04
	dec  de                                          ; $4e1d: $1b
	ld   h, l                                        ; $4e1e: $65
	ld   l, l                                        ; $4e1f: $6d
	adc  c                                           ; $4e20: $89
	ld   d, h                                        ; $4e21: $54
	ld   e, d                                        ; $4e22: $5a
	ld   d, d                                        ; $4e23: $52
	ld   d, d                                        ; $4e24: $52
	halt                                             ; $4e25: $76
	dec  c                                           ; $4e26: $0d
	dec  b                                           ; $4e27: $05
	pop  de                                          ; $4e28: $d1
	ld   d, h                                        ; $4e29: $54
	ld   l, h                                        ; $4e2a: $6c
	sbc  a                                           ; $4e2b: $9f
	dec  c                                           ; $4e2c: $0d
	nop                                              ; $4e2d: $00
	ld   a, [bc]                                     ; $4e2e: $0a
	ld   b, $1c                                      ; $4e2f: $06 $1c
	ld   a, [bc]                                     ; $4e31: $0a
	ld   bc, $8d67                                   ; $4e32: $01 $67 $8d
	sbc  d                                           ; $4e35: $9a
	ld   e, l                                        ; $4e36: $5d
	and  c                                           ; $4e37: $a1
	ld   a, h                                        ; $4e38: $7c
	sbc  [hl]                                        ; $4e39: $9e
	ld   [$5d00], sp                                 ; $4e3a: $08 $00 $5d
	and  c                                           ; $4e3d: $a1
	dec  c                                           ; $4e3e: $0d
	add  [hl]                                        ; $4e3f: $86
	ld   a, h                                        ; $4e40: $7c
	inc  b                                           ; $4e41: $04
	ld   d, a                                        ; $4e42: $57
	inc  b                                           ; $4e43: $04
	ld   h, e                                        ; $4e44: $63
	ld   a, l                                        ; $4e45: $7d
	sbc  [hl]                                        ; $4e46: $9e
	ld   e, c                                        ; $4e47: $59
	ld   a, b                                        ; $4e48: $78
	sbc  b                                           ; $4e49: $98
	ld   d, d                                        ; $4e4a: $52
	ld   d, d                                        ; $4e4b: $52
	dec  c                                           ; $4e4c: $0d
	halt                                             ; $4e4d: $76
	dec  b                                           ; $4e4e: $05
	pop  de                                          ; $4e4f: $d1
	ld   d, h                                        ; $4e50: $54
	ld   l, h                                        ; $4e51: $6c
	sbc  a                                           ; $4e52: $9f
	dec  c                                           ; $4e53: $0d
	nop                                              ; $4e54: $00
	ld   a, [bc]                                     ; $4e55: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $4e56: $01 $02 $ca
	sub  b                                           ; $4e59: $90
	ld   l, e                                        ; $4e5a: $6b
	sbc  d                                           ; $4e5b: $9a
	ld   a, c                                        ; $4e5c: $79
	ld   [bc], a                                     ; $4e5d: $02
	add  hl, bc                                      ; $4e5e: $09
	ld   d, [hl]                                     ; $4e5f: $56
	sub  a                                           ; $4e60: $97
	sbc  d                                           ; $4e61: $9a
	sbc  c                                           ; $4e62: $99
	sub  [hl]                                        ; $4e63: $96
	ld   d, h                                        ; $4e64: $54
	ld   a, c                                        ; $4e65: $79
	dec  c                                           ; $4e66: $0d
	ld   e, d                                        ; $4e67: $5a
	and  c                                           ; $4e68: $a1
	ld   a, [hl]                                     ; $4e69: $7e
	sbc  c                                           ; $4e6a: $99
	and  c                                           ; $4e6b: $a1
	ld   l, [hl]                                     ; $4e6c: $6e
	ld   l, h                                        ; $4e6d: $6c
	sbc  a                                           ; $4e6e: $9f
	dec  c                                           ; $4e6f: $0d
	nop                                              ; $4e70: $00
	ld   a, [bc]                                     ; $4e71: $0a
	ld   b, $1c                                      ; $4e72: $06 $1c
	ld   a, [bc]                                     ; $4e74: $0a
	rrca                                             ; $4e75: $0f
	nop                                              ; $4e76: $00
	ld   bc, $df01                                   ; $4e77: $01 $01 $df
	db   $ec                                         ; $4e7a: $ec
	and  e                                           ; $4e7b: $a3
	ld   h, e                                        ; $4e7c: $63
	and  c                                           ; $4e7d: $a1
	ld   a, h                                        ; $4e7e: $7c
	inc  b                                           ; $4e7f: $04
	ld   l, l                                        ; $4e80: $6d
	add  [hl]                                        ; $4e81: $86
	ld   a, h                                        ; $4e82: $7c
	inc  b                                           ; $4e83: $04
	ld   d, a                                        ; $4e84: $57
	inc  b                                           ; $4e85: $04
	ld   h, e                                        ; $4e86: $63
	ld   [hl], c                                     ; $4e87: $71
	ld   [hl], h                                     ; $4e88: $74
	dec  c                                           ; $4e89: $0d
	ld   [hl], a                                     ; $4e8a: $77
	ld   d, h                                        ; $4e8b: $54
	ld   a, b                                        ; $4e8c: $78
	and  c                                           ; $4e8d: $a1
	ld   [hl], l                                     ; $4e8e: $75

jr_05e_4e8f:
	ld   h, l                                        ; $4e8f: $65
	sub  l                                           ; $4e90: $95
	ld   d, h                                        ; $4e91: $54
	ld   e, c                                        ; $4e92: $59
	ld   sp, hl                                      ; $4e93: $f9
	dec  c                                           ; $4e94: $0d
	nop                                              ; $4e95: $00
	ld   a, [bc]                                     ; $4e96: $0a
	rrca                                             ; $4e97: $0f
	add  hl, bc                                      ; $4e98: $09
	nop                                              ; $4e99: $00
	ld   bc, $8e83                                   ; $4e9a: $01 $83 $8e
	sbc  [hl]                                        ; $4e9d: $9e
	ld   l, e                                        ; $4e9e: $6b
	ld   d, h                                        ; $4e9f: $54
	ld   l, [hl]                                     ; $4ea0: $6e
	ld   a, b                                        ; $4ea1: $78
	rst  $38                                         ; $4ea2: $ff
	rst  $38                                         ; $4ea3: $ff
	dec  c                                           ; $4ea4: $0d
	nop                                              ; $4ea5: $00
	ld   a, [bc]                                     ; $4ea6: $0a
	rlca                                             ; $4ea7: $07
	ld   d, $06                                      ; $4ea8: $16 $06
	inc  bc                                          ; $4eaa: $03
	inc  de                                          ; $4eab: $13
	ld   bc, $2373                                   ; $4eac: $01 $73 $23
	nop                                              ; $4eaf: $00
	rlca                                             ; $4eb0: $07
	ld   h, e                                        ; $4eb1: $63
	ld   b, $03                                      ; $4eb2: $06 $03
	inc  de                                          ; $4eb4: $13
	ld   bc, $25c4                                   ; $4eb5: $01 $c4 $25
	nop                                              ; $4eb8: $00
	ld   bc, $ecdf                                   ; $4eb9: $01 $df $ec
	and  e                                           ; $4ebc: $a3
	ld   a, h                                        ; $4ebd: $7c
	sbc  [hl]                                        ; $4ebe: $9e
	ld   [$5d00], sp                                 ; $4ebf: $08 $00 $5d
	and  c                                           ; $4ec2: $a1
	dec  c                                           ; $4ec3: $0d
	add  [hl]                                        ; $4ec4: $86
	ld   a, h                                        ; $4ec5: $7c
	inc  b                                           ; $4ec6: $04
	ld   d, a                                        ; $4ec7: $57
	inc  b                                           ; $4ec8: $04
	ld   h, e                                        ; $4ec9: $63
	ld   a, l                                        ; $4eca: $7d
	sbc  [hl]                                        ; $4ecb: $9e
	adc  h                                           ; $4ecc: $8c
	ld   d, b                                        ; $4ecd: $50
	adc  h                                           ; $4ece: $8c
	ld   d, b                                        ; $4ecf: $50
	dec  c                                           ; $4ed0: $0d
	halt                                             ; $4ed1: $76
	ld   d, d                                        ; $4ed2: $52
	ld   [hl], c                                     ; $4ed3: $71
	ld   l, l                                        ; $4ed4: $6d
	halt                                             ; $4ed5: $76
	ld   h, c                                        ; $4ed6: $61
	sbc  e                                           ; $4ed7: $9b
	ld   e, c                                        ; $4ed8: $59
	ld   a, b                                        ; $4ed9: $78
	sbc  a                                           ; $4eda: $9f
	dec  c                                           ; $4edb: $0d
	nop                                              ; $4edc: $00
	ld   a, [bc]                                     ; $4edd: $0a
	ld   bc, $5d76                                   ; $4ede: $01 $76 $5d
	ld   a, c                                        ; $4ee1: $79
	ld   [bc], a                                     ; $4ee2: $02
	jr   z, jr_05e_4f37                              ; $4ee3: $28 $52

	dec  b                                           ; $4ee5: $05
	jr   nz, @-$6e                                   ; $4ee6: $20 $90

	ld   [bc], a                                     ; $4ee8: $02
	jp   nz, Jump_05e_7859                           ; $4ee9: $c2 $59 $78

	ld   d, d                                        ; $4eec: $52
	ld   h, l                                        ; $4eed: $65
	rst  $38                                         ; $4eee: $ff
	rst  $38                                         ; $4eef: $ff
	dec  c                                           ; $4ef0: $0d
	ld   e, c                                        ; $4ef1: $59
	halt                                             ; $4ef2: $76
	ld   d, d                                        ; $4ef3: $52
	ld   [hl], c                                     ; $4ef4: $71
	ld   [hl], h                                     ; $4ef5: $74
	sbc  [hl]                                        ; $4ef6: $9e
	ld   d, d                                        ; $4ef7: $52
	ld   d, d                                        ; $4ef8: $52
	halt                                             ; $4ef9: $76
	ld   d, d                                        ; $4efa: $52
	ld   d, h                                        ; $4efb: $54
	dec  b                                           ; $4efc: $05
	jr   nz, jr_05e_4e8f                             ; $4efd: $20 $90

	dec  c                                           ; $4eff: $0d
	ld   [bc], a                                     ; $4f00: $02
	jp   nz, Jump_05e_7859                           ; $4f01: $c2 $59 $78

	ld   d, d                                        ; $4f04: $52
	ld   a, b                                        ; $4f05: $78
	sbc  a                                           ; $4f06: $9f
	dec  c                                           ; $4f07: $0d
	nop                                              ; $4f08: $00
	ld   a, [bc]                                     ; $4f09: $0a
	ld   b, $1c                                      ; $4f0a: $06 $1c
	ld   a, [bc]                                     ; $4f0c: $0a
	ld   bc, $ecdf                                   ; $4f0d: $01 $df $ec
	and  e                                           ; $4f10: $a3
	ld   a, h                                        ; $4f11: $7c
	sbc  [hl]                                        ; $4f12: $9e
	ld   [$5d00], sp                                 ; $4f13: $08 $00 $5d
	and  c                                           ; $4f16: $a1
	dec  c                                           ; $4f17: $0d
	add  [hl]                                        ; $4f18: $86
	ld   a, h                                        ; $4f19: $7c
	inc  b                                           ; $4f1a: $04
	ld   d, a                                        ; $4f1b: $57
	inc  b                                           ; $4f1c: $04
	ld   h, e                                        ; $4f1d: $63
	ld   a, l                                        ; $4f1e: $7d
	rst  $38                                         ; $4f1f: $ff
	rst  $38                                         ; $4f20: $ff
	dec  c                                           ; $4f21: $0d
	ld   d, b                                        ; $4f22: $50
	adc  h                                           ; $4f23: $8c
	sbc  b                                           ; $4f24: $98
	sub  [hl]                                        ; $4f25: $96
	ld   e, l                                        ; $4f26: $5d
	ld   a, b                                        ; $4f27: $78
	ld   d, d                                        ; $4f28: $52
	ld   a, b                                        ; $4f29: $78
	sbc  a                                           ; $4f2a: $9f
	dec  c                                           ; $4f2b: $0d
	nop                                              ; $4f2c: $00
	ld   a, [bc]                                     ; $4f2d: $0a
	ld   bc, $7190                                   ; $4f2e: $01 $90 $71
	halt                                             ; $4f31: $76
	ld   [bc], a                                     ; $4f32: $02
	ld   a, [de]                                     ; $4f33: $1a
	inc  bc                                          ; $4f34: $03
	ld   l, e                                        ; $4f35: $6b
	ld   a, h                                        ; $4f36: $7c

jr_05e_4f37:
	ld   [bc], a                                     ; $4f37: $02
	and  c                                           ; $4f38: $a1
	inc  bc                                          ; $4f39: $03
	and  b                                           ; $4f3a: $a0
	ld   l, a                                        ; $4f3b: $6f
	and  b                                           ; $4f3c: $a0
	dec  c                                           ; $4f3d: $0d
	ld   [bc], a                                     ; $4f3e: $02
	ld   h, l                                        ; $4f3f: $65
	ld   d, [hl]                                     ; $4f40: $56
	ld   [hl], h                                     ; $4f41: $74
	ld   [bc], a                                     ; $4f42: $02
	ld   a, a                                        ; $4f43: $7f
	inc  b                                           ; $4f44: $04
	dec  de                                          ; $4f45: $1b
	ld   h, l                                        ; $4f46: $65
	ld   l, l                                        ; $4f47: $6d
	adc  c                                           ; $4f48: $89
	ld   d, h                                        ; $4f49: $54
	ld   e, d                                        ; $4f4a: $5a
	ld   d, d                                        ; $4f4b: $52
	ld   d, d                                        ; $4f4c: $52
	halt                                             ; $4f4d: $76
	dec  c                                           ; $4f4e: $0d
	dec  b                                           ; $4f4f: $05
	pop  de                                          ; $4f50: $d1
	ld   d, h                                        ; $4f51: $54
	ld   l, h                                        ; $4f52: $6c
	sbc  a                                           ; $4f53: $9f
	dec  c                                           ; $4f54: $0d
	nop                                              ; $4f55: $00
	ld   a, [bc]                                     ; $4f56: $0a
	ld   b, $1c                                      ; $4f57: $06 $1c
	ld   a, [bc]                                     ; $4f59: $0a
	ld   bc, $ecdf                                   ; $4f5a: $01 $df $ec
	and  e                                           ; $4f5d: $a3
	ld   a, h                                        ; $4f5e: $7c
	sbc  [hl]                                        ; $4f5f: $9e
	ld   [$5d00], sp                                 ; $4f60: $08 $00 $5d
	and  c                                           ; $4f63: $a1
	dec  c                                           ; $4f64: $0d
	add  [hl]                                        ; $4f65: $86
	ld   a, h                                        ; $4f66: $7c
	inc  b                                           ; $4f67: $04
	ld   d, a                                        ; $4f68: $57
	inc  b                                           ; $4f69: $04
	ld   h, e                                        ; $4f6a: $63
	ld   a, l                                        ; $4f6b: $7d
	sbc  [hl]                                        ; $4f6c: $9e
	ld   e, c                                        ; $4f6d: $59
	ld   a, b                                        ; $4f6e: $78
	sbc  b                                           ; $4f6f: $98
	ld   d, d                                        ; $4f70: $52
	ld   d, d                                        ; $4f71: $52
	dec  c                                           ; $4f72: $0d
	halt                                             ; $4f73: $76
	dec  b                                           ; $4f74: $05
	pop  de                                          ; $4f75: $d1
	ld   d, h                                        ; $4f76: $54
	ld   l, h                                        ; $4f77: $6c
	sbc  a                                           ; $4f78: $9f
	dec  c                                           ; $4f79: $0d
	nop                                              ; $4f7a: $00
	ld   a, [bc]                                     ; $4f7b: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $4f7c: $01 $02 $ca
	sub  b                                           ; $4f7f: $90
	ld   l, e                                        ; $4f80: $6b
	sbc  d                                           ; $4f81: $9a
	ld   a, c                                        ; $4f82: $79
	ld   [bc], a                                     ; $4f83: $02
	add  hl, bc                                      ; $4f84: $09
	ld   d, [hl]                                     ; $4f85: $56
	sub  a                                           ; $4f86: $97
	sbc  d                                           ; $4f87: $9a
	sbc  c                                           ; $4f88: $99
	sub  [hl]                                        ; $4f89: $96
	ld   d, h                                        ; $4f8a: $54
	ld   a, c                                        ; $4f8b: $79
	dec  c                                           ; $4f8c: $0d
	ld   e, d                                        ; $4f8d: $5a
	and  c                                           ; $4f8e: $a1
	ld   a, [hl]                                     ; $4f8f: $7e
	sbc  c                                           ; $4f90: $99
	and  c                                           ; $4f91: $a1
	ld   l, [hl]                                     ; $4f92: $6e
	ld   l, h                                        ; $4f93: $6c
	sbc  a                                           ; $4f94: $9f
	dec  c                                           ; $4f95: $0d
	nop                                              ; $4f96: $00
	ld   a, [bc]                                     ; $4f97: $0a
	ld   b, $1c                                      ; $4f98: $06 $1c
	ld   a, [bc]                                     ; $4f9a: $0a
	rrca                                             ; $4f9b: $0f
	nop                                              ; $4f9c: $00
	ld   bc, $a301                                   ; $4f9d: $01 $01 $a3
	and  l                                           ; $4fa0: $a5
	db   $ec                                         ; $4fa1: $ec
	cp   d                                           ; $4fa2: $ba
	ld   a, h                                        ; $4fa3: $7c
	inc  b                                           ; $4fa4: $04
	ld   l, l                                        ; $4fa5: $6d
	add  [hl]                                        ; $4fa6: $86
	ld   a, h                                        ; $4fa7: $7c
	inc  b                                           ; $4fa8: $04
	ld   d, a                                        ; $4fa9: $57
	inc  b                                           ; $4faa: $04
	ld   h, e                                        ; $4fab: $63
	ld   [hl], c                                     ; $4fac: $71
	ld   [hl], h                                     ; $4fad: $74
	dec  c                                           ; $4fae: $0d
	ld   [hl], a                                     ; $4faf: $77
	ld   d, h                                        ; $4fb0: $54
	ld   a, b                                        ; $4fb1: $78
	and  c                                           ; $4fb2: $a1
	ld   [hl], l                                     ; $4fb3: $75
	ld   h, l                                        ; $4fb4: $65

jr_05e_4fb5:
	sub  l                                           ; $4fb5: $95
	ld   d, h                                        ; $4fb6: $54
	ld   e, c                                        ; $4fb7: $59
	ld   sp, hl                                      ; $4fb8: $f9
	dec  c                                           ; $4fb9: $0d
	nop                                              ; $4fba: $00
	ld   a, [bc]                                     ; $4fbb: $0a
	rrca                                             ; $4fbc: $0f
	add  hl, bc                                      ; $4fbd: $09
	nop                                              ; $4fbe: $00
	ld   bc, $8e83                                   ; $4fbf: $01 $83 $8e
	sbc  [hl]                                        ; $4fc2: $9e
	ld   l, e                                        ; $4fc3: $6b
	ld   d, h                                        ; $4fc4: $54
	ld   l, [hl]                                     ; $4fc5: $6e
	ld   a, b                                        ; $4fc6: $78
	rst  $38                                         ; $4fc7: $ff
	rst  $38                                         ; $4fc8: $ff
	dec  c                                           ; $4fc9: $0d
	nop                                              ; $4fca: $00
	ld   a, [bc]                                     ; $4fcb: $0a
	rlca                                             ; $4fcc: $07
	inc  a                                           ; $4fcd: $3c
	rlca                                             ; $4fce: $07
	inc  bc                                          ; $4fcf: $03
	inc  d                                           ; $4fd0: $14
	ld   bc, $2373                                   ; $4fd1: $01 $73 $23
	nop                                              ; $4fd4: $00
	rlca                                             ; $4fd5: $07
	adc  d                                           ; $4fd6: $8a
	rlca                                             ; $4fd7: $07
	inc  bc                                          ; $4fd8: $03
	inc  d                                           ; $4fd9: $14
	ld   bc, $25c4                                   ; $4fda: $01 $c4 $25
	nop                                              ; $4fdd: $00
	ld   bc, $a5a3                                   ; $4fde: $01 $a3 $a5
	db   $ec                                         ; $4fe1: $ec
	cp   d                                           ; $4fe2: $ba
	ld   a, h                                        ; $4fe3: $7c
	sbc  [hl]                                        ; $4fe4: $9e
	ld   [$5d00], sp                                 ; $4fe5: $08 $00 $5d
	and  c                                           ; $4fe8: $a1
	dec  c                                           ; $4fe9: $0d
	add  [hl]                                        ; $4fea: $86
	ld   a, h                                        ; $4feb: $7c
	inc  b                                           ; $4fec: $04
	ld   d, a                                        ; $4fed: $57
	inc  b                                           ; $4fee: $04
	ld   h, e                                        ; $4fef: $63
	ld   a, l                                        ; $4ff0: $7d
	sbc  [hl]                                        ; $4ff1: $9e
	adc  h                                           ; $4ff2: $8c
	ld   d, b                                        ; $4ff3: $50
	adc  h                                           ; $4ff4: $8c
	ld   d, b                                        ; $4ff5: $50
	dec  c                                           ; $4ff6: $0d
	halt                                             ; $4ff7: $76
	ld   d, d                                        ; $4ff8: $52
	ld   [hl], c                                     ; $4ff9: $71
	ld   l, l                                        ; $4ffa: $6d
	halt                                             ; $4ffb: $76
	ld   h, c                                        ; $4ffc: $61
	sbc  e                                           ; $4ffd: $9b
	ld   e, c                                        ; $4ffe: $59
	ld   a, b                                        ; $4fff: $78
	sbc  a                                           ; $5000: $9f
	dec  c                                           ; $5001: $0d
	nop                                              ; $5002: $00
	ld   a, [bc]                                     ; $5003: $0a
	ld   bc, $5d76                                   ; $5004: $01 $76 $5d
	ld   a, c                                        ; $5007: $79
	ld   [bc], a                                     ; $5008: $02
	jr   z, jr_05e_505d                              ; $5009: $28 $52

	dec  b                                           ; $500b: $05
	jr   nz, @-$6e                                   ; $500c: $20 $90

	ld   [bc], a                                     ; $500e: $02
	jp   nz, Jump_05e_7859                           ; $500f: $c2 $59 $78

	ld   d, d                                        ; $5012: $52
	ld   h, l                                        ; $5013: $65
	rst  $38                                         ; $5014: $ff
	rst  $38                                         ; $5015: $ff
	dec  c                                           ; $5016: $0d
	ld   e, c                                        ; $5017: $59
	halt                                             ; $5018: $76
	ld   d, d                                        ; $5019: $52
	ld   [hl], c                                     ; $501a: $71
	ld   [hl], h                                     ; $501b: $74
	sbc  [hl]                                        ; $501c: $9e
	ld   d, d                                        ; $501d: $52
	ld   d, d                                        ; $501e: $52
	halt                                             ; $501f: $76
	ld   d, d                                        ; $5020: $52
	ld   d, h                                        ; $5021: $54
	dec  b                                           ; $5022: $05
	jr   nz, jr_05e_4fb5                             ; $5023: $20 $90

	dec  c                                           ; $5025: $0d
	ld   [bc], a                                     ; $5026: $02
	jp   nz, Jump_05e_7859                           ; $5027: $c2 $59 $78

	ld   d, d                                        ; $502a: $52
	ld   a, b                                        ; $502b: $78
	sbc  a                                           ; $502c: $9f
	dec  c                                           ; $502d: $0d
	nop                                              ; $502e: $00
	ld   a, [bc]                                     ; $502f: $0a
	ld   b, $1c                                      ; $5030: $06 $1c
	ld   a, [bc]                                     ; $5032: $0a
	ld   bc, $a5a3                                   ; $5033: $01 $a3 $a5
	db   $ec                                         ; $5036: $ec
	cp   d                                           ; $5037: $ba
	ld   a, h                                        ; $5038: $7c
	sbc  [hl]                                        ; $5039: $9e
	ld   [$5d00], sp                                 ; $503a: $08 $00 $5d
	and  c                                           ; $503d: $a1
	dec  c                                           ; $503e: $0d
	add  [hl]                                        ; $503f: $86
	ld   a, h                                        ; $5040: $7c
	inc  b                                           ; $5041: $04
	ld   d, a                                        ; $5042: $57
	inc  b                                           ; $5043: $04
	ld   h, e                                        ; $5044: $63
	ld   a, l                                        ; $5045: $7d
	rst  $38                                         ; $5046: $ff
	rst  $38                                         ; $5047: $ff
	dec  c                                           ; $5048: $0d
	ld   d, b                                        ; $5049: $50
	adc  h                                           ; $504a: $8c
	sbc  b                                           ; $504b: $98
	sub  [hl]                                        ; $504c: $96
	ld   e, l                                        ; $504d: $5d
	ld   a, b                                        ; $504e: $78
	ld   d, d                                        ; $504f: $52
	ld   a, b                                        ; $5050: $78
	sbc  a                                           ; $5051: $9f
	dec  c                                           ; $5052: $0d
	nop                                              ; $5053: $00
	ld   a, [bc]                                     ; $5054: $0a
	ld   bc, $7190                                   ; $5055: $01 $90 $71
	halt                                             ; $5058: $76
	ld   [bc], a                                     ; $5059: $02

Jump_05e_505a:
	ld   a, [de]                                     ; $505a: $1a
	inc  bc                                          ; $505b: $03
	ld   l, e                                        ; $505c: $6b

jr_05e_505d:
	ld   a, h                                        ; $505d: $7c
	ld   [bc], a                                     ; $505e: $02
	and  c                                           ; $505f: $a1
	inc  bc                                          ; $5060: $03
	and  b                                           ; $5061: $a0
	ld   l, a                                        ; $5062: $6f
	and  b                                           ; $5063: $a0
	dec  c                                           ; $5064: $0d
	ld   [bc], a                                     ; $5065: $02
	ld   h, l                                        ; $5066: $65
	ld   d, [hl]                                     ; $5067: $56
	ld   [hl], h                                     ; $5068: $74
	ld   [bc], a                                     ; $5069: $02
	ld   a, a                                        ; $506a: $7f
	inc  b                                           ; $506b: $04
	dec  de                                          ; $506c: $1b
	ld   h, l                                        ; $506d: $65
	ld   l, l                                        ; $506e: $6d
	adc  c                                           ; $506f: $89
	ld   d, h                                        ; $5070: $54
	ld   e, d                                        ; $5071: $5a
	ld   d, d                                        ; $5072: $52
	ld   d, d                                        ; $5073: $52
	halt                                             ; $5074: $76
	dec  c                                           ; $5075: $0d
	dec  b                                           ; $5076: $05
	pop  de                                          ; $5077: $d1
	ld   d, h                                        ; $5078: $54
	ld   l, h                                        ; $5079: $6c
	sbc  a                                           ; $507a: $9f
	dec  c                                           ; $507b: $0d
	nop                                              ; $507c: $00
	ld   a, [bc]                                     ; $507d: $0a
	ld   b, $1c                                      ; $507e: $06 $1c
	ld   a, [bc]                                     ; $5080: $0a
	ld   bc, $a5a3                                   ; $5081: $01 $a3 $a5
	db   $ec                                         ; $5084: $ec
	cp   d                                           ; $5085: $ba
	ld   a, h                                        ; $5086: $7c
	sbc  [hl]                                        ; $5087: $9e
	ld   [$5d00], sp                                 ; $5088: $08 $00 $5d
	and  c                                           ; $508b: $a1
	dec  c                                           ; $508c: $0d
	add  [hl]                                        ; $508d: $86
	ld   a, h                                        ; $508e: $7c
	inc  b                                           ; $508f: $04
	ld   d, a                                        ; $5090: $57
	inc  b                                           ; $5091: $04
	ld   h, e                                        ; $5092: $63
	ld   a, l                                        ; $5093: $7d
	sbc  [hl]                                        ; $5094: $9e
	ld   e, c                                        ; $5095: $59
	ld   a, b                                        ; $5096: $78
	sbc  b                                           ; $5097: $98
	ld   d, d                                        ; $5098: $52
	ld   d, d                                        ; $5099: $52
	dec  c                                           ; $509a: $0d
	halt                                             ; $509b: $76
	dec  b                                           ; $509c: $05
	pop  de                                          ; $509d: $d1
	ld   d, h                                        ; $509e: $54
	ld   l, h                                        ; $509f: $6c
	sbc  a                                           ; $50a0: $9f
	dec  c                                           ; $50a1: $0d
	nop                                              ; $50a2: $00
	ld   a, [bc]                                     ; $50a3: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $50a4: $01 $02 $ca
	sub  b                                           ; $50a7: $90
	ld   l, e                                        ; $50a8: $6b
	sbc  d                                           ; $50a9: $9a
	ld   a, c                                        ; $50aa: $79
	ld   [bc], a                                     ; $50ab: $02
	add  hl, bc                                      ; $50ac: $09
	ld   d, [hl]                                     ; $50ad: $56
	sub  a                                           ; $50ae: $97
	sbc  d                                           ; $50af: $9a
	sbc  c                                           ; $50b0: $99
	sub  [hl]                                        ; $50b1: $96
	ld   d, h                                        ; $50b2: $54
	ld   a, c                                        ; $50b3: $79
	dec  c                                           ; $50b4: $0d
	ld   e, d                                        ; $50b5: $5a
	and  c                                           ; $50b6: $a1
	ld   a, [hl]                                     ; $50b7: $7e
	sbc  c                                           ; $50b8: $99
	and  c                                           ; $50b9: $a1
	ld   l, [hl]                                     ; $50ba: $6e
	ld   l, h                                        ; $50bb: $6c
	sbc  a                                           ; $50bc: $9f
	dec  c                                           ; $50bd: $0d
	nop                                              ; $50be: $00
	ld   a, [bc]                                     ; $50bf: $0a
	ld   b, $1c                                      ; $50c0: $06 $1c
	ld   a, [bc]                                     ; $50c2: $0a
	rrca                                             ; $50c3: $0f
	nop                                              ; $50c4: $00
	ld   bc, $0201                                   ; $50c5: $01 $01 $02

jr_05e_50c8:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50c8: $cf
	dec  b                                           ; $50c9: $05
	ld   a, [de]                                     ; $50ca: $1a
	ld   h, e                                        ; $50cb: $63
	and  c                                           ; $50cc: $a1
	ld   a, h                                        ; $50cd: $7c
	inc  b                                           ; $50ce: $04
	ld   l, l                                        ; $50cf: $6d
	add  [hl]                                        ; $50d0: $86
	ld   a, h                                        ; $50d1: $7c
	inc  b                                           ; $50d2: $04
	ld   d, a                                        ; $50d3: $57
	inc  b                                           ; $50d4: $04
	ld   h, e                                        ; $50d5: $63
	ld   [hl], c                                     ; $50d6: $71
	ld   [hl], h                                     ; $50d7: $74
	dec  c                                           ; $50d8: $0d
	ld   [hl], a                                     ; $50d9: $77
	ld   d, h                                        ; $50da: $54
	ld   a, b                                        ; $50db: $78
	and  c                                           ; $50dc: $a1
	ld   [hl], l                                     ; $50dd: $75
	ld   h, l                                        ; $50de: $65

jr_05e_50df:
	sub  l                                           ; $50df: $95
	ld   d, h                                        ; $50e0: $54
	ld   e, c                                        ; $50e1: $59
	ld   sp, hl                                      ; $50e2: $f9
	dec  c                                           ; $50e3: $0d
	nop                                              ; $50e4: $00
	ld   a, [bc]                                     ; $50e5: $0a
	rrca                                             ; $50e6: $0f
	add  hl, bc                                      ; $50e7: $09
	nop                                              ; $50e8: $00
	ld   bc, $8e83                                   ; $50e9: $01 $83 $8e
	sbc  [hl]                                        ; $50ec: $9e
	ld   l, e                                        ; $50ed: $6b
	ld   d, h                                        ; $50ee: $54
	ld   l, [hl]                                     ; $50ef: $6e
	ld   a, b                                        ; $50f0: $78
	rst  $38                                         ; $50f1: $ff
	rst  $38                                         ; $50f2: $ff
	dec  c                                           ; $50f3: $0d
	nop                                              ; $50f4: $00
	ld   a, [bc]                                     ; $50f5: $0a
	rlca                                             ; $50f6: $07
	ld   h, [hl]                                     ; $50f7: $66
	ld   [$1503], sp                                 ; $50f8: $08 $03 $15
	ld   bc, $2373                                   ; $50fb: $01 $73 $23
	nop                                              ; $50fe: $00
	rlca                                             ; $50ff: $07
	or   h                                           ; $5100: $b4
	ld   [$1503], sp                                 ; $5101: $08 $03 $15
	ld   bc, $25c4                                   ; $5104: $01 $c4 $25
	nop                                              ; $5107: $00
	ld   bc, $cf02                                   ; $5108: $01 $02 $cf
	dec  b                                           ; $510b: $05
	ld   a, [de]                                     ; $510c: $1a
	ld   a, h                                        ; $510d: $7c
	sbc  [hl]                                        ; $510e: $9e
	ld   [$5d00], sp                                 ; $510f: $08 $00 $5d
	and  c                                           ; $5112: $a1
	dec  c                                           ; $5113: $0d
	add  [hl]                                        ; $5114: $86
	ld   a, h                                        ; $5115: $7c
	inc  b                                           ; $5116: $04
	ld   d, a                                        ; $5117: $57
	inc  b                                           ; $5118: $04
	ld   h, e                                        ; $5119: $63
	ld   a, l                                        ; $511a: $7d
	sbc  [hl]                                        ; $511b: $9e
	adc  h                                           ; $511c: $8c
	ld   d, b                                        ; $511d: $50
	adc  h                                           ; $511e: $8c
	ld   d, b                                        ; $511f: $50
	dec  c                                           ; $5120: $0d
	halt                                             ; $5121: $76
	ld   d, d                                        ; $5122: $52
	ld   [hl], c                                     ; $5123: $71
	ld   l, l                                        ; $5124: $6d
	halt                                             ; $5125: $76
	ld   h, c                                        ; $5126: $61
	sbc  e                                           ; $5127: $9b
	ld   e, c                                        ; $5128: $59
	ld   a, b                                        ; $5129: $78
	sbc  a                                           ; $512a: $9f
	dec  c                                           ; $512b: $0d
	nop                                              ; $512c: $00
	ld   a, [bc]                                     ; $512d: $0a
	ld   bc, $5d76                                   ; $512e: $01 $76 $5d
	ld   a, c                                        ; $5131: $79
	ld   [bc], a                                     ; $5132: $02
	jr   z, jr_05e_5187                              ; $5133: $28 $52

	dec  b                                           ; $5135: $05
	jr   nz, jr_05e_50c8                             ; $5136: $20 $90

	ld   [bc], a                                     ; $5138: $02
	jp   nz, Jump_05e_7859                           ; $5139: $c2 $59 $78

	ld   d, d                                        ; $513c: $52
	ld   h, l                                        ; $513d: $65
	rst  $38                                         ; $513e: $ff
	rst  $38                                         ; $513f: $ff
	dec  c                                           ; $5140: $0d
	ld   e, c                                        ; $5141: $59
	halt                                             ; $5142: $76
	ld   d, d                                        ; $5143: $52
	ld   [hl], c                                     ; $5144: $71
	ld   [hl], h                                     ; $5145: $74
	sbc  [hl]                                        ; $5146: $9e
	ld   d, d                                        ; $5147: $52
	ld   d, d                                        ; $5148: $52
	halt                                             ; $5149: $76
	ld   d, d                                        ; $514a: $52
	ld   d, h                                        ; $514b: $54
	dec  b                                           ; $514c: $05
	jr   nz, jr_05e_50df                             ; $514d: $20 $90

	dec  c                                           ; $514f: $0d
	ld   [bc], a                                     ; $5150: $02
	jp   nz, Jump_05e_7859                           ; $5151: $c2 $59 $78

	ld   d, d                                        ; $5154: $52
	ld   a, b                                        ; $5155: $78
	sbc  a                                           ; $5156: $9f
	dec  c                                           ; $5157: $0d
	nop                                              ; $5158: $00
	ld   a, [bc]                                     ; $5159: $0a
	ld   b, $1c                                      ; $515a: $06 $1c
	ld   a, [bc]                                     ; $515c: $0a
	ld   bc, $cf02                                   ; $515d: $01 $02 $cf
	dec  b                                           ; $5160: $05
	ld   a, [de]                                     ; $5161: $1a
	ld   a, h                                        ; $5162: $7c
	sbc  [hl]                                        ; $5163: $9e
	ld   [$5d00], sp                                 ; $5164: $08 $00 $5d
	and  c                                           ; $5167: $a1
	dec  c                                           ; $5168: $0d
	add  [hl]                                        ; $5169: $86
	ld   a, h                                        ; $516a: $7c
	inc  b                                           ; $516b: $04
	ld   d, a                                        ; $516c: $57
	inc  b                                           ; $516d: $04
	ld   h, e                                        ; $516e: $63
	ld   a, l                                        ; $516f: $7d
	rst  $38                                         ; $5170: $ff
	rst  $38                                         ; $5171: $ff
	dec  c                                           ; $5172: $0d
	ld   d, b                                        ; $5173: $50
	adc  h                                           ; $5174: $8c
	sbc  b                                           ; $5175: $98
	sub  [hl]                                        ; $5176: $96
	ld   e, l                                        ; $5177: $5d
	ld   a, b                                        ; $5178: $78
	ld   d, d                                        ; $5179: $52
	ld   a, b                                        ; $517a: $78
	sbc  a                                           ; $517b: $9f
	dec  c                                           ; $517c: $0d
	nop                                              ; $517d: $00
	ld   a, [bc]                                     ; $517e: $0a
	ld   bc, $7190                                   ; $517f: $01 $90 $71
	halt                                             ; $5182: $76
	ld   [bc], a                                     ; $5183: $02
	ld   a, [de]                                     ; $5184: $1a
	inc  bc                                          ; $5185: $03
	ld   l, e                                        ; $5186: $6b

jr_05e_5187:
	ld   a, h                                        ; $5187: $7c
	ld   [bc], a                                     ; $5188: $02
	and  c                                           ; $5189: $a1
	inc  bc                                          ; $518a: $03
	and  b                                           ; $518b: $a0
	ld   l, a                                        ; $518c: $6f
	and  b                                           ; $518d: $a0
	dec  c                                           ; $518e: $0d
	ld   [bc], a                                     ; $518f: $02
	ld   h, l                                        ; $5190: $65
	ld   d, [hl]                                     ; $5191: $56
	ld   [hl], h                                     ; $5192: $74
	ld   [bc], a                                     ; $5193: $02
	ld   a, a                                        ; $5194: $7f
	inc  b                                           ; $5195: $04
	dec  de                                          ; $5196: $1b
	ld   h, l                                        ; $5197: $65
	ld   l, l                                        ; $5198: $6d
	adc  c                                           ; $5199: $89
	ld   d, h                                        ; $519a: $54
	ld   e, d                                        ; $519b: $5a
	ld   d, d                                        ; $519c: $52
	ld   d, d                                        ; $519d: $52
	halt                                             ; $519e: $76
	dec  c                                           ; $519f: $0d
	dec  b                                           ; $51a0: $05
	pop  de                                          ; $51a1: $d1
	ld   d, h                                        ; $51a2: $54
	ld   l, h                                        ; $51a3: $6c
	sbc  a                                           ; $51a4: $9f
	dec  c                                           ; $51a5: $0d
	nop                                              ; $51a6: $00
	ld   a, [bc]                                     ; $51a7: $0a
	ld   b, $1c                                      ; $51a8: $06 $1c
	ld   a, [bc]                                     ; $51aa: $0a
	ld   bc, $cf02                                   ; $51ab: $01 $02 $cf
	dec  b                                           ; $51ae: $05
	ld   a, [de]                                     ; $51af: $1a
	ld   a, h                                        ; $51b0: $7c
	sbc  [hl]                                        ; $51b1: $9e
	ld   [$5d00], sp                                 ; $51b2: $08 $00 $5d
	and  c                                           ; $51b5: $a1
	dec  c                                           ; $51b6: $0d
	add  [hl]                                        ; $51b7: $86
	ld   a, h                                        ; $51b8: $7c
	inc  b                                           ; $51b9: $04
	ld   d, a                                        ; $51ba: $57
	inc  b                                           ; $51bb: $04
	ld   h, e                                        ; $51bc: $63
	ld   a, l                                        ; $51bd: $7d
	sbc  [hl]                                        ; $51be: $9e
	ld   e, c                                        ; $51bf: $59
	ld   a, b                                        ; $51c0: $78
	sbc  b                                           ; $51c1: $98
	ld   d, d                                        ; $51c2: $52
	ld   d, d                                        ; $51c3: $52
	dec  c                                           ; $51c4: $0d
	halt                                             ; $51c5: $76
	dec  b                                           ; $51c6: $05
	pop  de                                          ; $51c7: $d1
	ld   d, h                                        ; $51c8: $54
	ld   l, h                                        ; $51c9: $6c
	sbc  a                                           ; $51ca: $9f
	dec  c                                           ; $51cb: $0d
	nop                                              ; $51cc: $00
	ld   a, [bc]                                     ; $51cd: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $51ce: $01 $02 $ca
	sub  b                                           ; $51d1: $90
	ld   l, e                                        ; $51d2: $6b
	sbc  d                                           ; $51d3: $9a
	ld   a, c                                        ; $51d4: $79
	ld   [bc], a                                     ; $51d5: $02
	add  hl, bc                                      ; $51d6: $09
	ld   d, [hl]                                     ; $51d7: $56
	sub  a                                           ; $51d8: $97
	sbc  d                                           ; $51d9: $9a
	sbc  c                                           ; $51da: $99
	sub  [hl]                                        ; $51db: $96
	ld   d, h                                        ; $51dc: $54
	ld   a, c                                        ; $51dd: $79
	dec  c                                           ; $51de: $0d
	ld   e, d                                        ; $51df: $5a
	and  c                                           ; $51e0: $a1
	ld   a, [hl]                                     ; $51e1: $7e
	sbc  c                                           ; $51e2: $99
	and  c                                           ; $51e3: $a1
	ld   l, [hl]                                     ; $51e4: $6e
	ld   l, h                                        ; $51e5: $6c
	sbc  a                                           ; $51e6: $9f
	dec  c                                           ; $51e7: $0d
	nop                                              ; $51e8: $00
	ld   a, [bc]                                     ; $51e9: $0a
	ld   b, $1c                                      ; $51ea: $06 $1c
	ld   a, [bc]                                     ; $51ec: $0a
	rrca                                             ; $51ed: $0f
	nop                                              ; $51ee: $00
	ld   bc, $ac01                                   ; $51ef: $01 $01 $ac
	push af                                          ; $51f2: $f5
	bit  4, e                                        ; $51f3: $cb $63
	and  c                                           ; $51f5: $a1
	ld   a, h                                        ; $51f6: $7c
	inc  b                                           ; $51f7: $04
	ld   l, l                                        ; $51f8: $6d
	add  [hl]                                        ; $51f9: $86
	ld   a, h                                        ; $51fa: $7c
	inc  b                                           ; $51fb: $04
	ld   d, a                                        ; $51fc: $57
	inc  b                                           ; $51fd: $04
	ld   h, e                                        ; $51fe: $63
	ld   [hl], c                                     ; $51ff: $71
	ld   [hl], h                                     ; $5200: $74
	dec  c                                           ; $5201: $0d
	ld   [hl], a                                     ; $5202: $77
	ld   d, h                                        ; $5203: $54
	ld   a, b                                        ; $5204: $78
	and  c                                           ; $5205: $a1
	ld   [hl], l                                     ; $5206: $75

jr_05e_5207:
	ld   h, l                                        ; $5207: $65
	sub  l                                           ; $5208: $95
	ld   d, h                                        ; $5209: $54
	ld   e, c                                        ; $520a: $59
	ld   sp, hl                                      ; $520b: $f9
	dec  c                                           ; $520c: $0d
	nop                                              ; $520d: $00
	ld   a, [bc]                                     ; $520e: $0a
	rrca                                             ; $520f: $0f
	add  hl, bc                                      ; $5210: $09
	nop                                              ; $5211: $00
	ld   bc, $8e83                                   ; $5212: $01 $83 $8e
	sbc  [hl]                                        ; $5215: $9e
	ld   l, e                                        ; $5216: $6b
	ld   d, h                                        ; $5217: $54
	ld   l, [hl]                                     ; $5218: $6e
	ld   a, b                                        ; $5219: $78
	rst  $38                                         ; $521a: $ff
	rst  $38                                         ; $521b: $ff
	dec  c                                           ; $521c: $0d
	nop                                              ; $521d: $00
	ld   a, [bc]                                     ; $521e: $0a
	rlca                                             ; $521f: $07
	adc  [hl]                                        ; $5220: $8e
	add  hl, bc                                      ; $5221: $09
	inc  bc                                          ; $5222: $03
	ld   d, $01                                      ; $5223: $16 $01
	ld   [hl], e                                     ; $5225: $73
	inc  hl                                          ; $5226: $23
	nop                                              ; $5227: $00
	rlca                                             ; $5228: $07
	db   $db                                         ; $5229: $db
	add  hl, bc                                      ; $522a: $09
	inc  bc                                          ; $522b: $03
	ld   d, $01                                      ; $522c: $16 $01
	call nz, $0025                                   ; $522e: $c4 $25 $00
	ld   bc, $f5ac                                   ; $5231: $01 $ac $f5
	bit  7, h                                        ; $5234: $cb $7c
	sbc  [hl]                                        ; $5236: $9e
	ld   [$5d00], sp                                 ; $5237: $08 $00 $5d
	and  c                                           ; $523a: $a1
	dec  c                                           ; $523b: $0d
	add  [hl]                                        ; $523c: $86
	ld   a, h                                        ; $523d: $7c
	inc  b                                           ; $523e: $04
	ld   d, a                                        ; $523f: $57
	inc  b                                           ; $5240: $04
	ld   h, e                                        ; $5241: $63
	ld   a, l                                        ; $5242: $7d
	sbc  [hl]                                        ; $5243: $9e
	adc  h                                           ; $5244: $8c
	ld   d, b                                        ; $5245: $50
	adc  h                                           ; $5246: $8c
	ld   d, b                                        ; $5247: $50
	dec  c                                           ; $5248: $0d
	halt                                             ; $5249: $76
	ld   d, d                                        ; $524a: $52
	ld   [hl], c                                     ; $524b: $71
	ld   l, l                                        ; $524c: $6d
	halt                                             ; $524d: $76
	ld   h, c                                        ; $524e: $61
	sbc  e                                           ; $524f: $9b
	ld   e, c                                        ; $5250: $59
	ld   a, b                                        ; $5251: $78
	sbc  a                                           ; $5252: $9f
	dec  c                                           ; $5253: $0d
	nop                                              ; $5254: $00
	ld   a, [bc]                                     ; $5255: $0a
	ld   bc, $5d76                                   ; $5256: $01 $76 $5d
	ld   a, c                                        ; $5259: $79
	ld   [bc], a                                     ; $525a: $02
	jr   z, jr_05e_52af                              ; $525b: $28 $52

	dec  b                                           ; $525d: $05
	jr   nz, @-$6e                                   ; $525e: $20 $90

	ld   [bc], a                                     ; $5260: $02
	jp   nz, Jump_05e_7859                           ; $5261: $c2 $59 $78

	ld   d, d                                        ; $5264: $52
	ld   h, l                                        ; $5265: $65
	rst  $38                                         ; $5266: $ff
	rst  $38                                         ; $5267: $ff
	dec  c                                           ; $5268: $0d
	ld   e, c                                        ; $5269: $59
	halt                                             ; $526a: $76
	ld   d, d                                        ; $526b: $52
	ld   [hl], c                                     ; $526c: $71
	ld   [hl], h                                     ; $526d: $74
	sbc  [hl]                                        ; $526e: $9e
	ld   d, d                                        ; $526f: $52
	ld   d, d                                        ; $5270: $52
	halt                                             ; $5271: $76
	ld   d, d                                        ; $5272: $52
	ld   d, h                                        ; $5273: $54
	dec  b                                           ; $5274: $05
	jr   nz, jr_05e_5207                             ; $5275: $20 $90

	dec  c                                           ; $5277: $0d
	ld   [bc], a                                     ; $5278: $02
	jp   nz, Jump_05e_7859                           ; $5279: $c2 $59 $78

	ld   d, d                                        ; $527c: $52
	ld   a, b                                        ; $527d: $78
	sbc  a                                           ; $527e: $9f
	dec  c                                           ; $527f: $0d
	nop                                              ; $5280: $00
	ld   a, [bc]                                     ; $5281: $0a
	ld   b, $1c                                      ; $5282: $06 $1c
	ld   a, [bc]                                     ; $5284: $0a
	ld   bc, $f5ac                                   ; $5285: $01 $ac $f5
	bit  7, h                                        ; $5288: $cb $7c
	sbc  [hl]                                        ; $528a: $9e
	ld   [$5d00], sp                                 ; $528b: $08 $00 $5d
	and  c                                           ; $528e: $a1
	dec  c                                           ; $528f: $0d
	add  [hl]                                        ; $5290: $86
	ld   a, h                                        ; $5291: $7c
	inc  b                                           ; $5292: $04
	ld   d, a                                        ; $5293: $57
	inc  b                                           ; $5294: $04
	ld   h, e                                        ; $5295: $63
	ld   a, l                                        ; $5296: $7d
	rst  $38                                         ; $5297: $ff
	rst  $38                                         ; $5298: $ff
	dec  c                                           ; $5299: $0d
	ld   d, b                                        ; $529a: $50
	adc  h                                           ; $529b: $8c
	sbc  b                                           ; $529c: $98
	sub  [hl]                                        ; $529d: $96
	ld   e, l                                        ; $529e: $5d
	ld   a, b                                        ; $529f: $78
	ld   d, d                                        ; $52a0: $52
	ld   a, b                                        ; $52a1: $78
	sbc  a                                           ; $52a2: $9f
	dec  c                                           ; $52a3: $0d
	nop                                              ; $52a4: $00
	ld   a, [bc]                                     ; $52a5: $0a
	ld   bc, $7190                                   ; $52a6: $01 $90 $71
	halt                                             ; $52a9: $76
	ld   [bc], a                                     ; $52aa: $02
	ld   a, [de]                                     ; $52ab: $1a
	inc  bc                                          ; $52ac: $03
	ld   l, e                                        ; $52ad: $6b
	ld   a, h                                        ; $52ae: $7c

jr_05e_52af:
	ld   [bc], a                                     ; $52af: $02
	and  c                                           ; $52b0: $a1
	inc  bc                                          ; $52b1: $03
	and  b                                           ; $52b2: $a0
	ld   l, a                                        ; $52b3: $6f
	and  b                                           ; $52b4: $a0
	dec  c                                           ; $52b5: $0d
	ld   [bc], a                                     ; $52b6: $02
	ld   h, l                                        ; $52b7: $65
	ld   d, [hl]                                     ; $52b8: $56
	ld   [hl], h                                     ; $52b9: $74
	ld   [bc], a                                     ; $52ba: $02
	ld   a, a                                        ; $52bb: $7f
	inc  b                                           ; $52bc: $04
	dec  de                                          ; $52bd: $1b
	ld   h, l                                        ; $52be: $65
	ld   l, l                                        ; $52bf: $6d
	adc  c                                           ; $52c0: $89
	ld   d, h                                        ; $52c1: $54
	ld   e, d                                        ; $52c2: $5a
	ld   d, d                                        ; $52c3: $52
	ld   d, d                                        ; $52c4: $52
	halt                                             ; $52c5: $76
	dec  c                                           ; $52c6: $0d
	dec  b                                           ; $52c7: $05
	pop  de                                          ; $52c8: $d1
	ld   d, h                                        ; $52c9: $54
	ld   l, h                                        ; $52ca: $6c
	sbc  a                                           ; $52cb: $9f
	dec  c                                           ; $52cc: $0d
	nop                                              ; $52cd: $00
	ld   a, [bc]                                     ; $52ce: $0a
	ld   b, $1c                                      ; $52cf: $06 $1c
	ld   a, [bc]                                     ; $52d1: $0a
	ld   bc, $f5ac                                   ; $52d2: $01 $ac $f5
	bit  7, h                                        ; $52d5: $cb $7c
	sbc  [hl]                                        ; $52d7: $9e
	ld   [$5d00], sp                                 ; $52d8: $08 $00 $5d
	and  c                                           ; $52db: $a1
	dec  c                                           ; $52dc: $0d
	add  [hl]                                        ; $52dd: $86
	ld   a, h                                        ; $52de: $7c
	inc  b                                           ; $52df: $04
	ld   d, a                                        ; $52e0: $57
	inc  b                                           ; $52e1: $04
	ld   h, e                                        ; $52e2: $63
	ld   a, l                                        ; $52e3: $7d
	sbc  [hl]                                        ; $52e4: $9e
	ld   e, c                                        ; $52e5: $59
	ld   a, b                                        ; $52e6: $78
	sbc  b                                           ; $52e7: $98
	ld   d, d                                        ; $52e8: $52
	ld   d, d                                        ; $52e9: $52
	dec  c                                           ; $52ea: $0d
	halt                                             ; $52eb: $76
	dec  b                                           ; $52ec: $05
	pop  de                                          ; $52ed: $d1
	ld   d, h                                        ; $52ee: $54
	ld   l, h                                        ; $52ef: $6c
	sbc  a                                           ; $52f0: $9f
	dec  c                                           ; $52f1: $0d
	nop                                              ; $52f2: $00
	ld   a, [bc]                                     ; $52f3: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $52f4: $01 $02 $ca
	sub  b                                           ; $52f7: $90
	ld   l, e                                        ; $52f8: $6b
	sbc  d                                           ; $52f9: $9a
	ld   a, c                                        ; $52fa: $79
	ld   [bc], a                                     ; $52fb: $02
	add  hl, bc                                      ; $52fc: $09
	ld   d, [hl]                                     ; $52fd: $56
	sub  a                                           ; $52fe: $97
	sbc  d                                           ; $52ff: $9a
	sbc  c                                           ; $5300: $99
	sub  [hl]                                        ; $5301: $96
	ld   d, h                                        ; $5302: $54
	ld   a, c                                        ; $5303: $79
	dec  c                                           ; $5304: $0d
	ld   e, d                                        ; $5305: $5a
	and  c                                           ; $5306: $a1
	ld   a, [hl]                                     ; $5307: $7e
	sbc  c                                           ; $5308: $99
	and  c                                           ; $5309: $a1
	ld   l, [hl]                                     ; $530a: $6e
	ld   l, h                                        ; $530b: $6c
	sbc  a                                           ; $530c: $9f
	dec  c                                           ; $530d: $0d
	nop                                              ; $530e: $00
	ld   a, [bc]                                     ; $530f: $0a
	ld   b, $1c                                      ; $5310: $06 $1c
	ld   a, [bc]                                     ; $5312: $0a
	rrca                                             ; $5313: $0f
	nop                                              ; $5314: $00
	ld   bc, $6b01                                   ; $5315: $01 $01 $6b
	ld   d, h                                        ; $5318: $54
	ld   [hl], l                                     ; $5319: $75
	ld   h, a                                        ; $531a: $67
	ld   e, c                                        ; $531b: $59
	rst  $38                                         ; $531c: $ff
	rst  $38                                         ; $531d: $ff
	dec  c                                           ; $531e: $0d
	ld   d, b                                        ; $531f: $50
	sbc  b                                           ; $5320: $98
	ld   e, d                                        ; $5321: $5a
	halt                                             ; $5322: $76
	ld   d, h                                        ; $5323: $54
	ld   h, d                                        ; $5324: $62
	ld   h, h                                        ; $5325: $64
	ld   d, d                                        ; $5326: $52
	adc  h                                           ; $5327: $8c
	ld   h, l                                        ; $5328: $65
	ld   l, l                                        ; $5329: $6d
	sbc  a                                           ; $532a: $9f
	dec  c                                           ; $532b: $0d
	nop                                              ; $532c: $00
	ld   a, [bc]                                     ; $532d: $0a
	rrca                                             ; $532e: $0f
	add  hl, bc                                      ; $532f: $09
	nop                                              ; $5330: $00
	ld   bc, $a154                                   ; $5331: $01 $54 $a1
	sbc  a                                           ; $5334: $9f
	dec  c                                           ; $5335: $0d
	ld   e, d                                        ; $5336: $5a
	and  c                                           ; $5337: $a1
	ld   a, [hl]                                     ; $5338: $7e
	sbc  d                                           ; $5339: $9a
	sub  [hl]                                        ; $533a: $96
	sbc  a                                           ; $533b: $9f
	dec  c                                           ; $533c: $0d
	nop                                              ; $533d: $00
	ld   a, [bc]                                     ; $533e: $0a
	nop                                              ; $533f: $00
	rrca                                             ; $5340: $0f
	nop                                              ; $5341: $00
	ld   bc, $5001                                   ; $5342: $01 $01 $50
	ld   a, h                                        ; $5345: $7c
	sbc  [hl]                                        ; $5346: $9e
	inc  bc                                          ; $5347: $03
	ld   l, l                                        ; $5348: $6d
	dec  b                                           ; $5349: $05
	add  hl, de                                      ; $534a: $19
	ld   a, h                                        ; $534b: $7c
	and  e                                           ; $534c: $a3
	jp   z, $a5d1                                    ; $534d: $ca $d1 $a5

	cp   d                                           ; $5350: $ba
	and  b                                           ; $5351: $a0
	dec  c                                           ; $5352: $0d
	ld   e, b                                        ; $5353: $58
	ld   [bc], a                                     ; $5354: $02
	add  b                                           ; $5355: $80
	ld   d, d                                        ; $5356: $52
	ld   h, l                                        ; $5357: $65
	ld   l, l                                        ; $5358: $6d
	ld   d, d                                        ; $5359: $52
	and  c                                           ; $535a: $a1
	ld   [hl], l                                     ; $535b: $75
	ld   h, a                                        ; $535c: $67
	ld   e, a                                        ; $535d: $5f
	ld   [hl], a                                     ; $535e: $77
	sbc  a                                           ; $535f: $9f
	dec  c                                           ; $5360: $0d
	nop                                              ; $5361: $00
	ld   a, [bc]                                     ; $5362: $0a
	rrca                                             ; $5363: $0f
	add  hl, bc                                      ; $5364: $09
	nop                                              ; $5365: $00
	ld   bc, $8e83                                   ; $5366: $01 $83 $8e
	sbc  [hl]                                        ; $5369: $9e
	ld   l, e                                        ; $536a: $6b
	ld   d, h                                        ; $536b: $54
	ld   l, [hl]                                     ; $536c: $6e
	ld   a, b                                        ; $536d: $78
	rst  $38                                         ; $536e: $ff
	rst  $38                                         ; $536f: $ff
	dec  c                                           ; $5370: $0d
	nop                                              ; $5371: $00
	ld   a, [bc]                                     ; $5372: $0a
	rlca                                             ; $5373: $07
	ld   b, d                                        ; $5374: $42
	dec  bc                                          ; $5375: $0b
	inc  bc                                          ; $5376: $03
	inc  hl                                          ; $5377: $23
	ld   bc, $237d                                   ; $5378: $01 $7d $23
	inc  bc                                          ; $537b: $03
	inc  h                                           ; $537c: $24
	ld   bc, $237d                                   ; $537d: $01 $7d $23
	inc  e                                           ; $5380: $1c
	inc  bc                                          ; $5381: $03
	dec  h                                           ; $5382: $25
	ld   bc, $237d                                   ; $5383: $01 $7d $23
	inc  e                                           ; $5386: $1c
	inc  bc                                          ; $5387: $03
	ld   [hl+], a                                    ; $5388: $22
	ld   bc, $237d                                   ; $5389: $01 $7d $23
	inc  e                                           ; $538c: $1c
	inc  bc                                          ; $538d: $03
	ld   hl, $7d01                                   ; $538e: $21 $01 $7d
	inc  hl                                          ; $5391: $23
	inc  e                                           ; $5392: $1c
	nop                                              ; $5393: $00
	rlca                                             ; $5394: $07
	or   [hl]                                        ; $5395: $b6
	dec  bc                                          ; $5396: $0b
	inc  bc                                          ; $5397: $03
	inc  hl                                          ; $5398: $23
	ld   bc, $259f                                   ; $5399: $01 $9f $25
	inc  bc                                          ; $539c: $03
	inc  h                                           ; $539d: $24
	ld   bc, $259f                                   ; $539e: $01 $9f $25
	inc  e                                           ; $53a1: $1c
	inc  bc                                          ; $53a2: $03
	dec  h                                           ; $53a3: $25
	ld   bc, $259f                                   ; $53a4: $01 $9f $25
	inc  e                                           ; $53a7: $1c
	inc  bc                                          ; $53a8: $03
	ld   [hl+], a                                    ; $53a9: $22
	ld   bc, $259f                                   ; $53aa: $01 $9f $25
	inc  e                                           ; $53ad: $1c
	inc  bc                                          ; $53ae: $03
	ld   hl, $9f01                                   ; $53af: $21 $01 $9f
	dec  h                                           ; $53b2: $25
	inc  e                                           ; $53b3: $1c
	nop                                              ; $53b4: $00
	rlca                                             ; $53b5: $07
	ld   b, b                                        ; $53b6: $40
	inc  c                                           ; $53b7: $0c
	inc  bc                                          ; $53b8: $03
	inc  hl                                          ; $53b9: $23
	ld   bc, $238c                                   ; $53ba: $01 $8c $23
	inc  bc                                          ; $53bd: $03
	inc  h                                           ; $53be: $24
	ld   bc, $238c                                   ; $53bf: $01 $8c $23
	inc  e                                           ; $53c2: $1c
	inc  bc                                          ; $53c3: $03
	dec  h                                           ; $53c4: $25
	ld   bc, $238c                                   ; $53c5: $01 $8c $23
	inc  e                                           ; $53c8: $1c
	nop                                              ; $53c9: $00
	rlca                                             ; $53ca: $07
	ldh  a, [$0c]                                    ; $53cb: $f0 $0c
	inc  bc                                          ; $53cd: $03
	inc  h                                           ; $53ce: $24
	inc  bc                                          ; $53cf: $03
	inc  hl                                          ; $53d0: $23
	inc  hl                                          ; $53d1: $23
	inc  bc                                          ; $53d2: $03
	inc  h                                           ; $53d3: $24
	inc  bc                                          ; $53d4: $03
	dec  h                                           ; $53d5: $25
	inc  hl                                          ; $53d6: $23
	inc  e                                           ; $53d7: $1c
	inc  bc                                          ; $53d8: $03
	inc  h                                           ; $53d9: $24
	inc  bc                                          ; $53da: $03
	ld   [hl+], a                                    ; $53db: $22
	inc  hl                                          ; $53dc: $23
	inc  e                                           ; $53dd: $1c
	inc  bc                                          ; $53de: $03
	inc  h                                           ; $53df: $24
	inc  bc                                          ; $53e0: $03
	ld   hl, $1c23                                   ; $53e1: $21 $23 $1c
	nop                                              ; $53e4: $00
	rlca                                             ; $53e5: $07
	adc  h                                           ; $53e6: $8c
	dec  c                                           ; $53e7: $0d
	inc  bc                                          ; $53e8: $03
	dec  h                                           ; $53e9: $25
	inc  bc                                          ; $53ea: $03
	inc  hl                                          ; $53eb: $23
	inc  hl                                          ; $53ec: $23
	inc  bc                                          ; $53ed: $03
	dec  h                                           ; $53ee: $25
	inc  bc                                          ; $53ef: $03
	inc  h                                           ; $53f0: $24
	inc  hl                                          ; $53f1: $23
	inc  e                                           ; $53f2: $1c
	inc  bc                                          ; $53f3: $03
	dec  h                                           ; $53f4: $25
	inc  bc                                          ; $53f5: $03
	ld   [hl+], a                                    ; $53f6: $22
	inc  hl                                          ; $53f7: $23
	inc  e                                           ; $53f8: $1c
	inc  bc                                          ; $53f9: $03
	dec  h                                           ; $53fa: $25
	inc  bc                                          ; $53fb: $03
	ld   hl, $1c23                                   ; $53fc: $21 $23 $1c
	nop                                              ; $53ff: $00
	rlca                                             ; $5400: $07
	dec  l                                           ; $5401: $2d
	ld   c, $03                                      ; $5402: $0e $03
	ld   [hl+], a                                    ; $5404: $22
	inc  bc                                          ; $5405: $03
	inc  hl                                          ; $5406: $23
	inc  hl                                          ; $5407: $23
	inc  bc                                          ; $5408: $03
	ld   [hl+], a                                    ; $5409: $22
	inc  bc                                          ; $540a: $03
	inc  h                                           ; $540b: $24
	inc  hl                                          ; $540c: $23
	inc  e                                           ; $540d: $1c
	inc  bc                                          ; $540e: $03
	ld   [hl+], a                                    ; $540f: $22
	inc  bc                                          ; $5410: $03
	dec  h                                           ; $5411: $25
	inc  hl                                          ; $5412: $23
	inc  e                                           ; $5413: $1c
	inc  bc                                          ; $5414: $03
	ld   [hl+], a                                    ; $5415: $22
	inc  bc                                          ; $5416: $03
	ld   hl, $1c23                                   ; $5417: $21 $23 $1c
	nop                                              ; $541a: $00
	rlca                                             ; $541b: $07
	ld   h, a                                        ; $541c: $67
	rrca                                             ; $541d: $0f
	inc  bc                                          ; $541e: $03
	inc  hl                                          ; $541f: $23
	inc  bc                                          ; $5420: $03
	ld   [hl+], a                                    ; $5421: $22
	inc  hl                                          ; $5422: $23
	inc  bc                                          ; $5423: $03
	inc  hl                                          ; $5424: $23
	inc  bc                                          ; $5425: $03
	inc  h                                           ; $5426: $24
	inc  hl                                          ; $5427: $23
	inc  e                                           ; $5428: $1c
	inc  bc                                          ; $5429: $03
	inc  hl                                          ; $542a: $23
	inc  bc                                          ; $542b: $03
	ld   [hl+], a                                    ; $542c: $22
	inc  hl                                          ; $542d: $23
	inc  e                                           ; $542e: $1c
	inc  bc                                          ; $542f: $03
	inc  hl                                          ; $5430: $23
	inc  bc                                          ; $5431: $03
	ld   hl, $1c23                                   ; $5432: $21 $23 $1c
	nop                                              ; $5435: $00
	ld   b, $c3                                      ; $5436: $06 $c3
	ld   c, $0f                                      ; $5438: $0e $0f
	add  hl, bc                                      ; $543a: $09
	nop                                              ; $543b: $00
	ld   bc, wGameResultsReturnSubstate                                   ; $543c: $01 $02 $ca
	ld   a, h                                        ; $543f: $7c
	inc  b                                           ; $5440: $04
	ld   a, d                                        ; $5441: $7a
	ld   [bc], a                                     ; $5442: $02
	ld   a, e                                        ; $5443: $7b
	sbc  [hl]                                        ; $5444: $9e
	and  e                                           ; $5445: $a3
	jp   z, $a5d1                                    ; $5446: $ca $d1 $a5

	cp   d                                           ; $5449: $ba
	ld   d, d                                        ; $544a: $52
	ld   l, d                                        ; $544b: $6a
	and  c                                           ; $544c: $a1
	ld   a, c                                        ; $544d: $79
	dec  c                                           ; $544e: $0d
	sub  b                                           ; $544f: $90
	ld   [hl], c                                     ; $5450: $71
	halt                                             ; $5451: $76
	ld   l, a                                        ; $5452: $6f
	sub  c                                           ; $5453: $91
	and  c                                           ; $5454: $a1
	halt                                             ; $5455: $76
	inc  bc                                          ; $5456: $03
	ld   l, l                                        ; $5457: $6d
	dec  b                                           ; $5458: $05
	add  hl, de                                      ; $5459: $19
	ld   a, c                                        ; $545a: $79
	dec  c                                           ; $545b: $0d
	inc  bc                                          ; $545c: $03
	add  b                                           ; $545d: $80
	ld   l, l                                        ; $545e: $6d
	adc  c                                           ; $545f: $89
	ld   d, h                                        ; $5460: $54

Jump_05e_5461:
	ld   e, d                                        ; $5461: $5a
	ld   d, d                                        ; $5462: $52
	ld   d, d                                        ; $5463: $52
	ld   a, b                                        ; $5464: $78
	sbc  a                                           ; $5465: $9f
	dec  c                                           ; $5466: $0d
	nop                                              ; $5467: $00
	ld   a, [bc]                                     ; $5468: $0a
	ld   bc, $d303                                   ; $5469: $01 $03 $d3
	dec  b                                           ; $546c: $05
	ld   a, [bc]                                     ; $546d: $0a
	sub  b                                           ; $546e: $90
	ld   l, c                                        ; $546f: $69
	ld   l, b                                        ; $5470: $68
	ld   a, c                                        ; $5471: $79
	ld   [bc], a                                     ; $5472: $02
	reti                                             ; $5473: $d9


	ld   [bc], a                                     ; $5474: $02
	ld   h, e                                        ; $5475: $63
	ld   l, [hl]                                     ; $5476: $6e
	ld   e, a                                        ; $5477: $5f
	dec  c                                           ; $5478: $0d
	sub  b                                           ; $5479: $90
	halt                                             ; $547a: $76
	adc  a                                           ; $547b: $8f

Jump_05e_547c:
	sbc  c                                           ; $547c: $99
	sub  [hl]                                        ; $547d: $96
	ld   d, h                                        ; $547e: $54
	ld   [hl], l                                     ; $547f: $75
	ld   a, l                                        ; $5480: $7d
	pop  bc                                          ; $5481: $c1
	db   $e3                                         ; $5482: $e3
	ld   l, [hl]                                     ; $5483: $6e
	ld   l, h                                        ; $5484: $6c
	sbc  a                                           ; $5485: $9f
	dec  c                                           ; $5486: $0d
	nop                                              ; $5487: $00
	ld   a, [bc]                                     ; $5488: $0a
	rrca                                             ; $5489: $0f
	nop                                              ; $548a: $00
	ld   bc, $7d01                                   ; $548b: $01 $01 $7d
	sbc  [hl]                                        ; $548e: $9e
	ld   a, l                                        ; $548f: $7d
	ld   d, d                                        ; $5490: $52
	sbc  a                                           ; $5491: $9f
	dec  c                                           ; $5492: $0d
	sbc  l                                           ; $5493: $9d
	ld   e, c                                        ; $5494: $59
	sbc  b                                           ; $5495: $98
	adc  h                                           ; $5496: $8c
	ld   h, l                                        ; $5497: $65
	ld   l, l                                        ; $5498: $6d
	ld   a, [$0dfa]                                  ; $5499: $fa $fa $0d
	ld   d, b                                        ; $549c: $50
	sbc  b                                           ; $549d: $98
	ld   e, d                                        ; $549e: $5a
	halt                                             ; $549f: $76
	ld   d, h                                        ; $54a0: $54
	ld   h, d                                        ; $54a1: $62
	ld   h, h                                        ; $54a2: $64
	ld   d, d                                        ; $54a3: $52
	adc  h                                           ; $54a4: $8c
	ld   h, a                                        ; $54a5: $67
	ld   a, [$000d]                                  ; $54a6: $fa $0d $00
	ld   a, [bc]                                     ; $54a9: $0a
	ld   b, $08                                      ; $54aa: $06 $08
	db   $10                                         ; $54ac: $10
	inc  e                                           ; $54ad: $1c
	add  hl, bc                                      ; $54ae: $09
	ld   bc, $0101                                   ; $54af: $01 $01 $01
	ld   [$5d00], sp                                 ; $54b2: $08 $00 $5d
	and  c                                           ; $54b5: $a1
	ld   a, l                                        ; $54b6: $7d
	dec  c                                           ; $54b7: $0d
	ld   [bc], a                                     ; $54b8: $02
	and  l                                           ; $54b9: $a5
	ld   a, h                                        ; $54ba: $7c
	halt                                             ; $54bb: $76
	ld   h, c                                        ; $54bc: $61
	sbc  e                                           ; $54bd: $9b
	ld   [bc], a                                     ; $54be: $02
	sbc  l                                           ; $54bf: $9d
	ld   d, h                                        ; $54c0: $54
	ld   h, c                                        ; $54c1: $61
	halt                                             ; $54c2: $76
	ld   a, b                                        ; $54c3: $78
	ld   h, l                                        ; $54c4: $65
	ld   l, [hl]                                     ; $54c5: $6e
	ld   a, b                                        ; $54c6: $78
	sbc  a                                           ; $54c7: $9f
	dec  c                                           ; $54c8: $0d
	nop                                              ; $54c9: $00
	ld   a, [bc]                                     ; $54ca: $0a
	ld   bc, $7c77                                   ; $54cb: $01 $77 $7c
	inc  bc                                          ; $54ce: $03
	ld   l, l                                        ; $54cf: $6d
	dec  b                                           ; $54d0: $05
	add  hl, de                                      ; $54d1: $19
	sub  b                                           ; $54d2: $90
	adc  h                                           ; $54d3: $8c
	and  c                                           ; $54d4: $a1
	add  a                                           ; $54d5: $87
	and  c                                           ; $54d6: $a1
	ld   a, b                                        ; $54d7: $78
	ld   e, l                                        ; $54d8: $5d
	dec  c                                           ; $54d9: $0d
	ld   e, d                                        ; $54da: $5a
	and  c                                           ; $54db: $a1
	ld   a, [hl]                                     ; $54dc: $7e
	ld   [hl], c                                     ; $54dd: $71
	ld   [hl], h                                     ; $54de: $74
	sub  d                                           ; $54df: $92
	ld   [hl], c                                     ; $54e0: $71
	ld   [hl], h                                     ; $54e1: $74
	ld   d, d                                        ; $54e2: $52
	sbc  c                                           ; $54e3: $99
	dec  c                                           ; $54e4: $0d
	sub  [hl]                                        ; $54e5: $96
	ld   d, h                                        ; $54e6: $54
	ld   l, [hl]                                     ; $54e7: $6e
	ld   h, l                                        ; $54e8: $65
	rst  $38                                         ; $54e9: $ff
	rst  $38                                         ; $54ea: $ff
	dec  c                                           ; $54eb: $0d
	nop                                              ; $54ec: $00
	ld   a, [bc]                                     ; $54ed: $0a
	ld   bc, $9a61                                   ; $54ee: $01 $61 $9a
	ld   e, c                                        ; $54f1: $59
	sub  a                                           ; $54f2: $97
	sub  b                                           ; $54f3: $90
	sbc  [hl]                                        ; $54f4: $9e
	ld   h, c                                        ; $54f5: $61
	ld   a, h                                        ; $54f6: $7c
	inc  bc                                          ; $54f7: $03
	cp   $03                                         ; $54f8: $fe $03
	add  [hl]                                        ; $54fa: $86
	ld   [hl], l                                     ; $54fb: $75
	dec  c                                           ; $54fc: $0d
	ld   d, d                                        ; $54fd: $52
	ld   e, a                                        ; $54fe: $5f
	ld   a, [hl]                                     ; $54ff: $7e
	sbc  [hl]                                        ; $5500: $9e
	ld   [bc], a                                     ; $5501: $02
	sbc  l                                           ; $5502: $9d
	ld   d, h                                        ; $5503: $54
	ld   h, c                                        ; $5504: $61
	halt                                             ; $5505: $76
	ld   a, b                                        ; $5506: $78
	ld   h, l                                        ; $5507: $65
	ld   l, [hl]                                     ; $5508: $6e
	sbc  a                                           ; $5509: $9f
	dec  c                                           ; $550a: $0d
	nop                                              ; $550b: $00
	ld   a, [bc]                                     ; $550c: $0a
	rrca                                             ; $550d: $0f
	nop                                              ; $550e: $00
	ld   bc, $7d01                                   ; $550f: $01 $01 $7d
	ld   d, d                                        ; $5512: $52
	ld   a, [$500d]                                  ; $5513: $fa $0d $50
	sbc  b                                           ; $5516: $98
	ld   e, d                                        ; $5517: $5a
	halt                                             ; $5518: $76
	ld   d, h                                        ; $5519: $54
	ld   h, d                                        ; $551a: $62
	ld   h, h                                        ; $551b: $64
	ld   d, d                                        ; $551c: $52
	adc  h                                           ; $551d: $8c
	ld   h, a                                        ; $551e: $67
	ld   a, [$0dfa]                                  ; $551f: $fa $fa $0d
	ld   [bc], a                                     ; $5522: $02
	and  l                                           ; $5523: $a5
	ld   [bc], a                                     ; $5524: $02
	xor  d                                           ; $5525: $aa
	sub  b                                           ; $5526: $90
	sbc  [hl]                                        ; $5527: $9e
	ld   e, d                                        ; $5528: $5a
	and  c                                           ; $5529: $a1
	ld   a, [hl]                                     ; $552a: $7e
	sbc  b                                           ; $552b: $98
	adc  h                                           ; $552c: $8c
	ld   h, a                                        ; $552d: $67
	ld   [hl], c                                     ; $552e: $71
	ld   a, [$0dfa]                                  ; $552f: $fa $fa $0d
	nop                                              ; $5532: $00
	ld   a, [bc]                                     ; $5533: $0a
	ld   b, $08                                      ; $5534: $06 $08
	db   $10                                         ; $5536: $10
	rrca                                             ; $5537: $0f
	add  hl, bc                                      ; $5538: $09
	nop                                              ; $5539: $00
	ld   bc, $0008                                   ; $553a: $01 $08 $00
	ld   e, l                                        ; $553d: $5d
	and  c                                           ; $553e: $a1
	ld   a, l                                        ; $553f: $7d
	dec  c                                           ; $5540: $0d
	ld   [bc], a                                     ; $5541: $02
	jr   nc, jr_05e_5548                             ; $5542: $30 $04

	dec  de                                          ; $5544: $1b
	inc  b                                           ; $5545: $04
	ld   b, e                                        ; $5546: $43
	dec  b                                           ; $5547: $05

jr_05e_5548:
	ld   a, [bc]                                     ; $5548: $0a
	ld   a, h                                        ; $5549: $7c
	inc  b                                           ; $554a: $04
	ld   d, a                                        ; $554b: $57
	dec  b                                           ; $554c: $05
	add  hl, hl                                      ; $554d: $29
	ld   e, d                                        ; $554e: $5a
	inc  bc                                          ; $554f: $03
	ld   d, a                                        ; $5550: $57
	inc  b                                           ; $5551: $04
	dec  c                                           ; $5552: $0d
	inc  b                                           ; $5553: $04
	jr   nz, jr_05e_55cf                             ; $5554: $20 $79

	dec  c                                           ; $5556: $0d
	inc  bc                                          ; $5557: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5558: $cf
	ld   d, d                                        ; $5559: $52
	sub  [hl]                                        ; $555a: $96
	ld   d, h                                        ; $555b: $54
	ld   l, [hl]                                     ; $555c: $6e
	ld   a, b                                        ; $555d: $78
	sbc  a                                           ; $555e: $9f
	dec  c                                           ; $555f: $0d
	nop                                              ; $5560: $00
	ld   a, [bc]                                     ; $5561: $0a
	ld   bc, $5d63                                   ; $5562: $01 $63 $5d
	sub  a                                           ; $5565: $97
	ld   e, l                                        ; $5566: $5d
	and  c                                           ; $5567: $a1
	ld   a, h                                        ; $5568: $7c
	inc  bc                                          ; $5569: $03
	ld   l, l                                        ; $556a: $6d
	dec  b                                           ; $556b: $05
	add  hl, de                                      ; $556c: $19
	and  b                                           ; $556d: $a0
	dec  c                                           ; $556e: $0d
	ld   l, a                                        ; $556f: $6f
	sub  l                                           ; $5570: $95
	ld   [hl], c                                     ; $5571: $71
	halt                                             ; $5572: $76
	inc  b                                           ; $5573: $04
	rrca                                             ; $5574: $0f
	adc  a                                           ; $5575: $8f
	ld   a, c                                        ; $5576: $79
	halt                                             ; $5577: $76
	ld   [hl], c                                     ; $5578: $71
	ld   [hl], h                                     ; $5579: $74
	ld   e, b                                        ; $557a: $58
	ld   e, l                                        ; $557b: $5d
	halt                                             ; $557c: $76
	dec  c                                           ; $557d: $0d
	ld   d, d                                        ; $557e: $52
	ld   d, d                                        ; $557f: $52
	and  c                                           ; $5580: $a1
	ld   h, [hl]                                     ; $5581: $66
	sub  c                                           ; $5582: $91
	ld   a, b                                        ; $5583: $78
	ld   d, d                                        ; $5584: $52
	ld   e, c                                        ; $5585: $59
	ld   a, b                                        ; $5586: $78
	sbc  a                                           ; $5587: $9f
	dec  c                                           ; $5588: $0d
	nop                                              ; $5589: $00
	ld   a, [bc]                                     ; $558a: $0a
	ld   bc, $5d63                                   ; $558b: $01 $63 $5d
	sub  a                                           ; $558e: $97
	ld   e, l                                        ; $558f: $5d
	and  c                                           ; $5590: $a1
	ld   a, h                                        ; $5591: $7c
	inc  bc                                          ; $5592: $03
	ld   l, l                                        ; $5593: $6d
	dec  b                                           ; $5594: $05
	add  hl, de                                      ; $5595: $19
	ld   a, l                                        ; $5596: $7d
	sbc  [hl]                                        ; $5597: $9e
	dec  c                                           ; $5598: $0d
	inc  bc                                          ; $5599: $03
	ld   [hl], l                                     ; $559a: $75
	di                                               ; $559b: $f3
	ld   [bc], a                                     ; $559c: $02
	adc  h                                           ; $559d: $8c
	di                                               ; $559e: $f3
	inc  b                                           ; $559f: $04
	dec  c                                           ; $55a0: $0d
	db   $10                                         ; $55a1: $10
	halt                                             ; $55a2: $76
	sbc  [hl]                                        ; $55a3: $9e
	inc  bc                                          ; $55a4: $03
	ld   d, a                                        ; $55a5: $57
	ld   [hl], h                                     ; $55a6: $74
	ld   a, h                                        ; $55a7: $7c
	inc  b                                           ; $55a8: $04
	rst  JumpTable                                         ; $55a9: $df
	inc  bc                                          ; $55aa: $03
	and  [hl]                                        ; $55ab: $a6
	ld   e, d                                        ; $55ac: $5a
	dec  c                                           ; $55ad: $0d
	ld   [bc], a                                     ; $55ae: $02
	call nc, $5102                                   ; $55af: $d4 $02 $51
	ld   h, e                                        ; $55b2: $63
	sbc  d                                           ; $55b3: $9a
	sbc  c                                           ; $55b4: $99
	ld   e, c                                        ; $55b5: $59
	sub  a                                           ; $55b6: $97
	ld   a, e                                        ; $55b7: $7b
	sbc  a                                           ; $55b8: $9f
	dec  c                                           ; $55b9: $0d
	nop                                              ; $55ba: $00
	ld   a, [bc]                                     ; $55bb: $0a
	rrca                                             ; $55bc: $0f
	nop                                              ; $55bd: $00
	ld   bc, $7801                                   ; $55be: $01 $01 $78
	sbc  c                                           ; $55c1: $99
	adc  c                                           ; $55c2: $89
	ld   [hl], a                                     ; $55c3: $77
	rst  $38                                         ; $55c4: $ff
	rst  $38                                         ; $55c5: $ff
	dec  c                                           ; $55c6: $0d
	sbc  l                                           ; $55c7: $9d
	ld   e, c                                        ; $55c8: $59
	sbc  b                                           ; $55c9: $98
	adc  h                                           ; $55ca: $8c
	ld   h, l                                        ; $55cb: $65
	ld   l, l                                        ; $55cc: $6d
	sbc  [hl]                                        ; $55cd: $9e
	and  e                                           ; $55ce: $a3

jr_05e_55cf:
	jp   z, $a5d1                                    ; $55cf: $ca $d1 $a5

	cp   d                                           ; $55d2: $ba
	sbc  [hl]                                        ; $55d3: $9e
	dec  c                                           ; $55d4: $0d
	ld   d, b                                        ; $55d5: $50
	sbc  b                                           ; $55d6: $98
	ld   e, d                                        ; $55d7: $5a
	halt                                             ; $55d8: $76
	ld   d, h                                        ; $55d9: $54
	ld   h, d                                        ; $55da: $62
	ld   h, h                                        ; $55db: $64
	ld   d, d                                        ; $55dc: $52
	adc  h                                           ; $55dd: $8c
	ld   h, l                                        ; $55de: $65
	ld   l, l                                        ; $55df: $6d
	sbc  a                                           ; $55e0: $9f
	dec  c                                           ; $55e1: $0d
	nop                                              ; $55e2: $00
	ld   a, [bc]                                     ; $55e3: $0a
	ld   b, $08                                      ; $55e4: $06 $08
	db   $10                                         ; $55e6: $10
	rrca                                             ; $55e7: $0f
	add  hl, bc                                      ; $55e8: $09
	nop                                              ; $55e9: $00
	ld   bc, $0008                                   ; $55ea: $01 $08 $00
	ld   e, l                                        ; $55ed: $5d
	and  c                                           ; $55ee: $a1
	ld   a, l                                        ; $55ef: $7d
	dec  c                                           ; $55f0: $0d
	inc  bc                                          ; $55f1: $03
	and  [hl]                                        ; $55f2: $a6
	inc  bc                                          ; $55f3: $03
	ld   [hl], b                                     ; $55f4: $70
	ld   h, e                                        ; $55f5: $63
	ld   a, h                                        ; $55f6: $7c
	inc  b                                           ; $55f7: $04
	ld   d, a                                        ; $55f8: $57
	dec  b                                           ; $55f9: $05
	add  hl, hl                                      ; $55fa: $29
	ld   e, d                                        ; $55fb: $5a
	dec  c                                           ; $55fc: $0d
	inc  bc                                          ; $55fd: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55fe: $cf
	ld   d, d                                        ; $55ff: $52
	sub  [hl]                                        ; $5600: $96
	ld   d, h                                        ; $5601: $54
	ld   l, [hl]                                     ; $5602: $6e
	ld   a, b                                        ; $5603: $78
	sbc  a                                           ; $5604: $9f
	dec  c                                           ; $5605: $0d
	nop                                              ; $5606: $00
	ld   a, [bc]                                     ; $5607: $0a
	ld   bc, $8d67                                   ; $5608: $01 $67 $8d
	sbc  d                                           ; $560b: $9a
	ld   e, l                                        ; $560c: $5d
	and  c                                           ; $560d: $a1
	ld   a, h                                        ; $560e: $7c
	inc  bc                                          ; $560f: $03
	ld   l, l                                        ; $5610: $6d
	dec  b                                           ; $5611: $05
	add  hl, de                                      ; $5612: $19
	and  b                                           ; $5613: $a0
	dec  c                                           ; $5614: $0d
	ld   l, a                                        ; $5615: $6f
	sub  l                                           ; $5616: $95
	ld   [hl], c                                     ; $5617: $71
	halt                                             ; $5618: $76
	inc  b                                           ; $5619: $04
	rrca                                             ; $561a: $0f
	adc  a                                           ; $561b: $8f
	ld   a, c                                        ; $561c: $79
	halt                                             ; $561d: $76
	ld   [hl], c                                     ; $561e: $71
	ld   [hl], h                                     ; $561f: $74
	ld   e, b                                        ; $5620: $58
	ld   e, l                                        ; $5621: $5d
	halt                                             ; $5622: $76
	dec  c                                           ; $5623: $0d
	ld   d, d                                        ; $5624: $52
	ld   d, d                                        ; $5625: $52
	and  c                                           ; $5626: $a1
	ld   h, [hl]                                     ; $5627: $66
	sub  c                                           ; $5628: $91
	ld   a, b                                        ; $5629: $78
	ld   d, d                                        ; $562a: $52
	ld   e, c                                        ; $562b: $59
	ld   a, b                                        ; $562c: $78
	sbc  a                                           ; $562d: $9f
	dec  c                                           ; $562e: $0d
	nop                                              ; $562f: $00
	ld   a, [bc]                                     ; $5630: $0a
	ld   bc, $8d67                                   ; $5631: $01 $67 $8d
	sbc  d                                           ; $5634: $9a
	ld   e, l                                        ; $5635: $5d
	and  c                                           ; $5636: $a1
	ld   a, h                                        ; $5637: $7c
	inc  bc                                          ; $5638: $03
	ld   l, l                                        ; $5639: $6d
	dec  b                                           ; $563a: $05
	add  hl, de                                      ; $563b: $19
	ld   a, l                                        ; $563c: $7d
	dec  c                                           ; $563d: $0d
	inc  bc                                          ; $563e: $03
	and  [hl]                                        ; $563f: $a6
	inc  bc                                          ; $5640: $03
	ld   [hl], b                                     ; $5641: $70
	ld   h, e                                        ; $5642: $63
	ld   a, h                                        ; $5643: $7c
	ld   [bc], a                                     ; $5644: $02
	call nc, $5102                                   ; $5645: $d4 $02 $51
	ld   a, c                                        ; $5648: $79
	ld   a, l                                        ; $5649: $7d
	dec  c                                           ; $564a: $0d
	ld   d, h                                        ; $564b: $54
	ld   [hl], c                                     ; $564c: $71
	ld   [hl], h                                     ; $564d: $74
	ld   [hl], d                                     ; $564e: $72
	ld   e, a                                        ; $564f: $5f
	ld   l, [hl]                                     ; $5650: $6e
	ld   e, c                                        ; $5651: $59
	sub  a                                           ; $5652: $97
	ld   a, e                                        ; $5653: $7b
	sbc  a                                           ; $5654: $9f
	dec  c                                           ; $5655: $0d
	nop                                              ; $5656: $00
	ld   a, [bc]                                     ; $5657: $0a
	rrca                                             ; $5658: $0f
	nop                                              ; $5659: $00
	ld   bc, $7801                                   ; $565a: $01 $01 $78
	sbc  c                                           ; $565d: $99
	adc  c                                           ; $565e: $89
	ld   [hl], a                                     ; $565f: $77
	rst  $38                                         ; $5660: $ff
	rst  $38                                         ; $5661: $ff
	dec  c                                           ; $5662: $0d
	sbc  l                                           ; $5663: $9d
	ld   e, c                                        ; $5664: $59
	sbc  b                                           ; $5665: $98
	adc  h                                           ; $5666: $8c
	ld   h, l                                        ; $5667: $65
	ld   l, l                                        ; $5668: $6d
	sbc  [hl]                                        ; $5669: $9e
	and  e                                           ; $566a: $a3
	jp   z, $a5d1                                    ; $566b: $ca $d1 $a5

	cp   d                                           ; $566e: $ba
	sbc  [hl]                                        ; $566f: $9e
	dec  c                                           ; $5670: $0d
	ld   d, b                                        ; $5671: $50
	sbc  b                                           ; $5672: $98
	ld   e, d                                        ; $5673: $5a
	halt                                             ; $5674: $76
	ld   d, h                                        ; $5675: $54
	ld   h, d                                        ; $5676: $62
	ld   h, h                                        ; $5677: $64
	ld   d, d                                        ; $5678: $52
	adc  h                                           ; $5679: $8c
	ld   h, l                                        ; $567a: $65
	ld   l, l                                        ; $567b: $6d
	sbc  a                                           ; $567c: $9f
	dec  c                                           ; $567d: $0d
	nop                                              ; $567e: $00
	ld   a, [bc]                                     ; $567f: $0a
	ld   b, $08                                      ; $5680: $06 $08
	db   $10                                         ; $5682: $10
	rrca                                             ; $5683: $0f
	add  hl, bc                                      ; $5684: $09
	nop                                              ; $5685: $00
	ld   bc, $0008                                   ; $5686: $01 $08 $00
	ld   e, l                                        ; $5689: $5d
	and  c                                           ; $568a: $a1
	ld   a, l                                        ; $568b: $7d
	dec  c                                           ; $568c: $0d
	ld   b, $25                                      ; $568d: $06 $25
	inc  b                                           ; $568f: $04
	dec  bc                                          ; $5690: $0b
	ld   b, $80                                      ; $5691: $06 $80
	ld   a, h                                        ; $5693: $7c
	inc  b                                           ; $5694: $04
	ld   d, a                                        ; $5695: $57
	dec  b                                           ; $5696: $05
	add  hl, hl                                      ; $5697: $29
	ld   e, d                                        ; $5698: $5a
	dec  c                                           ; $5699: $0d
	inc  bc                                          ; $569a: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $569b: $cf
	ld   d, d                                        ; $569c: $52
	sub  [hl]                                        ; $569d: $96
	ld   d, h                                        ; $569e: $54
	ld   l, [hl]                                     ; $569f: $6e
	ld   a, b                                        ; $56a0: $78
	sbc  a                                           ; $56a1: $9f
	dec  c                                           ; $56a2: $0d
	nop                                              ; $56a3: $00
	ld   a, [bc]                                     ; $56a4: $0a
	ld   bc, $ecdf                                   ; $56a5: $01 $df $ec
	and  e                                           ; $56a8: $a3
	ld   a, h                                        ; $56a9: $7c
	inc  bc                                          ; $56aa: $03
	ld   l, l                                        ; $56ab: $6d
	dec  b                                           ; $56ac: $05
	add  hl, de                                      ; $56ad: $19
	and  b                                           ; $56ae: $a0
	dec  c                                           ; $56af: $0d
	ld   l, a                                        ; $56b0: $6f
	sub  l                                           ; $56b1: $95
	ld   [hl], c                                     ; $56b2: $71
	halt                                             ; $56b3: $76
	inc  b                                           ; $56b4: $04
	rrca                                             ; $56b5: $0f
	adc  a                                           ; $56b6: $8f
	ld   a, c                                        ; $56b7: $79
	halt                                             ; $56b8: $76
	ld   [hl], c                                     ; $56b9: $71
	ld   [hl], h                                     ; $56ba: $74
	ld   e, b                                        ; $56bb: $58
	ld   e, l                                        ; $56bc: $5d
	halt                                             ; $56bd: $76
	dec  c                                           ; $56be: $0d
	ld   d, d                                        ; $56bf: $52
	ld   d, d                                        ; $56c0: $52
	and  c                                           ; $56c1: $a1
	ld   h, [hl]                                     ; $56c2: $66
	sub  c                                           ; $56c3: $91
	ld   a, b                                        ; $56c4: $78
	ld   d, d                                        ; $56c5: $52
	ld   e, c                                        ; $56c6: $59
	ld   a, b                                        ; $56c7: $78
	sbc  a                                           ; $56c8: $9f
	dec  c                                           ; $56c9: $0d
	nop                                              ; $56ca: $00
	ld   a, [bc]                                     ; $56cb: $0a
	ld   bc, $ecdf                                   ; $56cc: $01 $df $ec
	and  e                                           ; $56cf: $a3
	ld   a, h                                        ; $56d0: $7c
	inc  bc                                          ; $56d1: $03
	ld   l, l                                        ; $56d2: $6d
	dec  b                                           ; $56d3: $05
	add  hl, de                                      ; $56d4: $19
	ld   a, l                                        ; $56d5: $7d
	inc  bc                                          ; $56d6: $03
	daa                                              ; $56d7: $27
	ld   [bc], a                                     ; $56d8: $02
	sub  c                                           ; $56d9: $91
	ld   l, [hl]                                     ; $56da: $6e
	ld   e, c                                        ; $56db: $59
	sub  a                                           ; $56dc: $97
	sbc  [hl]                                        ; $56dd: $9e
	dec  c                                           ; $56de: $0d
	ld   e, c                                        ; $56df: $59
	ld   a, b                                        ; $56e0: $78
	sbc  b                                           ; $56e1: $98
	ld   a, h                                        ; $56e2: $7c
	ld   b, $25                                      ; $56e3: $06 $25
	inc  b                                           ; $56e5: $04
	dec  bc                                          ; $56e6: $0b
	ld   b, $80                                      ; $56e7: $06 $80
	and  b                                           ; $56e9: $a0
	dec  c                                           ; $56ea: $0d
	inc  b                                           ; $56eb: $04
	rst  JumpTable                                         ; $56ec: $df
	ld   b, $85                                      ; $56ed: $06 $85
	ld   h, e                                        ; $56ef: $63
	sbc  d                                           ; $56f0: $9a
	sbc  c                                           ; $56f1: $99
	ld   e, c                                        ; $56f2: $59
	sub  a                                           ; $56f3: $97
	ld   a, e                                        ; $56f4: $7b
	sbc  a                                           ; $56f5: $9f
	dec  c                                           ; $56f6: $0d
	nop                                              ; $56f7: $00
	ld   a, [bc]                                     ; $56f8: $0a
	rrca                                             ; $56f9: $0f
	nop                                              ; $56fa: $00
	ld   bc, $7801                                   ; $56fb: $01 $01 $78
	sbc  c                                           ; $56fe: $99
	adc  c                                           ; $56ff: $89
	ld   [hl], a                                     ; $5700: $77
	rst  $38                                         ; $5701: $ff
	rst  $38                                         ; $5702: $ff
	dec  c                                           ; $5703: $0d
	sbc  l                                           ; $5704: $9d
	ld   e, c                                        ; $5705: $59
	sbc  b                                           ; $5706: $98
	adc  h                                           ; $5707: $8c
	ld   h, l                                        ; $5708: $65
	ld   l, l                                        ; $5709: $6d
	sbc  [hl]                                        ; $570a: $9e
	and  e                                           ; $570b: $a3
	jp   z, $a5d1                                    ; $570c: $ca $d1 $a5

	cp   d                                           ; $570f: $ba
	sbc  [hl]                                        ; $5710: $9e
	dec  c                                           ; $5711: $0d
	ld   d, b                                        ; $5712: $50
	sbc  b                                           ; $5713: $98
	ld   e, d                                        ; $5714: $5a
	halt                                             ; $5715: $76
	ld   d, h                                        ; $5716: $54
	ld   h, d                                        ; $5717: $62
	ld   h, h                                        ; $5718: $64
	ld   d, d                                        ; $5719: $52
	adc  h                                           ; $571a: $8c
	ld   h, l                                        ; $571b: $65
	ld   l, l                                        ; $571c: $6d
	sbc  a                                           ; $571d: $9f
	dec  c                                           ; $571e: $0d
	nop                                              ; $571f: $00
	ld   a, [bc]                                     ; $5720: $0a
	ld   b, $08                                      ; $5721: $06 $08
	db   $10                                         ; $5723: $10
	rrca                                             ; $5724: $0f
	add  hl, bc                                      ; $5725: $09
	nop                                              ; $5726: $00
	ld   bc, $0008                                   ; $5727: $01 $08 $00
	ld   e, l                                        ; $572a: $5d
	and  c                                           ; $572b: $a1
	ld   a, l                                        ; $572c: $7d
	dec  c                                           ; $572d: $0d
	dec  b                                           ; $572e: $05
	add  hl, bc                                      ; $572f: $09
	dec  b                                           ; $5730: $05
	ld   a, [bc]                                     ; $5731: $0a
	ld   a, h                                        ; $5732: $7c
	inc  b                                           ; $5733: $04
	ld   d, a                                        ; $5734: $57
	dec  b                                           ; $5735: $05
	add  hl, hl                                      ; $5736: $29
	ld   e, d                                        ; $5737: $5a
	dec  c                                           ; $5738: $0d
	inc  bc                                          ; $5739: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $573a: $cf
	ld   d, d                                        ; $573b: $52
	sub  [hl]                                        ; $573c: $96
	ld   d, h                                        ; $573d: $54
	ld   l, [hl]                                     ; $573e: $6e
	ld   a, b                                        ; $573f: $78
	sbc  a                                           ; $5740: $9f
	dec  c                                           ; $5741: $0d
	nop                                              ; $5742: $00
	ld   a, [bc]                                     ; $5743: $0a
	ld   bc, $a5a3                                   ; $5744: $01 $a3 $a5
	db   $ec                                         ; $5747: $ec
	cp   d                                           ; $5748: $ba
	ld   a, h                                        ; $5749: $7c
	inc  bc                                          ; $574a: $03
	ld   l, l                                        ; $574b: $6d
	dec  b                                           ; $574c: $05
	add  hl, de                                      ; $574d: $19
	and  b                                           ; $574e: $a0
	dec  c                                           ; $574f: $0d
	ld   l, a                                        ; $5750: $6f
	sub  l                                           ; $5751: $95
	ld   [hl], c                                     ; $5752: $71
	halt                                             ; $5753: $76
	inc  b                                           ; $5754: $04
	rrca                                             ; $5755: $0f
	adc  a                                           ; $5756: $8f
	ld   a, c                                        ; $5757: $79
	halt                                             ; $5758: $76
	ld   [hl], c                                     ; $5759: $71
	ld   [hl], h                                     ; $575a: $74
	ld   e, b                                        ; $575b: $58
	ld   e, l                                        ; $575c: $5d
	halt                                             ; $575d: $76
	dec  c                                           ; $575e: $0d
	ld   d, d                                        ; $575f: $52
	ld   d, d                                        ; $5760: $52
	and  c                                           ; $5761: $a1
	ld   h, [hl]                                     ; $5762: $66
	sub  c                                           ; $5763: $91
	ld   a, b                                        ; $5764: $78
	ld   d, d                                        ; $5765: $52
	ld   e, c                                        ; $5766: $59
	ld   a, b                                        ; $5767: $78
	sbc  a                                           ; $5768: $9f
	dec  c                                           ; $5769: $0d
	nop                                              ; $576a: $00
	ld   a, [bc]                                     ; $576b: $0a
	ld   bc, $a5a3                                   ; $576c: $01 $a3 $a5
	db   $ec                                         ; $576f: $ec
	cp   d                                           ; $5770: $ba
	ld   a, h                                        ; $5771: $7c
	inc  bc                                          ; $5772: $03
	ld   l, l                                        ; $5773: $6d
	dec  b                                           ; $5774: $05
	add  hl, de                                      ; $5775: $19
	ld   a, l                                        ; $5776: $7d
	dec  c                                           ; $5777: $0d
	dec  b                                           ; $5778: $05
	add  hl, bc                                      ; $5779: $09
	dec  b                                           ; $577a: $05
	ld   a, [bc]                                     ; $577b: $0a
	and  e                                           ; $577c: $a3
	call nz, Call_05e_79d8                           ; $577d: $c4 $d8 $79
	ld   a, l                                        ; $5780: $7d
	dec  c                                           ; $5781: $0d
	ld   d, h                                        ; $5782: $54
	ld   [hl], c                                     ; $5783: $71
	ld   [hl], h                                     ; $5784: $74
	ld   [hl], d                                     ; $5785: $72
	ld   e, a                                        ; $5786: $5f
	ld   l, [hl]                                     ; $5787: $6e
	ld   e, c                                        ; $5788: $59
	sub  a                                           ; $5789: $97
	ld   a, e                                        ; $578a: $7b
	sbc  a                                           ; $578b: $9f
	dec  c                                           ; $578c: $0d
	nop                                              ; $578d: $00
	ld   a, [bc]                                     ; $578e: $0a
	rrca                                             ; $578f: $0f
	nop                                              ; $5790: $00
	ld   bc, $7801                                   ; $5791: $01 $01 $78
	sbc  c                                           ; $5794: $99
	adc  c                                           ; $5795: $89
	ld   [hl], a                                     ; $5796: $77
	rst  $38                                         ; $5797: $ff
	rst  $38                                         ; $5798: $ff
	dec  c                                           ; $5799: $0d
	sbc  l                                           ; $579a: $9d
	ld   e, c                                        ; $579b: $59
	sbc  b                                           ; $579c: $98
	adc  h                                           ; $579d: $8c
	ld   h, l                                        ; $579e: $65
	ld   l, l                                        ; $579f: $6d
	sbc  [hl]                                        ; $57a0: $9e
	and  e                                           ; $57a1: $a3
	jp   z, $a5d1                                    ; $57a2: $ca $d1 $a5

	cp   d                                           ; $57a5: $ba
	sbc  [hl]                                        ; $57a6: $9e
	dec  c                                           ; $57a7: $0d
	ld   d, b                                        ; $57a8: $50
	sbc  b                                           ; $57a9: $98
	ld   e, d                                        ; $57aa: $5a
	halt                                             ; $57ab: $76
	ld   d, h                                        ; $57ac: $54
	ld   h, d                                        ; $57ad: $62
	ld   h, h                                        ; $57ae: $64
	ld   d, d                                        ; $57af: $52
	adc  h                                           ; $57b0: $8c
	ld   h, l                                        ; $57b1: $65
	ld   l, l                                        ; $57b2: $6d
	sbc  a                                           ; $57b3: $9f
	dec  c                                           ; $57b4: $0d
	nop                                              ; $57b5: $00
	ld   a, [bc]                                     ; $57b6: $0a
	ld   b, $08                                      ; $57b7: $06 $08
	db   $10                                         ; $57b9: $10
	rrca                                             ; $57ba: $0f
	add  hl, bc                                      ; $57bb: $09
	nop                                              ; $57bc: $00
	ld   bc, $0008                                   ; $57bd: $01 $08 $00
	ld   e, l                                        ; $57c0: $5d
	and  c                                           ; $57c1: $a1
	ld   a, l                                        ; $57c2: $7d
	dec  c                                           ; $57c3: $0d
	sub  b                                           ; $57c4: $90
	ld   d, h                                        ; $57c5: $54
	inc  bc                                          ; $57c6: $03
	ld   l, h                                        ; $57c7: $6c
	ld   h, l                                        ; $57c8: $65
	ld   [bc], a                                     ; $57c9: $02
	add  h                                           ; $57ca: $84
	ld   [bc], a                                     ; $57cb: $02
	and  d                                           ; $57cc: $a2
	inc  b                                           ; $57cd: $04
	jr   nz, jr_05e_57d4                             ; $57ce: $20 $04

	dec  hl                                          ; $57d0: $2b
	inc  bc                                          ; $57d1: $03
	dec  [hl]                                        ; $57d2: $35
	and  b                                           ; $57d3: $a0

jr_05e_57d4:
	dec  c                                           ; $57d4: $0d
	inc  b                                           ; $57d5: $04
	pop  de                                          ; $57d6: $d1
	ld   a, c                                        ; $57d7: $79
	ld   [hl], d                                     ; $57d8: $72
	ld   e, a                                        ; $57d9: $5f
	ld   l, l                                        ; $57da: $6d
	adc  c                                           ; $57db: $89
	ld   d, h                                        ; $57dc: $54
	ld   e, d                                        ; $57dd: $5a
	ld   d, d                                        ; $57de: $52
	ld   d, d                                        ; $57df: $52
	ld   a, b                                        ; $57e0: $78
	sbc  a                                           ; $57e1: $9f
	dec  c                                           ; $57e2: $0d
	nop                                              ; $57e3: $00
	ld   a, [bc]                                     ; $57e4: $0a
	ld   bc, $cf02                                   ; $57e5: $01 $02 $cf
	dec  b                                           ; $57e8: $05
	ld   a, [de]                                     ; $57e9: $1a
	ld   a, h                                        ; $57ea: $7c
	inc  bc                                          ; $57eb: $03
	ld   l, l                                        ; $57ec: $6d
	dec  b                                           ; $57ed: $05
	add  hl, de                                      ; $57ee: $19
	and  b                                           ; $57ef: $a0
	dec  c                                           ; $57f0: $0d
	ld   l, a                                        ; $57f1: $6f
	sub  l                                           ; $57f2: $95
	ld   [hl], c                                     ; $57f3: $71
	halt                                             ; $57f4: $76
	inc  b                                           ; $57f5: $04
	rrca                                             ; $57f6: $0f
	adc  a                                           ; $57f7: $8f
	ld   a, c                                        ; $57f8: $79
	halt                                             ; $57f9: $76
	ld   [hl], c                                     ; $57fa: $71
	ld   [hl], h                                     ; $57fb: $74
	ld   e, b                                        ; $57fc: $58
	ld   e, l                                        ; $57fd: $5d
	halt                                             ; $57fe: $76
	dec  c                                           ; $57ff: $0d
	ld   d, d                                        ; $5800: $52
	ld   d, d                                        ; $5801: $52
	and  c                                           ; $5802: $a1
	ld   h, [hl]                                     ; $5803: $66
	sub  c                                           ; $5804: $91
	ld   a, b                                        ; $5805: $78
	ld   d, d                                        ; $5806: $52
	ld   e, c                                        ; $5807: $59
	ld   a, b                                        ; $5808: $78
	sbc  a                                           ; $5809: $9f
	dec  c                                           ; $580a: $0d
	nop                                              ; $580b: $00
	ld   a, [bc]                                     ; $580c: $0a
	ld   bc, $cf02                                   ; $580d: $01 $02 $cf
	dec  b                                           ; $5810: $05
	ld   a, [de]                                     ; $5811: $1a
	ld   a, h                                        ; $5812: $7c
	ld   [bc], a                                     ; $5813: $02
	ld   l, d                                        ; $5814: $6a
	ld   b, $44                                      ; $5815: $06 $44
	and  b                                           ; $5817: $a0
	sbc  [hl]                                        ; $5818: $9e
	ld   l, e                                        ; $5819: $6b
	ld   a, [hl]                                     ; $581a: $7e
	ld   [hl], l                                     ; $581b: $75
	ld   [bc], a                                     ; $581c: $02
	sub  l                                           ; $581d: $95
	ld   [hl], h                                     ; $581e: $74
	sbc  c                                           ; $581f: $99
	dec  c                                           ; $5820: $0d
	ld   l, [hl]                                     ; $5821: $6e
	ld   e, a                                        ; $5822: $5f
	ld   [hl], l                                     ; $5823: $75
	sub  b                                           ; $5824: $90
	inc  b                                           ; $5825: $04
	xor  [hl]                                        ; $5826: $ae
	ld   [bc], a                                     ; $5827: $02
	call nc, Call_05e_7879                           ; $5828: $d4 $79 $78
	sbc  c                                           ; $582b: $99
	ld   e, c                                        ; $582c: $59
	sub  a                                           ; $582d: $97
	ld   a, e                                        ; $582e: $7b
	sbc  a                                           ; $582f: $9f
	dec  c                                           ; $5830: $0d
	nop                                              ; $5831: $00
	ld   a, [bc]                                     ; $5832: $0a
	rrca                                             ; $5833: $0f
	nop                                              ; $5834: $00
	ld   bc, $7801                                   ; $5835: $01 $01 $78
	sbc  c                                           ; $5838: $99
	adc  c                                           ; $5839: $89
	ld   [hl], a                                     ; $583a: $77
	rst  $38                                         ; $583b: $ff
	rst  $38                                         ; $583c: $ff
	dec  c                                           ; $583d: $0d
	sbc  l                                           ; $583e: $9d
	ld   e, c                                        ; $583f: $59
	sbc  b                                           ; $5840: $98
	adc  h                                           ; $5841: $8c
	ld   h, l                                        ; $5842: $65
	ld   l, l                                        ; $5843: $6d
	sbc  [hl]                                        ; $5844: $9e
	and  e                                           ; $5845: $a3
	jp   z, $a5d1                                    ; $5846: $ca $d1 $a5

	cp   d                                           ; $5849: $ba
	sbc  [hl]                                        ; $584a: $9e
	dec  c                                           ; $584b: $0d
	ld   d, b                                        ; $584c: $50
	sbc  b                                           ; $584d: $98
	ld   e, d                                        ; $584e: $5a
	halt                                             ; $584f: $76
	ld   d, h                                        ; $5850: $54
	ld   h, d                                        ; $5851: $62
	ld   h, h                                        ; $5852: $64
	ld   d, d                                        ; $5853: $52
	adc  h                                           ; $5854: $8c
	ld   h, l                                        ; $5855: $65
	ld   l, l                                        ; $5856: $6d
	sbc  a                                           ; $5857: $9f
	dec  c                                           ; $5858: $0d
	nop                                              ; $5859: $00
	ld   a, [bc]                                     ; $585a: $0a
	ld   b, $08                                      ; $585b: $06 $08
	db   $10                                         ; $585d: $10
	rrca                                             ; $585e: $0f
	add  hl, bc                                      ; $585f: $09
	nop                                              ; $5860: $00
	ld   bc, $0008                                   ; $5861: $01 $08 $00
	ld   e, l                                        ; $5864: $5d
	and  c                                           ; $5865: $a1
	ld   a, l                                        ; $5866: $7d
	dec  c                                           ; $5867: $0d
	sub  b                                           ; $5868: $90
	ld   [hl], c                                     ; $5869: $71
	halt                                             ; $586a: $76
	ld   [bc], a                                     ; $586b: $02
	and  c                                           ; $586c: $a1
	ld   [bc], a                                     ; $586d: $02
	ld   a, e                                        ; $586e: $7b
	ld   d, d                                        ; $586f: $52
	and  b                                           ; $5870: $a0
	dec  c                                           ; $5871: $0d
	inc  b                                           ; $5872: $04
	pop  de                                          ; $5873: $d1
	ld   a, c                                        ; $5874: $79
	ld   [hl], d                                     ; $5875: $72
	ld   e, a                                        ; $5876: $5f
	ld   l, l                                        ; $5877: $6d
	adc  c                                           ; $5878: $89
	ld   d, h                                        ; $5879: $54
	ld   e, d                                        ; $587a: $5a
	ld   d, d                                        ; $587b: $52
	ld   d, d                                        ; $587c: $52
	ld   a, b                                        ; $587d: $78
	sbc  a                                           ; $587e: $9f
	dec  c                                           ; $587f: $0d
	nop                                              ; $5880: $00
	ld   a, [bc]                                     ; $5881: $0a
	ld   bc, $f5ac                                   ; $5882: $01 $ac $f5
	bit  7, h                                        ; $5885: $cb $7c
	inc  bc                                          ; $5887: $03
	ld   l, l                                        ; $5888: $6d
	dec  b                                           ; $5889: $05
	add  hl, de                                      ; $588a: $19
	and  b                                           ; $588b: $a0
	dec  c                                           ; $588c: $0d
	ld   l, a                                        ; $588d: $6f
	sub  l                                           ; $588e: $95
	ld   [hl], c                                     ; $588f: $71
	halt                                             ; $5890: $76
	inc  b                                           ; $5891: $04
	rrca                                             ; $5892: $0f
	adc  a                                           ; $5893: $8f
	ld   a, c                                        ; $5894: $79
	halt                                             ; $5895: $76
	ld   [hl], c                                     ; $5896: $71
	ld   [hl], h                                     ; $5897: $74
	ld   e, b                                        ; $5898: $58
	ld   e, l                                        ; $5899: $5d
	halt                                             ; $589a: $76
	dec  c                                           ; $589b: $0d
	ld   d, d                                        ; $589c: $52
	ld   d, d                                        ; $589d: $52
	and  c                                           ; $589e: $a1
	ld   h, [hl]                                     ; $589f: $66
	sub  c                                           ; $58a0: $91
	ld   a, b                                        ; $58a1: $78
	ld   d, d                                        ; $58a2: $52
	ld   e, c                                        ; $58a3: $59
	ld   a, b                                        ; $58a4: $78
	sbc  a                                           ; $58a5: $9f
	dec  c                                           ; $58a6: $0d
	nop                                              ; $58a7: $00
	ld   a, [bc]                                     ; $58a8: $0a
	ld   bc, $f5ac                                   ; $58a9: $01 $ac $f5
	bit  7, h                                        ; $58ac: $cb $7c
	ld   [bc], a                                     ; $58ae: $02
	or   [hl]                                        ; $58af: $b6
	inc  bc                                          ; $58b0: $03
	ld   l, e                                        ; $58b1: $6b
	ld   a, l                                        ; $58b2: $7d
	dec  c                                           ; $58b3: $0d
	adc  h                                           ; $58b4: $8c
	ld   h, e                                        ; $58b5: $63
	ld   a, c                                        ; $58b6: $79
	ld   bc, $0207                                   ; $58b7: $01 $07 $02
	and  c                                           ; $58ba: $a1
	ld   [bc], a                                     ; $58bb: $02
	ld   a, e                                        ; $58bc: $7b
	ld   d, d                                        ; $58bd: $52
	ld   a, h                                        ; $58be: $7c
	inc  b                                           ; $58bf: $04
	ld   d, d                                        ; $58c0: $52
	inc  bc                                          ; $58c1: $03
	db   $10                                         ; $58c2: $10
	ld   bc, $0d08                                   ; $58c3: $01 $08 $0d
	halt                                             ; $58c6: $76
	ld   d, d                                        ; $58c7: $52
	ld   d, h                                        ; $58c8: $54
	ld   [bc], a                                     ; $58c9: $02
	scf                                              ; $58ca: $37
	ld   h, [hl]                                     ; $58cb: $66
	ld   l, [hl]                                     ; $58cc: $6e
	ld   e, c                                        ; $58cd: $59
	sub  a                                           ; $58ce: $97
	ld   a, e                                        ; $58cf: $7b
	sbc  a                                           ; $58d0: $9f
	dec  c                                           ; $58d1: $0d
	nop                                              ; $58d2: $00
	ld   a, [bc]                                     ; $58d3: $0a
	rrca                                             ; $58d4: $0f
	nop                                              ; $58d5: $00
	ld   bc, $7801                                   ; $58d6: $01 $01 $78
	sbc  c                                           ; $58d9: $99
	adc  c                                           ; $58da: $89
	ld   [hl], a                                     ; $58db: $77
	rst  $38                                         ; $58dc: $ff
	rst  $38                                         ; $58dd: $ff
	dec  c                                           ; $58de: $0d
	sbc  l                                           ; $58df: $9d
	ld   e, c                                        ; $58e0: $59
	sbc  b                                           ; $58e1: $98
	adc  h                                           ; $58e2: $8c
	ld   h, l                                        ; $58e3: $65
	ld   l, l                                        ; $58e4: $6d
	sbc  [hl]                                        ; $58e5: $9e
	and  e                                           ; $58e6: $a3
	jp   z, $a5d1                                    ; $58e7: $ca $d1 $a5

	cp   d                                           ; $58ea: $ba
	sbc  [hl]                                        ; $58eb: $9e
	dec  c                                           ; $58ec: $0d
	ld   d, b                                        ; $58ed: $50
	sbc  b                                           ; $58ee: $98
	ld   e, d                                        ; $58ef: $5a
	halt                                             ; $58f0: $76
	ld   d, h                                        ; $58f1: $54
	ld   h, d                                        ; $58f2: $62
	ld   h, h                                        ; $58f3: $64
	ld   d, d                                        ; $58f4: $52
	adc  h                                           ; $58f5: $8c
	ld   h, l                                        ; $58f6: $65

jr_05e_58f7:
	ld   l, l                                        ; $58f7: $6d
	sbc  a                                           ; $58f8: $9f
	dec  c                                           ; $58f9: $0d
	nop                                              ; $58fa: $00
	ld   a, [bc]                                     ; $58fb: $0a
	ld   b, $08                                      ; $58fc: $06 $08
	db   $10                                         ; $58fe: $10
	inc  e                                           ; $58ff: $1c
	add  hl, bc                                      ; $5900: $09
	ld   bc, $0101                                   ; $5901: $01 $01 $01
	ld   d, h                                        ; $5904: $54
	and  c                                           ; $5905: $a1
	sbc  a                                           ; $5906: $9f
	dec  c                                           ; $5907: $0d
	ld   l, e                                        ; $5908: $6b
	sbc  d                                           ; $5909: $9a
	ld   h, [hl]                                     ; $590a: $66
	sub  c                                           ; $590b: $91
	sbc  [hl]                                        ; $590c: $9e
	ld   e, d                                        ; $590d: $5a
	and  c                                           ; $590e: $a1
	ld   a, [hl]                                     ; $590f: $7e
	sbc  d                                           ; $5910: $9a
	sub  [hl]                                        ; $5911: $96
	sbc  a                                           ; $5912: $9f
	dec  c                                           ; $5913: $0d
	nop                                              ; $5914: $00
	ld   a, [bc]                                     ; $5915: $0a
	nop                                              ; $5916: $00
	nop                                              ; $5917: $00
	inc  e                                           ; $5918: $1c
	ld   b, $01                                      ; $5919: $06 $01
	ld   bc, $0102                                   ; $591b: $01 $02 $01
	sub  [hl]                                        ; $591e: $96
	ld   d, h                                        ; $591f: $54
	sbc  [hl]                                        ; $5920: $9e
	ld   [$9f00], sp                                 ; $5921: $08 $00 $9f
	dec  c                                           ; $5924: $0d
	ld   [bc], a                                     ; $5925: $02
	sub  l                                           ; $5926: $95
	ld   [bc], a                                     ; $5927: $02
	sub  e                                           ; $5928: $93
	sbc  b                                           ; $5929: $98
	ld   h, d                                        ; $592a: $62
	ld   [bc], a                                     ; $592b: $02
	sub  h                                           ; $592c: $94
	dec  b                                           ; $592d: $05
	rrca                                             ; $592e: $0f
	ld   h, e                                        ; $592f: $63
	and  c                                           ; $5930: $a1
	sbc  a                                           ; $5931: $9f
	dec  c                                           ; $5932: $0d
	nop                                              ; $5933: $00
	ld   a, [bc]                                     ; $5934: $0a
	rrca                                             ; $5935: $0f
	nop                                              ; $5936: $00
	ld   bc, $ac01                                   ; $5937: $01 $01 $ac
	push af                                          ; $593a: $f5
	bit  4, e                                        ; $593b: $cb $63
	and  c                                           ; $593d: $a1
	rst  $38                                         ; $593e: $ff
	rst  $38                                         ; $593f: $ff
	dec  c                                           ; $5940: $0d
	ld   l, a                                        ; $5941: $6f
	sub  l                                           ; $5942: $95
	ld   [hl], c                                     ; $5943: $71
	halt                                             ; $5944: $76
	ld   d, d                                        ; $5945: $52
	ld   d, d                                        ; $5946: $52
	ld   [hl], l                                     ; $5947: $75
	ld   h, a                                        ; $5948: $67
	ld   e, c                                        ; $5949: $59
	ld   sp, hl                                      ; $594a: $f9
	dec  c                                           ; $594b: $0d
	nop                                              ; $594c: $00
	ld   a, [bc]                                     ; $594d: $0a
	ld   bc, $0301                                   ; $594e: $01 $01 $03
	inc  b                                           ; $5951: $04
	ld   c, c                                        ; $5952: $49
	ld   a, h                                        ; $5953: $7c
	dec  b                                           ; $5954: $05
	jr   nz, jr_05e_58f7                             ; $5955: $20 $a0

	ld   h, l                                        ; $5957: $65
	sub  [hl]                                        ; $5958: $96
	ld   d, h                                        ; $5959: $54
	ld   e, c                                        ; $595a: $59
	ld   a, b                                        ; $595b: $78
	rst  $38                                         ; $595c: $ff
	rst  $38                                         ; $595d: $ff
	ld   bc, $0d04                                   ; $595e: $01 $04 $0d
	nop                                              ; $5961: $00
	ld   a, [bc]                                     ; $5962: $0a
	add  hl, de                                      ; $5963: $19
	dec  b                                           ; $5964: $05
	inc  bc                                          ; $5965: $03
	inc  bc                                          ; $5966: $03
	sub  h                                           ; $5967: $94
	inc  b                                           ; $5968: $04
	sbc  [hl]                                        ; $5969: $9e
	ld   a, c                                        ; $596a: $79
	ld   [hl], d                                     ; $596b: $72
	ld   d, d                                        ; $596c: $52
	ld   [hl], h                                     ; $596d: $74
	ld   [bc], a                                     ; $596e: $02
	jp   nz, $005d                                   ; $596f: $c2 $5d $00

	nop                                              ; $5972: $00
	ld   [bc], a                                     ; $5973: $02
	dec  d                                           ; $5974: $15
	ld   a, c                                        ; $5975: $79
	ld   [hl], d                                     ; $5976: $72
	ld   d, d                                        ; $5977: $52
	ld   [hl], h                                     ; $5978: $74
	ld   [bc], a                                     ; $5979: $02
	jp   nz, $005d                                   ; $597a: $c2 $5d $00

	ld   bc, $d4d9                                   ; $597d: $01 $d9 $d4
	ld   a, c                                        ; $5980: $79
	ld   [hl], d                                     ; $5981: $72
	ld   d, d                                        ; $5982: $52
	ld   [hl], h                                     ; $5983: $74
	ld   [bc], a                                     ; $5984: $02
	jp   nz, $005d                                   ; $5985: $c2 $5d $00

	ld   [bc], a                                     ; $5988: $02
	rlca                                             ; $5989: $07
	cp   e                                           ; $598a: $bb
	nop                                              ; $598b: $00
	ld   [bc], a                                     ; $598c: $02
	inc  bc                                          ; $598d: $03
	ld   bc, $2000                                   ; $598e: $01 $00 $20
	nop                                              ; $5991: $00
	rlca                                             ; $5992: $07
	sub  h                                           ; $5993: $94
	ld   bc, $0302                                   ; $5994: $01 $02 $03
	ld   bc, $2001                                   ; $5997: $01 $01 $20
	nop                                              ; $599a: $00
	rlca                                             ; $599b: $07
	ld   b, l                                        ; $599c: $45
	ld   [bc], a                                     ; $599d: $02
	ld   [bc], a                                     ; $599e: $02
	inc  bc                                          ; $599f: $03
	ld   bc, $2002                                   ; $59a0: $01 $02 $20
	nop                                              ; $59a3: $00
	ld   b, $8f                                      ; $59a4: $06 $8f
	nop                                              ; $59a6: $00
	inc  e                                           ; $59a7: $1c
	ld   b, $00                                      ; $59a8: $06 $00
	nop                                              ; $59aa: $00
	ld   bc, $5477                                   ; $59ab: $01 $77 $54
	ld   h, l                                        ; $59ae: $65
	ld   l, l                                        ; $59af: $6d
	ld   sp, hl                                      ; $59b0: $f9
	dec  c                                           ; $59b1: $0d
	inc  b                                           ; $59b2: $04
	di                                               ; $59b3: $f3
	ld   e, d                                        ; $59b4: $5a
	ld   a, b                                        ; $59b5: $78
	ld   d, d                                        ; $59b6: $52
	ld   a, b                                        ; $59b7: $78
	sub  a                                           ; $59b8: $97
	sbc  [hl]                                        ; $59b9: $9e
	dec  c                                           ; $59ba: $0d
	ld   [bc], a                                     ; $59bb: $02
	sub  l                                           ; $59bc: $95
	ld   [bc], a                                     ; $59bd: $02
	sub  e                                           ; $59be: $93
	sbc  b                                           ; $59bf: $98
	and  b                                           ; $59c0: $a0
	ld   [bc], a                                     ; $59c1: $02
	ei                                               ; $59c2: $fb
	ld   e, a                                        ; $59c3: $5f
	sbc  e                                           ; $59c4: $9b
	sub  [hl]                                        ; $59c5: $96
	sbc  a                                           ; $59c6: $9f
	dec  c                                           ; $59c7: $0d
	nop                                              ; $59c8: $00
	ld   a, [bc]                                     ; $59c9: $0a
	dec  c                                           ; $59ca: $0d
	nop                                              ; $59cb: $00
	nop                                              ; $59cc: $00
	rrca                                             ; $59cd: $0f
	nop                                              ; $59ce: $00
	ld   bc, $1e09                                   ; $59cf: $01 $09 $1e
	nop                                              ; $59d2: $00
	rrca                                             ; $59d3: $0f
	nop                                              ; $59d4: $00
	ld   bc, $ac01                                   ; $59d5: $01 $01 $ac
	push af                                          ; $59d8: $f5
	bit  4, e                                        ; $59d9: $cb $63
	and  c                                           ; $59db: $a1
	sbc  a                                           ; $59dc: $9f
	dec  c                                           ; $59dd: $0d
	inc  b                                           ; $59de: $04
	ld   l, l                                        ; $59df: $6d
	ld   a, h                                        ; $59e0: $7c
	ld   h, c                                        ; $59e1: $61
	halt                                             ; $59e2: $76
	ld   [hl], a                                     ; $59e3: $77
	ld   d, h                                        ; $59e4: $54
	dec  b                                           ; $59e5: $05
	pop  de                                          ; $59e6: $d1
	ld   d, d                                        ; $59e7: $52
	adc  h                                           ; $59e8: $8c
	ld   h, a                                        ; $59e9: $67
	ld   e, c                                        ; $59ea: $59
	ld   sp, hl                                      ; $59eb: $f9
	dec  c                                           ; $59ec: $0d
	nop                                              ; $59ed: $00
	ld   a, [bc]                                     ; $59ee: $0a
	rlca                                             ; $59ef: $07
	ld   d, b                                        ; $59f0: $50
	ld   bc, $1603                                   ; $59f1: $01 $03 $16
	ld   bc, $23a0                                   ; $59f4: $01 $a0 $23
	nop                                              ; $59f7: $00
	inc  e                                           ; $59f8: $1c
	ld   b, $04                                      ; $59f9: $06 $04
	inc  b                                           ; $59fb: $04
	ld   bc, $7156                                   ; $59fc: $01 $56 $71
	rst  $38                                         ; $59ff: $ff
	rst  $38                                         ; $5a00: $ff
	dec  c                                           ; $5a01: $0d
	ld   [hl], a                                     ; $5a02: $77
	ld   d, h                                        ; $5a03: $54
	dec  b                                           ; $5a04: $05
	pop  de                                          ; $5a05: $d1
	ld   d, h                                        ; $5a06: $54
	ld   [hl], c                                     ; $5a07: $71
	ld   [hl], h                                     ; $5a08: $74
	ld   [bc], a                                     ; $5a09: $02
	sbc  l                                           ; $5a0a: $9d
	sbc  l                                           ; $5a0b: $9d
	sbc  d                                           ; $5a0c: $9a
	ld   [hl], h                                     ; $5a0d: $74
	sub  b                                           ; $5a0e: $90
	rst  $38                                         ; $5a0f: $ff
	rst  $38                                         ; $5a10: $ff
	dec  c                                           ; $5a11: $0d
	ld   l, e                                        ; $5a12: $6b
	ld   d, h                                        ; $5a13: $54
	ld   l, [hl]                                     ; $5a14: $6e
	ld   a, b                                        ; $5a15: $78
	rst  $38                                         ; $5a16: $ff
	rst  $38                                         ; $5a17: $ff
	dec  c                                           ; $5a18: $0d
	nop                                              ; $5a19: $00
	ld   a, [bc]                                     ; $5a1a: $0a
	inc  e                                           ; $5a1b: $1c
	ld   b, $01                                      ; $5a1c: $06 $01
	ld   bc, $0801                                   ; $5a1e: $01 $01 $08
	nop                                              ; $5a21: $00
	ld   a, b                                        ; $5a22: $78
	sub  a                                           ; $5a23: $97
	sbc  [hl]                                        ; $5a24: $9e
	dec  c                                           ; $5a25: $0d
	inc  bc                                          ; $5a26: $03
	ld   h, h                                        ; $5a27: $64
	dec  b                                           ; $5a28: $05
	db   $10                                         ; $5a29: $10
	sbc  [hl]                                        ; $5a2a: $9e
	ld   e, a                                        ; $5a2b: $5f
	ld   [hl], c                                     ; $5a2c: $71
	ld   h, c                                        ; $5a2d: $61
	ld   d, h                                        ; $5a2e: $54
	ld   a, b                                        ; $5a2f: $78
	and  $c5                                         ; $5a30: $e6 $c5
	ld   a, c                                        ; $5a32: $79
	dec  c                                           ; $5a33: $0d
	ld   a, b                                        ; $5a34: $78
	sbc  c                                           ; $5a35: $99
	and  c                                           ; $5a36: $a1
	ld   h, [hl]                                     ; $5a37: $66
	sub  c                                           ; $5a38: $91
	ld   a, b                                        ; $5a39: $78
	ld   d, d                                        ; $5a3a: $52
	ld   e, c                                        ; $5a3b: $59
	ld   sp, hl                                      ; $5a3c: $f9
	dec  c                                           ; $5a3d: $0d
	nop                                              ; $5a3e: $00
	ld   a, [bc]                                     ; $5a3f: $0a
	inc  e                                           ; $5a40: $1c
	ld   b, $07                                      ; $5a41: $06 $07
	rlca                                             ; $5a43: $07
	ld   bc, $9075                                   ; $5a44: $01 $75 $90
	sbc  [hl]                                        ; $5a47: $9e
	ld   l, e                                        ; $5a48: $6b
	ld   a, h                                        ; $5a49: $7c
	ld   l, l                                        ; $5a4a: $6d
	adc  a                                           ; $5a4b: $8f
	ld   a, c                                        ; $5a4c: $79
	sub  b                                           ; $5a4d: $90
	dec  c                                           ; $5a4e: $0d
	inc  b                                           ; $5a4f: $04
	dec  c                                           ; $5a50: $0d
	ld   l, [hl]                                     ; $5a51: $6e
	ld   e, a                                        ; $5a52: $5f
	ld   a, l                                        ; $5a53: $7d
	ld   h, l                                        ; $5a54: $65
	ld   [hl], c                                     ; $5a55: $71
	ld   e, c                                        ; $5a56: $59
	sbc  b                                           ; $5a57: $98
	halt                                             ; $5a58: $76
	dec  c                                           ; $5a59: $0d
	ld   e, e                                        ; $5a5a: $5b
	ld   l, l                                        ; $5a5b: $6d
	ld   d, [hl]                                     ; $5a5c: $56
	sbc  c                                           ; $5a5d: $99
	and  c                                           ; $5a5e: $a1
	ld   l, [hl]                                     ; $5a5f: $6e
	ld   l, h                                        ; $5a60: $6c
	sbc  a                                           ; $5a61: $9f
	dec  c                                           ; $5a62: $0d
	nop                                              ; $5a63: $00
	ld   a, [bc]                                     ; $5a64: $0a
	ld   b, $72                                      ; $5a65: $06 $72
	ld   bc, $061c                                   ; $5a67: $01 $1c $06
	dec  b                                           ; $5a6a: $05
	dec  b                                           ; $5a6b: $05
	ld   bc, $5477                                   ; $5a6c: $01 $77 $54
	ld   l, [hl]                                     ; $5a6f: $6e
	sbc  e                                           ; $5a70: $9b
	ld   d, h                                        ; $5a71: $54
	ld   a, b                                        ; $5a72: $78
	rst  $38                                         ; $5a73: $ff
	rst  $38                                         ; $5a74: $ff
	dec  c                                           ; $5a75: $0d
	ld   d, b                                        ; $5a76: $50
	ld   l, l                                        ; $5a77: $6d
	ld   d, d                                        ; $5a78: $52
	ld   a, c                                        ; $5a79: $79
	sub  c                                           ; $5a7a: $91
	sbc  [hl]                                        ; $5a7b: $9e
	sbc  l                                           ; $5a7c: $9d
	ld   e, c                                        ; $5a7d: $59
	sub  a                                           ; $5a7e: $97
	ld   a, b                                        ; $5a7f: $78
	ld   d, d                                        ; $5a80: $52
	ld   a, b                                        ; $5a81: $78
	rst  $38                                         ; $5a82: $ff
	rst  $38                                         ; $5a83: $ff
	dec  c                                           ; $5a84: $0d
	nop                                              ; $5a85: $00
	ld   a, [bc]                                     ; $5a86: $0a
	ld   b, $72                                      ; $5a87: $06 $72
	ld   bc, $a101                                   ; $5a89: $01 $01 $a1
	ld   h, [hl]                                     ; $5a8c: $66
	sub  c                                           ; $5a8d: $91
	sbc  [hl]                                        ; $5a8e: $9e
	ld   d, b                                        ; $5a8f: $50
	ld   l, l                                        ; $5a90: $6d
	ld   d, d                                        ; $5a91: $52
	dec  c                                           ; $5a92: $0d
	sub  b                                           ; $5a93: $90
	ld   d, h                                        ; $5a94: $54
	inc  b                                           ; $5a95: $04
	ld   b, d                                        ; $5a96: $42
	sbc  c                                           ; $5a97: $99
	sbc  l                                           ; $5a98: $9d
	sbc  a                                           ; $5a99: $9f
	dec  c                                           ; $5a9a: $0d
	ld   e, b                                        ; $5a9b: $58
	sub  d                                           ; $5a9c: $92
	ld   h, a                                        ; $5a9d: $67
	adc  l                                           ; $5a9e: $8d
	sbc  a                                           ; $5a9f: $9f
	dec  c                                           ; $5aa0: $0d
	nop                                              ; $5aa1: $00
	ld   a, [bc]                                     ; $5aa2: $0a
	dec  c                                           ; $5aa3: $0d
	nop                                              ; $5aa4: $00
	nop                                              ; $5aa5: $00
	rrca                                             ; $5aa6: $0f
	nop                                              ; $5aa7: $00
	ld   bc, $1e09                                   ; $5aa8: $01 $09 $1e
	nop                                              ; $5aab: $00
	rrca                                             ; $5aac: $0f
	nop                                              ; $5aad: $00
	ld   bc, $ac01                                   ; $5aae: $01 $01 $ac
	push af                                          ; $5ab1: $f5
	bit  4, e                                        ; $5ab2: $cb $63
	and  c                                           ; $5ab4: $a1
	dec  c                                           ; $5ab5: $0d
	sub  d                                           ; $5ab6: $92
	ld   [hl], c                                     ; $5ab7: $71
	ld   a, a                                        ; $5ab8: $7f
	sbc  b                                           ; $5ab9: $98
	ld   [bc], a                                     ; $5aba: $02
	dec  d                                           ; $5abb: $15
	ld   [hl], c                                     ; $5abc: $71
	ld   [hl], h                                     ; $5abd: $74
	ld   d, d                                        ; $5abe: $52
	ld   d, h                                        ; $5abf: $54
	ld   a, h                                        ; $5ac0: $7c
	ld   a, l                                        ; $5ac1: $7d
	dec  c                                           ; $5ac2: $0d
	ld   [bc], a                                     ; $5ac3: $02
	call nc, Call_05e_785d                           ; $5ac4: $d4 $5d $78
	ld   e, e                                        ; $5ac7: $5b
	sub  c                                           ; $5ac8: $91

Call_05e_5ac9:
	pop  bc                                          ; $5ac9: $c1
	db   $e3                                         ; $5aca: $e3
	ld   [hl], l                                     ; $5acb: $75
	ld   h, a                                        ; $5acc: $67
	ld   e, c                                        ; $5acd: $59
	ld   sp, hl                                      ; $5ace: $f9
	dec  c                                           ; $5acf: $0d
	nop                                              ; $5ad0: $00
	ld   a, [bc]                                     ; $5ad1: $0a
	inc  e                                           ; $5ad2: $1c
	ld   b, $00                                      ; $5ad3: $06 $00
	nop                                              ; $5ad5: $00
	ld   bc, $9a6b                                   ; $5ad6: $01 $6b $9a
	ld   l, [hl]                                     ; $5ad9: $6e
	ld   e, a                                        ; $5ada: $5f
	halt                                             ; $5adb: $76
	ld   a, l                                        ; $5adc: $7d
	ld   [bc], a                                     ; $5add: $02
	sbc  l                                           ; $5ade: $9d
	ld   d, [hl]                                     ; $5adf: $56
	ld   a, b                                        ; $5ae0: $78
	ld   d, d                                        ; $5ae1: $52
	ld   e, a                                        ; $5ae2: $5f
	ld   [hl], a                                     ; $5ae3: $77
	dec  c                                           ; $5ae4: $0d
	adc  h                                           ; $5ae5: $8c
	ld   d, b                                        ; $5ae6: $50
	sbc  [hl]                                        ; $5ae7: $9e
	inc  b                                           ; $5ae8: $04
	jr   jr_05e_5aee                                 ; $5ae9: $18 $03

	sbc  c                                           ; $5aeb: $99
	ld   l, [hl]                                     ; $5aec: $6e
	ld   a, b                                        ; $5aed: $78

jr_05e_5aee:
	sbc  a                                           ; $5aee: $9f
	dec  c                                           ; $5aef: $0d
	nop                                              ; $5af0: $00
	ld   a, [bc]                                     ; $5af1: $0a
	ld   bc, $0008                                   ; $5af2: $01 $08 $00
	sub  b                                           ; $5af5: $90
	sbc  [hl]                                        ; $5af6: $9e
	adc  h                                           ; $5af7: $8c
	ld   l, b                                        ; $5af8: $68
	dec  c                                           ; $5af9: $0d
	inc  b                                           ; $5afa: $04
	dec  c                                           ; $5afb: $0d
	ld   l, [hl]                                     ; $5afc: $6e
	ld   e, a                                        ; $5afd: $5f
	ld   a, l                                        ; $5afe: $7d
	ld   e, e                                        ; $5aff: $5b
	ld   l, a                                        ; $5b00: $6f
	and  c                                           ; $5b01: $a1
	halt                                             ; $5b02: $76
	dec  c                                           ; $5b03: $0d
	ld   e, e                                        ; $5b04: $5b
	ld   l, l                                        ; $5b05: $6d
	ld   d, [hl]                                     ; $5b06: $56
	sbc  c                                           ; $5b07: $99
	sub  [hl]                                        ; $5b08: $96
	ld   d, h                                        ; $5b09: $54
	ld   a, c                                        ; $5b0a: $79
	ld   a, b                                        ; $5b0b: $78
	sbc  a                                           ; $5b0c: $9f
	dec  c                                           ; $5b0d: $0d
	nop                                              ; $5b0e: $00
	ld   a, [bc]                                     ; $5b0f: $0a
	inc  e                                           ; $5b10: $1c
	ld   b, $01                                      ; $5b11: $06 $01
	ld   bc, $0201                                   ; $5b13: $01 $01 $02
	ld   [hl], e                                     ; $5b16: $73
	inc  bc                                          ; $5b17: $03
	ld   d, a                                        ; $5b18: $57
	ld   a, b                                        ; $5b19: $78
	sbc  c                                           ; $5b1a: $99
	dec  b                                           ; $5b1b: $05
	ldh  [$03], a                                    ; $5b1c: $e0 $03
	sub  b                                           ; $5b1e: $90
	ld   a, l                                        ; $5b1f: $7d
	dec  c                                           ; $5b20: $0d
	ld   [bc], a                                     ; $5b21: $02
	ld   [hl], e                                     ; $5b22: $73
	inc  bc                                          ; $5b23: $03
	ld   d, a                                        ; $5b24: $57
	ld   a, b                                        ; $5b25: $78
	sbc  c                                           ; $5b26: $99
	inc  b                                           ; $5b27: $04
	pop  de                                          ; $5b28: $d1
	inc  b                                           ; $5b29: $04
	dec  c                                           ; $5b2a: $0d
	ld   a, c                                        ; $5b2b: $79
	inc  bc                                          ; $5b2c: $03
	ld   b, a                                        ; $5b2d: $47
	sbc  c                                           ; $5b2e: $99
	ld   [hl], c                                     ; $5b2f: $71
	ld   [hl], h                                     ; $5b30: $74
	dec  c                                           ; $5b31: $0d
	ld   [bc], a                                     ; $5b32: $02
	sbc  l                                           ; $5b33: $9d
	ld   d, h                                        ; $5b34: $54
	ld   h, l                                        ; $5b35: $65
	ld   a, b                                        ; $5b36: $78
	sbc  a                                           ; $5b37: $9f
	dec  c                                           ; $5b38: $0d
	nop                                              ; $5b39: $00
	ld   a, [bc]                                     ; $5b3a: $0a
	ld   bc, $9166                                   ; $5b3b: $01 $66 $91
	sbc  [hl]                                        ; $5b3e: $9e
	ld   d, b                                        ; $5b3f: $50
	ld   l, l                                        ; $5b40: $6d
	ld   d, d                                        ; $5b41: $52
	sbc  [hl]                                        ; $5b42: $9e
	dec  c                                           ; $5b43: $0d
	sub  b                                           ; $5b44: $90
	ld   d, h                                        ; $5b45: $54
	inc  b                                           ; $5b46: $04
	ld   b, d                                        ; $5b47: $42
	sbc  c                                           ; $5b48: $99
	ld   l, d                                        ; $5b49: $6a
	sbc  a                                           ; $5b4a: $9f
	dec  c                                           ; $5b4b: $0d
	ld   e, b                                        ; $5b4c: $58
	sub  d                                           ; $5b4d: $92
	ld   h, a                                        ; $5b4e: $67
	adc  l                                           ; $5b4f: $8d
	sbc  a                                           ; $5b50: $9f
	dec  c                                           ; $5b51: $0d
	nop                                              ; $5b52: $00
	ld   a, [bc]                                     ; $5b53: $0a
	dec  c                                           ; $5b54: $0d
	nop                                              ; $5b55: $00
	nop                                              ; $5b56: $00
	rrca                                             ; $5b57: $0f
	nop                                              ; $5b58: $00
	ld   bc, $1e09                                   ; $5b59: $01 $09 $1e
	nop                                              ; $5b5c: $00
	rrca                                             ; $5b5d: $0f
	nop                                              ; $5b5e: $00
	ld   bc, $ac01                                   ; $5b5f: $01 $01 $ac
	push af                                          ; $5b62: $f5
	bit  4, e                                        ; $5b63: $cb $63
	and  c                                           ; $5b65: $a1
	ld   [hl], c                                     ; $5b66: $71
	ld   [hl], h                                     ; $5b67: $74
	dec  c                                           ; $5b68: $0d
	ld   [hl], a                                     ; $5b69: $77
	ld   d, h                                        ; $5b6a: $54
	ld   h, l                                        ; $5b6b: $65
	ld   [hl], h                                     ; $5b6c: $74
	reti                                             ; $5b6d: $d9


	call nc, $0379                                   ; $5b6e: $d4 $79 $03
	inc  a                                           ; $5b71: $3c
	ld   d, d                                        ; $5b72: $52
	ld   a, h                                        ; $5b73: $7c
	ld   [hl], l                                     ; $5b74: $75
	ld   h, a                                        ; $5b75: $67
	ld   e, c                                        ; $5b76: $59
	ld   sp, hl                                      ; $5b77: $f9
	dec  c                                           ; $5b78: $0d
	nop                                              ; $5b79: $00
	ld   a, [bc]                                     ; $5b7a: $0a
	inc  e                                           ; $5b7b: $1c
	ld   b, $03                                      ; $5b7c: $06 $03
	inc  bc                                          ; $5b7e: $03
	ld   bc, $d4d9                                   ; $5b7f: $01 $d9 $d4
	ld   sp, hl                                      ; $5b82: $f9
	dec  c                                           ; $5b83: $0d
	ld   d, b                                        ; $5b84: $50
	ld   d, b                                        ; $5b85: $50
	sbc  [hl]                                        ; $5b86: $9e
	reti                                             ; $5b87: $d9


	call nc, $fc7b                                   ; $5b88: $d4 $7b $fc
	sbc  a                                           ; $5b8b: $9f
	dec  c                                           ; $5b8c: $0d
	nop                                              ; $5b8d: $00
	ld   a, [bc]                                     ; $5b8e: $0a
	inc  e                                           ; $5b8f: $1c
	ld   b, $05                                      ; $5b90: $06 $05
	dec  b                                           ; $5b92: $05
	ld   bc, $8603                                   ; $5b93: $01 $03 $86
	ld   [bc], a                                     ; $5b96: $02
	xor  l                                           ; $5b97: $ad
	ld   a, h                                        ; $5b98: $7c
	ld   [bc], a                                     ; $5b99: $02
	ld   e, a                                        ; $5b9a: $5f
	add  b                                           ; $5b9b: $80
	halt                                             ; $5b9c: $76
	sbc  b                                           ; $5b9d: $98
	adc  d                                           ; $5b9e: $8a
	ld   [hl], c                                     ; $5b9f: $71
	ld   l, a                                        ; $5ba0: $6f
	ld   [hl], l                                     ; $5ba1: $75
	ld   [bc], a                                     ; $5ba2: $02
	or   [hl]                                        ; $5ba3: $b6
	inc  bc                                          ; $5ba4: $03
	ld   l, e                                        ; $5ba5: $6b
	ld   a, h                                        ; $5ba6: $7c
	dec  c                                           ; $5ba7: $0d
	dec  b                                           ; $5ba8: $05
	add  hl, de                                      ; $5ba9: $19
	inc  bc                                          ; $5baa: $03
	and  h                                           ; $5bab: $a4
	and  b                                           ; $5bac: $a0
	ld   h, l                                        ; $5bad: $65
	ld   [hl], h                                     ; $5bae: $74
	ld   d, d                                        ; $5baf: $52
	ld   l, l                                        ; $5bb0: $6d
	inc  bc                                          ; $5bb1: $03
	ld   l, a                                        ; $5bb2: $6f
	ld   a, c                                        ; $5bb3: $79
	dec  c                                           ; $5bb4: $0d
	ld   e, c                                        ; $5bb5: $59
	adc  h                                           ; $5bb6: $8c
	sbc  d                                           ; $5bb7: $9a
	ld   l, l                                        ; $5bb8: $6d
	and  c                                           ; $5bb9: $a1
	ld   l, [hl]                                     ; $5bba: $6e
	sbc  a                                           ; $5bbb: $9f
	dec  c                                           ; $5bbc: $0d
	nop                                              ; $5bbd: $00
	ld   a, [bc]                                     ; $5bbe: $0a
	ld   bc, $a16b                                   ; $5bbf: $01 $6b $a1
	inc  bc                                          ; $5bc2: $03
	ld   l, a                                        ; $5bc3: $6f
	sbc  [hl]                                        ; $5bc4: $9e
	inc  bc                                          ; $5bc5: $03
	xor  c                                           ; $5bc6: $a9
	sub  b                                           ; $5bc7: $90
	ld   d, d                                        ; $5bc8: $52
	ld   a, b                                        ; $5bc9: $78
	ld   e, l                                        ; $5bca: $5d
	ld   [hl], h                                     ; $5bcb: $74
	dec  c                                           ; $5bcc: $0d
	ld   h, e                                        ; $5bcd: $63
	adc  l                                           ; $5bce: $8d
	ld   h, l                                        ; $5bcf: $65
	ld   e, l                                        ; $5bd0: $5d
	ld   [hl], h                                     ; $5bd1: $74
	sbc  [hl]                                        ; $5bd2: $9e
	inc  b                                           ; $5bd3: $04
	and  b                                           ; $5bd4: $a0
	ld   [bc], a                                     ; $5bd5: $02
	ld   h, $79                                      ; $5bd6: $26 $79
	ld   a, b                                        ; $5bd8: $78
	ld   [hl], c                                     ; $5bd9: $71
	ld   [hl], h                                     ; $5bda: $74
	ld   a, b                                        ; $5bdb: $78
	rst  $38                                         ; $5bdc: $ff
	dec  c                                           ; $5bdd: $0d
	ld   [hl], h                                     ; $5bde: $74
	sbc  [hl]                                        ; $5bdf: $9e
	halt                                             ; $5be0: $76
	ld   h, c                                        ; $5be1: $61
	ld   e, c                                        ; $5be2: $59
	ld   a, b                                        ; $5be3: $78
	rst  $38                                         ; $5be4: $ff
	rst  $38                                         ; $5be5: $ff
	dec  c                                           ; $5be6: $0d
	nop                                              ; $5be7: $00
	ld   a, [bc]                                     ; $5be8: $0a
	inc  e                                           ; $5be9: $1c
	ld   b, $00                                      ; $5bea: $06 $00
	nop                                              ; $5bec: $00
	ld   bc, $7158                                   ; $5bed: $01 $58 $71
	halt                                             ; $5bf0: $76
	sbc  [hl]                                        ; $5bf1: $9e
	ld   l, e                                        ; $5bf2: $6b
	sbc  e                                           ; $5bf3: $9b
	ld   l, e                                        ; $5bf4: $6b
	sbc  e                                           ; $5bf5: $9b
	inc  b                                           ; $5bf6: $04
	ld   b, d                                        ; $5bf7: $42
	sbc  c                                           ; $5bf8: $99
	inc  bc                                          ; $5bf9: $03
	ld   l, a                                        ; $5bfa: $6f
	ld   [bc], a                                     ; $5bfb: $02
	xor  c                                           ; $5bfc: $a9
	ld   l, [hl]                                     ; $5bfd: $6e
	dec  c                                           ; $5bfe: $0d
	ld   e, b                                        ; $5bff: $58
	sub  d                                           ; $5c00: $92
	ld   h, a                                        ; $5c01: $67
	adc  l                                           ; $5c02: $8d
	sbc  a                                           ; $5c03: $9f
	dec  c                                           ; $5c04: $0d
	nop                                              ; $5c05: $00
	ld   a, [bc]                                     ; $5c06: $0a
	dec  c                                           ; $5c07: $0d
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	rrca                                             ; $5c0a: $0f
	nop                                              ; $5c0b: $00
	ld   bc, $1e09                                   ; $5c0c: $01 $09 $1e
	nop                                              ; $5c0f: $00
	nop                                              ; $5c10: $00
	inc  e                                           ; $5c11: $1c
	rrca                                             ; $5c12: $0f
	ld   bc, $0201                                   ; $5c13: $01 $01 $02
	ld   bc, $5092                                   ; $5c16: $01 $92 $50
	sbc  [hl]                                        ; $5c19: $9e
	ld   [$5d00], sp                                 ; $5c1a: $08 $00 $5d
	and  c                                           ; $5c1d: $a1
	sbc  a                                           ; $5c1e: $9f
	dec  c                                           ; $5c1f: $0d
	nop                                              ; $5c20: $00
	ld   a, [bc]                                     ; $5c21: $0a
	rlca                                             ; $5c22: $07
	ld   d, c                                        ; $5c23: $51
	nop                                              ; $5c24: $00
	inc  b                                           ; $5c25: $04
	add  b                                           ; $5c26: $80
	rst  ToBoot                                         ; $5c27: $c7
	ld   bc, $20ff                                   ; $5c28: $01 $ff $20
	nop                                              ; $5c2b: $00
	dec  b                                           ; $5c2c: $05
	add  b                                           ; $5c2d: $80
	rst  ToBoot                                         ; $5c2e: $c7
	ld   bc, $0001                                   ; $5c2f: $01 $01 $00
	ld   bc, $7305                                   ; $5c32: $01 $05 $73
	ld   a, l                                        ; $5c35: $7d
	ld   [bc], a                                     ; $5c36: $02
	ld   d, b                                        ; $5c37: $50
	inc  bc                                          ; $5c38: $03
	ld   e, b                                        ; $5c39: $58
	ld   b, $2d                                      ; $5c3a: $06 $2d
	ld   [bc], a                                     ; $5c3c: $02
	jr   nz, @+$01                                   ; $5c3d: $20 $ff

	rst  $38                                         ; $5c3f: $ff
	dec  c                                           ; $5c40: $0d
	inc  b                                           ; $5c41: $04
	ld   c, $03                                      ; $5c42: $0e $03
	sub  b                                           ; $5c44: $90
	halt                                             ; $5c45: $76
	ld   a, l                                        ; $5c46: $7d
	inc  b                                           ; $5c47: $04
	ld   c, $7c                                      ; $5c48: $0e $7c
	inc  bc                                          ; $5c4a: $03
	sub  d                                           ; $5c4b: $92
	inc  b                                           ; $5c4c: $04
	ld   [$9f6e], a                                  ; $5c4d: $ea $6e $9f
	dec  c                                           ; $5c50: $0d
	ld   [bc], a                                     ; $5c51: $02
	dec  bc                                          ; $5c52: $0b
	ld   [bc], a                                     ; $5c53: $02
	xor  d                                           ; $5c54: $aa
	sbc  [hl]                                        ; $5c55: $9e
	sub  [hl]                                        ; $5c56: $96
	sbc  e                                           ; $5c57: $9b
	ld   h, l                                        ; $5c58: $65
	ld   e, l                                        ; $5c59: $5d
	ld   a, b                                        ; $5c5a: $78
	sbc  a                                           ; $5c5b: $9f
	dec  c                                           ; $5c5c: $0d
	nop                                              ; $5c5d: $00
	ld   a, [bc]                                     ; $5c5e: $0a
	ld   b, $7b                                      ; $5c5f: $06 $7b
	nop                                              ; $5c61: $00
	ld   bc, $7305                                   ; $5c62: $01 $05 $73
	ld   a, l                                        ; $5c65: $7d
	ld   [bc], a                                     ; $5c66: $02
	ld   d, b                                        ; $5c67: $50
	inc  bc                                          ; $5c68: $03
	ld   e, b                                        ; $5c69: $58
	ld   b, $2d                                      ; $5c6a: $06 $2d
	ld   [bc], a                                     ; $5c6c: $02
	jr   nz, @+$01                                   ; $5c6d: $20 $ff

	rst  $38                                         ; $5c6f: $ff
	dec  c                                           ; $5c70: $0d
	ld   e, b                                        ; $5c71: $58
	ld   [hl], c                                     ; $5c72: $71
	halt                                             ; $5c73: $76
	sbc  [hl]                                        ; $5c74: $9e
	inc  bc                                          ; $5c75: $03
	sub  h                                           ; $5c76: $94
	dec  b                                           ; $5c77: $05
	inc  sp                                          ; $5c78: $33
	dec  b                                           ; $5c79: $05
	ld   b, a                                        ; $5c7a: $47
	dec  b                                           ; $5c7b: $05
	ld   [hl-], a                                    ; $5c7c: $32
	ld   a, l                                        ; $5c7d: $7d
	dec  c                                           ; $5c7e: $0d
	ld   h, c                                        ; $5c7f: $61
	ld   a, h                                        ; $5c80: $7c
	inc  bc                                          ; $5c81: $03
	ld   c, a                                        ; $5c82: $4f
	sub  d                                           ; $5c83: $92
	ld   [hl], c                                     ; $5c84: $71
	ld   l, l                                        ; $5c85: $6d
	ld   a, b                                        ; $5c86: $78
	rst  $38                                         ; $5c87: $ff
	rst  $38                                         ; $5c88: $ff
	dec  c                                           ; $5c89: $0d
	nop                                              ; $5c8a: $00
	ld   a, [bc]                                     ; $5c8b: $0a
	ld   bc, $546b                                   ; $5c8c: $01 $6b $54
	ld   l, [hl]                                     ; $5c8f: $6e
	rst  $38                                         ; $5c90: $ff
	rst  $38                                         ; $5c91: $ff
	ld   l, c                                        ; $5c92: $69
	ld   [hl], c                                     ; $5c93: $71
	ld   e, c                                        ; $5c94: $59
	ld   e, l                                        ; $5c95: $5d
	ld   l, [hl]                                     ; $5c96: $6e
	ld   e, c                                        ; $5c97: $59
	sub  a                                           ; $5c98: $97
	dec  c                                           ; $5c99: $0d
	or   b                                           ; $5c9a: $b0
	and  l                                           ; $5c9b: $a5
	cp   e                                           ; $5c9c: $bb
	and  b                                           ; $5c9d: $a0
	inc  bc                                          ; $5c9e: $03
	add  b                                           ; $5c9f: $80
	ld   h, l                                        ; $5ca0: $65
	ld   [hl], h                                     ; $5ca1: $74
	ld   d, b                                        ; $5ca2: $50
	ld   h, b                                        ; $5ca3: $60
	sub  [hl]                                        ; $5ca4: $96
	ld   d, h                                        ; $5ca5: $54
	sbc  a                                           ; $5ca6: $9f
	dec  c                                           ; $5ca7: $0d
	nop                                              ; $5ca8: $00
	ld   a, [bc]                                     ; $5ca9: $0a
	rlca                                             ; $5caa: $07
	call z, $0400                                    ; $5cab: $cc $00 $04
	add  b                                           ; $5cae: $80
	ld   c, d                                        ; $5caf: $4a
	ld   bc, $2000                                   ; $5cb0: $01 $00 $20
	nop                                              ; $5cb3: $00
	ld   bc, $5065                                   ; $5cb4: $01 $65 $50
	sbc  l                                           ; $5cb7: $9d
	ld   l, c                                        ; $5cb8: $69
	ld   l, [hl]                                     ; $5cb9: $6e
	ld   a, b                                        ; $5cba: $78
	ld   c, a                                        ; $5cbb: $4f
	db   $fc                                         ; $5cbc: $fc
	rst  $38                                         ; $5cbd: $ff
	rst  $38                                         ; $5cbe: $ff
	dec  c                                           ; $5cbf: $0d
	ld   b, $09                                      ; $5cc0: $06 $09
	inc  b                                           ; $5cc2: $04
	add  hl, hl                                      ; $5cc3: $29
	sub  b                                           ; $5cc4: $90
	and  e                                           ; $5cc5: $a3
	and  l                                           ; $5cc6: $a5
	db   $ec                                         ; $5cc7: $ec
	cp   d                                           ; $5cc8: $ba
	ld   a, h                                        ; $5cc9: $7c
	dec  c                                           ; $5cca: $0d
	or   b                                           ; $5ccb: $b0
	and  l                                           ; $5ccc: $a5
	cp   e                                           ; $5ccd: $bb
	and  b                                           ; $5cce: $a0
	inc  bc                                          ; $5ccf: $03
	add  b                                           ; $5cd0: $80
	ld   l, c                                        ; $5cd1: $69
	sbc  c                                           ; $5cd2: $99
	ld   a, b                                        ; $5cd3: $78
	and  c                                           ; $5cd4: $a1
	ld   [hl], h                                     ; $5cd5: $74
	sbc  a                                           ; $5cd6: $9f
	dec  c                                           ; $5cd7: $0d
	nop                                              ; $5cd8: $00
	ld   a, [bc]                                     ; $5cd9: $0a
	ld   b, $f5                                      ; $5cda: $06 $f5
	nop                                              ; $5cdc: $00
	dec  c                                           ; $5cdd: $0d
	rrca                                             ; $5cde: $0f
	db   $10                                         ; $5cdf: $10
	rrca                                             ; $5ce0: $0f
	rrca                                             ; $5ce1: $0f
	ld   bc, $6501                                   ; $5ce2: $01 $01 $65
	ld   d, b                                        ; $5ce5: $50
	sbc  l                                           ; $5ce6: $9d
	ld   l, c                                        ; $5ce7: $69
	ld   l, [hl]                                     ; $5ce8: $6e
	ld   a, b                                        ; $5ce9: $78
	ld   c, a                                        ; $5cea: $4f
	db   $fc                                         ; $5ceb: $fc
	rst  $38                                         ; $5cec: $ff
	rst  $38                                         ; $5ced: $ff
	dec  c                                           ; $5cee: $0d
	ld   h, c                                        ; $5cef: $61
	and  c                                           ; $5cf0: $a1
	ld   a, b                                        ; $5cf1: $78
	inc  b                                           ; $5cf2: $04
	db   $ec                                         ; $5cf3: $ec
	and  b                                           ; $5cf4: $a0
	sub  b                                           ; $5cf5: $90
	sub  a                                           ; $5cf6: $97
	ld   d, [hl]                                     ; $5cf7: $56
	sbc  c                                           ; $5cf8: $99
	ld   a, b                                        ; $5cf9: $78
	and  c                                           ; $5cfa: $a1
	ld   [hl], h                                     ; $5cfb: $74
	sbc  a                                           ; $5cfc: $9f
	dec  c                                           ; $5cfd: $0d
	nop                                              ; $5cfe: $00
	ld   a, [bc]                                     ; $5cff: $0a
	dec  b                                           ; $5d00: $05
	add  b                                           ; $5d01: $80
	ld   c, d                                        ; $5d02: $4a
	ld   bc, $0001                                   ; $5d03: $01 $01 $00
	inc  e                                           ; $5d06: $1c
	rrca                                             ; $5d07: $0f
	inc  bc                                          ; $5d08: $03
	inc  bc                                          ; $5d09: $03
	ld   bc, $7463                                   ; $5d0a: $01 $63 $74
	inc  b                                           ; $5d0d: $04
	cp   a                                           ; $5d0e: $bf
	inc  b                                           ; $5d0f: $04
	dec  d                                           ; $5d10: $15
	ld   l, [hl]                                     ; $5d11: $6e
	ld   a, [$000d]                                  ; $5d12: $fa $0d $00
	ld   a, [bc]                                     ; $5d15: $0a
	rlca                                             ; $5d16: $07
	add  a                                           ; $5d17: $87
	ld   [bc], a                                     ; $5d18: $02
	inc  b                                           ; $5d19: $04
	add  b                                           ; $5d1a: $80
	ld   b, [hl]                                     ; $5d1b: $46
	ld   bc, $2000                                   ; $5d1c: $01 $00 $20
	nop                                              ; $5d1f: $00
	ld   b, $5b                                      ; $5d20: $06 $5b
	ld   bc, $0f1c                                   ; $5d22: $01 $1c $0f
	ld   bc, $1d01                                   ; $5d25: $01 $01 $1d
	ld   b, b                                        ; $5d28: $40
	inc  d                                           ; $5d29: $14
	inc  bc                                          ; $5d2a: $03
	inc  d                                           ; $5d2b: $14
	inc  bc                                          ; $5d2c: $03
	rst  $38                                         ; $5d2d: $ff
	jr   z, jr_05e_5d30                              ; $5d2e: $28 $00

jr_05e_5d30:
	ld   bc, $0b02                                   ; $5d30: $01 $02 $0b
	inc  bc                                          ; $5d33: $03
	ld   h, l                                        ; $5d34: $65
	ld   [hl], l                                     ; $5d35: $75
	or   b                                           ; $5d36: $b0
	and  l                                           ; $5d37: $a5
	cp   e                                           ; $5d38: $bb
	ld   a, l                                        ; $5d39: $7d
	inc  bc                                          ; $5d3a: $03
	ld   a, [hl]                                     ; $5d3b: $7e
	sbc  l                                           ; $5d3c: $9d
	sbc  b                                           ; $5d3d: $98
	ld   l, [hl]                                     ; $5d3e: $6e
	sbc  a                                           ; $5d3f: $9f
	dec  c                                           ; $5d40: $0d
	ld   [bc], a                                     ; $5d41: $02
	jp   z, EnqueueHDMATransfer                                    ; $5d42: $ca $7c $02

	and  c                                           ; $5d45: $a1
	inc  bc                                          ; $5d46: $03
	and  b                                           ; $5d47: $a0
	ld   l, a                                        ; $5d48: $6f
	ld   a, l                                        ; $5d49: $7d
	sbc  [hl]                                        ; $5d4a: $9e
	and  e                                           ; $5d4b: $a3
	and  l                                           ; $5d4c: $a5
	db   $ec                                         ; $5d4d: $ec
	cp   d                                           ; $5d4e: $ba
	ld   a, c                                        ; $5d4f: $79
	dec  c                                           ; $5d50: $0d
	inc  b                                           ; $5d51: $04
	ld   [de], a                                     ; $5d52: $12
	ld   d, [hl]                                     ; $5d53: $56
	ld   [hl], h                                     ; $5d54: $74
	ld   e, b                                        ; $5d55: $58
	ld   e, l                                        ; $5d56: $5d
	sub  [hl]                                        ; $5d57: $96
	rst  $38                                         ; $5d58: $ff
	rst  $38                                         ; $5d59: $ff
	and  e                                           ; $5d5a: $a3
	ret  z                                           ; $5d5b: $c8

	and  h                                           ; $5d5c: $a4
	xor  e                                           ; $5d5d: $ab
	cp   d                                           ; $5d5e: $ba
	ld   a, [$000d]                                  ; $5d5f: $fa $0d $00
	ld   a, [bc]                                     ; $5d62: $0a
	dec  c                                           ; $5d63: $0d
	nop                                              ; $5d64: $00
	nop                                              ; $5d65: $00
	rrca                                             ; $5d66: $0f
	nop                                              ; $5d67: $00
	ld   bc, $1e09                                   ; $5d68: $01 $09 $1e
	nop                                              ; $5d6b: $00
	dec  b                                           ; $5d6c: $05
	ld   b, b                                        ; $5d6d: $40
	cp   $01                                         ; $5d6e: $fe $01
	nop                                              ; $5d70: $00
	nop                                              ; $5d71: $00
	dec  b                                           ; $5d72: $05
	add  b                                           ; $5d73: $80
	ld   c, a                                        ; $5d74: $4f
	ld   bc, $0000                                   ; $5d75: $01 $00 $00
	dec  b                                           ; $5d78: $05
	add  b                                           ; $5d79: $80
	ld   d, b                                        ; $5d7a: $50
	ld   bc, $0000                                   ; $5d7b: $01 $00 $00
	dec  b                                           ; $5d7e: $05
	add  b                                           ; $5d7f: $80
	ld   d, c                                        ; $5d80: $51
	ld   bc, $0000                                   ; $5d81: $01 $00 $00
	dec  b                                           ; $5d84: $05
	add  b                                           ; $5d85: $80
	ld   d, d                                        ; $5d86: $52
	ld   bc, $0000                                   ; $5d87: $01 $00 $00
	dec  b                                           ; $5d8a: $05
	add  b                                           ; $5d8b: $80
	ld   d, e                                        ; $5d8c: $53
	ld   bc, $0000                                   ; $5d8d: $01 $00 $00
	dec  b                                           ; $5d90: $05
	add  b                                           ; $5d91: $80
	ld   d, h                                        ; $5d92: $54
	ld   bc, $0000                                   ; $5d93: $01 $00 $00
	dec  b                                           ; $5d96: $05
	add  b                                           ; $5d97: $80
	ld   d, l                                        ; $5d98: $55
	ld   bc, $0000                                   ; $5d99: $01 $00 $00
	dec  b                                           ; $5d9c: $05
	add  b                                           ; $5d9d: $80
	ld   d, [hl]                                     ; $5d9e: $56
	ld   bc, $0000                                   ; $5d9f: $01 $00 $00
	dec  b                                           ; $5da2: $05
	add  b                                           ; $5da3: $80
	ld   d, a                                        ; $5da4: $57
	ld   bc, $0000                                   ; $5da5: $01 $00 $00
	rlca                                             ; $5da8: $07
	ld   [de], a                                     ; $5da9: $12
	ld   bc, $fe03                                   ; $5daa: $01 $03 $fe
	ld   bc, $2503                                   ; $5dad: $01 $03 $25
	nop                                              ; $5db0: $00
	dec  b                                           ; $5db1: $05
	ld   b, b                                        ; $5db2: $40
	cp   $03                                         ; $5db3: $fe $03
	cp   $01                                         ; $5db5: $fe $01
	ld   bc, $0028                                   ; $5db7: $01 $28 $00
	jr   nz, jr_05e_5dbd                             ; $5dba: $20 $01

	ld   e, d                                        ; $5dbc: $5a

jr_05e_5dbd:
	nop                                              ; $5dbd: $00
	rlca                                             ; $5dbe: $07
	ld   hl, sp+$01                                  ; $5dbf: $f8 $01
	ld   [bc], a                                     ; $5dc1: $02
	dec  b                                           ; $5dc2: $05
	ld   bc, $220a                                   ; $5dc3: $01 $0a $22
	nop                                              ; $5dc6: $00
	rlca                                             ; $5dc7: $07
	cp   [hl]                                        ; $5dc8: $be
	inc  bc                                          ; $5dc9: $03
	ld   [bc], a                                     ; $5dca: $02
	dec  b                                           ; $5dcb: $05
	ld   bc, $2214                                   ; $5dcc: $01 $14 $22
	nop                                              ; $5dcf: $00
	rlca                                             ; $5dd0: $07
	ld   a, [bc]                                     ; $5dd1: $0a
	dec  b                                           ; $5dd2: $05
	ld   [bc], a                                     ; $5dd3: $02
	dec  b                                           ; $5dd4: $05
	ld   bc, $221e                                   ; $5dd5: $01 $1e $22
	nop                                              ; $5dd8: $00
	rlca                                             ; $5dd9: $07
	ld   e, l                                        ; $5dda: $5d
	ld   b, $02                                      ; $5ddb: $06 $02
	dec  b                                           ; $5ddd: $05
	ld   bc, $2228                                   ; $5dde: $01 $28 $22
	nop                                              ; $5de1: $00
	rlca                                             ; $5de2: $07
	or   [hl]                                        ; $5de3: $b6
	rlca                                             ; $5de4: $07
	ld   [bc], a                                     ; $5de5: $02
	dec  b                                           ; $5de6: $05
	ld   bc, $2232                                   ; $5de7: $01 $32 $22
	nop                                              ; $5dea: $00
	rlca                                             ; $5deb: $07
	or   $08                                         ; $5dec: $f6 $08
	ld   [bc], a                                     ; $5dee: $02
	dec  b                                           ; $5def: $05
	ld   bc, $223c                                   ; $5df0: $01 $3c $22
	nop                                              ; $5df3: $00
	rlca                                             ; $5df4: $07
	ld   l, $0a                                      ; $5df5: $2e $0a
	ld   [bc], a                                     ; $5df7: $02
	dec  b                                           ; $5df8: $05
	ld   bc, $2246                                   ; $5df9: $01 $46 $22
	nop                                              ; $5dfc: $00
	rlca                                             ; $5dfd: $07
	add  b                                           ; $5dfe: $80
	dec  bc                                          ; $5dff: $0b
	ld   [bc], a                                     ; $5e00: $02
	dec  b                                           ; $5e01: $05
	ld   bc, $2250                                   ; $5e02: $01 $50 $22
	nop                                              ; $5e05: $00
	ld   b, $d6                                      ; $5e06: $06 $d6
	inc  c                                           ; $5e08: $0c
	rlca                                             ; $5e09: $07
	ld   e, d                                        ; $5e0a: $5a
	inc  b                                           ; $5e0b: $04
	inc  b                                           ; $5e0c: $04
	add  b                                           ; $5e0d: $80
	ld   e, b                                        ; $5e0e: $58
	ld   bc, $20ff                                   ; $5e0f: $01 $ff $20
	nop                                              ; $5e12: $00
	dec  b                                           ; $5e13: $05
	add  b                                           ; $5e14: $80
	ld   c, a                                        ; $5e15: $4f
	ld   bc, $0001                                   ; $5e16: $01 $01 $00
	ld   bc, $a5a3                                   ; $5e19: $01 $a3 $a5
	db   $ec                                         ; $5e1c: $ec
	cp   d                                           ; $5e1d: $ba
	ld   a, h                                        ; $5e1e: $7c
	ld   [bc], a                                     ; $5e1f: $02
	dec  a                                           ; $5e20: $3d
	ld   [bc], a                                     ; $5e21: $02
	dec  b                                           ; $5e22: $05
	ld   [bc], a                                     ; $5e23: $02
	ld   d, l                                        ; $5e24: $55
	ld   a, l                                        ; $5e25: $7d
	ld   sp, hl                                      ; $5e26: $f9
	dec  c                                           ; $5e27: $0d
	nop                                              ; $5e28: $00
	ld   a, [bc]                                     ; $5e29: $0a
	add  hl, de                                      ; $5e2a: $19
	dec  b                                           ; $5e2b: $05
	inc  bc                                          ; $5e2c: $03
	dec  de                                          ; $5e2d: $1b
	inc  e                                           ; $5e2e: $1c
	nop                                              ; $5e2f: $00
	nop                                              ; $5e30: $00
	inc  e                                           ; $5e31: $1c
	nop                                              ; $5e32: $00
	ld   bc, $001b                                   ; $5e33: $01 $1b $00
	ld   [bc], a                                     ; $5e36: $02
	rlca                                             ; $5e37: $07
	ld   b, h                                        ; $5e38: $44
	ld   [bc], a                                     ; $5e39: $02
	ld   [bc], a                                     ; $5e3a: $02
	inc  bc                                          ; $5e3b: $03
	ld   bc, $2000                                   ; $5e3c: $01 $00 $20
	nop                                              ; $5e3f: $00
	rlca                                             ; $5e40: $07
	ld   h, c                                        ; $5e41: $61
	ld   [bc], a                                     ; $5e42: $02
	ld   [bc], a                                     ; $5e43: $02
	inc  bc                                          ; $5e44: $03
	ld   bc, $2001                                   ; $5e45: $01 $01 $20
	nop                                              ; $5e48: $00
	rlca                                             ; $5e49: $07
	ld   h, c                                        ; $5e4a: $61
	ld   [bc], a                                     ; $5e4b: $02
	ld   [bc], a                                     ; $5e4c: $02
	inc  bc                                          ; $5e4d: $03
	ld   bc, $2002                                   ; $5e4e: $01 $02 $20
	nop                                              ; $5e51: $00
	ld   b, $61                                      ; $5e52: $06 $61
	ld   [bc], a                                     ; $5e54: $02
	inc  e                                           ; $5e55: $1c
	rrca                                             ; $5e56: $0f
	ld   bc, $1401                                   ; $5e57: $01 $01 $14
	dec  de                                          ; $5e5a: $1b
	ld   bc, $0301                                   ; $5e5b: $01 $01 $03
	ld   c, d                                        ; $5e5e: $4a
	ld   [bc], a                                     ; $5e5f: $02
	or   h                                           ; $5e60: $b4
	ld   l, [hl]                                     ; $5e61: $6e
	sbc  a                                           ; $5e62: $9f
	dec  c                                           ; $5e63: $0d
	nop                                              ; $5e64: $00
	ld   a, [bc]                                     ; $5e65: $0a
	dec  b                                           ; $5e66: $05
	ld   b, b                                        ; $5e67: $40
	rst  $38                                         ; $5e68: $ff
	inc  bc                                          ; $5e69: $03
	rst  $38                                         ; $5e6a: $ff
	ld   bc, $2801                                   ; $5e6b: $01 $01 $28
	nop                                              ; $5e6e: $00
	ld   b, $97                                      ; $5e6f: $06 $97
	ld   bc, $0f1c                                   ; $5e71: $01 $1c $0f
	ld   [bc], a                                     ; $5e74: $02
	ld   [bc], a                                     ; $5e75: $02
	inc  d                                           ; $5e76: $14
	inc  e                                           ; $5e77: $1c
	ld   bc, $0301                                   ; $5e78: $01 $01 $03
	jr   z, jr_05e_5e81                              ; $5e7b: $28 $04

	ld   c, b                                        ; $5e7d: $48
	ld   l, [hl]                                     ; $5e7e: $6e
	ld   [hl], c                                     ; $5e7f: $71
	ld   l, l                                        ; $5e80: $6d

jr_05e_5e81:
	ld   a, b                                        ; $5e81: $78
	rst  $38                                         ; $5e82: $ff
	rst  $38                                         ; $5e83: $ff
	dec  c                                           ; $5e84: $0d
	inc  bc                                          ; $5e85: $03
	ld   c, d                                        ; $5e86: $4a
	ld   [bc], a                                     ; $5e87: $02
	or   h                                           ; $5e88: $b4
	ld   a, l                                        ; $5e89: $7d
	ld   bc, $1b07                                   ; $5e8a: $01 $07 $1b
	inc  e                                           ; $5e8d: $1c
	ld   bc, $6e08                                   ; $5e8e: $01 $08 $6e
	sbc  a                                           ; $5e91: $9f
	dec  c                                           ; $5e92: $0d
	nop                                              ; $5e93: $00
	ld   a, [bc]                                     ; $5e94: $0a
	ld   b, $97                                      ; $5e95: $06 $97
	ld   bc, $4005                                   ; $5e97: $01 $05 $40
	cp   $01                                         ; $5e9a: $fe $01
	nop                                              ; $5e9c: $00
	nop                                              ; $5e9d: $00
	dec  b                                           ; $5e9e: $05
	add  b                                           ; $5e9f: $80
	ld   e, b                                        ; $5ea0: $58
	ld   bc, $0000                                   ; $5ea1: $01 $00 $00
	dec  b                                           ; $5ea4: $05
	add  b                                           ; $5ea5: $80
	ld   e, c                                        ; $5ea6: $59
	ld   bc, $0000                                   ; $5ea7: $01 $00 $00
	dec  b                                           ; $5eaa: $05
	add  b                                           ; $5eab: $80
	ld   e, d                                        ; $5eac: $5a
	ld   bc, $0000                                   ; $5ead: $01 $00 $00
	dec  b                                           ; $5eb0: $05
	add  b                                           ; $5eb1: $80
	ld   e, e                                        ; $5eb2: $5b
	ld   bc, $0000                                   ; $5eb3: $01 $00 $00
	dec  b                                           ; $5eb6: $05
	add  b                                           ; $5eb7: $80
	ld   e, h                                        ; $5eb8: $5c
	ld   bc, $0000                                   ; $5eb9: $01 $00 $00
	dec  b                                           ; $5ebc: $05
	add  b                                           ; $5ebd: $80
	ld   e, l                                        ; $5ebe: $5d
	ld   bc, $0000                                   ; $5ebf: $01 $00 $00
	dec  b                                           ; $5ec2: $05
	add  b                                           ; $5ec3: $80
	ld   e, [hl]                                     ; $5ec4: $5e
	ld   bc, $0000                                   ; $5ec5: $01 $00 $00
	dec  b                                           ; $5ec8: $05
	add  b                                           ; $5ec9: $80
	ld   e, a                                        ; $5eca: $5f
	ld   bc, $0000                                   ; $5ecb: $01 $00 $00
	dec  b                                           ; $5ece: $05
	add  b                                           ; $5ecf: $80
	ld   h, b                                        ; $5ed0: $60
	ld   bc, $0000                                   ; $5ed1: $01 $00 $00
	rlca                                             ; $5ed4: $07
	ld   [de], a                                     ; $5ed5: $12
	ld   bc, $fe03                                   ; $5ed6: $01 $03 $fe
	ld   bc, $2503                                   ; $5ed9: $01 $03 $25
	nop                                              ; $5edc: $00
	dec  b                                           ; $5edd: $05
	ld   b, b                                        ; $5ede: $40
	cp   $03                                         ; $5edf: $fe $03
	cp   $01                                         ; $5ee1: $fe $01
	ld   bc, $0028                                   ; $5ee3: $01 $28 $00
	jr   nz, jr_05e_5ee9                             ; $5ee6: $20 $01

	ld   e, d                                        ; $5ee8: $5a

jr_05e_5ee9:
	nop                                              ; $5ee9: $00
	rlca                                             ; $5eea: $07
	inc  h                                           ; $5eeb: $24
	inc  bc                                          ; $5eec: $03
	ld   [bc], a                                     ; $5eed: $02
	dec  b                                           ; $5eee: $05
	ld   bc, $220a                                   ; $5eef: $01 $0a $22
	nop                                              ; $5ef2: $00
	rlca                                             ; $5ef3: $07
	ld   e, d                                        ; $5ef4: $5a
	inc  b                                           ; $5ef5: $04
	ld   [bc], a                                     ; $5ef6: $02
	dec  b                                           ; $5ef7: $05
	ld   bc, $2214                                   ; $5ef8: $01 $14 $22
	nop                                              ; $5efb: $00
	rlca                                             ; $5efc: $07
	or   e                                           ; $5efd: $b3
	dec  b                                           ; $5efe: $05
	ld   [bc], a                                     ; $5eff: $02
	dec  b                                           ; $5f00: $05
	ld   bc, $221e                                   ; $5f01: $01 $1e $22
	nop                                              ; $5f04: $00
	rlca                                             ; $5f05: $07
	dec  d                                           ; $5f06: $15
	rlca                                             ; $5f07: $07
	ld   [bc], a                                     ; $5f08: $02
	dec  b                                           ; $5f09: $05
	ld   bc, $2228                                   ; $5f0a: $01 $28 $22
	nop                                              ; $5f0d: $00
	rlca                                             ; $5f0e: $07
	ld   d, h                                        ; $5f0f: $54
	ld   [$0502], sp                                 ; $5f10: $08 $02 $05
	ld   bc, $2232                                   ; $5f13: $01 $32 $22
	nop                                              ; $5f16: $00
	rlca                                             ; $5f17: $07
	sub  d                                           ; $5f18: $92
	add  hl, bc                                      ; $5f19: $09
	ld   [bc], a                                     ; $5f1a: $02
	dec  b                                           ; $5f1b: $05
	ld   bc, $223c                                   ; $5f1c: $01 $3c $22
	nop                                              ; $5f1f: $00
	rlca                                             ; $5f20: $07
	rst  $10                                         ; $5f21: $d7
	ld   a, [bc]                                     ; $5f22: $0a
	ld   [bc], a                                     ; $5f23: $02
	dec  b                                           ; $5f24: $05
	ld   bc, $2246                                   ; $5f25: $01 $46 $22
	nop                                              ; $5f28: $00
	rlca                                             ; $5f29: $07
	inc  l                                           ; $5f2a: $2c
	inc  c                                           ; $5f2b: $0c
	ld   [bc], a                                     ; $5f2c: $02
	dec  b                                           ; $5f2d: $05
	ld   bc, $2250                                   ; $5f2e: $01 $50 $22
	nop                                              ; $5f31: $00
	ld   b, $76                                      ; $5f32: $06 $76
	dec  c                                           ; $5f34: $0d
	rlca                                             ; $5f35: $07
	ld   e, d                                        ; $5f36: $5a
	inc  b                                           ; $5f37: $04
	inc  b                                           ; $5f38: $04
	add  b                                           ; $5f39: $80
	ld   e, b                                        ; $5f3a: $58
	ld   bc, $20ff                                   ; $5f3b: $01 $ff $20
	nop                                              ; $5f3e: $00
	dec  b                                           ; $5f3f: $05
	add  b                                           ; $5f40: $80
	ld   e, b                                        ; $5f41: $58
	ld   bc, $0001                                   ; $5f42: $01 $01 $00
	ld   bc, $a5a3                                   ; $5f45: $01 $a3 $a5
	db   $ec                                         ; $5f48: $ec
	cp   d                                           ; $5f49: $ba
	ld   a, h                                        ; $5f4a: $7c
	inc  bc                                          ; $5f4b: $03
	ld   d, d                                        ; $5f4c: $52
	adc  h                                           ; $5f4d: $8c
	sbc  d                                           ; $5f4e: $9a
	ld   l, l                                        ; $5f4f: $6d
	ld   [bc], a                                     ; $5f50: $02
	adc  a                                           ; $5f51: $8f
	ld   a, l                                        ; $5f52: $7d
	ld   sp, hl                                      ; $5f53: $f9
	dec  c                                           ; $5f54: $0d
	nop                                              ; $5f55: $00
	ld   a, [bc]                                     ; $5f56: $0a
	add  hl, de                                      ; $5f57: $19
	dec  b                                           ; $5f58: $05
	inc  bc                                          ; $5f59: $03
	sub  $eb                                         ; $5f5a: $d6 $eb
	push af                                          ; $5f5c: $f5
	cp   d                                           ; $5f5d: $ba
	nop                                              ; $5f5e: $00
	nop                                              ; $5f5f: $00
	and  l                                           ; $5f60: $a5
	xor  a                                           ; $5f61: $af
	db   $ec                                         ; $5f62: $ec
	cp   d                                           ; $5f63: $ba
	nop                                              ; $5f64: $00
	ld   bc, $e3a3                                   ; $5f65: $01 $a3 $e3
	db   $ec                                         ; $5f68: $ec
	xor  h                                           ; $5f69: $ac
	nop                                              ; $5f6a: $00
	ld   [bc], a                                     ; $5f6b: $02
	rlca                                             ; $5f6c: $07
	ld   a, c                                        ; $5f6d: $79
	inc  bc                                          ; $5f6e: $03
	ld   [bc], a                                     ; $5f6f: $02
	inc  bc                                          ; $5f70: $03
	ld   bc, $2000                                   ; $5f71: $01 $00 $20
	nop                                              ; $5f74: $00
	rlca                                             ; $5f75: $07
	sub  [hl]                                        ; $5f76: $96
	inc  bc                                          ; $5f77: $03
	ld   [bc], a                                     ; $5f78: $02
	inc  bc                                          ; $5f79: $03
	ld   bc, $2001                                   ; $5f7a: $01 $01 $20
	nop                                              ; $5f7d: $00
	rlca                                             ; $5f7e: $07
	sub  [hl]                                        ; $5f7f: $96
	inc  bc                                          ; $5f80: $03
	ld   [bc], a                                     ; $5f81: $02
	inc  bc                                          ; $5f82: $03
	ld   bc, $2002                                   ; $5f83: $01 $02 $20
	nop                                              ; $5f86: $00
	ld   b, $96                                      ; $5f87: $06 $96
	inc  bc                                          ; $5f89: $03
	inc  e                                           ; $5f8a: $1c
	rrca                                             ; $5f8b: $0f
	ld   bc, $1401                                   ; $5f8c: $01 $01 $14
	dec  de                                          ; $5f8f: $1b
	ld   bc, $0301                                   ; $5f90: $01 $01 $03
	ld   c, d                                        ; $5f93: $4a
	ld   [bc], a                                     ; $5f94: $02
	or   h                                           ; $5f95: $b4
	ld   l, [hl]                                     ; $5f96: $6e
	sbc  a                                           ; $5f97: $9f
	dec  c                                           ; $5f98: $0d
	nop                                              ; $5f99: $00
	ld   a, [bc]                                     ; $5f9a: $0a
	dec  b                                           ; $5f9b: $05
	ld   b, b                                        ; $5f9c: $40
	rst  $38                                         ; $5f9d: $ff
	inc  bc                                          ; $5f9e: $03
	rst  $38                                         ; $5f9f: $ff
	ld   bc, $2801                                   ; $5fa0: $01 $01 $28
	nop                                              ; $5fa3: $00
	ld   b, $c3                                      ; $5fa4: $06 $c3
	ld   [bc], a                                     ; $5fa6: $02
	inc  e                                           ; $5fa7: $1c
	rrca                                             ; $5fa8: $0f
	ld   [bc], a                                     ; $5fa9: $02
	ld   [bc], a                                     ; $5faa: $02
	inc  d                                           ; $5fab: $14
	inc  e                                           ; $5fac: $1c
	ld   bc, $0301                                   ; $5fad: $01 $01 $03
	jr   z, jr_05e_5fb6                              ; $5fb0: $28 $04

	ld   c, b                                        ; $5fb2: $48
	ld   l, [hl]                                     ; $5fb3: $6e
	ld   [hl], c                                     ; $5fb4: $71
	ld   l, l                                        ; $5fb5: $6d

jr_05e_5fb6:
	ld   a, b                                        ; $5fb6: $78
	rst  $38                                         ; $5fb7: $ff
	rst  $38                                         ; $5fb8: $ff
	dec  c                                           ; $5fb9: $0d
	inc  bc                                          ; $5fba: $03
	ld   c, d                                        ; $5fbb: $4a
	ld   [bc], a                                     ; $5fbc: $02
	or   h                                           ; $5fbd: $b4
	ld   a, l                                        ; $5fbe: $7d
	ld   bc, $d607                                   ; $5fbf: $01 $07 $d6
	db   $eb                                         ; $5fc2: $eb
	push af                                          ; $5fc3: $f5
	cp   d                                           ; $5fc4: $ba
	ld   bc, $6e08                                   ; $5fc5: $01 $08 $6e
	sbc  a                                           ; $5fc8: $9f
	dec  c                                           ; $5fc9: $0d
	nop                                              ; $5fca: $00
	ld   a, [bc]                                     ; $5fcb: $0a
	ld   b, $c3                                      ; $5fcc: $06 $c3
	ld   [bc], a                                     ; $5fce: $02
	rlca                                             ; $5fcf: $07
	ld   a, [bc]                                     ; $5fd0: $0a
	dec  b                                           ; $5fd1: $05
	inc  b                                           ; $5fd2: $04
	add  b                                           ; $5fd3: $80
	ld   d, b                                        ; $5fd4: $50
	ld   bc, $20ff                                   ; $5fd5: $01 $ff $20
	nop                                              ; $5fd8: $00
	dec  b                                           ; $5fd9: $05
	add  b                                           ; $5fda: $80
	ld   d, b                                        ; $5fdb: $50
	ld   bc, $0001                                   ; $5fdc: $01 $01 $00
	ld   bc, $a5a3                                   ; $5fdf: $01 $a3 $a5
	db   $ec                                         ; $5fe2: $ec
	cp   d                                           ; $5fe3: $ba
	ld   a, h                                        ; $5fe4: $7c
	inc  b                                           ; $5fe5: $04
	pop  de                                          ; $5fe6: $d1
	inc  bc                                          ; $5fe7: $03
	jp   nc, $f97d                                   ; $5fe8: $d2 $7d $f9

	dec  c                                           ; $5feb: $0d
	nop                                              ; $5fec: $00
	ld   a, [bc]                                     ; $5fed: $0a
	add  hl, de                                      ; $5fee: $19
	dec  b                                           ; $5fef: $05
	inc  bc                                          ; $5ff0: $03
	ld   [de], a                                     ; $5ff1: $12
	ld   de, $bc17                                   ; $5ff2: $11 $17 $bc
	push af                                          ; $5ff5: $f5
	jp   nz, $0000                                  ; $5ff6: $c2 $00 $00

	ld   [de], a                                     ; $5ff9: $12
	rla                                              ; $5ffa: $17
	rla                                              ; $5ffb: $17
	cp   h                                           ; $5ffc: $bc
	push af                                          ; $5ffd: $f5
	jp   nz, Boot                                    ; $5ffe: $c2 $00 $01

	ld   [de], a                                     ; $6001: $12
	ld   de, $bc11                                   ; $6002: $11 $11 $bc
	push af                                          ; $6005: $f5
	jp   nz, $0200                                   ; $6006: $c2 $00 $02

	rlca                                             ; $6009: $07
	ld   d, $04                                      ; $600a: $16 $04
	ld   [bc], a                                     ; $600c: $02
	inc  bc                                          ; $600d: $03
	ld   bc, $2000                                   ; $600e: $01 $00 $20
	nop                                              ; $6011: $00
	rlca                                             ; $6012: $07
	inc  sp                                          ; $6013: $33
	inc  b                                           ; $6014: $04
	ld   [bc], a                                     ; $6015: $02
	inc  bc                                          ; $6016: $03
	ld   bc, $2001                                   ; $6017: $01 $01 $20
	nop                                              ; $601a: $00
	rlca                                             ; $601b: $07
	inc  sp                                          ; $601c: $33
	inc  b                                           ; $601d: $04
	ld   [bc], a                                     ; $601e: $02
	inc  bc                                          ; $601f: $03
	ld   bc, $2002                                   ; $6020: $01 $02 $20
	nop                                              ; $6023: $00
	ld   b, $33                                      ; $6024: $06 $33
	inc  b                                           ; $6026: $04
	inc  e                                           ; $6027: $1c
	rrca                                             ; $6028: $0f
	ld   bc, $1401                                   ; $6029: $01 $01 $14
	dec  de                                          ; $602c: $1b
	ld   bc, $0301                                   ; $602d: $01 $01 $03
	ld   c, d                                        ; $6030: $4a
	ld   [bc], a                                     ; $6031: $02
	or   h                                           ; $6032: $b4
	ld   l, [hl]                                     ; $6033: $6e
	sbc  a                                           ; $6034: $9f
	dec  c                                           ; $6035: $0d
	nop                                              ; $6036: $00
	ld   a, [bc]                                     ; $6037: $0a
	dec  b                                           ; $6038: $05
	ld   b, b                                        ; $6039: $40
	rst  $38                                         ; $603a: $ff
	inc  bc                                          ; $603b: $03
	rst  $38                                         ; $603c: $ff
	ld   bc, $2801                                   ; $603d: $01 $01 $28
	nop                                              ; $6040: $00
	ld   b, $97                                      ; $6041: $06 $97
	ld   bc, $0f1c                                   ; $6043: $01 $1c $0f
	ld   [bc], a                                     ; $6046: $02
	ld   [bc], a                                     ; $6047: $02
	inc  d                                           ; $6048: $14
	inc  e                                           ; $6049: $1c
	ld   bc, $0301                                   ; $604a: $01 $01 $03
	jr   z, jr_05e_6053                              ; $604d: $28 $04

	ld   c, b                                        ; $604f: $48
	ld   l, [hl]                                     ; $6050: $6e
	ld   [hl], c                                     ; $6051: $71
	ld   l, l                                        ; $6052: $6d

jr_05e_6053:
	ld   a, b                                        ; $6053: $78
	rst  $38                                         ; $6054: $ff
	rst  $38                                         ; $6055: $ff
	dec  c                                           ; $6056: $0d
	inc  bc                                          ; $6057: $03
	ld   c, d                                        ; $6058: $4a
	ld   [bc], a                                     ; $6059: $02
	or   h                                           ; $605a: $b4
	ld   a, l                                        ; $605b: $7d
	ld   bc, $1207                                   ; $605c: $01 $07 $12
	ld   de, $0117                                   ; $605f: $11 $17 $01
	ld   [$9f6e], sp                                 ; $6062: $08 $6e $9f
	dec  c                                           ; $6065: $0d
	nop                                              ; $6066: $00
	ld   a, [bc]                                     ; $6067: $0a
	ld   b, $97                                      ; $6068: $06 $97
	ld   bc, $b307                                   ; $606a: $01 $07 $b3
	dec  b                                           ; $606d: $05
	inc  b                                           ; $606e: $04
	add  b                                           ; $606f: $80
	ld   e, c                                        ; $6070: $59
	ld   bc, $20ff                                   ; $6071: $01 $ff $20
	nop                                              ; $6074: $00
	dec  b                                           ; $6075: $05
	add  b                                           ; $6076: $80
	ld   e, c                                        ; $6077: $59
	ld   bc, $0001                                   ; $6078: $01 $01 $00
	ld   bc, $a5a3                                   ; $607b: $01 $a3 $a5
	db   $ec                                         ; $607e: $ec
	cp   d                                           ; $607f: $ba
	ld   e, d                                        ; $6080: $5a
	sbc  [hl]                                        ; $6081: $9e
	dec  c                                           ; $6082: $0d
	ld   d, d                                        ; $6083: $52
	ld   [hl], d                                     ; $6084: $72
	sub  b                                           ; $6085: $90
	ld   l, [hl]                                     ; $6086: $6e
	ld   d, d                                        ; $6087: $52
	ld   [hl], h                                     ; $6088: $74
	ld   d, d                                        ; $6089: $52
	sbc  c                                           ; $608a: $99
	dec  c                                           ; $608b: $0d
	ld   a, d                                        ; $608c: $7a
	ld   d, d                                        ; $608d: $52
	ld   e, [hl]                                     ; $608e: $5e
	sbc  c                                           ; $608f: $99
	adc  l                                           ; $6090: $8d
	ld   a, h                                        ; $6091: $7c
	inc  b                                           ; $6092: $04
	rst  ToBoot                                         ; $6093: $c7
	inc  bc                                          ; $6094: $03
	ld   c, a                                        ; $6095: $4f
	ld   a, l                                        ; $6096: $7d
	ld   sp, hl                                      ; $6097: $f9
	dec  c                                           ; $6098: $0d
	nop                                              ; $6099: $00
	ld   a, [bc]                                     ; $609a: $0a
	add  hl, de                                      ; $609b: $19
	dec  b                                           ; $609c: $05
	inc  bc                                          ; $609d: $03
	cp   c                                           ; $609e: $b9
	push hl                                          ; $609f: $e5
	push af                                          ; $60a0: $f5
	sbc  $fb                                         ; $60a1: $de $fb
	db   $ed                                         ; $60a3: $ed
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	cp   c                                           ; $60a6: $b9
	push hl                                          ; $60a7: $e5
	push af                                          ; $60a8: $f5
	db   $dd                                         ; $60a9: $dd
	ei                                               ; $60aa: $fb
	or   c                                           ; $60ab: $b1
	nop                                              ; $60ac: $00
	ld   bc, $dfb0                                   ; $60ad: $01 $b0 $df
	inc  bc                                          ; $60b0: $03
	ld   l, b                                        ; $60b1: $68
	dec  b                                           ; $60b2: $05
	inc  c                                           ; $60b3: $0c
	nop                                              ; $60b4: $00
	ld   [bc], a                                     ; $60b5: $02
	rlca                                             ; $60b6: $07
	jp   $0204                                       ; $60b7: $c3 $04 $02


	inc  bc                                          ; $60ba: $03
	ld   bc, $2000                                   ; $60bb: $01 $00 $20
	nop                                              ; $60be: $00
	rlca                                             ; $60bf: $07
	ldh  [rDIV], a                                   ; $60c0: $e0 $04
	ld   [bc], a                                     ; $60c2: $02
	inc  bc                                          ; $60c3: $03
	ld   bc, $2001                                   ; $60c4: $01 $01 $20
	nop                                              ; $60c7: $00
	rlca                                             ; $60c8: $07
	ldh  [rDIV], a                                   ; $60c9: $e0 $04
	ld   [bc], a                                     ; $60cb: $02
	inc  bc                                          ; $60cc: $03
	ld   bc, $2002                                   ; $60cd: $01 $02 $20
	nop                                              ; $60d0: $00
	ld   b, $e0                                      ; $60d1: $06 $e0
	inc  b                                           ; $60d3: $04
	inc  e                                           ; $60d4: $1c
	rrca                                             ; $60d5: $0f
	ld   bc, $1401                                   ; $60d6: $01 $01 $14
	dec  de                                          ; $60d9: $1b
	ld   bc, $0301                                   ; $60da: $01 $01 $03
	ld   c, d                                        ; $60dd: $4a
	ld   [bc], a                                     ; $60de: $02
	or   h                                           ; $60df: $b4
	ld   l, [hl]                                     ; $60e0: $6e
	sbc  a                                           ; $60e1: $9f
	dec  c                                           ; $60e2: $0d
	nop                                              ; $60e3: $00
	ld   a, [bc]                                     ; $60e4: $0a
	dec  b                                           ; $60e5: $05
	ld   b, b                                        ; $60e6: $40
	rst  $38                                         ; $60e7: $ff
	inc  bc                                          ; $60e8: $03
	rst  $38                                         ; $60e9: $ff
	ld   bc, $2801                                   ; $60ea: $01 $01 $28
	nop                                              ; $60ed: $00
	ld   b, $c3                                      ; $60ee: $06 $c3
	ld   [bc], a                                     ; $60f0: $02
	inc  e                                           ; $60f1: $1c
	rrca                                             ; $60f2: $0f
	ld   [bc], a                                     ; $60f3: $02
	ld   [bc], a                                     ; $60f4: $02
	inc  d                                           ; $60f5: $14
	inc  e                                           ; $60f6: $1c
	ld   bc, $0301                                   ; $60f7: $01 $01 $03
	jr   z, jr_05e_6100                              ; $60fa: $28 $04

	ld   c, b                                        ; $60fc: $48
	ld   l, [hl]                                     ; $60fd: $6e
	ld   [hl], c                                     ; $60fe: $71
	ld   l, l                                        ; $60ff: $6d

jr_05e_6100:
	ld   a, b                                        ; $6100: $78
	rst  $38                                         ; $6101: $ff
	rst  $38                                         ; $6102: $ff
	dec  c                                           ; $6103: $0d
	inc  bc                                          ; $6104: $03
	ld   c, d                                        ; $6105: $4a
	ld   [bc], a                                     ; $6106: $02
	or   h                                           ; $6107: $b4
	ld   a, l                                        ; $6108: $7d
	ld   bc, $b907                                   ; $6109: $01 $07 $b9
	push hl                                          ; $610c: $e5
	push af                                          ; $610d: $f5
	sbc  $fb                                         ; $610e: $de $fb
	db   $ed                                         ; $6110: $ed
	ld   bc, $6e08                                   ; $6111: $01 $08 $6e
	sbc  a                                           ; $6114: $9f
	dec  c                                           ; $6115: $0d
	nop                                              ; $6116: $00
	ld   a, [bc]                                     ; $6117: $0a
	ld   b, $c3                                      ; $6118: $06 $c3
	ld   [bc], a                                     ; $611a: $02
	rlca                                             ; $611b: $07
	ld   e, l                                        ; $611c: $5d
	ld   b, $04                                      ; $611d: $06 $04
	add  b                                           ; $611f: $80
	ld   d, c                                        ; $6120: $51
	ld   bc, $20ff                                   ; $6121: $01 $ff $20
	nop                                              ; $6124: $00
	dec  b                                           ; $6125: $05
	add  b                                           ; $6126: $80
	ld   d, c                                        ; $6127: $51
	ld   bc, $0001                                   ; $6128: $01 $01 $00
	ld   bc, $a5a3                                   ; $612b: $01 $a3 $a5
	db   $ec                                         ; $612e: $ec
	cp   d                                           ; $612f: $ba
	ld   a, h                                        ; $6130: $7c
	dec  c                                           ; $6131: $0d
	jp   c, $c9ba                                    ; $6132: $da $ba $c9

	jp   nc, $c9fb                                   ; $6135: $d2 $fb $c9

	set  7, e                                        ; $6138: $cb $fb
	dec  c                                           ; $613a: $0d
	cp   c                                           ; $613b: $b9
	push hl                                          ; $613c: $e5
	push af                                          ; $613d: $f5
	sbc  $fb                                         ; $613e: $de $fb
	db   $ed                                         ; $6140: $ed
	ld   a, h                                        ; $6141: $7c
	ld   [bc], a                                     ; $6142: $02
	db   $fc                                         ; $6143: $fc
	inc  b                                           ; $6144: $04
	ld   d, h                                        ; $6145: $54
	ld   a, l                                        ; $6146: $7d
	ld   sp, hl                                      ; $6147: $f9
	dec  c                                           ; $6148: $0d
	nop                                              ; $6149: $00
	ld   a, [bc]                                     ; $614a: $0a
	add  hl, de                                      ; $614b: $19
	dec  b                                           ; $614c: $05
	inc  bc                                          ; $614d: $03
	ld   e, b                                        ; $614e: $58
	halt                                             ; $614f: $76
	ld   h, c                                        ; $6150: $61
	nop                                              ; $6151: $00
	nop                                              ; $6152: $00
	ld   e, b                                        ; $6153: $58
	and  c                                           ; $6154: $a1
	ld   a, b                                        ; $6155: $78
	nop                                              ; $6156: $00
	ld   bc, $6f77                                   ; $6157: $01 $77 $6f
	sub  a                                           ; $615a: $97
	ld   [hl], l                                     ; $615b: $75
	sub  b                                           ; $615c: $90
	ld   a, b                                        ; $615d: $78
	ld   d, d                                        ; $615e: $52
	nop                                              ; $615f: $00
	ld   [bc], a                                     ; $6160: $02
	rlca                                             ; $6161: $07
	ld   l, [hl]                                     ; $6162: $6e
	dec  b                                           ; $6163: $05
	ld   [bc], a                                     ; $6164: $02
	inc  bc                                          ; $6165: $03
	ld   bc, $2000                                   ; $6166: $01 $00 $20
	nop                                              ; $6169: $00
	rlca                                             ; $616a: $07
	adc  e                                           ; $616b: $8b
	dec  b                                           ; $616c: $05
	ld   [bc], a                                     ; $616d: $02
	inc  bc                                          ; $616e: $03
	ld   bc, $2001                                   ; $616f: $01 $01 $20
	nop                                              ; $6172: $00
	rlca                                             ; $6173: $07
	adc  e                                           ; $6174: $8b
	dec  b                                           ; $6175: $05
	ld   [bc], a                                     ; $6176: $02
	inc  bc                                          ; $6177: $03
	ld   bc, $2002                                   ; $6178: $01 $02 $20
	nop                                              ; $617b: $00
	ld   b, $8b                                      ; $617c: $06 $8b
	dec  b                                           ; $617e: $05
	inc  e                                           ; $617f: $1c
	rrca                                             ; $6180: $0f
	ld   bc, $1401                                   ; $6181: $01 $01 $14
	dec  de                                          ; $6184: $1b
	ld   bc, $0301                                   ; $6185: $01 $01 $03
	ld   c, d                                        ; $6188: $4a
	ld   [bc], a                                     ; $6189: $02
	or   h                                           ; $618a: $b4
	ld   l, [hl]                                     ; $618b: $6e
	sbc  a                                           ; $618c: $9f
	dec  c                                           ; $618d: $0d
	nop                                              ; $618e: $00
	ld   a, [bc]                                     ; $618f: $0a
	dec  b                                           ; $6190: $05
	ld   b, b                                        ; $6191: $40
	rst  $38                                         ; $6192: $ff
	inc  bc                                          ; $6193: $03
	rst  $38                                         ; $6194: $ff
	ld   bc, $2801                                   ; $6195: $01 $01 $28
	nop                                              ; $6198: $00
	ld   b, $97                                      ; $6199: $06 $97
	ld   bc, $0f1c                                   ; $619b: $01 $1c $0f
	ld   [bc], a                                     ; $619e: $02
	ld   [bc], a                                     ; $619f: $02
	inc  d                                           ; $61a0: $14
	inc  e                                           ; $61a1: $1c
	ld   bc, $0301                                   ; $61a2: $01 $01 $03
	jr   z, jr_05e_61ab                              ; $61a5: $28 $04

	ld   c, b                                        ; $61a7: $48
	ld   l, [hl]                                     ; $61a8: $6e
	ld   [hl], c                                     ; $61a9: $71
	ld   l, l                                        ; $61aa: $6d

jr_05e_61ab:
	ld   a, b                                        ; $61ab: $78
	rst  $38                                         ; $61ac: $ff
	rst  $38                                         ; $61ad: $ff
	dec  c                                           ; $61ae: $0d
	inc  bc                                          ; $61af: $03
	ld   c, d                                        ; $61b0: $4a
	ld   [bc], a                                     ; $61b1: $02
	or   h                                           ; $61b2: $b4
	ld   a, l                                        ; $61b3: $7d
	sbc  [hl]                                        ; $61b4: $9e
	ld   bc, $5807                                   ; $61b5: $01 $07 $58
	halt                                             ; $61b8: $76
	ld   h, c                                        ; $61b9: $61
	ld   bc, $6e08                                   ; $61ba: $01 $08 $6e
	sbc  a                                           ; $61bd: $9f
	dec  c                                           ; $61be: $0d
	nop                                              ; $61bf: $00
	ld   a, [bc]                                     ; $61c0: $0a
	ld   b, $97                                      ; $61c1: $06 $97
	ld   bc, $1507                                   ; $61c3: $01 $07 $15
	rlca                                             ; $61c6: $07
	inc  b                                           ; $61c7: $04
	add  b                                           ; $61c8: $80
	ld   e, d                                        ; $61c9: $5a
	ld   bc, $20ff                                   ; $61ca: $01 $ff $20
	nop                                              ; $61cd: $00
	dec  b                                           ; $61ce: $05
	add  b                                           ; $61cf: $80
	ld   e, d                                        ; $61d0: $5a
	ld   bc, $0001                                   ; $61d1: $01 $01 $00
	ld   bc, $a5a3                                   ; $61d4: $01 $a3 $a5
	db   $ec                                         ; $61d7: $ec
	cp   d                                           ; $61d8: $ba
	ld   a, h                                        ; $61d9: $7c
	inc  b                                           ; $61da: $04
	rst  ToBoot                                         ; $61db: $c7
	inc  bc                                          ; $61dc: $03
	sbc  h                                           ; $61dd: $9c
	ld   a, l                                        ; $61de: $7d
	ld   sp, hl                                      ; $61df: $f9
	dec  c                                           ; $61e0: $0d
	nop                                              ; $61e1: $00
	ld   a, [bc]                                     ; $61e2: $0a
	add  hl, de                                      ; $61e3: $19
	dec  b                                           ; $61e4: $05
	inc  bc                                          ; $61e5: $03
	cp   b                                           ; $61e6: $b8
	push hl                                          ; $61e7: $e5
	ret                                              ; $61e8: $c9


	ei                                               ; $61e9: $fb
	rst  $10                                         ; $61ea: $d7
	db   $ec                                         ; $61eb: $ec
	and  e                                           ; $61ec: $a3
	push af                                          ; $61ed: $f5
	nop                                              ; $61ee: $00
	nop                                              ; $61ef: $00
	cp   b                                           ; $61f0: $b8
	push hl                                          ; $61f1: $e5
	ret                                              ; $61f2: $c9


	ei                                               ; $61f3: $fb
	rst  $10                                         ; $61f4: $d7
	db   $ec                                         ; $61f5: $ec
	db   $ec                                         ; $61f6: $ec
	and  e                                           ; $61f7: $a3
	push af                                          ; $61f8: $f5
	ret                                              ; $61f9: $c9


	nop                                              ; $61fa: $00
	ld   bc, $e5b8                                   ; $61fb: $01 $b8 $e5
	jp   z, $d7fb                                    ; $61fe: $ca $fb $d7

	db   $ec                                         ; $6201: $ec
	and  e                                           ; $6202: $a3
	push af                                          ; $6203: $f5
	nop                                              ; $6204: $00
	ld   [bc], a                                     ; $6205: $02
	rlca                                             ; $6206: $07
	inc  de                                          ; $6207: $13
	ld   b, $02                                      ; $6208: $06 $02
	inc  bc                                          ; $620a: $03
	ld   bc, $2000                                   ; $620b: $01 $00 $20
	nop                                              ; $620e: $00
	rlca                                             ; $620f: $07
	jr   nc, jr_05e_6218                             ; $6210: $30 $06

	ld   [bc], a                                     ; $6212: $02
	inc  bc                                          ; $6213: $03
	ld   bc, $2001                                   ; $6214: $01 $01 $20
	nop                                              ; $6217: $00

jr_05e_6218:
	rlca                                             ; $6218: $07
	jr   nc, jr_05e_6221                             ; $6219: $30 $06

	ld   [bc], a                                     ; $621b: $02
	inc  bc                                          ; $621c: $03
	ld   bc, $2002                                   ; $621d: $01 $02 $20
	nop                                              ; $6220: $00

jr_05e_6221:
	ld   b, $30                                      ; $6221: $06 $30
	ld   b, $1c                                      ; $6223: $06 $1c
	rrca                                             ; $6225: $0f
	ld   bc, $1401                                   ; $6226: $01 $01 $14
	dec  de                                          ; $6229: $1b
	ld   bc, $0301                                   ; $622a: $01 $01 $03
	ld   c, d                                        ; $622d: $4a
	ld   [bc], a                                     ; $622e: $02
	or   h                                           ; $622f: $b4
	ld   l, [hl]                                     ; $6230: $6e
	sbc  a                                           ; $6231: $9f
	dec  c                                           ; $6232: $0d
	nop                                              ; $6233: $00
	ld   a, [bc]                                     ; $6234: $0a
	dec  b                                           ; $6235: $05
	ld   b, b                                        ; $6236: $40
	rst  $38                                         ; $6237: $ff
	inc  bc                                          ; $6238: $03
	rst  $38                                         ; $6239: $ff
	ld   bc, $2801                                   ; $623a: $01 $01 $28
	nop                                              ; $623d: $00
	ld   b, $c3                                      ; $623e: $06 $c3
	ld   [bc], a                                     ; $6240: $02
	inc  e                                           ; $6241: $1c
	rrca                                             ; $6242: $0f
	ld   [bc], a                                     ; $6243: $02
	ld   [bc], a                                     ; $6244: $02
	inc  d                                           ; $6245: $14
	inc  e                                           ; $6246: $1c
	ld   bc, $0301                                   ; $6247: $01 $01 $03
	jr   z, jr_05e_6250                              ; $624a: $28 $04

	ld   c, b                                        ; $624c: $48
	ld   l, [hl]                                     ; $624d: $6e
	ld   [hl], c                                     ; $624e: $71
	ld   l, l                                        ; $624f: $6d

jr_05e_6250:
	ld   a, b                                        ; $6250: $78
	rst  $38                                         ; $6251: $ff
	rst  $38                                         ; $6252: $ff
	dec  c                                           ; $6253: $0d
	inc  bc                                          ; $6254: $03
	ld   c, d                                        ; $6255: $4a
	ld   [bc], a                                     ; $6256: $02
	or   h                                           ; $6257: $b4
	ld   a, l                                        ; $6258: $7d
	ld   bc, $b807                                   ; $6259: $01 $07 $b8
	push hl                                          ; $625c: $e5
	ret                                              ; $625d: $c9


	ei                                               ; $625e: $fb
	rst  $10                                         ; $625f: $d7
	db   $ec                                         ; $6260: $ec
	and  e                                           ; $6261: $a3
	push af                                          ; $6262: $f5
	ld   bc, $0d08                                   ; $6263: $01 $08 $0d
	ld   l, [hl]                                     ; $6266: $6e
	sbc  a                                           ; $6267: $9f
	dec  c                                           ; $6268: $0d
	nop                                              ; $6269: $00
	ld   a, [bc]                                     ; $626a: $0a
	ld   b, $c3                                      ; $626b: $06 $c3
	ld   [bc], a                                     ; $626d: $02
	rlca                                             ; $626e: $07
	or   [hl]                                        ; $626f: $b6
	rlca                                             ; $6270: $07
	inc  b                                           ; $6271: $04
	add  b                                           ; $6272: $80
	ld   d, d                                        ; $6273: $52
	ld   bc, $20ff                                   ; $6274: $01 $ff $20
	nop                                              ; $6277: $00
	dec  b                                           ; $6278: $05
	add  b                                           ; $6279: $80
	ld   d, d                                        ; $627a: $52
	ld   bc, $0001                                   ; $627b: $01 $01 $00
	ld   bc, $a5a3                                   ; $627e: $01 $a3 $a5
	db   $ec                                         ; $6281: $ec
	cp   d                                           ; $6282: $ba
	ld   a, h                                        ; $6283: $7c
	dec  c                                           ; $6284: $0d
	inc  b                                           ; $6285: $04
	adc  d                                           ; $6286: $8a
	inc  bc                                          ; $6287: $03
	ld   e, [hl]                                     ; $6288: $5e
	ld   [bc], a                                     ; $6289: $02
	adc  h                                           ; $628a: $8c
	ld   a, l                                        ; $628b: $7d
	ld   [hl], d                                     ; $628c: $72
	ld   e, h                                        ; $628d: $5c
	ld   a, h                                        ; $628e: $7c
	ld   [hl], a                                     ; $628f: $77
	sbc  d                                           ; $6290: $9a
	ld   sp, hl                                      ; $6291: $f9
	dec  c                                           ; $6292: $0d
	nop                                              ; $6293: $00
	ld   a, [bc]                                     ; $6294: $0a
	add  hl, de                                      ; $6295: $19
	dec  b                                           ; $6296: $05
	inc  bc                                          ; $6297: $03
	and  l                                           ; $6298: $a5
	db   $ec                                         ; $6299: $ec
	cp   d                                           ; $629a: $ba
	di                                               ; $629b: $f3
	rst  JumpTable                                         ; $629c: $df
	db   $ec                                         ; $629d: $ec
	ld   [$c4ce], a                                  ; $629e: $ea $ce $c4
	ret                                              ; $62a1: $c9


	nop                                              ; $62a2: $00
	nop                                              ; $62a3: $00
	and  e                                           ; $62a4: $a3
	and  l                                           ; $62a5: $a5
	db   $ec                                         ; $62a6: $ec
	cp   d                                           ; $62a7: $ba
	di                                               ; $62a8: $f3
	ret  nc                                          ; $62a9: $d0

	db   $ec                                         ; $62aa: $ec
	or   d                                           ; $62ab: $b2
	ei                                               ; $62ac: $fb
	push af                                          ; $62ad: $f5
	nop                                              ; $62ae: $00
	ld   bc, $e5b9                                   ; $62af: $01 $b9 $e5
	push af                                          ; $62b2: $f5
	sbc  $fb                                         ; $62b3: $de $fb
	db   $ed                                         ; $62b5: $ed
	di                                               ; $62b6: $f3
	and  e                                           ; $62b7: $a3
	ret  nz                                          ; $62b8: $c0

	call nz, $00b0                                   ; $62b9: $c4 $b0 $00
	ld   [bc], a                                     ; $62bc: $02
	rlca                                             ; $62bd: $07
	jp   z, $0206                                    ; $62be: $ca $06 $02

	inc  bc                                          ; $62c1: $03
	ld   bc, $2000                                   ; $62c2: $01 $00 $20
	nop                                              ; $62c5: $00
	rlca                                             ; $62c6: $07
	rst  $20                                         ; $62c7: $e7
	ld   b, $02                                      ; $62c8: $06 $02
	inc  bc                                          ; $62ca: $03
	ld   bc, $2001                                   ; $62cb: $01 $01 $20
	nop                                              ; $62ce: $00
	rlca                                             ; $62cf: $07
	rst  $20                                         ; $62d0: $e7
	ld   b, $02                                      ; $62d1: $06 $02
	inc  bc                                          ; $62d3: $03
	ld   bc, $2002                                   ; $62d4: $01 $02 $20
	nop                                              ; $62d7: $00
	ld   b, $e7                                      ; $62d8: $06 $e7
	ld   b, $1c                                      ; $62da: $06 $1c
	rrca                                             ; $62dc: $0f
	ld   bc, $1401                                   ; $62dd: $01 $01 $14
	dec  de                                          ; $62e0: $1b
	ld   bc, $0301                                   ; $62e1: $01 $01 $03
	ld   c, d                                        ; $62e4: $4a
	ld   [bc], a                                     ; $62e5: $02
	or   h                                           ; $62e6: $b4
	ld   l, [hl]                                     ; $62e7: $6e
	sbc  a                                           ; $62e8: $9f
	dec  c                                           ; $62e9: $0d
	nop                                              ; $62ea: $00
	ld   a, [bc]                                     ; $62eb: $0a
	dec  b                                           ; $62ec: $05
	ld   b, b                                        ; $62ed: $40
	rst  $38                                         ; $62ee: $ff
	inc  bc                                          ; $62ef: $03
	rst  $38                                         ; $62f0: $ff
	ld   bc, $2801                                   ; $62f1: $01 $01 $28
	nop                                              ; $62f4: $00
	ld   b, $97                                      ; $62f5: $06 $97
	ld   bc, $0f1c                                   ; $62f7: $01 $1c $0f
	ld   [bc], a                                     ; $62fa: $02
	ld   [bc], a                                     ; $62fb: $02
	inc  d                                           ; $62fc: $14
	inc  e                                           ; $62fd: $1c
	ld   bc, $0301                                   ; $62fe: $01 $01 $03
	jr   z, jr_05e_6307                              ; $6301: $28 $04

	ld   c, b                                        ; $6303: $48
	ld   l, [hl]                                     ; $6304: $6e
	ld   [hl], c                                     ; $6305: $71
	ld   l, l                                        ; $6306: $6d

jr_05e_6307:
	ld   a, b                                        ; $6307: $78
	rst  $38                                         ; $6308: $ff
	rst  $38                                         ; $6309: $ff
	inc  bc                                          ; $630a: $03
	ld   c, d                                        ; $630b: $4a
	ld   [bc], a                                     ; $630c: $02
	or   h                                           ; $630d: $b4
	ld   a, l                                        ; $630e: $7d
	dec  c                                           ; $630f: $0d
	ld   bc, $a507                                   ; $6310: $01 $07 $a5
	db   $ec                                         ; $6313: $ec
	cp   d                                           ; $6314: $ba
	di                                               ; $6315: $f3
	rst  JumpTable                                         ; $6316: $df
	db   $ec                                         ; $6317: $ec
	ld   [$c4ce], a                                  ; $6318: $ea $ce $c4
	ret                                              ; $631b: $c9


	ld   bc, $6e08                                   ; $631c: $01 $08 $6e
	sbc  a                                           ; $631f: $9f
	dec  c                                           ; $6320: $0d
	nop                                              ; $6321: $00
	ld   a, [bc]                                     ; $6322: $0a
	ld   b, $97                                      ; $6323: $06 $97
	ld   bc, $5407                                   ; $6325: $01 $07 $54
	ld   [$8004], sp                                 ; $6328: $08 $04 $80
	ld   e, e                                        ; $632b: $5b
	ld   bc, $20ff                                   ; $632c: $01 $ff $20
	nop                                              ; $632f: $00
	dec  b                                           ; $6330: $05
	add  b                                           ; $6331: $80
	ld   e, e                                        ; $6332: $5b
	ld   bc, $0001                                   ; $6333: $01 $01 $00
	ld   bc, $a5a3                                   ; $6336: $01 $a3 $a5
	db   $ec                                         ; $6339: $ec
	cp   d                                           ; $633a: $ba
	ld   e, d                                        ; $633b: $5a
	inc  bc                                          ; $633c: $03
	sub  h                                           ; $633d: $94
	inc  b                                           ; $633e: $04
	sbc  [hl]                                        ; $633f: $9e
	and  b                                           ; $6340: $a0
	dec  c                                           ; $6341: $0d
	sub  [hl]                                        ; $6342: $96
	add  h                                           ; $6343: $84
	halt                                             ; $6344: $76
	ld   e, e                                        ; $6345: $5b
	ld   a, l                                        ; $6346: $7d
	ld   a, b                                        ; $6347: $78
	and  c                                           ; $6348: $a1
	ld   [hl], h                                     ; $6349: $74
	ld   [bc], a                                     ; $634a: $02
	sbc  l                                           ; $634b: $9d
	ld   d, h                                        ; $634c: $54
	ld   sp, hl                                      ; $634d: $f9
	dec  c                                           ; $634e: $0d
	nop                                              ; $634f: $00
	ld   a, [bc]                                     ; $6350: $0a
	add  hl, de                                      ; $6351: $19
	dec  b                                           ; $6352: $05
	inc  bc                                          ; $6353: $03
	and  e                                           ; $6354: $a3
	and  l                                           ; $6355: $a5
	db   $ec                                         ; $6356: $ec
	cp   d                                           ; $6357: $ba
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	ld   d, b                                        ; $635a: $50
	ld   l, l                                        ; $635b: $6d
	ld   h, l                                        ; $635c: $65
	nop                                              ; $635d: $00
	ld   bc, $6d9d                                   ; $635e: $01 $9d $6d
	ld   h, l                                        ; $6361: $65
	nop                                              ; $6362: $00
	ld   [bc], a                                     ; $6363: $02
	rlca                                             ; $6364: $07
	ld   [hl], c                                     ; $6365: $71
	rlca                                             ; $6366: $07
	ld   [bc], a                                     ; $6367: $02
	inc  bc                                          ; $6368: $03
	ld   bc, $2000                                   ; $6369: $01 $00 $20
	nop                                              ; $636c: $00
	rlca                                             ; $636d: $07
	adc  [hl]                                        ; $636e: $8e
	rlca                                             ; $636f: $07
	ld   [bc], a                                     ; $6370: $02
	inc  bc                                          ; $6371: $03
	ld   bc, $2001                                   ; $6372: $01 $01 $20
	nop                                              ; $6375: $00
	rlca                                             ; $6376: $07
	adc  [hl]                                        ; $6377: $8e
	rlca                                             ; $6378: $07
	ld   [bc], a                                     ; $6379: $02
	inc  bc                                          ; $637a: $03
	ld   bc, $2002                                   ; $637b: $01 $02 $20
	nop                                              ; $637e: $00
	ld   b, $8e                                      ; $637f: $06 $8e
	rlca                                             ; $6381: $07
	inc  e                                           ; $6382: $1c
	rrca                                             ; $6383: $0f
	ld   bc, $1401                                   ; $6384: $01 $01 $14
	dec  de                                          ; $6387: $1b
	ld   bc, $0301                                   ; $6388: $01 $01 $03
	ld   c, d                                        ; $638b: $4a
	ld   [bc], a                                     ; $638c: $02
	or   h                                           ; $638d: $b4
	ld   l, [hl]                                     ; $638e: $6e
	sbc  a                                           ; $638f: $9f
	dec  c                                           ; $6390: $0d
	nop                                              ; $6391: $00
	ld   a, [bc]                                     ; $6392: $0a
	dec  b                                           ; $6393: $05
	ld   b, b                                        ; $6394: $40
	rst  $38                                         ; $6395: $ff
	inc  bc                                          ; $6396: $03
	rst  $38                                         ; $6397: $ff
	ld   bc, $2801                                   ; $6398: $01 $01 $28
	nop                                              ; $639b: $00
	ld   b, $c3                                      ; $639c: $06 $c3
	ld   [bc], a                                     ; $639e: $02
	inc  e                                           ; $639f: $1c
	rrca                                             ; $63a0: $0f
	ld   [bc], a                                     ; $63a1: $02
	ld   [bc], a                                     ; $63a2: $02
	inc  d                                           ; $63a3: $14
	inc  e                                           ; $63a4: $1c
	ld   bc, $0301                                   ; $63a5: $01 $01 $03
	jr   z, jr_05e_63ae                              ; $63a8: $28 $04

	ld   c, b                                        ; $63aa: $48
	ld   l, [hl]                                     ; $63ab: $6e
	ld   [hl], c                                     ; $63ac: $71
	ld   l, l                                        ; $63ad: $6d

jr_05e_63ae:
	ld   a, b                                        ; $63ae: $78
	rst  $38                                         ; $63af: $ff
	rst  $38                                         ; $63b0: $ff
	dec  c                                           ; $63b1: $0d
	inc  bc                                          ; $63b2: $03
	ld   c, d                                        ; $63b3: $4a
	ld   [bc], a                                     ; $63b4: $02
	or   h                                           ; $63b5: $b4
	ld   a, l                                        ; $63b6: $7d
	ld   bc, $a307                                   ; $63b7: $01 $07 $a3
	and  l                                           ; $63ba: $a5
	db   $ec                                         ; $63bb: $ec
	cp   d                                           ; $63bc: $ba
	ld   bc, $6e08                                   ; $63bd: $01 $08 $6e
	sbc  a                                           ; $63c0: $9f
	dec  c                                           ; $63c1: $0d
	nop                                              ; $63c2: $00
	ld   a, [bc]                                     ; $63c3: $0a
	ld   b, $c3                                      ; $63c4: $06 $c3
	ld   [bc], a                                     ; $63c6: $02
	rlca                                             ; $63c7: $07
	or   $08                                         ; $63c8: $f6 $08
	inc  b                                           ; $63ca: $04
	add  b                                           ; $63cb: $80
	ld   d, e                                        ; $63cc: $53
	ld   bc, $20ff                                   ; $63cd: $01 $ff $20
	nop                                              ; $63d0: $00
	dec  b                                           ; $63d1: $05
	add  b                                           ; $63d2: $80
	ld   d, e                                        ; $63d3: $53
	ld   bc, $0001                                   ; $63d4: $01 $01 $00
	ld   bc, $a5a3                                   ; $63d7: $01 $a3 $a5
	db   $ec                                         ; $63da: $ec
	cp   d                                           ; $63db: $ba
	ld   a, h                                        ; $63dc: $7c
	dec  c                                           ; $63dd: $0d
	inc  b                                           ; $63de: $04
	call nc, $037c                                   ; $63df: $d4 $7c $03
	dec  bc                                          ; $63e2: $0b
	ld   a, l                                        ; $63e3: $7d
	inc  b                                           ; $63e4: $04
	ld   c, c                                        ; $63e5: $49
	inc  bc                                          ; $63e6: $03
	dec  bc                                          ; $63e7: $0b
	ld   l, [hl]                                     ; $63e8: $6e
	ld   sp, hl                                      ; $63e9: $f9
	dec  c                                           ; $63ea: $0d
	nop                                              ; $63eb: $00
	ld   a, [bc]                                     ; $63ec: $0a
	add  hl, de                                      ; $63ed: $19
	dec  b                                           ; $63ee: $05
	inc  bc                                          ; $63ef: $03
	inc  bc                                          ; $63f0: $03
	ld   a, [bc]                                     ; $63f1: $0a
	inc  bc                                          ; $63f2: $03
	dec  bc                                          ; $63f3: $0b
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	inc  bc                                          ; $63f6: $03
	ld   bc, $0b03                                   ; $63f7: $01 $03 $0b
	nop                                              ; $63fa: $00
	ld   bc, $0202                                   ; $63fb: $01 $02 $02
	inc  bc                                          ; $63fe: $03
	dec  bc                                          ; $63ff: $0b
	nop                                              ; $6400: $00
	ld   [bc], a                                     ; $6401: $02
	rlca                                             ; $6402: $07
	rrca                                             ; $6403: $0f
	ld   [$0302], sp                                 ; $6404: $08 $02 $03
	ld   bc, $2000                                   ; $6407: $01 $00 $20
	nop                                              ; $640a: $00
	rlca                                             ; $640b: $07
	inc  l                                           ; $640c: $2c
	ld   [$0302], sp                                 ; $640d: $08 $02 $03
	ld   bc, $2001                                   ; $6410: $01 $01 $20
	nop                                              ; $6413: $00
	rlca                                             ; $6414: $07
	inc  l                                           ; $6415: $2c
	ld   [$0302], sp                                 ; $6416: $08 $02 $03
	ld   bc, $2002                                   ; $6419: $01 $02 $20
	nop                                              ; $641c: $00
	ld   b, $2c                                      ; $641d: $06 $2c
	ld   [$0f1c], sp                                 ; $641f: $08 $1c $0f
	ld   bc, $1401                                   ; $6422: $01 $01 $14
	dec  de                                          ; $6425: $1b
	ld   bc, $0301                                   ; $6426: $01 $01 $03
	ld   c, d                                        ; $6429: $4a
	ld   [bc], a                                     ; $642a: $02
	or   h                                           ; $642b: $b4
	ld   l, [hl]                                     ; $642c: $6e
	sbc  a                                           ; $642d: $9f
	dec  c                                           ; $642e: $0d
	nop                                              ; $642f: $00
	ld   a, [bc]                                     ; $6430: $0a
	dec  b                                           ; $6431: $05
	ld   b, b                                        ; $6432: $40
	rst  $38                                         ; $6433: $ff
	inc  bc                                          ; $6434: $03
	rst  $38                                         ; $6435: $ff
	ld   bc, $2801                                   ; $6436: $01 $01 $28
	nop                                              ; $6439: $00
	ld   b, $97                                      ; $643a: $06 $97
	ld   bc, $0f1c                                   ; $643c: $01 $1c $0f
	ld   [bc], a                                     ; $643f: $02
	ld   [bc], a                                     ; $6440: $02
	inc  d                                           ; $6441: $14
	inc  e                                           ; $6442: $1c
	ld   bc, $0301                                   ; $6443: $01 $01 $03
	jr   z, jr_05e_644c                              ; $6446: $28 $04

	ld   c, b                                        ; $6448: $48
	ld   l, [hl]                                     ; $6449: $6e
	ld   [hl], c                                     ; $644a: $71
	ld   l, l                                        ; $644b: $6d

jr_05e_644c:
	ld   a, b                                        ; $644c: $78
	rst  $38                                         ; $644d: $ff
	rst  $38                                         ; $644e: $ff
	dec  c                                           ; $644f: $0d
	inc  bc                                          ; $6450: $03
	ld   c, d                                        ; $6451: $4a
	ld   [bc], a                                     ; $6452: $02
	or   h                                           ; $6453: $b4
	ld   a, l                                        ; $6454: $7d
	ld   bc, $0307                                   ; $6455: $01 $07 $03
	ld   a, [bc]                                     ; $6458: $0a
	inc  bc                                          ; $6459: $03
	dec  bc                                          ; $645a: $0b
	ld   bc, $6e08                                   ; $645b: $01 $08 $6e
	sbc  a                                           ; $645e: $9f
	dec  c                                           ; $645f: $0d
	nop                                              ; $6460: $00
	ld   a, [bc]                                     ; $6461: $0a
	ld   b, $97                                      ; $6462: $06 $97
	ld   bc, $9207                                   ; $6464: $01 $07 $92
	add  hl, bc                                      ; $6467: $09
	inc  b                                           ; $6468: $04
	add  b                                           ; $6469: $80
	ld   e, h                                        ; $646a: $5c
	ld   bc, $20ff                                   ; $646b: $01 $ff $20
	nop                                              ; $646e: $00
	dec  b                                           ; $646f: $05
	add  b                                           ; $6470: $80
	ld   e, h                                        ; $6471: $5c
	ld   bc, $0001                                   ; $6472: $01 $01 $00
	ld   bc, $e5b9                                   ; $6475: $01 $b9 $e5
	push af                                          ; $6478: $f5
	sbc  $fb                                         ; $6479: $de $fb
	db   $ed                                         ; $647b: $ed
	ld   a, h                                        ; $647c: $7c
	dec  b                                           ; $647d: $05
	dec  bc                                          ; $647e: $0b
	inc  bc                                          ; $647f: $03
	add  d                                           ; $6480: $82
	ld   a, l                                        ; $6481: $7d
	ld   sp, hl                                      ; $6482: $f9
	dec  c                                           ; $6483: $0d
	nop                                              ; $6484: $00
	ld   a, [bc]                                     ; $6485: $0a
	add  hl, de                                      ; $6486: $19
	dec  b                                           ; $6487: $05
	inc  bc                                          ; $6488: $03
	sub  $eb                                         ; $6489: $d6 $eb
	push af                                          ; $648b: $f5
	cp   b                                           ; $648c: $b8
	ei                                               ; $648d: $fb
	call $0000                                      ; $648e: $cd $00 $00
	sub  $eb                                         ; $6491: $d6 $eb
	push af                                          ; $6493: $f5
	cp   [hl]                                        ; $6494: $be
	pop  af                                          ; $6495: $f1
	ei                                               ; $6496: $fb
	cp   e                                           ; $6497: $bb
	nop                                              ; $6498: $00
	ld   bc, $678d                                   ; $6499: $01 $8d $67
	ld   l, b                                        ; $649c: $68
	ld   l, a                                        ; $649d: $6f
	sub  c                                           ; $649e: $91
	and  c                                           ; $649f: $a1
	nop                                              ; $64a0: $00
	ld   [bc], a                                     ; $64a1: $02
	rlca                                             ; $64a2: $07
	xor  a                                           ; $64a3: $af
	ld   [$0302], sp                                 ; $64a4: $08 $02 $03
	ld   bc, $2000                                   ; $64a7: $01 $00 $20
	nop                                              ; $64aa: $00
	rlca                                             ; $64ab: $07
	call z, $0208                                    ; $64ac: $cc $08 $02
	inc  bc                                          ; $64af: $03
	ld   bc, $2001                                   ; $64b0: $01 $01 $20
	nop                                              ; $64b3: $00
	rlca                                             ; $64b4: $07
	call z, $0208                                    ; $64b5: $cc $08 $02
	inc  bc                                          ; $64b8: $03
	ld   bc, $2002                                   ; $64b9: $01 $02 $20
	nop                                              ; $64bc: $00
	ld   b, $cc                                      ; $64bd: $06 $cc
	ld   [$0f1c], sp                                 ; $64bf: $08 $1c $0f
	ld   bc, $1401                                   ; $64c2: $01 $01 $14
	dec  de                                          ; $64c5: $1b
	ld   bc, $0301                                   ; $64c6: $01 $01 $03
	ld   c, d                                        ; $64c9: $4a
	ld   [bc], a                                     ; $64ca: $02
	or   h                                           ; $64cb: $b4
	ld   l, [hl]                                     ; $64cc: $6e
	sbc  a                                           ; $64cd: $9f
	dec  c                                           ; $64ce: $0d
	nop                                              ; $64cf: $00
	ld   a, [bc]                                     ; $64d0: $0a
	dec  b                                           ; $64d1: $05
	ld   b, b                                        ; $64d2: $40
	rst  $38                                         ; $64d3: $ff
	inc  bc                                          ; $64d4: $03
	rst  $38                                         ; $64d5: $ff
	ld   bc, $2801                                   ; $64d6: $01 $01 $28
	nop                                              ; $64d9: $00
	ld   b, $c3                                      ; $64da: $06 $c3
	ld   [bc], a                                     ; $64dc: $02
	inc  e                                           ; $64dd: $1c
	rrca                                             ; $64de: $0f
	ld   [bc], a                                     ; $64df: $02
	ld   [bc], a                                     ; $64e0: $02
	inc  d                                           ; $64e1: $14
	inc  e                                           ; $64e2: $1c
	ld   bc, $0301                                   ; $64e3: $01 $01 $03
	jr   z, jr_05e_64ec                              ; $64e6: $28 $04

	ld   c, b                                        ; $64e8: $48
	ld   l, [hl]                                     ; $64e9: $6e
	ld   [hl], c                                     ; $64ea: $71
	ld   l, l                                        ; $64eb: $6d

jr_05e_64ec:
	ld   a, b                                        ; $64ec: $78
	rst  $38                                         ; $64ed: $ff
	rst  $38                                         ; $64ee: $ff
	dec  c                                           ; $64ef: $0d
	inc  bc                                          ; $64f0: $03
	ld   c, d                                        ; $64f1: $4a
	ld   [bc], a                                     ; $64f2: $02
	or   h                                           ; $64f3: $b4
	ld   a, l                                        ; $64f4: $7d
	ld   bc, $d607                                   ; $64f5: $01 $07 $d6
	db   $eb                                         ; $64f8: $eb
	push af                                          ; $64f9: $f5
	cp   b                                           ; $64fa: $b8
	ei                                               ; $64fb: $fb
	call $0801                                       ; $64fc: $cd $01 $08
	ld   l, [hl]                                     ; $64ff: $6e
	sbc  a                                           ; $6500: $9f
	dec  c                                           ; $6501: $0d
	nop                                              ; $6502: $00
	ld   a, [bc]                                     ; $6503: $0a
	ld   b, $c3                                      ; $6504: $06 $c3
	ld   [bc], a                                     ; $6506: $02
	rlca                                             ; $6507: $07
	ld   l, $0a                                      ; $6508: $2e $0a
	inc  b                                           ; $650a: $04
	add  b                                           ; $650b: $80
	ld   d, h                                        ; $650c: $54
	ld   bc, $20ff                                   ; $650d: $01 $ff $20
	nop                                              ; $6510: $00
	dec  b                                           ; $6511: $05
	add  b                                           ; $6512: $80
	ld   d, h                                        ; $6513: $54
	ld   bc, $0001                                   ; $6514: $01 $01 $00
	ld   bc, $a5a3                                   ; $6517: $01 $a3 $a5
	db   $ec                                         ; $651a: $ec
	cp   d                                           ; $651b: $ba
	ld   a, h                                        ; $651c: $7c
	inc  bc                                          ; $651d: $03
	db   $fd                                         ; $651e: $fd
	ld   [bc], a                                     ; $651f: $02
	adc  h                                           ; $6520: $8c
	ld   a, l                                        ; $6521: $7d
	ld   sp, hl                                      ; $6522: $f9
	dec  c                                           ; $6523: $0d
	nop                                              ; $6524: $00
	ld   a, [bc]                                     ; $6525: $0a
	add  hl, de                                      ; $6526: $19
	dec  b                                           ; $6527: $05
	inc  bc                                          ; $6528: $03
	inc  bc                                          ; $6529: $03
	rst  $38                                         ; $652a: $ff
	inc  b                                           ; $652b: $04
	ld   b, e                                        ; $652c: $43
	dec  b                                           ; $652d: $05
	ld   a, [bc]                                     ; $652e: $0a
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	ld   [bc], a                                     ; $6531: $02
	dec  h                                           ; $6532: $25
	ld   [bc], a                                     ; $6533: $02
	ld   a, e                                        ; $6534: $7b
	ld   d, d                                        ; $6535: $52
	nop                                              ; $6536: $00
	ld   bc, $b602                                   ; $6537: $01 $02 $b6
	inc  bc                                          ; $653a: $03
	ld   l, e                                        ; $653b: $6b
	nop                                              ; $653c: $00
	ld   [bc], a                                     ; $653d: $02
	rlca                                             ; $653e: $07
	ld   c, e                                        ; $653f: $4b
	add  hl, bc                                      ; $6540: $09
	ld   [bc], a                                     ; $6541: $02
	inc  bc                                          ; $6542: $03
	ld   bc, $2000                                   ; $6543: $01 $00 $20
	nop                                              ; $6546: $00
	rlca                                             ; $6547: $07
	ld   l, b                                        ; $6548: $68
	add  hl, bc                                      ; $6549: $09
	ld   [bc], a                                     ; $654a: $02
	inc  bc                                          ; $654b: $03
	ld   bc, $2001                                   ; $654c: $01 $01 $20
	nop                                              ; $654f: $00
	rlca                                             ; $6550: $07
	ld   l, b                                        ; $6551: $68
	add  hl, bc                                      ; $6552: $09
	ld   [bc], a                                     ; $6553: $02
	inc  bc                                          ; $6554: $03
	ld   bc, $2002                                   ; $6555: $01 $02 $20
	nop                                              ; $6558: $00
	ld   b, $68                                      ; $6559: $06 $68

Jump_05e_655b:
	add  hl, bc                                      ; $655b: $09
	inc  e                                           ; $655c: $1c
	rrca                                             ; $655d: $0f
	ld   bc, $1401                                   ; $655e: $01 $01 $14
	dec  de                                          ; $6561: $1b
	ld   bc, $0301                                   ; $6562: $01 $01 $03
	ld   c, d                                        ; $6565: $4a
	ld   [bc], a                                     ; $6566: $02
	or   h                                           ; $6567: $b4
	ld   l, [hl]                                     ; $6568: $6e
	sbc  a                                           ; $6569: $9f
	dec  c                                           ; $656a: $0d
	nop                                              ; $656b: $00
	ld   a, [bc]                                     ; $656c: $0a
	dec  b                                           ; $656d: $05
	ld   b, b                                        ; $656e: $40
	rst  $38                                         ; $656f: $ff
	inc  bc                                          ; $6570: $03
	rst  $38                                         ; $6571: $ff
	ld   bc, $2801                                   ; $6572: $01 $01 $28
	nop                                              ; $6575: $00
	ld   b, $97                                      ; $6576: $06 $97
	ld   bc, $0f1c                                   ; $6578: $01 $1c $0f
	ld   [bc], a                                     ; $657b: $02
	ld   [bc], a                                     ; $657c: $02
	inc  d                                           ; $657d: $14
	inc  e                                           ; $657e: $1c
	ld   bc, $0301                                   ; $657f: $01 $01 $03
	jr   z, jr_05e_6588                              ; $6582: $28 $04

	ld   c, b                                        ; $6584: $48
	ld   l, [hl]                                     ; $6585: $6e
	ld   [hl], c                                     ; $6586: $71
	ld   l, l                                        ; $6587: $6d

jr_05e_6588:
	ld   a, b                                        ; $6588: $78
	rst  $38                                         ; $6589: $ff
	rst  $38                                         ; $658a: $ff
	dec  c                                           ; $658b: $0d
	inc  bc                                          ; $658c: $03
	ld   c, d                                        ; $658d: $4a
	ld   [bc], a                                     ; $658e: $02
	or   h                                           ; $658f: $b4
	ld   a, l                                        ; $6590: $7d
	ld   bc, $0307                                   ; $6591: $01 $07 $03
	rst  $38                                         ; $6594: $ff
	inc  b                                           ; $6595: $04
	ld   b, e                                        ; $6596: $43
	dec  b                                           ; $6597: $05
	ld   a, [bc]                                     ; $6598: $0a
	ld   bc, $6e08                                   ; $6599: $01 $08 $6e
	sbc  a                                           ; $659c: $9f
	dec  c                                           ; $659d: $0d
	nop                                              ; $659e: $00
	ld   a, [bc]                                     ; $659f: $0a
	ld   b, $97                                      ; $65a0: $06 $97
	ld   bc, $d707                                   ; $65a2: $01 $07 $d7
	ld   a, [bc]                                     ; $65a5: $0a
	inc  b                                           ; $65a6: $04
	add  b                                           ; $65a7: $80
	ld   e, l                                        ; $65a8: $5d
	ld   bc, $20ff                                   ; $65a9: $01 $ff $20
	nop                                              ; $65ac: $00
	dec  b                                           ; $65ad: $05
	add  b                                           ; $65ae: $80
	ld   e, l                                        ; $65af: $5d
	ld   bc, $0001                                   ; $65b0: $01 $01 $00
	ld   bc, $a5a3                                   ; $65b3: $01 $a3 $a5
	db   $ec                                         ; $65b6: $ec
	cp   d                                           ; $65b7: $ba
	ld   e, d                                        ; $65b8: $5a
	inc  bc                                          ; $65b9: $03
	cp   c                                           ; $65ba: $b9
	sbc  c                                           ; $65bb: $99
	dec  c                                           ; $65bc: $0d
	ld   [bc], a                                     ; $65bd: $02
	jr   c, jr_05e_65c4                              ; $65be: $38 $04

	ld   d, d                                        ; $65c0: $52
	ld   a, h                                        ; $65c1: $7c
	inc  bc                                          ; $65c2: $03
	dec  bc                                          ; $65c3: $0b

jr_05e_65c4:
	ld   a, l                                        ; $65c4: $7d
	ld   sp, hl                                      ; $65c5: $f9
	dec  c                                           ; $65c6: $0d
	nop                                              ; $65c7: $00
	ld   a, [bc]                                     ; $65c8: $0a
	add  hl, de                                      ; $65c9: $19
	dec  b                                           ; $65ca: $05
	inc  bc                                          ; $65cb: $03
	and  l                                           ; $65cc: $a5
	xor  c                                           ; $65cd: $a9
	rst  $28                                         ; $65ce: $ef
	ei                                               ; $65cf: $fb
	nop                                              ; $65d0: $00
	nop                                              ; $65d1: $00
	xor  $c4                                         ; $65d2: $ee $c4
	jp   z, Boot                                     ; $65d4: $ca $00 $01

	push de                                          ; $65d7: $d5
	push af                                          ; $65d8: $f5
	or   b                                           ; $65d9: $b0
	nop                                              ; $65da: $00
	ld   [bc], a                                     ; $65db: $02
	rlca                                             ; $65dc: $07
	jp   hl                                          ; $65dd: $e9


	add  hl, bc                                      ; $65de: $09
	ld   [bc], a                                     ; $65df: $02
	inc  bc                                          ; $65e0: $03
	ld   bc, $2000                                   ; $65e1: $01 $00 $20
	nop                                              ; $65e4: $00
	rlca                                             ; $65e5: $07
	ld   b, $0a                                      ; $65e6: $06 $0a
	ld   [bc], a                                     ; $65e8: $02
	inc  bc                                          ; $65e9: $03
	ld   bc, $2001                                   ; $65ea: $01 $01 $20
	nop                                              ; $65ed: $00
	rlca                                             ; $65ee: $07
	ld   b, $0a                                      ; $65ef: $06 $0a
	ld   [bc], a                                     ; $65f1: $02
	inc  bc                                          ; $65f2: $03
	ld   bc, $2002                                   ; $65f3: $01 $02 $20
	nop                                              ; $65f6: $00
	ld   b, $06                                      ; $65f7: $06 $06
	ld   a, [bc]                                     ; $65f9: $0a
	inc  e                                           ; $65fa: $1c
	rrca                                             ; $65fb: $0f
	ld   bc, $1401                                   ; $65fc: $01 $01 $14
	dec  de                                          ; $65ff: $1b
	ld   bc, $0301                                   ; $6600: $01 $01 $03
	ld   c, d                                        ; $6603: $4a
	ld   [bc], a                                     ; $6604: $02
	or   h                                           ; $6605: $b4
	ld   l, [hl]                                     ; $6606: $6e
	sbc  a                                           ; $6607: $9f
	dec  c                                           ; $6608: $0d
	nop                                              ; $6609: $00
	ld   a, [bc]                                     ; $660a: $0a
	dec  b                                           ; $660b: $05
	ld   b, b                                        ; $660c: $40
	rst  $38                                         ; $660d: $ff
	inc  bc                                          ; $660e: $03
	rst  $38                                         ; $660f: $ff
	ld   bc, $2801                                   ; $6610: $01 $01 $28
	nop                                              ; $6613: $00
	ld   b, $c3                                      ; $6614: $06 $c3
	ld   [bc], a                                     ; $6616: $02
	inc  e                                           ; $6617: $1c
	rrca                                             ; $6618: $0f
	ld   [bc], a                                     ; $6619: $02
	ld   [bc], a                                     ; $661a: $02
	inc  d                                           ; $661b: $14
	inc  e                                           ; $661c: $1c
	ld   bc, $0301                                   ; $661d: $01 $01 $03
	jr   z, jr_05e_6626                              ; $6620: $28 $04

	ld   c, b                                        ; $6622: $48
	ld   l, [hl]                                     ; $6623: $6e
	ld   [hl], c                                     ; $6624: $71
	ld   l, l                                        ; $6625: $6d

jr_05e_6626:
	ld   a, b                                        ; $6626: $78
	rst  $38                                         ; $6627: $ff
	rst  $38                                         ; $6628: $ff
	dec  c                                           ; $6629: $0d
	inc  bc                                          ; $662a: $03
	ld   c, d                                        ; $662b: $4a
	ld   [bc], a                                     ; $662c: $02
	or   h                                           ; $662d: $b4
	ld   a, l                                        ; $662e: $7d
	ld   bc, $a507                                   ; $662f: $01 $07 $a5
	xor  c                                           ; $6632: $a9
	rst  $28                                         ; $6633: $ef
	ei                                               ; $6634: $fb
	ld   bc, $6e08                                   ; $6635: $01 $08 $6e
	sbc  a                                           ; $6638: $9f
	dec  c                                           ; $6639: $0d
	nop                                              ; $663a: $00
	ld   a, [bc]                                     ; $663b: $0a
	ld   b, $c3                                      ; $663c: $06 $c3
	ld   [bc], a                                     ; $663e: $02
	rlca                                             ; $663f: $07
	add  b                                           ; $6640: $80
	dec  bc                                          ; $6641: $0b
	inc  b                                           ; $6642: $04
	add  b                                           ; $6643: $80
	ld   d, l                                        ; $6644: $55
	ld   bc, $20ff                                   ; $6645: $01 $ff $20
	nop                                              ; $6648: $00
	dec  b                                           ; $6649: $05
	add  b                                           ; $664a: $80
	ld   d, l                                        ; $664b: $55
	ld   bc, $0001                                   ; $664c: $01 $01 $00
	ld   bc, $a5a3                                   ; $664f: $01 $a3 $a5
	db   $ec                                         ; $6652: $ec
	cp   d                                           ; $6653: $ba
	ld   a, h                                        ; $6654: $7c
	dec  c                                           ; $6655: $0d
	ld   [bc], a                                     ; $6656: $02
	sbc  d                                           ; $6657: $9a
	ld   e, e                                        ; $6658: $5b
	ld   a, b                                        ; $6659: $78
	ld   [bc], a                                     ; $665a: $02
	add  d                                           ; $665b: $82
	inc  bc                                          ; $665c: $03
	ld   d, [hl]                                     ; $665d: $56
	ld   a, l                                        ; $665e: $7d
	ld   sp, hl                                      ; $665f: $f9
	dec  c                                           ; $6660: $0d
	nop                                              ; $6661: $00
	ld   a, [bc]                                     ; $6662: $0a
	add  hl, de                                      ; $6663: $19
	dec  b                                           ; $6664: $05
	inc  bc                                          ; $6665: $03
	inc  bc                                          ; $6666: $03
	ld   [hl], d                                     ; $6667: $72
	inc  b                                           ; $6668: $04
	ld   c, h                                        ; $6669: $4c
	ld   [bc], a                                     ; $666a: $02
	ld   d, $04                                      ; $666b: $16 $04
	ld   [hl+], a                                    ; $666d: $22
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	inc  bc                                          ; $6670: $03
	ld   [hl], d                                     ; $6671: $72
	nop                                              ; $6672: $00
	ld   bc, $4c04                                   ; $6673: $01 $04 $4c
	nop                                              ; $6676: $00
	ld   [bc], a                                     ; $6677: $02
	rlca                                             ; $6678: $07
	add  l                                           ; $6679: $85
	ld   a, [bc]                                     ; $667a: $0a
	ld   [bc], a                                     ; $667b: $02
	inc  bc                                          ; $667c: $03
	ld   bc, $2000                                   ; $667d: $01 $00 $20
	nop                                              ; $6680: $00
	rlca                                             ; $6681: $07
	and  d                                           ; $6682: $a2
	ld   a, [bc]                                     ; $6683: $0a
	ld   [bc], a                                     ; $6684: $02
	inc  bc                                          ; $6685: $03
	ld   bc, $2001                                   ; $6686: $01 $01 $20
	nop                                              ; $6689: $00
	rlca                                             ; $668a: $07
	and  d                                           ; $668b: $a2
	ld   a, [bc]                                     ; $668c: $0a
	ld   [bc], a                                     ; $668d: $02
	inc  bc                                          ; $668e: $03
	ld   bc, $2002                                   ; $668f: $01 $02 $20
	nop                                              ; $6692: $00
	ld   b, $a2                                      ; $6693: $06 $a2
	ld   a, [bc]                                     ; $6695: $0a
	inc  e                                           ; $6696: $1c
	rrca                                             ; $6697: $0f
	ld   bc, $1401                                   ; $6698: $01 $01 $14
	dec  de                                          ; $669b: $1b
	ld   bc, $0301                                   ; $669c: $01 $01 $03
	ld   c, d                                        ; $669f: $4a
	ld   [bc], a                                     ; $66a0: $02
	or   h                                           ; $66a1: $b4
	ld   l, [hl]                                     ; $66a2: $6e
	sbc  a                                           ; $66a3: $9f
	dec  c                                           ; $66a4: $0d
	nop                                              ; $66a5: $00
	ld   a, [bc]                                     ; $66a6: $0a
	dec  b                                           ; $66a7: $05
	ld   b, b                                        ; $66a8: $40
	rst  $38                                         ; $66a9: $ff
	inc  bc                                          ; $66aa: $03
	rst  $38                                         ; $66ab: $ff
	ld   bc, $2801                                   ; $66ac: $01 $01 $28
	nop                                              ; $66af: $00
	ld   b, $97                                      ; $66b0: $06 $97
	ld   bc, $0f1c                                   ; $66b2: $01 $1c $0f
	ld   [bc], a                                     ; $66b5: $02
	ld   [bc], a                                     ; $66b6: $02
	inc  d                                           ; $66b7: $14
	inc  e                                           ; $66b8: $1c
	ld   bc, $0301                                   ; $66b9: $01 $01 $03
	jr   z, jr_05e_66c2                              ; $66bc: $28 $04

	ld   c, b                                        ; $66be: $48
	ld   l, [hl]                                     ; $66bf: $6e
	ld   [hl], c                                     ; $66c0: $71
	ld   l, l                                        ; $66c1: $6d

jr_05e_66c2:
	ld   a, b                                        ; $66c2: $78
	rst  $38                                         ; $66c3: $ff
	rst  $38                                         ; $66c4: $ff
	dec  c                                           ; $66c5: $0d
	inc  bc                                          ; $66c6: $03
	ld   c, d                                        ; $66c7: $4a
	ld   [bc], a                                     ; $66c8: $02
	or   h                                           ; $66c9: $b4
	ld   a, l                                        ; $66ca: $7d
	ld   bc, $0307                                   ; $66cb: $01 $07 $03
	ld   [hl], d                                     ; $66ce: $72
	inc  b                                           ; $66cf: $04
	ld   c, h                                        ; $66d0: $4c
	ld   [bc], a                                     ; $66d1: $02
	ld   d, $04                                      ; $66d2: $16 $04
	ld   [hl+], a                                    ; $66d4: $22
	ld   bc, $0d08                                   ; $66d5: $01 $08 $0d
	ld   h, a                                        ; $66d8: $67
	ld   a, b                                        ; $66d9: $78
	sbc  l                                           ; $66da: $9d
	ld   l, a                                        ; $66db: $6f
	inc  bc                                          ; $66dc: $03
	ld   d, a                                        ; $66dd: $57
	inc  b                                           ; $66de: $04
	sub  l                                           ; $66df: $95
	ld   l, [hl]                                     ; $66e0: $6e
	sbc  a                                           ; $66e1: $9f
	dec  c                                           ; $66e2: $0d
	nop                                              ; $66e3: $00
	ld   a, [bc]                                     ; $66e4: $0a
	ld   b, $97                                      ; $66e5: $06 $97
	ld   bc, $2c07                                   ; $66e7: $01 $07 $2c
	inc  c                                           ; $66ea: $0c
	inc  b                                           ; $66eb: $04
	add  b                                           ; $66ec: $80
	ld   e, [hl]                                     ; $66ed: $5e
	ld   bc, $20ff                                   ; $66ee: $01 $ff $20
	nop                                              ; $66f1: $00
	dec  b                                           ; $66f2: $05
	add  b                                           ; $66f3: $80
	ld   e, [hl]                                     ; $66f4: $5e
	ld   bc, $0001                                   ; $66f5: $01 $01 $00
	ld   bc, $5103                                   ; $66f8: $01 $03 $51
	ld   [bc], a                                     ; $66fb: $02
	ld   a, [hl]                                     ; $66fc: $7e
	inc  b                                           ; $66fd: $04
	ret  z                                           ; $66fe: $c8

	ld   a, l                                        ; $66ff: $7d
	ld   [hl], a                                     ; $6700: $77
	and  c                                           ; $6701: $a1
	ld   a, b                                        ; $6702: $78
	inc  bc                                          ; $6703: $03
	cp   c                                           ; $6704: $b9
	sbc  b                                           ; $6705: $98
	inc  b                                           ; $6706: $04
	sub  d                                           ; $6707: $92
	ld   sp, hl                                      ; $6708: $f9
	dec  c                                           ; $6709: $0d
	nop                                              ; $670a: $00
	ld   a, [bc]                                     ; $670b: $0a
	add  hl, de                                      ; $670c: $19
	dec  b                                           ; $670d: $05
	inc  bc                                          ; $670e: $03
	ld   [bc], a                                     ; $670f: $02
	or   [hl]                                        ; $6710: $b6
	and  b                                           ; $6711: $a0
	inc  b                                           ; $6712: $04
	ld   a, a                                        ; $6713: $7f
	add  h                                           ; $6714: $84
	nop                                              ; $6715: $00
	nop                                              ; $6716: $00
	inc  bc                                          ; $6717: $03
	adc  $04                                         ; $6718: $ce $04
	ret  c                                           ; $671a: $d8

	and  b                                           ; $671b: $a0
	sub  b                                           ; $671c: $90
	ld   e, [hl]                                     ; $671d: $5e
	sbc  c                                           ; $671e: $99
	nop                                              ; $671f: $00
	ld   bc, $a303                                   ; $6720: $01 $03 $a3
	ld   [bc], a                                     ; $6723: $02
	add  l                                           ; $6724: $85
	and  b                                           ; $6725: $a0
	dec  b                                           ; $6726: $05
	db   $dd                                         ; $6727: $dd
	adc  [hl]                                        ; $6728: $8e
	nop                                              ; $6729: $00
	ld   [bc], a                                     ; $672a: $02
	rlca                                             ; $672b: $07
	jr   c, jr_05e_6739                              ; $672c: $38 $0b

	ld   [bc], a                                     ; $672e: $02
	inc  bc                                          ; $672f: $03
	ld   bc, $2000                                   ; $6730: $01 $00 $20
	nop                                              ; $6733: $00
	rlca                                             ; $6734: $07
	ld   d, l                                        ; $6735: $55
	dec  bc                                          ; $6736: $0b
	ld   [bc], a                                     ; $6737: $02
	inc  bc                                          ; $6738: $03

jr_05e_6739:
	ld   bc, $2001                                   ; $6739: $01 $01 $20
	nop                                              ; $673c: $00
	rlca                                             ; $673d: $07
	ld   d, l                                        ; $673e: $55
	dec  bc                                          ; $673f: $0b
	ld   [bc], a                                     ; $6740: $02
	inc  bc                                          ; $6741: $03
	ld   bc, $2002                                   ; $6742: $01 $02 $20
	nop                                              ; $6745: $00
	ld   b, $55                                      ; $6746: $06 $55
	dec  bc                                          ; $6748: $0b
	inc  e                                           ; $6749: $1c
	rrca                                             ; $674a: $0f
	ld   bc, $1401                                   ; $674b: $01 $01 $14
	dec  de                                          ; $674e: $1b
	ld   bc, $0301                                   ; $674f: $01 $01 $03
	ld   c, d                                        ; $6752: $4a
	ld   [bc], a                                     ; $6753: $02
	or   h                                           ; $6754: $b4
	ld   l, [hl]                                     ; $6755: $6e
	sbc  a                                           ; $6756: $9f
	dec  c                                           ; $6757: $0d
	nop                                              ; $6758: $00
	ld   a, [bc]                                     ; $6759: $0a
	dec  b                                           ; $675a: $05
	ld   b, b                                        ; $675b: $40
	rst  $38                                         ; $675c: $ff
	inc  bc                                          ; $675d: $03
	rst  $38                                         ; $675e: $ff
	ld   bc, $2801                                   ; $675f: $01 $01 $28
	nop                                              ; $6762: $00
	ld   b, $c3                                      ; $6763: $06 $c3
	ld   [bc], a                                     ; $6765: $02
	inc  e                                           ; $6766: $1c
	rrca                                             ; $6767: $0f
	ld   [bc], a                                     ; $6768: $02
	ld   [bc], a                                     ; $6769: $02
	inc  d                                           ; $676a: $14
	inc  e                                           ; $676b: $1c
	ld   bc, $0301                                   ; $676c: $01 $01 $03
	jr   z, jr_05e_6775                              ; $676f: $28 $04

	ld   c, b                                        ; $6771: $48
	ld   l, [hl]                                     ; $6772: $6e
	ld   [hl], c                                     ; $6773: $71
	ld   l, l                                        ; $6774: $6d

jr_05e_6775:
	ld   a, b                                        ; $6775: $78
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	dec  c                                           ; $6778: $0d
	inc  bc                                          ; $6779: $03
	ld   c, d                                        ; $677a: $4a
	ld   [bc], a                                     ; $677b: $02
	or   h                                           ; $677c: $b4
	ld   a, l                                        ; $677d: $7d
	sbc  [hl]                                        ; $677e: $9e
	ld   bc, $0207                                   ; $677f: $01 $07 $02
	or   [hl]                                        ; $6782: $b6
	and  b                                           ; $6783: $a0
	inc  b                                           ; $6784: $04
	ld   a, a                                        ; $6785: $7f
	add  h                                           ; $6786: $84
	ld   bc, $6e08                                   ; $6787: $01 $08 $6e
	sbc  a                                           ; $678a: $9f
	dec  c                                           ; $678b: $0d
	nop                                              ; $678c: $00
	ld   a, [bc]                                     ; $678d: $0a
	ld   b, $c3                                      ; $678e: $06 $c3
	ld   [bc], a                                     ; $6790: $02
	rlca                                             ; $6791: $07
	sub  $0c                                         ; $6792: $d6 $0c
	inc  b                                           ; $6794: $04
	add  b                                           ; $6795: $80
	ld   d, [hl]                                     ; $6796: $56
	ld   bc, $20ff                                   ; $6797: $01 $ff $20
	nop                                              ; $679a: $00
	dec  b                                           ; $679b: $05
	add  b                                           ; $679c: $80
	ld   d, [hl]                                     ; $679d: $56
	ld   bc, $0001                                   ; $679e: $01 $01 $00
	ld   bc, $a5a3                                   ; $67a1: $01 $a3 $a5
	db   $ec                                         ; $67a4: $ec
	cp   d                                           ; $67a5: $ba
	ld   a, h                                        ; $67a6: $7c
	dec  c                                           ; $67a7: $0d
	ld   e, b                                        ; $67a8: $58
	inc  b                                           ; $67a9: $04
	ld   l, $63                                      ; $67aa: $2e $63
	and  c                                           ; $67ac: $a1
	halt                                             ; $67ad: $76
	ld   e, b                                        ; $67ae: $58
	inc  b                                           ; $67af: $04
	add  c                                           ; $67b0: $81
	ld   h, e                                        ; $67b1: $63
	and  c                                           ; $67b2: $a1
	ld   a, l                                        ; $67b3: $7d
	dec  c                                           ; $67b4: $0d
	ld   a, b                                        ; $67b5: $78
	ld   a, c                                        ; $67b6: $79
	inc  bc                                          ; $67b7: $03
	add  d                                           ; $67b8: $82
	ld   sp, hl                                      ; $67b9: $f9
	dec  c                                           ; $67ba: $0d
	nop                                              ; $67bb: $00
	ld   a, [bc]                                     ; $67bc: $0a
	add  hl, de                                      ; $67bd: $19
	dec  b                                           ; $67be: $05
	inc  bc                                          ; $67bf: $03
	sub  $eb                                         ; $67c0: $d6 $eb
	push af                                          ; $67c2: $f5
	cp   d                                           ; $67c3: $ba
	inc  bc                                          ; $67c4: $03
	add  d                                           ; $67c5: $82
	nop                                              ; $67c6: $00
	nop                                              ; $67c7: $00
	sub  $eb                                         ; $67c8: $d6 $eb
	push af                                          ; $67ca: $f5
	cp   d                                           ; $67cb: $ba
	jp   nc, $00f5                                   ; $67cc: $d2 $f5 $00

	ld   bc, $afa5                                   ; $67cf: $01 $a5 $af
	db   $ec                                         ; $67d2: $ec
	cp   d                                           ; $67d3: $ba
	inc  bc                                          ; $67d4: $03
	add  d                                           ; $67d5: $82
	nop                                              ; $67d6: $00
	ld   [bc], a                                     ; $67d7: $02
	rlca                                             ; $67d8: $07
	push hl                                          ; $67d9: $e5
	dec  bc                                          ; $67da: $0b
	ld   [bc], a                                     ; $67db: $02
	inc  bc                                          ; $67dc: $03
	ld   bc, $2000                                   ; $67dd: $01 $00 $20
	nop                                              ; $67e0: $00
	rlca                                             ; $67e1: $07
	ld   [bc], a                                     ; $67e2: $02
	inc  c                                           ; $67e3: $0c
	ld   [bc], a                                     ; $67e4: $02
	inc  bc                                          ; $67e5: $03
	ld   bc, $2001                                   ; $67e6: $01 $01 $20
	nop                                              ; $67e9: $00
	rlca                                             ; $67ea: $07
	ld   [bc], a                                     ; $67eb: $02
	inc  c                                           ; $67ec: $0c
	ld   [bc], a                                     ; $67ed: $02
	inc  bc                                          ; $67ee: $03
	ld   bc, $2002                                   ; $67ef: $01 $02 $20
	nop                                              ; $67f2: $00
	ld   b, $02                                      ; $67f3: $06 $02
	inc  c                                           ; $67f5: $0c
	inc  e                                           ; $67f6: $1c
	rrca                                             ; $67f7: $0f
	ld   bc, $1401                                   ; $67f8: $01 $01 $14
	dec  de                                          ; $67fb: $1b
	ld   bc, $0301                                   ; $67fc: $01 $01 $03
	ld   c, d                                        ; $67ff: $4a
	ld   [bc], a                                     ; $6800: $02
	or   h                                           ; $6801: $b4
	ld   l, [hl]                                     ; $6802: $6e
	sbc  a                                           ; $6803: $9f
	dec  c                                           ; $6804: $0d
	nop                                              ; $6805: $00
	ld   a, [bc]                                     ; $6806: $0a
	dec  b                                           ; $6807: $05
	ld   b, b                                        ; $6808: $40
	rst  $38                                         ; $6809: $ff
	inc  bc                                          ; $680a: $03
	rst  $38                                         ; $680b: $ff
	ld   bc, $2801                                   ; $680c: $01 $01 $28
	nop                                              ; $680f: $00
	ld   b, $97                                      ; $6810: $06 $97
	ld   bc, $0f1c                                   ; $6812: $01 $1c $0f
	ld   [bc], a                                     ; $6815: $02
	ld   [bc], a                                     ; $6816: $02
	inc  d                                           ; $6817: $14
	inc  e                                           ; $6818: $1c
	ld   bc, $0301                                   ; $6819: $01 $01 $03
	jr   z, jr_05e_6822                              ; $681c: $28 $04

	ld   c, b                                        ; $681e: $48
	ld   l, [hl]                                     ; $681f: $6e
	ld   [hl], c                                     ; $6820: $71
	ld   l, l                                        ; $6821: $6d

jr_05e_6822:
	ld   a, b                                        ; $6822: $78
	rst  $38                                         ; $6823: $ff
	rst  $38                                         ; $6824: $ff
	dec  c                                           ; $6825: $0d
	inc  bc                                          ; $6826: $03
	ld   c, d                                        ; $6827: $4a
	ld   [bc], a                                     ; $6828: $02
	or   h                                           ; $6829: $b4
	ld   a, l                                        ; $682a: $7d
	ld   bc, $d607                                   ; $682b: $01 $07 $d6
	db   $eb                                         ; $682e: $eb
	push af                                          ; $682f: $f5
	cp   d                                           ; $6830: $ba
	inc  bc                                          ; $6831: $03
	add  d                                           ; $6832: $82
	ld   bc, $6e08                                   ; $6833: $01 $08 $6e
	sbc  a                                           ; $6836: $9f
	dec  c                                           ; $6837: $0d
	nop                                              ; $6838: $00
	ld   a, [bc]                                     ; $6839: $0a
	ld   b, $97                                      ; $683a: $06 $97
	ld   bc, $7607                                   ; $683c: $01 $07 $76
	dec  c                                           ; $683f: $0d
	inc  b                                           ; $6840: $04
	add  b                                           ; $6841: $80
	ld   e, a                                        ; $6842: $5f
	ld   bc, $20ff                                   ; $6843: $01 $ff $20
	nop                                              ; $6846: $00
	dec  b                                           ; $6847: $05
	add  b                                           ; $6848: $80
	ld   e, a                                        ; $6849: $5f
	ld   bc, $0001                                   ; $684a: $01 $01 $00
	ld   bc, $a5a3                                   ; $684d: $01 $a3 $a5
	db   $ec                                         ; $6850: $ec
	cp   d                                           ; $6851: $ba
	ld   e, d                                        ; $6852: $5a
	inc  b                                           ; $6853: $04
	ld   c, e                                        ; $6854: $4b
	inc  b                                           ; $6855: $04
	ldh  a, [c]                                      ; $6856: $f2
	ld   [bc], a                                     ; $6857: $02
	sub  a                                           ; $6858: $97
	ld   [hl], l                                     ; $6859: $75
	dec  c                                           ; $685a: $0d
	ld   [bc], a                                     ; $685b: $02
	rra                                              ; $685c: $1f
	ld   h, [hl]                                     ; $685d: $66
	sbc  c                                           ; $685e: $99
	inc  b                                           ; $685f: $04
	db   $ec                                         ; $6860: $ec
	ld   a, l                                        ; $6861: $7d
	ld   sp, hl                                      ; $6862: $f9
	dec  c                                           ; $6863: $0d
	nop                                              ; $6864: $00
	ld   a, [bc]                                     ; $6865: $0a
	add  hl, de                                      ; $6866: $19
	dec  b                                           ; $6867: $05
	inc  bc                                          ; $6868: $03
	inc  bc                                          ; $6869: $03
	ei                                               ; $686a: $fb
	inc  b                                           ; $686b: $04
	ld   a, [hl]                                     ; $686c: $7e
	ld   [bc], a                                     ; $686d: $02
	ld   a, l                                        ; $686e: $7d
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	inc  bc                                          ; $6871: $03
	ld   d, b                                        ; $6872: $50
	ld   [bc], a                                     ; $6873: $02
	ld   a, h                                        ; $6874: $7c
	ld   [bc], a                                     ; $6875: $02
	or   [hl]                                        ; $6876: $b6
	nop                                              ; $6877: $00
	ld   bc, $f402                                   ; $6878: $01 $02 $f4
	ld   [bc], a                                     ; $687b: $02
	ld   a, h                                        ; $687c: $7c
	ld   [bc], a                                     ; $687d: $02
	ldh  a, [c]                                      ; $687e: $f2
	nop                                              ; $687f: $00
	ld   [bc], a                                     ; $6880: $02
	rlca                                             ; $6881: $07
	adc  [hl]                                        ; $6882: $8e
	inc  c                                           ; $6883: $0c
	ld   [bc], a                                     ; $6884: $02
	inc  bc                                          ; $6885: $03
	ld   bc, $2000                                   ; $6886: $01 $00 $20
	nop                                              ; $6889: $00
	rlca                                             ; $688a: $07
	xor  e                                           ; $688b: $ab
	inc  c                                           ; $688c: $0c
	ld   [bc], a                                     ; $688d: $02
	inc  bc                                          ; $688e: $03
	ld   bc, $2001                                   ; $688f: $01 $01 $20
	nop                                              ; $6892: $00
	rlca                                             ; $6893: $07
	xor  e                                           ; $6894: $ab
	inc  c                                           ; $6895: $0c
	ld   [bc], a                                     ; $6896: $02
	inc  bc                                          ; $6897: $03
	ld   bc, $2002                                   ; $6898: $01 $02 $20
	nop                                              ; $689b: $00
	ld   b, $ab                                      ; $689c: $06 $ab
	inc  c                                           ; $689e: $0c
	inc  e                                           ; $689f: $1c
	rrca                                             ; $68a0: $0f
	ld   bc, $1401                                   ; $68a1: $01 $01 $14
	dec  de                                          ; $68a4: $1b
	ld   bc, $0301                                   ; $68a5: $01 $01 $03
	ld   c, d                                        ; $68a8: $4a
	ld   [bc], a                                     ; $68a9: $02
	or   h                                           ; $68aa: $b4
	ld   l, [hl]                                     ; $68ab: $6e
	sbc  a                                           ; $68ac: $9f
	dec  c                                           ; $68ad: $0d
	nop                                              ; $68ae: $00
	ld   a, [bc]                                     ; $68af: $0a
	dec  b                                           ; $68b0: $05
	ld   b, b                                        ; $68b1: $40
	rst  $38                                         ; $68b2: $ff
	inc  bc                                          ; $68b3: $03
	rst  $38                                         ; $68b4: $ff
	ld   bc, $2801                                   ; $68b5: $01 $01 $28
	nop                                              ; $68b8: $00
	ld   b, $c3                                      ; $68b9: $06 $c3
	ld   [bc], a                                     ; $68bb: $02
	inc  e                                           ; $68bc: $1c
	rrca                                             ; $68bd: $0f
	ld   [bc], a                                     ; $68be: $02
	ld   [bc], a                                     ; $68bf: $02
	inc  d                                           ; $68c0: $14
	inc  e                                           ; $68c1: $1c
	ld   bc, $0301                                   ; $68c2: $01 $01 $03
	jr   z, jr_05e_68cb                              ; $68c5: $28 $04

	ld   c, b                                        ; $68c7: $48
	ld   l, [hl]                                     ; $68c8: $6e
	ld   [hl], c                                     ; $68c9: $71
	ld   l, l                                        ; $68ca: $6d

jr_05e_68cb:
	ld   a, b                                        ; $68cb: $78
	rst  $38                                         ; $68cc: $ff
	rst  $38                                         ; $68cd: $ff
	dec  c                                           ; $68ce: $0d
	inc  bc                                          ; $68cf: $03
	ld   c, d                                        ; $68d0: $4a
	ld   [bc], a                                     ; $68d1: $02
	or   h                                           ; $68d2: $b4
	ld   a, l                                        ; $68d3: $7d
	sbc  [hl]                                        ; $68d4: $9e
	ld   bc, $0307                                   ; $68d5: $01 $07 $03
	ei                                               ; $68d8: $fb
	inc  b                                           ; $68d9: $04
	ld   a, [hl]                                     ; $68da: $7e
	ld   [bc], a                                     ; $68db: $02
	ld   a, l                                        ; $68dc: $7d
	ld   bc, $6e08                                   ; $68dd: $01 $08 $6e
	sbc  a                                           ; $68e0: $9f
	dec  c                                           ; $68e1: $0d
	nop                                              ; $68e2: $00
	ld   a, [bc]                                     ; $68e3: $0a
	ld   b, $c3                                      ; $68e4: $06 $c3
	ld   [bc], a                                     ; $68e6: $02
	rlca                                             ; $68e7: $07
	ld   hl, sp+$01                                  ; $68e8: $f8 $01
	inc  b                                           ; $68ea: $04
	add  b                                           ; $68eb: $80
	ld   d, a                                        ; $68ec: $57
	ld   bc, $20ff                                   ; $68ed: $01 $ff $20
	nop                                              ; $68f0: $00
	dec  b                                           ; $68f1: $05
	add  b                                           ; $68f2: $80
	ld   d, a                                        ; $68f3: $57
	ld   bc, $0001                                   ; $68f4: $01 $01 $00
	ld   bc, $a5a3                                   ; $68f7: $01 $a3 $a5
	db   $ec                                         ; $68fa: $ec
	cp   d                                           ; $68fb: $ba
	ld   a, l                                        ; $68fc: $7d
	dec  c                                           ; $68fd: $0d
	inc  bc                                          ; $68fe: $03
	xor  c                                           ; $68ff: $a9
	halt                                             ; $6900: $76
	ld   [bc], a                                     ; $6901: $02
	reti                                             ; $6902: $d9


	dec  b                                           ; $6903: $05
	jr   nc, jr_05e_696d                             ; $6904: $30 $67

	sbc  c                                           ; $6906: $99
	ld   [hl], d                                     ; $6907: $72
	sub  b                                           ; $6908: $90
	sbc  b                                           ; $6909: $98
	ld   l, [hl]                                     ; $690a: $6e
	ld   sp, hl                                      ; $690b: $f9
	dec  c                                           ; $690c: $0d
	nop                                              ; $690d: $00
	ld   a, [bc]                                     ; $690e: $0a
	add  hl, de                                      ; $690f: $19
	dec  b                                           ; $6910: $05
	inc  bc                                          ; $6911: $03
	inc  b                                           ; $6912: $04
	ld   c, $03                                      ; $6913: $0e $03
	sub  b                                           ; $6915: $90
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	inc  b                                           ; $6918: $04
	rst  $10                                         ; $6919: $d7
	inc  b                                           ; $691a: $04
	ld   hl, $0100                                   ; $691b: $21 $00 $01
	inc  bc                                          ; $691e: $03
	sub  h                                           ; $691f: $94
	inc  b                                           ; $6920: $04
	sbc  [hl]                                        ; $6921: $9e
	nop                                              ; $6922: $00
	ld   [bc], a                                     ; $6923: $02
	rlca                                             ; $6924: $07
	ld   sp, $020d                                   ; $6925: $31 $0d $02
	inc  bc                                          ; $6928: $03
	ld   bc, $2000                                   ; $6929: $01 $00 $20
	nop                                              ; $692c: $00
	rlca                                             ; $692d: $07
	ld   c, [hl]                                     ; $692e: $4e
	dec  c                                           ; $692f: $0d
	ld   [bc], a                                     ; $6930: $02
	inc  bc                                          ; $6931: $03
	ld   bc, $2001                                   ; $6932: $01 $01 $20
	nop                                              ; $6935: $00
	rlca                                             ; $6936: $07
	ld   c, [hl]                                     ; $6937: $4e
	dec  c                                           ; $6938: $0d
	ld   [bc], a                                     ; $6939: $02
	inc  bc                                          ; $693a: $03
	ld   bc, $2002                                   ; $693b: $01 $02 $20
	nop                                              ; $693e: $00
	ld   b, $4e                                      ; $693f: $06 $4e
	dec  c                                           ; $6941: $0d
	inc  e                                           ; $6942: $1c
	rrca                                             ; $6943: $0f
	ld   bc, $1401                                   ; $6944: $01 $01 $14
	dec  de                                          ; $6947: $1b
	ld   bc, $0301                                   ; $6948: $01 $01 $03
	ld   c, d                                        ; $694b: $4a
	ld   [bc], a                                     ; $694c: $02
	or   h                                           ; $694d: $b4
	ld   l, [hl]                                     ; $694e: $6e
	sbc  a                                           ; $694f: $9f
	dec  c                                           ; $6950: $0d
	nop                                              ; $6951: $00
	ld   a, [bc]                                     ; $6952: $0a
	dec  b                                           ; $6953: $05
	ld   b, b                                        ; $6954: $40
	rst  $38                                         ; $6955: $ff
	inc  bc                                          ; $6956: $03
	rst  $38                                         ; $6957: $ff
	ld   bc, $2801                                   ; $6958: $01 $01 $28
	nop                                              ; $695b: $00
	ld   b, $97                                      ; $695c: $06 $97
	ld   bc, $0f1c                                   ; $695e: $01 $1c $0f
	ld   [bc], a                                     ; $6961: $02
	ld   [bc], a                                     ; $6962: $02
	inc  d                                           ; $6963: $14
	inc  e                                           ; $6964: $1c
	ld   bc, $0301                                   ; $6965: $01 $01 $03
	jr   z, jr_05e_696e                              ; $6968: $28 $04

	ld   c, b                                        ; $696a: $48
	ld   l, [hl]                                     ; $696b: $6e
	ld   [hl], c                                     ; $696c: $71

jr_05e_696d:
	ld   l, l                                        ; $696d: $6d

jr_05e_696e:
	ld   a, b                                        ; $696e: $78
	rst  $38                                         ; $696f: $ff
	rst  $38                                         ; $6970: $ff
	dec  c                                           ; $6971: $0d
	inc  bc                                          ; $6972: $03
	ld   c, d                                        ; $6973: $4a
	ld   [bc], a                                     ; $6974: $02
	or   h                                           ; $6975: $b4
	ld   a, l                                        ; $6976: $7d
	ld   bc, $0407                                   ; $6977: $01 $07 $04
	ld   c, $03                                      ; $697a: $0e $03
	sub  b                                           ; $697c: $90
	ld   bc, $6e08                                   ; $697d: $01 $08 $6e
	sbc  a                                           ; $6980: $9f
	dec  c                                           ; $6981: $0d
	nop                                              ; $6982: $00
	ld   a, [bc]                                     ; $6983: $0a
	ld   b, $97                                      ; $6984: $06 $97
	ld   bc, $2407                                   ; $6986: $01 $07 $24
	inc  bc                                          ; $6989: $03
	inc  b                                           ; $698a: $04
	add  b                                           ; $698b: $80
	ld   h, b                                        ; $698c: $60
	ld   bc, $20ff                                   ; $698d: $01 $ff $20
	nop                                              ; $6990: $00
	dec  b                                           ; $6991: $05
	add  b                                           ; $6992: $80
	ld   h, b                                        ; $6993: $60
	ld   bc, $0001                                   ; $6994: $01 $01 $00
	ld   bc, $a5a3                                   ; $6997: $01 $a3 $a5
	db   $ec                                         ; $699a: $ec
	cp   d                                           ; $699b: $ba
	ld   a, l                                        ; $699c: $7d
	dec  c                                           ; $699d: $0d
	halt                                             ; $699e: $76
	ld   h, c                                        ; $699f: $61
	sbc  e                                           ; $69a0: $9b
	ld   [hl], h                                     ; $69a1: $74
	and  c                                           ; $69a2: $a1
	ld   a, c                                        ; $69a3: $79
	inc  b                                           ; $69a4: $04
	ld   c, c                                        ; $69a5: $49
	and  b                                           ; $69a6: $a0
	ld   e, c                                        ; $69a7: $59
	ld   e, a                                        ; $69a8: $5f
	sbc  c                                           ; $69a9: $99
	ld   sp, hl                                      ; $69aa: $f9
	dec  c                                           ; $69ab: $0d
	nop                                              ; $69ac: $00
	ld   a, [bc]                                     ; $69ad: $0a
	add  hl, de                                      ; $69ae: $19
	dec  b                                           ; $69af: $05
	inc  bc                                          ; $69b0: $03
	ld   a, l                                        ; $69b1: $7d
	ld   l, a                                        ; $69b2: $6f
	adc  l                                           ; $69b3: $8d
	ld   [hl], d                                     ; $69b4: $72
	nop                                              ; $69b5: $00
	nop                                              ; $69b6: $00
	ld   h, a                                        ; $69b7: $67
	ld   h, [hl]                                     ; $69b8: $66
	sub  l                                           ; $69b9: $95
	ld   d, h                                        ; $69ba: $54
	sub  h                                           ; $69bb: $94
	nop                                              ; $69bc: $00
	ld   bc, $9b5d                                   ; $69bd: $01 $5d $9b
	adc  l                                           ; $69c0: $8d
	ld   [hl], d                                     ; $69c1: $72
	nop                                              ; $69c2: $00
	ld   [bc], a                                     ; $69c3: $02
	rlca                                             ; $69c4: $07
	pop  de                                          ; $69c5: $d1
	dec  c                                           ; $69c6: $0d
	ld   [bc], a                                     ; $69c7: $02
	inc  bc                                          ; $69c8: $03
	ld   bc, $2000                                   ; $69c9: $01 $00 $20
	nop                                              ; $69cc: $00
	rlca                                             ; $69cd: $07
	xor  $0d                                         ; $69ce: $ee $0d
	ld   [bc], a                                     ; $69d0: $02
	inc  bc                                          ; $69d1: $03
	ld   bc, $2001                                   ; $69d2: $01 $01 $20
	nop                                              ; $69d5: $00
	rlca                                             ; $69d6: $07
	xor  $0d                                         ; $69d7: $ee $0d
	ld   [bc], a                                     ; $69d9: $02
	inc  bc                                          ; $69da: $03
	ld   bc, $2002                                   ; $69db: $01 $02 $20
	nop                                              ; $69de: $00
	ld   b, $ee                                      ; $69df: $06 $ee
	dec  c                                           ; $69e1: $0d
	inc  e                                           ; $69e2: $1c
	rrca                                             ; $69e3: $0f
	ld   bc, $1401                                   ; $69e4: $01 $01 $14
	dec  de                                          ; $69e7: $1b
	ld   bc, $0301                                   ; $69e8: $01 $01 $03
	ld   c, d                                        ; $69eb: $4a
	ld   [bc], a                                     ; $69ec: $02
	or   h                                           ; $69ed: $b4
	ld   l, [hl]                                     ; $69ee: $6e
	sbc  a                                           ; $69ef: $9f
	dec  c                                           ; $69f0: $0d
	nop                                              ; $69f1: $00
	ld   a, [bc]                                     ; $69f2: $0a
	dec  b                                           ; $69f3: $05
	ld   b, b                                        ; $69f4: $40
	rst  $38                                         ; $69f5: $ff
	inc  bc                                          ; $69f6: $03
	rst  $38                                         ; $69f7: $ff
	ld   bc, $2801                                   ; $69f8: $01 $01 $28
	nop                                              ; $69fb: $00
	ld   b, $c3                                      ; $69fc: $06 $c3
	ld   [bc], a                                     ; $69fe: $02
	inc  e                                           ; $69ff: $1c
	rrca                                             ; $6a00: $0f
	ld   [bc], a                                     ; $6a01: $02
	ld   [bc], a                                     ; $6a02: $02
	inc  d                                           ; $6a03: $14
	inc  e                                           ; $6a04: $1c
	ld   bc, $0301                                   ; $6a05: $01 $01 $03
	jr   z, jr_05e_6a0e                              ; $6a08: $28 $04

	ld   c, b                                        ; $6a0a: $48
	ld   l, [hl]                                     ; $6a0b: $6e
	ld   [hl], c                                     ; $6a0c: $71
	ld   l, l                                        ; $6a0d: $6d

jr_05e_6a0e:
	ld   a, b                                        ; $6a0e: $78
	rst  $38                                         ; $6a0f: $ff
	rst  $38                                         ; $6a10: $ff
	dec  c                                           ; $6a11: $0d
	inc  bc                                          ; $6a12: $03
	ld   c, d                                        ; $6a13: $4a
	ld   [bc], a                                     ; $6a14: $02
	or   h                                           ; $6a15: $b4
	ld   a, l                                        ; $6a16: $7d
	sbc  [hl]                                        ; $6a17: $9e
	ld   bc, $7d07                                   ; $6a18: $01 $07 $7d
	ld   l, a                                        ; $6a1b: $6f
	adc  l                                           ; $6a1c: $8d
	ld   [hl], d                                     ; $6a1d: $72
	ld   bc, $6e08                                   ; $6a1e: $01 $08 $6e
	sbc  a                                           ; $6a21: $9f
	dec  c                                           ; $6a22: $0d
	nop                                              ; $6a23: $00
	ld   a, [bc]                                     ; $6a24: $0a
	ld   b, $c3                                      ; $6a25: $06 $c3
	ld   [bc], a                                     ; $6a27: $02
	nop                                              ; $6a28: $00
	rrca                                             ; $6a29: $0f
	nop                                              ; $6a2a: $00
	ld   bc, $050d                                   ; $6a2b: $01 $0d $05
	nop                                              ; $6a2e: $00
	ld   [bc], a                                     ; $6a2f: $02
	ld   bc, $cf02                                   ; $6a30: $01 $02 $cf
	dec  b                                           ; $6a33: $05
	ld   a, [de]                                     ; $6a34: $1a
	ld   h, e                                        ; $6a35: $63
	and  c                                           ; $6a36: $a1
	sbc  [hl]                                        ; $6a37: $9e
	ld   e, b                                        ; $6a38: $58
	inc  b                                           ; $6a39: $04
	ld   a, e                                        ; $6a3a: $7b
	sbc  d                                           ; $6a3b: $9a
	ld   h, e                                        ; $6a3c: $63
	adc  h                                           ; $6a3d: $8c
	ld   [hl], l                                     ; $6a3e: $75
	ld   h, a                                        ; $6a3f: $67
	sbc  a                                           ; $6a40: $9f
	dec  c                                           ; $6a41: $0d
	nop                                              ; $6a42: $00
	ld   a, [bc]                                     ; $6a43: $0a
	inc  e                                           ; $6a44: $1c
	dec  b                                           ; $6a45: $05
	nop                                              ; $6a46: $00
	nop                                              ; $6a47: $00
	ld   bc, $0008                                   ; $6a48: $01 $08 $00
	ld   a, l                                        ; $6a4b: $7d
	and  c                                           ; $6a4c: $a1
	sbc  a                                           ; $6a4d: $9f
	dec  c                                           ; $6a4e: $0d
	ld   [bc], a                                     ; $6a4f: $02
	sub  l                                           ; $6a50: $95
	ld   [bc], a                                     ; $6a51: $02
	sub  e                                           ; $6a52: $93
	sbc  b                                           ; $6a53: $98
	sbc  [hl]                                        ; $6a54: $9e
	ld   h, d                                        ; $6a55: $62
	ld   [bc], a                                     ; $6a56: $02
	sub  h                                           ; $6a57: $94
	dec  b                                           ; $6a58: $05
	rrca                                             ; $6a59: $0f
	ld   h, e                                        ; $6a5a: $63
	and  c                                           ; $6a5b: $a1
	sbc  a                                           ; $6a5c: $9f
	dec  c                                           ; $6a5d: $0d
	nop                                              ; $6a5e: $00
	ld   a, [bc]                                     ; $6a5f: $0a
	rrca                                             ; $6a60: $0f
	nop                                              ; $6a61: $00
	ld   bc, $ff01                                   ; $6a62: $01 $01 $ff
	rst  $38                                         ; $6a65: $ff
	rst  $38                                         ; $6a66: $ff
	rst  $38                                         ; $6a67: $ff
	rst  $38                                         ; $6a68: $ff
	rst  $38                                         ; $6a69: $ff
	rst  $38                                         ; $6a6a: $ff
	rst  $38                                         ; $6a6b: $ff
	dec  c                                           ; $6a6c: $0d
	nop                                              ; $6a6d: $00
	ld   a, [bc]                                     ; $6a6e: $0a
	add  hl, de                                      ; $6a6f: $19
	dec  b                                           ; $6a70: $05
	inc  bc                                          ; $6a71: $03
	inc  bc                                          ; $6a72: $03
	ret  c                                           ; $6a73: $d8

	and  b                                           ; $6a74: $a0
	ld   [bc], a                                     ; $6a75: $02
	sub  l                                           ; $6a76: $95
	sbc  c                                           ; $6a77: $99
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	ld   [bc], a                                     ; $6a7a: $02
	ld   de, $4c03                                   ; $6a7b: $11 $03 $4c
	and  b                                           ; $6a7e: $a0
	ld   [bc], a                                     ; $6a7f: $02
	sub  l                                           ; $6a80: $95
	sbc  c                                           ; $6a81: $99
	nop                                              ; $6a82: $00
	ld   bc, $ade3                                   ; $6a83: $01 $e3 $ad
	adc  $a0                                         ; $6a86: $ce $a0
	ld   [bc], a                                     ; $6a88: $02
	sub  l                                           ; $6a89: $95
	sbc  c                                           ; $6a8a: $99
	nop                                              ; $6a8b: $00
	ld   [bc], a                                     ; $6a8c: $02
	rlca                                             ; $6a8d: $07
	add  d                                           ; $6a8e: $82
	nop                                              ; $6a8f: $00
	ld   [bc], a                                     ; $6a90: $02
	inc  bc                                          ; $6a91: $03
	ld   bc, $2000                                   ; $6a92: $01 $00 $20
	nop                                              ; $6a95: $00
	rlca                                             ; $6a96: $07
	ldh  a, [c]                                      ; $6a97: $f2
	nop                                              ; $6a98: $00
	ld   [bc], a                                     ; $6a99: $02
	inc  bc                                          ; $6a9a: $03
	ld   bc, $2001                                   ; $6a9b: $01 $01 $20
	nop                                              ; $6a9e: $00
	rlca                                             ; $6a9f: $07
	ld   [hl], b                                     ; $6aa0: $70
	ld   bc, $0302                                   ; $6aa1: $01 $02 $03
	ld   bc, $2002                                   ; $6aa4: $01 $02 $20
	nop                                              ; $6aa7: $00
	ld   b, $c3                                      ; $6aa8: $06 $c3
	ld   bc, $000f                                   ; $6aaa: $01 $0f $00
	ld   bc, $0201                                   ; $6aad: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ab0: $cf
	dec  b                                           ; $6ab1: $05
	ld   a, [de]                                     ; $6ab2: $1a
	ld   h, e                                        ; $6ab3: $63
	and  c                                           ; $6ab4: $a1
	ld   [hl], c                                     ; $6ab5: $71
	ld   [hl], h                                     ; $6ab6: $74
	sbc  [hl]                                        ; $6ab7: $9e
	dec  c                                           ; $6ab8: $0d
	call c, $c9f5                                    ; $6ab9: $dc $f5 $c9
	ld   a, c                                        ; $6abc: $79
	inc  b                                           ; $6abd: $04
	inc  de                                          ; $6abe: $13
	inc  bc                                          ; $6abf: $03
	ld   b, $04                                      ; $6ac0: $06 $04
	jr   nz, jr_05e_6b3c                             ; $6ac2: $20 $78

	inc  bc                                          ; $6ac4: $03
	ret  c                                           ; $6ac5: $d8

	ld   b, $53                                      ; $6ac6: $06 $53
	ld   a, h                                        ; $6ac8: $7c
	dec  c                                           ; $6ac9: $0d
	inc  bc                                          ; $6aca: $03
	and  b                                           ; $6acb: $a0
	ld   l, a                                        ; $6acc: $6f
	inc  bc                                          ; $6acd: $03
	ld   b, h                                        ; $6ace: $44
	ld   [hl], l                                     ; $6acf: $75
	ld   h, a                                        ; $6ad0: $67
	sub  [hl]                                        ; $6ad1: $96
	ld   a, e                                        ; $6ad2: $7b
	sbc  a                                           ; $6ad3: $9f
	dec  c                                           ; $6ad4: $0d
	nop                                              ; $6ad5: $00
	ld   a, [bc]                                     ; $6ad6: $0a
	inc  e                                           ; $6ad7: $1c
	dec  b                                           ; $6ad8: $05
	inc  b                                           ; $6ad9: $04
	inc  b                                           ; $6ada: $04
	dec  e                                           ; $6adb: $1d
	ld   b, b                                        ; $6adc: $40
	dec  d                                           ; $6add: $15
	inc  bc                                          ; $6ade: $03
	dec  d                                           ; $6adf: $15
	ld   bc, $2802                                   ; $6ae0: $01 $02 $28
	nop                                              ; $6ae3: $00
	ld   bc, $a178                                   ; $6ae4: $01 $78 $a1
	sub  d                                           ; $6ae7: $92
	inc  bc                                          ; $6ae8: $03
	di                                               ; $6ae9: $f3
	inc  bc                                          ; $6aea: $03
	sbc  c                                           ; $6aeb: $99
	sbc  a                                           ; $6aec: $9f
	dec  c                                           ; $6aed: $0d
	ld   [hl], h                                     ; $6aee: $74
	sbc  [hl]                                        ; $6aef: $9e
	rst  ToBoot                                         ; $6af0: $c7
	xor  $99                                         ; $6af1: $ee $99
	sub  d                                           ; $6af3: $92
	and  c                                           ; $6af4: $a1
	ld   e, c                                        ; $6af5: $59
	rst  $38                                         ; $6af6: $ff
	rst  $38                                         ; $6af7: $ff
	sbc  a                                           ; $6af8: $9f
	dec  c                                           ; $6af9: $0d
	nop                                              ; $6afa: $00
	ld   a, [bc]                                     ; $6afb: $0a
	ld   bc, wRandomNumStruct                                   ; $6afc: $01 $a7 $c2
	inc  b                                           ; $6aff: $04
	di                                               ; $6b00: $f3
	ld   [bc], a                                     ; $6b01: $02
	jp   Jump_05e_505a                               ; $6b02: $c3 $5a $50


	sbc  c                                           ; $6b05: $99
	ld   e, c                                        ; $6b06: $59
	sub  a                                           ; $6b07: $97
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	dec  c                                           ; $6b0a: $0d
	adc  h                                           ; $6b0b: $8c
	ld   l, l                                        ; $6b0c: $6d
	ld   a, b                                        ; $6b0d: $78
	sbc  a                                           ; $6b0e: $9f
	dec  c                                           ; $6b0f: $0d
	nop                                              ; $6b10: $00
	ld   a, [bc]                                     ; $6b11: $0a
	dec  c                                           ; $6b12: $0d
	nop                                              ; $6b13: $00
	nop                                              ; $6b14: $00
	rrca                                             ; $6b15: $0f
	nop                                              ; $6b16: $00
	ld   bc, $1e09                                   ; $6b17: $01 $09 $1e
	nop                                              ; $6b1a: $00
	rrca                                             ; $6b1b: $0f
	nop                                              ; $6b1c: $00
	ld   bc, $0201                                   ; $6b1d: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b20: $cf
	dec  b                                           ; $6b21: $05
	ld   a, [de]                                     ; $6b22: $1a
	ld   h, e                                        ; $6b23: $63
	and  c                                           ; $6b24: $a1
	ld   [hl], h                                     ; $6b25: $74
	sbc  [hl]                                        ; $6b26: $9e
	jp   nz, $a5e5                                   ; $6b27: $c2 $e5 $a5

	set  1, d                                        ; $6b2a: $cb $ca
	xor  $ba                                         ; $6b2c: $ee $ba
	ld   e, d                                        ; $6b2e: $5a
	dec  c                                           ; $6b2f: $0d
	inc  b                                           ; $6b30: $04
	ld   c, l                                        ; $6b31: $4d
	ld   [bc], a                                     ; $6b32: $02
	ld   a, e                                        ; $6b33: $7b
	ld   d, d                                        ; $6b34: $52
	adc  h                                           ; $6b35: $8c
	ld   h, a                                        ; $6b36: $67
	sub  [hl]                                        ; $6b37: $96
	ld   a, e                                        ; $6b38: $7b
	sbc  a                                           ; $6b39: $9f
	dec  c                                           ; $6b3a: $0d
	nop                                              ; $6b3b: $00

jr_05e_6b3c:
	ld   a, [bc]                                     ; $6b3c: $0a
	ld   bc, $ecba                                   ; $6b3d: $01 $ba $ec
	call nz, Call_05e_5ac9                           ; $6b40: $c4 $c9 $5a
	ld   l, [hl]                                     ; $6b43: $6e
	ld   d, d                                        ; $6b44: $52
	ld   l, l                                        ; $6b45: $6d
	and  c                                           ; $6b46: $a1
	ld   [hl], l                                     ; $6b47: $75
	dec  c                                           ; $6b48: $0d
	jp   z, $caae                                    ; $6b49: $ca $ae $ca

	xor  [hl]                                        ; $6b4c: $ae
	ld   h, l                                        ; $6b4d: $65
	adc  h                                           ; $6b4e: $8c
	ld   h, a                                        ; $6b4f: $67
	sub  [hl]                                        ; $6b50: $96
	sbc  a                                           ; $6b51: $9f
	dec  c                                           ; $6b52: $0d
	nop                                              ; $6b53: $00
	ld   a, [bc]                                     ; $6b54: $0a
	inc  e                                           ; $6b55: $1c
	dec  b                                           ; $6b56: $05
	rlca                                             ; $6b57: $07
	rlca                                             ; $6b58: $07
	dec  e                                           ; $6b59: $1d
	ld   b, b                                        ; $6b5a: $40
	dec  d                                           ; $6b5b: $15
	inc  bc                                          ; $6b5c: $03
	dec  d                                           ; $6b5d: $15
	ld   bc, $2903                                   ; $6b5e: $01 $03 $29
	nop                                              ; $6b61: $00
	ld   bc, $5258                                   ; $6b62: $01 $58 $52
	ld   e, b                                        ; $6b65: $58
	ld   d, d                                        ; $6b66: $52
	sbc  [hl]                                        ; $6b67: $9e
	ld   [hl], a                                     ; $6b68: $77
	ld   h, c                                        ; $6b69: $61
	ld   [bc], a                                     ; $6b6a: $02
	sub  l                                           ; $6b6b: $95
	ld   [hl], h                                     ; $6b6c: $74
	and  c                                           ; $6b6d: $a1
	ld   a, e                                        ; $6b6e: $7b
	and  c                                           ; $6b6f: $a1
	sbc  a                                           ; $6b70: $9f
	dec  c                                           ; $6b71: $0d
	adc  h                                           ; $6b72: $8c
	ld   [hl], c                                     ; $6b73: $71
	ld   l, l                                        ; $6b74: $6d
	ld   e, l                                        ; $6b75: $5d
	sub  b                                           ; $6b76: $90
	ei                                               ; $6b77: $fb
	ld   a, [$030d]                                  ; $6b78: $fa $0d $03
	xor  l                                           ; $6b7b: $ad
	inc  b                                           ; $6b7c: $04
	ret  c                                           ; $6b7d: $d8

	inc  b                                           ; $6b7e: $04
	call nc, $0279                                   ; $6b7f: $d4 $79 $02
	sub  l                                           ; $6b82: $95
	ld   [bc], a                                     ; $6b83: $02
	sub  e                                           ; $6b84: $93
	sbc  b                                           ; $6b85: $98
	ld   l, c                                        ; $6b86: $69
	ld   a, b                                        ; $6b87: $78
	ld   d, b                                        ; $6b88: $50
	ld   e, c                                        ; $6b89: $59
	and  c                                           ; $6b8a: $a1
	ld   [hl], l                                     ; $6b8b: $75
	ld   a, [$000d]                                  ; $6b8c: $fa $0d $00
	ld   a, [bc]                                     ; $6b8f: $0a
	dec  c                                           ; $6b90: $0d
	nop                                              ; $6b91: $00
	nop                                              ; $6b92: $00
	rrca                                             ; $6b93: $0f
	nop                                              ; $6b94: $00
	ld   bc, $1e09                                   ; $6b95: $01 $09 $1e
	nop                                              ; $6b98: $00
	rrca                                             ; $6b99: $0f
	nop                                              ; $6b9a: $00
	ld   bc, $0201                                   ; $6b9b: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b9e: $cf
	dec  b                                           ; $6b9f: $05
	ld   a, [de]                                     ; $6ba0: $1a
	ld   h, e                                        ; $6ba1: $63
	and  c                                           ; $6ba2: $a1
	ld   [hl], c                                     ; $6ba3: $71
	ld   [hl], h                                     ; $6ba4: $74
	db   $e3                                         ; $6ba5: $e3
	xor  l                                           ; $6ba6: $ad
	adc  $5a                                         ; $6ba7: $ce $5a
	dec  c                                           ; $6ba9: $0d
	halt                                             ; $6baa: $76
	ld   [hl], c                                     ; $6bab: $71
	ld   [hl], h                                     ; $6bac: $74
	sub  b                                           ; $6bad: $90
	inc  b                                           ; $6bae: $04
	ld   c, l                                        ; $6baf: $4d
	ld   [bc], a                                     ; $6bb0: $02
	ld   a, e                                        ; $6bb1: $7b
	ld   d, d                                        ; $6bb2: $52
	adc  h                                           ; $6bb3: $8c
	ld   h, a                                        ; $6bb4: $67
	sub  [hl]                                        ; $6bb5: $96
	ld   a, e                                        ; $6bb6: $7b
	sbc  a                                           ; $6bb7: $9f
	dec  c                                           ; $6bb8: $0d
	nop                                              ; $6bb9: $00
	ld   a, [bc]                                     ; $6bba: $0a
	inc  e                                           ; $6bbb: $1c
	dec  b                                           ; $6bbc: $05
	ld   bc, $1d01                                   ; $6bbd: $01 $01 $1d
	ld   b, b                                        ; $6bc0: $40
	dec  d                                           ; $6bc1: $15
	inc  bc                                          ; $6bc2: $03
	dec  d                                           ; $6bc3: $15
	ld   bc, $2801                                   ; $6bc4: $01 $01 $28
	nop                                              ; $6bc7: $00
	ld   bc, $546b                                   ; $6bc8: $01 $6b $54
	ld   e, c                                        ; $6bcb: $59
	ld   sp, hl                                      ; $6bcc: $f9
	db   $10                                         ; $6bcd: $10
	adc  h                                           ; $6bce: $8c
	ld   d, b                                        ; $6bcf: $50
	sbc  [hl]                                        ; $6bd0: $9e
	ld   l, e                                        ; $6bd1: $6b
	ld   d, h                                        ; $6bd2: $54
	ld   [bc], a                                     ; $6bd3: $02
	sbc  l                                           ; $6bd4: $9d
	sbc  l                                           ; $6bd5: $9d
	sbc  d                                           ; $6bd6: $9a
	ld   [hl], h                                     ; $6bd7: $74
	dec  c                                           ; $6bd8: $0d
	ld   [bc], a                                     ; $6bd9: $02
	jr   z, jr_05e_6c2e                              ; $6bda: $28 $52

	ld   [bc], a                                     ; $6bdc: $02
	and  c                                           ; $6bdd: $a1
	ld   a, l                                        ; $6bde: $7d
	ld   l, c                                        ; $6bdf: $69
	and  c                                           ; $6be0: $a1
	ld   a, b                                        ; $6be1: $78
	sbc  a                                           ; $6be2: $9f
	dec  c                                           ; $6be3: $0d
	ld   e, b                                        ; $6be4: $58
	ld   e, b                                        ; $6be5: $58
	ld   e, e                                        ; $6be6: $5b
	ld   a, c                                        ; $6be7: $79
	sbc  a                                           ; $6be8: $9f
	dec  c                                           ; $6be9: $0d
	nop                                              ; $6bea: $00
	ld   a, [bc]                                     ; $6beb: $0a
	inc  e                                           ; $6bec: $1c
	dec  b                                           ; $6bed: $05
	nop                                              ; $6bee: $00
	nop                                              ; $6bef: $00
	ld   bc, $9502                                   ; $6bf0: $01 $02 $95
	ld   [bc], a                                     ; $6bf3: $02
	sub  e                                           ; $6bf4: $93
	sbc  b                                           ; $6bf5: $98
	ld   e, d                                        ; $6bf6: $5a
	and  c                                           ; $6bf7: $a1
	ld   a, [hl]                                     ; $6bf8: $7e
	sbc  b                                           ; $6bf9: $98
	sub  d                                           ; $6bfa: $92
	sbc  a                                           ; $6bfb: $9f
	dec  c                                           ; $6bfc: $0d
	adc  c                                           ; $6bfd: $89
	ld   a, b                                        ; $6bfe: $78
	sbc  [hl]                                        ; $6bff: $9e
	ld   e, b                                        ; $6c00: $58
	sub  d                                           ; $6c01: $92
	ld   h, a                                        ; $6c02: $67
	adc  l                                           ; $6c03: $8d
	sbc  a                                           ; $6c04: $9f
	dec  c                                           ; $6c05: $0d
	nop                                              ; $6c06: $00
	ld   a, [bc]                                     ; $6c07: $0a
	dec  c                                           ; $6c08: $0d
	nop                                              ; $6c09: $00
	nop                                              ; $6c0a: $00
	rrca                                             ; $6c0b: $0f
	nop                                              ; $6c0c: $00
	ld   bc, $1e09                                   ; $6c0d: $01 $09 $1e
	nop                                              ; $6c10: $00
	nop                                              ; $6c11: $00
	ld   d, $03                                      ; $6c12: $16 $03
	rrca                                             ; $6c14: $0f
	nop                                              ; $6c15: $00
	ld   bc, $0702                                   ; $6c16: $01 $02 $07
	ld   e, a                                        ; $6c19: $5f
	inc  b                                           ; $6c1a: $04
	inc  b                                           ; $6c1b: $04
	add  b                                           ; $6c1c: $80
	inc  e                                           ; $6c1d: $1c
	ld   bc, $20ff                                   ; $6c1e: $01 $ff $20
	nop                                              ; $6c21: $00
	ld   bc, $0301                                   ; $6c22: $01 $01 $03
	ld   e, b                                        ; $6c25: $58
	ld   e, b                                        ; $6c26: $58
	ld   a, [$6710]                                  ; $6c27: $fa $10 $67
	adc  l                                           ; $6c2a: $8d
	sbc  d                                           ; $6c2b: $9a
	ld   h, e                                        ; $6c2c: $63
	and  c                                           ; $6c2d: $a1

jr_05e_6c2e:
	ld   l, [hl]                                     ; $6c2e: $6e
	ld   a, [$0401]                                  ; $6c2f: $fa $01 $04
	dec  c                                           ; $6c32: $0d
	nop                                              ; $6c33: $00
	ld   a, [bc]                                     ; $6c34: $0a
	add  hl, de                                      ; $6c35: $19
	dec  b                                           ; $6c36: $05
	ld   [bc], a                                     ; $6c37: $02
	ld   [bc], a                                     ; $6c38: $02
	and  b                                           ; $6c39: $a0
	ld   [hl], e                                     ; $6c3a: $73
	ld   e, l                                        ; $6c3b: $5d
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	dec  b                                           ; $6c3e: $05
	ld   d, $6f                                      ; $6c3f: $16 $6f
	ld   [bc], a                                     ; $6c41: $02
	ld   d, e                                        ; $6c42: $53
	sbc  c                                           ; $6c43: $99
	nop                                              ; $6c44: $00
	ld   bc, $9c07                                   ; $6c45: $01 $07 $9c
	nop                                              ; $6c48: $00
	ld   [bc], a                                     ; $6c49: $02
	inc  bc                                          ; $6c4a: $03
	ld   bc, $2000                                   ; $6c4b: $01 $00 $20
	nop                                              ; $6c4e: $00
	rlca                                             ; $6c4f: $07
	ld   c, c                                        ; $6c50: $49
	nop                                              ; $6c51: $00
	ld   [bc], a                                     ; $6c52: $02
	inc  bc                                          ; $6c53: $03
	ld   bc, $2001                                   ; $6c54: $01 $01 $20
	nop                                              ; $6c57: $00
	ld   b, $70                                      ; $6c58: $06 $70
	nop                                              ; $6c5a: $00
	rrca                                             ; $6c5b: $0f
	nop                                              ; $6c5c: $00
	ld   bc, $0101                                   ; $6c5d: $01 $01 $01
	inc  bc                                          ; $6c60: $03
	sub  d                                           ; $6c61: $92
	ld   [hl], c                                     ; $6c62: $71
	ld   a, a                                        ; $6c63: $7f
	sbc  b                                           ; $6c64: $98
	sbc  [hl]                                        ; $6c65: $9e
	ld   a, h                                        ; $6c66: $7c
	ld   l, h                                        ; $6c67: $6c
	ld   e, e                                        ; $6c68: $5b
	ld   a, l                                        ; $6c69: $7d
	pop  bc                                          ; $6c6a: $c1
	db   $e3                                         ; $6c6b: $e3
	ld   l, [hl]                                     ; $6c6c: $6e
	sub  [hl]                                        ; $6c6d: $96
	dec  c                                           ; $6c6e: $0d
	db   $10                                         ; $6c6f: $10
	ld   h, c                                        ; $6c70: $61
	ld   h, c                                        ; $6c71: $61
	ld   a, l                                        ; $6c72: $7d
	ld   d, d                                        ; $6c73: $52
	ld   h, e                                        ; $6c74: $63
	ld   e, h                                        ; $6c75: $5c
	sub  [hl]                                        ; $6c76: $96
	ld   e, l                                        ; $6c77: $5d
	ld   [bc], a                                     ; $6c78: $02
	ld   d, e                                        ; $6c79: $53
	sbc  e                                           ; $6c7a: $9b
	ld   d, h                                        ; $6c7b: $54
	ld   bc, $0d04                                   ; $6c7c: $01 $04 $0d
	nop                                              ; $6c7f: $00
	ld   a, [bc]                                     ; $6c80: $0a
	nop                                              ; $6c81: $00
	rrca                                             ; $6c82: $0f
	ld   [bc], a                                     ; $6c83: $02
	ld   de, $0301                                   ; $6c84: $11 $01 $03
	xor  c                                           ; $6c87: $a9
	ld   e, c                                        ; $6c88: $59
	ld   l, e                                        ; $6c89: $6b
	ld   h, c                                        ; $6c8a: $61
	ld   a, c                                        ; $6c8b: $79
	ld   d, d                                        ; $6c8c: $52
	sub  a                                           ; $6c8d: $97
	ld   [hl], c                                     ; $6c8e: $71
	ld   h, l                                        ; $6c8f: $65
	sub  c                                           ; $6c90: $91
	sbc  c                                           ; $6c91: $99
	ld   a, h                                        ; $6c92: $7c
	ld   sp, hl                                      ; $6c93: $f9
	dec  c                                           ; $6c94: $0d
	nop                                              ; $6c95: $00
	ld   a, [bc]                                     ; $6c96: $0a
	rrca                                             ; $6c97: $0f
	nop                                              ; $6c98: $00
	ld   bc, $0101                                   ; $6c99: $01 $01 $01
	inc  bc                                          ; $6c9c: $03
	adc  h                                           ; $6c9d: $8c
	ld   l, b                                        ; $6c9e: $68
	ld   d, d                                        ; $6c9f: $52
	rst  $38                                         ; $6ca0: $ff
	rst  $38                                         ; $6ca1: $ff
	inc  bc                                          ; $6ca2: $03
	push de                                          ; $6ca3: $d5
	ld   h, b                                        ; $6ca4: $60
	sub  [hl]                                        ; $6ca5: $96
	ld   d, h                                        ; $6ca6: $54
	ld   a, [$0401]                                  ; $6ca7: $fa $01 $04
	dec  c                                           ; $6caa: $0d
	nop                                              ; $6cab: $00
	ld   a, [bc]                                     ; $6cac: $0a
	nop                                              ; $6cad: $00
	rrca                                             ; $6cae: $0f
	nop                                              ; $6caf: $00
	ld   bc, $0101                                   ; $6cb0: $01 $01 $01
	inc  bc                                          ; $6cb3: $03
	sub  b                                           ; $6cb4: $90
	ld   d, h                                        ; $6cb5: $54
	inc  bc                                          ; $6cb6: $03
	ld   l, h                                        ; $6cb7: $6c
	ld   h, l                                        ; $6cb8: $65
	ld   [bc], a                                     ; $6cb9: $02
	and  b                                           ; $6cba: $a0
	ld   [hl], e                                     ; $6cbb: $73
	ld   d, d                                        ; $6cbc: $52
	ld   [hl], h                                     ; $6cbd: $74
	adc  l                                           ; $6cbe: $8d
	sub  [hl]                                        ; $6cbf: $96
	ld   d, h                                        ; $6cc0: $54
	ld   bc, $0d04                                   ; $6cc1: $01 $04 $0d
	nop                                              ; $6cc4: $00
	ld   a, [bc]                                     ; $6cc5: $0a
	rlca                                             ; $6cc6: $07
	ld   [de], a                                     ; $6cc7: $12
	ld   bc, $1203                                   ; $6cc8: $01 $03 $12
	ld   bc, $238c                                   ; $6ccb: $01 $8c $23
	nop                                              ; $6cce: $00
	rrca                                             ; $6ccf: $0f
	ld   [bc], a                                     ; $6cd0: $02
	ld   [de], a                                     ; $6cd1: $12
	ld   bc, $6763                                   ; $6cd2: $01 $63 $67
	ld   e, d                                        ; $6cd5: $5a
	sbc  l                                           ; $6cd6: $9d
	ld   l, l                                        ; $6cd7: $6d
	ld   e, l                                        ; $6cd8: $5d
	ld   h, l                                        ; $6cd9: $65
	sbc  [hl]                                        ; $6cda: $9e
	dec  c                                           ; $6cdb: $0d
	ld   a, b                                        ; $6cdc: $78
	and  c                                           ; $6cdd: $a1
	ld   [hl], h                                     ; $6cde: $74
	dec  b                                           ; $6cdf: $05
	and  b                                           ; $6ce0: $a0
	adc  b                                           ; $6ce1: $88
	ld   e, e                                        ; $6ce2: $5b
	ld   a, b                                        ; $6ce3: $78
	dec  c                                           ; $6ce4: $0d
	cp   d                                           ; $6ce5: $ba
	ret  nz                                          ; $6ce6: $c0

	and  l                                           ; $6ce7: $a5
	db   $ed                                         ; $6ce8: $ed
	ld   a, b                                        ; $6ce9: $78
	ld   a, h                                        ; $6cea: $7c
	ld   e, c                                        ; $6ceb: $59
	ld   h, l                                        ; $6cec: $65
	sub  a                                           ; $6ced: $97
	rst  $38                                         ; $6cee: $ff
	rst  $38                                         ; $6cef: $ff
	dec  c                                           ; $6cf0: $0d
	nop                                              ; $6cf1: $00
	ld   a, [bc]                                     ; $6cf2: $0a
	add  hl, de                                      ; $6cf3: $19
	dec  b                                           ; $6cf4: $05
	ld   bc, $c004                                   ; $6cf5: $01 $04 $c0
	inc  bc                                          ; $6cf8: $03
	ld   a, l                                        ; $6cf9: $7d
	ld   h, l                                        ; $6cfa: $65
	ld   l, l                                        ; $6cfb: $6d
	nop                                              ; $6cfc: $00
	nop                                              ; $6cfd: $00
	rlca                                             ; $6cfe: $07
	ld   hl, sp+$00                                  ; $6cff: $f8 $00
	ld   [bc], a                                     ; $6d01: $02
	inc  bc                                          ; $6d02: $03
	ld   bc, $2000                                   ; $6d03: $01 $00 $20
	nop                                              ; $6d06: $00
	ld   b, $12                                      ; $6d07: $06 $12
	ld   bc, $000f                                   ; $6d09: $01 $0f $00
	ld   bc, $0101                                   ; $6d0c: $01 $01 $01
	inc  bc                                          ; $6d0f: $03
	ld   l, e                                        ; $6d10: $6b
	sbc  e                                           ; $6d11: $9b
	ld   l, e                                        ; $6d12: $6b
	sbc  e                                           ; $6d13: $9b
	ld   [bc], a                                     ; $6d14: $02
	inc  l                                           ; $6d15: $2c
	ld   e, e                                        ; $6d16: $5b
	inc  bc                                          ; $6d17: $03
	ld   h, l                                        ; $6d18: $65
	ld   h, b                                        ; $6d19: $60
	sub  [hl]                                        ; $6d1a: $96
	ld   d, h                                        ; $6d1b: $54
	rst  $38                                         ; $6d1c: $ff
	rst  $38                                         ; $6d1d: $ff
	ld   bc, $0d04                                   ; $6d1e: $01 $04 $0d
	nop                                              ; $6d21: $00
	ld   a, [bc]                                     ; $6d22: $0a
	nop                                              ; $6d23: $00
	rrca                                             ; $6d24: $0f
	ld   [bc], a                                     ; $6d25: $02
	inc  d                                           ; $6d26: $14
	ld   bc, $ffff                                   ; $6d27: $01 $ff $ff
	ld   a, [$030d]                                  ; $6d2a: $fa $0d $03
	xor  c                                           ; $6d2d: $a9
	ld   sp, hl                                      ; $6d2e: $f9
	db   $10                                         ; $6d2f: $10
	dec  c                                           ; $6d30: $0d
	ld   l, e                                        ; $6d31: $6b
	ld   h, c                                        ; $6d32: $61
	ld   a, c                                        ; $6d33: $79
	inc  bc                                          ; $6d34: $03
	xor  c                                           ; $6d35: $a9
	ld   e, c                                        ; $6d36: $59
	ld   d, d                                        ; $6d37: $52
	adc  h                                           ; $6d38: $8c
	ld   h, a                                        ; $6d39: $67
	ld   a, h                                        ; $6d3a: $7c
	ld   a, [$000d]                                  ; $6d3b: $fa $0d $00
	ld   a, [bc]                                     ; $6d3e: $0a
	rrca                                             ; $6d3f: $0f
	nop                                              ; $6d40: $00
	ld   bc, $0101                                   ; $6d41: $01 $01 $01
	inc  bc                                          ; $6d44: $03
	ld   [bc], a                                     ; $6d45: $02
	and  c                                           ; $6d46: $a1
	ld   [hl], e                                     ; $6d47: $73
	ld   e, c                                        ; $6d48: $59
	sbc  d                                           ; $6d49: $9a
	ld   l, l                                        ; $6d4a: $6d
	ld   a, [$0401]                                  ; $6d4b: $fa $01 $04
	dec  c                                           ; $6d4e: $0d
	nop                                              ; $6d4f: $00
	ld   a, [bc]                                     ; $6d50: $0a
	add  hl, de                                      ; $6d51: $19
	dec  b                                           ; $6d52: $05
	inc  bc                                          ; $6d53: $03
	inc  bc                                          ; $6d54: $03
	db   $db                                         ; $6d55: $db
	ld   bc, $7614                                   ; $6d56: $01 $14 $76
	ld   h, a                                        ; $6d59: $67
	sbc  c                                           ; $6d5a: $99

Jump_05e_6d5b:
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	sub  b                                           ; $6d5d: $90
	ld   a, h                                        ; $6d5e: $7c
	adc  h                                           ; $6d5f: $8c
	ld   a, e                                        ; $6d60: $7b
	and  b                                           ; $6d61: $a0
	ld   h, a                                        ; $6d62: $67
	sbc  c                                           ; $6d63: $99
	nop                                              ; $6d64: $00
	ld   bc, $d503                                   ; $6d65: $01 $03 $d5
	ld   h, b                                        ; $6d68: $60
	inc  bc                                          ; $6d69: $03
	add  b                                           ; $6d6a: $80
	ld   h, a                                        ; $6d6b: $67
	nop                                              ; $6d6c: $00
	ld   [bc], a                                     ; $6d6d: $02
	rlca                                             ; $6d6e: $07
	ld   a, d                                        ; $6d6f: $7a
	ld   bc, $0302                                   ; $6d70: $01 $02 $03
	ld   bc, $2000                                   ; $6d73: $01 $00 $20
	nop                                              ; $6d76: $00
	rlca                                             ; $6d77: $07
	ld   d, $02                                      ; $6d78: $16 $02
	ld   [bc], a                                     ; $6d7a: $02
	inc  bc                                          ; $6d7b: $03
	ld   bc, $2001                                   ; $6d7c: $01 $01 $20
	nop                                              ; $6d7f: $00
	rlca                                             ; $6d80: $07
	adc  d                                           ; $6d81: $8a
	ld   [bc], a                                     ; $6d82: $02
	ld   [bc], a                                     ; $6d83: $02
	inc  bc                                          ; $6d84: $03
	ld   bc, $2002                                   ; $6d85: $01 $02 $20
	nop                                              ; $6d88: $00
	ld   b, $e2                                      ; $6d89: $06 $e2
	ld   [bc], a                                     ; $6d8b: $02
	rrca                                             ; $6d8c: $0f
	nop                                              ; $6d8d: $00
	ld   bc, $0101                                   ; $6d8e: $01 $01 $01
	inc  bc                                          ; $6d91: $03
	ld   h, c                                        ; $6d92: $61
	ld   h, c                                        ; $6d93: $61
	ld   a, l                                        ; $6d94: $7d
	inc  bc                                          ; $6d95: $03
	db   $db                                         ; $6d96: $db
	ld   bc, $7614                                   ; $6d97: $01 $14 $76
	rst  $38                                         ; $6d9a: $ff
	rst  $38                                         ; $6d9b: $ff
	ld   bc, $0d04                                   ; $6d9c: $01 $04 $0d
	nop                                              ; $6d9f: $00
	ld   a, [bc]                                     ; $6da0: $0a
	ld   bc, $9e50                                   ; $6da1: $01 $50 $9e
	ld   h, a                                        ; $6da4: $67
	adc  l                                           ; $6da5: $8d
	adc  h                                           ; $6da6: $8c
	ld   l, c                                        ; $6da7: $69
	and  c                                           ; $6da8: $a1
	rst  $38                                         ; $6da9: $ff
	rst  $38                                         ; $6daa: $ff
	dec  c                                           ; $6dab: $0d
	ld   [hl], a                                     ; $6dac: $77
	ld   a, b                                        ; $6dad: $78
	ld   l, l                                        ; $6dae: $6d
	ld   e, c                                        ; $6daf: $59
	inc  b                                           ; $6db0: $04
	ld   b, l                                        ; $6db1: $45
	ld   [hl], c                                     ; $6db2: $71
	ld   [hl], h                                     ; $6db3: $74
	sub  a                                           ; $6db4: $97
	ld   [hl], c                                     ; $6db5: $71
	ld   h, l                                        ; $6db6: $65
	sub  c                                           ; $6db7: $91
	sbc  c                                           ; $6db8: $99
	and  c                                           ; $6db9: $a1
	dec  c                                           ; $6dba: $0d
	ld   [hl], l                                     ; $6dbb: $75
	ld   h, a                                        ; $6dbc: $67
	ld   a, e                                        ; $6dbd: $7b
	ld   sp, hl                                      ; $6dbe: $f9
	dec  c                                           ; $6dbf: $0d
	nop                                              ; $6dc0: $00
	ld   a, [bc]                                     ; $6dc1: $0a
	rrca                                             ; $6dc2: $0f
	ld   [bc], a                                     ; $6dc3: $02
	ld   de, $5001                                   ; $6dc4: $11 $01 $50
	sbc  [hl]                                        ; $6dc7: $9e
	ld   [$6300], sp                                 ; $6dc8: $08 $00 $63
	and  c                                           ; $6dcb: $a1
	ld   sp, hl                                      ; $6dcc: $f9
	dec  c                                           ; $6dcd: $0d
	sbc  l                                           ; $6dce: $9d
	ld   l, l                                        ; $6dcf: $6d
	ld   e, l                                        ; $6dd0: $5d
	ld   h, l                                        ; $6dd1: $65
	ld   [hl], l                                     ; $6dd2: $75
	ld   h, a                                        ; $6dd3: $67
	sbc  l                                           ; $6dd4: $9d
	sbc  a                                           ; $6dd5: $9f
	dec  c                                           ; $6dd6: $0d
	nop                                              ; $6dd7: $00
	ld   a, [bc]                                     ; $6dd8: $0a
	rrca                                             ; $6dd9: $0f
	nop                                              ; $6dda: $00
	ld   bc, $6701                                   ; $6ddb: $01 $01 $67
	adc  l                                           ; $6dde: $8d
	sbc  d                                           ; $6ddf: $9a
	ld   h, e                                        ; $6de0: $63
	and  c                                           ; $6de1: $a1
	ld   [hl], l                                     ; $6de2: $75
	ld   h, l                                        ; $6de3: $65
	ld   l, l                                        ; $6de4: $6d
	ld   e, c                                        ; $6de5: $59
	rst  $38                                         ; $6de6: $ff
	rst  $38                                         ; $6de7: $ff
	dec  c                                           ; $6de8: $0d
	ld   h, c                                        ; $6de9: $61
	sbc  d                                           ; $6dea: $9a
	ld   a, l                                        ; $6deb: $7d
	inc  bc                                          ; $6dec: $03
	add  e                                           ; $6ded: $83
	dec  b                                           ; $6dee: $05
	dec  c                                           ; $6def: $0d
	ld   h, l                                        ; $6df0: $65
	adc  h                                           ; $6df1: $8c
	ld   h, l                                        ; $6df2: $65
	ld   l, l                                        ; $6df3: $6d
	sbc  a                                           ; $6df4: $9f
	dec  c                                           ; $6df5: $0d
	nop                                              ; $6df6: $00
	ld   a, [bc]                                     ; $6df7: $0a
	rrca                                             ; $6df8: $0f
	ld   [bc], a                                     ; $6df9: $02
	ld   de, $5201                                   ; $6dfa: $11 $01 $52
	ld   d, d                                        ; $6dfd: $52
	ld   d, [hl]                                     ; $6dfe: $56
	sbc  a                                           ; $6dff: $9f
	dec  c                                           ; $6e00: $0d
	ld   e, b                                        ; $6e01: $58
	ld   [bc], a                                     ; $6e02: $02
	and  c                                           ; $6e03: $a1
	and  b                                           ; $6e04: $a0
	ld   [hl], d                                     ; $6e05: $72
	ld   e, a                                        ; $6e06: $5f
	ld   a, c                                        ; $6e07: $79
	ld   a, b                                        ; $6e08: $78
	ld   [hl], c                                     ; $6e09: $71
	ld   [hl], h                                     ; $6e0a: $74
	dec  c                                           ; $6e0b: $0d
	ld   l, a                                        ; $6e0c: $6f
	sub  l                                           ; $6e0d: $95
	ld   d, h                                        ; $6e0e: $54
	ld   l, [hl]                                     ; $6e0f: $6e
	ld   d, d                                        ; $6e10: $52
	sbc  a                                           ; $6e11: $9f
	dec  c                                           ; $6e12: $0d
	nop                                              ; $6e13: $00
	ld   a, [bc]                                     ; $6e14: $0a
	rrca                                             ; $6e15: $0f
	nop                                              ; $6e16: $00
	ld   bc, $0101                                   ; $6e17: $01 $01 $01
	inc  bc                                          ; $6e1a: $03
	inc  bc                                          ; $6e1b: $03
	ld   e, e                                        ; $6e1c: $5b
	ld   e, c                                        ; $6e1d: $59
	ld   [hl], c                                     ; $6e1e: $71
	ld   l, l                                        ; $6e1f: $6d
	rst  $38                                         ; $6e20: $ff
	rst  $38                                         ; $6e21: $ff
	ld   bc, $0d04                                   ; $6e22: $01 $04 $0d
	nop                                              ; $6e25: $00
	ld   a, [bc]                                     ; $6e26: $0a
	nop                                              ; $6e27: $00
	rrca                                             ; $6e28: $0f
	nop                                              ; $6e29: $00
	ld   bc, $0101                                   ; $6e2a: $01 $01 $01
	inc  bc                                          ; $6e2d: $03
	ld   h, c                                        ; $6e2e: $61
	ld   d, h                                        ; $6e2f: $54
	ld   a, b                                        ; $6e30: $78
	ld   [hl], c                                     ; $6e31: $71
	ld   l, l                                        ; $6e32: $6d
	sub  a                                           ; $6e33: $97
	rst  $38                                         ; $6e34: $ff
	rst  $38                                         ; $6e35: $ff
	ld   bc, $0d04                                   ; $6e36: $01 $04 $0d
	nop                                              ; $6e39: $00
	ld   a, [bc]                                     ; $6e3a: $0a
	ld   bc, $e5cc                                   ; $6e3b: $01 $cc $e5
	ei                                               ; $6e3e: $fb
	xor  e                                           ; $6e3f: $ab
	sbc  a                                           ; $6e40: $9f
	dec  c                                           ; $6e41: $0d
	nop                                              ; $6e42: $00
	ld   a, [bc]                                     ; $6e43: $0a
	rrca                                             ; $6e44: $0f
	ld   [bc], a                                     ; $6e45: $02
	ld   de, $5001                                   ; $6e46: $11 $01 $50
	sub  a                                           ; $6e49: $97
	sbc  [hl]                                        ; $6e4a: $9e
	ld   a, e                                        ; $6e4b: $7b
	ld   h, c                                        ; $6e4c: $61
	ld   l, a                                        ; $6e4d: $6f
	sub  c                                           ; $6e4e: $91
	and  c                                           ; $6e4f: $a1
	ld   [hl], l                                     ; $6e50: $75
	ld   h, l                                        ; $6e51: $65
	ld   l, l                                        ; $6e52: $6d
	ld   a, h                                        ; $6e53: $7c
	rst  $38                                         ; $6e54: $ff
	rst  $38                                         ; $6e55: $ff
	dec  c                                           ; $6e56: $0d
	nop                                              ; $6e57: $00
	ld   a, [bc]                                     ; $6e58: $0a
	rrca                                             ; $6e59: $0f
	nop                                              ; $6e5a: $00
	ld   bc, $0101                                   ; $6e5b: $01 $01 $01
	inc  bc                                          ; $6e5e: $03
	inc  bc                                          ; $6e5f: $03
	ld   e, e                                        ; $6e60: $5b
	ld   e, c                                        ; $6e61: $59
	ld   [hl], c                                     ; $6e62: $71
	ld   l, l                                        ; $6e63: $6d
	rst  $38                                         ; $6e64: $ff
	rst  $38                                         ; $6e65: $ff
	ld   bc, $0d04                                   ; $6e66: $01 $04 $0d
	nop                                              ; $6e69: $00
	ld   a, [bc]                                     ; $6e6a: $0a
	rrca                                             ; $6e6b: $0f
	ld   [bc], a                                     ; $6e6c: $02
	inc  de                                          ; $6e6d: $13
	ld   bc, $ffff                                   ; $6e6e: $01 $ff $ff
	ld   [hl], h                                     ; $6e71: $74
	sbc  [hl]                                        ; $6e72: $9e
	ld   l, e                                        ; $6e73: $6b
	and  c                                           ; $6e74: $a1
	ld   a, b                                        ; $6e75: $78
	ld   a, c                                        ; $6e76: $79
	ld   e, b                                        ; $6e77: $58
	ld   e, b                                        ; $6e78: $58
	ld   e, e                                        ; $6e79: $5b
	ld   a, b                                        ; $6e7a: $78
	dec  c                                           ; $6e7b: $0d
	adc  $b4                                         ; $6e7c: $ce $b4
	ld   e, d                                        ; $6e7e: $5a
	ld   d, d                                        ; $6e7f: $52
	sbc  c                                           ; $6e80: $99
	sbc  l                                           ; $6e81: $9d
	ld   e, a                                        ; $6e82: $5f
	ld   h, d                                        ; $6e83: $62
	ld   h, h                                        ; $6e84: $64
	ld   d, d                                        ; $6e85: $52
	adc  h                                           ; $6e86: $8c
	ld   l, c                                        ; $6e87: $69
	and  c                                           ; $6e88: $a1
	dec  c                                           ; $6e89: $0d
	ld   [hl], l                                     ; $6e8a: $75
	ld   h, l                                        ; $6e8b: $65
	sub  l                                           ; $6e8c: $95
	ld   a, [$000d]                                  ; $6e8d: $fa $0d $00
	ld   a, [bc]                                     ; $6e90: $0a
	dec  c                                           ; $6e91: $0d
	nop                                              ; $6e92: $00
	nop                                              ; $6e93: $00
	rrca                                             ; $6e94: $0f
	nop                                              ; $6e95: $00
	ld   bc, $020c                                   ; $6e96: $01 $0c $02
	ld   b, $ea                                      ; $6e99: $06 $ea
	ld   [bc], a                                     ; $6e9b: $02
	rrca                                             ; $6e9c: $0f
	nop                                              ; $6e9d: $00
	ld   bc, $0101                                   ; $6e9e: $01 $01 $01
	inc  bc                                          ; $6ea1: $03
	ld   h, c                                        ; $6ea2: $61
	ld   h, c                                        ; $6ea3: $61
	ld   a, l                                        ; $6ea4: $7d
	inc  bc                                          ; $6ea5: $03
	push de                                          ; $6ea6: $d5
	ld   h, b                                        ; $6ea7: $60
	sub  [hl]                                        ; $6ea8: $96
	ld   d, h                                        ; $6ea9: $54
	rst  $38                                         ; $6eaa: $ff
	rst  $38                                         ; $6eab: $ff
	ld   bc, $0d04                                   ; $6eac: $01 $04 $0d
	nop                                              ; $6eaf: $00
	ld   a, [bc]                                     ; $6eb0: $0a
	ld   bc, $fa50                                   ; $6eb1: $01 $50 $fa
	dec  c                                           ; $6eb4: $0d
	pop  de                                          ; $6eb5: $d1
	set  1, e                                        ; $6eb6: $cb $cb
	ld   a, h                                        ; $6eb8: $7c
	ld   b, $1c                                      ; $6eb9: $06 $1c
	ld   e, d                                        ; $6ebb: $5a
	ld   a, [$580d]                                  ; $6ebc: $fa $0d $58
	sbc  [hl]                                        ; $6ebf: $9e
	ld   e, b                                        ; $6ec0: $58
	inc  b                                           ; $6ec1: $04
	ldh  [$03], a                                    ; $6ec2: $e0 $03
	dec  hl                                          ; $6ec4: $2b
	ld   h, a                                        ; $6ec5: $67
	ld   e, h                                        ; $6ec6: $5c
	sbc  c                                           ; $6ec7: $99
	ei                                               ; $6ec8: $fb
	ei                                               ; $6ec9: $fb
	ld   [hl], c                                     ; $6eca: $71
	ld   a, [$000d]                                  ; $6ecb: $fa $0d $00
	ld   a, [bc]                                     ; $6ece: $0a
	ld   bc, $9d54                                   ; $6ecf: $01 $54 $9d
	ld   [hl], c                                     ; $6ed2: $71
	ld   a, [$000d]                                  ; $6ed3: $fa $0d $00
	ld   a, [bc]                                     ; $6ed6: $0a
	inc  c                                           ; $6ed7: $0c
	rlca                                             ; $6ed8: $07
	inc  d                                           ; $6ed9: $14
	ld   [$0101], sp                                 ; $6eda: $08 $01 $01
	ld   d, b                                        ; $6edd: $50
	ld   l, l                                        ; $6ede: $6d
	ld   l, l                                        ; $6edf: $6d
	ld   l, l                                        ; $6ee0: $6d
	ld   l, l                                        ; $6ee1: $6d
	ld   l, l                                        ; $6ee2: $6d
	ld   l, l                                        ; $6ee3: $6d
	rst  $38                                         ; $6ee4: $ff
	rst  $38                                         ; $6ee5: $ff
	dec  c                                           ; $6ee6: $0d
	nop                                              ; $6ee7: $00
	ld   a, [bc]                                     ; $6ee8: $0a
	dec  c                                           ; $6ee9: $0d
	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	rrca                                             ; $6eec: $0f
	nop                                              ; $6eed: $00
	ld   bc, $020c                                   ; $6eee: $01 $0c $02
	ld   b, $ea                                      ; $6ef1: $06 $ea
	ld   [bc], a                                     ; $6ef3: $02
	dec  c                                           ; $6ef4: $0d
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	rrca                                             ; $6ef7: $0f
	nop                                              ; $6ef8: $00
	ld   bc, $020c                                   ; $6ef9: $01 $0c $02
	ld   c, $69                                      ; $6efc: $0e $69
	inc  e                                           ; $6efe: $1c
	ld   [bc], a                                     ; $6eff: $02
	ld   [bc], a                                     ; $6f00: $02
	ld   [bc], a                                     ; $6f01: $02
	dec  e                                           ; $6f02: $1d
	ld   b, b                                        ; $6f03: $40
	ld   [de], a                                     ; $6f04: $12
	inc  bc                                          ; $6f05: $03
	ld   [de], a                                     ; $6f06: $12
	ld   bc, $2903                                   ; $6f07: $01 $03 $29
	nop                                              ; $6f0a: $00
	ld   bc, $0008                                   ; $6f0b: $01 $08 $00
	ld   h, e                                        ; $6f0e: $63
	and  c                                           ; $6f0f: $a1
	ld   a, [$7c0d]                                  ; $6f10: $fa $0d $7c
	ld   l, h                                        ; $6f13: $6c
	ld   e, e                                        ; $6f14: $5b
	ld   l, [hl]                                     ; $6f15: $6e
	ld   a, b                                        ; $6f16: $78
	and  c                                           ; $6f17: $a1
	ld   [hl], h                                     ; $6f18: $74
	sbc  [hl]                                        ; $6f19: $9e
	sbc  l                                           ; $6f1a: $9d
	ld   l, l                                        ; $6f1b: $6d
	ld   e, l                                        ; $6f1c: $5d
	ld   h, l                                        ; $6f1d: $65
	dec  c                                           ; $6f1e: $0d
	ld   [bc], a                                     ; $6f1f: $02
	sub  l                                           ; $6f20: $95
	ld   l, e                                        ; $6f21: $6b
	ld   h, c                                        ; $6f22: $61
	ld   a, b                                        ; $6f23: $78
	ld   d, d                                        ; $6f24: $52
	adc  h                                           ; $6f25: $8c
	ld   h, l                                        ; $6f26: $65
	ld   l, l                                        ; $6f27: $6d
	sbc  l                                           ; $6f28: $9d
	ld   a, [$000d]                                  ; $6f29: $fa $0d $00
	ld   a, [bc]                                     ; $6f2c: $0a
	dec  b                                           ; $6f2d: $05
	ld   b, b                                        ; $6f2e: $40
	ld   c, c                                        ; $6f2f: $49
	ld   [bc], a                                     ; $6f30: $02
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
	inc  e                                           ; $6f33: $1c
	ld   [bc], a                                     ; $6f34: $02
	rlca                                             ; $6f35: $07
	rlca                                             ; $6f36: $07
	ld   bc, $f5d6                                   ; $6f37: $01 $d6 $f5
	ld   a, [$000d]                                  ; $6f3a: $fa $0d $00
	ld   a, [bc]                                     ; $6f3d: $0a
	dec  b                                           ; $6f3e: $05
	ld   b, b                                        ; $6f3f: $40
	ld   c, a                                        ; $6f40: $4f
	ld   bc, $0002                                   ; $6f41: $01 $02 $00
	dec  c                                           ; $6f44: $0d
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
	rrca                                             ; $6f47: $0f
	nop                                              ; $6f48: $00
	ld   bc, $1e09                                   ; $6f49: $01 $09 $1e
	rlca                                             ; $6f4c: $07
	ld   c, e                                        ; $6f4d: $4b
	inc  bc                                          ; $6f4e: $03
	inc  b                                           ; $6f4f: $04
	add  b                                           ; $6f50: $80
	ld   b, $01                                      ; $6f51: $06 $01
	rst  $38                                         ; $6f53: $ff
	jr   nz, jr_05e_6f56                             ; $6f54: $20 $00

jr_05e_6f56:
	dec  b                                           ; $6f56: $05
	add  b                                           ; $6f57: $80
	ld   b, $01                                      ; $6f58: $06 $01
	ld   bc, $0000                                   ; $6f5a: $01 $00 $00
	inc  c                                           ; $6f5d: $0c
	ld   [bc], a                                     ; $6f5e: $02
	ld   c, $02                                      ; $6f5f: $0e $02
	rrca                                             ; $6f61: $0f
	nop                                              ; $6f62: $00
	ld   bc, $5001                                   ; $6f63: $01 $01 $50
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	sbc  [hl]                                        ; $6f68: $9e
	sub  d                                           ; $6f69: $92
	ld   a, [hl]                                     ; $6f6a: $7e
	ld   d, d                                        ; $6f6b: $52
	sub  [hl]                                        ; $6f6c: $96
	ld   a, b                                        ; $6f6d: $78
	db   $fc                                         ; $6f6e: $fc
	rst  $38                                         ; $6f6f: $ff
	rst  $38                                         ; $6f70: $ff
	dec  c                                           ; $6f71: $0d
	inc  bc                                          ; $6f72: $03
	add  b                                           ; $6f73: $80
	dec  b                                           ; $6f74: $05
	db   $10                                         ; $6f75: $10
	inc  bc                                          ; $6f76: $03
	ld   [hl], l                                     ; $6f77: $75
	halt                                             ; $6f78: $76
	ld   a, l                                        ; $6f79: $7d
	ld   d, d                                        ; $6f7a: $52
	ld   d, [hl]                                     ; $6f7b: $56
	rst  $38                                         ; $6f7c: $ff
	rst  $38                                         ; $6f7d: $ff
	rst  $38                                         ; $6f7e: $ff
	rst  $38                                         ; $6f7f: $ff
	dec  c                                           ; $6f80: $0d
	rst  $38                                         ; $6f81: $ff
	rst  $38                                         ; $6f82: $ff
	rst  $38                                         ; $6f83: $ff
	rst  $38                                         ; $6f84: $ff
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	rst  $38                                         ; $6f87: $ff
	rst  $38                                         ; $6f88: $ff
	rst  $38                                         ; $6f89: $ff
	rst  $38                                         ; $6f8a: $ff
	dec  c                                           ; $6f8b: $0d
	nop                                              ; $6f8c: $00
	ld   a, [bc]                                     ; $6f8d: $0a
	inc  d                                           ; $6f8e: $14
	ld   b, $01                                      ; $6f8f: $06 $01
	rrca                                             ; $6f91: $0f
	dec  bc                                          ; $6f92: $0b
	ld   [bc], a                                     ; $6f93: $02
	ld   bc, $0008                                   ; $6f94: $01 $08 $00
	ld   e, l                                        ; $6f97: $5d
	and  c                                           ; $6f98: $a1
	sbc  a                                           ; $6f99: $9f
	dec  c                                           ; $6f9a: $0d
	ld   [bc], a                                     ; $6f9b: $02
	and  l                                           ; $6f9c: $a5
	ld   h, a                                        ; $6f9d: $67
	ld   e, [hl]                                     ; $6f9e: $5e
	sbc  [hl]                                        ; $6f9f: $9e
	inc  bc                                          ; $6fa0: $03
	add  l                                           ; $6fa1: $85
	inc  b                                           ; $6fa2: $04
	xor  e                                           ; $6fa3: $ab
	inc  bc                                          ; $6fa4: $03
	add  d                                           ; $6fa5: $82
	inc  bc                                          ; $6fa6: $03
	ld   c, l                                        ; $6fa7: $4d
	ld   a, c                                        ; $6fa8: $79
	dec  b                                           ; $6fa9: $05
	db   $10                                         ; $6faa: $10
	ld   a, b                                        ; $6fab: $78
	ld   h, e                                        ; $6fac: $63
	ld   d, d                                        ; $6fad: $52
	sbc  a                                           ; $6fae: $9f
	dec  c                                           ; $6faf: $0d
	nop                                              ; $6fb0: $00
	ld   a, [bc]                                     ; $6fb1: $0a
	rrca                                             ; $6fb2: $0f
	nop                                              ; $6fb3: $00
	ld   bc, $020c                                   ; $6fb4: $01 $0c $02
	add  hl, bc                                      ; $6fb7: $09
	ld   e, $01                                      ; $6fb8: $1e $01
	adc  h                                           ; $6fba: $8c
	sbc  [hl]                                        ; $6fbb: $9e
	adc  h                                           ; $6fbc: $8c
	ld   h, e                                        ; $6fbd: $63
	ld   e, c                                        ; $6fbe: $59
	rst  $38                                         ; $6fbf: $ff
	rst  $38                                         ; $6fc0: $ff
	dec  c                                           ; $6fc1: $0d
	nop                                              ; $6fc2: $00
	ld   a, [bc]                                     ; $6fc3: $0a
	ld   c, $0e                                      ; $6fc4: $0e $0e
	inc  e                                           ; $6fc6: $1c
	ld   a, [bc]                                     ; $6fc7: $0a
	inc  b                                           ; $6fc8: $04
	inc  b                                           ; $6fc9: $04
	ld   bc, $5258                                   ; $6fca: $01 $58 $52
	sbc  [hl]                                        ; $6fcd: $9e
	ld   [$9f00], sp                                 ; $6fce: $08 $00 $9f
	dec  c                                           ; $6fd1: $0d
	ld   e, b                                        ; $6fd2: $58
	adc  a                                           ; $6fd3: $8f
	ei                                               ; $6fd4: $fb
	cp   b                                           ; $6fd5: $b8
	push hl                                          ; $6fd6: $e5
	pop  af                                          ; $6fd7: $f1
	ei                                               ; $6fd8: $fb
	ld   a, h                                        ; $6fd9: $7c
	ld   l, h                                        ; $6fda: $6c
	ld   d, d                                        ; $6fdb: $52
	ld   [hl], h                                     ; $6fdc: $74
	ld   l, l                                        ; $6fdd: $6d
	and  c                                           ; $6fde: $a1
	dec  c                                           ; $6fdf: $0d
	ld   l, [hl]                                     ; $6fe0: $6e
	ld   [hl], c                                     ; $6fe1: $71
	ld   [hl], h                                     ; $6fe2: $74
	ld   a, b                                        ; $6fe3: $78
	sbc  a                                           ; $6fe4: $9f
	dec  c                                           ; $6fe5: $0d
	nop                                              ; $6fe6: $00
	ld   a, [bc]                                     ; $6fe7: $0a
	ld   bc, $a102                                   ; $6fe8: $01 $02 $a1
	inc  bc                                          ; $6feb: $03
	and  b                                           ; $6fec: $a0
	ld   l, a                                        ; $6fed: $6f
	ld   a, l                                        ; $6fee: $7d
	sbc  [hl]                                        ; $6fef: $9e
	sbc  l                                           ; $6ff0: $9d
	ld   e, c                                        ; $6ff1: $59
	sub  a                                           ; $6ff2: $97
	and  c                                           ; $6ff3: $a1
	ld   [hl], l                                     ; $6ff4: $75
	sub  b                                           ; $6ff5: $90
	ld   a, b                                        ; $6ff6: $78
	ld   d, d                                        ; $6ff7: $52
	dec  c                                           ; $6ff8: $0d
	ld   e, d                                        ; $6ff9: $5a
	sbc  [hl]                                        ; $6ffa: $9e
	inc  de                                          ; $6ffb: $13
	ld   [bc], a                                     ; $6ffc: $02
	sub  e                                           ; $6ffd: $93
	sub  b                                           ; $6ffe: $90
	sub  d                                           ; $6fff: $92
	ld   [hl], c                                     ; $7000: $71
	ld   l, a                                        ; $7001: $6f
	sub  c                                           ; $7002: $91
	ei                                               ; $7003: $fb
	dec  c                                           ; $7004: $0d
	adc  h                                           ; $7005: $8c
	ld   l, b                                        ; $7006: $68
	ld   d, d                                        ; $7007: $52
	ld   l, [hl]                                     ; $7008: $6e
	sbc  e                                           ; $7009: $9b
	sbc  a                                           ; $700a: $9f
	dec  c                                           ; $700b: $0d
	nop                                              ; $700c: $00
	ld   a, [bc]                                     ; $700d: $0a
	ld   bc, $7e59                                   ; $700e: $01 $59 $7e
	ld   [hl], c                                     ; $7011: $71
	ld   [hl], h                                     ; $7012: $74
	sub  d                                           ; $7013: $92
	sbc  b                                           ; $7014: $98
	ld   l, l                                        ; $7015: $6d
	ld   d, d                                        ; $7016: $52
	ld   e, d                                        ; $7017: $5a
	dec  c                                           ; $7018: $0d
	ld   [bc], a                                     ; $7019: $02
	sbc  b                                           ; $701a: $98
	inc  bc                                          ; $701b: $03
	nop                                              ; $701c: $00
	ld   a, h                                        ; $701d: $7c
	inc  bc                                          ; $701e: $03
	ld   l, e                                        ; $701f: $6b
	inc  bc                                          ; $7020: $03
	ld   c, a                                        ; $7021: $4f
	sbc  [hl]                                        ; $7022: $9e
	ld   l, a                                        ; $7023: $6f
	sub  l                                           ; $7024: $95
	ld   [hl], c                                     ; $7025: $71
	halt                                             ; $7026: $76
	ldh  [c], a                                      ; $7027: $e2
	db   $ec                                         ; $7028: $ec
	dec  c                                           ; $7029: $0d
	ld   a, b                                        ; $702a: $78
	and  c                                           ; $702b: $a1
	ld   [hl], l                                     ; $702c: $75
	ld   a, b                                        ; $702d: $78
	sbc  a                                           ; $702e: $9f
	dec  c                                           ; $702f: $0d
	nop                                              ; $7030: $00
	ld   a, [bc]                                     ; $7031: $0a
	inc  e                                           ; $7032: $1c
	ld   a, [bc]                                     ; $7033: $0a
	ld   [bc], a                                     ; $7034: $02
	ld   [bc], a                                     ; $7035: $02
	ld   bc, $9d59                                   ; $7036: $01 $59 $9d
	ld   d, d                                        ; $7039: $52
	ld   l, e                                        ; $703a: $6b
	ld   d, h                                        ; $703b: $54
	ld   l, [hl]                                     ; $703c: $6e
	ld   e, d                                        ; $703d: $5a
	sbc  [hl]                                        ; $703e: $9e
	dec  c                                           ; $703f: $0d
	inc  b                                           ; $7040: $04
	dec  c                                           ; $7041: $0d
	ld   [bc], a                                     ; $7042: $02
	sub  [hl]                                        ; $7043: $96
	inc  b                                           ; $7044: $04
	ld   b, l                                        ; $7045: $45
	inc  b                                           ; $7046: $04
	ld   a, [bc]                                     ; $7047: $0a
	ld   a, l                                        ; $7048: $7d
	ld   h, c                                        ; $7049: $61
	ld   h, c                                        ; $704a: $61
	ld   [hl], l                                     ; $704b: $75
	inc  bc                                          ; $704c: $03
	ld   a, [hl]                                     ; $704d: $7e
	dec  b                                           ; $704e: $05
	nop                                              ; $704f: $00
	ld   l, [hl]                                     ; $7050: $6e
	ld   a, [$000d]                                  ; $7051: $fa $0d $00
	ld   a, [bc]                                     ; $7054: $0a
	ld   bc, $a102                                   ; $7055: $01 $02 $a1
	inc  bc                                          ; $7058: $03
	and  b                                           ; $7059: $a0
	ld   l, a                                        ; $705a: $6f
	and  b                                           ; $705b: $a0
	inc  b                                           ; $705c: $04
	ld   b, l                                        ; $705d: $45
	sbc  d                                           ; $705e: $9a
	dec  b                                           ; $705f: $05
	scf                                              ; $7060: $37
	ld   d, [hl]                                     ; $7061: $56
	ld   [hl], h                                     ; $7062: $74
	dec  c                                           ; $7063: $0d
	inc  bc                                          ; $7064: $03
	add  b                                           ; $7065: $80
	inc  bc                                          ; $7066: $03
	jp   c, Jump_05e_7465                            ; $7067: $da $65 $74

	ld   e, e                                        ; $706a: $5b
	ld   a, b                                        ; $706b: $78
	ld   a, [$000d]                                  ; $706c: $fa $0d $00
	ld   a, [bc]                                     ; $706f: $0a
	ld   h, $01                                      ; $7070: $26 $01
	ld   bc, $5803                                   ; $7072: $01 $03 $58
	ld   e, b                                        ; $7075: $58
	ld   a, [$6710]                                  ; $7076: $fa $10 $67
	adc  l                                           ; $7079: $8d
	sbc  d                                           ; $707a: $9a
	ld   h, e                                        ; $707b: $63
	and  c                                           ; $707c: $a1
	ld   l, [hl]                                     ; $707d: $6e
	ld   a, [$0401]                                  ; $707e: $fa $01 $04
	dec  c                                           ; $7081: $0d
	nop                                              ; $7082: $00
	ld   a, [bc]                                     ; $7083: $0a
	add  hl, de                                      ; $7084: $19
	dec  b                                           ; $7085: $05
	ld   [bc], a                                     ; $7086: $02
	ld   [bc], a                                     ; $7087: $02
	and  b                                           ; $7088: $a0
	ld   [hl], e                                     ; $7089: $73
	ld   e, l                                        ; $708a: $5d
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	dec  b                                           ; $708d: $05
	ld   d, $6f                                      ; $708e: $16 $6f
	ld   [bc], a                                     ; $7090: $02
	ld   d, e                                        ; $7091: $53
	sbc  c                                           ; $7092: $99
	nop                                              ; $7093: $00
	ld   bc, $eb07                                   ; $7094: $01 $07 $eb
	inc  b                                           ; $7097: $04
	ld   [bc], a                                     ; $7098: $02
	inc  bc                                          ; $7099: $03
	ld   bc, $2000                                   ; $709a: $01 $00 $20
	nop                                              ; $709d: $00
	rlca                                             ; $709e: $07
	sbc  b                                           ; $709f: $98
	inc  b                                           ; $70a0: $04
	ld   [bc], a                                     ; $70a1: $02
	inc  bc                                          ; $70a2: $03
	ld   bc, $2001                                   ; $70a3: $01 $01 $20
	nop                                              ; $70a6: $00
	ld   b, $bf                                      ; $70a7: $06 $bf
	inc  b                                           ; $70a9: $04
	rrca                                             ; $70aa: $0f
	nop                                              ; $70ab: $00
	ld   bc, $0101                                   ; $70ac: $01 $01 $01
	inc  bc                                          ; $70af: $03
	sub  d                                           ; $70b0: $92
	ld   [hl], c                                     ; $70b1: $71
	ld   a, a                                        ; $70b2: $7f
	sbc  b                                           ; $70b3: $98
	sbc  [hl]                                        ; $70b4: $9e
	ld   a, h                                        ; $70b5: $7c
	ld   l, h                                        ; $70b6: $6c
	ld   e, e                                        ; $70b7: $5b
	ld   a, l                                        ; $70b8: $7d
	pop  bc                                          ; $70b9: $c1
	db   $e3                                         ; $70ba: $e3
	ld   l, [hl]                                     ; $70bb: $6e
	sub  [hl]                                        ; $70bc: $96
	dec  c                                           ; $70bd: $0d
	db   $10                                         ; $70be: $10
	ld   h, c                                        ; $70bf: $61
	ld   h, c                                        ; $70c0: $61
	ld   a, l                                        ; $70c1: $7d
	ld   d, d                                        ; $70c2: $52
	ld   h, e                                        ; $70c3: $63
	ld   e, h                                        ; $70c4: $5c
	sub  [hl]                                        ; $70c5: $96
	ld   e, l                                        ; $70c6: $5d
	ld   [bc], a                                     ; $70c7: $02
	ld   d, e                                        ; $70c8: $53
	sbc  e                                           ; $70c9: $9b
	ld   d, h                                        ; $70ca: $54
	ld   bc, $0d04                                   ; $70cb: $01 $04 $0d
	nop                                              ; $70ce: $00
	ld   a, [bc]                                     ; $70cf: $0a
	nop                                              ; $70d0: $00
	rrca                                             ; $70d1: $0f
	ld   [bc], a                                     ; $70d2: $02
	ld   de, $0301                                   ; $70d3: $11 $01 $03
	xor  c                                           ; $70d6: $a9
	ld   e, c                                        ; $70d7: $59
	ld   l, e                                        ; $70d8: $6b
	ld   h, c                                        ; $70d9: $61
	ld   a, c                                        ; $70da: $79
	ld   d, d                                        ; $70db: $52
	sub  a                                           ; $70dc: $97
	ld   [hl], c                                     ; $70dd: $71
	ld   h, l                                        ; $70de: $65
	sub  c                                           ; $70df: $91
	sbc  c                                           ; $70e0: $99
	ld   a, h                                        ; $70e1: $7c
	ld   sp, hl                                      ; $70e2: $f9
	dec  c                                           ; $70e3: $0d
	nop                                              ; $70e4: $00
	ld   a, [bc]                                     ; $70e5: $0a
	rrca                                             ; $70e6: $0f
	nop                                              ; $70e7: $00
	ld   bc, $0101                                   ; $70e8: $01 $01 $01
	inc  bc                                          ; $70eb: $03
	adc  h                                           ; $70ec: $8c
	ld   l, b                                        ; $70ed: $68
	ld   d, d                                        ; $70ee: $52
	rst  $38                                         ; $70ef: $ff
	rst  $38                                         ; $70f0: $ff
	inc  bc                                          ; $70f1: $03
	push de                                          ; $70f2: $d5
	ld   h, b                                        ; $70f3: $60
	sub  [hl]                                        ; $70f4: $96
	ld   d, h                                        ; $70f5: $54
	ld   a, [$0401]                                  ; $70f6: $fa $01 $04
	dec  c                                           ; $70f9: $0d
	nop                                              ; $70fa: $00
	ld   a, [bc]                                     ; $70fb: $0a
	nop                                              ; $70fc: $00
	rrca                                             ; $70fd: $0f
	nop                                              ; $70fe: $00
	ld   bc, $0101                                   ; $70ff: $01 $01 $01
	inc  bc                                          ; $7102: $03
	sub  b                                           ; $7103: $90
	ld   d, h                                        ; $7104: $54
	inc  bc                                          ; $7105: $03
	ld   l, h                                        ; $7106: $6c
	ld   h, l                                        ; $7107: $65
	ld   [bc], a                                     ; $7108: $02
	and  b                                           ; $7109: $a0
	ld   [hl], e                                     ; $710a: $73
	ld   d, d                                        ; $710b: $52
	ld   [hl], h                                     ; $710c: $74
	adc  l                                           ; $710d: $8d
	sub  [hl]                                        ; $710e: $96
	ld   d, h                                        ; $710f: $54
	ld   bc, $0d04                                   ; $7110: $01 $04 $0d
	nop                                              ; $7113: $00
	ld   a, [bc]                                     ; $7114: $0a
	rlca                                             ; $7115: $07
	ld   h, b                                        ; $7116: $60
	dec  b                                           ; $7117: $05
	inc  bc                                          ; $7118: $03
	ld   [de], a                                     ; $7119: $12
	ld   bc, $2396                                   ; $711a: $01 $96 $23
	nop                                              ; $711d: $00
	rrca                                             ; $711e: $0f
	ld   [bc], a                                     ; $711f: $02
	ld   [de], a                                     ; $7120: $12
	ld   bc, $d6d6                                   ; $7121: $01 $d6 $d6
	sub  $fc                                         ; $7124: $d6 $fc
	push af                                          ; $7126: $f5
	rst  $38                                         ; $7127: $ff
	rst  $38                                         ; $7128: $ff
	dec  c                                           ; $7129: $0d
	inc  b                                           ; $712a: $04
	ld   bc, $587c                                   ; $712b: $01 $7c $58
	inc  b                                           ; $712e: $04
	cp   d                                           ; $712f: $ba
	ld   a, c                                        ; $7130: $79
	adc  l                                           ; $7131: $8d
	ld   e, d                                        ; $7132: $5a
	ld   e, e                                        ; $7133: $5b
	and  b                                           ; $7134: $a0
	dec  c                                           ; $7135: $0d
	ld   e, c                                        ; $7136: $59
	ld   e, a                                        ; $7137: $5f
	ld   a, b                                        ; $7138: $78
	ld   e, l                                        ; $7139: $5d
	ld   l, a                                        ; $713a: $6f
	sub  c                                           ; $713b: $91
	rst  $38                                         ; $713c: $ff
	rst  $38                                         ; $713d: $ff
	dec  c                                           ; $713e: $0d
	nop                                              ; $713f: $00
	ld   a, [bc]                                     ; $7140: $0a
	add  hl, de                                      ; $7141: $19
	dec  b                                           ; $7142: $05
	ld   bc, $c004                                   ; $7143: $01 $04 $c0
	inc  bc                                          ; $7146: $03
	ld   a, l                                        ; $7147: $7d
	ld   h, l                                        ; $7148: $65
	ld   l, l                                        ; $7149: $6d
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00
	rlca                                             ; $714c: $07
	ld   b, [hl]                                     ; $714d: $46
	dec  b                                           ; $714e: $05
	ld   [bc], a                                     ; $714f: $02
	inc  bc                                          ; $7150: $03
	ld   bc, $2000                                   ; $7151: $01 $00 $20
	nop                                              ; $7154: $00
	ld   b, $60                                      ; $7155: $06 $60
	dec  b                                           ; $7157: $05
	rrca                                             ; $7158: $0f
	nop                                              ; $7159: $00
	ld   bc, $0101                                   ; $715a: $01 $01 $01
	inc  bc                                          ; $715d: $03
	ld   l, e                                        ; $715e: $6b
	sbc  e                                           ; $715f: $9b
	ld   l, e                                        ; $7160: $6b
	sbc  e                                           ; $7161: $9b
	ld   [bc], a                                     ; $7162: $02
	inc  l                                           ; $7163: $2c
	ld   e, e                                        ; $7164: $5b
	inc  bc                                          ; $7165: $03
	ld   h, l                                        ; $7166: $65
	ld   h, b                                        ; $7167: $60
	sub  [hl]                                        ; $7168: $96
	ld   d, h                                        ; $7169: $54
	rst  $38                                         ; $716a: $ff
	rst  $38                                         ; $716b: $ff
	ld   bc, $0d04                                   ; $716c: $01 $04 $0d
	nop                                              ; $716f: $00
	ld   a, [bc]                                     ; $7170: $0a
	nop                                              ; $7171: $00
	rrca                                             ; $7172: $0f
	ld   [bc], a                                     ; $7173: $02
	inc  d                                           ; $7174: $14
	ld   bc, $ffff                                   ; $7175: $01 $ff $ff
	ld   a, [$030d]                                  ; $7178: $fa $0d $03
	xor  c                                           ; $717b: $a9
	ld   sp, hl                                      ; $717c: $f9
	db   $10                                         ; $717d: $10
	dec  c                                           ; $717e: $0d
	ld   l, e                                        ; $717f: $6b
	ld   h, c                                        ; $7180: $61
	ld   a, c                                        ; $7181: $79
	inc  bc                                          ; $7182: $03
	xor  c                                           ; $7183: $a9
	ld   e, c                                        ; $7184: $59
	ld   d, d                                        ; $7185: $52
	adc  h                                           ; $7186: $8c
	ld   h, a                                        ; $7187: $67
	ld   a, h                                        ; $7188: $7c
	ld   sp, hl                                      ; $7189: $f9
	dec  c                                           ; $718a: $0d
	nop                                              ; $718b: $00
	ld   a, [bc]                                     ; $718c: $0a
	ld   bc, $0301                                   ; $718d: $01 $01 $03
	ld   [bc], a                                     ; $7190: $02
	and  c                                           ; $7191: $a1
	ld   [hl], e                                     ; $7192: $73
	ld   e, c                                        ; $7193: $59
	sbc  d                                           ; $7194: $9a
	ld   l, l                                        ; $7195: $6d
	ld   a, [$0401]                                  ; $7196: $fa $01 $04
	dec  c                                           ; $7199: $0d
	nop                                              ; $719a: $00
	ld   a, [bc]                                     ; $719b: $0a
	add  hl, de                                      ; $719c: $19
	dec  b                                           ; $719d: $05
	inc  bc                                          ; $719e: $03
	inc  bc                                          ; $719f: $03
	db   $db                                         ; $71a0: $db
	ld   bc, $7614                                   ; $71a1: $01 $14 $76
	ld   h, a                                        ; $71a4: $67
	sbc  c                                           ; $71a5: $99
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	inc  b                                           ; $71a8: $04
	ld   c, $03                                      ; $71a9: $0e $03
	sub  b                                           ; $71ab: $90
	ld   a, h                                        ; $71ac: $7c
	sub  b                                           ; $71ad: $90
	ld   a, h                                        ; $71ae: $7c
	adc  h                                           ; $71af: $8c
	ld   a, e                                        ; $71b0: $7b
	and  b                                           ; $71b1: $a0
	ld   h, a                                        ; $71b2: $67
	sbc  c                                           ; $71b3: $99
	nop                                              ; $71b4: $00
	ld   bc, $d503                                   ; $71b5: $01 $03 $d5
	ld   h, b                                        ; $71b8: $60
	inc  bc                                          ; $71b9: $03
	add  b                                           ; $71ba: $80
	ld   h, a                                        ; $71bb: $67
	nop                                              ; $71bc: $00
	ld   [bc], a                                     ; $71bd: $02
	rlca                                             ; $71be: $07
	jp   z, $0205                                    ; $71bf: $ca $05 $02

	inc  bc                                          ; $71c2: $03
	ld   bc, $2000                                   ; $71c3: $01 $00 $20
	nop                                              ; $71c6: $00
	rlca                                             ; $71c7: $07
	ld   a, c                                        ; $71c8: $79
	ld   b, $02                                      ; $71c9: $06 $02
	inc  bc                                          ; $71cb: $03
	ld   bc, $2001                                   ; $71cc: $01 $01 $20
	nop                                              ; $71cf: $00
	rlca                                             ; $71d0: $07
	ldh  [rTMA], a                                   ; $71d1: $e0 $06
	ld   [bc], a                                     ; $71d3: $02
	inc  bc                                          ; $71d4: $03
	ld   bc, $2002                                   ; $71d5: $01 $02 $20
	nop                                              ; $71d8: $00
	ld   b, $3c                                      ; $71d9: $06 $3c
	rlca                                             ; $71db: $07
	rrca                                             ; $71dc: $0f
	nop                                              ; $71dd: $00
	ld   bc, $0101                                   ; $71de: $01 $01 $01
	inc  bc                                          ; $71e1: $03
	ld   h, c                                        ; $71e2: $61
	ld   h, c                                        ; $71e3: $61
	ld   a, l                                        ; $71e4: $7d
	inc  bc                                          ; $71e5: $03
	db   $db                                         ; $71e6: $db
	ld   bc, $7614                                   ; $71e7: $01 $14 $76
	rst  $38                                         ; $71ea: $ff
	rst  $38                                         ; $71eb: $ff
	ld   bc, $0d04                                   ; $71ec: $01 $04 $0d
	nop                                              ; $71ef: $00
	ld   a, [bc]                                     ; $71f0: $0a
	ld   bc, $9e50                                   ; $71f1: $01 $50 $9e
	ld   h, a                                        ; $71f4: $67
	adc  l                                           ; $71f5: $8d
	adc  h                                           ; $71f6: $8c
	ld   l, c                                        ; $71f7: $69
	and  c                                           ; $71f8: $a1
	rst  $38                                         ; $71f9: $ff
	rst  $38                                         ; $71fa: $ff
	dec  c                                           ; $71fb: $0d
	ld   [hl], a                                     ; $71fc: $77
	ld   a, b                                        ; $71fd: $78
	ld   l, l                                        ; $71fe: $6d
	ld   e, c                                        ; $71ff: $59
	inc  b                                           ; $7200: $04
	ld   b, l                                        ; $7201: $45
	ld   [hl], c                                     ; $7202: $71
	ld   [hl], h                                     ; $7203: $74
	sub  a                                           ; $7204: $97
	ld   [hl], c                                     ; $7205: $71
	ld   h, l                                        ; $7206: $65
	sub  c                                           ; $7207: $91
	sbc  c                                           ; $7208: $99
	and  c                                           ; $7209: $a1
	dec  c                                           ; $720a: $0d
	ld   [hl], l                                     ; $720b: $75
	ld   h, a                                        ; $720c: $67
	ld   a, e                                        ; $720d: $7b
	ld   sp, hl                                      ; $720e: $f9
	dec  c                                           ; $720f: $0d
	nop                                              ; $7210: $00
	ld   a, [bc]                                     ; $7211: $0a
	rrca                                             ; $7212: $0f
	ld   [bc], a                                     ; $7213: $02
	ld   de, $5001                                   ; $7214: $11 $01 $50
	sbc  [hl]                                        ; $7217: $9e
	ld   [$6300], sp                                 ; $7218: $08 $00 $63
	and  c                                           ; $721b: $a1
	ld   sp, hl                                      ; $721c: $f9
	dec  c                                           ; $721d: $0d
	sbc  l                                           ; $721e: $9d
	ld   l, l                                        ; $721f: $6d
	ld   e, l                                        ; $7220: $5d
	ld   h, l                                        ; $7221: $65
	ld   [hl], l                                     ; $7222: $75
	ld   h, a                                        ; $7223: $67
	sbc  l                                           ; $7224: $9d
	sbc  a                                           ; $7225: $9f
	dec  c                                           ; $7226: $0d
	nop                                              ; $7227: $00
	ld   a, [bc]                                     ; $7228: $0a
	rrca                                             ; $7229: $0f
	nop                                              ; $722a: $00
	ld   bc, $6701                                   ; $722b: $01 $01 $67
	adc  l                                           ; $722e: $8d
	sbc  d                                           ; $722f: $9a
	ld   h, e                                        ; $7230: $63
	and  c                                           ; $7231: $a1
	ld   [hl], l                                     ; $7232: $75
	ld   h, l                                        ; $7233: $65
	ld   l, l                                        ; $7234: $6d
	ld   e, c                                        ; $7235: $59
	rst  $38                                         ; $7236: $ff
	rst  $38                                         ; $7237: $ff
	dec  c                                           ; $7238: $0d
	ld   h, c                                        ; $7239: $61
	sbc  d                                           ; $723a: $9a
	ld   a, l                                        ; $723b: $7d
	inc  bc                                          ; $723c: $03
	add  e                                           ; $723d: $83
	dec  b                                           ; $723e: $05
	dec  c                                           ; $723f: $0d
	ld   h, l                                        ; $7240: $65
	adc  h                                           ; $7241: $8c
	ld   h, l                                        ; $7242: $65
	ld   l, l                                        ; $7243: $6d
	sbc  a                                           ; $7244: $9f
	dec  c                                           ; $7245: $0d
	nop                                              ; $7246: $00
	ld   a, [bc]                                     ; $7247: $0a
	rrca                                             ; $7248: $0f
	ld   [bc], a                                     ; $7249: $02
	jr   jr_05e_724d                                 ; $724a: $18 $01

	ld   d, b                                        ; $724c: $50

jr_05e_724d:
	sbc  [hl]                                        ; $724d: $9e
	ld   [$6300], sp                                 ; $724e: $08 $00 $63
	and  c                                           ; $7251: $a1
	sbc  a                                           ; $7252: $9f
	dec  c                                           ; $7253: $0d
	rst  $38                                         ; $7254: $ff
	rst  $38                                         ; $7255: $ff
	rst  $38                                         ; $7256: $ff
	rst  $38                                         ; $7257: $ff
	sub  b                                           ; $7258: $90
	ld   h, l                                        ; $7259: $65
	ld   e, c                                        ; $725a: $59
	ld   h, l                                        ; $725b: $65
	ld   [hl], h                                     ; $725c: $74
	sbc  [hl]                                        ; $725d: $9e
	dec  c                                           ; $725e: $0d
	inc  bc                                          ; $725f: $03
	ld   l, c                                        ; $7260: $69
	ld   [bc], a                                     ; $7261: $02
	and  b                                           ; $7262: $a0
	and  a                                           ; $7263: $a7

jr_05e_7264:
	pop  af                                          ; $7264: $f1
	or   [hl]                                        ; $7265: $b6
	ld   a, h                                        ; $7266: $7c
	ld   a, h                                        ; $7267: $7c
	ld   l, h                                        ; $7268: $6c
	ld   e, e                                        ; $7269: $5b
	ld   [hl], c                                     ; $726a: $71
	ld   [hl], h                                     ; $726b: $74
	rst  $38                                         ; $726c: $ff
	rst  $38                                         ; $726d: $ff
	dec  c                                           ; $726e: $0d
	nop                                              ; $726f: $00
	ld   a, [bc]                                     ; $7270: $0a
	rrca                                             ; $7271: $0f
	nop                                              ; $7272: $00
	ld   bc, $0101                                   ; $7273: $01 $01 $01
	inc  bc                                          ; $7276: $03
	ld   d, b                                        ; $7277: $50
	ld   l, a                                        ; $7278: $6f
	sub  c                                           ; $7279: $91
	db   $fc                                         ; $727a: $fc
	ld   bc, $0d04                                   ; $727b: $01 $04 $0d
	nop                                              ; $727e: $00
	ld   a, [bc]                                     ; $727f: $0a
	dec  c                                           ; $7280: $0d
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	rrca                                             ; $7283: $0f
	nop                                              ; $7284: $00
	ld   bc, $020c                                   ; $7285: $01 $0c $02
	ld   b, $44                                      ; $7288: $06 $44
	rlca                                             ; $728a: $07
	rrca                                             ; $728b: $0f
	nop                                              ; $728c: $00
	ld   bc, $0101                                   ; $728d: $01 $01 $01
	inc  bc                                          ; $7290: $03
	ld   h, c                                        ; $7291: $61
	ld   d, h                                        ; $7292: $54
	ld   a, b                                        ; $7293: $78
	ld   [hl], c                                     ; $7294: $71
	ld   l, l                                        ; $7295: $6d
	sub  a                                           ; $7296: $97
	rst  $38                                         ; $7297: $ff
	rst  $38                                         ; $7298: $ff
	ld   bc, $0d04                                   ; $7299: $01 $04 $0d
	nop                                              ; $729c: $00
	ld   a, [bc]                                     ; $729d: $0a
	ld   bc, $0e04                                   ; $729e: $01 $04 $0e
	inc  bc                                          ; $72a1: $03
	sub  b                                           ; $72a2: $90
	ld   [hl], l                                     ; $72a3: $75
	ld   h, a                                        ; $72a4: $67
	sbc  a                                           ; $72a5: $9f
	dec  c                                           ; $72a6: $0d
	nop                                              ; $72a7: $00
	ld   a, [bc]                                     ; $72a8: $0a
	rrca                                             ; $72a9: $0f
	ld   [bc], a                                     ; $72aa: $02
	ld   [de], a                                     ; $72ab: $12
	ld   bc, $7156                                   ; $72ac: $01 $56 $71
	ld   a, [$0310]                                  ; $72af: $fa $10 $03
	ld   l, h                                        ; $72b2: $6c
	dec  b                                           ; $72b3: $05
	ld   h, $75                                      ; $72b4: $26 $75
	ld   h, a                                        ; $72b6: $67
	ld   a, h                                        ; $72b7: $7c
	ld   sp, hl                                      ; $72b8: $f9
	dec  c                                           ; $72b9: $0d
	cp   b                                           ; $72ba: $b8
	push hl                                          ; $72bb: $e5
	pop  af                                          ; $72bc: $f1
	ei                                               ; $72bd: $fb
	ld   a, h                                        ; $72be: $7c
	ld   [bc], a                                     ; $72bf: $02
	inc  bc                                          ; $72c0: $03
	ld   [hl], l                                     ; $72c1: $75
	sub  [hl]                                        ; $72c2: $96
	ld   e, l                                        ; $72c3: $5d
	ld   [bc], a                                     ; $72c4: $02
	jp   nz, $035b                                   ; $72c5: $c2 $5b $03

	jr   jr_05e_7264                                 ; $72c8: $18 $9a

	dec  c                                           ; $72ca: $0d
	ld   a, b                                        ; $72cb: $78
	ld   e, c                                        ; $72cc: $59
	ld   [hl], c                                     ; $72cd: $71
	ld   l, l                                        ; $72ce: $6d
	ld   a, h                                        ; $72cf: $7c
	ld   [hl], l                                     ; $72d0: $75
	ld   h, a                                        ; $72d1: $67
	ld   e, d                                        ; $72d2: $5a
	rst  $38                                         ; $72d3: $ff
	rst  $38                                         ; $72d4: $ff
	dec  c                                           ; $72d5: $0d
	nop                                              ; $72d6: $00
	ld   a, [bc]                                     ; $72d7: $0a
	rrca                                             ; $72d8: $0f
	nop                                              ; $72d9: $00
	ld   bc, $0101                                   ; $72da: $01 $01 $01
	inc  bc                                          ; $72dd: $03
	inc  bc                                          ; $72de: $03
	ld   e, e                                        ; $72df: $5b
	ld   e, c                                        ; $72e0: $59
	ld   [hl], c                                     ; $72e1: $71
	ld   l, l                                        ; $72e2: $6d
	sbc  a                                           ; $72e3: $9f
	dec  c                                           ; $72e4: $0d
	db   $10                                         ; $72e5: $10
	inc  bc                                          ; $72e6: $03
	push de                                          ; $72e7: $d5
	ld   h, b                                        ; $72e8: $60
	sub  [hl]                                        ; $72e9: $96
	ld   d, h                                        ; $72ea: $54
	ld   a, [$0401]                                  ; $72eb: $fa $01 $04
	dec  c                                           ; $72ee: $0d
	nop                                              ; $72ef: $00
	ld   a, [bc]                                     ; $72f0: $0a
	nop                                              ; $72f1: $00
	rrca                                             ; $72f2: $0f
	nop                                              ; $72f3: $00
	ld   bc, $0101                                   ; $72f4: $01 $01 $01
	inc  bc                                          ; $72f7: $03
	ld   h, c                                        ; $72f8: $61
	ld   h, c                                        ; $72f9: $61
	ld   a, l                                        ; $72fa: $7d
	inc  bc                                          ; $72fb: $03
	push de                                          ; $72fc: $d5
	ld   h, b                                        ; $72fd: $60
	sub  [hl]                                        ; $72fe: $96
	ld   d, h                                        ; $72ff: $54
	rst  $38                                         ; $7300: $ff
	rst  $38                                         ; $7301: $ff
	ld   bc, $0d04                                   ; $7302: $01 $04 $0d
	nop                                              ; $7305: $00
	ld   a, [bc]                                     ; $7306: $0a
	ld   bc, $fa50                                   ; $7307: $01 $50 $fa
	dec  c                                           ; $730a: $0d
	pop  af                                          ; $730b: $f1
	call nz, $bab0                                   ; $730c: $c4 $b0 $ba
	ld   e, d                                        ; $730f: $5a
	ld   h, c                                        ; $7310: $61
	adc  d                                           ; $7311: $8a
	sbc  d                                           ; $7312: $9a
	ld   [hl], h                                     ; $7313: $74
	sbc  c                                           ; $7314: $99
	ld   [hl], c                                     ; $7315: $71
	ld   a, [$580d]                                  ; $7316: $fa $0d $58
	sbc  [hl]                                        ; $7319: $9e
	ld   e, b                                        ; $731a: $58
	inc  b                                           ; $731b: $04
	ldh  [$03], a                                    ; $731c: $e0 $03
	dec  hl                                          ; $731e: $2b
	ld   h, a                                        ; $731f: $67
	ld   e, h                                        ; $7320: $5c
	sbc  c                                           ; $7321: $99
	ei                                               ; $7322: $fb
	ei                                               ; $7323: $fb
	ld   [hl], c                                     ; $7324: $71
	ld   a, [$000d]                                  ; $7325: $fa $0d $00
	ld   a, [bc]                                     ; $7328: $0a
	ld   bc, $9d54                                   ; $7329: $01 $54 $9d
	ld   [hl], c                                     ; $732c: $71
	ld   a, [$000d]                                  ; $732d: $fa $0d $00
	ld   a, [bc]                                     ; $7330: $0a
	inc  c                                           ; $7331: $0c
	rlca                                             ; $7332: $07
	inc  d                                           ; $7333: $14
	ld   [$0101], sp                                 ; $7334: $08 $01 $01
	ld   d, b                                        ; $7337: $50
	ld   l, l                                        ; $7338: $6d
	ld   l, l                                        ; $7339: $6d
	ld   l, l                                        ; $733a: $6d
	ld   l, l                                        ; $733b: $6d
	ld   l, l                                        ; $733c: $6d
	ld   l, l                                        ; $733d: $6d
	rst  $38                                         ; $733e: $ff
	rst  $38                                         ; $733f: $ff
	dec  c                                           ; $7340: $0d
	nop                                              ; $7341: $00
	ld   a, [bc]                                     ; $7342: $0a
	dec  c                                           ; $7343: $0d
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	rrca                                             ; $7346: $0f
	nop                                              ; $7347: $00
	ld   bc, $020c                                   ; $7348: $01 $0c $02
	ld   b, $44                                      ; $734b: $06 $44
	rlca                                             ; $734d: $07
	dec  c                                           ; $734e: $0d
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	rrca                                             ; $7351: $0f
	nop                                              ; $7352: $00
	ld   bc, $020c                                   ; $7353: $01 $0c $02
	ld   c, $69                                      ; $7356: $0e $69
	inc  e                                           ; $7358: $1c
	ld   [bc], a                                     ; $7359: $02
	ld   [bc], a                                     ; $735a: $02
	ld   [bc], a                                     ; $735b: $02
	dec  e                                           ; $735c: $1d
	ld   b, b                                        ; $735d: $40
	ld   [de], a                                     ; $735e: $12
	inc  bc                                          ; $735f: $03
	ld   [de], a                                     ; $7360: $12
	ld   bc, $2903                                   ; $7361: $01 $03 $29
	nop                                              ; $7364: $00
	ld   bc, $0008                                   ; $7365: $01 $08 $00
	ld   h, e                                        ; $7368: $63
	and  c                                           ; $7369: $a1
	ld   a, [$7c0d]                                  ; $736a: $fa $0d $7c
	ld   l, h                                        ; $736d: $6c
	ld   e, e                                        ; $736e: $5b
	ld   l, [hl]                                     ; $736f: $6e
	ld   a, b                                        ; $7370: $78
	and  c                                           ; $7371: $a1
	ld   [hl], h                                     ; $7372: $74
	sbc  [hl]                                        ; $7373: $9e
	sbc  l                                           ; $7374: $9d
	ld   l, l                                        ; $7375: $6d
	ld   e, l                                        ; $7376: $5d
	ld   h, l                                        ; $7377: $65
	dec  c                                           ; $7378: $0d
	ld   [bc], a                                     ; $7379: $02
	sub  l                                           ; $737a: $95
	ld   l, e                                        ; $737b: $6b
	ld   h, c                                        ; $737c: $61
	ld   a, b                                        ; $737d: $78
	ld   d, d                                        ; $737e: $52
	adc  h                                           ; $737f: $8c
	ld   h, l                                        ; $7380: $65
	ld   l, l                                        ; $7381: $6d
	sbc  l                                           ; $7382: $9d
	ld   a, [$000d]                                  ; $7383: $fa $0d $00
	ld   a, [bc]                                     ; $7386: $0a
	dec  b                                           ; $7387: $05
	ld   b, b                                        ; $7388: $40
	ld   c, c                                        ; $7389: $49
	ld   [bc], a                                     ; $738a: $02
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	inc  e                                           ; $738d: $1c
	ld   [bc], a                                     ; $738e: $02
	rlca                                             ; $738f: $07
	rlca                                             ; $7390: $07
	ld   bc, $f5d6                                   ; $7391: $01 $d6 $f5
	ld   a, [$000d]                                  ; $7394: $fa $0d $00
	ld   a, [bc]                                     ; $7397: $0a
	dec  b                                           ; $7398: $05
	ld   b, b                                        ; $7399: $40
	ld   c, a                                        ; $739a: $4f
	ld   bc, $0002                                   ; $739b: $01 $02 $00
	dec  c                                           ; $739e: $0d
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	rrca                                             ; $73a1: $0f
	nop                                              ; $73a2: $00
	ld   bc, $1e09                                   ; $73a3: $01 $09 $1e
	rlca                                             ; $73a6: $07
	and  l                                           ; $73a7: $a5
	rlca                                             ; $73a8: $07
	inc  b                                           ; $73a9: $04
	add  b                                           ; $73aa: $80
	ld   b, $01                                      ; $73ab: $06 $01
	rst  $38                                         ; $73ad: $ff
	jr   nz, jr_05e_73b0                             ; $73ae: $20 $00

jr_05e_73b0:
	dec  b                                           ; $73b0: $05
	add  b                                           ; $73b1: $80
	ld   b, $01                                      ; $73b2: $06 $01
	ld   bc, $0000                                   ; $73b4: $01 $00 $00
	inc  c                                           ; $73b7: $0c
	ld   [bc], a                                     ; $73b8: $02
	ld   c, $02                                      ; $73b9: $0e $02
	rrca                                             ; $73bb: $0f
	nop                                              ; $73bc: $00
	ld   bc, $5001                                   ; $73bd: $01 $01 $50
	rst  $38                                         ; $73c0: $ff
	rst  $38                                         ; $73c1: $ff
	sbc  [hl]                                        ; $73c2: $9e
	sub  d                                           ; $73c3: $92
	ld   a, [hl]                                     ; $73c4: $7e
	ld   d, d                                        ; $73c5: $52
	sub  [hl]                                        ; $73c6: $96
	ld   a, b                                        ; $73c7: $78
	db   $fc                                         ; $73c8: $fc
	rst  $38                                         ; $73c9: $ff
	rst  $38                                         ; $73ca: $ff
	dec  c                                           ; $73cb: $0d
	inc  bc                                          ; $73cc: $03
	add  b                                           ; $73cd: $80
	dec  b                                           ; $73ce: $05
	db   $10                                         ; $73cf: $10
	inc  bc                                          ; $73d0: $03
	ld   [hl], l                                     ; $73d1: $75
	halt                                             ; $73d2: $76
	ld   a, l                                        ; $73d3: $7d
	ld   d, d                                        ; $73d4: $52
	ld   d, [hl]                                     ; $73d5: $56
	rst  $38                                         ; $73d6: $ff
	rst  $38                                         ; $73d7: $ff
	rst  $38                                         ; $73d8: $ff
	rst  $38                                         ; $73d9: $ff
	dec  c                                           ; $73da: $0d
	rst  $38                                         ; $73db: $ff
	rst  $38                                         ; $73dc: $ff
	rst  $38                                         ; $73dd: $ff
	rst  $38                                         ; $73de: $ff
	rst  $38                                         ; $73df: $ff
	rst  $38                                         ; $73e0: $ff
	rst  $38                                         ; $73e1: $ff
	rst  $38                                         ; $73e2: $ff
	rst  $38                                         ; $73e3: $ff
	rst  $38                                         ; $73e4: $ff
	dec  c                                           ; $73e5: $0d
	nop                                              ; $73e6: $00
	ld   a, [bc]                                     ; $73e7: $0a
	inc  d                                           ; $73e8: $14
	ld   b, $01                                      ; $73e9: $06 $01
	rrca                                             ; $73eb: $0f
	dec  bc                                          ; $73ec: $0b
	ld   [bc], a                                     ; $73ed: $02
	ld   bc, $0008                                   ; $73ee: $01 $08 $00
	ld   e, l                                        ; $73f1: $5d
	and  c                                           ; $73f2: $a1
	sbc  a                                           ; $73f3: $9f
	dec  c                                           ; $73f4: $0d
	ld   [bc], a                                     ; $73f5: $02
	and  l                                           ; $73f6: $a5
	ld   h, a                                        ; $73f7: $67
	ld   e, [hl]                                     ; $73f8: $5e
	sbc  [hl]                                        ; $73f9: $9e
	inc  bc                                          ; $73fa: $03
	add  l                                           ; $73fb: $85
	inc  b                                           ; $73fc: $04
	xor  e                                           ; $73fd: $ab
	inc  bc                                          ; $73fe: $03
	add  d                                           ; $73ff: $82
	inc  bc                                          ; $7400: $03
	ld   c, l                                        ; $7401: $4d
	ld   a, c                                        ; $7402: $79
	dec  b                                           ; $7403: $05
	db   $10                                         ; $7404: $10
	ld   a, b                                        ; $7405: $78
	ld   h, e                                        ; $7406: $63
	ld   d, d                                        ; $7407: $52
	sbc  a                                           ; $7408: $9f
	dec  c                                           ; $7409: $0d
	nop                                              ; $740a: $00
	ld   a, [bc]                                     ; $740b: $0a
	rrca                                             ; $740c: $0f
	nop                                              ; $740d: $00
	ld   bc, $020c                                   ; $740e: $01 $0c $02
	add  hl, bc                                      ; $7411: $09
	ld   e, $01                                      ; $7412: $1e $01
	adc  h                                           ; $7414: $8c
	sbc  [hl]                                        ; $7415: $9e
	adc  h                                           ; $7416: $8c
	ld   h, e                                        ; $7417: $63
	ld   e, c                                        ; $7418: $59
	rst  $38                                         ; $7419: $ff
	rst  $38                                         ; $741a: $ff
	dec  c                                           ; $741b: $0d
	nop                                              ; $741c: $00
	ld   a, [bc]                                     ; $741d: $0a
	ld   c, $0e                                      ; $741e: $0e $0e
	inc  e                                           ; $7420: $1c
	ld   a, [bc]                                     ; $7421: $0a
	inc  b                                           ; $7422: $04
	inc  b                                           ; $7423: $04
	ld   bc, $5258                                   ; $7424: $01 $58 $52
	sbc  [hl]                                        ; $7427: $9e
	ld   [$9f00], sp                                 ; $7428: $08 $00 $9f
	dec  c                                           ; $742b: $0d
	ld   e, b                                        ; $742c: $58
	adc  a                                           ; $742d: $8f
	ei                                               ; $742e: $fb
	cp   b                                           ; $742f: $b8
	push hl                                          ; $7430: $e5
	pop  af                                          ; $7431: $f1
	ei                                               ; $7432: $fb
	ld   a, h                                        ; $7433: $7c
	ld   l, h                                        ; $7434: $6c
	ld   d, d                                        ; $7435: $52
	ld   [hl], h                                     ; $7436: $74
	ld   l, l                                        ; $7437: $6d
	and  c                                           ; $7438: $a1
	dec  c                                           ; $7439: $0d
	ld   l, [hl]                                     ; $743a: $6e
	ld   [hl], c                                     ; $743b: $71
	ld   [hl], h                                     ; $743c: $74
	ld   a, b                                        ; $743d: $78
	sbc  a                                           ; $743e: $9f
	dec  c                                           ; $743f: $0d
	nop                                              ; $7440: $00
	ld   a, [bc]                                     ; $7441: $0a
	ld   bc, $a102                                   ; $7442: $01 $02 $a1
	inc  bc                                          ; $7445: $03
	and  b                                           ; $7446: $a0
	ld   l, a                                        ; $7447: $6f
	ld   a, l                                        ; $7448: $7d
	sbc  [hl]                                        ; $7449: $9e
	sbc  l                                           ; $744a: $9d
	ld   e, c                                        ; $744b: $59
	sub  a                                           ; $744c: $97
	and  c                                           ; $744d: $a1
	ld   [hl], l                                     ; $744e: $75
	sub  b                                           ; $744f: $90
	ld   a, b                                        ; $7450: $78
	ld   d, d                                        ; $7451: $52

Jump_05e_7452:
	dec  c                                           ; $7452: $0d
	ld   e, d                                        ; $7453: $5a
	sbc  [hl]                                        ; $7454: $9e
	inc  de                                          ; $7455: $13
	ld   [bc], a                                     ; $7456: $02
	sub  e                                           ; $7457: $93
	sub  b                                           ; $7458: $90
	sub  d                                           ; $7459: $92
	ld   [hl], c                                     ; $745a: $71
	ld   l, a                                        ; $745b: $6f
	sub  c                                           ; $745c: $91
	ei                                               ; $745d: $fb
	dec  c                                           ; $745e: $0d
	adc  h                                           ; $745f: $8c
	ld   l, b                                        ; $7460: $68
	ld   d, d                                        ; $7461: $52
	ld   l, [hl]                                     ; $7462: $6e
	sbc  e                                           ; $7463: $9b
	sbc  a                                           ; $7464: $9f

Jump_05e_7465:
	dec  c                                           ; $7465: $0d
	nop                                              ; $7466: $00
	ld   a, [bc]                                     ; $7467: $0a
	ld   bc, $7e59                                   ; $7468: $01 $59 $7e
	ld   [hl], c                                     ; $746b: $71
	ld   [hl], h                                     ; $746c: $74
	sub  d                                           ; $746d: $92
	sbc  b                                           ; $746e: $98
	ld   l, l                                        ; $746f: $6d
	ld   d, d                                        ; $7470: $52
	ld   e, d                                        ; $7471: $5a
	dec  c                                           ; $7472: $0d
	ld   [bc], a                                     ; $7473: $02
	sbc  b                                           ; $7474: $98
	inc  bc                                          ; $7475: $03
	nop                                              ; $7476: $00
	ld   a, h                                        ; $7477: $7c
	inc  bc                                          ; $7478: $03
	ld   l, e                                        ; $7479: $6b
	inc  bc                                          ; $747a: $03
	ld   c, a                                        ; $747b: $4f
	sbc  [hl]                                        ; $747c: $9e
	ld   l, a                                        ; $747d: $6f
	sub  l                                           ; $747e: $95
	ld   [hl], c                                     ; $747f: $71
	halt                                             ; $7480: $76
	ldh  [c], a                                      ; $7481: $e2
	db   $ec                                         ; $7482: $ec
	dec  c                                           ; $7483: $0d
	ld   a, b                                        ; $7484: $78
	and  c                                           ; $7485: $a1
	ld   [hl], l                                     ; $7486: $75
	ld   a, b                                        ; $7487: $78
	sbc  a                                           ; $7488: $9f
	dec  c                                           ; $7489: $0d
	nop                                              ; $748a: $00
	ld   a, [bc]                                     ; $748b: $0a
	inc  e                                           ; $748c: $1c
	ld   a, [bc]                                     ; $748d: $0a
	ld   [bc], a                                     ; $748e: $02
	ld   [bc], a                                     ; $748f: $02
	ld   bc, $9d59                                   ; $7490: $01 $59 $9d
	ld   d, d                                        ; $7493: $52
	ld   l, e                                        ; $7494: $6b
	ld   d, h                                        ; $7495: $54
	ld   l, [hl]                                     ; $7496: $6e
	ld   e, d                                        ; $7497: $5a
	sbc  [hl]                                        ; $7498: $9e
	dec  c                                           ; $7499: $0d
	inc  b                                           ; $749a: $04
	dec  c                                           ; $749b: $0d
	ld   [bc], a                                     ; $749c: $02
	sub  [hl]                                        ; $749d: $96
	inc  b                                           ; $749e: $04
	ld   b, l                                        ; $749f: $45
	inc  b                                           ; $74a0: $04
	ld   a, [bc]                                     ; $74a1: $0a
	ld   a, l                                        ; $74a2: $7d
	ld   h, c                                        ; $74a3: $61
	ld   h, c                                        ; $74a4: $61
	ld   [hl], l                                     ; $74a5: $75
	inc  bc                                          ; $74a6: $03
	ld   a, [hl]                                     ; $74a7: $7e
	dec  b                                           ; $74a8: $05
	nop                                              ; $74a9: $00
	ld   l, [hl]                                     ; $74aa: $6e
	ld   a, [$000d]                                  ; $74ab: $fa $0d $00
	ld   a, [bc]                                     ; $74ae: $0a
	ld   bc, $a102                                   ; $74af: $01 $02 $a1
	inc  bc                                          ; $74b2: $03
	and  b                                           ; $74b3: $a0
	ld   l, a                                        ; $74b4: $6f
	and  b                                           ; $74b5: $a0
	inc  b                                           ; $74b6: $04
	ld   b, l                                        ; $74b7: $45
	sbc  d                                           ; $74b8: $9a
	dec  b                                           ; $74b9: $05
	scf                                              ; $74ba: $37
	ld   d, [hl]                                     ; $74bb: $56
	ld   [hl], h                                     ; $74bc: $74
	dec  c                                           ; $74bd: $0d
	inc  bc                                          ; $74be: $03
	add  b                                           ; $74bf: $80
	inc  bc                                          ; $74c0: $03
	jp   c, Jump_05e_7465                            ; $74c1: $da $65 $74

	ld   e, e                                        ; $74c4: $5b
	ld   a, b                                        ; $74c5: $78
	ld   a, [$000d]                                  ; $74c6: $fa $0d $00
	ld   a, [bc]                                     ; $74c9: $0a
	ld   h, $00                                      ; $74ca: $26 $00
	ld   c, $21                                      ; $74cc: $0e $21
	rrca                                             ; $74ce: $0f
	nop                                              ; $74cf: $00
	ld   bc, $0f02                                   ; $74d0: $01 $02 $0f
	nop                                              ; $74d3: $00
	ld   bc, $0401                                   ; $74d4: $01 $01 $04
	ld   c, c                                        ; $74d7: $49
	and  b                                           ; $74d8: $a0
	ld   h, l                                        ; $74d9: $65
	ld   [hl], h                                     ; $74da: $74
	sbc  c                                           ; $74db: $99
	and  c                                           ; $74dc: $a1
	ld   [hl], l                                     ; $74dd: $75
	ld   h, a                                        ; $74de: $67
	ld   e, c                                        ; $74df: $59
	ld   sp, hl                                      ; $74e0: $f9
	dec  c                                           ; $74e1: $0d
	ld   h, e                                        ; $74e2: $63
	ld   e, l                                        ; $74e3: $5d
	sub  a                                           ; $74e4: $97
	ld   h, e                                        ; $74e5: $63
	and  c                                           ; $74e6: $a1
	sbc  a                                           ; $74e7: $9f
	dec  c                                           ; $74e8: $0d
	nop                                              ; $74e9: $00
	ld   a, [bc]                                     ; $74ea: $0a
	inc  e                                           ; $74eb: $1c
	ld   bc, $0404                                   ; $74ec: $01 $04 $04
	ld   bc, $9750                                   ; $74ef: $01 $50 $97
	sbc  [hl]                                        ; $74f2: $9e
	ld   [$6300], sp                                 ; $74f3: $08 $00 $63
	and  c                                           ; $74f6: $a1
	sbc  a                                           ; $74f7: $9f
	dec  c                                           ; $74f8: $0d
	nop                                              ; $74f9: $00
	ld   a, [bc]                                     ; $74fa: $0a
	ld   bc, $1005                                   ; $74fb: $01 $05 $10
	inc  bc                                          ; $74fe: $03
	ld   a, c                                        ; $74ff: $79
	ld   [bc], a                                     ; $7500: $02
	sbc  c                                           ; $7501: $99
	ld   [bc], a                                     ; $7502: $02
	rra                                              ; $7503: $1f
	ld   l, [hl]                                     ; $7504: $6e
	halt                                             ; $7505: $76
	dec  b                                           ; $7506: $05
	pop  de                                          ; $7507: $d1
	ld   d, h                                        ; $7508: $54
	halt                                             ; $7509: $76
	dec  c                                           ; $750a: $0d
	jp   z, $caae                                    ; $750b: $ca $ae $ca

	xor  [hl]                                        ; $750e: $ae
	ld   h, l                                        ; $750f: $65
	ld   l, a                                        ; $7510: $6f
	sub  c                                           ; $7511: $91
	ld   [hl], c                                     ; $7512: $71
	ld   [hl], h                                     ; $7513: $74
	dec  c                                           ; $7514: $0d
	dec  b                                           ; $7515: $05
	ld   [de], a                                     ; $7516: $12
	ld   l, a                                        ; $7517: $6f
	inc  b                                           ; $7518: $04
	rlca                                             ; $7519: $07
	ld   e, c                                        ; $751a: $59
	ld   a, b                                        ; $751b: $78
	ld   e, l                                        ; $751c: $5d
	ld   [hl], h                                     ; $751d: $74
	rst  $38                                         ; $751e: $ff
	rst  $38                                         ; $751f: $ff
	dec  c                                           ; $7520: $0d
	nop                                              ; $7521: $00
	ld   a, [bc]                                     ; $7522: $0a
	add  hl, de                                      ; $7523: $19
	dec  b                                           ; $7524: $05
	inc  bc                                          ; $7525: $03
	inc  b                                           ; $7526: $04
	ld   c, $03                                      ; $7527: $0e $03
	sbc  l                                           ; $7529: $9d
	inc  b                                           ; $752a: $04
	and  [hl]                                        ; $752b: $a6
	ld   [hl], l                                     ; $752c: $75
	ld   h, a                                        ; $752d: $67
	sub  [hl]                                        ; $752e: $96
	nop                                              ; $752f: $00
	nop                                              ; $7530: $00
	inc  bc                                          ; $7531: $03
	xor  a                                           ; $7532: $af
	inc  bc                                          ; $7533: $03
	ld   [hl], l                                     ; $7534: $75
	inc  bc                                          ; $7535: $03
	or   b                                           ; $7536: $b0
	ld   [hl], l                                     ; $7537: $75
	ld   h, a                                        ; $7538: $67
	ld   a, e                                        ; $7539: $7b
	nop                                              ; $753a: $00
	ld   bc, $7503                                   ; $753b: $01 $03 $75
	inc  b                                           ; $753e: $04
	xor  e                                           ; $753f: $ab
	ld   [hl], l                                     ; $7540: $75
	ld   h, a                                        ; $7541: $67
	ld   a, e                                        ; $7542: $7b
	rst  $38                                         ; $7543: $ff
	rst  $38                                         ; $7544: $ff
	nop                                              ; $7545: $00
	ld   [bc], a                                     ; $7546: $02
	rlca                                             ; $7547: $07
	sbc  c                                           ; $7548: $99
	nop                                              ; $7549: $00
	ld   [bc], a                                     ; $754a: $02
	inc  bc                                          ; $754b: $03
	ld   bc, $2000                                   ; $754c: $01 $00 $20
	nop                                              ; $754f: $00
	rlca                                             ; $7550: $07
	inc  hl                                          ; $7551: $23
	ld   bc, $0302                                   ; $7552: $01 $02 $03
	ld   bc, $2001                                   ; $7555: $01 $01 $20
	nop                                              ; $7558: $00
	rlca                                             ; $7559: $07
	sub  b                                           ; $755a: $90
	ld   bc, $0302                                   ; $755b: $01 $02 $03
	ld   bc, $2002                                   ; $755e: $01 $02 $20
	nop                                              ; $7561: $00
	ld   b, $7d                                      ; $7562: $06 $7d
	ld   [bc], a                                     ; $7564: $02
	rrca                                             ; $7565: $0f
	nop                                              ; $7566: $00
	ld   bc, $6301                                   ; $7567: $01 $01 $63
	ld   e, l                                        ; $756a: $5d
	sub  a                                           ; $756b: $97
	ld   h, e                                        ; $756c: $63
	and  c                                           ; $756d: $a1
	ld   a, b                                        ; $756e: $78
	sub  a                                           ; $756f: $97
	inc  b                                           ; $7570: $04
	ld   c, $03                                      ; $7571: $0e $03
	sbc  l                                           ; $7573: $9d
	inc  b                                           ; $7574: $04
	and  [hl]                                        ; $7575: $a6
	ld   [hl], l                                     ; $7576: $75
	ld   h, a                                        ; $7577: $67
	sub  [hl]                                        ; $7578: $96
	sbc  a                                           ; $7579: $9f
	dec  c                                           ; $757a: $0d
	dec  b                                           ; $757b: $05
	inc  de                                          ; $757c: $13
	ld   h, l                                        ; $757d: $65
	ld   d, d                                        ; $757e: $52
	inc  b                                           ; $757f: $04
	adc  [hl]                                        ; $7580: $8e
	inc  b                                           ; $7581: $04
	inc  c                                           ; $7582: $0c
	sbc  [hl]                                        ; $7583: $9e
	ld   [bc], a                                     ; $7584: $02
	pop  bc                                          ; $7585: $c1
	inc  b                                           ; $7586: $04
	rla                                              ; $7587: $17
	ld   h, l                                        ; $7588: $65
	ld   [hl], h                                     ; $7589: $74
	adc  h                                           ; $758a: $8c
	ld   h, a                                        ; $758b: $67
	sbc  a                                           ; $758c: $9f
	dec  c                                           ; $758d: $0d
	ld   e, d                                        ; $758e: $5a
	and  c                                           ; $758f: $a1
	ld   a, [hl]                                     ; $7590: $7e
	ld   [hl], c                                     ; $7591: $71
	ld   [hl], h                                     ; $7592: $74
	ld   e, l                                        ; $7593: $5d
	ld   l, [hl]                                     ; $7594: $6e
	ld   h, e                                        ; $7595: $63
	ld   d, d                                        ; $7596: $52
	sbc  a                                           ; $7597: $9f
	dec  c                                           ; $7598: $0d
	nop                                              ; $7599: $00
	ld   a, [bc]                                     ; $759a: $0a
	inc  e                                           ; $759b: $1c
	ld   bc, $0505                                   ; $759c: $01 $05 $05
	dec  e                                           ; $759f: $1d
	ld   b, b                                        ; $75a0: $40
	ld   de, $1103                                   ; $75a1: $11 $03 $11
	ld   bc, $2802                                   ; $75a4: $01 $02 $28
	nop                                              ; $75a7: $00
	ld   bc, $0008                                   ; $75a8: $01 $08 $00
	ld   h, e                                        ; $75ab: $63
	and  c                                           ; $75ac: $a1
	rst  $38                                         ; $75ad: $ff
	rst  $38                                         ; $75ae: $ff
	dec  c                                           ; $75af: $0d
	ld   d, b                                        ; $75b0: $50
	sbc  b                                           ; $75b1: $98
	ld   e, d                                        ; $75b2: $5a
	halt                                             ; $75b3: $76
	ld   d, h                                        ; $75b4: $54
	ld   h, d                                        ; $75b5: $62
	ld   h, h                                        ; $75b6: $64
	ld   d, d                                        ; $75b7: $52
	adc  h                                           ; $75b8: $8c
	ld   h, a                                        ; $75b9: $67
	sbc  a                                           ; $75ba: $9f
	dec  c                                           ; $75bb: $0d
	inc  bc                                          ; $75bc: $03
	ld   l, h                                        ; $75bd: $6c
	ld   h, l                                        ; $75be: $65
	inc  bc                                          ; $75bf: $03
	sub  h                                           ; $75c0: $94
	ld   [bc], a                                     ; $75c1: $02
	ld   hl, sp+$5a                                  ; $75c2: $f8 $5a
	sbc  l                                           ; $75c4: $9d
	ld   d, d                                        ; $75c5: $52
	ld   [hl], h                                     ; $75c6: $74
	ld   e, e                                        ; $75c7: $5b
	adc  h                                           ; $75c8: $8c
	ld   h, l                                        ; $75c9: $65
	ld   l, l                                        ; $75ca: $6d
	sbc  a                                           ; $75cb: $9f
	dec  c                                           ; $75cc: $0d
	nop                                              ; $75cd: $00
	ld   a, [bc]                                     ; $75ce: $0a
	inc  e                                           ; $75cf: $1c
	ld   bc, $0101                                   ; $75d0: $01 $01 $01
	ld   bc, $9166                                   ; $75d3: $01 $66 $91
	sbc  [hl]                                        ; $75d6: $9e
	inc  b                                           ; $75d7: $04
	sub  l                                           ; $75d8: $95
	ld   [bc], a                                     ; $75d9: $02
	ld   hl, $0479                                   ; $75da: $21 $79 $04
	jp   $8c98                                       ; $75dd: $c3 $98 $8c


	ld   h, a                                        ; $75e0: $67
	ld   a, e                                        ; $75e1: $7b
	sbc  a                                           ; $75e2: $9f
	dec  c                                           ; $75e3: $0d
	nop                                              ; $75e4: $00
	ld   a, [bc]                                     ; $75e5: $0a
	dec  c                                           ; $75e6: $0d
	nop                                              ; $75e7: $00
	nop                                              ; $75e8: $00
	rrca                                             ; $75e9: $0f
	nop                                              ; $75ea: $00
	ld   bc, $1e09                                   ; $75eb: $01 $09 $1e
	nop                                              ; $75ee: $00
	rrca                                             ; $75ef: $0f
	nop                                              ; $75f0: $00
	ld   bc, $0301                                   ; $75f1: $01 $01 $03
	xor  a                                           ; $75f4: $af
	inc  bc                                          ; $75f5: $03
	ld   [hl], l                                     ; $75f6: $75
	inc  bc                                          ; $75f7: $03
	or   b                                           ; $75f8: $b0
	ld   [hl], l                                     ; $75f9: $75
	ld   h, a                                        ; $75fa: $67
	ld   a, e                                        ; $75fb: $7b
	rst  $38                                         ; $75fc: $ff
	rst  $38                                         ; $75fd: $ff
	dec  c                                           ; $75fe: $0d
	nop                                              ; $75ff: $00
	ld   a, [bc]                                     ; $7600: $0a
	inc  e                                           ; $7601: $1c
	ld   bc, $0707                                   ; $7602: $01 $07 $07
	dec  e                                           ; $7605: $1d
	ld   b, b                                        ; $7606: $40
	ld   de, $1103                                   ; $7607: $11 $03 $11
	ld   bc, $2903                                   ; $760a: $01 $03 $29
	nop                                              ; $760d: $00
	ld   bc, $546b                                   ; $760e: $01 $6b $54
	ld   e, c                                        ; $7611: $59
	sub  b                                           ; $7612: $90
	inc  b                                           ; $7613: $04
	dec  hl                                          ; $7614: $2b
	sbc  d                                           ; $7615: $9a
	adc  h                                           ; $7616: $8c
	ld   l, c                                        ; $7617: $69
	and  c                                           ; $7618: $a1
	ld   e, a                                        ; $7619: $5f
	ld   [hl], a                                     ; $761a: $77
	dec  c                                           ; $761b: $0d
	nop                                              ; $761c: $00
	dec  b                                           ; $761d: $05
	ld   b, b                                        ; $761e: $40
	ld   c, b                                        ; $761f: $48
	ld   [bc], a                                     ; $7620: $02
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	ld   bc, $546b                                   ; $7623: $01 $6b $54
	ld   d, d                                        ; $7626: $52
	ld   d, h                                        ; $7627: $54
	ld   [bc], a                                     ; $7628: $02
	sbc  l                                           ; $7629: $9d
	ld   d, d                                        ; $762a: $52
	inc  b                                           ; $762b: $04
	ld   a, b                                        ; $762c: $78
	ld   [hl], c                                     ; $762d: $71
	ld   [hl], h                                     ; $762e: $74
	dec  c                                           ; $762f: $0d
	nop                                              ; $7630: $00
	dec  b                                           ; $7631: $05
	ld   b, b                                        ; $7632: $40
	ld   c, [hl]                                     ; $7633: $4e
	ld   bc, $0002                                   ; $7634: $01 $02 $00
	ld   bc, $a150                                   ; $7637: $01 $50 $a1
	adc  h                                           ; $763a: $8c
	sbc  b                                           ; $763b: $98
	ld   h, [hl]                                     ; $763c: $66
	sub  c                                           ; $763d: $91
	ld   a, b                                        ; $763e: $78
	ld   d, d                                        ; $763f: $52
	ld   [hl], l                                     ; $7640: $75
	ld   h, a                                        ; $7641: $67
	ld   e, c                                        ; $7642: $59
	ld   sp, hl                                      ; $7643: $f9
	dec  c                                           ; $7644: $0d
	nop                                              ; $7645: $00
	ld   a, [bc]                                     ; $7646: $0a
	ld   bc, $8303                                   ; $7647: $01 $03 $83
	dec  b                                           ; $764a: $05
	dec  c                                           ; $764b: $0d
	ld   h, l                                        ; $764c: $65
	adc  h                                           ; $764d: $8c
	ld   h, a                                        ; $764e: $67
	ld   a, [$000d]                                  ; $764f: $fa $0d $00
	ld   a, [bc]                                     ; $7652: $0a
	dec  c                                           ; $7653: $0d
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	rrca                                             ; $7656: $0f
	nop                                              ; $7657: $00
	ld   bc, $1e09                                   ; $7658: $01 $09 $1e
	nop                                              ; $765b: $00
	rlca                                             ; $765c: $07
	inc  c                                           ; $765d: $0c
	ld   [bc], a                                     ; $765e: $02
	inc  bc                                          ; $765f: $03
	ld   de, $9601                                   ; $7660: $11 $01 $96
	ld   [hl+], a                                    ; $7663: $22
	nop                                              ; $7664: $00
	rrca                                             ; $7665: $0f
	nop                                              ; $7666: $00
	ld   bc, $0301                                   ; $7667: $01 $01 $03
	ld   [hl], l                                     ; $766a: $75
	inc  b                                           ; $766b: $04
	xor  e                                           ; $766c: $ab
	ld   [hl], l                                     ; $766d: $75
	ld   h, a                                        ; $766e: $67
	ld   a, e                                        ; $766f: $7b
	rst  $38                                         ; $7670: $ff
	rst  $38                                         ; $7671: $ff
	dec  c                                           ; $7672: $0d
	nop                                              ; $7673: $00
	ld   a, [bc]                                     ; $7674: $0a
	inc  e                                           ; $7675: $1c
	ld   bc, $0505                                   ; $7676: $01 $05 $05
	dec  e                                           ; $7679: $1d
	ld   b, b                                        ; $767a: $40
	ld   de, $1103                                   ; $767b: $11 $03 $11
	ld   bc, $2802                                   ; $767e: $01 $02 $28
	nop                                              ; $7681: $00
	ld   bc, $9850                                   ; $7682: $01 $50 $98
	ld   e, d                                        ; $7685: $5a
	halt                                             ; $7686: $76
	ld   d, h                                        ; $7687: $54
	ld   h, d                                        ; $7688: $62
	ld   h, h                                        ; $7689: $64
	ld   d, d                                        ; $768a: $52
	adc  h                                           ; $768b: $8c
	ld   h, a                                        ; $768c: $67
	sbc  a                                           ; $768d: $9f
	dec  c                                           ; $768e: $0d
	ld   d, b                                        ; $768f: $50
	ld   l, l                                        ; $7690: $6d
	ld   h, l                                        ; $7691: $65
	ld   a, h                                        ; $7692: $7c
	ld   h, c                                        ; $7693: $61
	halt                                             ; $7694: $76
	inc  bc                                          ; $7695: $03
	ld   [hl], l                                     ; $7696: $75
	inc  b                                           ; $7697: $04
	xor  e                                           ; $7698: $ab
	ld   h, l                                        ; $7699: $65
	ld   [hl], h                                     ; $769a: $74
	dec  c                                           ; $769b: $0d
	ld   e, l                                        ; $769c: $5d
	sbc  d                                           ; $769d: $9a
	sbc  c                                           ; $769e: $99
	and  c                                           ; $769f: $a1
	ld   [hl], l                                     ; $76a0: $75
	ld   h, a                                        ; $76a1: $67
	ld   a, e                                        ; $76a2: $7b
	rst  $38                                         ; $76a3: $ff
	rst  $38                                         ; $76a4: $ff
	dec  c                                           ; $76a5: $0d
	nop                                              ; $76a6: $00
	ld   a, [bc]                                     ; $76a7: $0a
	inc  e                                           ; $76a8: $1c
	ld   bc, $0101                                   ; $76a9: $01 $01 $01
	ld   bc, $5958                                   ; $76ac: $01 $58 $59
	ld   h, b                                        ; $76af: $60
	ld   [hl], l                                     ; $76b0: $75
	inc  bc                                          ; $76b1: $03
	ld   l, h                                        ; $76b2: $6c
	ld   h, l                                        ; $76b3: $65
	dec  b                                           ; $76b4: $05
	ld   [de], a                                     ; $76b5: $12
	ld   l, a                                        ; $76b6: $6f
	inc  b                                           ; $76b7: $04
	rlca                                             ; $76b8: $07
	ld   e, e                                        ; $76b9: $5b
	adc  h                                           ; $76ba: $8c
	ld   h, l                                        ; $76bb: $65
	ld   l, l                                        ; $76bc: $6d
	sbc  a                                           ; $76bd: $9f
	dec  c                                           ; $76be: $0d
	inc  b                                           ; $76bf: $04
	sub  l                                           ; $76c0: $95
	ld   [bc], a                                     ; $76c1: $02
	ld   hl, $0479                                   ; $76c2: $21 $79 $04
	jp   $8c98                                       ; $76c5: $c3 $98 $8c


	ld   h, a                                        ; $76c8: $67
	ld   a, e                                        ; $76c9: $7b
	rst  $38                                         ; $76ca: $ff
	rst  $38                                         ; $76cb: $ff
	dec  c                                           ; $76cc: $0d
	nop                                              ; $76cd: $00
	ld   a, [bc]                                     ; $76ce: $0a
	dec  c                                           ; $76cf: $0d
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	rrca                                             ; $76d2: $0f
	nop                                              ; $76d3: $00
	ld   bc, $1e09                                   ; $76d4: $01 $09 $1e
	nop                                              ; $76d7: $00
	rrca                                             ; $76d8: $0f
	nop                                              ; $76d9: $00
	ld   bc, $0301                                   ; $76da: $01 $01 $03
	ld   [hl], l                                     ; $76dd: $75
	inc  b                                           ; $76de: $04
	xor  e                                           ; $76df: $ab
	ld   [hl], l                                     ; $76e0: $75
	ld   h, a                                        ; $76e1: $67
	ld   a, e                                        ; $76e2: $7b
	rst  $38                                         ; $76e3: $ff
	rst  $38                                         ; $76e4: $ff
	dec  c                                           ; $76e5: $0d
	nop                                              ; $76e6: $00
	ld   a, [bc]                                     ; $76e7: $0a
	inc  e                                           ; $76e8: $1c
	ld   bc, $0707                                   ; $76e9: $01 $07 $07
	ld   bc, $6d50                                   ; $76ec: $01 $50 $6d
	ld   h, l                                        ; $76ef: $65
	ld   e, d                                        ; $76f0: $5a
	reti                                             ; $76f1: $d9


	rst  JumpTable                                         ; $76f2: $df
	and  b                                           ; $76f3: $a0
	sub  d                                           ; $76f4: $92
	sub  a                                           ; $76f5: $97
	ld   e, c                                        ; $76f6: $59
	ld   h, a                                        ; $76f7: $67
	ld   e, c                                        ; $76f8: $59
	sub  a                                           ; $76f9: $97
	dec  c                                           ; $76fa: $0d
	ld   [hl], l                                     ; $76fb: $75
	ld   h, a                                        ; $76fc: $67
	ld   e, c                                        ; $76fd: $59
	ld   sp, hl                                      ; $76fe: $f9
	dec  c                                           ; $76ff: $0d
	nop                                              ; $7700: $00
	ld   a, [bc]                                     ; $7701: $0a
	rrca                                             ; $7702: $0f
	nop                                              ; $7703: $00
	ld   bc, $6b01                                   ; $7704: $01 $01 $6b
	and  c                                           ; $7707: $a1
	ld   a, b                                        ; $7708: $78
	ld   [hl], d                                     ; $7709: $72
	sub  b                                           ; $770a: $90
	sbc  b                                           ; $770b: $98
	ld   h, [hl]                                     ; $770c: $66
	sub  c                                           ; $770d: $91
	rst  $38                                         ; $770e: $ff
	rst  $38                                         ; $770f: $ff
	dec  c                                           ; $7710: $0d
	inc  b                                           ; $7711: $04
	ld   l, l                                        ; $7712: $6d
	ld   a, l                                        ; $7713: $7d
	ld   l, l                                        ; $7714: $6d
	ld   l, [hl]                                     ; $7715: $6e
	rst  $38                                         ; $7716: $ff
	rst  $38                                         ; $7717: $ff
	dec  c                                           ; $7718: $0d
	nop                                              ; $7719: $00
	ld   a, [bc]                                     ; $771a: $0a
	inc  e                                           ; $771b: $1c
	ld   bc, $0202                                   ; $771c: $01 $02 $02
	dec  e                                           ; $771f: $1d
	ld   b, b                                        ; $7720: $40
	ld   de, $1103                                   ; $7721: $11 $03 $11
	ld   bc, $2902                                   ; $7724: $01 $02 $29
	nop                                              ; $7727: $00
	ld   bc, $8303                                   ; $7728: $01 $03 $83
	dec  b                                           ; $772b: $05
	dec  c                                           ; $772c: $0d
	ld   h, l                                        ; $772d: $65
	adc  h                                           ; $772e: $8c
	ld   h, a                                        ; $772f: $67
	sbc  a                                           ; $7730: $9f
	dec  c                                           ; $7731: $0d
	nop                                              ; $7732: $00
	ld   a, [bc]                                     ; $7733: $0a
	dec  b                                           ; $7734: $05
	ld   b, b                                        ; $7735: $40
	ld   c, b                                        ; $7736: $48
	ld   [bc], a                                     ; $7737: $02
	nop                                              ; $7738: $00
	nop                                              ; $7739: $00
	dec  b                                           ; $773a: $05
	ld   b, b                                        ; $773b: $40
	ld   c, [hl]                                     ; $773c: $4e
	ld   bc, $0002                                   ; $773d: $01 $02 $00
	dec  c                                           ; $7740: $0d
	nop                                              ; $7741: $00
	nop                                              ; $7742: $00
	rrca                                             ; $7743: $0f
	nop                                              ; $7744: $00
	ld   bc, $1e09                                   ; $7745: $01 $09 $1e
	nop                                              ; $7748: $00
	inc  e                                           ; $7749: $1c
	ld   bc, $0101                                   ; $774a: $01 $01 $01
	ld   bc, $9075                                   ; $774d: $01 $75 $90
	sbc  [hl]                                        ; $7750: $9e
	inc  b                                           ; $7751: $04
	ld   c, $03                                      ; $7752: $0e $03
	sbc  l                                           ; $7754: $9d
	inc  b                                           ; $7755: $04
	and  [hl]                                        ; $7756: $a6
	ld   [hl], l                                     ; $7757: $75
	ld   h, a                                        ; $7758: $67
	sub  [hl]                                        ; $7759: $96
	sbc  a                                           ; $775a: $9f
	dec  c                                           ; $775b: $0d
	ld   h, l                                        ; $775c: $65
	ld   a, [hl]                                     ; $775d: $7e
	sub  a                                           ; $775e: $97
	ld   e, l                                        ; $775f: $5d
	ld   h, l                                        ; $7760: $65
	ld   l, l                                        ; $7761: $6d
	sub  a                                           ; $7762: $97
	inc  b                                           ; $7763: $04
	sub  l                                           ; $7764: $95
	ld   [bc], a                                     ; $7765: $02
	ld   hl, $0d79                                   ; $7766: $21 $79 $0d
	inc  b                                           ; $7769: $04
	jp   $8c98                                       ; $776a: $c3 $98 $8c


	ld   h, a                                        ; $776d: $67
	ld   e, c                                        ; $776e: $59
	sub  a                                           ; $776f: $97
	rst  $38                                         ; $7770: $ff
	rst  $38                                         ; $7771: $ff
	dec  c                                           ; $7772: $0d
	nop                                              ; $7773: $00
	ld   a, [bc]                                     ; $7774: $0a
	dec  c                                           ; $7775: $0d
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	rrca                                             ; $7778: $0f
	nop                                              ; $7779: $00
	ld   bc, $1e09                                   ; $777a: $01 $09 $1e
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	rrca                                             ; $777f: $0f
	nop                                              ; $7780: $00
	ld   bc, $060d                                   ; $7781: $01 $0d $06
	dec  b                                           ; $7784: $05
	ld   [bc], a                                     ; $7785: $02
	ld   bc, $9a50                                   ; $7786: $01 $50 $9a
	ld   sp, hl                                      ; $7789: $f9
	db   $10                                         ; $778a: $10
	xor  h                                           ; $778b: $ac
	push af                                          ; $778c: $f5
	bit  4, e                                        ; $778d: $cb $63
	and  c                                           ; $778f: $a1
	sbc  a                                           ; $7790: $9f
	dec  c                                           ; $7791: $0d
	ld   [hl], a                                     ; $7792: $77
	ld   d, h                                        ; $7793: $54
	ld   h, l                                        ; $7794: $65
	ld   l, l                                        ; $7795: $6d
	and  c                                           ; $7796: $a1
	ld   [hl], l                                     ; $7797: $75
	ld   h, a                                        ; $7798: $67
	ld   e, c                                        ; $7799: $59
	ld   sp, hl                                      ; $779a: $f9
	dec  c                                           ; $779b: $0d
	nop                                              ; $779c: $00
	ld   a, [bc]                                     ; $779d: $0a
	inc  e                                           ; $779e: $1c
	ld   b, $00                                      ; $779f: $06 $00
	nop                                              ; $77a1: $00
	ld   bc, $5858                                   ; $77a2: $01 $58 $58
	sbc  [hl]                                        ; $77a5: $9e
	ld   [$9f00], sp                                 ; $77a6: $08 $00 $9f
	dec  c                                           ; $77a9: $0d
	ld   d, d                                        ; $77aa: $52
	ld   d, d                                        ; $77ab: $52
	halt                                             ; $77ac: $76
	ld   h, c                                        ; $77ad: $61
	sbc  e                                           ; $77ae: $9b
	ld   a, c                                        ; $77af: $79
	dec  b                                           ; $77b0: $05
	db   $10                                         ; $77b1: $10
	ld   l, l                                        ; $77b2: $6d
	sbc  a                                           ; $77b3: $9f
	dec  c                                           ; $77b4: $0d
	nop                                              ; $77b5: $00
	ld   a, [bc]                                     ; $77b6: $0a
	ld   bc, $6d50                                   ; $77b7: $01 $50 $6d
	ld   d, d                                        ; $77ba: $52
	ld   a, h                                        ; $77bb: $7c
	ld   e, b                                        ; $77bc: $58
	ld   [bc], a                                     ; $77bd: $02
	and  c                                           ; $77be: $a1
	ld   a, c                                        ; $77bf: $79
	inc  b                                           ; $77c0: $04
	ld   b, l                                        ; $77c1: $45
	sbc  b                                           ; $77c2: $98
	ld   a, h                                        ; $77c3: $7c
	jp   z, $d7f5                                    ; $77c4: $ca $f5 $d7

	db   $ec                                         ; $77c7: $ec
	dec  c                                           ; $77c8: $0d
	inc  b                                           ; $77c9: $04
	inc  d                                           ; $77ca: $14
	ld   h, l                                        ; $77cb: $65
	ld   [hl], h                                     ; $77cc: $74
	and  c                                           ; $77cd: $a1
	ld   l, [hl]                                     ; $77ce: $6e
	ld   e, a                                        ; $77cf: $5f
	ld   [hl], a                                     ; $77d0: $77
	sbc  [hl]                                        ; $77d1: $9e
	dec  c                                           ; $77d2: $0d
	inc  bc                                          ; $77d3: $03
	ld   l, e                                        ; $77d4: $6b
	inc  b                                           ; $77d5: $04
	ld   [de], a                                     ; $77d6: $12
	ld   [hl], c                                     ; $77d7: $71
	ld   [hl], h                                     ; $77d8: $74
	ld   e, l                                        ; $77d9: $5d
	sbc  d                                           ; $77da: $9a
	ld   a, b                                        ; $77db: $78
	ld   d, d                                        ; $77dc: $52
	ld   e, c                                        ; $77dd: $59
	ld   sp, hl                                      ; $77de: $f9
	dec  c                                           ; $77df: $0d
	nop                                              ; $77e0: $00
	ld   a, [bc]                                     ; $77e1: $0a
	add  hl, de                                      ; $77e2: $19
	dec  b                                           ; $77e3: $05
	ld   [bc], a                                     ; $77e4: $02
	ld   a, l                                        ; $77e5: $7d
	ld   d, d                                        ; $77e6: $52
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	ld   d, d                                        ; $77e9: $52
	ld   d, d                                        ; $77ea: $52
	ld   d, [hl]                                     ; $77eb: $56
	nop                                              ; $77ec: $00
	ld   bc, $fa07                                   ; $77ed: $01 $07 $fa
	nop                                              ; $77f0: $00
	ld   [bc], a                                     ; $77f1: $02
	inc  bc                                          ; $77f2: $03
	ld   bc, $2000                                   ; $77f3: $01 $00 $20
	nop                                              ; $77f6: $00
	rlca                                             ; $77f7: $07
	add  h                                           ; $77f8: $84
	nop                                              ; $77f9: $00
	ld   [bc], a                                     ; $77fa: $02
	inc  bc                                          ; $77fb: $03
	ld   bc, $2001                                   ; $77fc: $01 $01 $20
	nop                                              ; $77ff: $00
	ld   b, $db                                      ; $7800: $06 $db
	nop                                              ; $7802: $00
	rrca                                             ; $7803: $0f
	nop                                              ; $7804: $00
	ld   bc, $6701                                   ; $7805: $01 $01 $67
	adc  l                                           ; $7808: $8d
	adc  h                                           ; $7809: $8c
	ld   l, c                                        ; $780a: $69
	and  c                                           ; $780b: $a1
	sbc  [hl]                                        ; $780c: $9e
	xor  h                                           ; $780d: $ac
	push af                                          ; $780e: $f5
	bit  4, e                                        ; $780f: $cb $63
	and  c                                           ; $7811: $a1
	sbc  a                                           ; $7812: $9f
	dec  c                                           ; $7813: $0d
	ld   [bc], a                                     ; $7814: $02
	and  l                                           ; $7815: $a5
	ld   l, a                                        ; $7816: $6f
	sub  l                                           ; $7817: $95
	ld   [hl], c                                     ; $7818: $71
	halt                                             ; $7819: $76
	ld   [bc], a                                     ; $781a: $02
	sub  l                                           ; $781b: $95
	ld   [bc], a                                     ; $781c: $02
	sub  e                                           ; $781d: $93
	sbc  b                                           ; $781e: $98
	ld   a, h                                        ; $781f: $7c
	inc  b                                           ; $7820: $04
	ld   [hl-], a                                    ; $7821: $32
	inc  b                                           ; $7822: $04
	dec  bc                                          ; $7823: $0b
	dec  c                                           ; $7824: $0d
	ld   a, b                                        ; $7825: $78
	and  c                                           ; $7826: $a1
	ld   [hl], l                                     ; $7827: $75
	ld   h, a                                        ; $7828: $67
	sub  [hl]                                        ; $7829: $96
	sbc  a                                           ; $782a: $9f
	dec  c                                           ; $782b: $0d
	nop                                              ; $782c: $00
	ld   a, [bc]                                     ; $782d: $0a
	inc  e                                           ; $782e: $1c
	ld   b, $05                                      ; $782f: $06 $05
	dec  b                                           ; $7831: $05
	ld   bc, $546b                                   ; $7832: $01 $6b $54
	ld   e, c                                        ; $7835: $59
	rst  $38                                         ; $7836: $ff
	ld   h, [hl]                                     ; $7837: $66
	sub  c                                           ; $7838: $91
	sbc  [hl]                                        ; $7839: $9e
	ld   h, l                                        ; $783a: $65
	ld   e, c                                        ; $783b: $59
	ld   l, l                                        ; $783c: $6d
	ld   a, b                                        ; $783d: $78
	ld   d, d                                        ; $783e: $52
	ld   a, b                                        ; $783f: $78
	sbc  a                                           ; $7840: $9f
	dec  c                                           ; $7841: $0d
	ld   [hl], a                                     ; $7842: $77
	ld   h, c                                        ; $7843: $61
	ld   e, c                                        ; $7844: $59
	ld   [hl], l                                     ; $7845: $75
	ld   [bc], a                                     ; $7846: $02
	sub  l                                           ; $7847: $95
	ld   e, c                                        ; $7848: $59
	ld   e, a                                        ; $7849: $5f
	ld   l, l                                        ; $784a: $6d
	sub  a                                           ; $784b: $97
	dec  c                                           ; $784c: $0d
	ld   e, b                                        ; $784d: $58
	ld   h, l                                        ; $784e: $65
	ld   d, [hl]                                     ; $784f: $56
	ld   [hl], h                                     ; $7850: $74
	ld   e, l                                        ; $7851: $5d
	sbc  d                                           ; $7852: $9a
	sub  [hl]                                        ; $7853: $96
	ld   a, b                                        ; $7854: $78
	sbc  a                                           ; $7855: $9f
	dec  c                                           ; $7856: $0d
	nop                                              ; $7857: $00
	ld   a, [bc]                                     ; $7858: $0a

Jump_05e_7859:
	nop                                              ; $7859: $00
	inc  e                                           ; $785a: $1c
	ld   b, $02                                      ; $785b: $06 $02

Call_05e_785d:
	ld   [bc], a                                     ; $785d: $02
	dec  e                                           ; $785e: $1d
	ld   b, b                                        ; $785f: $40
	ld   d, $03                                      ; $7860: $16 $03
	ld   d, $01                                      ; $7862: $16 $01
	ld   [bc], a                                     ; $7864: $02
	add  hl, hl                                      ; $7865: $29
	nop                                              ; $7866: $00
	ld   bc, $e6a5                                   ; $7867: $01 $a5 $e6
	ld   l, [hl]                                     ; $786a: $6e
	ld   [hl], c                                     ; $786b: $71
	ld   l, l                                        ; $786c: $6d
	sub  a                                           ; $786d: $97
	ld   d, d                                        ; $786e: $52
	ld   d, d                                        ; $786f: $52
	sub  [hl]                                        ; $7870: $96
	inc  b                                           ; $7871: $04
	ld   d, h                                        ; $7872: $54
	ld   a, c                                        ; $7873: $79
	sbc  a                                           ; $7874: $9f
	dec  c                                           ; $7875: $0d
	nop                                              ; $7876: $00
	ld   a, [bc]                                     ; $7877: $0a
	nop                                              ; $7878: $00

Call_05e_7879:
	rrca                                             ; $7879: $0f
	nop                                              ; $787a: $00
	ld   bc, $9d01                                   ; $787b: $01 $01 $9d
	ld   e, c                                        ; $787e: $59
	sbc  b                                           ; $787f: $98
	adc  h                                           ; $7880: $8c
	ld   h, l                                        ; $7881: $65
	ld   l, l                                        ; $7882: $6d
	sbc  a                                           ; $7883: $9f
	dec  c                                           ; $7884: $0d
	ld   [hl], l                                     ; $7885: $75
	sub  b                                           ; $7886: $90
	sbc  [hl]                                        ; $7887: $9e
	sub  d                                           ; $7888: $92
	adc  l                                           ; $7889: $8d
	ld   e, l                                        ; $788a: $5d
	sub  b                                           ; $788b: $90
	ld   a, c                                        ; $788c: $79
	inc  b                                           ; $788d: $04
	inc  d                                           ; $788e: $14
	ld   h, a                                        ; $788f: $67
	sub  [hl]                                        ; $7890: $96
	sbc  b                                           ; $7891: $98
	sbc  [hl]                                        ; $7892: $9e
	dec  c                                           ; $7893: $0d
	inc  bc                                          ; $7894: $03
	xor  c                                           ; $7895: $a9
	ld   e, c                                        ; $7896: $59
	ld   a, c                                        ; $7897: $79
	ld   [bc], a                                     ; $7898: $02
	jp   nz, Jump_05e_7452                           ; $7899: $c2 $52 $74

	adc  l                                           ; $789c: $8d
	adc  h                                           ; $789d: $8c
	ld   l, c                                        ; $789e: $69
	and  c                                           ; $789f: $a1
	ld   e, c                                        ; $78a0: $59
	ld   sp, hl                                      ; $78a1: $f9
	dec  c                                           ; $78a2: $0d
	nop                                              ; $78a3: $00
	ld   a, [bc]                                     ; $78a4: $0a
	inc  e                                           ; $78a5: $1c
	ld   b, $05                                      ; $78a6: $06 $05
	dec  b                                           ; $78a8: $05
	ld   bc, $9a6b                                   ; $78a9: $01 $6b $9a
	sub  b                                           ; $78ac: $90
	sbc  [hl]                                        ; $78ad: $9e
	ld   l, e                                        ; $78ae: $6b
	ld   d, h                                        ; $78af: $54
	ld   l, [hl]                                     ; $78b0: $6e
	ld   a, b                                        ; $78b1: $78
	rst  $38                                         ; $78b2: $ff
	rst  $38                                         ; $78b3: $ff
	dec  c                                           ; $78b4: $0d
	nop                                              ; $78b5: $00
	ld   a, [bc]                                     ; $78b6: $0a
	inc  e                                           ; $78b7: $1c
	ld   b, $00                                      ; $78b8: $06 $00
	nop                                              ; $78ba: $00
	ld   bc, $6596                                   ; $78bb: $01 $96 $65
	sbc  [hl]                                        ; $78be: $9e
	ld   l, e                                        ; $78bf: $6b
	ld   d, h                                        ; $78c0: $54
	ld   h, l                                        ; $78c1: $65
	sub  [hl]                                        ; $78c2: $96
	ld   d, h                                        ; $78c3: $54
	sbc  a                                           ; $78c4: $9f
	dec  c                                           ; $78c5: $0d
	adc  h                                           ; $78c6: $8c
	ld   l, b                                        ; $78c7: $68
	inc  bc                                          ; $78c8: $03
	xor  c                                           ; $78c9: $a9
	ld   e, c                                        ; $78ca: $59
	sub  a                                           ; $78cb: $97
	ld   [bc], a                                     ; $78cc: $02
	jp   nz, $f95d                                   ; $78cd: $c2 $5d $f9

	dec  c                                           ; $78d0: $0d
	nop                                              ; $78d1: $00
	ld   a, [bc]                                     ; $78d2: $0a
	jr   @+$05                                       ; $78d3: $18 $03

	nop                                              ; $78d5: $00
	inc  b                                           ; $78d6: $04
	ld   c, $03                                      ; $78d7: $0e $03
	sub  b                                           ; $78d9: $90
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	inc  b                                           ; $78dc: $04
	rst  $10                                         ; $78dd: $d7
	inc  b                                           ; $78de: $04
	ld   hl, $0100                                   ; $78df: $21 $00 $01
	ld   h, a                                        ; $78e2: $67
	adc  l                                           ; $78e3: $8d
	sbc  d                                           ; $78e4: $9a
	nop                                              ; $78e5: $00
	ld   [bc], a                                     ; $78e6: $02
	rlca                                             ; $78e7: $07
	add  e                                           ; $78e8: $83
	ld   bc, $0202                                   ; $78e9: $01 $02 $02
	ld   bc, $2000                                   ; $78ec: $01 $00 $20
	nop                                              ; $78ef: $00
	rlca                                             ; $78f0: $07
	and  $08                                         ; $78f1: $e6 $08
	ld   [bc], a                                     ; $78f3: $02
	ld   [bc], a                                     ; $78f4: $02
	ld   bc, $2001                                   ; $78f5: $01 $01 $20
	nop                                              ; $78f8: $00
	rlca                                             ; $78f9: $07
	ld   b, h                                        ; $78fa: $44
	ld   [bc], a                                     ; $78fb: $02
	ld   [bc], a                                     ; $78fc: $02
	ld   [bc], a                                     ; $78fd: $02
	ld   bc, $2002                                   ; $78fe: $01 $02 $20
	nop                                              ; $7901: $00
	rrca                                             ; $7902: $0f
	nop                                              ; $7903: $00
	ld   bc, $0401                                   ; $7904: $01 $01 $04
	ld   c, $03                                      ; $7907: $0e $03
	sub  b                                           ; $7909: $90
	ld   h, e                                        ; $790a: $63
	and  c                                           ; $790b: $a1
	ld   a, h                                        ; $790c: $7c
	halt                                             ; $790d: $76
	ld   h, c                                        ; $790e: $61
	sbc  e                                           ; $790f: $9b
	ld   a, c                                        ; $7910: $79
	dec  c                                           ; $7911: $0d
	ld   [bc], a                                     ; $7912: $02
	ld   a, a                                        ; $7913: $7f
	ld   e, e                                        ; $7914: $5b
	adc  h                                           ; $7915: $8c
	ld   h, l                                        ; $7916: $65
	sub  l                                           ; $7917: $95
	ld   d, h                                        ; $7918: $54
	sbc  a                                           ; $7919: $9f
	dec  c                                           ; $791a: $0d
	nop                                              ; $791b: $00
	ld   a, [bc]                                     ; $791c: $0a
	dec  c                                           ; $791d: $0d
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	rrca                                             ; $7920: $0f
	nop                                              ; $7921: $00
	ld   bc, $3a23                                   ; $7922: $01 $23 $3a
	dec  c                                           ; $7925: $0d
	add  hl, bc                                      ; $7926: $09
	nop                                              ; $7927: $00
	rrca                                             ; $7928: $0f
	nop                                              ; $7929: $00
	ld   bc, $0401                                   ; $792a: $01 $01 $04
	ld   c, $03                                      ; $792d: $0e $03
	sub  b                                           ; $792f: $90
	ld   h, e                                        ; $7930: $63
	and  c                                           ; $7931: $a1
	sbc  [hl]                                        ; $7932: $9e
	xor  h                                           ; $7933: $ac
	push af                                          ; $7934: $f5
	bit  4, e                                        ; $7935: $cb $63
	and  c                                           ; $7937: $a1
	ld   a, h                                        ; $7938: $7c
	dec  c                                           ; $7939: $0d
	jp   z, $d7f5                                    ; $793a: $ca $f5 $d7

	db   $ec                                         ; $793d: $ec
	inc  b                                           ; $793e: $04
	dec  hl                                          ; $793f: $2b
	sbc  b                                           ; $7940: $98
	adc  h                                           ; $7941: $8c
	ld   l, c                                        ; $7942: $69
	and  c                                           ; $7943: $a1
	ld   e, c                                        ; $7944: $59
	ld   sp, hl                                      ; $7945: $f9
	dec  c                                           ; $7946: $0d
	nop                                              ; $7947: $00
	ld   a, [bc]                                     ; $7948: $0a
	inc  e                                           ; $7949: $1c
	add  hl, bc                                      ; $794a: $09
	nop                                              ; $794b: $00
	nop                                              ; $794c: $00
	ld   bc, $5252                                   ; $794d: $01 $52 $52
	sub  d                                           ; $7950: $92
	sbc  [hl]                                        ; $7951: $9e
	dec  b                                           ; $7952: $05
	ld   [hl], e                                     ; $7953: $73
	ld   a, l                                        ; $7954: $7d
	inc  b                                           ; $7955: $04
	dec  hl                                          ; $7956: $2b
	sub  a                                           ; $7957: $97
	ld   a, b                                        ; $7958: $78
	ld   d, d                                        ; $7959: $52
	sub  [hl]                                        ; $795a: $96
	sbc  a                                           ; $795b: $9f
	dec  c                                           ; $795c: $0d
	nop                                              ; $795d: $00
	ld   a, [bc]                                     ; $795e: $0a
	rrca                                             ; $795f: $0f
	ld   b, $05                                      ; $7960: $06 $05
	ld   bc, $546b                                   ; $7962: $01 $6b $54
	ld   e, c                                        ; $7965: $59
	rst  $38                                         ; $7966: $ff
	rst  $38                                         ; $7967: $ff
	dec  c                                           ; $7968: $0d
	ld   h, a                                        ; $7969: $67
	adc  h                                           ; $796a: $8c
	ld   a, b                                        ; $796b: $78
	ld   e, c                                        ; $796c: $59
	ld   [hl], c                                     ; $796d: $71
	ld   l, l                                        ; $796e: $6d
	ld   a, b                                        ; $796f: $78
	inc  b                                           ; $7970: $04
	ld   a, [bc]                                     ; $7971: $0a
	inc  bc                                          ; $7972: $03
	jp   nc, $0d9f                                   ; $7973: $d2 $9f $0d

	nop                                              ; $7976: $00
	ld   a, [bc]                                     ; $7977: $0a
	dec  c                                           ; $7978: $0d
	nop                                              ; $7979: $00
	nop                                              ; $797a: $00
	rrca                                             ; $797b: $0f
	nop                                              ; $797c: $00
	ld   bc, $5f23                                   ; $797d: $01 $23 $5f
	inc  e                                           ; $7980: $1c
	ld   b, $05                                      ; $7981: $06 $05
	dec  b                                           ; $7983: $05
	ld   bc, $6803                                   ; $7984: $01 $03 $68
	ld   a, l                                        ; $7987: $7d
	inc  bc                                          ; $7988: $03
	xor  c                                           ; $7989: $a9
	ld   a, c                                        ; $798a: $79
	ld   [bc], a                                     ; $798b: $02
	jp   nz, Jump_05e_5461                           ; $798c: $c2 $61 $54

	ld   e, c                                        ; $798f: $59
	rst  $38                                         ; $7990: $ff
	rst  $38                                         ; $7991: $ff
	dec  c                                           ; $7992: $0d
	nop                                              ; $7993: $00
	ld   a, [bc]                                     ; $7994: $0a
	jr   jr_05e_799a                                 ; $7995: $18 $03

	nop                                              ; $7997: $00
	inc  b                                           ; $7998: $04
	rst  $10                                         ; $7999: $d7

jr_05e_799a:
	inc  b                                           ; $799a: $04
	ld   hl, $0000                                   ; $799b: $21 $00 $00
	rst  JumpTable                                         ; $799e: $df
	db   $ec                                         ; $799f: $ec
	and  e                                           ; $79a0: $a3
	nop                                              ; $79a1: $00
	ld   bc, $8d67                                   ; $79a2: $01 $67 $8d
	sbc  d                                           ; $79a5: $9a
	nop                                              ; $79a6: $00
	ld   [bc], a                                     ; $79a7: $02
	rlca                                             ; $79a8: $07
	and  $08                                         ; $79a9: $e6 $08
	ld   [bc], a                                     ; $79ab: $02
	ld   [bc], a                                     ; $79ac: $02
	ld   bc, $2000                                   ; $79ad: $01 $00 $20
	nop                                              ; $79b0: $00
	rlca                                             ; $79b1: $07
	jr   nz, @+$05                                   ; $79b2: $20 $03

	ld   [bc], a                                     ; $79b4: $02
	ld   [bc], a                                     ; $79b5: $02
	ld   bc, $2001                                   ; $79b6: $01 $01 $20
	nop                                              ; $79b9: $00
	rlca                                             ; $79ba: $07
	db   $dd                                         ; $79bb: $dd
	inc  bc                                          ; $79bc: $03
	ld   [bc], a                                     ; $79bd: $02
	ld   [bc], a                                     ; $79be: $02
	ld   bc, $2002                                   ; $79bf: $01 $02 $20
	nop                                              ; $79c2: $00
	rrca                                             ; $79c3: $0f
	nop                                              ; $79c4: $00
	ld   bc, $6701                                   ; $79c5: $01 $01 $67
	adc  l                                           ; $79c8: $8d
	sbc  d                                           ; $79c9: $9a
	ld   h, e                                        ; $79ca: $63
	and  c                                           ; $79cb: $a1
	ld   a, h                                        ; $79cc: $7c
	halt                                             ; $79cd: $76
	ld   h, c                                        ; $79ce: $61
	sbc  e                                           ; $79cf: $9b
	ld   a, c                                        ; $79d0: $79
	dec  c                                           ; $79d1: $0d
	ld   [bc], a                                     ; $79d2: $02
	ld   a, a                                        ; $79d3: $7f
	ld   e, e                                        ; $79d4: $5b
	adc  h                                           ; $79d5: $8c
	ld   h, l                                        ; $79d6: $65
	sub  l                                           ; $79d7: $95

Call_05e_79d8:
	ld   d, h                                        ; $79d8: $54
	sbc  a                                           ; $79d9: $9f
	dec  c                                           ; $79da: $0d
	nop                                              ; $79db: $00
	ld   a, [bc]                                     ; $79dc: $0a
	dec  c                                           ; $79dd: $0d
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	rrca                                             ; $79e0: $0f
	nop                                              ; $79e1: $00
	ld   bc, $5123                                   ; $79e2: $01 $23 $51
	dec  c                                           ; $79e5: $0d
	ld   [bc], a                                     ; $79e6: $02
	nop                                              ; $79e7: $00
	rrca                                             ; $79e8: $0f
	nop                                              ; $79e9: $00
	ld   bc, $6701                                   ; $79ea: $01 $01 $67
	adc  l                                           ; $79ed: $8d
	sbc  d                                           ; $79ee: $9a
	ld   h, e                                        ; $79ef: $63
	and  c                                           ; $79f0: $a1
	sbc  [hl]                                        ; $79f1: $9e
	xor  h                                           ; $79f2: $ac
	push af                                          ; $79f3: $f5
	bit  4, e                                        ; $79f4: $cb $63
	and  c                                           ; $79f6: $a1
	ld   a, h                                        ; $79f7: $7c
	dec  c                                           ; $79f8: $0d
	jp   z, $d7f5                                    ; $79f9: $ca $f5 $d7

	db   $ec                                         ; $79fc: $ec
	inc  b                                           ; $79fd: $04
	dec  hl                                          ; $79fe: $2b
	sbc  b                                           ; $79ff: $98
	adc  h                                           ; $7a00: $8c
	ld   l, c                                        ; $7a01: $69
	and  c                                           ; $7a02: $a1
	ld   e, c                                        ; $7a03: $59
	ld   sp, hl                                      ; $7a04: $f9
	dec  c                                           ; $7a05: $0d
	nop                                              ; $7a06: $00
	ld   a, [bc]                                     ; $7a07: $0a
	inc  e                                           ; $7a08: $1c
	ld   [bc], a                                     ; $7a09: $02
	dec  b                                           ; $7a0a: $05
	dec  b                                           ; $7a0b: $05
	dec  e                                           ; $7a0c: $1d
	ld   b, b                                        ; $7a0d: $40
	ld   [de], a                                     ; $7a0e: $12
	inc  bc                                          ; $7a0f: $03
	ld   [de], a                                     ; $7a10: $12
	ld   bc, $2902                                   ; $7a11: $01 $02 $29
	nop                                              ; $7a14: $00
	ld   bc, $f5ca                                   ; $7a15: $01 $ca $f5
	rst  $10                                         ; $7a18: $d7
	db   $ec                                         ; $7a19: $ec
	ld   sp, hl                                      ; $7a1a: $f9
	dec  c                                           ; $7a1b: $0d
	xor  h                                           ; $7a1c: $ac
	push af                                          ; $7a1d: $f5
	bit  4, e                                        ; $7a1e: $cb $63
	and  c                                           ; $7a20: $a1
	ld   a, h                                        ; $7a21: $7c
	jp   z, $d7f5                                    ; $7a22: $ca $f5 $d7

	db   $ec                                         ; $7a25: $ec
	ld   a, b                                        ; $7a26: $78
	and  c                                           ; $7a27: $a1
	ld   [hl], h                                     ; $7a28: $74
	dec  c                                           ; $7a29: $0d
	sbc  l                                           ; $7a2a: $9d
	ld   l, l                                        ; $7a2b: $6d
	ld   e, l                                        ; $7a2c: $5d
	ld   h, l                                        ; $7a2d: $65
	inc  b                                           ; $7a2e: $04
	dec  hl                                          ; $7a2f: $2b
	sbc  b                                           ; $7a30: $98
	adc  h                                           ; $7a31: $8c
	ld   l, c                                        ; $7a32: $69
	and  c                                           ; $7a33: $a1
	sbc  l                                           ; $7a34: $9d
	sub  [hl]                                        ; $7a35: $96
	sbc  a                                           ; $7a36: $9f
	dec  c                                           ; $7a37: $0d
	nop                                              ; $7a38: $00
	ld   a, [bc]                                     ; $7a39: $0a
	rrca                                             ; $7a3a: $0f
	ld   b, $05                                      ; $7a3b: $06 $05
	ld   bc, $546b                                   ; $7a3d: $01 $6b $54
	ld   e, c                                        ; $7a40: $59
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	dec  c                                           ; $7a43: $0d
	ld   h, a                                        ; $7a44: $67
	adc  h                                           ; $7a45: $8c
	ld   a, b                                        ; $7a46: $78
	ld   e, c                                        ; $7a47: $59
	ld   [hl], c                                     ; $7a48: $71
	ld   l, l                                        ; $7a49: $6d
	ld   a, b                                        ; $7a4a: $78
	sbc  [hl]                                        ; $7a4b: $9e
	ld   h, a                                        ; $7a4c: $67
	adc  l                                           ; $7a4d: $8d
	sbc  d                                           ; $7a4e: $9a
	sbc  a                                           ; $7a4f: $9f
	dec  c                                           ; $7a50: $0d
	nop                                              ; $7a51: $00
	ld   a, [bc]                                     ; $7a52: $0a
	dec  c                                           ; $7a53: $0d
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
	rrca                                             ; $7a56: $0f
	nop                                              ; $7a57: $00
	ld   bc, $4423                                   ; $7a58: $01 $23 $44
	inc  e                                           ; $7a5b: $1c
	ld   b, $05                                      ; $7a5c: $06 $05
	dec  b                                           ; $7a5e: $05
	ld   bc, $6803                                   ; $7a5f: $01 $03 $68
	ld   a, l                                        ; $7a62: $7d
	inc  bc                                          ; $7a63: $03
	xor  c                                           ; $7a64: $a9
	ld   a, c                                        ; $7a65: $79
	ld   [bc], a                                     ; $7a66: $02
	jp   nz, Jump_05e_5461                           ; $7a67: $c2 $61 $54

	ld   e, c                                        ; $7a6a: $59
	rst  $38                                         ; $7a6b: $ff
	rst  $38                                         ; $7a6c: $ff
	dec  c                                           ; $7a6d: $0d
	nop                                              ; $7a6e: $00
	ld   a, [bc]                                     ; $7a6f: $0a
	jr   jr_05e_7a75                                 ; $7a70: $18 $03

	nop                                              ; $7a72: $00
	rst  JumpTable                                         ; $7a73: $df
	db   $ec                                         ; $7a74: $ec

jr_05e_7a75:
	and  e                                           ; $7a75: $a3
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00
	inc  b                                           ; $7a78: $04
	ld   c, $03                                      ; $7a79: $0e $03
	sub  b                                           ; $7a7b: $90
	nop                                              ; $7a7c: $00
	ld   bc, $d704                                   ; $7a7d: $01 $04 $d7
	inc  b                                           ; $7a80: $04
	ld   hl, $0200                                   ; $7a81: $21 $00 $02
	rlca                                             ; $7a84: $07
	ld   a, a                                        ; $7a85: $7f
	dec  b                                           ; $7a86: $05
	ld   [bc], a                                     ; $7a87: $02
	ld   [bc], a                                     ; $7a88: $02
	ld   bc, $2000                                   ; $7a89: $01 $00 $20
	nop                                              ; $7a8c: $00
	rlca                                             ; $7a8d: $07
	cp   e                                           ; $7a8e: $bb
	inc  b                                           ; $7a8f: $04
	ld   [bc], a                                     ; $7a90: $02
	ld   [bc], a                                     ; $7a91: $02
	ld   bc, $2001                                   ; $7a92: $01 $01 $20
	nop                                              ; $7a95: $00
	rlca                                             ; $7a96: $07
	and  $08                                         ; $7a97: $e6 $08
	ld   [bc], a                                     ; $7a99: $02
	ld   [bc], a                                     ; $7a9a: $02
	ld   bc, $2002                                   ; $7a9b: $01 $02 $20
	nop                                              ; $7a9e: $00
	rrca                                             ; $7a9f: $0f
	nop                                              ; $7aa0: $00
	ld   bc, $df01                                   ; $7aa1: $01 $01 $df
	db   $ec                                         ; $7aa4: $ec
	and  e                                           ; $7aa5: $a3
	ld   h, e                                        ; $7aa6: $63
	and  c                                           ; $7aa7: $a1
	ld   a, h                                        ; $7aa8: $7c
	halt                                             ; $7aa9: $76
	ld   h, c                                        ; $7aaa: $61
	sbc  e                                           ; $7aab: $9b
	add  [hl]                                        ; $7aac: $86
	dec  c                                           ; $7aad: $0d
	ld   [bc], a                                     ; $7aae: $02
	ld   a, a                                        ; $7aaf: $7f
	ld   e, e                                        ; $7ab0: $5b
	adc  h                                           ; $7ab1: $8c
	ld   h, l                                        ; $7ab2: $65
	sub  l                                           ; $7ab3: $95
	ld   d, h                                        ; $7ab4: $54
	sbc  a                                           ; $7ab5: $9f
	dec  c                                           ; $7ab6: $0d
	nop                                              ; $7ab7: $00
	ld   a, [bc]                                     ; $7ab8: $0a
	dec  c                                           ; $7ab9: $0d
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	rrca                                             ; $7abc: $0f
	nop                                              ; $7abd: $00
	ld   bc, $5323                                   ; $7abe: $01 $23 $53
	dec  c                                           ; $7ac1: $0d
	inc  bc                                          ; $7ac2: $03
	nop                                              ; $7ac3: $00
	rrca                                             ; $7ac4: $0f
	nop                                              ; $7ac5: $00
	ld   bc, $df01                                   ; $7ac6: $01 $01 $df
	db   $ec                                         ; $7ac9: $ec
	and  e                                           ; $7aca: $a3
	ld   h, e                                        ; $7acb: $63
	and  c                                           ; $7acc: $a1
	sbc  [hl]                                        ; $7acd: $9e
	xor  h                                           ; $7ace: $ac
	push af                                          ; $7acf: $f5
	bit  4, e                                        ; $7ad0: $cb $63
	and  c                                           ; $7ad2: $a1
	ld   a, h                                        ; $7ad3: $7c
	dec  c                                           ; $7ad4: $0d
	jp   z, $d7f5                                    ; $7ad5: $ca $f5 $d7

	db   $ec                                         ; $7ad8: $ec
	inc  b                                           ; $7ad9: $04
	dec  hl                                          ; $7ada: $2b
	sbc  b                                           ; $7adb: $98
	adc  h                                           ; $7adc: $8c
	ld   l, c                                        ; $7add: $69
	and  c                                           ; $7ade: $a1
	ld   e, c                                        ; $7adf: $59
	ld   sp, hl                                      ; $7ae0: $f9
	dec  c                                           ; $7ae1: $0d
	nop                                              ; $7ae2: $00
	ld   a, [bc]                                     ; $7ae3: $0a
	rrca                                             ; $7ae4: $0f
	inc  bc                                          ; $7ae5: $03
	nop                                              ; $7ae6: $00
	ld   bc, $5252                                   ; $7ae7: $01 $52 $52
	ld   d, [hl]                                     ; $7aea: $56
	sbc  [hl]                                        ; $7aeb: $9e
	inc  b                                           ; $7aec: $04
	dec  hl                                          ; $7aed: $2b
	sub  a                                           ; $7aee: $97
	ld   a, b                                        ; $7aef: $78
	ld   d, d                                        ; $7af0: $52
	sbc  l                                           ; $7af1: $9d
	sub  [hl]                                        ; $7af2: $96
	sbc  a                                           ; $7af3: $9f
	dec  c                                           ; $7af4: $0d
	nop                                              ; $7af5: $00
	ld   a, [bc]                                     ; $7af6: $0a
	rrca                                             ; $7af7: $0f
	ld   b, $05                                      ; $7af8: $06 $05
	ld   bc, $546b                                   ; $7afa: $01 $6b $54
	ld   e, c                                        ; $7afd: $59
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	dec  c                                           ; $7b00: $0d
	ld   h, a                                        ; $7b01: $67
	adc  h                                           ; $7b02: $8c
	ld   a, b                                        ; $7b03: $78
	ld   e, c                                        ; $7b04: $59
	ld   [hl], c                                     ; $7b05: $71
	ld   l, l                                        ; $7b06: $6d
	ld   a, b                                        ; $7b07: $78
	sbc  [hl]                                        ; $7b08: $9e
	rst  JumpTable                                         ; $7b09: $df
	db   $ec                                         ; $7b0a: $ec
	and  e                                           ; $7b0b: $a3
	sbc  a                                           ; $7b0c: $9f
	dec  c                                           ; $7b0d: $0d
	nop                                              ; $7b0e: $00
	ld   a, [bc]                                     ; $7b0f: $0a
	dec  c                                           ; $7b10: $0d
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
	rrca                                             ; $7b13: $0f
	nop                                              ; $7b14: $00
	ld   bc, $4423                                   ; $7b15: $01 $23 $44
	inc  e                                           ; $7b18: $1c
	ld   b, $05                                      ; $7b19: $06 $05
	dec  b                                           ; $7b1b: $05
	ld   bc, $6803                                   ; $7b1c: $01 $03 $68
	ld   a, l                                        ; $7b1f: $7d
	inc  bc                                          ; $7b20: $03
	xor  c                                           ; $7b21: $a9
	ld   a, c                                        ; $7b22: $79
	ld   [bc], a                                     ; $7b23: $02
	jp   nz, Jump_05e_5461                           ; $7b24: $c2 $61 $54

	ld   e, c                                        ; $7b27: $59
	rst  $38                                         ; $7b28: $ff
	rst  $38                                         ; $7b29: $ff
	dec  c                                           ; $7b2a: $0d
	nop                                              ; $7b2b: $00
	ld   a, [bc]                                     ; $7b2c: $0a
	jr   jr_05e_7b32                                 ; $7b2d: $18 $03

	nop                                              ; $7b2f: $00
	inc  b                                           ; $7b30: $04
	rst  $10                                         ; $7b31: $d7

jr_05e_7b32:
	inc  b                                           ; $7b32: $04
	ld   hl, $0000                                   ; $7b33: $21 $00 $00
	and  e                                           ; $7b36: $a3
	and  l                                           ; $7b37: $a5
	db   $ec                                         ; $7b38: $ec
	cp   d                                           ; $7b39: $ba
	nop                                              ; $7b3a: $00
	ld   bc, $8d67                                   ; $7b3b: $01 $67 $8d
	sbc  d                                           ; $7b3e: $9a
	nop                                              ; $7b3f: $00
	ld   [bc], a                                     ; $7b40: $02
	rlca                                             ; $7b41: $07
	and  $08                                         ; $7b42: $e6 $08
	ld   [bc], a                                     ; $7b44: $02
	ld   [bc], a                                     ; $7b45: $02
	ld   bc, $2000                                   ; $7b46: $01 $00 $20
	nop                                              ; $7b49: $00
	rlca                                             ; $7b4a: $07
	rra                                              ; $7b4b: $1f
	ld   [$0202], sp                                 ; $7b4c: $08 $02 $02
	ld   bc, $2001                                   ; $7b4f: $01 $01 $20
	nop                                              ; $7b52: $00
	rlca                                             ; $7b53: $07
	ret  c                                           ; $7b54: $d8

	ld   b, $02                                      ; $7b55: $06 $02
	ld   [bc], a                                     ; $7b57: $02
	ld   bc, $2002                                   ; $7b58: $01 $02 $20
	nop                                              ; $7b5b: $00
	rrca                                             ; $7b5c: $0f
	nop                                              ; $7b5d: $00
	ld   bc, $6701                                   ; $7b5e: $01 $01 $67
	adc  l                                           ; $7b61: $8d
	sbc  d                                           ; $7b62: $9a
	ld   h, e                                        ; $7b63: $63
	and  c                                           ; $7b64: $a1
	ld   a, h                                        ; $7b65: $7c
	halt                                             ; $7b66: $76
	ld   h, c                                        ; $7b67: $61
	sbc  e                                           ; $7b68: $9b
	ld   a, c                                        ; $7b69: $79
	dec  c                                           ; $7b6a: $0d
	ld   [bc], a                                     ; $7b6b: $02
	ld   a, a                                        ; $7b6c: $7f
	ld   e, e                                        ; $7b6d: $5b
	adc  h                                           ; $7b6e: $8c
	ld   h, l                                        ; $7b6f: $65
	sub  l                                           ; $7b70: $95
	ld   d, h                                        ; $7b71: $54
	sbc  a                                           ; $7b72: $9f
	dec  c                                           ; $7b73: $0d
	nop                                              ; $7b74: $00
	ld   a, [bc]                                     ; $7b75: $0a
	dec  c                                           ; $7b76: $0d
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	rrca                                             ; $7b79: $0f
	nop                                              ; $7b7a: $00
	ld   bc, $5123                                   ; $7b7b: $01 $23 $51
	dec  c                                           ; $7b7e: $0d
	ld   [bc], a                                     ; $7b7f: $02
	nop                                              ; $7b80: $00
	rrca                                             ; $7b81: $0f
	nop                                              ; $7b82: $00
	ld   bc, $6701                                   ; $7b83: $01 $01 $67
	adc  l                                           ; $7b86: $8d
	sbc  d                                           ; $7b87: $9a
	ld   h, e                                        ; $7b88: $63
	and  c                                           ; $7b89: $a1
	sbc  [hl]                                        ; $7b8a: $9e
	xor  h                                           ; $7b8b: $ac
	push af                                          ; $7b8c: $f5
	bit  4, e                                        ; $7b8d: $cb $63
	and  c                                           ; $7b8f: $a1
	ld   a, h                                        ; $7b90: $7c
	dec  c                                           ; $7b91: $0d
	jp   z, $d7f5                                    ; $7b92: $ca $f5 $d7

	db   $ec                                         ; $7b95: $ec
	inc  b                                           ; $7b96: $04
	dec  hl                                          ; $7b97: $2b
	sbc  b                                           ; $7b98: $98
	adc  h                                           ; $7b99: $8c
	ld   l, c                                        ; $7b9a: $69
	and  c                                           ; $7b9b: $a1
	ld   e, c                                        ; $7b9c: $59
	ld   sp, hl                                      ; $7b9d: $f9
	dec  c                                           ; $7b9e: $0d
	nop                                              ; $7b9f: $00
	ld   a, [bc]                                     ; $7ba0: $0a
	inc  e                                           ; $7ba1: $1c
	ld   [bc], a                                     ; $7ba2: $02
	dec  b                                           ; $7ba3: $05
	dec  b                                           ; $7ba4: $05
	dec  e                                           ; $7ba5: $1d
	ld   b, b                                        ; $7ba6: $40
	ld   [de], a                                     ; $7ba7: $12
	inc  bc                                          ; $7ba8: $03
	ld   [de], a                                     ; $7ba9: $12
	ld   bc, $2902                                   ; $7baa: $01 $02 $29
	nop                                              ; $7bad: $00
	ld   bc, $f5ca                                   ; $7bae: $01 $ca $f5
	rst  $10                                         ; $7bb1: $d7
	db   $ec                                         ; $7bb2: $ec
	ld   sp, hl                                      ; $7bb3: $f9
	dec  c                                           ; $7bb4: $0d
	xor  h                                           ; $7bb5: $ac
	push af                                          ; $7bb6: $f5
	bit  4, e                                        ; $7bb7: $cb $63
	and  c                                           ; $7bb9: $a1
	ld   a, h                                        ; $7bba: $7c
	jp   z, $d7f5                                    ; $7bbb: $ca $f5 $d7

	db   $ec                                         ; $7bbe: $ec
	ld   a, b                                        ; $7bbf: $78
	and  c                                           ; $7bc0: $a1
	ld   [hl], h                                     ; $7bc1: $74
	dec  c                                           ; $7bc2: $0d
	sbc  l                                           ; $7bc3: $9d
	ld   l, l                                        ; $7bc4: $6d
	ld   e, l                                        ; $7bc5: $5d
	ld   h, l                                        ; $7bc6: $65
	inc  b                                           ; $7bc7: $04
	dec  hl                                          ; $7bc8: $2b
	sbc  b                                           ; $7bc9: $98
	adc  h                                           ; $7bca: $8c
	ld   l, c                                        ; $7bcb: $69
	and  c                                           ; $7bcc: $a1
	sbc  l                                           ; $7bcd: $9d
	sub  [hl]                                        ; $7bce: $96
	sbc  a                                           ; $7bcf: $9f
	dec  c                                           ; $7bd0: $0d
	nop                                              ; $7bd1: $00
	ld   a, [bc]                                     ; $7bd2: $0a
	rrca                                             ; $7bd3: $0f
	ld   b, $05                                      ; $7bd4: $06 $05
	ld   bc, $546b                                   ; $7bd6: $01 $6b $54
	ld   e, c                                        ; $7bd9: $59
	rst  $38                                         ; $7bda: $ff
	rst  $38                                         ; $7bdb: $ff
	dec  c                                           ; $7bdc: $0d
	ld   h, a                                        ; $7bdd: $67
	adc  h                                           ; $7bde: $8c
	ld   a, b                                        ; $7bdf: $78
	ld   e, c                                        ; $7be0: $59
	ld   [hl], c                                     ; $7be1: $71
	ld   l, l                                        ; $7be2: $6d
	ld   a, b                                        ; $7be3: $78
	sbc  [hl]                                        ; $7be4: $9e
	ld   h, a                                        ; $7be5: $67
	adc  l                                           ; $7be6: $8d
	sbc  d                                           ; $7be7: $9a
	sbc  a                                           ; $7be8: $9f
	dec  c                                           ; $7be9: $0d
	nop                                              ; $7bea: $00
	ld   a, [bc]                                     ; $7beb: $0a
	dec  c                                           ; $7bec: $0d
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	rrca                                             ; $7bef: $0f
	nop                                              ; $7bf0: $00
	ld   bc, $020c                                   ; $7bf1: $01 $0c $02
	inc  hl                                          ; $7bf4: $23
	ld   b, h                                        ; $7bf5: $44
	inc  e                                           ; $7bf6: $1c
	ld   b, $05                                      ; $7bf7: $06 $05
	dec  b                                           ; $7bf9: $05
	ld   bc, $6803                                   ; $7bfa: $01 $03 $68
	ld   a, l                                        ; $7bfd: $7d
	inc  bc                                          ; $7bfe: $03
	xor  c                                           ; $7bff: $a9
	ld   a, c                                        ; $7c00: $79
	ld   [bc], a                                     ; $7c01: $02
	jp   nz, Jump_05e_5461                           ; $7c02: $c2 $61 $54

	ld   e, c                                        ; $7c05: $59
	rst  $38                                         ; $7c06: $ff
	rst  $38                                         ; $7c07: $ff
	dec  c                                           ; $7c08: $0d
	nop                                              ; $7c09: $00
	ld   a, [bc]                                     ; $7c0a: $0a
	jr   jr_05e_7c10                                 ; $7c0b: $18 $03

	nop                                              ; $7c0d: $00
	inc  b                                           ; $7c0e: $04
	rst  $10                                         ; $7c0f: $d7

jr_05e_7c10:
	inc  b                                           ; $7c10: $04
	ld   hl, $0000                                   ; $7c11: $21 $00 $00
	rst  JumpTable                                         ; $7c14: $df
	db   $ec                                         ; $7c15: $ec
	and  e                                           ; $7c16: $a3
	nop                                              ; $7c17: $00
	ld   bc, $a5a3                                   ; $7c18: $01 $a3 $a5
	db   $ec                                         ; $7c1b: $ec
	cp   d                                           ; $7c1c: $ba
	nop                                              ; $7c1d: $00
	ld   [bc], a                                     ; $7c1e: $02
	rlca                                             ; $7c1f: $07
	and  $08                                         ; $7c20: $e6 $08
	ld   [bc], a                                     ; $7c22: $02
	ld   [bc], a                                     ; $7c23: $02
	ld   bc, $2000                                   ; $7c24: $01 $00 $20
	nop                                              ; $7c27: $00
	rlca                                             ; $7c28: $07
	adc  e                                           ; $7c29: $8b
	rlca                                             ; $7c2a: $07
	ld   [bc], a                                     ; $7c2b: $02
	ld   [bc], a                                     ; $7c2c: $02
	ld   bc, $2001                                   ; $7c2d: $01 $01 $20
	nop                                              ; $7c30: $00
	rlca                                             ; $7c31: $07
	rra                                              ; $7c32: $1f
	ld   [$0202], sp                                 ; $7c33: $08 $02 $02
	ld   bc, $2002                                   ; $7c36: $01 $02 $20
	nop                                              ; $7c39: $00
	rrca                                             ; $7c3a: $0f
	nop                                              ; $7c3b: $00
	ld   bc, $0401                                   ; $7c3c: $01 $01 $04
	ld   c, $03                                      ; $7c3f: $0e $03
	sub  b                                           ; $7c41: $90
	ld   h, e                                        ; $7c42: $63
	and  c                                           ; $7c43: $a1
	ld   a, h                                        ; $7c44: $7c
	halt                                             ; $7c45: $76
	ld   h, c                                        ; $7c46: $61
	sbc  e                                           ; $7c47: $9b
	add  [hl]                                        ; $7c48: $86
	dec  c                                           ; $7c49: $0d
	ld   [bc], a                                     ; $7c4a: $02
	ld   a, a                                        ; $7c4b: $7f
	ld   e, e                                        ; $7c4c: $5b
	adc  h                                           ; $7c4d: $8c
	ld   h, l                                        ; $7c4e: $65
	sub  l                                           ; $7c4f: $95
	ld   d, h                                        ; $7c50: $54
	sbc  a                                           ; $7c51: $9f
	dec  c                                           ; $7c52: $0d
	nop                                              ; $7c53: $00
	ld   a, [bc]                                     ; $7c54: $0a
	dec  c                                           ; $7c55: $0d
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	rrca                                             ; $7c58: $0f
	nop                                              ; $7c59: $00
	ld   bc, $3a23                                   ; $7c5a: $01 $23 $3a
	dec  c                                           ; $7c5d: $0d
	add  hl, bc                                      ; $7c5e: $09
	nop                                              ; $7c5f: $00
	rrca                                             ; $7c60: $0f
	nop                                              ; $7c61: $00
	ld   bc, $0401                                   ; $7c62: $01 $01 $04
	ld   c, $03                                      ; $7c65: $0e $03
	sub  b                                           ; $7c67: $90
	ld   h, e                                        ; $7c68: $63
	and  c                                           ; $7c69: $a1
	sbc  [hl]                                        ; $7c6a: $9e
	xor  h                                           ; $7c6b: $ac
	push af                                          ; $7c6c: $f5
	bit  4, e                                        ; $7c6d: $cb $63
	and  c                                           ; $7c6f: $a1
	ld   a, h                                        ; $7c70: $7c
	dec  c                                           ; $7c71: $0d
	jp   z, $d7f5                                    ; $7c72: $ca $f5 $d7

	db   $ec                                         ; $7c75: $ec
	inc  b                                           ; $7c76: $04
	dec  hl                                          ; $7c77: $2b
	sbc  b                                           ; $7c78: $98
	adc  h                                           ; $7c79: $8c
	ld   l, c                                        ; $7c7a: $69
	and  c                                           ; $7c7b: $a1
	ld   e, c                                        ; $7c7c: $59
	ld   sp, hl                                      ; $7c7d: $f9
	dec  c                                           ; $7c7e: $0d
	nop                                              ; $7c7f: $00
	ld   a, [bc]                                     ; $7c80: $0a
	inc  e                                           ; $7c81: $1c
	add  hl, bc                                      ; $7c82: $09
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	ld   bc, $5252                                   ; $7c85: $01 $52 $52
	sub  d                                           ; $7c88: $92
	sbc  [hl]                                        ; $7c89: $9e
	dec  b                                           ; $7c8a: $05
	ld   [hl], e                                     ; $7c8b: $73
	ld   a, l                                        ; $7c8c: $7d
	inc  b                                           ; $7c8d: $04
	dec  hl                                          ; $7c8e: $2b
	sub  a                                           ; $7c8f: $97
	ld   a, b                                        ; $7c90: $78
	ld   d, d                                        ; $7c91: $52
	sub  [hl]                                        ; $7c92: $96
	sbc  a                                           ; $7c93: $9f
	dec  c                                           ; $7c94: $0d
	nop                                              ; $7c95: $00
	ld   a, [bc]                                     ; $7c96: $0a
	rrca                                             ; $7c97: $0f
	ld   b, $05                                      ; $7c98: $06 $05
	ld   bc, $546b                                   ; $7c9a: $01 $6b $54
	ld   e, c                                        ; $7c9d: $59
	rst  $38                                         ; $7c9e: $ff
	rst  $38                                         ; $7c9f: $ff
	dec  c                                           ; $7ca0: $0d
	ld   h, a                                        ; $7ca1: $67
	adc  h                                           ; $7ca2: $8c

Jump_05e_7ca3:
	ld   a, b                                        ; $7ca3: $78
	ld   e, c                                        ; $7ca4: $59
	ld   [hl], c                                     ; $7ca5: $71
	ld   l, l                                        ; $7ca6: $6d
	ld   a, b                                        ; $7ca7: $78
	inc  b                                           ; $7ca8: $04
	ld   a, [bc]                                     ; $7ca9: $0a
	inc  bc                                          ; $7caa: $03
	jp   nc, $0d9f                                   ; $7cab: $d2 $9f $0d

	nop                                              ; $7cae: $00
	ld   a, [bc]                                     ; $7caf: $0a
	dec  c                                           ; $7cb0: $0d
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	rrca                                             ; $7cb3: $0f
	nop                                              ; $7cb4: $00
	ld   bc, $020c                                   ; $7cb5: $01 $0c $02
	inc  hl                                          ; $7cb8: $23
	ld   e, a                                        ; $7cb9: $5f
	inc  e                                           ; $7cba: $1c
	ld   b, $05                                      ; $7cbb: $06 $05
	dec  b                                           ; $7cbd: $05
	ld   bc, $6803                                   ; $7cbe: $01 $03 $68
	ld   a, l                                        ; $7cc1: $7d
	inc  bc                                          ; $7cc2: $03
	xor  c                                           ; $7cc3: $a9
	ld   a, c                                        ; $7cc4: $79
	ld   [bc], a                                     ; $7cc5: $02
	jp   nz, Jump_05e_5461                           ; $7cc6: $c2 $61 $54

	ld   e, c                                        ; $7cc9: $59
	rst  $38                                         ; $7cca: $ff
	rst  $38                                         ; $7ccb: $ff
	dec  c                                           ; $7ccc: $0d
	nop                                              ; $7ccd: $00
	ld   a, [bc]                                     ; $7cce: $0a
	jr   jr_05e_7cd4                                 ; $7ccf: $18 $03

	nop                                              ; $7cd1: $00
	inc  b                                           ; $7cd2: $04
	rst  $10                                         ; $7cd3: $d7

jr_05e_7cd4:
	inc  b                                           ; $7cd4: $04
	ld   hl, $0000                                   ; $7cd5: $21 $00 $00
	and  e                                           ; $7cd8: $a3
	and  l                                           ; $7cd9: $a5
	db   $ec                                         ; $7cda: $ec
	cp   d                                           ; $7cdb: $ba
	nop                                              ; $7cdc: $00
	ld   bc, $ecdf                                   ; $7cdd: $01 $df $ec
	and  e                                           ; $7ce0: $a3
	nop                                              ; $7ce1: $00
	ld   [bc], a                                     ; $7ce2: $02
	rlca                                             ; $7ce3: $07
	and  $08                                         ; $7ce4: $e6 $08
	ld   [bc], a                                     ; $7ce6: $02
	ld   [bc], a                                     ; $7ce7: $02
	ld   bc, $2000                                   ; $7ce8: $01 $00 $20
	nop                                              ; $7ceb: $00
	rlca                                             ; $7cec: $07
	rra                                              ; $7ced: $1f
	ld   [$0202], sp                                 ; $7cee: $08 $02 $02
	ld   bc, $2001                                   ; $7cf1: $01 $01 $20
	nop                                              ; $7cf4: $00
	rlca                                             ; $7cf5: $07
	adc  e                                           ; $7cf6: $8b
	rlca                                             ; $7cf7: $07
	ld   [bc], a                                     ; $7cf8: $02
	ld   [bc], a                                     ; $7cf9: $02
	ld   bc, $2002                                   ; $7cfa: $01 $02 $20
	nop                                              ; $7cfd: $00
	rrca                                             ; $7cfe: $0f
	nop                                              ; $7cff: $00
	ld   bc, $df01                                   ; $7d00: $01 $01 $df
	db   $ec                                         ; $7d03: $ec
	and  e                                           ; $7d04: $a3
	ld   h, e                                        ; $7d05: $63
	and  c                                           ; $7d06: $a1
	ld   a, h                                        ; $7d07: $7c
	halt                                             ; $7d08: $76
	ld   h, c                                        ; $7d09: $61
	sbc  e                                           ; $7d0a: $9b
	ld   a, c                                        ; $7d0b: $79
	dec  c                                           ; $7d0c: $0d
	ld   [bc], a                                     ; $7d0d: $02
	ld   a, a                                        ; $7d0e: $7f
	ld   e, e                                        ; $7d0f: $5b
	adc  h                                           ; $7d10: $8c
	ld   h, l                                        ; $7d11: $65
	sub  l                                           ; $7d12: $95
	ld   d, h                                        ; $7d13: $54
	sbc  a                                           ; $7d14: $9f
	dec  c                                           ; $7d15: $0d
	nop                                              ; $7d16: $00
	ld   a, [bc]                                     ; $7d17: $0a
	dec  c                                           ; $7d18: $0d
	nop                                              ; $7d19: $00
	nop                                              ; $7d1a: $00
	rrca                                             ; $7d1b: $0f
	nop                                              ; $7d1c: $00
	ld   bc, $5323                                   ; $7d1d: $01 $23 $53
	dec  c                                           ; $7d20: $0d
	inc  bc                                          ; $7d21: $03
	nop                                              ; $7d22: $00
	rrca                                             ; $7d23: $0f
	nop                                              ; $7d24: $00
	ld   bc, $df01                                   ; $7d25: $01 $01 $df
	db   $ec                                         ; $7d28: $ec
	and  e                                           ; $7d29: $a3
	ld   h, e                                        ; $7d2a: $63
	and  c                                           ; $7d2b: $a1
	sbc  [hl]                                        ; $7d2c: $9e
	xor  h                                           ; $7d2d: $ac
	push af                                          ; $7d2e: $f5
	bit  4, e                                        ; $7d2f: $cb $63
	and  c                                           ; $7d31: $a1
	ld   a, h                                        ; $7d32: $7c
	dec  c                                           ; $7d33: $0d
	jp   z, $d7f5                                    ; $7d34: $ca $f5 $d7

	db   $ec                                         ; $7d37: $ec
	inc  b                                           ; $7d38: $04
	dec  hl                                          ; $7d39: $2b
	sbc  b                                           ; $7d3a: $98
	adc  h                                           ; $7d3b: $8c
	ld   l, c                                        ; $7d3c: $69
	and  c                                           ; $7d3d: $a1
	ld   e, c                                        ; $7d3e: $59
	ld   sp, hl                                      ; $7d3f: $f9
	dec  c                                           ; $7d40: $0d
	nop                                              ; $7d41: $00
	ld   a, [bc]                                     ; $7d42: $0a
	rrca                                             ; $7d43: $0f
	inc  bc                                          ; $7d44: $03
	nop                                              ; $7d45: $00
	ld   bc, $5252                                   ; $7d46: $01 $52 $52
	ld   d, [hl]                                     ; $7d49: $56
	sbc  [hl]                                        ; $7d4a: $9e
	inc  b                                           ; $7d4b: $04
	dec  hl                                          ; $7d4c: $2b
	sub  a                                           ; $7d4d: $97
	ld   a, b                                        ; $7d4e: $78
	ld   d, d                                        ; $7d4f: $52
	sbc  l                                           ; $7d50: $9d
	sub  [hl]                                        ; $7d51: $96
	sbc  a                                           ; $7d52: $9f
	dec  c                                           ; $7d53: $0d
	nop                                              ; $7d54: $00
	ld   a, [bc]                                     ; $7d55: $0a
	rrca                                             ; $7d56: $0f
	ld   b, $05                                      ; $7d57: $06 $05
	ld   bc, $546b                                   ; $7d59: $01 $6b $54
	ld   e, c                                        ; $7d5c: $59
	rst  $38                                         ; $7d5d: $ff
	rst  $38                                         ; $7d5e: $ff
	dec  c                                           ; $7d5f: $0d
	ld   h, a                                        ; $7d60: $67
	adc  h                                           ; $7d61: $8c
	ld   a, b                                        ; $7d62: $78
	ld   e, c                                        ; $7d63: $59
	ld   [hl], c                                     ; $7d64: $71
	ld   l, l                                        ; $7d65: $6d
	ld   a, b                                        ; $7d66: $78
	sbc  [hl]                                        ; $7d67: $9e
	rst  JumpTable                                         ; $7d68: $df
	db   $ec                                         ; $7d69: $ec
	and  e                                           ; $7d6a: $a3
	sbc  a                                           ; $7d6b: $9f
	dec  c                                           ; $7d6c: $0d
	nop                                              ; $7d6d: $00
	ld   a, [bc]                                     ; $7d6e: $0a
	dec  c                                           ; $7d6f: $0d
	nop                                              ; $7d70: $00
	nop                                              ; $7d71: $00
	rrca                                             ; $7d72: $0f
	nop                                              ; $7d73: $00
	ld   bc, $020c                                   ; $7d74: $01 $0c $02
	inc  hl                                          ; $7d77: $23
	ld   b, [hl]                                     ; $7d78: $46
	inc  e                                           ; $7d79: $1c
	ld   b, $05                                      ; $7d7a: $06 $05
	dec  b                                           ; $7d7c: $05
	ld   bc, $6803                                   ; $7d7d: $01 $03 $68
	ld   a, l                                        ; $7d80: $7d
	inc  bc                                          ; $7d81: $03
	xor  c                                           ; $7d82: $a9
	ld   a, c                                        ; $7d83: $79
	ld   [bc], a                                     ; $7d84: $02
	jp   nz, Jump_05e_5461                           ; $7d85: $c2 $61 $54

	ld   e, c                                        ; $7d88: $59
	rst  $38                                         ; $7d89: $ff
	rst  $38                                         ; $7d8a: $ff
	dec  c                                           ; $7d8b: $0d
	nop                                              ; $7d8c: $00
	ld   a, [bc]                                     ; $7d8d: $0a
	jr   jr_05e_7d93                                 ; $7d8e: $18 $03

	nop                                              ; $7d90: $00
	inc  b                                           ; $7d91: $04
	rst  $10                                         ; $7d92: $d7

jr_05e_7d93:
	inc  b                                           ; $7d93: $04
	ld   hl, $0000                                   ; $7d94: $21 $00 $00
	inc  b                                           ; $7d97: $04
	ld   c, $03                                      ; $7d98: $0e $03
	sub  b                                           ; $7d9a: $90
	nop                                              ; $7d9b: $00
	ld   bc, $a5a3                                   ; $7d9c: $01 $a3 $a5
	db   $ec                                         ; $7d9f: $ec
	cp   d                                           ; $7da0: $ba
	nop                                              ; $7da1: $00
	ld   [bc], a                                     ; $7da2: $02

Jump_05e_7da3:
	rlca                                             ; $7da3: $07
	and  $08                                         ; $7da4: $e6 $08
	ld   [bc], a                                     ; $7da6: $02
	ld   [bc], a                                     ; $7da7: $02
	ld   bc, $2000                                   ; $7da8: $01 $00 $20
	nop                                              ; $7dab: $00
	rlca                                             ; $7dac: $07
	ccf                                              ; $7dad: $3f
	ld   b, $02                                      ; $7dae: $06 $02
	ld   [bc], a                                     ; $7db0: $02
	ld   bc, $2001                                   ; $7db1: $01 $01 $20
	nop                                              ; $7db4: $00
	rlca                                             ; $7db5: $07
	rra                                              ; $7db6: $1f
	ld   [$0202], sp                                 ; $7db7: $08 $02 $02
	ld   bc, $2002                                   ; $7dba: $01 $02 $20
	nop                                              ; $7dbd: $00
	rrca                                             ; $7dbe: $0f
	nop                                              ; $7dbf: $00
	ld   bc, $0401                                   ; $7dc0: $01 $01 $04
	ld   c, $03                                      ; $7dc3: $0e $03
	sub  b                                           ; $7dc5: $90
	ld   h, e                                        ; $7dc6: $63
	and  c                                           ; $7dc7: $a1
	ld   a, h                                        ; $7dc8: $7c
	halt                                             ; $7dc9: $76
	ld   h, c                                        ; $7dca: $61
	sbc  e                                           ; $7dcb: $9b
	ld   a, c                                        ; $7dcc: $79
	dec  c                                           ; $7dcd: $0d
	ld   [bc], a                                     ; $7dce: $02
	ld   a, a                                        ; $7dcf: $7f
	ld   e, e                                        ; $7dd0: $5b
	adc  h                                           ; $7dd1: $8c
	ld   h, l                                        ; $7dd2: $65
	sub  l                                           ; $7dd3: $95
	ld   d, h                                        ; $7dd4: $54
	sbc  a                                           ; $7dd5: $9f
	dec  c                                           ; $7dd6: $0d
	nop                                              ; $7dd7: $00
	ld   a, [bc]                                     ; $7dd8: $0a
	dec  c                                           ; $7dd9: $0d
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	rrca                                             ; $7ddc: $0f
	nop                                              ; $7ddd: $00
	ld   bc, $3a23                                   ; $7dde: $01 $23 $3a
	dec  c                                           ; $7de1: $0d
	add  hl, bc                                      ; $7de2: $09
	nop                                              ; $7de3: $00
	rrca                                             ; $7de4: $0f
	nop                                              ; $7de5: $00
	ld   bc, $0401                                   ; $7de6: $01 $01 $04
	ld   c, $03                                      ; $7de9: $0e $03
	sub  b                                           ; $7deb: $90
	ld   h, e                                        ; $7dec: $63
	and  c                                           ; $7ded: $a1
	sbc  [hl]                                        ; $7dee: $9e
	xor  h                                           ; $7def: $ac
	push af                                          ; $7df0: $f5
	bit  4, e                                        ; $7df1: $cb $63
	and  c                                           ; $7df3: $a1
	ld   a, h                                        ; $7df4: $7c
	dec  c                                           ; $7df5: $0d
	jp   z, $d7f5                                    ; $7df6: $ca $f5 $d7

	db   $ec                                         ; $7df9: $ec
	inc  b                                           ; $7dfa: $04
	dec  hl                                          ; $7dfb: $2b
	sbc  b                                           ; $7dfc: $98
	adc  h                                           ; $7dfd: $8c
	ld   l, c                                        ; $7dfe: $69
	and  c                                           ; $7dff: $a1
	ld   e, c                                        ; $7e00: $59
	ld   sp, hl                                      ; $7e01: $f9
	dec  c                                           ; $7e02: $0d
	nop                                              ; $7e03: $00
	ld   a, [bc]                                     ; $7e04: $0a
	inc  e                                           ; $7e05: $1c
	add  hl, bc                                      ; $7e06: $09
	nop                                              ; $7e07: $00
	nop                                              ; $7e08: $00
	ld   bc, $5252                                   ; $7e09: $01 $52 $52
	sub  d                                           ; $7e0c: $92
	sbc  [hl]                                        ; $7e0d: $9e
	dec  b                                           ; $7e0e: $05
	ld   [hl], e                                     ; $7e0f: $73
	ld   a, l                                        ; $7e10: $7d
	inc  b                                           ; $7e11: $04
	dec  hl                                          ; $7e12: $2b
	sub  a                                           ; $7e13: $97
	ld   a, b                                        ; $7e14: $78
	ld   d, d                                        ; $7e15: $52
	sub  [hl]                                        ; $7e16: $96
	sbc  a                                           ; $7e17: $9f
	dec  c                                           ; $7e18: $0d
	nop                                              ; $7e19: $00
	ld   a, [bc]                                     ; $7e1a: $0a
	dec  c                                           ; $7e1b: $0d
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	rrca                                             ; $7e1e: $0f
	nop                                              ; $7e1f: $00
	ld   bc, $020c                                   ; $7e20: $01 $0c $02
	ld   b, $a5                                      ; $7e23: $06 $a5
	ld   [$060f], sp                                 ; $7e25: $08 $0f $06
	dec  b                                           ; $7e28: $05
	ld   bc, $546b                                   ; $7e29: $01 $6b $54
	ld   e, c                                        ; $7e2c: $59
	rst  $38                                         ; $7e2d: $ff
	rst  $38                                         ; $7e2e: $ff
	dec  c                                           ; $7e2f: $0d
	ld   h, a                                        ; $7e30: $67
	adc  h                                           ; $7e31: $8c
	ld   a, b                                        ; $7e32: $78
	ld   e, c                                        ; $7e33: $59
	ld   [hl], c                                     ; $7e34: $71
	ld   l, l                                        ; $7e35: $6d
	ld   a, b                                        ; $7e36: $78
	inc  b                                           ; $7e37: $04
	ld   a, [bc]                                     ; $7e38: $0a
	inc  bc                                          ; $7e39: $03
	jp   nc, $0d9f                                   ; $7e3a: $d2 $9f $0d

	nop                                              ; $7e3d: $00
	ld   a, [bc]                                     ; $7e3e: $0a
	dec  c                                           ; $7e3f: $0d
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	rrca                                             ; $7e42: $0f
	nop                                              ; $7e43: $00
	ld   bc, $5f23                                   ; $7e44: $01 $23 $5f
	inc  e                                           ; $7e47: $1c
	ld   b, $05                                      ; $7e48: $06 $05
	dec  b                                           ; $7e4a: $05
	ld   bc, $fc54                                   ; $7e4b: $01 $54 $fc
	and  c                                           ; $7e4e: $a1
	rst  $38                                         ; $7e4f: $ff
	rst  $38                                         ; $7e50: $ff
	dec  c                                           ; $7e51: $0d
	nop                                              ; $7e52: $00
	ld   a, [bc]                                     ; $7e53: $0a
	ld   b, $a5                                      ; $7e54: $06 $a5
	ld   [$000f], sp                                 ; $7e56: $08 $0f $00
	ld   bc, $6701                                   ; $7e59: $01 $01 $67
	adc  l                                           ; $7e5c: $8d
	sbc  d                                           ; $7e5d: $9a
	ld   h, e                                        ; $7e5e: $63
	and  c                                           ; $7e5f: $a1
	ld   a, h                                        ; $7e60: $7c
	halt                                             ; $7e61: $76
	ld   h, c                                        ; $7e62: $61
	sbc  e                                           ; $7e63: $9b
	ld   a, c                                        ; $7e64: $79
	dec  c                                           ; $7e65: $0d
	ld   [bc], a                                     ; $7e66: $02
	ld   a, a                                        ; $7e67: $7f
	ld   e, e                                        ; $7e68: $5b
	adc  h                                           ; $7e69: $8c
	ld   h, l                                        ; $7e6a: $65
	sub  l                                           ; $7e6b: $95
	ld   d, h                                        ; $7e6c: $54
	sbc  a                                           ; $7e6d: $9f
	dec  c                                           ; $7e6e: $0d
	nop                                              ; $7e6f: $00
	ld   a, [bc]                                     ; $7e70: $0a
	dec  c                                           ; $7e71: $0d
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	rrca                                             ; $7e74: $0f
	nop                                              ; $7e75: $00
	ld   bc, $5123                                   ; $7e76: $01 $23 $51
	dec  c                                           ; $7e79: $0d
	ld   [bc], a                                     ; $7e7a: $02
	nop                                              ; $7e7b: $00
	rrca                                             ; $7e7c: $0f
	nop                                              ; $7e7d: $00
	ld   bc, $6701                                   ; $7e7e: $01 $01 $67
	adc  l                                           ; $7e81: $8d
	sbc  d                                           ; $7e82: $9a
	ld   h, e                                        ; $7e83: $63
	and  c                                           ; $7e84: $a1
	sbc  [hl]                                        ; $7e85: $9e
	xor  h                                           ; $7e86: $ac
	push af                                          ; $7e87: $f5
	bit  4, e                                        ; $7e88: $cb $63
	and  c                                           ; $7e8a: $a1
	ld   a, h                                        ; $7e8b: $7c
	dec  c                                           ; $7e8c: $0d
	jp   z, $d7f5                                    ; $7e8d: $ca $f5 $d7

	db   $ec                                         ; $7e90: $ec
	inc  b                                           ; $7e91: $04
	dec  hl                                          ; $7e92: $2b
	sbc  b                                           ; $7e93: $98
	adc  h                                           ; $7e94: $8c
	ld   l, c                                        ; $7e95: $69
	and  c                                           ; $7e96: $a1
	ld   e, c                                        ; $7e97: $59
	ld   sp, hl                                      ; $7e98: $f9
	dec  c                                           ; $7e99: $0d
	nop                                              ; $7e9a: $00
	ld   a, [bc]                                     ; $7e9b: $0a
	inc  e                                           ; $7e9c: $1c
	ld   [bc], a                                     ; $7e9d: $02
	dec  b                                           ; $7e9e: $05
	dec  b                                           ; $7e9f: $05
	dec  e                                           ; $7ea0: $1d
	ld   b, b                                        ; $7ea1: $40
	ld   [de], a                                     ; $7ea2: $12
	inc  bc                                          ; $7ea3: $03
	ld   [de], a                                     ; $7ea4: $12
	ld   bc, $2902                                   ; $7ea5: $01 $02 $29
	nop                                              ; $7ea8: $00
	ld   bc, $f5ca                                   ; $7ea9: $01 $ca $f5
	rst  $10                                         ; $7eac: $d7
	db   $ec                                         ; $7ead: $ec
	ld   sp, hl                                      ; $7eae: $f9
	dec  c                                           ; $7eaf: $0d
	xor  h                                           ; $7eb0: $ac
	push af                                          ; $7eb1: $f5
	bit  4, e                                        ; $7eb2: $cb $63
	and  c                                           ; $7eb4: $a1
	ld   a, h                                        ; $7eb5: $7c
	jp   z, $d7f5                                    ; $7eb6: $ca $f5 $d7

	db   $ec                                         ; $7eb9: $ec
	ld   a, b                                        ; $7eba: $78
	and  c                                           ; $7ebb: $a1
	ld   [hl], h                                     ; $7ebc: $74
	dec  c                                           ; $7ebd: $0d
	sbc  l                                           ; $7ebe: $9d
	ld   l, l                                        ; $7ebf: $6d
	ld   e, l                                        ; $7ec0: $5d
	ld   h, l                                        ; $7ec1: $65
	inc  b                                           ; $7ec2: $04
	dec  hl                                          ; $7ec3: $2b
	sbc  b                                           ; $7ec4: $98
	adc  h                                           ; $7ec5: $8c
	ld   l, c                                        ; $7ec6: $69
	and  c                                           ; $7ec7: $a1
	sbc  l                                           ; $7ec8: $9d
	sub  [hl]                                        ; $7ec9: $96
	sbc  a                                           ; $7eca: $9f
	dec  c                                           ; $7ecb: $0d
	nop                                              ; $7ecc: $00
	ld   a, [bc]                                     ; $7ecd: $0a
	dec  c                                           ; $7ece: $0d
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	rrca                                             ; $7ed1: $0f
	nop                                              ; $7ed2: $00
	ld   bc, $020c                                   ; $7ed3: $01 $0c $02
	ld   b, $a5                                      ; $7ed6: $06 $a5
	ld   [$060f], sp                                 ; $7ed8: $08 $0f $06
	dec  b                                           ; $7edb: $05
	ld   bc, $546b                                   ; $7edc: $01 $6b $54
	ld   e, c                                        ; $7edf: $59
	rst  $38                                         ; $7ee0: $ff
	rst  $38                                         ; $7ee1: $ff
	dec  c                                           ; $7ee2: $0d
	ld   h, a                                        ; $7ee3: $67
	adc  h                                           ; $7ee4: $8c
	ld   a, b                                        ; $7ee5: $78
	ld   e, c                                        ; $7ee6: $59
	ld   [hl], c                                     ; $7ee7: $71
	ld   l, l                                        ; $7ee8: $6d
	ld   a, b                                        ; $7ee9: $78
	sbc  [hl]                                        ; $7eea: $9e
	ld   h, a                                        ; $7eeb: $67
	adc  l                                           ; $7eec: $8d
	sbc  d                                           ; $7eed: $9a
	sbc  a                                           ; $7eee: $9f
	dec  c                                           ; $7eef: $0d
	nop                                              ; $7ef0: $00
	ld   a, [bc]                                     ; $7ef1: $0a
	dec  c                                           ; $7ef2: $0d
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	rrca                                             ; $7ef5: $0f
	nop                                              ; $7ef6: $00
	ld   bc, $4423                                   ; $7ef7: $01 $23 $44
	inc  e                                           ; $7efa: $1c
	ld   b, $05                                      ; $7efb: $06 $05
	dec  b                                           ; $7efd: $05
	ld   bc, $fc54                                   ; $7efe: $01 $54 $fc
	and  c                                           ; $7f01: $a1
	rst  $38                                         ; $7f02: $ff
	rst  $38                                         ; $7f03: $ff
	dec  c                                           ; $7f04: $0d
	nop                                              ; $7f05: $00
	ld   a, [bc]                                     ; $7f06: $0a
	ld   b, $a5                                      ; $7f07: $06 $a5
	ld   [$000f], sp                                 ; $7f09: $08 $0f $00
	ld   bc, $df01                                   ; $7f0c: $01 $01 $df
	db   $ec                                         ; $7f0f: $ec
	and  e                                           ; $7f10: $a3
	ld   h, e                                        ; $7f11: $63
	and  c                                           ; $7f12: $a1
	ld   a, h                                        ; $7f13: $7c
	halt                                             ; $7f14: $76
	ld   h, c                                        ; $7f15: $61
	sbc  e                                           ; $7f16: $9b
	ld   a, c                                        ; $7f17: $79
	dec  c                                           ; $7f18: $0d
	ld   [bc], a                                     ; $7f19: $02
	ld   a, a                                        ; $7f1a: $7f
	ld   e, e                                        ; $7f1b: $5b
	adc  h                                           ; $7f1c: $8c
	ld   h, l                                        ; $7f1d: $65
	sub  l                                           ; $7f1e: $95
	ld   d, h                                        ; $7f1f: $54
	sbc  a                                           ; $7f20: $9f
	dec  c                                           ; $7f21: $0d
	nop                                              ; $7f22: $00
	ld   a, [bc]                                     ; $7f23: $0a
	dec  c                                           ; $7f24: $0d
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	rrca                                             ; $7f27: $0f
	nop                                              ; $7f28: $00
	ld   bc, $5323                                   ; $7f29: $01 $23 $53
	dec  c                                           ; $7f2c: $0d
	inc  bc                                          ; $7f2d: $03
	nop                                              ; $7f2e: $00
	rrca                                             ; $7f2f: $0f
	nop                                              ; $7f30: $00
	ld   bc, $df01                                   ; $7f31: $01 $01 $df
	db   $ec                                         ; $7f34: $ec
	and  e                                           ; $7f35: $a3
	ld   h, e                                        ; $7f36: $63
	and  c                                           ; $7f37: $a1
	sbc  [hl]                                        ; $7f38: $9e
	xor  h                                           ; $7f39: $ac
	push af                                          ; $7f3a: $f5
	bit  4, e                                        ; $7f3b: $cb $63
	and  c                                           ; $7f3d: $a1
	ld   a, h                                        ; $7f3e: $7c
	dec  c                                           ; $7f3f: $0d
	jp   z, $d7f5                                    ; $7f40: $ca $f5 $d7

	db   $ec                                         ; $7f43: $ec
	inc  b                                           ; $7f44: $04
	dec  hl                                          ; $7f45: $2b
	sbc  b                                           ; $7f46: $98
	adc  h                                           ; $7f47: $8c
	ld   l, c                                        ; $7f48: $69
	and  c                                           ; $7f49: $a1
	ld   e, c                                        ; $7f4a: $59
	ld   sp, hl                                      ; $7f4b: $f9
	dec  c                                           ; $7f4c: $0d
	nop                                              ; $7f4d: $00
	ld   a, [bc]                                     ; $7f4e: $0a
	rrca                                             ; $7f4f: $0f
	inc  bc                                          ; $7f50: $03
	nop                                              ; $7f51: $00
	ld   bc, $5252                                   ; $7f52: $01 $52 $52
	ld   d, [hl]                                     ; $7f55: $56
	sbc  [hl]                                        ; $7f56: $9e
	inc  b                                           ; $7f57: $04
	dec  hl                                          ; $7f58: $2b
	sub  a                                           ; $7f59: $97
	ld   a, b                                        ; $7f5a: $78
	ld   d, d                                        ; $7f5b: $52
	sbc  l                                           ; $7f5c: $9d
	sub  [hl]                                        ; $7f5d: $96
	sbc  a                                           ; $7f5e: $9f
	dec  c                                           ; $7f5f: $0d
	nop                                              ; $7f60: $00
	ld   a, [bc]                                     ; $7f61: $0a
	dec  c                                           ; $7f62: $0d
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	rrca                                             ; $7f65: $0f
	nop                                              ; $7f66: $00
	ld   bc, $020c                                   ; $7f67: $01 $0c $02
	ld   b, $a5                                      ; $7f6a: $06 $a5
	ld   [$060f], sp                                 ; $7f6c: $08 $0f $06
	dec  b                                           ; $7f6f: $05
	ld   bc, $546b                                   ; $7f70: $01 $6b $54
	ld   e, c                                        ; $7f73: $59
	rst  $38                                         ; $7f74: $ff
	rst  $38                                         ; $7f75: $ff
	dec  c                                           ; $7f76: $0d
	ld   h, a                                        ; $7f77: $67
	adc  h                                           ; $7f78: $8c
	ld   a, b                                        ; $7f79: $78
	ld   e, c                                        ; $7f7a: $59
	ld   [hl], c                                     ; $7f7b: $71
	ld   l, l                                        ; $7f7c: $6d
	ld   a, b                                        ; $7f7d: $78
	sbc  [hl]                                        ; $7f7e: $9e
	rst  JumpTable                                         ; $7f7f: $df
	db   $ec                                         ; $7f80: $ec
	and  e                                           ; $7f81: $a3
	sbc  a                                           ; $7f82: $9f
	dec  c                                           ; $7f83: $0d
	nop                                              ; $7f84: $00
	ld   a, [bc]                                     ; $7f85: $0a
	dec  c                                           ; $7f86: $0d
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	rrca                                             ; $7f89: $0f
	nop                                              ; $7f8a: $00
	ld   bc, $4623                                   ; $7f8b: $01 $23 $46
	inc  e                                           ; $7f8e: $1c
	ld   b, $05                                      ; $7f8f: $06 $05
	dec  b                                           ; $7f91: $05
	ld   bc, $fc54                                   ; $7f92: $01 $54 $fc
	and  c                                           ; $7f95: $a1
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	dec  c                                           ; $7f98: $0d
	nop                                              ; $7f99: $00
	ld   a, [bc]                                     ; $7f9a: $0a
	ld   b, $a5                                      ; $7f9b: $06 $a5
	ld   [$000f], sp                                 ; $7f9d: $08 $0f $00
	ld   bc, $a301                                   ; $7fa0: $01 $01 $a3
	and  l                                           ; $7fa3: $a5
	db   $ec                                         ; $7fa4: $ec
	cp   d                                           ; $7fa5: $ba
	ld   a, h                                        ; $7fa6: $7c
	halt                                             ; $7fa7: $76
	ld   h, c                                        ; $7fa8: $61
	sbc  e                                           ; $7fa9: $9b
	ld   a, c                                        ; $7faa: $79
	dec  c                                           ; $7fab: $0d
	ld   [bc], a                                     ; $7fac: $02
	ld   a, a                                        ; $7fad: $7f
	ld   e, e                                        ; $7fae: $5b
	adc  h                                           ; $7faf: $8c
	ld   h, l                                        ; $7fb0: $65
	sub  l                                           ; $7fb1: $95
	ld   d, h                                        ; $7fb2: $54
	sbc  a                                           ; $7fb3: $9f
	dec  c                                           ; $7fb4: $0d
	nop                                              ; $7fb5: $00
	ld   a, [bc]                                     ; $7fb6: $0a
	dec  c                                           ; $7fb7: $0d
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	rrca                                             ; $7fba: $0f
	nop                                              ; $7fbb: $00
	ld   bc, $5723                                   ; $7fbc: $01 $23 $57
	dec  c                                           ; $7fbf: $0d
	inc  b                                           ; $7fc0: $04
	nop                                              ; $7fc1: $00
	rrca                                             ; $7fc2: $0f
	nop                                              ; $7fc3: $00
	ld   bc, $a301                                   ; $7fc4: $01 $01 $a3
	and  l                                           ; $7fc7: $a5
	db   $ec                                         ; $7fc8: $ec
	cp   d                                           ; $7fc9: $ba
	sbc  [hl]                                        ; $7fca: $9e
	xor  h                                           ; $7fcb: $ac
	push af                                          ; $7fcc: $f5
	bit  4, e                                        ; $7fcd: $cb $63
	and  c                                           ; $7fcf: $a1
	ld   a, h                                        ; $7fd0: $7c
	dec  c                                           ; $7fd1: $0d
	jp   z, $d7f5                                    ; $7fd2: $ca $f5 $d7

	db   $ec                                         ; $7fd5: $ec
	inc  b                                           ; $7fd6: $04
	dec  hl                                          ; $7fd7: $2b
	sub  a                                           ; $7fd8: $97
	ld   a, b                                        ; $7fd9: $78
	ld   d, d                                        ; $7fda: $52
	ld   sp, hl                                      ; $7fdb: $f9
	dec  c                                           ; $7fdc: $0d
	nop                                              ; $7fdd: $00
	ld   a, [bc]                                     ; $7fde: $0a
	inc  e                                           ; $7fdf: $1c
	inc  b                                           ; $7fe0: $04
	ld   bc, $0101                                   ; $7fe1: $01 $01 $01
	and  e                                           ; $7fe4: $a3
	and  l                                           ; $7fe5: $a5
	db   $ec                                         ; $7fe6: $ec
	cp   d                                           ; $7fe7: $ba
	inc  b                                           ; $7fe8: $04
	dec  hl                                          ; $7fe9: $2b
	ld   [hl], c                                     ; $7fea: $71
	ld   [hl], h                                     ; $7feb: $74
	sbc  c                                           ; $7fec: $99
	sub  [hl]                                        ; $7fed: $96
	sbc  a                                           ; $7fee: $9f
	dec  c                                           ; $7fef: $0d
	ld   e, b                                        ; $7ff0: $58
	adc  h                                           ; $7ff1: $8c
	adc  h                                           ; $7ff2: $8c
	ld   h, d                                        ; $7ff3: $62
	halt                                             ; $7ff4: $76
	ld   a, c                                        ; $7ff5: $79
	inc  bc                                          ; $7ff6: $03
	xor  [hl]                                        ; $7ff7: $ae
	ld   [hl], c                                     ; $7ff8: $71
	ld   [hl], h                                     ; $7ff9: $74
	ld   d, d                                        ; $7ffa: $52
	ld   l, l                                        ; $7ffb: $6d
	sub  a                                           ; $7ffc: $97
	dec  c                                           ; $7ffd: $0d
	ld   e, b                                        ; $7ffe: $58
	ld   h, [hl]                                     ; $7fff: $66
