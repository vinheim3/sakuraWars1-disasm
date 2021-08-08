; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05b", ROMX[$4000], BANK[$5b]

	ld   a, h                                        ; $4000: $7c
	dec  c                                           ; $4001: $0d
	ld   [hl], l                                     ; $4002: $75
	ld   h, a                                        ; $4003: $67
	ld   e, c                                        ; $4004: $59
	ld   sp, hl                                      ; $4005: $f9
	dec  c                                           ; $4006: $0d
	nop                                              ; $4007: $00
	ld   a, [bc]                                     ; $4008: $0a
	inc  e                                           ; $4009: $1c
	inc  bc                                          ; $400a: $03
	nop                                              ; $400b: $00
	nop                                              ; $400c: $00
	ld   bc, $3403                                   ; $400d: $01 $03 $34
	ld   a, h                                        ; $4010: $7c
	inc  bc                                          ; $4011: $03
	ld   l, e                                        ; $4012: $6b
	inc  b                                           ; $4013: $04
	ld   b, l                                        ; $4014: $45
	sbc  d                                           ; $4015: $9a
	sub  [hl]                                        ; $4016: $96
	rst  $38                                         ; $4017: $ff
	rst  $38                                         ; $4018: $ff
	dec  c                                           ; $4019: $0d
	dec  b                                           ; $401a: $05
	pop  de                                          ; $401b: $d1
	ld   d, d                                        ; $401c: $52
	inc  b                                           ; $401d: $04
	ld   b, l                                        ; $401e: $45
	sbc  d                                           ; $401f: $9a
	ld   a, h                                        ; $4020: $7c
	ld   d, b                                        ; $4021: $50
	sbc  c                                           ; $4022: $99
	inc  bc                                          ; $4023: $03
	inc  [hl]                                        ; $4024: $34
	ld   l, [hl]                                     ; $4025: $6e
	ld   e, c                                        ; $4026: $59
	sub  a                                           ; $4027: $97
	dec  c                                           ; $4028: $0d
	inc  b                                           ; $4029: $04
	ld   c, $03                                      ; $402a: $0e $03
	dec  de                                          ; $402c: $1b
	ld   a, c                                        ; $402d: $79
	ld   d, b                                        ; $402e: $50
	ld   [hl], d                                     ; $402f: $72
	ld   e, c                                        ; $4030: $59
	sbc  l                                           ; $4031: $9d
	ld   a, b                                        ; $4032: $78
	ld   d, d                                        ; $4033: $52
	halt                                             ; $4034: $76
	ld   a, e                                        ; $4035: $7b
	rst  $38                                         ; $4036: $ff
	rst  $38                                         ; $4037: $ff
	dec  c                                           ; $4038: $0d
	nop                                              ; $4039: $00
	ld   a, [bc]                                     ; $403a: $0a
	rrca                                             ; $403b: $0f
	nop                                              ; $403c: $00
	ld   bc, $0501                                   ; $403d: $01 $01 $05
	pop  de                                          ; $4040: $d1
	ld   d, d                                        ; $4041: $52
	inc  b                                           ; $4042: $04
	ld   b, l                                        ; $4043: $45
	sbc  d                                           ; $4044: $9a
	ld   sp, hl                                      ; $4045: $f9
	dec  c                                           ; $4046: $0d
	nop                                              ; $4047: $00
	ld   a, [bc]                                     ; $4048: $0a
	inc  e                                           ; $4049: $1c
	inc  bc                                          ; $404a: $03
	inc  b                                           ; $404b: $04
	inc  b                                           ; $404c: $04
	ld   bc, $e7cc                                   ; $404d: $01 $cc $e7
	ei                                               ; $4050: $fb
	ld   [$b0fb], a                                  ; $4051: $ea $fb $b0
	ld   a, c                                        ; $4054: $79
	ld   d, d                                        ; $4055: $52
	ld   l, l                                        ; $4056: $6d
	ld   h, c                                        ; $4057: $61
	sbc  e                                           ; $4058: $9b
	dec  c                                           ; $4059: $0d
	ld   [bc], a                                     ; $405a: $02
	dec  hl                                          ; $405b: $2b

jr_05b_405c:
	inc  b                                           ; $405c: $04
	di                                               ; $405d: $f3
	ld   h, l                                        ; $405e: $65
	ld   [hl], h                                     ; $405f: $74
	ld   d, d                                        ; $4060: $52
	ld   l, l                                        ; $4061: $6d
	inc  bc                                          ; $4062: $03
	inc  [hl]                                        ; $4063: $34
	ld   [hl], l                                     ; $4064: $75
	sbc  [hl]                                        ; $4065: $9e
	ld   d, b                                        ; $4066: $50
	adc  h                                           ; $4067: $8c
	sbc  b                                           ; $4068: $98
	dec  c                                           ; $4069: $0d
	ld   d, d                                        ; $406a: $52
	ld   d, d                                        ; $406b: $52
	dec  b                                           ; $406c: $05
	pop  de                                          ; $406d: $d1
	ld   d, d                                        ; $406e: $52
	inc  bc                                          ; $406f: $03
	add  b                                           ; $4070: $80
	ld   h, [hl]                                     ; $4071: $66
	sub  c                                           ; $4072: $91
	ld   a, b                                        ; $4073: $78
	ld   d, d                                        ; $4074: $52
	ld   e, a                                        ; $4075: $5f
	ld   [hl], a                                     ; $4076: $77
	rst  $38                                         ; $4077: $ff
	rst  $38                                         ; $4078: $ff
	dec  c                                           ; $4079: $0d
	nop                                              ; $407a: $00
	ld   a, [bc]                                     ; $407b: $0a
	ld   bc, $9075                                   ; $407c: $01 $75 $90
	sbc  [hl]                                        ; $407f: $9e
	ld   l, b                                        ; $4080: $68
	ld   [hl], c                                     ; $4081: $71
	halt                                             ; $4082: $76
	inc  b                                           ; $4083: $04
	cp   d                                           ; $4084: $ba
	inc  b                                           ; $4085: $04
	pop  de                                          ; $4086: $d1
	ld   a, l                                        ; $4087: $7d
	ld   a, b                                        ; $4088: $78
	ld   h, e                                        ; $4089: $63
	ld   l, b                                        ; $408a: $68
	dec  c                                           ; $408b: $0d
	inc  bc                                          ; $408c: $03
	and  b                                           ; $408d: $a0
	ld   [hl], c                                     ; $408e: $71
	ld   [hl], h                                     ; $408f: $74
	ld   d, d                                        ; $4090: $52
	ld   l, l                                        ; $4091: $6d
	sub  b                                           ; $4092: $90
	ld   a, h                                        ; $4093: $7c
	ld   l, [hl]                                     ; $4094: $6e
	ld   e, c                                        ; $4095: $59
	sub  a                                           ; $4096: $97
	dec  c                                           ; $4097: $0d
	inc  bc                                          ; $4098: $03
	sub  h                                           ; $4099: $94
	inc  bc                                          ; $409a: $03
	sbc  c                                           ; $409b: $99
	halt                                             ; $409c: $76
	ld   d, b                                        ; $409d: $50
	ld   d, d                                        ; $409e: $52
	ld   l, a                                        ; $409f: $6f
	sub  c                                           ; $40a0: $91
	ld   e, l                                        ; $40a1: $5d
	ld   e, d                                        ; $40a2: $5a
	sbc  l                                           ; $40a3: $9d
	ld   e, l                                        ; $40a4: $5d
	ld   a, h                                        ; $40a5: $7c
	sub  [hl]                                        ; $40a6: $96
	rst  $38                                         ; $40a7: $ff
	dec  c                                           ; $40a8: $0d
	nop                                              ; $40a9: $00
	ld   a, [bc]                                     ; $40aa: $0a
	inc  e                                           ; $40ab: $1c
	inc  bc                                          ; $40ac: $03
	inc  bc                                          ; $40ad: $03
	inc  bc                                          ; $40ae: $03
	ld   bc, $d6d6                                   ; $40af: $01 $d6 $d6
	rst  $38                                         ; $40b2: $ff
	rst  $38                                         ; $40b3: $ff
	ld   [hl], d                                     ; $40b4: $72
	adc  h                                           ; $40b5: $8c
	sub  a                                           ; $40b6: $97
	ld   a, b                                        ; $40b7: $78
	ld   d, d                                        ; $40b8: $52
	dec  b                                           ; $40b9: $05
	jr   nz, jr_05b_405c                             ; $40ba: $20 $a0

	dec  c                                           ; $40bc: $0d
	ld   h, l                                        ; $40bd: $65
	ld   [hl], h                                     ; $40be: $74
	ld   h, l                                        ; $40bf: $65
	adc  h                                           ; $40c0: $8c
	ld   [hl], c                                     ; $40c1: $71
	ld   l, l                                        ; $40c2: $6d
	sbc  l                                           ; $40c3: $9d
	ld   a, e                                        ; $40c4: $7b
	rst  $38                                         ; $40c5: $ff
	rst  $38                                         ; $40c6: $ff
	dec  c                                           ; $40c7: $0d
	nop                                              ; $40c8: $00
	ld   a, [bc]                                     ; $40c9: $0a
	inc  e                                           ; $40ca: $1c
	inc  bc                                          ; $40cb: $03
	inc  bc                                          ; $40cc: $03
	inc  bc                                          ; $40cd: $03
	ld   bc, $9b6b                                   ; $40ce: $01 $6b $9b
	ld   l, e                                        ; $40d1: $6b
	sbc  e                                           ; $40d2: $9b
	inc  bc                                          ; $40d3: $03
	ld   l, l                                        ; $40d4: $6d
	dec  b                                           ; $40d5: $05
	add  hl, de                                      ; $40d6: $19
	ld   a, h                                        ; $40d7: $7c
	inc  bc                                          ; $40d8: $03
	ld   l, a                                        ; $40d9: $6f
	ld   [bc], a                                     ; $40da: $02
	xor  c                                           ; $40db: $a9
	sub  [hl]                                        ; $40dc: $96
	sbc  a                                           ; $40dd: $9f
	dec  c                                           ; $40de: $0d
	ld   e, d                                        ; $40df: $5a
	and  c                                           ; $40e0: $a1
	ld   a, [hl]                                     ; $40e1: $7e
	ld   [hl], c                                     ; $40e2: $71
	ld   [hl], h                                     ; $40e3: $74
	ld   a, e                                        ; $40e4: $7b
	sbc  a                                           ; $40e5: $9f
	dec  c                                           ; $40e6: $0d
	nop                                              ; $40e7: $00
	ld   a, [bc]                                     ; $40e8: $0a
	dec  c                                           ; $40e9: $0d
	nop                                              ; $40ea: $00
	nop                                              ; $40eb: $00
	rrca                                             ; $40ec: $0f
	nop                                              ; $40ed: $00
	ld   bc, $1e09                                   ; $40ee: $01 $09 $1e
	nop                                              ; $40f1: $00
	nop                                              ; $40f2: $00
	ld   c, $56                                      ; $40f3: $0e $56
	rrca                                             ; $40f5: $0f
	nop                                              ; $40f6: $00
	ld   bc, $0102                                   ; $40f7: $01 $02 $01
	ld   d, b                                        ; $40fa: $50
	sbc  d                                           ; $40fb: $9a
	ld   sp, hl                                      ; $40fc: $f9
	dec  c                                           ; $40fd: $0d
	inc  b                                           ; $40fe: $04
	ld   c, c                                        ; $40ff: $49
	sub  d                                           ; $4100: $92
	ld   [hl], c                                     ; $4101: $71
	ld   [hl], h                                     ; $4102: $74
	sbc  c                                           ; $4103: $99
	ld   a, h                                        ; $4104: $7c
	ld   sp, hl                                      ; $4105: $f9
	dec  c                                           ; $4106: $0d
	nop                                              ; $4107: $00
	ld   a, [bc]                                     ; $4108: $0a
	inc  e                                           ; $4109: $1c
	inc  b                                           ; $410a: $04
	nop                                              ; $410b: $00
	nop                                              ; $410c: $00
	ld   bc, $9e50                                   ; $410d: $01 $50 $9e
	ld   l, a                                        ; $4110: $6f
	ld   d, d                                        ; $4111: $52
	ld   [bc], a                                     ; $4112: $02
	inc  de                                          ; $4113: $13
	ld   l, a                                        ; $4114: $6f
	sub  c                                           ; $4115: $91
	and  c                                           ; $4116: $a1
	sbc  a                                           ; $4117: $9f
	dec  c                                           ; $4118: $0d
	ld   e, b                                        ; $4119: $58
	ld   h, l                                        ; $411a: $65
	ld   a, [hl]                                     ; $411b: $7e
	ld   d, d                                        ; $411c: $52
	ld   a, h                                        ; $411d: $7c
	ld   e, b                                        ; $411e: $58
	ld   e, a                                        ; $411f: $5f
	ld   d, d                                        ; $4120: $52
	ld   h, c                                        ; $4121: $61
	ld   l, [hl]                                     ; $4122: $6e
	sub  [hl]                                        ; $4123: $96
	sbc  a                                           ; $4124: $9f
	dec  c                                           ; $4125: $0d
	nop                                              ; $4126: $00
	ld   a, [bc]                                     ; $4127: $0a
	inc  e                                           ; $4128: $1c
	inc  b                                           ; $4129: $04
	ld   bc, $0101                                   ; $412a: $01 $01 $01
	ld   d, b                                        ; $412d: $50
	sbc  [hl]                                        ; $412e: $9e
	ld   l, e                                        ; $412f: $6b
	ld   d, h                                        ; $4130: $54
	ld   l, [hl]                                     ; $4131: $6e
	ld   a, [$6f0d]                                  ; $4132: $fa $0d $6f
	ld   d, d                                        ; $4135: $52
	ld   [bc], a                                     ; $4136: $02
	inc  de                                          ; $4137: $13
	ld   l, a                                        ; $4138: $6f
	sub  c                                           ; $4139: $91
	and  c                                           ; $413a: $a1
	sub  b                                           ; $413b: $90
	sub  d                                           ; $413c: $92
	ld   [hl], c                                     ; $413d: $71
	ld   [hl], h                                     ; $413e: $74
	adc  l                                           ; $413f: $8d
	sbc  c                                           ; $4140: $99
	ld   sp, hl                                      ; $4141: $f9
	dec  c                                           ; $4142: $0d
	nop                                              ; $4143: $00
	ld   a, [bc]                                     ; $4144: $0a
	jr   jr_05b_4149                                 ; $4145: $18 $02

	nop                                              ; $4147: $00
	sub  d                                           ; $4148: $92

jr_05b_4149:
	sbc  c                                           ; $4149: $99
	nop                                              ; $414a: $00
	nop                                              ; $414b: $00
	sub  d                                           ; $414c: $92
	sub  a                                           ; $414d: $97
	ld   a, b                                        ; $414e: $78
	ld   d, d                                        ; $414f: $52
	nop                                              ; $4150: $00
	ld   bc, $a107                                   ; $4151: $01 $07 $a1
	nop                                              ; $4154: $00
	ld   [bc], a                                     ; $4155: $02
	ld   [bc], a                                     ; $4156: $02
	ld   bc, $2000                                   ; $4157: $01 $00 $20
	nop                                              ; $415a: $00
	rlca                                             ; $415b: $07
	ld   [hl], c                                     ; $415c: $71
	nop                                              ; $415d: $00
	ld   [bc], a                                     ; $415e: $02
	ld   [bc], a                                     ; $415f: $02
	ld   bc, $2001                                   ; $4160: $01 $01 $20
	nop                                              ; $4163: $00
	rrca                                             ; $4164: $0f
	nop                                              ; $4165: $00
	ld   bc, $0201                                   ; $4166: $01 $01 $02
	jr   z, jr_05b_41bd                              ; $4169: $28 $52

	ld   e, a                                        ; $416b: $5f
	ld   [hl], a                                     ; $416c: $77
	sbc  [hl]                                        ; $416d: $9e
	dec  c                                           ; $416e: $0d
	inc  b                                           ; $416f: $04
	di                                               ; $4170: $f3
	ld   [bc], a                                     ; $4171: $02
	jp   $767c                                       ; $4172: $c3 $7c $76


	ld   l, a                                        ; $4175: $6f
	sub  e                                           ; $4176: $93
	ld   d, h                                        ; $4177: $54
	ld   l, [hl]                                     ; $4178: $6e
	ld   e, c                                        ; $4179: $59
	sub  a                                           ; $417a: $97
	rst  $38                                         ; $417b: $ff
	rst  $38                                         ; $417c: $ff
	dec  c                                           ; $417d: $0d
	nop                                              ; $417e: $00
	ld   a, [bc]                                     ; $417f: $0a
	inc  e                                           ; $4180: $1c
	inc  b                                           ; $4181: $04
	inc  bc                                          ; $4182: $03
	inc  bc                                          ; $4183: $03
	ld   bc, $5384                                   ; $4184: $01 $84 $53
	rst  $38                                         ; $4187: $ff
	rst  $38                                         ; $4188: $ff
	ld   [hl], d                                     ; $4189: $72
	adc  h                                           ; $418a: $8c
	and  c                                           ; $418b: $a1
	ld   a, b                                        ; $418c: $78
	ld   d, d                                        ; $418d: $52
	ld   a, h                                        ; $418e: $7c
	sbc  a                                           ; $418f: $9f
	dec  c                                           ; $4190: $0d
	nop                                              ; $4191: $00
	ld   a, [bc]                                     ; $4192: $0a
	nop                                              ; $4193: $00
	rrca                                             ; $4194: $0f
	nop                                              ; $4195: $00
	ld   bc, $9201                                   ; $4196: $01 $01 $92
	ld   [hl], c                                     ; $4199: $71
	ld   [hl], h                                     ; $419a: $74
	adc  l                                           ; $419b: $8d
	sub  [hl]                                        ; $419c: $96
	ld   d, h                                        ; $419d: $54
	ld   e, c                                        ; $419e: $59
	ld   a, b                                        ; $419f: $78
	sbc  a                                           ; $41a0: $9f
	dec  c                                           ; $41a1: $0d
	nop                                              ; $41a2: $00
	ld   a, [bc]                                     ; $41a3: $0a
	inc  e                                           ; $41a4: $1c
	inc  b                                           ; $41a5: $04
	nop                                              ; $41a6: $00
	nop                                              ; $41a7: $00
	ld   bc, $9166                                   ; $41a8: $01 $66 $91
	sbc  [hl]                                        ; $41ab: $9e
	and  e                                           ; $41ac: $a3
	and  l                                           ; $41ad: $a5
	db   $ec                                         ; $41ae: $ec
	cp   d                                           ; $41af: $ba
	ld   a, h                                        ; $41b0: $7c
	dec  c                                           ; $41b1: $0d
	ld   e, b                                        ; $41b2: $58
	ld   [hl], h                                     ; $41b3: $74
	adc  c                                           ; $41b4: $89
	and  c                                           ; $41b5: $a1
	ld   [hl], a                                     ; $41b6: $77
	ld   e, b                                        ; $41b7: $58
	sbc  b                                           ; $41b8: $98
	ld   a, c                                        ; $41b9: $79
	sub  d                                           ; $41ba: $92
	ld   [hl], c                                     ; $41bb: $71
	ld   [hl], h                                     ; $41bc: $74

jr_05b_41bd:
	ld   a, e                                        ; $41bd: $7b
	sbc  a                                           ; $41be: $9f
	dec  c                                           ; $41bf: $0d
	nop                                              ; $41c0: $00
	ld   a, [bc]                                     ; $41c1: $0a
	inc  e                                           ; $41c2: $1c
	inc  b                                           ; $41c3: $04
	ld   bc, $0101                                   ; $41c4: $01 $01 $01
	ld   a, [bc]                                     ; $41c7: $0a
	ld   [bc], a                                     ; $41c8: $02
	adc  l                                           ; $41c9: $8d
	ld   e, h                                        ; $41ca: $5c
	ld   [hl], h                                     ; $41cb: $74
	ld   a, [bc]                                     ; $41cc: $0a
	inc  bc                                          ; $41cd: $03
	ld   d, b                                        ; $41ce: $50
	ld   h, b                                        ; $41cf: $60
	adc  h                                           ; $41d0: $8c
	ei                                               ; $41d1: $fb
	ld   h, a                                        ; $41d2: $67
	ld   a, [$000d]                                  ; $41d3: $fa $0d $00
	ld   a, [bc]                                     ; $41d6: $0a
	ld   bc, $020a                                   ; $41d7: $01 $0a $02
	add  b                                           ; $41da: $80
	ld   l, [hl]                                     ; $41db: $6e
	sbc  b                                           ; $41dc: $98
	ld   [hl], h                                     ; $41dd: $74
	ld   [hl], l                                     ; $41de: $75
	ld   a, [bc]                                     ; $41df: $0a
	inc  bc                                          ; $41e0: $03
	cp   d                                           ; $41e1: $ba
	xor  h                                           ; $41e2: $ac
	ei                                               ; $41e3: $fb
	ret                                              ; $41e4: $c9


	ld   a, h                                        ; $41e5: $7c
	ld   h, a                                        ; $41e6: $67
	ld   l, e                                        ; $41e7: $6b
	and  b                                           ; $41e8: $a0
	dec  c                                           ; $41e9: $0d
	ld   [hl], d                                     ; $41ea: $72
	adc  h                                           ; $41eb: $8c
	adc  l                                           ; $41ec: $8d
	adc  h                                           ; $41ed: $8c
	ei                                               ; $41ee: $fb
	ld   h, a                                        ; $41ef: $67
	ld   a, [$000d]                                  ; $41f0: $fa $0d $00
	ld   a, [bc]                                     ; $41f3: $0a
	ld   bc, $5263                                   ; $41f4: $01 $63 $52
	ld   h, d                                        ; $41f7: $62
	ld   a, c                                        ; $41f8: $79
	sbc  [hl]                                        ; $41f9: $9e
	ld   a, [bc]                                     ; $41fa: $0a
	ld   [bc], a                                     ; $41fb: $02
	ld   h, c                                        ; $41fc: $61
	ld   h, l                                        ; $41fd: $65
	halt                                             ; $41fe: $76
	add  b                                           ; $41ff: $80
	ld   h, h                                        ; $4200: $64
	and  b                                           ; $4201: $a0
	adc  h                                           ; $4202: $8c
	ld   h, b                                        ; $4203: $60
	ld   [hl], h                                     ; $4204: $74
	ld   a, [bc]                                     ; $4205: $0a
	inc  bc                                          ; $4206: $03
	dec  c                                           ; $4207: $0d
	db   $fd                                         ; $4208: $fd
	and  e                                           ; $4209: $a3
	and  l                                           ; $420a: $a5
	db   $ec                                         ; $420b: $ec
	cp   d                                           ; $420c: $ba
	ld   [hl], l                                     ; $420d: $75
	ei                                               ; $420e: $fb
	ld   h, a                                        ; $420f: $67
	cp   $6e                                         ; $4210: $fe $6e
	sub  [hl]                                        ; $4212: $96
	sbc  a                                           ; $4213: $9f
	dec  c                                           ; $4214: $0d
	nop                                              ; $4215: $00
	ld   a, [bc]                                     ; $4216: $0a
	inc  e                                           ; $4217: $1c
	inc  b                                           ; $4218: $04
	nop                                              ; $4219: $00
	nop                                              ; $421a: $00
	ld   bc, $9166                                   ; $421b: $01 $66 $91
	sbc  [hl]                                        ; $421e: $9e
	sub  d                                           ; $421f: $92
	ld   [hl], c                                     ; $4220: $71
	ld   [hl], h                                     ; $4221: $74
	adc  l                                           ; $4222: $8d
	ld   [hl], h                                     ; $4223: $74
	sbc  a                                           ; $4224: $9f
	dec  c                                           ; $4225: $0d
	nop                                              ; $4226: $00
	ld   a, [bc]                                     ; $4227: $0a
	rrca                                             ; $4228: $0f
	nop                                              ; $4229: $00
	ld   bc, $0101                                   ; $422a: $01 $01 $01
	inc  bc                                          ; $422d: $03
	adc  h                                           ; $422e: $8c
	ld   l, b                                        ; $422f: $68
	ld   a, l                                        ; $4230: $7d
	rst  $38                                         ; $4231: $ff
	rst  $38                                         ; $4232: $ff
	ld   bc, $0d04                                   ; $4233: $01 $04 $0d
	nop                                              ; $4236: $00
	ld   a, [bc]                                     ; $4237: $0a
	add  hl, de                                      ; $4238: $19
	dec  b                                           ; $4239: $05
	inc  bc                                          ; $423a: $03
	ld   [bc], a                                     ; $423b: $02
	inc  e                                           ; $423c: $1c
	inc  bc                                          ; $423d: $03
	ld   l, e                                        ; $423e: $6b
	and  b                                           ; $423f: $a0
	inc  bc                                          ; $4240: $03
	ld   h, l                                        ; $4241: $65
	ld   h, b                                        ; $4242: $60
	sbc  c                                           ; $4243: $99
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	inc  bc                                          ; $4246: $03
	ld   h, b                                        ; $4247: $60
	inc  bc                                          ; $4248: $03
	ld   l, e                                        ; $4249: $6b
	and  b                                           ; $424a: $a0
	inc  bc                                          ; $424b: $03
	ld   h, l                                        ; $424c: $65
	ld   h, b                                        ; $424d: $60
	sbc  c                                           ; $424e: $99
	nop                                              ; $424f: $00
	ld   bc, $3a06                                   ; $4250: $01 $06 $3a
	inc  bc                                          ; $4253: $03
	ld   l, e                                        ; $4254: $6b
	and  b                                           ; $4255: $a0
	inc  bc                                          ; $4256: $03
	ld   h, l                                        ; $4257: $65
	ld   h, b                                        ; $4258: $60
	sbc  c                                           ; $4259: $99
	nop                                              ; $425a: $00
	ld   [bc], a                                     ; $425b: $02
	rlca                                             ; $425c: $07
	ld   b, $02                                      ; $425d: $06 $02
	ld   [bc], a                                     ; $425f: $02
	inc  bc                                          ; $4260: $03
	ld   bc, $2000                                   ; $4261: $01 $00 $20
	nop                                              ; $4264: $00
	rlca                                             ; $4265: $07
	or   d                                           ; $4266: $b2
	ld   bc, $0302                                   ; $4267: $01 $02 $03
	ld   bc, $2001                                   ; $426a: $01 $01 $20
	nop                                              ; $426d: $00
	rlca                                             ; $426e: $07
	call c, $0201                                    ; $426f: $dc $01 $02
	inc  bc                                          ; $4272: $03
	ld   bc, $2002                                   ; $4273: $01 $02 $20
	nop                                              ; $4276: $00
	ld   b, $87                                      ; $4277: $06 $87
	ld   bc, $041c                                   ; $4279: $01 $1c $04
	inc  bc                                          ; $427c: $03
	inc  bc                                          ; $427d: $03
	dec  e                                           ; $427e: $1d
	ld   b, b                                        ; $427f: $40
	inc  d                                           ; $4280: $14
	inc  bc                                          ; $4281: $03
	inc  d                                           ; $4282: $14
	ld   bc, $2902                                   ; $4283: $01 $02 $29
	nop                                              ; $4286: $00
	ld   bc, $7192                                   ; $4287: $01 $92 $71
	ld   a, a                                        ; $428a: $7f
	sbc  [hl]                                        ; $428b: $9e
	ld   l, a                                        ; $428c: $6f
	ld   d, d                                        ; $428d: $52
	ld   [bc], a                                     ; $428e: $02
	inc  de                                          ; $428f: $13
	ld   l, a                                        ; $4290: $6f
	sub  c                                           ; $4291: $91
	and  c                                           ; $4292: $a1
	ld   a, c                                        ; $4293: $79
	ld   a, l                                        ; $4294: $7d
	dec  c                                           ; $4295: $0d
	adc  h                                           ; $4296: $8c
	ld   l, [hl]                                     ; $4297: $6e
	ldh  [c], a                                      ; $4298: $e2
	db   $ec                                         ; $4299: $ec
	ld   a, b                                        ; $429a: $78
	ld   a, h                                        ; $429b: $7c
	ld   e, c                                        ; $429c: $59
	ld   a, b                                        ; $429d: $78
	ld   c, a                                        ; $429e: $4f
	rst  $38                                         ; $429f: $ff
	rst  $38                                         ; $42a0: $ff
	dec  c                                           ; $42a1: $0d
	nop                                              ; $42a2: $00
	ld   a, [bc]                                     ; $42a3: $0a
	nop                                              ; $42a4: $00
	rrca                                             ; $42a5: $0f
	nop                                              ; $42a6: $00
	ld   bc, $0101                                   ; $42a7: $01 $01 $01
	inc  bc                                          ; $42aa: $03
	inc  bc                                          ; $42ab: $03
	ld   h, b                                        ; $42ac: $60
	inc  bc                                          ; $42ad: $03
	ld   l, e                                        ; $42ae: $6b
	and  b                                           ; $42af: $a0
	inc  bc                                          ; $42b0: $03
	ld   h, l                                        ; $42b1: $65
	ld   h, b                                        ; $42b2: $60
	sbc  c                                           ; $42b3: $99
	rst  $38                                         ; $42b4: $ff
	rst  $38                                         ; $42b5: $ff
	dec  c                                           ; $42b6: $0d
	db   $10                                         ; $42b7: $10
	ld   l, [hl]                                     ; $42b8: $6e
	ld   [hl], c                                     ; $42b9: $71
	ld   l, l                                        ; $42ba: $6d
	ld   e, c                                        ; $42bb: $59
	ld   a, b                                        ; $42bc: $78
	ld   sp, hl                                      ; $42bd: $f9
	dec  c                                           ; $42be: $0d
	db   $10                                         ; $42bf: $10
	ld   [hl], l                                     ; $42c0: $75
	sbc  [hl]                                        ; $42c1: $9e
	inc  bc                                          ; $42c2: $03
	ld   l, b                                        ; $42c3: $68
	ld   a, l                                        ; $42c4: $7d
	rst  $38                                         ; $42c5: $ff
	rst  $38                                         ; $42c6: $ff
	ld   bc, $0d04                                   ; $42c7: $01 $04 $0d
	nop                                              ; $42ca: $00
	ld   a, [bc]                                     ; $42cb: $0a
	ld   b, $30                                      ; $42cc: $06 $30
	ld   [bc], a                                     ; $42ce: $02
	rrca                                             ; $42cf: $0f
	nop                                              ; $42d0: $00
	ld   bc, $0101                                   ; $42d1: $01 $01 $01
	inc  bc                                          ; $42d4: $03
	ld   b, $3a                                      ; $42d5: $06 $3a
	inc  bc                                          ; $42d7: $03
	ld   l, e                                        ; $42d8: $6b
	and  b                                           ; $42d9: $a0
	inc  bc                                          ; $42da: $03
	ld   h, l                                        ; $42db: $65
	ld   h, b                                        ; $42dc: $60
	sbc  c                                           ; $42dd: $99
	rst  $38                                         ; $42de: $ff
	rst  $38                                         ; $42df: $ff
	dec  c                                           ; $42e0: $0d
	db   $10                                         ; $42e1: $10
	ld   l, [hl]                                     ; $42e2: $6e
	ld   [hl], c                                     ; $42e3: $71
	ld   l, l                                        ; $42e4: $6d
	ld   e, c                                        ; $42e5: $59
	ld   a, b                                        ; $42e6: $78
	ld   sp, hl                                      ; $42e7: $f9
	dec  c                                           ; $42e8: $0d
	db   $10                                         ; $42e9: $10
	ld   [hl], l                                     ; $42ea: $75
	sbc  [hl]                                        ; $42eb: $9e
	inc  bc                                          ; $42ec: $03
	ld   l, b                                        ; $42ed: $68
	ld   a, l                                        ; $42ee: $7d
	rst  $38                                         ; $42ef: $ff
	rst  $38                                         ; $42f0: $ff
	ld   bc, $0d04                                   ; $42f1: $01 $04 $0d
	nop                                              ; $42f4: $00
	ld   a, [bc]                                     ; $42f5: $0a
	ld   b, $30                                      ; $42f6: $06 $30
	ld   [bc], a                                     ; $42f8: $02
	rrca                                             ; $42f9: $0f
	nop                                              ; $42fa: $00
	ld   bc, $0101                                   ; $42fb: $01 $01 $01
	inc  bc                                          ; $42fe: $03
	ld   [bc], a                                     ; $42ff: $02
	inc  e                                           ; $4300: $1c
	inc  bc                                          ; $4301: $03
	ld   l, e                                        ; $4302: $6b
	and  b                                           ; $4303: $a0
	inc  bc                                          ; $4304: $03
	ld   h, l                                        ; $4305: $65
	ld   h, b                                        ; $4306: $60
	sbc  c                                           ; $4307: $99
	rst  $38                                         ; $4308: $ff
	rst  $38                                         ; $4309: $ff
	dec  c                                           ; $430a: $0d
	nop                                              ; $430b: $00
	dec  b                                           ; $430c: $05
	ld   b, b                                        ; $430d: $40
	rst  $38                                         ; $430e: $ff
	inc  bc                                          ; $430f: $03
	rst  $38                                         ; $4310: $ff
	ld   bc, $2801                                   ; $4311: $01 $01 $28
	nop                                              ; $4314: $00
	ld   bc, $7510                                   ; $4315: $01 $10 $75
	sbc  [hl]                                        ; $4318: $9e
	inc  bc                                          ; $4319: $03
	ld   l, b                                        ; $431a: $68
	ld   a, l                                        ; $431b: $7d
	rst  $38                                         ; $431c: $ff
	rst  $38                                         ; $431d: $ff
	ld   bc, $0d04                                   ; $431e: $01 $04 $0d
	nop                                              ; $4321: $00
	ld   a, [bc]                                     ; $4322: $0a
	add  hl, de                                      ; $4323: $19
	dec  b                                           ; $4324: $05
	inc  bc                                          ; $4325: $03
	inc  bc                                          ; $4326: $03
	ld   h, b                                        ; $4327: $60
	inc  bc                                          ; $4328: $03
	ld   l, e                                        ; $4329: $6b
	ld   [hl], l                                     ; $432a: $75
	cp   d                                           ; $432b: $ba
	xor  h                                           ; $432c: $ac
	ei                                               ; $432d: $fb
	ret                                              ; $432e: $c9


	and  b                                           ; $432f: $a0
	ld   [hl], d                                     ; $4330: $72
	adc  h                                           ; $4331: $8c
	adc  [hl]                                        ; $4332: $8e
	nop                                              ; $4333: $00
	nop                                              ; $4334: $00
	ld   [bc], a                                     ; $4335: $02
	inc  e                                           ; $4336: $1c
	inc  bc                                          ; $4337: $03
	ld   l, e                                        ; $4338: $6b
	ld   [hl], l                                     ; $4339: $75
	cp   d                                           ; $433a: $ba
	xor  h                                           ; $433b: $ac
	ei                                               ; $433c: $fb
	ret                                              ; $433d: $c9


	and  b                                           ; $433e: $a0
	ld   [hl], d                                     ; $433f: $72
	adc  h                                           ; $4340: $8c
	adc  [hl]                                        ; $4341: $8e
	nop                                              ; $4342: $00
	ld   bc, $3a06                                   ; $4343: $01 $06 $3a
	inc  bc                                          ; $4346: $03
	ld   l, e                                        ; $4347: $6b
	ld   [hl], l                                     ; $4348: $75
	cp   d                                           ; $4349: $ba
	xor  h                                           ; $434a: $ac
	ei                                               ; $434b: $fb
	ret                                              ; $434c: $c9


	and  b                                           ; $434d: $a0
	ld   [hl], d                                     ; $434e: $72
	adc  h                                           ; $434f: $8c
	adc  [hl]                                        ; $4350: $8e
	nop                                              ; $4351: $00
	ld   [bc], a                                     ; $4352: $02
	rlca                                             ; $4353: $07
	call nc, $0202                                   ; $4354: $d4 $02 $02
	inc  bc                                          ; $4357: $03
	ld   bc, $2000                                   ; $4358: $01 $00 $20
	nop                                              ; $435b: $00
	rlca                                             ; $435c: $07
	ld   a, [hl]                                     ; $435d: $7e
	ld   [bc], a                                     ; $435e: $02
	ld   [bc], a                                     ; $435f: $02
	inc  bc                                          ; $4360: $03
	ld   bc, $2001                                   ; $4361: $01 $01 $20
	nop                                              ; $4364: $00
	rlca                                             ; $4365: $07
	xor  c                                           ; $4366: $a9
	ld   [bc], a                                     ; $4367: $02
	ld   [bc], a                                     ; $4368: $02
	inc  bc                                          ; $4369: $03
	ld   bc, $2002                                   ; $436a: $01 $02 $20
	nop                                              ; $436d: $00
	ld   b, $87                                      ; $436e: $06 $87
	ld   bc, $000f                                   ; $4370: $01 $0f $00
	ld   bc, $0101                                   ; $4373: $01 $01 $01
	inc  bc                                          ; $4376: $03
	ld   [bc], a                                     ; $4377: $02
	inc  e                                           ; $4378: $1c
	inc  bc                                          ; $4379: $03
	ld   l, e                                        ; $437a: $6b
	ld   [hl], l                                     ; $437b: $75
	cp   d                                           ; $437c: $ba
	xor  h                                           ; $437d: $ac
	ei                                               ; $437e: $fb
	ret                                              ; $437f: $c9


	and  b                                           ; $4380: $a0
	ld   [hl], d                                     ; $4381: $72
	adc  h                                           ; $4382: $8c
	adc  [hl]                                        ; $4383: $8e
	rst  $38                                         ; $4384: $ff
	dec  c                                           ; $4385: $0d
	db   $10                                         ; $4386: $10
	ld   l, [hl]                                     ; $4387: $6e
	ld   [hl], c                                     ; $4388: $71
	ld   e, a                                        ; $4389: $5f
	ld   sp, hl                                      ; $438a: $f9
	dec  c                                           ; $438b: $0d
	db   $10                                         ; $438c: $10
	inc  bc                                          ; $438d: $03
	ld   l, c                                        ; $438e: $69
	ld   [bc], a                                     ; $438f: $02
	xor  d                                           ; $4390: $aa
	ld   a, l                                        ; $4391: $7d
	rst  $38                                         ; $4392: $ff
	rst  $38                                         ; $4393: $ff
	ld   bc, $0d04                                   ; $4394: $01 $04 $0d
	nop                                              ; $4397: $00
	ld   a, [bc]                                     ; $4398: $0a
	ld   b, $01                                      ; $4399: $06 $01
	inc  bc                                          ; $439b: $03
	rrca                                             ; $439c: $0f
	nop                                              ; $439d: $00
	ld   bc, $0101                                   ; $439e: $01 $01 $01
	inc  bc                                          ; $43a1: $03
	ld   b, $3a                                      ; $43a2: $06 $3a
	inc  bc                                          ; $43a4: $03
	ld   l, e                                        ; $43a5: $6b
	ld   [hl], l                                     ; $43a6: $75
	cp   d                                           ; $43a7: $ba
	xor  h                                           ; $43a8: $ac
	ei                                               ; $43a9: $fb
	ret                                              ; $43aa: $c9


	and  b                                           ; $43ab: $a0
	ld   [hl], d                                     ; $43ac: $72
	adc  h                                           ; $43ad: $8c
	adc  [hl]                                        ; $43ae: $8e
	rst  $38                                         ; $43af: $ff
	dec  c                                           ; $43b0: $0d
	db   $10                                         ; $43b1: $10
	ld   l, [hl]                                     ; $43b2: $6e
	ld   [hl], c                                     ; $43b3: $71
	ld   e, a                                        ; $43b4: $5f
	ld   sp, hl                                      ; $43b5: $f9
	dec  c                                           ; $43b6: $0d
	db   $10                                         ; $43b7: $10
	inc  bc                                          ; $43b8: $03
	ld   l, c                                        ; $43b9: $69
	ld   [bc], a                                     ; $43ba: $02
	xor  d                                           ; $43bb: $aa
	ld   a, l                                        ; $43bc: $7d
	rst  $38                                         ; $43bd: $ff
	rst  $38                                         ; $43be: $ff
	ld   bc, $0d04                                   ; $43bf: $01 $04 $0d
	nop                                              ; $43c2: $00
	ld   a, [bc]                                     ; $43c3: $0a
	ld   b, $01                                      ; $43c4: $06 $01
	inc  bc                                          ; $43c6: $03
	rrca                                             ; $43c7: $0f
	nop                                              ; $43c8: $00
	ld   bc, $0101                                   ; $43c9: $01 $01 $01
	inc  bc                                          ; $43cc: $03
	inc  bc                                          ; $43cd: $03
	ld   h, b                                        ; $43ce: $60
	inc  bc                                          ; $43cf: $03
	ld   l, e                                        ; $43d0: $6b
	ld   [hl], l                                     ; $43d1: $75
	cp   d                                           ; $43d2: $ba
	xor  h                                           ; $43d3: $ac
	ei                                               ; $43d4: $fb
	ret                                              ; $43d5: $c9


	and  b                                           ; $43d6: $a0
	ld   [hl], d                                     ; $43d7: $72
	adc  h                                           ; $43d8: $8c
	adc  [hl]                                        ; $43d9: $8e
	rst  $38                                         ; $43da: $ff
	dec  c                                           ; $43db: $0d
	nop                                              ; $43dc: $00
	dec  b                                           ; $43dd: $05
	ld   b, b                                        ; $43de: $40
	rst  $38                                         ; $43df: $ff
	inc  bc                                          ; $43e0: $03
	rst  $38                                         ; $43e1: $ff
	ld   bc, $2801                                   ; $43e2: $01 $01 $28
	nop                                              ; $43e5: $00
	ld   bc, $0310                                   ; $43e6: $01 $10 $03
	ld   l, c                                        ; $43e9: $69
	ld   [bc], a                                     ; $43ea: $02
	xor  d                                           ; $43eb: $aa
	ld   a, l                                        ; $43ec: $7d
	rst  $38                                         ; $43ed: $ff
	rst  $38                                         ; $43ee: $ff
	ld   bc, $0d04                                   ; $43ef: $01 $04 $0d
	nop                                              ; $43f2: $00
	ld   a, [bc]                                     ; $43f3: $0a
	add  hl, de                                      ; $43f4: $19
	dec  b                                           ; $43f5: $05
	inc  bc                                          ; $43f6: $03
	ld   h, c                                        ; $43f7: $61
	ld   h, l                                        ; $43f8: $65
	halt                                             ; $43f9: $76
	db   $d3                                         ; $43fa: $d3
	or   a                                           ; $43fb: $b7
	and  b                                           ; $43fc: $a0
	adc  h                                           ; $43fd: $8c
	ld   h, b                                        ; $43fe: $60
	sbc  c                                           ; $43ff: $99
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	ld   h, c                                        ; $4402: $61
	ld   h, l                                        ; $4403: $65
	halt                                             ; $4404: $76
	db   $d3                                         ; $4405: $d3
	cp   c                                           ; $4406: $b9
	and  b                                           ; $4407: $a0
	adc  h                                           ; $4408: $8c
	ld   h, b                                        ; $4409: $60
	sbc  c                                           ; $440a: $99
	nop                                              ; $440b: $00
	ld   bc, $815d                                   ; $440c: $01 $5d $81
	halt                                             ; $440f: $76
	db   $d3                                         ; $4410: $d3
	or   a                                           ; $4411: $b7
	and  b                                           ; $4412: $a0
	adc  h                                           ; $4413: $8c
	ld   h, b                                        ; $4414: $60
	sbc  c                                           ; $4415: $99
	nop                                              ; $4416: $00
	ld   [bc], a                                     ; $4417: $02
	rlca                                             ; $4418: $07
	and  l                                           ; $4419: $a5
	inc  bc                                          ; $441a: $03
	ld   [bc], a                                     ; $441b: $02
	inc  bc                                          ; $441c: $03
	ld   bc, $2000                                   ; $441d: $01 $00 $20
	nop                                              ; $4420: $00
	rlca                                             ; $4421: $07
	ld   b, e                                        ; $4422: $43
	inc  bc                                          ; $4423: $03
	ld   [bc], a                                     ; $4424: $02
	inc  bc                                          ; $4425: $03
	ld   bc, $2001                                   ; $4426: $01 $01 $20
	nop                                              ; $4429: $00
	rlca                                             ; $442a: $07
	ld   [hl], h                                     ; $442b: $74
	inc  bc                                          ; $442c: $03
	ld   [bc], a                                     ; $442d: $02
	inc  bc                                          ; $442e: $03
	ld   bc, $2002                                   ; $442f: $01 $02 $20
	nop                                              ; $4432: $00
	ld   b, $87                                      ; $4433: $06 $87
	ld   bc, $000f                                   ; $4435: $01 $0f $00
	ld   bc, $0101                                   ; $4438: $01 $01 $01
	inc  bc                                          ; $443b: $03
	ld   h, c                                        ; $443c: $61
	ld   h, l                                        ; $443d: $65
	halt                                             ; $443e: $76
	db   $d3                                         ; $443f: $d3
	cp   c                                           ; $4440: $b9
	and  b                                           ; $4441: $a0
	adc  h                                           ; $4442: $8c
	ld   h, b                                        ; $4443: $60
	sbc  c                                           ; $4444: $99
	rst  $38                                         ; $4445: $ff
	dec  c                                           ; $4446: $0d
	db   $10                                         ; $4447: $10
	ld   h, c                                        ; $4448: $61
	sbc  d                                           ; $4449: $9a
	ld   [hl], l                                     ; $444a: $75
	ld   [hl], a                                     ; $444b: $77
	ld   d, h                                        ; $444c: $54
	ld   e, c                                        ; $444d: $59
	ld   a, b                                        ; $444e: $78
	ld   sp, hl                                      ; $444f: $f9
	ld   bc, $0d04                                   ; $4450: $01 $04 $0d
	nop                                              ; $4453: $00
	ld   a, [bc]                                     ; $4454: $0a
	rlca                                             ; $4455: $07
	dec  d                                           ; $4456: $15
	inc  b                                           ; $4457: $04
	inc  bc                                          ; $4458: $03
	rst  $38                                         ; $4459: $ff
	ld   bc, $2002                                   ; $445a: $01 $02 $20
	nop                                              ; $445d: $00
	rlca                                             ; $445e: $07
	add  a                                           ; $445f: $87
	ld   bc, $ff03                                   ; $4460: $01 $03 $ff
	ld   bc, $2301                                   ; $4463: $01 $01 $23
	nop                                              ; $4466: $00
	rrca                                             ; $4467: $0f
	nop                                              ; $4468: $00
	ld   bc, $0101                                   ; $4469: $01 $01 $01
	inc  bc                                          ; $446c: $03
	ld   e, l                                        ; $446d: $5d
	add  c                                           ; $446e: $81
	halt                                             ; $446f: $76
	db   $d3                                         ; $4470: $d3
	or   a                                           ; $4471: $b7
	and  b                                           ; $4472: $a0
	adc  h                                           ; $4473: $8c
	ld   h, b                                        ; $4474: $60
	sbc  c                                           ; $4475: $99
	rst  $38                                         ; $4476: $ff
	dec  c                                           ; $4477: $0d
	db   $10                                         ; $4478: $10
	ld   h, c                                        ; $4479: $61
	sbc  d                                           ; $447a: $9a
	ld   [hl], l                                     ; $447b: $75
	ld   [hl], a                                     ; $447c: $77
	ld   d, h                                        ; $447d: $54
	ld   e, c                                        ; $447e: $59
	ld   a, b                                        ; $447f: $78
	ld   sp, hl                                      ; $4480: $f9
	ld   bc, $0d04                                   ; $4481: $01 $04 $0d
	nop                                              ; $4484: $00
	ld   a, [bc]                                     ; $4485: $0a
	rlca                                             ; $4486: $07
	dec  d                                           ; $4487: $15
	inc  b                                           ; $4488: $04
	inc  bc                                          ; $4489: $03
	rst  $38                                         ; $448a: $ff
	ld   bc, $2002                                   ; $448b: $01 $02 $20
	nop                                              ; $448e: $00
	rlca                                             ; $448f: $07
	add  a                                           ; $4490: $87
	ld   bc, $ff03                                   ; $4491: $01 $03 $ff
	ld   bc, $2301                                   ; $4494: $01 $01 $23
	nop                                              ; $4497: $00
	rrca                                             ; $4498: $0f
	nop                                              ; $4499: $00
	ld   bc, $0101                                   ; $449a: $01 $01 $01
	inc  bc                                          ; $449d: $03
	ld   h, c                                        ; $449e: $61
	ld   h, l                                        ; $449f: $65
	halt                                             ; $44a0: $76
	db   $d3                                         ; $44a1: $d3
	or   a                                           ; $44a2: $b7
	and  b                                           ; $44a3: $a0
	adc  h                                           ; $44a4: $8c
	ld   h, b                                        ; $44a5: $60
	sbc  c                                           ; $44a6: $99
	rst  $38                                         ; $44a7: $ff
	dec  c                                           ; $44a8: $0d
	nop                                              ; $44a9: $00
	dec  b                                           ; $44aa: $05
	ld   b, b                                        ; $44ab: $40
	rst  $38                                         ; $44ac: $ff
	inc  bc                                          ; $44ad: $03
	rst  $38                                         ; $44ae: $ff
	ld   bc, $2801                                   ; $44af: $01 $01 $28
	nop                                              ; $44b2: $00
	ld   bc, $6110                                   ; $44b3: $01 $10 $61
	sbc  d                                           ; $44b6: $9a
	ld   [hl], l                                     ; $44b7: $75
	ld   [hl], a                                     ; $44b8: $77
	ld   d, h                                        ; $44b9: $54
	ld   l, [hl]                                     ; $44ba: $6e
	ld   sp, hl                                      ; $44bb: $f9
	ld   bc, $0d04                                   ; $44bc: $01 $04 $0d
	nop                                              ; $44bf: $00
	ld   a, [bc]                                     ; $44c0: $0a
	rlca                                             ; $44c1: $07
	dec  d                                           ; $44c2: $15
	inc  b                                           ; $44c3: $04
	inc  bc                                          ; $44c4: $03
	rst  $38                                         ; $44c5: $ff
	ld   bc, $2002                                   ; $44c6: $01 $02 $20
	nop                                              ; $44c9: $00
	rlca                                             ; $44ca: $07
	add  a                                           ; $44cb: $87
	ld   bc, $ff03                                   ; $44cc: $01 $03 $ff
	ld   bc, $2301                                   ; $44cf: $01 $01 $23
	nop                                              ; $44d2: $00
	inc  e                                           ; $44d3: $1c
	inc  b                                           ; $44d4: $04
	ld   bc, $1d01                                   ; $44d5: $01 $01 $1d
	ld   b, b                                        ; $44d8: $40
	inc  d                                           ; $44d9: $14
	inc  bc                                          ; $44da: $03
	inc  d                                           ; $44db: $14
	ld   bc, $2803                                   ; $44dc: $01 $03 $28
	nop                                              ; $44df: $00
	ld   bc, $526f                                   ; $44e0: $01 $6f $52
	ld   [bc], a                                     ; $44e3: $02
	inc  de                                          ; $44e4: $13
	ld   l, a                                        ; $44e5: $6f
	sub  c                                           ; $44e6: $91
	and  c                                           ; $44e7: $a1
	sbc  [hl]                                        ; $44e8: $9e
	ld   d, [hl]                                     ; $44e9: $56
	sub  a                                           ; $44ea: $97
	ld   d, d                                        ; $44eb: $52
	ld   a, [$610d]                                  ; $44ec: $fa $0d $61
	sbc  d                                           ; $44ef: $9a
	ld   [hl], l                                     ; $44f0: $75
	sbc  [hl]                                        ; $44f1: $9e
	and  e                                           ; $44f2: $a3
	and  l                                           ; $44f3: $a5
	db   $ec                                         ; $44f4: $ec
	cp   d                                           ; $44f5: $ba
	ld   a, h                                        ; $44f6: $7c
	ld   d, b                                        ; $44f7: $50
	ld   d, d                                        ; $44f8: $52
	ld   h, e                                        ; $44f9: $63
	ld   [hl], d                                     ; $44fa: $72
	ld   a, l                                        ; $44fb: $7d
	dec  c                                           ; $44fc: $0d
	ld   e, c                                        ; $44fd: $59
	and  c                                           ; $44fe: $a1
	adc  b                                           ; $44ff: $88
	ld   e, e                                        ; $4500: $5b
	ld   l, [hl]                                     ; $4501: $6e
	ld   a, e                                        ; $4502: $7b
	ld   a, [$000d]                                  ; $4503: $fa $0d $00
	ld   a, [bc]                                     ; $4506: $0a
	nop                                              ; $4507: $00
	inc  e                                           ; $4508: $1c
	inc  b                                           ; $4509: $04
	ld   bc, $1d01                                   ; $450a: $01 $01 $1d
	ld   b, b                                        ; $450d: $40
	inc  d                                           ; $450e: $14
	inc  bc                                          ; $450f: $03
	inc  d                                           ; $4510: $14
	ld   bc, $2801                                   ; $4511: $01 $01 $28
	nop                                              ; $4514: $00
	ld   bc, $956f                                   ; $4515: $01 $6f $95
	ld   [hl], c                                     ; $4518: $71
	halt                                             ; $4519: $76
	ld   l, a                                        ; $451a: $6f
	ld   e, d                                        ; $451b: $5a
	ld   d, h                                        ; $451c: $54
	ld   e, a                                        ; $451d: $5f
	ld   [hl], a                                     ; $451e: $77
	sbc  [hl]                                        ; $451f: $9e
	dec  c                                           ; $4520: $0d
	adc  h                                           ; $4521: $8c
	ld   d, b                                        ; $4522: $50
	sbc  [hl]                                        ; $4523: $9e
	sub  [hl]                                        ; $4524: $96
	ld   e, l                                        ; $4525: $5d
	ld   [hl], l                                     ; $4526: $75
	ld   e, e                                        ; $4527: $5b
	adc  h                                           ; $4528: $8c
	ld   h, l                                        ; $4529: $65
	ld   l, l                                        ; $452a: $6d
	sbc  a                                           ; $452b: $9f
	dec  c                                           ; $452c: $0d
	nop                                              ; $452d: $00
	ld   a, [bc]                                     ; $452e: $0a
	nop                                              ; $452f: $00
	nop                                              ; $4530: $00
	ld   c, $54                                      ; $4531: $0e $54
	inc  e                                           ; $4533: $1c
	dec  b                                           ; $4534: $05
	ld   bc, $0201                                   ; $4535: $01 $01 $02
	ld   bc, $0008                                   ; $4538: $01 $08 $00
	ld   a, l                                        ; $453b: $7d
	and  c                                           ; $453c: $a1
	sbc  a                                           ; $453d: $9f
	dec  c                                           ; $453e: $0d
	ld   l, a                                        ; $453f: $6f
	sub  l                                           ; $4540: $95
	ld   d, h                                        ; $4541: $54
	ld   [hl], a                                     ; $4542: $77
	sub  [hl]                                        ; $4543: $96
	ld   e, c                                        ; $4544: $59
	ld   [hl], c                                     ; $4545: $71
	ld   l, l                                        ; $4546: $6d
	sbc  a                                           ; $4547: $9f
	dec  c                                           ; $4548: $0d
	nop                                              ; $4549: $00
	ld   a, [bc]                                     ; $454a: $0a
	ld   bc, $956f                                   ; $454b: $01 $6f $95
	ld   [hl], c                                     ; $454e: $71
	halt                                             ; $454f: $76
	ld   [bc], a                                     ; $4550: $02
	and  l                                           ; $4551: $a5
	ld   e, c                                        ; $4552: $59
	sub  a                                           ; $4553: $97
	ld   [bc], a                                     ; $4554: $02
	sbc  l                                           ; $4555: $9d
	ld   d, h                                        ; $4556: $54
	sub  b                                           ; $4557: $90
	and  c                                           ; $4558: $a1
	and  b                                           ; $4559: $a0
	dec  c                                           ; $455a: $0d
	inc  bc                                          ; $455b: $03
	adc  $02                                         ; $455c: $ce $02
	inc  [hl]                                        ; $455e: $34
	ld   [bc], a                                     ; $455f: $02
	cp   $02                                         ; $4560: $fe $02
	ld   e, c                                        ; $4562: $59
	ld   e, c                                        ; $4563: $59
	sub  a                                           ; $4564: $97
	inc  bc                                          ; $4565: $03
	jr   jr_05b_45d9                                 ; $4566: $18 $71

	ld   [hl], h                                     ; $4568: $74
	ld   e, e                                        ; $4569: $5b
	ld   [hl], h                                     ; $456a: $74
	dec  c                                           ; $456b: $0d
	ld   e, l                                        ; $456c: $5d
	sbc  d                                           ; $456d: $9a
	add  [hl]                                        ; $456e: $86
	and  c                                           ; $456f: $a1
	ld   e, c                                        ; $4570: $59
	ld   sp, hl                                      ; $4571: $f9
	dec  c                                           ; $4572: $0d
	nop                                              ; $4573: $00
	ld   a, [bc]                                     ; $4574: $0a
	add  hl, de                                      ; $4575: $19
	dec  b                                           ; $4576: $05
	ld   [bc], a                                     ; $4577: $02
	ld   a, l                                        ; $4578: $7d
	ld   d, d                                        ; $4579: $52
	nop                                              ; $457a: $00
	nop                                              ; $457b: $00
	ld   d, d                                        ; $457c: $52
	ld   d, d                                        ; $457d: $52
	ld   d, [hl]                                     ; $457e: $56
	nop                                              ; $457f: $00
	ld   bc, $e007                                   ; $4580: $01 $07 $e0
	nop                                              ; $4583: $00
	ld   [bc], a                                     ; $4584: $02
	inc  bc                                          ; $4585: $03
	ld   bc, $2000                                   ; $4586: $01 $00 $20
	nop                                              ; $4589: $00
	rlca                                             ; $458a: $07
	ld   h, l                                        ; $458b: $65
	nop                                              ; $458c: $00
	ld   [bc], a                                     ; $458d: $02
	inc  bc                                          ; $458e: $03
	ld   bc, $2001                                   ; $458f: $01 $01 $20
	nop                                              ; $4592: $00
	ld   b, $a6                                      ; $4593: $06 $a6
	nop                                              ; $4595: $00
	rrca                                             ; $4596: $0f
	nop                                              ; $4597: $00
	ld   bc, $6701                                   ; $4598: $01 $01 $67
	adc  l                                           ; $459b: $8d
	adc  h                                           ; $459c: $8c
	ld   l, c                                        ; $459d: $69
	and  c                                           ; $459e: $a1
	sbc  a                                           ; $459f: $9f
	dec  c                                           ; $45a0: $0d
	ld   l, a                                        ; $45a1: $6f
	sub  l                                           ; $45a2: $95
	ld   [hl], c                                     ; $45a3: $71
	halt                                             ; $45a4: $76
	ld   [bc], a                                     ; $45a5: $02
	and  l                                           ; $45a6: $a5
	ld   a, l                                        ; $45a7: $7d
	rst  $38                                         ; $45a8: $ff
	rst  $38                                         ; $45a9: $ff
	dec  c                                           ; $45aa: $0d
	nop                                              ; $45ab: $00
	ld   a, [bc]                                     ; $45ac: $0a
	inc  e                                           ; $45ad: $1c
	dec  b                                           ; $45ae: $05
	ld   [bc], a                                     ; $45af: $02
	ld   [bc], a                                     ; $45b0: $02
	dec  e                                           ; $45b1: $1d
	ld   b, b                                        ; $45b2: $40
	dec  d                                           ; $45b3: $15
	inc  bc                                          ; $45b4: $03
	dec  d                                           ; $45b5: $15
	ld   bc, $2901                                   ; $45b6: $01 $01 $29
	nop                                              ; $45b9: $00
	ld   bc, $546b                                   ; $45ba: $01 $6b $54
	ld   e, c                                        ; $45bd: $59
	rst  $38                                         ; $45be: $ff
	rst  $38                                         ; $45bf: $ff
	dec  c                                           ; $45c0: $0d
	ld   h, a                                        ; $45c1: $67
	adc  h                                           ; $45c2: $8c
	and  c                                           ; $45c3: $a1
	ld   a, b                                        ; $45c4: $78
	sbc  [hl]                                        ; $45c5: $9e
	inc  bc                                          ; $45c6: $03
	dec  c                                           ; $45c7: $0d
	ld   [bc], a                                     ; $45c8: $02
	jp   $0d7c                                       ; $45c9: $c3 $7c $0d


	ld   h, [hl]                                     ; $45cc: $66
	sub  c                                           ; $45cd: $91
	adc  h                                           ; $45ce: $8c
	ld   h, l                                        ; $45cf: $65
	ld   [hl], h                                     ; $45d0: $74
	rst  $38                                         ; $45d1: $ff
	rst  $38                                         ; $45d2: $ff
	dec  c                                           ; $45d3: $0d
	nop                                              ; $45d4: $00
	ld   a, [bc]                                     ; $45d5: $0a
	nop                                              ; $45d6: $00
	inc  e                                           ; $45d7: $1c
	dec  b                                           ; $45d8: $05

jr_05b_45d9:
	ld   [bc], a                                     ; $45d9: $02
	ld   [bc], a                                     ; $45da: $02
	ld   bc, $9e50                                   ; $45db: $01 $50 $9e
	inc  b                                           ; $45de: $04
	ld   [hl], l                                     ; $45df: $75
	ld   h, l                                        ; $45e0: $65
	ld   d, d                                        ; $45e1: $52
	and  c                                           ; $45e2: $a1
	sub  d                                           ; $45e3: $92
	ld   [hl], c                                     ; $45e4: $71
	ld   l, l                                        ; $45e5: $6d
	sub  a                                           ; $45e6: $97
	dec  c                                           ; $45e7: $0d
	xor  c                                           ; $45e8: $a9
	xor  c                                           ; $45e9: $a9
	ld   a, e                                        ; $45ea: $7b
	and  c                                           ; $45eb: $a1
	ld   [hl], l                                     ; $45ec: $75
	sbc  a                                           ; $45ed: $9f
	dec  c                                           ; $45ee: $0d
	nop                                              ; $45ef: $00
	ld   a, [bc]                                     ; $45f0: $0a
	dec  e                                           ; $45f1: $1d
	ld   b, b                                        ; $45f2: $40
	dec  d                                           ; $45f3: $15
	inc  bc                                          ; $45f4: $03
	dec  d                                           ; $45f5: $15
	ld   bc, $2901                                   ; $45f6: $01 $01 $29
	nop                                              ; $45f9: $00
	ld   bc, $8c67                                   ; $45fa: $01 $67 $8c
	and  c                                           ; $45fd: $a1
	ld   a, b                                        ; $45fe: $78
	sbc  [hl]                                        ; $45ff: $9e
	inc  bc                                          ; $4600: $03
	dec  c                                           ; $4601: $0d
	ld   [bc], a                                     ; $4602: $02
	jp   $0d7c                                       ; $4603: $c3 $7c $0d


	ld   h, [hl]                                     ; $4606: $66
	sub  c                                           ; $4607: $91
	adc  h                                           ; $4608: $8c
	ld   h, l                                        ; $4609: $65
	ld   [hl], h                                     ; $460a: $74
	rst  $38                                         ; $460b: $ff
	rst  $38                                         ; $460c: $ff
	dec  c                                           ; $460d: $0d
	nop                                              ; $460e: $00
	ld   a, [bc]                                     ; $460f: $0a
	nop                                              ; $4610: $00
	rrca                                             ; $4611: $0f
	nop                                              ; $4612: $00
	ld   bc, $5201                                   ; $4613: $01 $01 $52
	ld   d, d                                        ; $4616: $52
	ld   [hl], l                                     ; $4617: $75
	ld   h, a                                        ; $4618: $67
	sub  [hl]                                        ; $4619: $96
	sbc  a                                           ; $461a: $9f
	dec  c                                           ; $461b: $0d
	nop                                              ; $461c: $00
	ld   a, [bc]                                     ; $461d: $0a
	inc  e                                           ; $461e: $1c
	dec  b                                           ; $461f: $05
	ld   bc, $0101                                   ; $4620: $01 $01 $01
	ld   e, b                                        ; $4623: $58
	ld   e, b                                        ; $4624: $58
	ld   e, e                                        ; $4625: $5b
	ld   a, c                                        ; $4626: $79
	ld   d, b                                        ; $4627: $50
	sbc  b                                           ; $4628: $98
	ld   e, d                                        ; $4629: $5a
	halt                                             ; $462a: $76
	ld   d, h                                        ; $462b: $54
	sbc  a                                           ; $462c: $9f
	dec  c                                           ; $462d: $0d
	nop                                              ; $462e: $00
	ld   a, [bc]                                     ; $462f: $0a
	inc  e                                           ; $4630: $1c
	dec  b                                           ; $4631: $05
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	ld   bc, $7889                                   ; $4634: $01 $89 $78
	sbc  [hl]                                        ; $4637: $9e
	ld   d, d                                        ; $4638: $52
	ld   e, l                                        ; $4639: $5d
	ld   [hl], l                                     ; $463a: $75
	sbc  a                                           ; $463b: $9f
	dec  c                                           ; $463c: $0d
	ld   [bc], a                                     ; $463d: $02
	jr   nz, jr_05b_4642                             ; $463e: $20 $02

	sub  e                                           ; $4640: $93
	ld   h, l                                        ; $4641: $65

jr_05b_4642:
	ld   e, c                                        ; $4642: $59
	ld   [bc], a                                     ; $4643: $02
	sbc  l                                           ; $4644: $9d
	sbc  l                                           ; $4645: $9d
	add  [hl]                                        ; $4646: $86
	and  c                                           ; $4647: $a1
	ld   e, c                                        ; $4648: $59
	sub  a                                           ; $4649: $97
	dec  c                                           ; $464a: $0d
	ld   h, l                                        ; $464b: $65
	ld   [hl], c                                     ; $464c: $71
	ld   e, c                                        ; $464d: $59
	sbc  b                                           ; $464e: $98
	ld   e, b                                        ; $464f: $58
	adc  d                                           ; $4650: $8a
	ld   d, [hl]                                     ; $4651: $56
	ld   [hl], h                                     ; $4652: $74
	sub  d                                           ; $4653: $92
	sbc  a                                           ; $4654: $9f
	dec  c                                           ; $4655: $0d
	nop                                              ; $4656: $00
	ld   a, [bc]                                     ; $4657: $0a
	ld   bc, $688c                                   ; $4658: $01 $8c $68
	ld   a, l                                        ; $465b: $7d
	sbc  [hl]                                        ; $465c: $9e
	dec  c                                           ; $465d: $0d
	inc  bc                                          ; $465e: $03
	ld   [$3b02], sp                                 ; $465f: $08 $02 $3b
	and  b                                           ; $4662: $a0
	ld   a, [bc]                                     ; $4663: $0a
	ld   [bc], a                                     ; $4664: $02
	ld   d, $e3                                      ; $4665: $16 $e3
	ei                                               ; $4667: $fb
	ret                                              ; $4668: $c9


	db   $ed                                         ; $4669: $ed
	ld   a, [bc]                                     ; $466a: $0a
	inc  bc                                          ; $466b: $03
	sbc  a                                           ; $466c: $9f
	dec  c                                           ; $466d: $0d
	nop                                              ; $466e: $00
	ld   a, [bc]                                     ; $466f: $0a
	ld   bc, $6803                                   ; $4670: $01 $03 $68
	ld   a, c                                        ; $4673: $79
	dec  c                                           ; $4674: $0d
	xor  e                                           ; $4675: $ab
	and  l                                           ; $4676: $a5
	db   $ed                                         ; $4677: $ed
	and  b                                           ; $4678: $a0
	ld   a, [bc]                                     ; $4679: $0a
	ld   [bc], a                                     ; $467a: $02
	inc  de                                          ; $467b: $13
	db   $ec                                         ; $467c: $ec
	call nz, $edc9                                   ; $467d: $c4 $c9 $ed
	ld   a, [bc]                                     ; $4680: $0a
	inc  bc                                          ; $4681: $03
	sbc  a                                           ; $4682: $9f
	dec  c                                           ; $4683: $0d
	nop                                              ; $4684: $00
	ld   a, [bc]                                     ; $4685: $0a
	ld   bc, $6903                                   ; $4686: $01 $03 $69
	ld   [bc], a                                     ; $4689: $02
	xor  d                                           ; $468a: $aa
	ld   a, c                                        ; $468b: $79
	dec  c                                           ; $468c: $0d
	db   $dd                                         ; $468d: $dd
	db   $ed                                         ; $468e: $ed
	ret                                              ; $468f: $c9


	and  b                                           ; $4690: $a0
	ld   a, [bc]                                     ; $4691: $0a
	ld   [bc], a                                     ; $4692: $02
	jr   jr_05b_4699                                 ; $4693: $18 $04

	adc  a                                           ; $4695: $8f
	ld   a, [bc]                                     ; $4696: $0a
	inc  bc                                          ; $4697: $03
	sub  d                                           ; $4698: $92

jr_05b_4699:
	sbc  a                                           ; $4699: $9f
	dec  c                                           ; $469a: $0d
	nop                                              ; $469b: $00
	ld   a, [bc]                                     ; $469c: $0a
	ld   bc, $7889                                   ; $469d: $01 $89 $78
	sbc  [hl]                                        ; $46a0: $9e
	ld   l, l                                        ; $46a1: $6d
	ld   a, h                                        ; $46a2: $7c
	adc  [hl]                                        ; $46a3: $8e
	ld   [hl], l                                     ; $46a4: $75
	sbc  a                                           ; $46a5: $9f
	dec  c                                           ; $46a6: $0d
	nop                                              ; $46a7: $00
	ld   a, [bc]                                     ; $46a8: $0a
	dec  c                                           ; $46a9: $0d
	nop                                              ; $46aa: $00
	nop                                              ; $46ab: $00
	rrca                                             ; $46ac: $0f
	nop                                              ; $46ad: $00
	ld   bc, $7123                                   ; $46ae: $01 $23 $71
	ld   bc, $688c                                   ; $46b1: $01 $8c $68
	ld   a, l                                        ; $46b4: $7d
	sbc  [hl]                                        ; $46b5: $9e
	inc  bc                                          ; $46b6: $03
	ld   [$3b02], sp                                 ; $46b7: $08 $02 $3b
	ld   l, [hl]                                     ; $46ba: $6e
	ld   a, b                                        ; $46bb: $78
	rst  $38                                         ; $46bc: $ff
	rst  $38                                         ; $46bd: $ff
	dec  c                                           ; $46be: $0d
	nop                                              ; $46bf: $00
	ld   a, [bc]                                     ; $46c0: $0a
	add  hl, de                                      ; $46c1: $19
	dec  b                                           ; $46c2: $05
	inc  bc                                          ; $46c3: $03
	ld   d, $e3                                      ; $46c4: $16 $e3
	ei                                               ; $46c6: $fb
	ret                                              ; $46c7: $c9


	db   $ed                                         ; $46c8: $ed
	nop                                              ; $46c9: $00
	nop                                              ; $46ca: $00
	jr   @-$1b                                       ; $46cb: $18 $e3

	ei                                               ; $46cd: $fb
	ret                                              ; $46ce: $c9


	db   $ed                                         ; $46cf: $ed
	nop                                              ; $46d0: $00
	ld   bc, $e313                                   ; $46d1: $01 $13 $e3
	ei                                               ; $46d4: $fb
	ret                                              ; $46d5: $c9


	db   $ed                                         ; $46d6: $ed
	nop                                              ; $46d7: $00
	ld   [bc], a                                     ; $46d8: $02
	rlca                                             ; $46d9: $07
	and  $01                                         ; $46da: $e6 $01
	ld   [bc], a                                     ; $46dc: $02
	inc  bc                                          ; $46dd: $03
	ld   bc, $2000                                   ; $46de: $01 $00 $20
	nop                                              ; $46e1: $00
	rlca                                             ; $46e2: $07
	dec  bc                                          ; $46e3: $0b
	ld   [bc], a                                     ; $46e4: $02
	ld   [bc], a                                     ; $46e5: $02
	inc  bc                                          ; $46e6: $03
	ld   bc, $2001                                   ; $46e7: $01 $01 $20
	nop                                              ; $46ea: $00
	rlca                                             ; $46eb: $07
	inc  hl                                          ; $46ec: $23
	ld   [bc], a                                     ; $46ed: $02
	ld   [bc], a                                     ; $46ee: $02
	inc  bc                                          ; $46ef: $03
	ld   bc, $2002                                   ; $46f0: $01 $02 $20
	nop                                              ; $46f3: $00
	ld   b, $c6                                      ; $46f4: $06 $c6
	ld   bc, $000f                                   ; $46f6: $01 $0f $00
	ld   bc, $0301                                   ; $46f9: $01 $01 $03
	ld   [hl], b                                     ; $46fc: $70
	ld   e, l                                        ; $46fd: $5d
	ld   h, l                                        ; $46fe: $65
	ld   a, b                                        ; $46ff: $78
	ld   d, d                                        ; $4700: $52
	halt                                             ; $4701: $76
	sbc  [hl]                                        ; $4702: $9e
	ld   [bc], a                                     ; $4703: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4704: $cf
	dec  b                                           ; $4705: $05
	ld   a, [de]                                     ; $4706: $1a
	ld   h, e                                        ; $4707: $63
	and  c                                           ; $4708: $a1
	ld   e, d                                        ; $4709: $5a
	dec  c                                           ; $470a: $0d
	adc  h                                           ; $470b: $8c
	ld   [hl], c                                     ; $470c: $71
	ld   [hl], h                                     ; $470d: $74
	sbc  c                                           ; $470e: $99
	ld   l, h                                        ; $470f: $6c
	sbc  a                                           ; $4710: $9f
	dec  c                                           ; $4711: $0d
	nop                                              ; $4712: $00
	ld   a, [bc]                                     ; $4713: $0a
	ld   b, $80                                      ; $4714: $06 $80
	ld   bc, $000f                                   ; $4716: $01 $0f $00
	ld   bc, $0301                                   ; $4719: $01 $01 $03
	ld   [$3b02], sp                                 ; $471c: $08 $02 $3b
	ld   a, l                                        ; $471f: $7d
	ld   d, $e3                                      ; $4720: $16 $e3
	ei                                               ; $4722: $fb
	ret                                              ; $4723: $c9


	db   $ed                                         ; $4724: $ed
	ld   l, [hl]                                     ; $4725: $6e
	ld   [hl], c                                     ; $4726: $71
	ld   l, l                                        ; $4727: $6d
	dec  c                                           ; $4728: $0d
	sub  [hl]                                        ; $4729: $96

jr_05b_472a:
	ld   a, b                                        ; $472a: $78
	rst  $38                                         ; $472b: $ff
	rst  $38                                         ; $472c: $ff
	dec  c                                           ; $472d: $0d
	nop                                              ; $472e: $00
	ld   a, [bc]                                     ; $472f: $0a
	dec  b                                           ; $4730: $05
	ld   b, b                                        ; $4731: $40
	rst  $38                                         ; $4732: $ff
	inc  bc                                          ; $4733: $03
	rst  $38                                         ; $4734: $ff
	ld   bc, $2801                                   ; $4735: $01 $01 $28
	nop                                              ; $4738: $00
	ld   b, $3b                                      ; $4739: $06 $3b
	ld   [bc], a                                     ; $473b: $02
	rrca                                             ; $473c: $0f
	nop                                              ; $473d: $00
	ld   bc, $0301                                   ; $473e: $01 $01 $03
	ld   [$3b02], sp                                 ; $4741: $08 $02 $3b
	ld   a, l                                        ; $4744: $7d
	jr   jr_05b_472a                                 ; $4745: $18 $e3

	ei                                               ; $4747: $fb
	ret                                              ; $4748: $c9


	db   $ed                                         ; $4749: $ed
	ld   l, [hl]                                     ; $474a: $6e
	ld   [hl], c                                     ; $474b: $71
	ld   e, a                                        ; $474c: $5f
	ld   sp, hl                                      ; $474d: $f9
	dec  c                                           ; $474e: $0d
	nop                                              ; $474f: $00
	ld   a, [bc]                                     ; $4750: $0a
	ld   b, $3b                                      ; $4751: $06 $3b
	ld   [bc], a                                     ; $4753: $02
	rrca                                             ; $4754: $0f
	nop                                              ; $4755: $00
	ld   bc, $0301                                   ; $4756: $01 $01 $03
	ld   [$3b02], sp                                 ; $4759: $08 $02 $3b
	ld   a, l                                        ; $475c: $7d
	inc  de                                          ; $475d: $13
	db   $e3                                         ; $475e: $e3
	ei                                               ; $475f: $fb
	ret                                              ; $4760: $c9


	db   $ed                                         ; $4761: $ed
	ld   l, [hl]                                     ; $4762: $6e
	ld   [hl], c                                     ; $4763: $71
	ld   e, a                                        ; $4764: $5f
	ld   sp, hl                                      ; $4765: $f9
	dec  c                                           ; $4766: $0d
	nop                                              ; $4767: $00
	ld   a, [bc]                                     ; $4768: $0a
	ld   b, $3b                                      ; $4769: $06 $3b
	ld   [bc], a                                     ; $476b: $02
	ld   bc, $6803                                   ; $476c: $01 $03 $68
	ld   a, c                                        ; $476f: $79
	sbc  [hl]                                        ; $4770: $9e
	xor  e                                           ; $4771: $ab
	and  l                                           ; $4772: $a5
	db   $ed                                         ; $4773: $ed
	and  b                                           ; $4774: $a0
	rst  $38                                         ; $4775: $ff
	rst  $38                                         ; $4776: $ff
	dec  c                                           ; $4777: $0d
	nop                                              ; $4778: $00
	ld   a, [bc]                                     ; $4779: $0a
	add  hl, de                                      ; $477a: $19
	dec  b                                           ; $477b: $05
	inc  bc                                          ; $477c: $03
	inc  de                                          ; $477d: $13
	db   $ec                                         ; $477e: $ec
	call nz, $edc9                                   ; $477f: $c4 $c9 $ed
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	ld   d, $ec                                      ; $4784: $16 $ec
	call nz, $edc9                                   ; $4786: $c4 $c9 $ed
	nop                                              ; $4789: $00
	ld   bc, $ec18                                   ; $478a: $01 $18 $ec
	call nz, $edc9                                   ; $478d: $c4 $c9 $ed
	nop                                              ; $4790: $00
	ld   [bc], a                                     ; $4791: $02
	rlca                                             ; $4792: $07
	sbc  a                                           ; $4793: $9f
	ld   [bc], a                                     ; $4794: $02
	ld   [bc], a                                     ; $4795: $02
	inc  bc                                          ; $4796: $03
	ld   bc, $2000                                   ; $4797: $01 $00 $20
	nop                                              ; $479a: $00
	rlca                                             ; $479b: $07
	jp   $0202                                       ; $479c: $c3 $02 $02


	inc  bc                                          ; $479f: $03
	ld   bc, $2001                                   ; $47a0: $01 $01 $20
	nop                                              ; $47a3: $00
	rlca                                             ; $47a4: $07
	sbc  $02                                         ; $47a5: $de $02
	ld   [bc], a                                     ; $47a7: $02
	inc  bc                                          ; $47a8: $03
	ld   bc, $2002                                   ; $47a9: $01 $02 $20
	nop                                              ; $47ac: $00
	ld   b, $7f                                      ; $47ad: $06 $7f
	ld   [bc], a                                     ; $47af: $02
	rrca                                             ; $47b0: $0f
	nop                                              ; $47b1: $00
	ld   bc, $0301                                   ; $47b2: $01 $01 $03
	ld   [hl], b                                     ; $47b5: $70
	ld   e, l                                        ; $47b6: $5d
	ld   h, l                                        ; $47b7: $65
	ld   a, b                                        ; $47b8: $78
	ld   d, d                                        ; $47b9: $52
	halt                                             ; $47ba: $76
	sbc  [hl]                                        ; $47bb: $9e
	ld   [bc], a                                     ; $47bc: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47bd: $cf
	dec  b                                           ; $47be: $05
	ld   a, [de]                                     ; $47bf: $1a
	ld   h, e                                        ; $47c0: $63
	and  c                                           ; $47c1: $a1
	ld   e, d                                        ; $47c2: $5a
	dec  c                                           ; $47c3: $0d
	adc  h                                           ; $47c4: $8c
	ld   [hl], c                                     ; $47c5: $71
	ld   [hl], h                                     ; $47c6: $74
	sbc  c                                           ; $47c7: $99
	ld   l, h                                        ; $47c8: $6c
	sbc  a                                           ; $47c9: $9f
	dec  c                                           ; $47ca: $0d
	nop                                              ; $47cb: $00
	ld   a, [bc]                                     ; $47cc: $0a
	ld   b, $3b                                      ; $47cd: $06 $3b
	ld   [bc], a                                     ; $47cf: $02
	rrca                                             ; $47d0: $0f
	nop                                              ; $47d1: $00
	ld   bc, $ab01                                   ; $47d2: $01 $01 $ab
	and  l                                           ; $47d5: $a5
	db   $ed                                         ; $47d6: $ed
	ld   a, l                                        ; $47d7: $7d
	inc  de                                          ; $47d8: $13
	db   $ec                                         ; $47d9: $ec
	call nz, $edc9                                   ; $47da: $c4 $c9 $ed
	dec  c                                           ; $47dd: $0d
	ld   l, [hl]                                     ; $47de: $6e
	ld   [hl], c                                     ; $47df: $71
	ld   l, l                                        ; $47e0: $6d
	sub  [hl]                                        ; $47e1: $96
	ld   a, b                                        ; $47e2: $78
	rst  $38                                         ; $47e3: $ff
	rst  $38                                         ; $47e4: $ff
	dec  c                                           ; $47e5: $0d
	nop                                              ; $47e6: $00
	ld   a, [bc]                                     ; $47e7: $0a
	dec  b                                           ; $47e8: $05
	ld   b, b                                        ; $47e9: $40
	rst  $38                                         ; $47ea: $ff
	inc  bc                                          ; $47eb: $03
	rst  $38                                         ; $47ec: $ff
	ld   bc, $2801                                   ; $47ed: $01 $01 $28
	nop                                              ; $47f0: $00
	ld   b, $f9                                      ; $47f1: $06 $f9
	ld   [bc], a                                     ; $47f3: $02
	rrca                                             ; $47f4: $0f
	nop                                              ; $47f5: $00
	ld   bc, $ab01                                   ; $47f6: $01 $01 $ab
	and  l                                           ; $47f9: $a5
	db   $ed                                         ; $47fa: $ed
	ld   a, l                                        ; $47fb: $7d
	ld   d, $ec                                      ; $47fc: $16 $ec
	call nz, $edc9                                   ; $47fe: $c4 $c9 $ed
	dec  c                                           ; $4801: $0d
	ld   l, [hl]                                     ; $4802: $6e
	ld   [hl], c                                     ; $4803: $71
	ld   l, l                                        ; $4804: $6d

jr_05b_4805:
	ld   e, c                                        ; $4805: $59
	ld   a, b                                        ; $4806: $78
	rst  $38                                         ; $4807: $ff
	rst  $38                                         ; $4808: $ff
	dec  c                                           ; $4809: $0d
	nop                                              ; $480a: $00
	ld   a, [bc]                                     ; $480b: $0a
	ld   b, $f9                                      ; $480c: $06 $f9
	ld   [bc], a                                     ; $480e: $02
	rrca                                             ; $480f: $0f
	nop                                              ; $4810: $00
	ld   bc, $ab01                                   ; $4811: $01 $01 $ab
	and  l                                           ; $4814: $a5
	db   $ed                                         ; $4815: $ed
	ld   a, l                                        ; $4816: $7d
	jr   jr_05b_4805                                 ; $4817: $18 $ec

	call nz, $edc9                                   ; $4819: $c4 $c9 $ed
	dec  c                                           ; $481c: $0d
	ld   l, [hl]                                     ; $481d: $6e
	ld   [hl], c                                     ; $481e: $71
	ld   l, l                                        ; $481f: $6d
	ld   e, c                                        ; $4820: $59
	ld   a, b                                        ; $4821: $78
	rst  $38                                         ; $4822: $ff
	rst  $38                                         ; $4823: $ff
	dec  c                                           ; $4824: $0d
	nop                                              ; $4825: $00
	ld   a, [bc]                                     ; $4826: $0a
	ld   b, $f9                                      ; $4827: $06 $f9
	ld   [bc], a                                     ; $4829: $02
	ld   bc, $6903                                   ; $482a: $01 $03 $69
	ld   [bc], a                                     ; $482d: $02
	xor  d                                           ; $482e: $aa
	ld   a, c                                        ; $482f: $79
	sbc  [hl]                                        ; $4830: $9e
	db   $dd                                         ; $4831: $dd
	db   $ed                                         ; $4832: $ed
	ret                                              ; $4833: $c9


	and  b                                           ; $4834: $a0
	rst  $38                                         ; $4835: $ff
	rst  $38                                         ; $4836: $ff
	dec  c                                           ; $4837: $0d
	nop                                              ; $4838: $00
	ld   a, [bc]                                     ; $4839: $0a
	add  hl, de                                      ; $483a: $19
	dec  b                                           ; $483b: $05
	inc  bc                                          ; $483c: $03
	jr   jr_05b_4843                                 ; $483d: $18 $04

	adc  a                                           ; $483f: $8f
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	inc  de                                          ; $4842: $13

jr_05b_4843:
	inc  b                                           ; $4843: $04
	adc  a                                           ; $4844: $8f
	nop                                              ; $4845: $00
	ld   bc, $0416                                   ; $4846: $01 $16 $04
	adc  a                                           ; $4849: $8f
	nop                                              ; $484a: $00
	ld   [bc], a                                     ; $484b: $02
	rlca                                             ; $484c: $07
	ld   e, c                                        ; $484d: $59
	inc  bc                                          ; $484e: $03
	ld   [bc], a                                     ; $484f: $02
	inc  bc                                          ; $4850: $03
	ld   bc, $2000                                   ; $4851: $01 $00 $20
	nop                                              ; $4854: $00
	rlca                                             ; $4855: $07
	ld   a, d                                        ; $4856: $7a
	inc  bc                                          ; $4857: $03
	ld   [bc], a                                     ; $4858: $02
	inc  bc                                          ; $4859: $03
	ld   bc, $2001                                   ; $485a: $01 $01 $20
	nop                                              ; $485d: $00
	rlca                                             ; $485e: $07
	sub  c                                           ; $485f: $91
	inc  bc                                          ; $4860: $03
	ld   [bc], a                                     ; $4861: $02
	inc  bc                                          ; $4862: $03
	ld   bc, $2002                                   ; $4863: $01 $02 $20
	nop                                              ; $4866: $00
	ld   b, $39                                      ; $4867: $06 $39
	inc  bc                                          ; $4869: $03
	rrca                                             ; $486a: $0f
	nop                                              ; $486b: $00
	ld   bc, $0301                                   ; $486c: $01 $01 $03
	ld   [hl], b                                     ; $486f: $70
	ld   e, l                                        ; $4870: $5d
	ld   h, l                                        ; $4871: $65
	ld   a, b                                        ; $4872: $78
	ld   d, d                                        ; $4873: $52
	halt                                             ; $4874: $76
	sbc  [hl]                                        ; $4875: $9e
	ld   [bc], a                                     ; $4876: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4877: $cf
	dec  b                                           ; $4878: $05
	ld   a, [de]                                     ; $4879: $1a
	ld   h, e                                        ; $487a: $63
	and  c                                           ; $487b: $a1
	ld   e, d                                        ; $487c: $5a
	dec  c                                           ; $487d: $0d
	adc  h                                           ; $487e: $8c
	ld   [hl], c                                     ; $487f: $71
	ld   [hl], h                                     ; $4880: $74
	sbc  c                                           ; $4881: $99
	ld   l, h                                        ; $4882: $6c
	sbc  a                                           ; $4883: $9f
	dec  c                                           ; $4884: $0d
	nop                                              ; $4885: $00
	ld   a, [bc]                                     ; $4886: $0a
	ld   b, $f9                                      ; $4887: $06 $f9
	ld   [bc], a                                     ; $4889: $02
	rrca                                             ; $488a: $0f
	nop                                              ; $488b: $00
	ld   bc, $dd01                                   ; $488c: $01 $01 $dd
	db   $ed                                         ; $488f: $ed
	ret                                              ; $4890: $c9


	ld   a, l                                        ; $4891: $7d
	jr   jr_05b_4898                                 ; $4892: $18 $04

	adc  a                                           ; $4894: $8f
	ld   l, [hl]                                     ; $4895: $6e
	ld   [hl], c                                     ; $4896: $71
	ld   l, l                                        ; $4897: $6d

jr_05b_4898:
	sub  [hl]                                        ; $4898: $96
	ld   a, b                                        ; $4899: $78
	rst  $38                                         ; $489a: $ff
	rst  $38                                         ; $489b: $ff
	dec  c                                           ; $489c: $0d
	nop                                              ; $489d: $00
	ld   a, [bc]                                     ; $489e: $0a
	dec  b                                           ; $489f: $05
	ld   b, b                                        ; $48a0: $40
	rst  $38                                         ; $48a1: $ff
	inc  bc                                          ; $48a2: $03
	rst  $38                                         ; $48a3: $ff
	ld   bc, $2801                                   ; $48a4: $01 $01 $28
	nop                                              ; $48a7: $00
	ld   b, $a8                                      ; $48a8: $06 $a8
	inc  bc                                          ; $48aa: $03
	rrca                                             ; $48ab: $0f
	nop                                              ; $48ac: $00
	ld   bc, $dd01                                   ; $48ad: $01 $01 $dd
	db   $ed                                         ; $48b0: $ed
	ret                                              ; $48b1: $c9


	ld   a, l                                        ; $48b2: $7d
	inc  de                                          ; $48b3: $13
	inc  b                                           ; $48b4: $04
	adc  a                                           ; $48b5: $8f
	ld   l, [hl]                                     ; $48b6: $6e
	ld   [hl], c                                     ; $48b7: $71
	ld   l, l                                        ; $48b8: $6d
	ld   e, c                                        ; $48b9: $59
	ld   a, b                                        ; $48ba: $78
	ld   sp, hl                                      ; $48bb: $f9
	dec  c                                           ; $48bc: $0d
	nop                                              ; $48bd: $00
	ld   a, [bc]                                     ; $48be: $0a
	ld   b, $a8                                      ; $48bf: $06 $a8
	inc  bc                                          ; $48c1: $03
	rrca                                             ; $48c2: $0f
	nop                                              ; $48c3: $00
	ld   bc, $dd01                                   ; $48c4: $01 $01 $dd
	db   $ed                                         ; $48c7: $ed
	ret                                              ; $48c8: $c9


	ld   a, l                                        ; $48c9: $7d
	ld   d, $04                                      ; $48ca: $16 $04
	adc  a                                           ; $48cc: $8f
	ld   l, [hl]                                     ; $48cd: $6e
	ld   [hl], c                                     ; $48ce: $71
	ld   l, l                                        ; $48cf: $6d
	ld   e, c                                        ; $48d0: $59
	ld   a, b                                        ; $48d1: $78
	ld   sp, hl                                      ; $48d2: $f9
	dec  c                                           ; $48d3: $0d
	nop                                              ; $48d4: $00
	ld   a, [bc]                                     ; $48d5: $0a
	ld   b, $a8                                      ; $48d6: $06 $a8
	inc  bc                                          ; $48d8: $03
	rrca                                             ; $48d9: $0f
	nop                                              ; $48da: $00
	ld   bc, $9601                                   ; $48db: $01 $01 $96
	ld   h, l                                        ; $48de: $65
	sbc  [hl]                                        ; $48df: $9e
	ld   l, e                                        ; $48e0: $6b
	sbc  e                                           ; $48e1: $9b
	ld   [hl], c                                     ; $48e2: $71
	ld   l, l                                        ; $48e3: $6d
	ld   l, h                                        ; $48e4: $6c
	sbc  a                                           ; $48e5: $9f
	dec  c                                           ; $48e6: $0d
	nop                                              ; $48e7: $00
	ld   a, [bc]                                     ; $48e8: $0a
	inc  hl                                          ; $48e9: $23
	ld   d, h                                        ; $48ea: $54
	ld   b, $bd                                      ; $48eb: $06 $bd
	inc  bc                                          ; $48ed: $03
	rlca                                             ; $48ee: $07
	ret  c                                           ; $48ef: $d8

	inc  bc                                          ; $48f0: $03
	inc  bc                                          ; $48f1: $03
	rst  $38                                         ; $48f2: $ff
	ld   bc, $2003                                   ; $48f3: $01 $03 $20
	nop                                              ; $48f6: $00
	rlca                                             ; $48f7: $07
	inc  bc                                          ; $48f8: $03
	inc  b                                           ; $48f9: $04
	inc  bc                                          ; $48fa: $03
	rst  $38                                         ; $48fb: $ff
	ld   bc, $2002                                   ; $48fc: $01 $02 $20
	nop                                              ; $48ff: $00
	rlca                                             ; $4900: $07
	ld   c, b                                        ; $4901: $48
	inc  b                                           ; $4902: $04
	inc  bc                                          ; $4903: $03
	rst  $38                                         ; $4904: $ff
	ld   bc, $2301                                   ; $4905: $01 $01 $23
	nop                                              ; $4908: $00
	inc  e                                           ; $4909: $1c
	dec  b                                           ; $490a: $05
	ld   bc, $1d01                                   ; $490b: $01 $01 $1d
	ld   b, b                                        ; $490e: $40
	dec  d                                           ; $490f: $15
	inc  bc                                          ; $4910: $03
	dec  d                                           ; $4911: $15
	ld   bc, $2803                                   ; $4912: $01 $03 $28
	nop                                              ; $4915: $00
	ld   bc, $5858                                   ; $4916: $01 $58 $58
	ld   e, e                                        ; $4919: $5b
	ld   a, c                                        ; $491a: $79
	sbc  [hl]                                        ; $491b: $9e
	inc  bc                                          ; $491c: $03
	ld   e, e                                        ; $491d: $5b
	ld   e, c                                        ; $491e: $59
	ld   [hl], c                                     ; $491f: $71
	ld   l, l                                        ; $4920: $6d
	sbc  l                                           ; $4921: $9d
	sbc  a                                           ; $4922: $9f
	dec  c                                           ; $4923: $0d
	adc  c                                           ; $4924: $89
	and  c                                           ; $4925: $a1
	adc  h                                           ; $4926: $8c
	sbc  [hl]                                        ; $4927: $9e
	ld   e, b                                        ; $4928: $58
	ld   e, b                                        ; $4929: $58
	ld   e, e                                        ; $492a: $5b
	ld   a, c                                        ; $492b: $79
	ld   a, b                                        ; $492c: $78
	sbc  a                                           ; $492d: $9f
	dec  c                                           ; $492e: $0d
	nop                                              ; $492f: $00
	ld   a, [bc]                                     ; $4930: $0a
	ld   b, $21                                      ; $4931: $06 $21
	inc  b                                           ; $4933: $04
	inc  e                                           ; $4934: $1c
	dec  b                                           ; $4935: $05
	nop                                              ; $4936: $00
	nop                                              ; $4937: $00
	dec  e                                           ; $4938: $1d
	ld   b, b                                        ; $4939: $40
	dec  d                                           ; $493a: $15
	inc  bc                                          ; $493b: $03
	dec  d                                           ; $493c: $15
	ld   bc, $2802                                   ; $493d: $01 $02 $28
	nop                                              ; $4940: $00
	ld   bc, $0458                                   ; $4941: $01 $58 $04
	ld   a, e                                        ; $4944: $7b
	sbc  d                                           ; $4945: $9a
	ld   h, e                                        ; $4946: $63
	and  c                                           ; $4947: $a1
	ld   [hl], l                                     ; $4948: $75
	ld   h, l                                        ; $4949: $65
	ld   l, l                                        ; $494a: $6d
	sbc  a                                           ; $494b: $9f
	dec  c                                           ; $494c: $0d
	nop                                              ; $494d: $00
	ld   a, [bc]                                     ; $494e: $0a
	ld   b, $21                                      ; $494f: $06 $21
	inc  b                                           ; $4951: $04
	ld   bc, $5477                                   ; $4952: $01 $77 $54
	sub  b                                           ; $4955: $90
	dec  c                                           ; $4956: $0d
	ld   h, d                                        ; $4957: $62
	ld   e, l                                        ; $4958: $5d
	sbc  e                                           ; $4959: $9b
	ld   d, h                                        ; $495a: $54
	ld   h, e                                        ; $495b: $63
	and  c                                           ; $495c: $a1
	ld   [hl], l                                     ; $495d: $75
	ld   h, l                                        ; $495e: $65
	ld   l, l                                        ; $495f: $6d
	sbc  a                                           ; $4960: $9f
	dec  c                                           ; $4961: $0d
	nop                                              ; $4962: $00
	ld   a, [bc]                                     ; $4963: $0a
	ld   bc, $6d8c                                   ; $4964: $01 $8c $6d
	sbc  [hl]                                        ; $4967: $9e
	ld   a, b                                        ; $4968: $78
	and  c                                           ; $4969: $a1
	ld   e, c                                        ; $496a: $59
	ld   d, b                                        ; $496b: $50
	ld   [hl], c                                     ; $496c: $71
	ld   l, l                                        ; $496d: $6d
	sub  a                                           ; $496e: $97
	dec  c                                           ; $496f: $0d
	ld   l, l                                        ; $4970: $6d
	ld   a, h                                        ; $4971: $7c
	adc  [hl]                                        ; $4972: $8e
	ld   a, b                                        ; $4973: $78
	sbc  a                                           ; $4974: $9f
	dec  c                                           ; $4975: $0d
	nop                                              ; $4976: $00
	ld   a, [bc]                                     ; $4977: $0a
	nop                                              ; $4978: $00
	inc  e                                           ; $4979: $1c
	dec  b                                           ; $497a: $05
	ld   b, $06                                      ; $497b: $06 $06
	dec  e                                           ; $497d: $1d
	ld   b, b                                        ; $497e: $40
	dec  d                                           ; $497f: $15
	inc  bc                                          ; $4980: $03
	dec  d                                           ; $4981: $15
	ld   bc, $2902                                   ; $4982: $01 $02 $29
	nop                                              ; $4985: $00
	ld   bc, $ffff                                   ; $4986: $01 $ff $ff
	inc  b                                           ; $4989: $04
	ld   e, $7c                                      ; $498a: $1e $7c
	inc  bc                                          ; $498c: $03
	add  d                                           ; $498d: $82
	ld   a, c                                        ; $498e: $79
	ld   l, l                                        ; $498f: $6d
	ld   a, h                                        ; $4990: $7c
	and  c                                           ; $4991: $a1
	ld   l, [hl]                                     ; $4992: $6e
	inc  b                                           ; $4993: $04
	ld   a, b                                        ; $4994: $78
	ld   e, d                                        ; $4995: $5a
	dec  c                                           ; $4996: $0d
	dec  b                                           ; $4997: $05
	dec  d                                           ; $4998: $15
	ld   e, c                                        ; $4999: $59
	ld   [hl], c                                     ; $499a: $71
	ld   l, l                                        ; $499b: $6d
	ld   e, c                                        ; $499c: $59
	sub  b                                           ; $499d: $90
	ld   h, l                                        ; $499e: $65
	sbc  d                                           ; $499f: $9a
	and  c                                           ; $49a0: $a1
	ld   a, b                                        ; $49a1: $78
	rst  $38                                         ; $49a2: $ff
	rst  $38                                         ; $49a3: $ff
	dec  c                                           ; $49a4: $0d
	nop                                              ; $49a5: $00
	ld   a, [bc]                                     ; $49a6: $0a
	ld   bc, $5477                                   ; $49a7: $01 $77 $54
	sub  b                                           ; $49aa: $90
	dec  c                                           ; $49ab: $0d
	ld   h, d                                        ; $49ac: $62
	ld   e, l                                        ; $49ad: $5d
	sbc  e                                           ; $49ae: $9b
	ld   d, h                                        ; $49af: $54
	ld   h, e                                        ; $49b0: $63
	and  c                                           ; $49b1: $a1
	ld   [hl], l                                     ; $49b2: $75
	ld   h, l                                        ; $49b3: $65
	ld   l, l                                        ; $49b4: $6d
	sbc  a                                           ; $49b5: $9f
	dec  c                                           ; $49b6: $0d
	nop                                              ; $49b7: $00
	ld   a, [bc]                                     ; $49b8: $0a
	nop                                              ; $49b9: $00
	nop                                              ; $49ba: $00
	ld   c, $0a                                      ; $49bb: $0e $0a
	rrca                                             ; $49bd: $0f
	ld   [bc], a                                     ; $49be: $02
	ld   [$0102], sp                                 ; $49bf: $08 $02 $01
	ld   d, b                                        ; $49c2: $50
	db   $fc                                         ; $49c3: $fc
	db   $fc                                         ; $49c4: $fc
	db   $fc                                         ; $49c5: $fc
	sbc  d                                           ; $49c6: $9a
	db   $fc                                         ; $49c7: $fc
	db   $fc                                         ; $49c8: $fc
	db   $fc                                         ; $49c9: $fc
	db   $fc                                         ; $49ca: $fc
	db   $fc                                         ; $49cb: $fc
	ld   [hl], c                                     ; $49cc: $71
	ld   a, [$000d]                                  ; $49cd: $fa $0d $00
	ld   a, [bc]                                     ; $49d0: $0a
	rrca                                             ; $49d1: $0f
	nop                                              ; $49d2: $00
	ld   bc, $0101                                   ; $49d3: $01 $01 $01
	inc  bc                                          ; $49d6: $03
	ld   d, b                                        ; $49d7: $50
	sbc  d                                           ; $49d8: $9a
	ld   a, l                                        ; $49d9: $7d
	sbc  [hl]                                        ; $49da: $9e
	ld   h, a                                        ; $49db: $67
	adc  l                                           ; $49dc: $8d
	sbc  d                                           ; $49dd: $9a
	ld   h, e                                        ; $49de: $63
	and  c                                           ; $49df: $a1
	ld   a, h                                        ; $49e0: $7c
	dec  c                                           ; $49e1: $0d
	db   $10                                         ; $49e2: $10
	inc  bc                                          ; $49e3: $03
	and  l                                           ; $49e4: $a5
	ld   l, [hl]                                     ; $49e5: $6e
	ld   a, [$0401]                                  ; $49e6: $fa $01 $04
	dec  c                                           ; $49e9: $0d
	nop                                              ; $49ea: $00
	ld   a, [bc]                                     ; $49eb: $0a
	inc  hl                                          ; $49ec: $23
	adc  h                                           ; $49ed: $8c
	ld   bc, $5477                                   ; $49ee: $01 $77 $54
	ld   h, l                                        ; $49f1: $65
	adc  h                                           ; $49f2: $8c
	ld   h, l                                        ; $49f3: $65
	ld   l, l                                        ; $49f4: $6d
	ld   a, [$670d]                                  ; $49f5: $fa $0d $67
	adc  l                                           ; $49f8: $8d
	sbc  d                                           ; $49f9: $9a
	ld   h, e                                        ; $49fa: $63
	and  c                                           ; $49fb: $a1
	ld   a, [$000d]                                  ; $49fc: $fa $0d $00
	ld   a, [bc]                                     ; $49ff: $0a
	ld   d, $0f                                      ; $4a00: $16 $0f
	rrca                                             ; $4a02: $0f
	ld   [bc], a                                     ; $4a03: $02
	ld   [$0801], sp                                 ; $4a04: $08 $01 $08
	nop                                              ; $4a07: $00
	ld   h, e                                        ; $4a08: $63
	and  c                                           ; $4a09: $a1
	sbc  a                                           ; $4a0a: $9f
	dec  c                                           ; $4a0b: $0d
	ld   a, l                                        ; $4a0c: $7d
	sbc  [hl]                                        ; $4a0d: $9e
	inc  bc                                          ; $4a0e: $03
	ld   [hl], b                                     ; $4a0f: $70
	ld   e, l                                        ; $4a10: $5d
	ld   h, c                                        ; $4a11: $61
	sbc  d                                           ; $4a12: $9a
	and  b                                           ; $4a13: $a0
	inc  bc                                          ; $4a14: $03
	jr   jr_05b_4a88                                 ; $4a15: $18 $71

	ld   [hl], h                                     ; $4a17: $74
	dec  c                                           ; $4a18: $0d
	ld   [bc], a                                     ; $4a19: $02
	inc  [hl]                                        ; $4a1a: $34
	ld   h, e                                        ; $4a1b: $63
	sub  a                                           ; $4a1c: $97
	ld   a, b                                        ; $4a1d: $78
	ld   d, d                                        ; $4a1e: $52
	rst  $38                                         ; $4a1f: $ff
	rst  $38                                         ; $4a20: $ff
	dec  c                                           ; $4a21: $0d
	nop                                              ; $4a22: $00
	ld   a, [bc]                                     ; $4a23: $0a
	add  hl, de                                      ; $4a24: $19
	dec  b                                           ; $4a25: $05
	ld   [bc], a                                     ; $4a26: $02
	ld   a, l                                        ; $4a27: $7d
	ld   d, d                                        ; $4a28: $52
	nop                                              ; $4a29: $00
	nop                                              ; $4a2a: $00
	ld   d, d                                        ; $4a2b: $52
	ld   d, d                                        ; $4a2c: $52
	ld   d, [hl]                                     ; $4a2d: $56
	nop                                              ; $4a2e: $00
	ld   bc, $8a07                                   ; $4a2f: $01 $07 $8a
	nop                                              ; $4a32: $00
	ld   [bc], a                                     ; $4a33: $02
	inc  bc                                          ; $4a34: $03
	ld   bc, $2000                                   ; $4a35: $01 $00 $20
	nop                                              ; $4a38: $00
	rlca                                             ; $4a39: $07
	call nz, $0200                                   ; $4a3a: $c4 $00 $02
	inc  bc                                          ; $4a3d: $03
	ld   bc, $2001                                   ; $4a3e: $01 $01 $20
	nop                                              ; $4a41: $00
	ld   b, $19                                      ; $4a42: $06 $19
	ld   bc, $000f                                   ; $4a44: $01 $0f $00
	ld   bc, $7d01                                   ; $4a47: $01 $01 $7d
	ld   d, d                                        ; $4a4a: $52
	sbc  [hl]                                        ; $4a4b: $9e
	ld   [bc], a                                     ; $4a4c: $02
	and  l                                           ; $4a4d: $a5
	ld   h, a                                        ; $4a4e: $67
	ld   e, [hl]                                     ; $4a4f: $5e
	ld   a, c                                        ; $4a50: $79
	sbc  a                                           ; $4a51: $9f
	dec  c                                           ; $4a52: $0d
	nop                                              ; $4a53: $00
	ld   a, [bc]                                     ; $4a54: $0a
	inc  c                                           ; $4a55: $0c
	ld   [bc], a                                     ; $4a56: $02
	ld   c, $8c                                      ; $4a57: $0e $8c
	inc  e                                           ; $4a59: $1c
	ld   [bc], a                                     ; $4a5a: $02
	ld   bc, $1d01                                   ; $4a5b: $01 $01 $1d
	ld   b, b                                        ; $4a5e: $40
	ld   [de], a                                     ; $4a5f: $12
	inc  bc                                          ; $4a60: $03
	ld   [de], a                                     ; $4a61: $12
	ld   bc, $2802                                   ; $4a62: $01 $02 $28
	nop                                              ; $4a65: $00
	ld   bc, $ffff                                   ; $4a66: $01 $ff $ff
	add  e                                           ; $4a69: $83
	ld   d, h                                        ; $4a6a: $54
	sbc  a                                           ; $4a6b: $9f
	dec  c                                           ; $4a6c: $0d
	ld   l, l                                        ; $4a6d: $6d
	sbc  [hl]                                        ; $4a6e: $9e
	inc  bc                                          ; $4a6f: $03
	ld   e, e                                        ; $4a70: $5b
	ld   e, c                                        ; $4a71: $59
	sbc  b                                           ; $4a72: $98
	adc  h                                           ; $4a73: $8c
	ld   h, l                                        ; $4a74: $65
	ld   l, l                                        ; $4a75: $6d
	sbc  l                                           ; $4a76: $9d
	rst  $38                                         ; $4a77: $ff
	rst  $38                                         ; $4a78: $ff
	dec  c                                           ; $4a79: $0d
	nop                                              ; $4a7a: $00
	ld   a, [bc]                                     ; $4a7b: $0a
	ld   b, $59                                      ; $4a7c: $06 $59
	ld   bc, $000f                                   ; $4a7e: $01 $0f $00
	ld   bc, $b001                                   ; $4a81: $01 $01 $b0
	db   $e4                                         ; $4a84: $e4
	ld   [hl], l                                     ; $4a85: $75
	ld   h, a                                        ; $4a86: $67
	ld   e, c                                        ; $4a87: $59

jr_05b_4a88:
	ld   sp, hl                                      ; $4a88: $f9
	dec  c                                           ; $4a89: $0d
	and  l                                           ; $4a8a: $a5
	and  $75                                         ; $4a8b: $e6 $75
	ld   h, a                                        ; $4a8d: $67
	sub  [hl]                                        ; $4a8e: $96
	sbc  a                                           ; $4a8f: $9f
	dec  c                                           ; $4a90: $0d
	or   b                                           ; $4a91: $b0
	db   $e4                                         ; $4a92: $e4
	ld   a, b                                        ; $4a93: $78
	and  c                                           ; $4a94: $a1
	ld   [hl], h                                     ; $4a95: $74
	ld   h, e                                        ; $4a96: $63
	sbc  l                                           ; $4a97: $9d
	sbc  c                                           ; $4a98: $99
	ld   a, h                                        ; $4a99: $7c
	sbc  a                                           ; $4a9a: $9f
	dec  c                                           ; $4a9b: $0d
	nop                                              ; $4a9c: $00
	ld   a, [bc]                                     ; $4a9d: $0a
	rrca                                             ; $4a9e: $0f
	ld   [bc], a                                     ; $4a9f: $02
	rlca                                             ; $4aa0: $07
	dec  e                                           ; $4aa1: $1d
	ld   b, b                                        ; $4aa2: $40
	ld   [de], a                                     ; $4aa3: $12
	inc  bc                                          ; $4aa4: $03
	ld   [de], a                                     ; $4aa5: $12
	ld   bc, $2903                                   ; $4aa6: $01 $03 $29
	nop                                              ; $4aa9: $00
	ld   bc, $bbb1                                   ; $4aaa: $01 $b1 $bb
	or   c                                           ; $4aad: $b1
	cp   e                                           ; $4aae: $bb
	ld   [bc], a                                     ; $4aaf: $02
	sbc  l                                           ; $4ab0: $9d
	sbc  l                                           ; $4ab1: $9d
	ld   a, b                                        ; $4ab2: $78
	ld   d, d                                        ; $4ab3: $52
	ld   [hl], l                                     ; $4ab4: $75
	dec  c                                           ; $4ab5: $0d
	inc  bc                                          ; $4ab6: $03
	ld   [hl], b                                     ; $4ab7: $70
	ld   e, l                                        ; $4ab8: $5d
	ld   a, b                                        ; $4ab9: $78
	ld   h, e                                        ; $4aba: $63
	ld   d, d                                        ; $4abb: $52
	ld   a, [$000d]                                  ; $4abc: $fa $0d $00
	ld   a, [bc]                                     ; $4abf: $0a
	inc  c                                           ; $4ac0: $0c
	ld   [bc], a                                     ; $4ac1: $02
	ld   c, $8c                                      ; $4ac2: $0e $8c
	inc  e                                           ; $4ac4: $1c
	ld   [bc], a                                     ; $4ac5: $02
	nop                                              ; $4ac6: $00
	nop                                              ; $4ac7: $00
	ld   bc, $ffff                                   ; $4ac8: $01 $ff $ff
	add  e                                           ; $4acb: $83
	ld   d, h                                        ; $4acc: $54
	sbc  a                                           ; $4acd: $9f
	dec  c                                           ; $4ace: $0d
	nop                                              ; $4acf: $00
	ld   a, [bc]                                     ; $4ad0: $0a
	ld   b, $59                                      ; $4ad1: $06 $59
	ld   bc, $020f                                   ; $4ad3: $01 $0f $02
	ld   [bc], a                                     ; $4ad6: $02
	dec  e                                           ; $4ad7: $1d
	ld   b, b                                        ; $4ad8: $40
	ld   [de], a                                     ; $4ad9: $12
	inc  bc                                          ; $4ada: $03
	ld   [de], a                                     ; $4adb: $12
	ld   bc, $2902                                   ; $4adc: $01 $02 $29
	nop                                              ; $4adf: $00
	ld   bc, $bbb1                                   ; $4ae0: $01 $b1 $bb
	or   c                                           ; $4ae3: $b1
	cp   e                                           ; $4ae4: $bb
	ld   h, l                                        ; $4ae5: $65
	ld   [hl], h                                     ; $4ae6: $74
	ld   a, b                                        ; $4ae7: $78
	ld   d, d                                        ; $4ae8: $52
	ld   [hl], l                                     ; $4ae9: $75
	dec  c                                           ; $4aea: $0d
	inc  bc                                          ; $4aeb: $03
	ld   [hl], b                                     ; $4aec: $70
	ld   e, l                                        ; $4aed: $5d
	ld   a, b                                        ; $4aee: $78
	ld   h, e                                        ; $4aef: $63
	ld   d, d                                        ; $4af0: $52
	ld   a, [$000d]                                  ; $4af1: $fa $0d $00
	ld   a, [bc]                                     ; $4af4: $0a
	dec  c                                           ; $4af5: $0d
	nop                                              ; $4af6: $00
	nop                                              ; $4af7: $00
	inc  c                                           ; $4af8: $0c
	ld   [bc], a                                     ; $4af9: $02
	ld   c, $8c                                      ; $4afa: $0e $8c
	inc  e                                           ; $4afc: $1c
	ld   [bc], a                                     ; $4afd: $02
	nop                                              ; $4afe: $00
	nop                                              ; $4aff: $00
	ld   bc, $ffff                                   ; $4b00: $01 $ff $ff
	add  e                                           ; $4b03: $83
	ld   d, h                                        ; $4b04: $54
	sbc  a                                           ; $4b05: $9f
	dec  c                                           ; $4b06: $0d
	inc  bc                                          ; $4b07: $03
	ld   e, e                                        ; $4b08: $5b
	ld   e, c                                        ; $4b09: $59
	sbc  b                                           ; $4b0a: $98
	adc  h                                           ; $4b0b: $8c
	ld   h, l                                        ; $4b0c: $65
	ld   l, l                                        ; $4b0d: $6d
	sbc  l                                           ; $4b0e: $9d
	rst  $38                                         ; $4b0f: $ff
	rst  $38                                         ; $4b10: $ff
	dec  c                                           ; $4b11: $0d
	nop                                              ; $4b12: $00
	ld   a, [bc]                                     ; $4b13: $0a
	inc  e                                           ; $4b14: $1c
	ld   [bc], a                                     ; $4b15: $02
	ld   b, $06                                      ; $4b16: $06 $06
	ld   bc, $567b                                   ; $4b18: $01 $7b $56
	sbc  [hl]                                        ; $4b1b: $9e
	ld   [$6300], sp                                 ; $4b1c: $08 $00 $63
	and  c                                           ; $4b1f: $a1
	sbc  a                                           ; $4b20: $9f
	dec  c                                           ; $4b21: $0d
	ld   h, c                                        ; $4b22: $61
	ld   a, h                                        ; $4b23: $7c
	ld   [bc], a                                     ; $4b24: $02
	jp   $8d7d                                       ; $4b25: $c3 $7d $8d


	and  c                                           ; $4b28: $a1
	ld   a, b                                        ; $4b29: $78
	ld   a, c                                        ; $4b2a: $79
	ld   a, l                                        ; $4b2b: $7d
	sbc  [hl]                                        ; $4b2c: $9e
	ld   a, b                                        ; $4b2d: $78
	ld   d, d                                        ; $4b2e: $52
	ld   h, l                                        ; $4b2f: $65
	sub  l                                           ; $4b30: $95
	dec  c                                           ; $4b31: $0d
	ld   a, c                                        ; $4b32: $79
	ld   h, l                                        ; $4b33: $65
	ld   [hl], h                                     ; $4b34: $74
	ld   e, b                                        ; $4b35: $58
	ld   d, d                                        ; $4b36: $52
	ld   [hl], h                                     ; $4b37: $74
	ld   [bc], a                                     ; $4b38: $02
	inc  [hl]                                        ; $4b39: $34
	ld   h, e                                        ; $4b3a: $63
	sub  a                                           ; $4b3b: $97
	ld   a, b                                        ; $4b3c: $78
	ld   d, d                                        ; $4b3d: $52
	ld   sp, hl                                      ; $4b3e: $f9
	dec  c                                           ; $4b3f: $0d
	nop                                              ; $4b40: $00
	ld   a, [bc]                                     ; $4b41: $0a
	add  hl, de                                      ; $4b42: $19
	dec  b                                           ; $4b43: $05
	ld   [bc], a                                     ; $4b44: $02
	ld   a, l                                        ; $4b45: $7d
	ld   d, d                                        ; $4b46: $52
	nop                                              ; $4b47: $00
	nop                                              ; $4b48: $00
	ld   [hl], a                                     ; $4b49: $77
	ld   d, h                                        ; $4b4a: $54
	ld   h, l                                        ; $4b4b: $65
	sub  [hl]                                        ; $4b4c: $96
	ld   d, h                                        ; $4b4d: $54
	ld   e, c                                        ; $4b4e: $59
	ld   a, b                                        ; $4b4f: $78
	nop                                              ; $4b50: $00
	ld   bc, $ac07                                   ; $4b51: $01 $07 $ac
	ld   bc, $0302                                   ; $4b54: $01 $02 $03
	ld   bc, $2000                                   ; $4b57: $01 $00 $20
	nop                                              ; $4b5a: $00
	rlca                                             ; $4b5b: $07
	ld   c, $02                                      ; $4b5c: $0e $02
	ld   [bc], a                                     ; $4b5e: $02
	inc  bc                                          ; $4b5f: $03
	ld   bc, $2001                                   ; $4b60: $01 $01 $20
	nop                                              ; $4b63: $00
	ld   b, $9b                                      ; $4b64: $06 $9b
	ld   [bc], a                                     ; $4b66: $02
	rrca                                             ; $4b67: $0f
	nop                                              ; $4b68: $00
	ld   bc, $7d01                                   ; $4b69: $01 $01 $7d
	ld   d, d                                        ; $4b6c: $52
	sbc  a                                           ; $4b6d: $9f
	sbc  l                                           ; $4b6e: $9d
	ld   e, c                                        ; $4b6f: $59
	sbc  b                                           ; $4b70: $98
	adc  h                                           ; $4b71: $8c
	ld   h, l                                        ; $4b72: $65
	ld   l, l                                        ; $4b73: $6d
	sbc  a                                           ; $4b74: $9f
	dec  c                                           ; $4b75: $0d
	nop                                              ; $4b76: $00
	ld   a, [bc]                                     ; $4b77: $0a
	inc  e                                           ; $4b78: $1c
	ld   [bc], a                                     ; $4b79: $02
	ld   bc, $1d01                                   ; $4b7a: $01 $01 $1d
	ld   b, b                                        ; $4b7d: $40
	ld   [de], a                                     ; $4b7e: $12
	inc  bc                                          ; $4b7f: $03
	ld   [de], a                                     ; $4b80: $12
	ld   bc, $2802                                   ; $4b81: $01 $02 $28
	nop                                              ; $4b84: $00
	ld   bc, $9850                                   ; $4b85: $01 $50 $98
	ld   e, d                                        ; $4b88: $5a
	halt                                             ; $4b89: $76
	ld   d, h                                        ; $4b8a: $54
	sbc  a                                           ; $4b8b: $9f
	dec  c                                           ; $4b8c: $0d
	ld   a, b                                        ; $4b8d: $78
	ld   e, c                                        ; $4b8e: $59
	ld   a, b                                        ; $4b8f: $78
	ld   e, c                                        ; $4b90: $59
	sbc  [hl]                                        ; $4b91: $9e
	dec  b                                           ; $4b92: $05
	and  $05                                         ; $4b93: $e6 $05
	rst  $20                                         ; $4b95: $e7
	inc  b                                           ; $4b96: $04
	jr   nz, jr_05b_4c0e                             ; $4b97: $20 $75

	ld   h, a                                        ; $4b99: $67
	sbc  l                                           ; $4b9a: $9d
	ld   a, e                                        ; $4b9b: $7b
	sbc  a                                           ; $4b9c: $9f
	dec  c                                           ; $4b9d: $0d
	nop                                              ; $4b9e: $00
	ld   a, [bc]                                     ; $4b9f: $0a
	dec  b                                           ; $4ba0: $05
	add  b                                           ; $4ba1: $80
	jr   nz, @+$03                                   ; $4ba2: $20 $01

	ld   bc, $0500                                   ; $4ba4: $01 $00 $05
	ld   b, b                                        ; $4ba7: $40
	ld   l, h                                        ; $4ba8: $6c
	ld   [bc], a                                     ; $4ba9: $02
	nop                                              ; $4baa: $00
	nop                                              ; $4bab: $00
	ld   bc, $9a6b                                   ; $4bac: $01 $6b $9a
	ld   [hl], l                                     ; $4baf: $75
	ld   a, l                                        ; $4bb0: $7d
	sbc  [hl]                                        ; $4bb1: $9e
	sbc  l                                           ; $4bb2: $9d
	ld   l, l                                        ; $4bb3: $6d
	ld   e, l                                        ; $4bb4: $5d
	ld   h, l                                        ; $4bb5: $65
	ld   a, l                                        ; $4bb6: $7d
	dec  c                                           ; $4bb7: $0d
	ld   h, c                                        ; $4bb8: $61
	sbc  d                                           ; $4bb9: $9a
	ld   [hl], l                                     ; $4bba: $75
	rst  $38                                         ; $4bbb: $ff
	rst  $38                                         ; $4bbc: $ff
	dec  c                                           ; $4bbd: $0d
	nop                                              ; $4bbe: $00
	ld   a, [bc]                                     ; $4bbf: $0a
	dec  c                                           ; $4bc0: $0d
	nop                                              ; $4bc1: $00
	nop                                              ; $4bc2: $00
	rrca                                             ; $4bc3: $0f
	nop                                              ; $4bc4: $00
	ld   bc, $1e09                                   ; $4bc5: $01 $09 $1e
	nop                                              ; $4bc8: $00
	rrca                                             ; $4bc9: $0f
	nop                                              ; $4bca: $00
	ld   bc, $7701                                   ; $4bcb: $01 $01 $77
	ld   d, h                                        ; $4bce: $54
	ld   h, l                                        ; $4bcf: $65
	sub  [hl]                                        ; $4bd0: $96
	ld   d, h                                        ; $4bd1: $54
	ld   e, c                                        ; $4bd2: $59
	ld   a, b                                        ; $4bd3: $78
	db   $fc                                         ; $4bd4: $fc
	sbc  a                                           ; $4bd5: $9f
	dec  c                                           ; $4bd6: $0d
	ld   [bc], a                                     ; $4bd7: $02
	sbc  l                                           ; $4bd8: $9d
	ld   [hl], c                                     ; $4bd9: $71
	ld   l, a                                        ; $4bda: $6f
	sub  c                                           ; $4bdb: $91
	ld   e, b                                        ; $4bdc: $58
	ld   d, h                                        ; $4bdd: $54
	ld   e, c                                        ; $4bde: $59
	ld   a, b                                        ; $4bdf: $78
	db   $fc                                         ; $4be0: $fc
	sbc  a                                           ; $4be1: $9f
	dec  c                                           ; $4be2: $0d
	nop                                              ; $4be3: $00
	ld   a, [bc]                                     ; $4be4: $0a
	inc  e                                           ; $4be5: $1c
	ld   [bc], a                                     ; $4be6: $02
	ld   [bc], a                                     ; $4be7: $02
	ld   [bc], a                                     ; $4be8: $02
	dec  e                                           ; $4be9: $1d
	ld   b, b                                        ; $4bea: $40
	ld   [de], a                                     ; $4beb: $12
	inc  bc                                          ; $4bec: $03
	ld   [de], a                                     ; $4bed: $12
	ld   bc, $2903                                   ; $4bee: $01 $03 $29
	nop                                              ; $4bf1: $00
	ld   bc, $9704                                   ; $4bf2: $01 $04 $97
	ld   [bc], a                                     ; $4bf5: $02
	jp   $9e7d                                       ; $4bf6: $c3 $7d $9e


	ld   [bc], a                                     ; $4bf9: $02
	jr   nz, @+$04                                   ; $4bfa: $20 $02

	sbc  l                                           ; $4bfc: $9d
	ld   bc, $7d07                                   ; $4bfd: $01 $07 $7d
	ld   d, d                                        ; $4c00: $52
	ld   bc, $7508                                   ; $4c01: $01 $08 $75
	ld   h, l                                        ; $4c04: $65
	sub  l                                           ; $4c05: $95
	ld   a, [$000d]                                  ; $4c06: $fa $0d $00
	dec  b                                           ; $4c09: $05
	ld   b, b                                        ; $4c0a: $40
	ld   c, c                                        ; $4c0b: $49
	ld   [bc], a                                     ; $4c0c: $02
	nop                                              ; $4c0d: $00

jr_05b_4c0e:
	nop                                              ; $4c0e: $00
	ld   bc, $599d                                   ; $4c0f: $01 $9d $59
	sbc  b                                           ; $4c12: $98
	adc  h                                           ; $4c13: $8c
	ld   h, l                                        ; $4c14: $65
	ld   l, l                                        ; $4c15: $6d
	ld   a, e                                        ; $4c16: $7b
	ld   a, [$9165]                                  ; $4c17: $fa $65 $91
	add  a                                           ; $4c1a: $87
	ld   [hl], c                                     ; $4c1b: $71
	ld   l, l                                        ; $4c1c: $6d
	sub  a                                           ; $4c1d: $97
	dec  c                                           ; $4c1e: $0d
	nop                                              ; $4c1f: $00
	dec  b                                           ; $4c20: $05
	ld   b, b                                        ; $4c21: $40
	ld   c, a                                        ; $4c22: $4f
	ld   bc, $0001                                   ; $4c23: $01 $01 $00
	ld   bc, $6e6d                                   ; $4c26: $01 $6d $6e
	ld   h, [hl]                                     ; $4c29: $66
	sub  c                                           ; $4c2a: $91
	ld   e, b                                        ; $4c2b: $58
	ld   e, e                                        ; $4c2c: $5b
	adc  h                                           ; $4c2d: $8c
	ld   l, c                                        ; $4c2e: $69
	and  c                                           ; $4c2f: $a1
	ld   h, c                                        ; $4c30: $61
	halt                                             ; $4c31: $76
	sub  [hl]                                        ; $4c32: $96
	ld   a, [$000d]                                  ; $4c33: $fa $0d $00
	ld   a, [bc]                                     ; $4c36: $0a
	ld   bc, $599d                                   ; $4c37: $01 $9d $59
	sbc  b                                           ; $4c3a: $98
	adc  h                                           ; $4c3b: $8c
	ld   h, l                                        ; $4c3c: $65
	ld   l, l                                        ; $4c3d: $6d
	ld   a, e                                        ; $4c3e: $7b
	sbc  a                                           ; $4c3f: $9f
	dec  c                                           ; $4c40: $0d
	ld   [hl], l                                     ; $4c41: $75
	ld   a, l                                        ; $4c42: $7d
	sbc  [hl]                                        ; $4c43: $9e
	inc  bc                                          ; $4c44: $03
	add  e                                           ; $4c45: $83
	dec  b                                           ; $4c46: $05
	dec  c                                           ; $4c47: $0d
	rst  $38                                         ; $4c48: $ff
	rst  $38                                         ; $4c49: $ff
	dec  c                                           ; $4c4a: $0d
	nop                                              ; $4c4b: $00
	ld   a, [bc]                                     ; $4c4c: $0a
	dec  c                                           ; $4c4d: $0d
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	rrca                                             ; $4c50: $0f
	nop                                              ; $4c51: $00
	ld   bc, $1e09                                   ; $4c52: $01 $09 $1e
	nop                                              ; $4c55: $00
	inc  e                                           ; $4c56: $1c
	ld   [bc], a                                     ; $4c57: $02
	ld   [bc], a                                     ; $4c58: $02
	ld   [bc], a                                     ; $4c59: $02
	dec  e                                           ; $4c5a: $1d
	ld   b, b                                        ; $4c5b: $40
	ld   [de], a                                     ; $4c5c: $12
	inc  bc                                          ; $4c5d: $03
	ld   [de], a                                     ; $4c5e: $12
	ld   bc, $2902                                   ; $4c5f: $01 $02 $29
	nop                                              ; $4c62: $00
	ld   bc, $599d                                   ; $4c63: $01 $9d $59
	ld   [hl], c                                     ; $4c66: $71
	ld   l, l                                        ; $4c67: $6d
	sub  a                                           ; $4c68: $97
	inc  b                                           ; $4c69: $04
	sub  a                                           ; $4c6a: $97
	ld   [bc], a                                     ; $4c6b: $02
	jp   Jump_05b_6378                               ; $4c6c: $c3 $78 $63


	ld   d, d                                        ; $4c6f: $52
	ld   a, [$000d]                                  ; $4c70: $fa $0d $00
	dec  b                                           ; $4c73: $05
	ld   b, b                                        ; $4c74: $40
	ld   c, c                                        ; $4c75: $49
	ld   [bc], a                                     ; $4c76: $02
	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	ld   bc, $9165                                   ; $4c79: $01 $65 $91
	add  a                                           ; $4c7c: $87
	ld   [hl], c                                     ; $4c7d: $71
	ld   l, l                                        ; $4c7e: $6d
	sub  a                                           ; $4c7f: $97
	ld   l, l                                        ; $4c80: $6d
	ld   l, [hl]                                     ; $4c81: $6e
	ld   h, [hl]                                     ; $4c82: $66
	sub  c                                           ; $4c83: $91
	dec  c                                           ; $4c84: $0d
	nop                                              ; $4c85: $00
	dec  b                                           ; $4c86: $05
	ld   b, b                                        ; $4c87: $40
	ld   c, a                                        ; $4c88: $4f
	ld   bc, $0001                                   ; $4c89: $01 $01 $00
	ld   bc, $5b58                                   ; $4c8c: $01 $58 $5b
	adc  h                                           ; $4c8f: $8c
	ld   l, c                                        ; $4c90: $69
	and  c                                           ; $4c91: $a1
	ld   [bc], a                                     ; $4c92: $02
	jp   $9f96                                       ; $4c93: $c3 $96 $9f


	dec  c                                           ; $4c96: $0d
	nop                                              ; $4c97: $00
	ld   a, [bc]                                     ; $4c98: $0a
	ld   bc, $599d                                   ; $4c99: $01 $9d $59
	sbc  b                                           ; $4c9c: $98
	adc  h                                           ; $4c9d: $8c
	ld   h, l                                        ; $4c9e: $65
	ld   l, l                                        ; $4c9f: $6d
	ld   a, e                                        ; $4ca0: $7b
	sbc  a                                           ; $4ca1: $9f
	dec  c                                           ; $4ca2: $0d
	ld   [hl], l                                     ; $4ca3: $75
	ld   a, l                                        ; $4ca4: $7d
	sbc  [hl]                                        ; $4ca5: $9e
	inc  bc                                          ; $4ca6: $03
	add  e                                           ; $4ca7: $83
	dec  b                                           ; $4ca8: $05
	dec  c                                           ; $4ca9: $0d
	rst  $38                                         ; $4caa: $ff
	rst  $38                                         ; $4cab: $ff
	dec  c                                           ; $4cac: $0d
	nop                                              ; $4cad: $00
	ld   a, [bc]                                     ; $4cae: $0a
	dec  c                                           ; $4caf: $0d
	nop                                              ; $4cb0: $00
	nop                                              ; $4cb1: $00
	rrca                                             ; $4cb2: $0f
	nop                                              ; $4cb3: $00
	ld   bc, $1e09                                   ; $4cb4: $01 $09 $1e
	nop                                              ; $4cb7: $00
	nop                                              ; $4cb8: $00
	inc  e                                           ; $4cb9: $1c
	ld   bc, $0000                                   ; $4cba: $01 $00 $00
	ld   [bc], a                                     ; $4cbd: $02
	ld   bc, $9750                                   ; $4cbe: $01 $50 $97
	sbc  [hl]                                        ; $4cc1: $9e
	ld   [$6300], sp                                 ; $4cc2: $08 $00 $63
	and  c                                           ; $4cc5: $a1
	sbc  a                                           ; $4cc6: $9f
	dec  c                                           ; $4cc7: $0d
	ld   [hl], a                                     ; $4cc8: $77
	ld   d, h                                        ; $4cc9: $54
	ld   h, l                                        ; $4cca: $65
	ld   l, l                                        ; $4ccb: $6d
	and  c                                           ; $4ccc: $a1
	ld   [hl], l                                     ; $4ccd: $75
	ld   h, a                                        ; $4cce: $67
	ld   e, c                                        ; $4ccf: $59
	ld   sp, hl                                      ; $4cd0: $f9
	dec  c                                           ; $4cd1: $0d
	nop                                              ; $4cd2: $00
	ld   a, [bc]                                     ; $4cd3: $0a
	rrca                                             ; $4cd4: $0f
	nop                                              ; $4cd5: $00
	ld   bc, $6301                                   ; $4cd6: $01 $01 $63
	ld   e, l                                        ; $4cd9: $5d
	sub  a                                           ; $4cda: $97
	ld   h, e                                        ; $4cdb: $63
	and  c                                           ; $4cdc: $a1
	rst  $38                                         ; $4cdd: $ff
	rst  $38                                         ; $4cde: $ff
	dec  c                                           ; $4cdf: $0d
	inc  b                                           ; $4ce0: $04
	ld   l, l                                        ; $4ce1: $6d
	ld   a, c                                        ; $4ce2: $79
	ld   [bc], a                                     ; $4ce3: $02
	dec  h                                           ; $4ce4: $25
	ld   [bc], a                                     ; $4ce5: $02
	ld   a, e                                        ; $4ce6: $7b
	ld   d, d                                        ; $4ce7: $52
	ld   a, h                                        ; $4ce8: $7c
	ld   e, a                                        ; $4ce9: $5f
	ld   d, d                                        ; $4cea: $52
	ld   h, c                                        ; $4ceb: $61
	and  b                                           ; $4cec: $a0
	dec  c                                           ; $4ced: $0d
	ld   [hl], d                                     ; $4cee: $72
	ld   e, a                                        ; $4cef: $5f
	ld   [hl], h                                     ; $4cf0: $74
	adc  c                                           ; $4cf1: $89
	ld   h, l                                        ; $4cf2: $65
	ld   d, d                                        ; $4cf3: $52
	and  c                                           ; $4cf4: $a1
	ld   [hl], l                                     ; $4cf5: $75
	ld   h, a                                        ; $4cf6: $67
	ld   e, a                                        ; $4cf7: $5f
	ld   [hl], a                                     ; $4cf8: $77
	rst  $38                                         ; $4cf9: $ff
	rst  $38                                         ; $4cfa: $ff
	dec  c                                           ; $4cfb: $0d
	nop                                              ; $4cfc: $00
	ld   a, [bc]                                     ; $4cfd: $0a
	inc  e                                           ; $4cfe: $1c
	ld   bc, $0101                                   ; $4cff: $01 $01 $01
	ld   bc, $5656                                   ; $4d02: $01 $56 $56
	sbc  [hl]                                        ; $4d05: $9e
	ld   d, d                                        ; $4d06: $52
	ld   d, d                                        ; $4d07: $52
	ld   [hl], l                                     ; $4d08: $75
	ld   h, a                                        ; $4d09: $67
	sub  [hl]                                        ; $4d0a: $96
	sbc  a                                           ; $4d0b: $9f
	dec  c                                           ; $4d0c: $0d
	ld   l, e                                        ; $4d0d: $6b
	sbc  d                                           ; $4d0e: $9a
	ld   h, [hl]                                     ; $4d0f: $66
	sub  c                                           ; $4d10: $91
	sbc  [hl]                                        ; $4d11: $9e
	inc  b                                           ; $4d12: $04
	dec  bc                                          ; $4d13: $0b
	inc  b                                           ; $4d14: $04
	rra                                              ; $4d15: $1f
	ld   a, c                                        ; $4d16: $79
	dec  b                                           ; $4d17: $05
	ld   l, d                                        ; $4d18: $6a
	inc  b                                           ; $4d19: $04
	dec  de                                          ; $4d1a: $1b
	dec  c                                           ; $4d1b: $0d
	ld   h, l                                        ; $4d1c: $65
	adc  h                                           ; $4d1d: $8c
	ld   h, l                                        ; $4d1e: $65
	sub  l                                           ; $4d1f: $95
	ld   d, h                                        ; $4d20: $54
	ld   e, c                                        ; $4d21: $59
	sbc  a                                           ; $4d22: $9f
	dec  c                                           ; $4d23: $0d
	nop                                              ; $4d24: $00
	ld   a, [bc]                                     ; $4d25: $0a
	dec  c                                           ; $4d26: $0d
	nop                                              ; $4d27: $00
	nop                                              ; $4d28: $00
	rrca                                             ; $4d29: $0f
	nop                                              ; $4d2a: $00
	ld   bc, $9d23                                   ; $4d2b: $01 $23 $9d
	inc  e                                           ; $4d2e: $1c
	ld   bc, $0000                                   ; $4d2f: $01 $00 $00
	ld   bc, $9166                                   ; $4d32: $01 $66 $91
	sbc  [hl]                                        ; $4d35: $9e
	ld   a, l                                        ; $4d36: $7d
	ld   h, [hl]                                     ; $4d37: $66
	adc  a                                           ; $4d38: $8f
	adc  h                                           ; $4d39: $8c
	ld   h, l                                        ; $4d3a: $65
	sub  l                                           ; $4d3b: $95
	ld   d, h                                        ; $4d3c: $54
	sbc  a                                           ; $4d3d: $9f
	dec  c                                           ; $4d3e: $0d
	nop                                              ; $4d3f: $00
	ld   a, [bc]                                     ; $4d40: $0a
	ld   a, [de]                                     ; $4d41: $1a
	ld   bc, $a507                                   ; $4d42: $01 $07 $a5
	nop                                              ; $4d45: $00
	ld   [bc], a                                     ; $4d46: $02
	inc  b                                           ; $4d47: $04
	ld   bc, $2002                                   ; $4d48: $01 $02 $20
	nop                                              ; $4d4b: $00
	rlca                                             ; $4d4c: $07
	ret  nc                                          ; $4d4d: $d0

	nop                                              ; $4d4e: $00
	ld   [bc], a                                     ; $4d4f: $02
	inc  b                                           ; $4d50: $04
	ld   bc, $2001                                   ; $4d51: $01 $01 $20
	nop                                              ; $4d54: $00
	rlca                                             ; $4d55: $07
	rst  $30                                         ; $4d56: $f7
	nop                                              ; $4d57: $00
	ld   [bc], a                                     ; $4d58: $02
	inc  b                                           ; $4d59: $04
	ld   bc, $2000                                   ; $4d5a: $01 $00 $20
	nop                                              ; $4d5d: $00
	inc  e                                           ; $4d5e: $1c
	ld   bc, $0101                                   ; $4d5f: $01 $01 $01
	dec  e                                           ; $4d62: $1d
	ld   b, b                                        ; $4d63: $40
	ld   de, $1103                                   ; $4d64: $11 $03 $11
	ld   bc, $2803                                   ; $4d67: $01 $03 $28
	nop                                              ; $4d6a: $00
	ld   bc, $0008                                   ; $4d6b: $01 $08 $00
	ld   h, e                                        ; $4d6e: $63
	and  c                                           ; $4d6f: $a1
	sbc  [hl]                                        ; $4d70: $9e
	dec  c                                           ; $4d71: $0d
	ld   h, a                                        ; $4d72: $67
	ld   h, d                                        ; $4d73: $62
	ld   d, d                                        ; $4d74: $52
	ld   h, [hl]                                     ; $4d75: $66
	sub  c                                           ; $4d76: $91
	ld   a, b                                        ; $4d77: $78
	ld   d, d                                        ; $4d78: $52
	ld   [hl], l                                     ; $4d79: $75
	ld   h, a                                        ; $4d7a: $67
	ld   e, c                                        ; $4d7b: $59
	ld   a, [$000d]                                  ; $4d7c: $fa $0d $00
	ld   a, [bc]                                     ; $4d7f: $0a
	dec  b                                           ; $4d80: $05
	add  b                                           ; $4d81: $80
	dec  c                                           ; $4d82: $0d
	ld   bc, $0001                                   ; $4d83: $01 $01 $00
	ld   b, $21                                      ; $4d86: $06 $21
	ld   bc, $011c                                   ; $4d88: $01 $1c $01
	nop                                              ; $4d8b: $00
	nop                                              ; $4d8c: $00
	dec  e                                           ; $4d8d: $1d
	ld   b, b                                        ; $4d8e: $40
	ld   de, $1103                                   ; $4d8f: $11 $03 $11
	ld   bc, $2801                                   ; $4d92: $01 $01 $28
	nop                                              ; $4d95: $00
	ld   bc, $0008                                   ; $4d96: $01 $08 $00
	ld   h, e                                        ; $4d99: $63
	and  c                                           ; $4d9a: $a1
	sbc  [hl]                                        ; $4d9b: $9e
	dec  c                                           ; $4d9c: $0d
	ld   e, a                                        ; $4d9d: $5f
	ld   [hl], c                                     ; $4d9e: $71
	ld   h, c                                        ; $4d9f: $61
	ld   d, h                                        ; $4da0: $54
	ld   d, d                                        ; $4da1: $52
	ld   d, d                                        ; $4da2: $52
	ld   e, c                                        ; $4da3: $59
	and  c                                           ; $4da4: $a1
	ld   h, [hl]                                     ; $4da5: $66
	ld   [hl], l                                     ; $4da6: $75
	ld   h, a                                        ; $4da7: $67
	sub  [hl]                                        ; $4da8: $96
	sbc  a                                           ; $4da9: $9f
	dec  c                                           ; $4daa: $0d
	nop                                              ; $4dab: $00
	ld   a, [bc]                                     ; $4dac: $0a
	ld   b, $21                                      ; $4dad: $06 $21
	ld   bc, $011c                                   ; $4daf: $01 $1c $01
	inc  b                                           ; $4db2: $04
	inc  b                                           ; $4db3: $04
	dec  e                                           ; $4db4: $1d
	ld   b, b                                        ; $4db5: $40
	ld   de, $1103                                   ; $4db6: $11 $03 $11
	ld   bc, $2902                                   ; $4db9: $01 $02 $29
	nop                                              ; $4dbc: $00
	ld   bc, $5490                                   ; $4dbd: $01 $90 $54
	ld   l, a                                        ; $4dc0: $6f
	sub  l                                           ; $4dc1: $95
	ld   [hl], c                                     ; $4dc2: $71
	halt                                             ; $4dc3: $76
	ld   e, d                                        ; $4dc4: $5a
	and  c                                           ; $4dc5: $a1
	ld   a, [hl]                                     ; $4dc6: $7e
	ld   [hl], c                                     ; $4dc7: $71
	ld   l, l                                        ; $4dc8: $6d
	adc  c                                           ; $4dc9: $89
	ld   d, h                                        ; $4dca: $54
	ld   e, d                                        ; $4dcb: $5a
	dec  c                                           ; $4dcc: $0d
	ld   d, d                                        ; $4dcd: $52
	ld   d, d                                        ; $4dce: $52
	ld   [hl], l                                     ; $4dcf: $75
	ld   h, a                                        ; $4dd0: $67
	ld   a, e                                        ; $4dd1: $7b
	rst  $38                                         ; $4dd2: $ff
	rst  $38                                         ; $4dd3: $ff
	dec  c                                           ; $4dd4: $0d
	nop                                              ; $4dd5: $00
	ld   a, [bc]                                     ; $4dd6: $0a
	ld   b, $21                                      ; $4dd7: $06 $21
	ld   bc, $011c                                   ; $4dd9: $01 $1c $01
	ld   bc, $0101                                   ; $4ddc: $01 $01 $01
	ld   e, b                                        ; $4ddf: $58
	inc  b                                           ; $4de0: $04
	ld   a, e                                        ; $4de1: $7b
	sbc  d                                           ; $4de2: $9a
	ld   h, e                                        ; $4de3: $63
	adc  h                                           ; $4de4: $8c
	ld   [hl], l                                     ; $4de5: $75
	ld   h, l                                        ; $4de6: $65
	ld   l, l                                        ; $4de7: $6d
	sbc  a                                           ; $4de8: $9f
	dec  c                                           ; $4de9: $0d
	adc  h                                           ; $4dea: $8c
	ld   l, l                                        ; $4deb: $6d
	ld   d, d                                        ; $4dec: $52
	ld   [hl], d                                     ; $4ded: $72
	ld   [hl], l                                     ; $4dee: $75
	sub  b                                           ; $4def: $90
	ld   e, b                                        ; $4df0: $58
	ld   [bc], a                                     ; $4df1: $02
	ld   a, [de]                                     ; $4df2: $1a
	inc  bc                                          ; $4df3: $03
	ld   l, e                                        ; $4df4: $6b
	ld   h, l                                        ; $4df5: $65
	adc  h                                           ; $4df6: $8c
	ld   h, a                                        ; $4df7: $67
	sub  [hl]                                        ; $4df8: $96
	sbc  a                                           ; $4df9: $9f
	dec  c                                           ; $4dfa: $0d
	nop                                              ; $4dfb: $00
	ld   a, [bc]                                     ; $4dfc: $0a
	dec  c                                           ; $4dfd: $0d
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	rrca                                             ; $4e00: $0f
	nop                                              ; $4e01: $00
	ld   bc, $1e09                                   ; $4e02: $01 $09 $1e
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	ld   c, $2d                                      ; $4e07: $0e $2d
	inc  e                                           ; $4e09: $1c
	inc  b                                           ; $4e0a: $04
	ld   hl, $0209                                   ; $4e0b: $21 $09 $02
	ld   bc, $9e50                                   ; $4e0e: $01 $50 $9e
	ld   l, a                                        ; $4e11: $6f
	ld   d, d                                        ; $4e12: $52
	ld   [bc], a                                     ; $4e13: $02
	inc  de                                          ; $4e14: $13
	ld   l, a                                        ; $4e15: $6f
	sub  c                                           ; $4e16: $91
	and  c                                           ; $4e17: $a1
	sbc  a                                           ; $4e18: $9f
	dec  c                                           ; $4e19: $0d
	nop                                              ; $4e1a: $00
	ld   a, [bc]                                     ; $4e1b: $0a
	ld   bc, $567b                                   ; $4e1c: $01 $7b $56
	ld   a, e                                        ; $4e1f: $7b
	ld   d, [hl]                                     ; $4e20: $56
	sbc  [hl]                                        ; $4e21: $9e
	ld   h, c                                        ; $4e22: $61
	ld   a, h                                        ; $4e23: $7c
	add  e                                           ; $4e24: $83
	ld   e, l                                        ; $4e25: $5d
	ld   a, c                                        ; $4e26: $79
	ld   d, b                                        ; $4e27: $50
	ld   d, h                                        ; $4e28: $54
	ld   sp, hl                                      ; $4e29: $f9
	dec  c                                           ; $4e2a: $0d
	nop                                              ; $4e2b: $00
	ld   a, [bc]                                     ; $4e2c: $0a
	add  hl, de                                      ; $4e2d: $19
	dec  b                                           ; $4e2e: $05
	inc  bc                                          ; $4e2f: $03
	ld   h, a                                        ; $4e30: $67
	ld   h, d                                        ; $4e31: $62
	ld   e, l                                        ; $4e32: $5d
	ld   e, c                                        ; $4e33: $59
	sbc  l                                           ; $4e34: $9d
	ld   d, d                                        ; $4e35: $52
	ld   d, d                                        ; $4e36: $52
	sub  [hl]                                        ; $4e37: $96
	nop                                              ; $4e38: $00
	nop                                              ; $4e39: $00
	ld   d, b                                        ; $4e3a: $50
	adc  h                                           ; $4e3b: $8c
	sbc  b                                           ; $4e3c: $98
	sub  [hl]                                        ; $4e3d: $96
	ld   e, l                                        ; $4e3e: $5d
	ld   a, b                                        ; $4e3f: $78
	ld   d, d                                        ; $4e40: $52
	ld   a, e                                        ; $4e41: $7b
	nop                                              ; $4e42: $00
	ld   bc, $7252                                   ; $4e43: $01 $52 $72
	sub  b                                           ; $4e46: $90
	ld   a, h                                        ; $4e47: $7c
	ld   e, d                                        ; $4e48: $5a
	ld   d, d                                        ; $4e49: $52
	ld   d, d                                        ; $4e4a: $52
	ld   a, b                                        ; $4e4b: $78
	nop                                              ; $4e4c: $00
	ld   [bc], a                                     ; $4e4d: $02
	rlca                                             ; $4e4e: $07
	ld   h, l                                        ; $4e4f: $65
	nop                                              ; $4e50: $00
	ld   [bc], a                                     ; $4e51: $02
	inc  bc                                          ; $4e52: $03
	ld   bc, $2000                                   ; $4e53: $01 $00 $20
	nop                                              ; $4e56: $00
	rlca                                             ; $4e57: $07
	cp   e                                           ; $4e58: $bb
	nop                                              ; $4e59: $00
	ld   [bc], a                                     ; $4e5a: $02
	inc  bc                                          ; $4e5b: $03
	ld   bc, $2001                                   ; $4e5c: $01 $01 $20
	nop                                              ; $4e5f: $00
	rlca                                             ; $4e60: $07
	dec  bc                                          ; $4e61: $0b
	ld   bc, $0302                                   ; $4e62: $01 $02 $03
	ld   bc, $2002                                   ; $4e65: $01 $02 $20
	nop                                              ; $4e68: $00
	ld   b, $47                                      ; $4e69: $06 $47
	ld   bc, $000f                                   ; $4e6b: $01 $0f $00
	ld   bc, $6701                                   ; $4e6e: $01 $01 $67
	ld   h, d                                        ; $4e71: $62
	ld   e, l                                        ; $4e72: $5d
	ld   e, c                                        ; $4e73: $59
	sbc  l                                           ; $4e74: $9d
	ld   d, d                                        ; $4e75: $52
	ld   d, d                                        ; $4e76: $52
	sub  [hl]                                        ; $4e77: $96
	sbc  a                                           ; $4e78: $9f
	dec  c                                           ; $4e79: $0d
	nop                                              ; $4e7a: $00
	ld   a, [bc]                                     ; $4e7b: $0a
	inc  e                                           ; $4e7c: $1c
	inc  b                                           ; $4e7d: $04
	ld   h, $0e                                      ; $4e7e: $26 $0e
	dec  e                                           ; $4e80: $1d
	ld   b, b                                        ; $4e81: $40
	inc  d                                           ; $4e82: $14
	inc  bc                                          ; $4e83: $03
	inc  d                                           ; $4e84: $14
	ld   bc, $2803                                   ; $4e85: $01 $03 $28
	nop                                              ; $4e88: $00
	ld   bc, $f5dc                                   ; $4e89: $01 $dc $f5
	ret                                              ; $4e8c: $c9


	ld   a, c                                        ; $4e8d: $79
	ld   sp, hl                                      ; $4e8e: $f9
	dec  c                                           ; $4e8f: $0d
	nop                                              ; $4e90: $00
	inc  e                                           ; $4e91: $1c
	inc  b                                           ; $4e92: $04
	dec  h                                           ; $4e93: $25
	dec  c                                           ; $4e94: $0d
	ld   bc, $fb9d                                   ; $4e95: $01 $9d $fb
	ld   d, d                                        ; $4e98: $52
	sbc  [hl]                                        ; $4e99: $9e
	adc  c                                           ; $4e9a: $89
	adc  a                                           ; $4e9b: $8f
	sub  a                                           ; $4e9c: $97
	sbc  d                                           ; $4e9d: $9a
	ld   l, a                                        ; $4e9e: $6f
	sub  c                                           ; $4e9f: $91
	ld   [hl], c                                     ; $4ea0: $71
	ld   l, l                                        ; $4ea1: $6d
	ei                                               ; $4ea2: $fb
	ld   a, [$000d]                                  ; $4ea3: $fa $0d $00
	ld   a, [bc]                                     ; $4ea6: $0a
	ld   bc, $5d63                                   ; $4ea7: $01 $63 $5d
	sub  a                                           ; $4eaa: $97
	ld   a, c                                        ; $4eab: $79
	sub  b                                           ; $4eac: $90
	dec  c                                           ; $4ead: $0d
	adc  l                                           ; $4eae: $8d
	ld   l, c                                        ; $4eaf: $69
	ld   [hl], h                                     ; $4eb0: $74
	ld   h, c                                        ; $4eb1: $61
	sub  [hl]                                        ; $4eb2: $96
	ld   [hl], c                                     ; $4eb3: $71
	halt                                             ; $4eb4: $76
	sbc  a                                           ; $4eb5: $9f
	dec  c                                           ; $4eb6: $0d
	nop                                              ; $4eb7: $00
	ld   a, [bc]                                     ; $4eb8: $0a
	dec  c                                           ; $4eb9: $0d
	nop                                              ; $4eba: $00
	nop                                              ; $4ebb: $00
	rrca                                             ; $4ebc: $0f
	nop                                              ; $4ebd: $00
	ld   bc, $1e09                                   ; $4ebe: $01 $09 $1e
	nop                                              ; $4ec1: $00
	rrca                                             ; $4ec2: $0f
	nop                                              ; $4ec3: $00
	ld   bc, $5001                                   ; $4ec4: $01 $01 $50
	adc  h                                           ; $4ec7: $8c
	sbc  b                                           ; $4ec8: $98
	sub  [hl]                                        ; $4ec9: $96
	ld   e, l                                        ; $4eca: $5d
	ld   a, b                                        ; $4ecb: $78
	ld   d, d                                        ; $4ecc: $52
	ld   a, e                                        ; $4ecd: $7b
	rst  $38                                         ; $4ece: $ff
	rst  $38                                         ; $4ecf: $ff
	dec  c                                           ; $4ed0: $0d
	nop                                              ; $4ed1: $00
	ld   a, [bc]                                     ; $4ed2: $0a
	inc  e                                           ; $4ed3: $1c
	inc  b                                           ; $4ed4: $04
	daa                                              ; $4ed5: $27
	rrca                                             ; $4ed6: $0f
	dec  e                                           ; $4ed7: $1d
	ld   b, b                                        ; $4ed8: $40
	inc  d                                           ; $4ed9: $14
	inc  bc                                          ; $4eda: $03
	inc  d                                           ; $4edb: $14
	ld   bc, $2903                                   ; $4edc: $01 $03 $29
	nop                                              ; $4edf: $00
	ld   bc, $a16b                                   ; $4ee0: $01 $6b $a1
	ld   a, b                                        ; $4ee3: $78
	ld   h, c                                        ; $4ee4: $61
	halt                                             ; $4ee5: $76
	ld   a, b                                        ; $4ee6: $78
	ld   d, d                                        ; $4ee7: $52
	sub  b                                           ; $4ee8: $90
	and  c                                           ; $4ee9: $a1
	ld   a, [$590d]                                  ; $4eea: $fa $0d $59
	sbc  l                                           ; $4eed: $9d
	ld   d, d                                        ; $4eee: $52
	ld   d, d                                        ; $4eef: $52
	sub  b                                           ; $4ef0: $90
	and  c                                           ; $4ef1: $a1
	ld   a, [$000d]                                  ; $4ef2: $fa $0d $00
	dec  b                                           ; $4ef5: $05
	ld   b, b                                        ; $4ef6: $40
	ld   c, e                                        ; $4ef7: $4b
	ld   [bc], a                                     ; $4ef8: $02
	nop                                              ; $4ef9: $00
	nop                                              ; $4efa: $00
	dec  b                                           ; $4efb: $05
	ld   b, b                                        ; $4efc: $40
	ld   d, c                                        ; $4efd: $51
	ld   bc, $0001                                   ; $4efe: $01 $01 $00
	ld   bc, $526f                                   ; $4f01: $01 $6f $52
	ld   [bc], a                                     ; $4f04: $02
	inc  de                                          ; $4f05: $13
	ld   l, a                                        ; $4f06: $6f
	sub  c                                           ; $4f07: $91
	and  c                                           ; $4f08: $a1
	sbc  [hl]                                        ; $4f09: $9e
	xor  [hl]                                        ; $4f0a: $ae
	db   $eb                                         ; $4f0b: $eb
	and  l                                           ; $4f0c: $a5
	ld   a, [$000d]                                  ; $4f0d: $fa $0d $00
	ld   a, [bc]                                     ; $4f10: $0a
	nop                                              ; $4f11: $00
	rrca                                             ; $4f12: $0f
	nop                                              ; $4f13: $00
	ld   bc, $5201                                   ; $4f14: $01 $01 $52
	ld   [hl], d                                     ; $4f17: $72
	sub  b                                           ; $4f18: $90
	ld   a, h                                        ; $4f19: $7c
	ld   e, d                                        ; $4f1a: $5a
	ld   d, d                                        ; $4f1b: $52
	ld   d, d                                        ; $4f1c: $52
	ld   a, b                                        ; $4f1d: $78
	rst  $38                                         ; $4f1e: $ff
	rst  $38                                         ; $4f1f: $ff
	dec  c                                           ; $4f20: $0d
	nop                                              ; $4f21: $00
	ld   a, [bc]                                     ; $4f22: $0a
	inc  e                                           ; $4f23: $1c
	inc  b                                           ; $4f24: $04
	ld   h, $0e                                      ; $4f25: $26 $0e
	ld   bc, $546b                                   ; $4f27: $01 $6b $54
	ld   e, c                                        ; $4f2a: $59
	ld   a, b                                        ; $4f2b: $78
	rst  $38                                         ; $4f2c: $ff
	rst  $38                                         ; $4f2d: $ff
	dec  c                                           ; $4f2e: $0d
	ld   d, h                                        ; $4f2f: $54
	ei                                               ; $4f30: $fb
	and  c                                           ; $4f31: $a1
	rst  $38                                         ; $4f32: $ff
	rst  $38                                         ; $4f33: $ff
	ld   h, e                                        ; $4f34: $63
	ld   e, l                                        ; $4f35: $5d
	sub  a                                           ; $4f36: $97
	ld   a, c                                        ; $4f37: $79
	sub  b                                           ; $4f38: $90
	dec  c                                           ; $4f39: $0d
	ld   e, e                                        ; $4f3a: $5b
	ld   d, d                                        ; $4f3b: $52
	ld   [hl], h                                     ; $4f3c: $74
	ld   h, c                                        ; $4f3d: $61
	sub  [hl]                                        ; $4f3e: $96
	ld   [hl], c                                     ; $4f3f: $71
	halt                                             ; $4f40: $76
	sbc  a                                           ; $4f41: $9f
	dec  c                                           ; $4f42: $0d
	nop                                              ; $4f43: $00
	ld   a, [bc]                                     ; $4f44: $0a
	dec  c                                           ; $4f45: $0d
	nop                                              ; $4f46: $00
	nop                                              ; $4f47: $00
	rrca                                             ; $4f48: $0f
	nop                                              ; $4f49: $00
	ld   bc, $1e09                                   ; $4f4a: $01 $09 $1e
	nop                                              ; $4f4d: $00
	inc  e                                           ; $4f4e: $1c
	inc  b                                           ; $4f4f: $04
	ld   [hl+], a                                    ; $4f50: $22
	ld   a, [bc]                                     ; $4f51: $0a
	dec  e                                           ; $4f52: $1d
	ld   b, b                                        ; $4f53: $40
	inc  d                                           ; $4f54: $14
	inc  bc                                          ; $4f55: $03
	inc  d                                           ; $4f56: $14
	ld   bc, $2902                                   ; $4f57: $01 $02 $29
	nop                                              ; $4f5a: $00
	ld   bc, $5490                                   ; $4f5b: $01 $90 $54
	ld   d, d                                        ; $4f5e: $52
	ld   d, d                                        ; $4f5f: $52
	rst  $38                                         ; $4f60: $ff
	rst  $38                                         ; $4f61: $ff
	dec  c                                           ; $4f62: $0d
	ld   h, e                                        ; $4f63: $63
	ld   e, l                                        ; $4f64: $5d
	sub  a                                           ; $4f65: $97
	ld   a, c                                        ; $4f66: $79
	ld   e, e                                        ; $4f67: $5b
	ld   d, d                                        ; $4f68: $52
	ld   [hl], h                                     ; $4f69: $74
	adc  l                                           ; $4f6a: $8d
	sbc  c                                           ; $4f6b: $99
	sbc  a                                           ; $4f6c: $9f
	dec  c                                           ; $4f6d: $0d
	nop                                              ; $4f6e: $00
	ld   a, [bc]                                     ; $4f6f: $0a
	dec  c                                           ; $4f70: $0d
	nop                                              ; $4f71: $00
	nop                                              ; $4f72: $00
	rrca                                             ; $4f73: $0f
	nop                                              ; $4f74: $00
	ld   bc, $1e09                                   ; $4f75: $01 $09 $1e
	nop                                              ; $4f78: $00
	nop                                              ; $4f79: $00
	inc  b                                           ; $4f7a: $04
	add  b                                           ; $4f7b: $80
	ld   c, b                                        ; $4f7c: $48
	ld   bc, $2000                                   ; $4f7d: $01 $00 $20
	nop                                              ; $4f80: $00
	ld   c, $2f                                      ; $4f81: $0e $2f
	inc  e                                           ; $4f83: $1c
	dec  c                                           ; $4f84: $0d
	nop                                              ; $4f85: $00
	nop                                              ; $4f86: $00
	ld   [bc], a                                     ; $4f87: $02
	ld   bc, $9750                                   ; $4f88: $01 $50 $97
	sbc  [hl]                                        ; $4f8b: $9e
	ld   [$5d00], sp                                 ; $4f8c: $08 $00 $5d
	and  c                                           ; $4f8f: $a1
	sbc  a                                           ; $4f90: $9f
	dec  c                                           ; $4f91: $0d
	nop                                              ; $4f92: $00
	ld   a, [bc]                                     ; $4f93: $0a
	inc  e                                           ; $4f94: $1c
	dec  c                                           ; $4f95: $0d
	ld   bc, $0101                                   ; $4f96: $01 $01 $01
	ld   a, e                                        ; $4f99: $7b
	ld   d, [hl]                                     ; $4f9a: $56
	sbc  [hl]                                        ; $4f9b: $9e
	inc  b                                           ; $4f9c: $04
	dec  hl                                          ; $4f9d: $2b
	ld   [hl], c                                     ; $4f9e: $71
	ld   [hl], h                                     ; $4f9f: $74
	sbc  c                                           ; $4fa0: $99
	ld   sp, hl                                      ; $4fa1: $f9
	dec  c                                           ; $4fa2: $0d
	nop                                              ; $4fa3: $00
	ld   a, [bc]                                     ; $4fa4: $0a
	ld   bc, $a5a3                                   ; $4fa5: $01 $a3 $a5
	db   $ec                                         ; $4fa8: $ec
	cp   d                                           ; $4fa9: $ba
	ld   a, e                                        ; $4faa: $7b
	dec  c                                           ; $4fab: $0d
	ld   [bc], a                                     ; $4fac: $02
	rla                                              ; $4fad: $17
	ld   h, l                                        ; $4fae: $65
	ld   [bc], a                                     ; $4faf: $02
	sbc  b                                           ; $4fb0: $98
	and  b                                           ; $4fb1: $a0
	inc  bc                                          ; $4fb2: $03
	xor  h                                           ; $4fb3: $ac
	sbc  c                                           ; $4fb4: $99
	ld   a, h                                        ; $4fb5: $7c
	ld   a, c                                        ; $4fb6: $79
	sbc  [hl]                                        ; $4fb7: $9e
	inc  bc                                          ; $4fb8: $03
	ccf                                              ; $4fb9: $3f
	inc  bc                                          ; $4fba: $03
	cp   a                                           ; $4fbb: $bf
	ld   a, c                                        ; $4fbc: $79
	ld   a, b                                        ; $4fbd: $78
	sbc  c                                           ; $4fbe: $99
	dec  c                                           ; $4fbf: $0d
	sub  [hl]                                        ; $4fc0: $96
	ld   d, h                                        ; $4fc1: $54
	ld   a, b                                        ; $4fc2: $78
	db   $e4                                         ; $4fc3: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fc4: $cf
	and  b                                           ; $4fc5: $a0
	ld   h, e                                        ; $4fc6: $63
	ld   e, d                                        ; $4fc7: $5a
	ld   h, l                                        ; $4fc8: $65
	ld   [hl], h                                     ; $4fc9: $74
	ld   d, d                                        ; $4fca: $52
	ld   l, l                                        ; $4fcb: $6d
	sbc  l                                           ; $4fcc: $9d
	sbc  a                                           ; $4fcd: $9f
	dec  c                                           ; $4fce: $0d
	nop                                              ; $4fcf: $00
	ld   a, [bc]                                     ; $4fd0: $0a
	ld   bc, $6d50                                   ; $4fd1: $01 $50 $6d
	ld   h, l                                        ; $4fd4: $65
	ld   a, h                                        ; $4fd5: $7c
	ld   d, h                                        ; $4fd6: $54
	sbc  l                                           ; $4fd7: $9d
	ld   h, e                                        ; $4fd8: $63
	dec  b                                           ; $4fd9: $05
	jr   nz, jr_05b_5059                             ; $4fda: $20 $7d

	dec  c                                           ; $4fdc: $0d
	ld   e, b                                        ; $4fdd: $58
	adc  d                                           ; $4fde: $8a
	ld   d, [hl]                                     ; $4fdf: $56
	halt                                             ; $4fe0: $76
	ld   d, d                                        ; $4fe1: $52
	ld   [hl], h                                     ; $4fe2: $74
	cp   [hl]                                        ; $4fe3: $be
	push af                                          ; $4fe4: $f5
	ld   a, l                                        ; $4fe5: $7d
	ld   a, b                                        ; $4fe6: $78
	ld   d, d                                        ; $4fe7: $52
	sbc  l                                           ; $4fe8: $9d
	sub  [hl]                                        ; $4fe9: $96
	sbc  a                                           ; $4fea: $9f
	dec  c                                           ; $4feb: $0d
	ld   h, [hl]                                     ; $4fec: $66
	sub  c                                           ; $4fed: $91
	ld   d, b                                        ; $4fee: $50
	ld   a, e                                        ; $4fef: $7b
	sbc  a                                           ; $4ff0: $9f
	dec  c                                           ; $4ff1: $0d
	nop                                              ; $4ff2: $00
	ld   a, [bc]                                     ; $4ff3: $0a
	nop                                              ; $4ff4: $00
	nop                                              ; $4ff5: $00
	ld   d, $05                                      ; $4ff6: $16 $05
	rrca                                             ; $4ff8: $0f
	ld   b, $12                                      ; $4ff9: $06 $12
	ld   [bc], a                                     ; $4ffb: $02
	rlca                                             ; $4ffc: $07
	rst  ToBoot                                         ; $4ffd: $c7
	inc  b                                           ; $4ffe: $04
	inc  b                                           ; $4fff: $04
	add  b                                           ; $5000: $80
	ld   a, e                                        ; $5001: $7b
	ld   bc, $20ff                                   ; $5002: $01 $ff $20
	nop                                              ; $5005: $00
	ld   bc, $fb50                                   ; $5006: $01 $50 $fb
	ld   [hl], d                                     ; $5009: $72
	ld   e, c                                        ; $500a: $59
	sbc  d                                           ; $500b: $9a
	ld   l, l                                        ; $500c: $6d
	rst  $38                                         ; $500d: $ff
	rst  $38                                         ; $500e: $ff
	dec  c                                           ; $500f: $0d
	nop                                              ; $5010: $00
	ld   a, [bc]                                     ; $5011: $0a
	rrca                                             ; $5012: $0f
	nop                                              ; $5013: $00
	ld   bc, $0101                                   ; $5014: $01 $01 $01
	inc  bc                                          ; $5017: $03
	xor  h                                           ; $5018: $ac
	push af                                          ; $5019: $f5
	bit  4, e                                        ; $501a: $cb $63
	and  c                                           ; $501c: $a1
	ld   l, [hl]                                     ; $501d: $6e
	rst  $38                                         ; $501e: $ff
	rst  $38                                         ; $501f: $ff
	ld   bc, $0d04                                   ; $5020: $01 $04 $0d
	nop                                              ; $5023: $00
	ld   a, [bc]                                     ; $5024: $0a
	add  hl, de                                      ; $5025: $19
	dec  b                                           ; $5026: $05
	ld   [bc], a                                     ; $5027: $02
	ld   [bc], a                                     ; $5028: $02
	and  b                                           ; $5029: $a0
	ld   [hl], e                                     ; $502a: $73
	ld   e, l                                        ; $502b: $5d
	nop                                              ; $502c: $00
	nop                                              ; $502d: $00
	dec  b                                           ; $502e: $05
	ld   d, $6f                                      ; $502f: $16 $6f
	ld   [bc], a                                     ; $5031: $02
	ld   d, e                                        ; $5032: $53
	sbc  c                                           ; $5033: $99
	nop                                              ; $5034: $00
	ld   bc, $a507                                   ; $5035: $01 $07 $a5
	nop                                              ; $5038: $00
	ld   [bc], a                                     ; $5039: $02
	inc  bc                                          ; $503a: $03
	ld   bc, $2000                                   ; $503b: $01 $00 $20
	nop                                              ; $503e: $00
	rlca                                             ; $503f: $07
	ld   d, l                                        ; $5040: $55
	nop                                              ; $5041: $00
	ld   [bc], a                                     ; $5042: $02
	inc  bc                                          ; $5043: $03
	ld   bc, $2001                                   ; $5044: $01 $01 $20
	nop                                              ; $5047: $00
	ld   b, $7c                                      ; $5048: $06 $7c
	nop                                              ; $504a: $00
	rrca                                             ; $504b: $0f
	nop                                              ; $504c: $00
	ld   bc, $0101                                   ; $504d: $01 $01 $01
	inc  bc                                          ; $5050: $03
	sub  d                                           ; $5051: $92
	ld   [hl], c                                     ; $5052: $71
	ld   a, a                                        ; $5053: $7f
	sbc  b                                           ; $5054: $98
	sbc  [hl]                                        ; $5055: $9e
	ld   a, h                                        ; $5056: $7c
	ld   l, h                                        ; $5057: $6c
	ld   e, e                                        ; $5058: $5b

jr_05b_5059:
	ld   a, l                                        ; $5059: $7d

Jump_05b_505a:
	pop  bc                                          ; $505a: $c1
	db   $e3                                         ; $505b: $e3
	ld   l, [hl]                                     ; $505c: $6e
	sub  [hl]                                        ; $505d: $96
	dec  c                                           ; $505e: $0d
	db   $10                                         ; $505f: $10
	ld   h, c                                        ; $5060: $61
	ld   h, c                                        ; $5061: $61
	ld   a, l                                        ; $5062: $7d
	ld   d, d                                        ; $5063: $52
	ld   h, e                                        ; $5064: $63
	ld   e, h                                        ; $5065: $5c
	sub  [hl]                                        ; $5066: $96
	ld   e, l                                        ; $5067: $5d
	ld   [bc], a                                     ; $5068: $02
	ld   d, e                                        ; $5069: $53
	sbc  e                                           ; $506a: $9b
	ld   d, h                                        ; $506b: $54
	ld   bc, $0d04                                   ; $506c: $01 $04 $0d
	nop                                              ; $506f: $00
	ld   a, [bc]                                     ; $5070: $0a
	nop                                              ; $5071: $00
	rrca                                             ; $5072: $0f
	ld   b, $14                                      ; $5073: $06 $14
	ld   bc, $a903                                   ; $5075: $01 $03 $a9
	ld   e, c                                        ; $5078: $59
	ld   l, e                                        ; $5079: $6b
	ld   h, c                                        ; $507a: $61
	ld   a, c                                        ; $507b: $79
	ld   d, d                                        ; $507c: $52
	sbc  c                                           ; $507d: $99
	ld   a, h                                        ; $507e: $7c
	ld   e, c                                        ; $507f: $59
	ld   sp, hl                                      ; $5080: $f9
	dec  c                                           ; $5081: $0d
	nop                                              ; $5082: $00
	ld   a, [bc]                                     ; $5083: $0a
	rrca                                             ; $5084: $0f
	nop                                              ; $5085: $00
	ld   bc, $0101                                   ; $5086: $01 $01 $01
	inc  bc                                          ; $5089: $03
	adc  h                                           ; $508a: $8c
	ld   l, b                                        ; $508b: $68
	ld   d, d                                        ; $508c: $52
	rst  $38                                         ; $508d: $ff
	rst  $38                                         ; $508e: $ff
	inc  bc                                          ; $508f: $03
	push de                                          ; $5090: $d5
	ld   h, b                                        ; $5091: $60
	sub  [hl]                                        ; $5092: $96
	ld   d, h                                        ; $5093: $54
	ld   a, [$0401]                                  ; $5094: $fa $01 $04
	dec  c                                           ; $5097: $0d
	nop                                              ; $5098: $00
	ld   a, [bc]                                     ; $5099: $0a
	nop                                              ; $509a: $00
	rrca                                             ; $509b: $0f
	nop                                              ; $509c: $00
	ld   bc, $0101                                   ; $509d: $01 $01 $01
	inc  bc                                          ; $50a0: $03
	sub  b                                           ; $50a1: $90
	ld   d, h                                        ; $50a2: $54
	inc  bc                                          ; $50a3: $03
	ld   l, h                                        ; $50a4: $6c
	ld   h, l                                        ; $50a5: $65
	ld   [bc], a                                     ; $50a6: $02
	and  b                                           ; $50a7: $a0
	ld   [hl], e                                     ; $50a8: $73
	ld   d, d                                        ; $50a9: $52
	ld   [hl], h                                     ; $50aa: $74
	adc  l                                           ; $50ab: $8d
	sub  [hl]                                        ; $50ac: $96
	ld   d, h                                        ; $50ad: $54
	ld   bc, $0d04                                   ; $50ae: $01 $04 $0d
	nop                                              ; $50b1: $00
	ld   a, [bc]                                     ; $50b2: $0a
	rlca                                             ; $50b3: $07
	add  hl, de                                      ; $50b4: $19
	ld   bc, $1603                                   ; $50b5: $01 $03 $16
	ld   bc, $22a0                                   ; $50b8: $01 $a0 $22
	nop                                              ; $50bb: $00
	rrca                                             ; $50bc: $0f
	ld   b, $16                                      ; $50bd: $06 $16
	ld   bc, $7192                                   ; $50bf: $01 $92 $71
	ld   a, a                                        ; $50c2: $7f
	cp   b                                           ; $50c3: $b8
	push hl                                          ; $50c4: $e5
	pop  af                                          ; $50c5: $f1
	ei                                               ; $50c6: $fb
	sub  [hl]                                        ; $50c7: $96
	sbc  b                                           ; $50c8: $98
	dec  c                                           ; $50c9: $0d
	ld   d, b                                        ; $50ca: $50
	ld   [hl], d                                     ; $50cb: $72
	ld   d, d                                        ; $50cc: $52
	sub  $ef                                         ; $50cd: $d6 $ef
	ld   a, c                                        ; $50cf: $79
	inc  b                                           ; $50d0: $04
	ld   b, l                                        ; $50d1: $45
	sbc  b                                           ; $50d2: $98
	ld   l, l                                        ; $50d3: $6d
	ld   d, d                                        ; $50d4: $52
	sub  [hl]                                        ; $50d5: $96
	ld   a, b                                        ; $50d6: $78
	rst  $38                                         ; $50d7: $ff
	rst  $38                                         ; $50d8: $ff
	dec  c                                           ; $50d9: $0d
	nop                                              ; $50da: $00
	ld   a, [bc]                                     ; $50db: $0a
	add  hl, de                                      ; $50dc: $19
	dec  b                                           ; $50dd: $05
	ld   bc, $c004                                   ; $50de: $01 $04 $c0
	inc  bc                                          ; $50e1: $03
	ld   a, l                                        ; $50e2: $7d
	ld   h, l                                        ; $50e3: $65
	ld   l, l                                        ; $50e4: $6d
	nop                                              ; $50e5: $00
	nop                                              ; $50e6: $00
	rlca                                             ; $50e7: $07
	db   $fd                                         ; $50e8: $fd
	nop                                              ; $50e9: $00
	ld   [bc], a                                     ; $50ea: $02
	inc  bc                                          ; $50eb: $03
	ld   bc, $2000                                   ; $50ec: $01 $00 $20
	nop                                              ; $50ef: $00
	ld   b, $19                                      ; $50f0: $06 $19
	ld   bc, $000f                                   ; $50f2: $01 $0f $00
	ld   bc, $0101                                   ; $50f5: $01 $01 $01
	inc  bc                                          ; $50f8: $03
	ld   l, e                                        ; $50f9: $6b
	sbc  e                                           ; $50fa: $9b
	ld   l, e                                        ; $50fb: $6b
	sbc  e                                           ; $50fc: $9b
	ld   [bc], a                                     ; $50fd: $02
	inc  l                                           ; $50fe: $2c
	ld   e, e                                        ; $50ff: $5b
	inc  bc                                          ; $5100: $03
	ld   h, l                                        ; $5101: $65
	ld   h, b                                        ; $5102: $60
	sub  [hl]                                        ; $5103: $96
	ld   d, h                                        ; $5104: $54
	rst  $38                                         ; $5105: $ff
	rst  $38                                         ; $5106: $ff
	ld   bc, $0d04                                   ; $5107: $01 $04 $0d
	db   $10                                         ; $510a: $10
	dec  c                                           ; $510b: $0d
	nop                                              ; $510c: $00
	ld   a, [bc]                                     ; $510d: $0a
	nop                                              ; $510e: $00
	rrca                                             ; $510f: $0f
	ld   b, $14                                      ; $5110: $06 $14
	ld   bc, $ffff                                   ; $5112: $01 $ff $ff
	ld   a, [$6b0d]                                  ; $5115: $fa $0d $6b
	ld   h, c                                        ; $5118: $61
	ld   a, c                                        ; $5119: $79
	inc  bc                                          ; $511a: $03
	xor  c                                           ; $511b: $a9
	ld   e, c                                        ; $511c: $59
	ld   d, d                                        ; $511d: $52
	sbc  c                                           ; $511e: $99
	ld   a, h                                        ; $511f: $7c
	ld   e, c                                        ; $5120: $59
	ld   sp, hl                                      ; $5121: $f9
	dec  c                                           ; $5122: $0d
	nop                                              ; $5123: $00
	ld   a, [bc]                                     ; $5124: $0a
	rrca                                             ; $5125: $0f
	nop                                              ; $5126: $00
	ld   bc, $0101                                   ; $5127: $01 $01 $01
	inc  bc                                          ; $512a: $03
	ld   [bc], a                                     ; $512b: $02
	and  c                                           ; $512c: $a1
	ld   [hl], e                                     ; $512d: $73
	ld   e, c                                        ; $512e: $59
	sbc  d                                           ; $512f: $9a
	ld   l, l                                        ; $5130: $6d
	ld   a, [$0401]                                  ; $5131: $fa $01 $04
	dec  c                                           ; $5134: $0d
	nop                                              ; $5135: $00
	ld   a, [bc]                                     ; $5136: $0a
	add  hl, de                                      ; $5137: $19
	dec  b                                           ; $5138: $05
	inc  bc                                          ; $5139: $03
	inc  bc                                          ; $513a: $03
	db   $db                                         ; $513b: $db
	ld   bc, $7614                                   ; $513c: $01 $14 $76
	ld   h, a                                        ; $513f: $67
	sbc  c                                           ; $5140: $99
	nop                                              ; $5141: $00
	nop                                              ; $5142: $00
	sub  b                                           ; $5143: $90
	ld   a, h                                        ; $5144: $7c
	adc  h                                           ; $5145: $8c
	ld   a, e                                        ; $5146: $7b
	and  b                                           ; $5147: $a0
	ld   h, a                                        ; $5148: $67
	sbc  c                                           ; $5149: $99
	nop                                              ; $514a: $00
	ld   bc, $d503                                   ; $514b: $01 $03 $d5
	ld   h, b                                        ; $514e: $60
	inc  bc                                          ; $514f: $03
	add  b                                           ; $5150: $80
	ld   h, a                                        ; $5151: $67
	nop                                              ; $5152: $00
	ld   [bc], a                                     ; $5153: $02
	rlca                                             ; $5154: $07
	ld   a, h                                        ; $5155: $7c
	ld   bc, $0302                                   ; $5156: $01 $02 $03
	ld   bc, $2000                                   ; $5159: $01 $00 $20
	nop                                              ; $515c: $00
	rlca                                             ; $515d: $07
	ld   b, c                                        ; $515e: $41
	ld   [bc], a                                     ; $515f: $02
	ld   [bc], a                                     ; $5160: $02
	inc  bc                                          ; $5161: $03
	ld   bc, $2001                                   ; $5162: $01 $01 $20
	nop                                              ; $5165: $00
	rlca                                             ; $5166: $07
	or   h                                           ; $5167: $b4
	ld   [bc], a                                     ; $5168: $02
	ld   [bc], a                                     ; $5169: $02
	inc  bc                                          ; $516a: $03
	ld   bc, $2002                                   ; $516b: $01 $02 $20
	nop                                              ; $516e: $00
	ld   b, $fe                                      ; $516f: $06 $fe
	ld   [bc], a                                     ; $5171: $02
	rrca                                             ; $5172: $0f
	nop                                              ; $5173: $00
	ld   bc, $0101                                   ; $5174: $01 $01 $01
	inc  bc                                          ; $5177: $03
	ld   h, c                                        ; $5178: $61
	ld   h, c                                        ; $5179: $61
	ld   a, l                                        ; $517a: $7d
	inc  bc                                          ; $517b: $03
	db   $db                                         ; $517c: $db
	ld   bc, $7614                                   ; $517d: $01 $14 $76
	rst  $38                                         ; $5180: $ff
	rst  $38                                         ; $5181: $ff
	ld   bc, $0d04                                   ; $5182: $01 $04 $0d
	nop                                              ; $5185: $00
	ld   a, [bc]                                     ; $5186: $0a
	ld   bc, $9e50                                   ; $5187: $01 $50 $9e
	ld   h, a                                        ; $518a: $67
	adc  l                                           ; $518b: $8d
	adc  h                                           ; $518c: $8c
	ld   l, c                                        ; $518d: $69
	and  c                                           ; $518e: $a1
	rst  $38                                         ; $518f: $ff
	rst  $38                                         ; $5190: $ff
	dec  c                                           ; $5191: $0d
	ld   [hl], a                                     ; $5192: $77
	ld   a, b                                        ; $5193: $78
	ld   l, l                                        ; $5194: $6d
	ld   e, c                                        ; $5195: $59
	inc  b                                           ; $5196: $04
	ld   b, l                                        ; $5197: $45
	ld   [hl], c                                     ; $5198: $71
	ld   [hl], h                                     ; $5199: $74
	sub  a                                           ; $519a: $97
	ld   [hl], c                                     ; $519b: $71
	ld   h, l                                        ; $519c: $65
	sub  c                                           ; $519d: $91
	sbc  c                                           ; $519e: $99
	and  c                                           ; $519f: $a1
	dec  c                                           ; $51a0: $0d
	ld   [hl], l                                     ; $51a1: $75
	ld   h, a                                        ; $51a2: $67
	ld   a, e                                        ; $51a3: $7b
	ld   sp, hl                                      ; $51a4: $f9
	dec  c                                           ; $51a5: $0d
	nop                                              ; $51a6: $00
	ld   a, [bc]                                     ; $51a7: $0a
	rrca                                             ; $51a8: $0f
	ld   b, $14                                      ; $51a9: $06 $14
	ld   bc, $f9a1                                   ; $51ab: $01 $a1 $f9
	db   $10                                         ; $51ae: $10
	ld   [$5900], sp                                 ; $51af: $08 $00 $59
	ld   sp, hl                                      ; $51b2: $f9
	dec  c                                           ; $51b3: $0d
	ld   d, b                                        ; $51b4: $50
	ld   l, l                                        ; $51b5: $6d
	ld   d, d                                        ; $51b6: $52
	ld   l, [hl]                                     ; $51b7: $6e
	sub  [hl]                                        ; $51b8: $96
	sbc  [hl]                                        ; $51b9: $9e
	xor  h                                           ; $51ba: $ac
	push af                                          ; $51bb: $f5
	bit  5, [hl]                                     ; $51bc: $cb $6e
	sub  [hl]                                        ; $51be: $96
	sbc  a                                           ; $51bf: $9f
	dec  c                                           ; $51c0: $0d
	ld   l, e                                        ; $51c1: $6b
	ld   h, c                                        ; $51c2: $61
	ld   [hl], l                                     ; $51c3: $75
	inc  b                                           ; $51c4: $04
	ld   c, c                                        ; $51c5: $49
	sub  d                                           ; $51c6: $92
	ld   [hl], c                                     ; $51c7: $71
	ld   [hl], h                                     ; $51c8: $74
	and  c                                           ; $51c9: $a1
	ld   l, [hl]                                     ; $51ca: $6e
	ld   sp, hl                                      ; $51cb: $f9
	dec  c                                           ; $51cc: $0d
	nop                                              ; $51cd: $00
	ld   a, [bc]                                     ; $51ce: $0a
	rrca                                             ; $51cf: $0f
	nop                                              ; $51d0: $00
	ld   bc, $ac01                                   ; $51d1: $01 $01 $ac
	push af                                          ; $51d4: $f5
	bit  4, e                                        ; $51d5: $cb $63
	and  c                                           ; $51d7: $a1
	ld   [hl], l                                     ; $51d8: $75
	ld   h, l                                        ; $51d9: $65
	ld   l, l                                        ; $51da: $6d
	ld   e, c                                        ; $51db: $59
	rst  $38                                         ; $51dc: $ff
	rst  $38                                         ; $51dd: $ff
	dec  c                                           ; $51de: $0d
	ld   h, a                                        ; $51df: $67
	adc  l                                           ; $51e0: $8d
	adc  h                                           ; $51e1: $8c
	ld   l, c                                        ; $51e2: $69
	and  c                                           ; $51e3: $a1
	sbc  [hl]                                        ; $51e4: $9e
	inc  bc                                          ; $51e5: $03
	sub  h                                           ; $51e6: $94
	inc  b                                           ; $51e7: $04
	sbc  [hl]                                        ; $51e8: $9e
	sub  b                                           ; $51e9: $90
	cp   b                                           ; $51ea: $b8
	push hl                                          ; $51eb: $e5
	pop  af                                          ; $51ec: $f1
	ei                                               ; $51ed: $fb
	and  b                                           ; $51ee: $a0
	dec  c                                           ; $51ef: $0d
	ld   d, b                                        ; $51f0: $50
	add  c                                           ; $51f1: $81
	sub  [hl]                                        ; $51f2: $96
	ld   d, h                                        ; $51f3: $54
	halt                                             ; $51f4: $76
	dec  b                                           ; $51f5: $05
	pop  de                                          ; $51f6: $d1
	ld   [hl], c                                     ; $51f7: $71
	ld   [hl], h                                     ; $51f8: $74
	rst  $38                                         ; $51f9: $ff
	rst  $38                                         ; $51fa: $ff
	dec  c                                           ; $51fb: $0d
	nop                                              ; $51fc: $00
	ld   a, [bc]                                     ; $51fd: $0a
	rrca                                             ; $51fe: $0f
	ld   b, $11                                      ; $51ff: $06 $11
	ld   bc, $5483                                   ; $5201: $01 $83 $54
	and  c                                           ; $5204: $a1
	rst  $38                                         ; $5205: $ff
	rst  $38                                         ; $5206: $ff
	dec  c                                           ; $5207: $0d
	ld   [bc], a                                     ; $5208: $02
	jr   z, @+$54                                    ; $5209: $28 $52

	ld   e, a                                        ; $520b: $5f
	ld   [hl], a                                     ; $520c: $77
	sbc  [hl]                                        ; $520d: $9e
	ld   d, b                                        ; $520e: $50
	ld   l, l                                        ; $520f: $6d
	ld   d, d                                        ; $5210: $52
	ld   e, d                                        ; $5211: $5a
	dec  c                                           ; $5212: $0d
	inc  bc                                          ; $5213: $03
	ld   a, [hl]                                     ; $5214: $7e
	sbc  l                                           ; $5215: $9d
	ld   [hl], c                                     ; $5216: $71
	ld   [hl], h                                     ; $5217: $74
	ld   e, c                                        ; $5218: $59
	sub  a                                           ; $5219: $97
	ld   a, c                                        ; $521a: $79
	ld   h, l                                        ; $521b: $65
	ld   [hl], h                                     ; $521c: $74
	ld   e, l                                        ; $521d: $5d
	sbc  d                                           ; $521e: $9a
	sub  [hl]                                        ; $521f: $96
	sbc  a                                           ; $5220: $9f
	dec  c                                           ; $5221: $0d
	nop                                              ; $5222: $00
	ld   a, [bc]                                     ; $5223: $0a
	rrca                                             ; $5224: $0f
	nop                                              ; $5225: $00
	ld   bc, $0101                                   ; $5226: $01 $01 $01
	inc  bc                                          ; $5229: $03
	inc  bc                                          ; $522a: $03
	ld   e, e                                        ; $522b: $5b
	ld   e, c                                        ; $522c: $59
	ld   [hl], c                                     ; $522d: $71
	ld   l, l                                        ; $522e: $6d
	rst  $38                                         ; $522f: $ff
	rst  $38                                         ; $5230: $ff
	ld   bc, $0d04                                   ; $5231: $01 $04 $0d
	nop                                              ; $5234: $00
	ld   a, [bc]                                     ; $5235: $0a
	nop                                              ; $5236: $00
	rrca                                             ; $5237: $0f
	nop                                              ; $5238: $00
	ld   bc, $0101                                   ; $5239: $01 $01 $01
	inc  bc                                          ; $523c: $03
	ld   h, c                                        ; $523d: $61
	ld   d, h                                        ; $523e: $54
	ld   a, b                                        ; $523f: $78
	ld   [hl], c                                     ; $5240: $71
	ld   l, l                                        ; $5241: $6d
	sub  a                                           ; $5242: $97
	rst  $38                                         ; $5243: $ff
	rst  $38                                         ; $5244: $ff
	ld   bc, $0d04                                   ; $5245: $01 $04 $0d
	nop                                              ; $5248: $00
	ld   a, [bc]                                     ; $5249: $0a
	ld   bc, $e5b8                                   ; $524a: $01 $b8 $e5
	db   $fc                                         ; $524d: $fc
	rst  $38                                         ; $524e: $ff
	rst  $38                                         ; $524f: $ff
	cp   b                                           ; $5250: $b8
	push hl                                          ; $5251: $e5
	and  e                                           ; $5252: $a3
	db   $fc                                         ; $5253: $fc
	ld   a, [$000d]                                  ; $5254: $fa $0d $00
	ld   a, [bc]                                     ; $5257: $0a
	rrca                                             ; $5258: $0f
	ld   b, $14                                      ; $5259: $06 $14
	ld   bc, $ffb3                                   ; $525b: $01 $b3 $ff
	rst  $38                                         ; $525e: $ff
	reti                                             ; $525f: $d9


	call nc, $0df9                                   ; $5260: $d4 $f9 $0d
	nop                                              ; $5263: $00
	ld   a, [bc]                                     ; $5264: $0a
	rrca                                             ; $5265: $0f
	nop                                              ; $5266: $00
	ld   bc, $0101                                   ; $5267: $01 $01 $01
	inc  bc                                          ; $526a: $03
	inc  bc                                          ; $526b: $03
	ld   e, e                                        ; $526c: $5b
	ld   e, c                                        ; $526d: $59
	ld   [hl], c                                     ; $526e: $71
	ld   l, l                                        ; $526f: $6d
	rst  $38                                         ; $5270: $ff
	rst  $38                                         ; $5271: $ff
	ld   bc, $0d04                                   ; $5272: $01 $04 $0d
	nop                                              ; $5275: $00
	ld   a, [bc]                                     ; $5276: $0a
	rrca                                             ; $5277: $0f
	ld   b, $13                                      ; $5278: $06 $13
	ld   bc, $ffff                                   ; $527a: $01 $ff $ff
	ld   a, b                                        ; $527d: $78
	and  c                                           ; $527e: $a1
	ld   [hl], h                                     ; $527f: $74
	sbc  [hl]                                        ; $5280: $9e
	inc  bc                                          ; $5281: $03
	xor  a                                           ; $5282: $af
	ld   [bc], a                                     ; $5283: $02
	and  d                                           ; $5284: $a2
	inc  bc                                          ; $5285: $03
	ld   d, d                                        ; $5286: $52
	ld   l, [hl]                                     ; $5287: $6e
	ld   [hl], c                                     ; $5288: $71
	ld   [hl], h                                     ; $5289: $74
	dec  c                                           ; $528a: $0d
	ld   l, [hl]                                     ; $528b: $6e
	adc  h                                           ; $528c: $8c
	ld   h, e                                        ; $528d: $63
	sbc  d                                           ; $528e: $9a
	ld   a, e                                        ; $528f: $7b
	ld   d, [hl]                                     ; $5290: $56
	sub  [hl]                                        ; $5291: $96
	ld   a, [$030d]                                  ; $5292: $fa $0d $03
	push de                                          ; $5295: $d5
	ld   h, b                                        ; $5296: $60
	sbc  c                                           ; $5297: $99
	ld   a, b                                        ; $5298: $78
	sub  [hl]                                        ; $5299: $96
	ld   a, [$0dfa]                                  ; $529a: $fa $fa $0d
	nop                                              ; $529d: $00
	ld   a, [bc]                                     ; $529e: $0a
	dec  c                                           ; $529f: $0d
	nop                                              ; $52a0: $00
	nop                                              ; $52a1: $00
	rrca                                             ; $52a2: $0f
	nop                                              ; $52a3: $00
	ld   bc, $020c                                   ; $52a4: $01 $0c $02
	ld   b, $06                                      ; $52a7: $06 $06
	inc  bc                                          ; $52a9: $03
	rrca                                             ; $52aa: $0f
	nop                                              ; $52ab: $00
	ld   bc, $0101                                   ; $52ac: $01 $01 $01
	inc  bc                                          ; $52af: $03
	ld   h, c                                        ; $52b0: $61
	ld   h, c                                        ; $52b1: $61
	ld   a, l                                        ; $52b2: $7d
	inc  bc                                          ; $52b3: $03
	push de                                          ; $52b4: $d5
	ld   h, b                                        ; $52b5: $60
	sub  [hl]                                        ; $52b6: $96
	ld   d, h                                        ; $52b7: $54
	rst  $38                                         ; $52b8: $ff
	rst  $38                                         ; $52b9: $ff
	ld   bc, $0d04                                   ; $52ba: $01 $04 $0d
	nop                                              ; $52bd: $00
	ld   a, [bc]                                     ; $52be: $0a
	ld   bc, $fa50                                   ; $52bf: $01 $50 $fa
	dec  c                                           ; $52c2: $0d
	ld   a, b                                        ; $52c3: $78
	ld   l, d                                        ; $52c4: $6a
	ld   h, c                                        ; $52c5: $61
	and  c                                           ; $52c6: $a1
	ld   a, b                                        ; $52c7: $78
	inc  bc                                          ; $52c8: $03
	ld   c, e                                        ; $52c9: $4b
	ld   a, c                                        ; $52ca: $79
	inc  bc                                          ; $52cb: $03
	cp   a                                           ; $52cc: $bf
	ld   e, d                                        ; $52cd: $5a
	ld   sp, hl                                      ; $52ce: $f9
	dec  c                                           ; $52cf: $0d
	nop                                              ; $52d0: $00
	ld   a, [bc]                                     ; $52d1: $0a
	ld   bc, $9d54                                   ; $52d2: $01 $54 $9d
	ld   [hl], c                                     ; $52d5: $71
	ld   a, [$000d]                                  ; $52d6: $fa $0d $00
	ld   a, [bc]                                     ; $52d9: $0a
	inc  c                                           ; $52da: $0c
	rlca                                             ; $52db: $07
	ld   bc, $6d50                                   ; $52dc: $01 $50 $6d
	ld   l, l                                        ; $52df: $6d
	ld   l, l                                        ; $52e0: $6d
	ld   l, l                                        ; $52e1: $6d
	ld   l, l                                        ; $52e2: $6d
	ld   l, l                                        ; $52e3: $6d
	rst  $38                                         ; $52e4: $ff
	rst  $38                                         ; $52e5: $ff
	dec  c                                           ; $52e6: $0d
	nop                                              ; $52e7: $00
	ld   a, [bc]                                     ; $52e8: $0a
	dec  c                                           ; $52e9: $0d
	nop                                              ; $52ea: $00
	nop                                              ; $52eb: $00
	rrca                                             ; $52ec: $0f
	nop                                              ; $52ed: $00
	ld   bc, $020c                                   ; $52ee: $01 $0c $02
	ld   b, $06                                      ; $52f1: $06 $06
	inc  bc                                          ; $52f3: $03
	dec  c                                           ; $52f4: $0d
	nop                                              ; $52f5: $00
	nop                                              ; $52f6: $00
	rrca                                             ; $52f7: $0f
	nop                                              ; $52f8: $00
	ld   bc, $020c                                   ; $52f9: $01 $0c $02
	ld   c, $66                                      ; $52fc: $0e $66
	inc  e                                           ; $52fe: $1c
	ld   b, $02                                      ; $52ff: $06 $02
	ld   [bc], a                                     ; $5301: $02
	dec  e                                           ; $5302: $1d
	ld   b, b                                        ; $5303: $40
	ld   d, $03                                      ; $5304: $16 $03
	ld   d, $01                                      ; $5306: $16 $01
	inc  bc                                          ; $5308: $03
	add  hl, hl                                      ; $5309: $29
	nop                                              ; $530a: $00
	ld   bc, $8f74                                   ; $530b: $01 $74 $8f
	ld   d, [hl]                                     ; $530e: $56
	rst  $38                                         ; $530f: $ff
	rst  $38                                         ; $5310: $ff
	dec  c                                           ; $5311: $0d
	ld   a, h                                        ; $5312: $7c
	ld   l, h                                        ; $5313: $6c
	ld   d, d                                        ; $5314: $52
	ld   [hl], h                                     ; $5315: $74
	sub  d                                           ; $5316: $92
	ld   e, d                                        ; $5317: $5a
	ld   [hl], c                                     ; $5318: $71
	ld   l, l                                        ; $5319: $6d
	ld   a, b                                        ; $531a: $78
	rst  $38                                         ; $531b: $ff
	rst  $38                                         ; $531c: $ff
	ld   sp, hl                                      ; $531d: $f9
	dec  c                                           ; $531e: $0d
	nop                                              ; $531f: $00
	ld   a, [bc]                                     ; $5320: $0a
	ld   bc, $5261                                   ; $5321: $01 $61 $52
	ld   [hl], d                                     ; $5324: $72
	ld   a, l                                        ; $5325: $7d
	ld   l, a                                        ; $5326: $6f
	sub  l                                           ; $5327: $95
	ld   [hl], c                                     ; $5328: $71
	halt                                             ; $5329: $76
	dec  c                                           ; $532a: $0d
	ld   e, b                                        ; $532b: $58
	ld   h, l                                        ; $532c: $65
	ld   e, b                                        ; $532d: $58
	ld   e, e                                        ; $532e: $5b
	ld   h, l                                        ; $532f: $65
	ld   a, e                                        ; $5330: $7b
	ld   d, [hl]                                     ; $5331: $56
	halt                                             ; $5332: $76
	dec  c                                           ; $5333: $0d
	ld   d, d                                        ; $5334: $52
	ld   e, a                                        ; $5335: $5f
	ld   a, e                                        ; $5336: $7b
	ei                                               ; $5337: $fb
	ld   a, b                                        ; $5338: $78
	sbc  a                                           ; $5339: $9f
	dec  c                                           ; $533a: $0d
	nop                                              ; $533b: $00
	ld   a, [bc]                                     ; $533c: $0a
	inc  c                                           ; $533d: $0c
	inc  bc                                          ; $533e: $03
	inc  d                                           ; $533f: $14
	rlca                                             ; $5340: $07
	ld   bc, $030e                                   ; $5341: $01 $0e $03
	rrca                                             ; $5344: $0f
	nop                                              ; $5345: $00
	ld   bc, $040c                                   ; $5346: $01 $0c $04
	ld   bc, $6d50                                   ; $5349: $01 $50 $6d
	db   $fc                                         ; $534c: $fc
	rst  $38                                         ; $534d: $ff
	rst  $38                                         ; $534e: $ff
	rst  $38                                         ; $534f: $ff
	rst  $38                                         ; $5350: $ff
	dec  c                                           ; $5351: $0d
	nop                                              ; $5352: $00
	ld   a, [bc]                                     ; $5353: $0a
	ld   sp, $2040                                   ; $5354: $31 $40 $20
	inc  bc                                          ; $5357: $03
	jr   nz, jr_05b_535b                             ; $5358: $20 $01

	inc  d                                           ; $535a: $14

jr_05b_535b:
	add  hl, hl                                      ; $535b: $29
	nop                                              ; $535c: $00
	ld   b, $6a                                      ; $535d: $06 $6a
	inc  bc                                          ; $535f: $03
	ld   c, $66                                      ; $5360: $0e $66
	inc  e                                           ; $5362: $1c
	ld   b, $02                                      ; $5363: $06 $02
	ld   [bc], a                                     ; $5365: $02
	ld   bc, $5461                                   ; $5366: $01 $61 $54
	ld   d, d                                        ; $5369: $52
	ld   d, h                                        ; $536a: $54
	ld   [bc], a                                     ; $536b: $02
	ld   a, a                                        ; $536c: $7f
	inc  b                                           ; $536d: $04
	dec  de                                          ; $536e: $1b
	ld   a, l                                        ; $536f: $7d
	sbc  [hl]                                        ; $5370: $9e
	dec  c                                           ; $5371: $0d
	nop                                              ; $5372: $00
	dec  b                                           ; $5373: $05
	ld   b, b                                        ; $5374: $40
	ld   c, l                                        ; $5375: $4d
	ld   [bc], a                                     ; $5376: $02
	nop                                              ; $5377: $00
	nop                                              ; $5378: $00
	ld   bc, $0b02                                   ; $5379: $01 $02 $0b
	ld   [bc], a                                     ; $537c: $02
	xor  d                                           ; $537d: $aa
	sbc  [hl]                                        ; $537e: $9e
	ld   [hl], d                                     ; $537f: $72
	ld   [hl], d                                     ; $5380: $72
	ld   h, l                                        ; $5381: $65
	adc  [hl]                                        ; $5382: $8e
	sub  [hl]                                        ; $5383: $96
	ld   d, h                                        ; $5384: $54
	ld   a, c                                        ; $5385: $79
	ld   a, [$000d]                                  ; $5386: $fa $0d $00
	ld   a, [bc]                                     ; $5389: $0a
	dec  b                                           ; $538a: $05
	ld   b, b                                        ; $538b: $40
	ld   d, e                                        ; $538c: $53
	ld   bc, $0002                                   ; $538d: $01 $02 $00
	dec  c                                           ; $5390: $0d
	nop                                              ; $5391: $00
	nop                                              ; $5392: $00
	rrca                                             ; $5393: $0f
	nop                                              ; $5394: $00
	ld   bc, $1e09                                   ; $5395: $01 $09 $1e
	rlca                                             ; $5398: $07
	or   e                                           ; $5399: $b3
	inc  bc                                          ; $539a: $03
	inc  b                                           ; $539b: $04
	add  b                                           ; $539c: $80
	ld   b, $01                                      ; $539d: $06 $01
	rst  $38                                         ; $539f: $ff
	jr   nz, jr_05b_53a2                             ; $53a0: $20 $00

jr_05b_53a2:
	dec  b                                           ; $53a2: $05
	add  b                                           ; $53a3: $80
	ld   b, $01                                      ; $53a4: $06 $01
	ld   bc, $0000                                   ; $53a6: $01 $00 $00
	inc  c                                           ; $53a9: $0c
	ld   [bc], a                                     ; $53aa: $02
	ld   c, $01                                      ; $53ab: $0e $01
	rrca                                             ; $53ad: $0f
	nop                                              ; $53ae: $00
	ld   bc, $5001                                   ; $53af: $01 $01 $50
	rst  $38                                         ; $53b2: $ff
	rst  $38                                         ; $53b3: $ff
	sbc  [hl]                                        ; $53b4: $9e
	sub  d                                           ; $53b5: $92
	ld   a, [hl]                                     ; $53b6: $7e
	ld   d, d                                        ; $53b7: $52
	sub  [hl]                                        ; $53b8: $96
	ld   a, b                                        ; $53b9: $78
	db   $fc                                         ; $53ba: $fc
	rst  $38                                         ; $53bb: $ff
	rst  $38                                         ; $53bc: $ff
	dec  c                                           ; $53bd: $0d
	inc  bc                                          ; $53be: $03
	add  b                                           ; $53bf: $80
	dec  b                                           ; $53c0: $05
	db   $10                                         ; $53c1: $10
	inc  bc                                          ; $53c2: $03
	ld   [hl], l                                     ; $53c3: $75
	halt                                             ; $53c4: $76
	ld   a, l                                        ; $53c5: $7d
	ld   d, d                                        ; $53c6: $52
	ld   d, [hl]                                     ; $53c7: $56
	rst  $38                                         ; $53c8: $ff
	rst  $38                                         ; $53c9: $ff
	rst  $38                                         ; $53ca: $ff
	rst  $38                                         ; $53cb: $ff
	dec  c                                           ; $53cc: $0d
	rst  $38                                         ; $53cd: $ff
	rst  $38                                         ; $53ce: $ff
	rst  $38                                         ; $53cf: $ff
	rst  $38                                         ; $53d0: $ff
	rst  $38                                         ; $53d1: $ff
	rst  $38                                         ; $53d2: $ff
	rst  $38                                         ; $53d3: $ff
	rst  $38                                         ; $53d4: $ff
	rst  $38                                         ; $53d5: $ff
	rst  $38                                         ; $53d6: $ff
	dec  c                                           ; $53d7: $0d
	nop                                              ; $53d8: $00
	ld   a, [bc]                                     ; $53d9: $0a
	inc  d                                           ; $53da: $14
	ld   b, $01                                      ; $53db: $06 $01
	rrca                                             ; $53dd: $0f
	dec  bc                                          ; $53de: $0b
	ld   [bc], a                                     ; $53df: $02
	ld   bc, $0008                                   ; $53e0: $01 $08 $00
	ld   e, l                                        ; $53e3: $5d
	and  c                                           ; $53e4: $a1
	sbc  a                                           ; $53e5: $9f
	dec  c                                           ; $53e6: $0d
	ld   [bc], a                                     ; $53e7: $02
	and  l                                           ; $53e8: $a5
	ld   h, a                                        ; $53e9: $67
	ld   e, [hl]                                     ; $53ea: $5e
	sbc  [hl]                                        ; $53eb: $9e
	inc  bc                                          ; $53ec: $03
	add  l                                           ; $53ed: $85
	inc  b                                           ; $53ee: $04
	xor  e                                           ; $53ef: $ab
	inc  bc                                          ; $53f0: $03
	add  d                                           ; $53f1: $82
	inc  bc                                          ; $53f2: $03
	ld   c, l                                        ; $53f3: $4d
	ld   a, c                                        ; $53f4: $79
	dec  b                                           ; $53f5: $05
	db   $10                                         ; $53f6: $10
	ld   a, b                                        ; $53f7: $78
	ld   h, e                                        ; $53f8: $63
	ld   d, d                                        ; $53f9: $52
	sbc  a                                           ; $53fa: $9f
	dec  c                                           ; $53fb: $0d
	nop                                              ; $53fc: $00
	ld   a, [bc]                                     ; $53fd: $0a
	rrca                                             ; $53fe: $0f
	nop                                              ; $53ff: $00
	ld   bc, $020c                                   ; $5400: $01 $0c $02
	add  hl, bc                                      ; $5403: $09
	ld   e, $01                                      ; $5404: $1e $01
	adc  h                                           ; $5406: $8c
	sbc  [hl]                                        ; $5407: $9e
	adc  h                                           ; $5408: $8c
	ld   h, e                                        ; $5409: $63
	ld   e, c                                        ; $540a: $59
	rst  $38                                         ; $540b: $ff
	rst  $38                                         ; $540c: $ff
	dec  c                                           ; $540d: $0d
	nop                                              ; $540e: $00
	ld   a, [bc]                                     ; $540f: $0a
	ld   c, $0c                                      ; $5410: $0e $0c
	inc  e                                           ; $5412: $1c
	ld   a, [bc]                                     ; $5413: $0a
	inc  b                                           ; $5414: $04
	inc  b                                           ; $5415: $04
	ld   bc, $5258                                   ; $5416: $01 $58 $52
	sbc  [hl]                                        ; $5419: $9e
	ld   [$9f00], sp                                 ; $541a: $08 $00 $9f
	dec  c                                           ; $541d: $0d
	ld   e, b                                        ; $541e: $58
	adc  a                                           ; $541f: $8f
	ei                                               ; $5420: $fb
	cp   b                                           ; $5421: $b8
	push hl                                          ; $5422: $e5
	pop  af                                          ; $5423: $f1
	ei                                               ; $5424: $fb
	ld   a, h                                        ; $5425: $7c
	ld   l, h                                        ; $5426: $6c
	ld   d, d                                        ; $5427: $52
	ld   [hl], h                                     ; $5428: $74
	ld   l, l                                        ; $5429: $6d
	and  c                                           ; $542a: $a1
	dec  c                                           ; $542b: $0d
	ld   l, [hl]                                     ; $542c: $6e
	ld   [hl], c                                     ; $542d: $71
	ld   [hl], h                                     ; $542e: $74
	ld   a, b                                        ; $542f: $78
	sbc  a                                           ; $5430: $9f
	dec  c                                           ; $5431: $0d
	nop                                              ; $5432: $00
	ld   a, [bc]                                     ; $5433: $0a
	ld   bc, $a102                                   ; $5434: $01 $02 $a1
	inc  bc                                          ; $5437: $03
	and  b                                           ; $5438: $a0
	ld   l, a                                        ; $5439: $6f
	ld   a, l                                        ; $543a: $7d
	sbc  [hl]                                        ; $543b: $9e
	sbc  l                                           ; $543c: $9d
	ld   e, c                                        ; $543d: $59
	sub  a                                           ; $543e: $97
	and  c                                           ; $543f: $a1
	ld   [hl], l                                     ; $5440: $75
	sub  b                                           ; $5441: $90
	ld   a, b                                        ; $5442: $78
	ld   d, d                                        ; $5443: $52
	dec  c                                           ; $5444: $0d
	ld   e, d                                        ; $5445: $5a
	sbc  [hl]                                        ; $5446: $9e
	inc  de                                          ; $5447: $13
	ld   [bc], a                                     ; $5448: $02
	sub  e                                           ; $5449: $93
	sub  b                                           ; $544a: $90
	sub  d                                           ; $544b: $92
	ld   [hl], c                                     ; $544c: $71
	ld   l, a                                        ; $544d: $6f
	sub  c                                           ; $544e: $91
	ei                                               ; $544f: $fb
	dec  c                                           ; $5450: $0d
	adc  h                                           ; $5451: $8c
	ld   l, b                                        ; $5452: $68
	ld   d, d                                        ; $5453: $52
	ld   l, [hl]                                     ; $5454: $6e
	sbc  e                                           ; $5455: $9b
	sbc  a                                           ; $5456: $9f
	dec  c                                           ; $5457: $0d
	nop                                              ; $5458: $00
	ld   a, [bc]                                     ; $5459: $0a
	ld   bc, $7e59                                   ; $545a: $01 $59 $7e
	ld   [hl], c                                     ; $545d: $71
	ld   [hl], h                                     ; $545e: $74
	sub  d                                           ; $545f: $92
	sbc  b                                           ; $5460: $98
	ld   l, l                                        ; $5461: $6d
	ld   d, d                                        ; $5462: $52
	ld   e, d                                        ; $5463: $5a
	dec  c                                           ; $5464: $0d
	ld   [bc], a                                     ; $5465: $02
	sbc  b                                           ; $5466: $98
	inc  bc                                          ; $5467: $03
	nop                                              ; $5468: $00
	ld   a, h                                        ; $5469: $7c
	inc  bc                                          ; $546a: $03
	ld   l, e                                        ; $546b: $6b
	inc  bc                                          ; $546c: $03
	ld   c, a                                        ; $546d: $4f
	sbc  [hl]                                        ; $546e: $9e
	ld   l, a                                        ; $546f: $6f
	sub  l                                           ; $5470: $95
	ld   [hl], c                                     ; $5471: $71
	halt                                             ; $5472: $76
	ldh  [c], a                                      ; $5473: $e2
	db   $ec                                         ; $5474: $ec
	dec  c                                           ; $5475: $0d
	ld   a, b                                        ; $5476: $78
	and  c                                           ; $5477: $a1
	ld   [hl], l                                     ; $5478: $75
	ld   a, b                                        ; $5479: $78
	sbc  a                                           ; $547a: $9f
	dec  c                                           ; $547b: $0d
	nop                                              ; $547c: $00
	ld   a, [bc]                                     ; $547d: $0a
	inc  e                                           ; $547e: $1c
	ld   a, [bc]                                     ; $547f: $0a
	ld   [bc], a                                     ; $5480: $02
	ld   [bc], a                                     ; $5481: $02
	ld   bc, $9d59                                   ; $5482: $01 $59 $9d
	ld   d, d                                        ; $5485: $52
	ld   l, e                                        ; $5486: $6b
	ld   d, h                                        ; $5487: $54
	ld   l, [hl]                                     ; $5488: $6e
	ld   e, d                                        ; $5489: $5a
	sbc  [hl]                                        ; $548a: $9e
	dec  c                                           ; $548b: $0d
	inc  b                                           ; $548c: $04
	dec  c                                           ; $548d: $0d
	ld   [bc], a                                     ; $548e: $02
	sub  [hl]                                        ; $548f: $96
	inc  b                                           ; $5490: $04
	ld   b, l                                        ; $5491: $45
	inc  b                                           ; $5492: $04
	ld   a, [bc]                                     ; $5493: $0a
	ld   a, l                                        ; $5494: $7d
	ld   h, c                                        ; $5495: $61
	ld   h, c                                        ; $5496: $61
	ld   [hl], l                                     ; $5497: $75
	inc  bc                                          ; $5498: $03
	ld   a, [hl]                                     ; $5499: $7e
	dec  b                                           ; $549a: $05
	nop                                              ; $549b: $00
	ld   l, [hl]                                     ; $549c: $6e
	ld   a, [$000d]                                  ; $549d: $fa $0d $00
	ld   a, [bc]                                     ; $54a0: $0a
	ld   bc, $a102                                   ; $54a1: $01 $02 $a1
	inc  bc                                          ; $54a4: $03
	and  b                                           ; $54a5: $a0
	ld   l, a                                        ; $54a6: $6f
	and  b                                           ; $54a7: $a0
	inc  b                                           ; $54a8: $04
	ld   b, l                                        ; $54a9: $45
	sbc  d                                           ; $54aa: $9a
	dec  b                                           ; $54ab: $05
	scf                                              ; $54ac: $37
	ld   d, [hl]                                     ; $54ad: $56
	ld   [hl], h                                     ; $54ae: $74
	dec  c                                           ; $54af: $0d
	inc  bc                                          ; $54b0: $03
	add  b                                           ; $54b1: $80
	inc  bc                                          ; $54b2: $03
	jp   c, Jump_05b_7465                            ; $54b3: $da $65 $74

	ld   e, e                                        ; $54b6: $5b
	ld   a, b                                        ; $54b7: $78
	ld   a, [$000d]                                  ; $54b8: $fa $0d $00
	ld   a, [bc]                                     ; $54bb: $0a
	ld   h, $01                                      ; $54bc: $26 $01
	rst  $38                                         ; $54be: $ff
	rst  $38                                         ; $54bf: $ff
	rst  $38                                         ; $54c0: $ff
	rst  $38                                         ; $54c1: $ff
	rst  $38                                         ; $54c2: $ff
	rst  $38                                         ; $54c3: $ff
	dec  c                                           ; $54c4: $0d
	nop                                              ; $54c5: $00
	ld   a, [bc]                                     ; $54c6: $0a
	rrca                                             ; $54c7: $0f
	nop                                              ; $54c8: $00
	ld   bc, $0101                                   ; $54c9: $01 $01 $01
	inc  bc                                          ; $54cc: $03
	ld   e, b                                        ; $54cd: $58
	ld   e, b                                        ; $54ce: $58
	ld   a, [$ac10]                                  ; $54cf: $fa $10 $ac
	push af                                          ; $54d2: $f5
	bit  4, e                                        ; $54d3: $cb $63
	and  c                                           ; $54d5: $a1
	ld   l, [hl]                                     ; $54d6: $6e
	ld   bc, $0d04                                   ; $54d7: $01 $04 $0d
	nop                                              ; $54da: $00
	ld   a, [bc]                                     ; $54db: $0a
	add  hl, de                                      ; $54dc: $19
	dec  b                                           ; $54dd: $05
	ld   [bc], a                                     ; $54de: $02
	ld   [bc], a                                     ; $54df: $02
	and  b                                           ; $54e0: $a0
	ld   [hl], e                                     ; $54e1: $73
	ld   e, l                                        ; $54e2: $5d
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	dec  b                                           ; $54e5: $05
	ld   d, $6f                                      ; $54e6: $16 $6f
	ld   [bc], a                                     ; $54e8: $02
	ld   d, e                                        ; $54e9: $53
	sbc  c                                           ; $54ea: $99
	nop                                              ; $54eb: $00
	ld   bc, $5c07                                   ; $54ec: $01 $07 $5c
	dec  b                                           ; $54ef: $05
	ld   [bc], a                                     ; $54f0: $02
	inc  bc                                          ; $54f1: $03
	ld   bc, $2000                                   ; $54f2: $01 $00 $20
	nop                                              ; $54f5: $00
	rlca                                             ; $54f6: $07
	inc  c                                           ; $54f7: $0c
	dec  b                                           ; $54f8: $05
	ld   [bc], a                                     ; $54f9: $02
	inc  bc                                          ; $54fa: $03
	ld   bc, $2001                                   ; $54fb: $01 $01 $20
	nop                                              ; $54fe: $00
	ld   b, $33                                      ; $54ff: $06 $33
	dec  b                                           ; $5501: $05
	rrca                                             ; $5502: $0f
	nop                                              ; $5503: $00
	ld   bc, $0101                                   ; $5504: $01 $01 $01
	inc  bc                                          ; $5507: $03
	sub  d                                           ; $5508: $92
	ld   [hl], c                                     ; $5509: $71
	ld   a, a                                        ; $550a: $7f
	sbc  b                                           ; $550b: $98
	sbc  [hl]                                        ; $550c: $9e
	ld   a, h                                        ; $550d: $7c
	ld   l, h                                        ; $550e: $6c
	ld   e, e                                        ; $550f: $5b
	ld   a, l                                        ; $5510: $7d
	pop  bc                                          ; $5511: $c1
	db   $e3                                         ; $5512: $e3
	ld   l, [hl]                                     ; $5513: $6e
	sub  [hl]                                        ; $5514: $96
	dec  c                                           ; $5515: $0d
	db   $10                                         ; $5516: $10
	ld   h, c                                        ; $5517: $61
	ld   h, c                                        ; $5518: $61
	ld   a, l                                        ; $5519: $7d
	ld   d, d                                        ; $551a: $52
	ld   h, e                                        ; $551b: $63
	ld   e, h                                        ; $551c: $5c
	sub  [hl]                                        ; $551d: $96
	ld   e, l                                        ; $551e: $5d
	ld   [bc], a                                     ; $551f: $02
	ld   d, e                                        ; $5520: $53
	sbc  e                                           ; $5521: $9b
	ld   d, h                                        ; $5522: $54
	ld   bc, $0d04                                   ; $5523: $01 $04 $0d
	nop                                              ; $5526: $00
	ld   a, [bc]                                     ; $5527: $0a
	nop                                              ; $5528: $00
	rrca                                             ; $5529: $0f
	ld   b, $13                                      ; $552a: $06 $13
	ld   bc, $a903                                   ; $552c: $01 $03 $a9
	ld   e, c                                        ; $552f: $59
	ld   l, e                                        ; $5530: $6b
	ld   h, c                                        ; $5531: $61
	ld   a, c                                        ; $5532: $79
	ld   d, d                                        ; $5533: $52
	sbc  c                                           ; $5534: $99
	ld   a, h                                        ; $5535: $7c
	ld   e, c                                        ; $5536: $59
	ld   sp, hl                                      ; $5537: $f9
	dec  c                                           ; $5538: $0d
	nop                                              ; $5539: $00
	ld   a, [bc]                                     ; $553a: $0a
	rrca                                             ; $553b: $0f
	nop                                              ; $553c: $00
	ld   bc, $0101                                   ; $553d: $01 $01 $01
	inc  bc                                          ; $5540: $03
	adc  h                                           ; $5541: $8c
	ld   l, b                                        ; $5542: $68
	ld   d, d                                        ; $5543: $52
	rst  $38                                         ; $5544: $ff
	rst  $38                                         ; $5545: $ff
	inc  bc                                          ; $5546: $03
	push de                                          ; $5547: $d5
	ld   h, b                                        ; $5548: $60
	sub  [hl]                                        ; $5549: $96
	ld   d, h                                        ; $554a: $54
	ld   a, [$0401]                                  ; $554b: $fa $01 $04
	dec  c                                           ; $554e: $0d
	nop                                              ; $554f: $00
	ld   a, [bc]                                     ; $5550: $0a
	nop                                              ; $5551: $00
	rrca                                             ; $5552: $0f
	nop                                              ; $5553: $00
	ld   bc, $0101                                   ; $5554: $01 $01 $01
	inc  bc                                          ; $5557: $03
	sub  b                                           ; $5558: $90
	ld   d, h                                        ; $5559: $54
	inc  bc                                          ; $555a: $03
	ld   l, h                                        ; $555b: $6c
	ld   h, l                                        ; $555c: $65
	ld   [bc], a                                     ; $555d: $02
	and  b                                           ; $555e: $a0
	ld   [hl], e                                     ; $555f: $73
	ld   d, d                                        ; $5560: $52
	ld   [hl], h                                     ; $5561: $74
	adc  l                                           ; $5562: $8d
	sub  [hl]                                        ; $5563: $96
	ld   d, h                                        ; $5564: $54
	ld   bc, $0d04                                   ; $5565: $01 $04 $0d
	nop                                              ; $5568: $00
	ld   a, [bc]                                     ; $5569: $0a
	rlca                                             ; $556a: $07
	jp   z, $0305                                    ; $556b: $ca $05 $03

	ld   d, $01                                      ; $556e: $16 $01
	and  b                                           ; $5570: $a0
	ld   [hl+], a                                    ; $5571: $22
	nop                                              ; $5572: $00
	rrca                                             ; $5573: $0f
	ld   b, $12                                      ; $5574: $06 $12
	ld   bc, $6d03                                   ; $5576: $01 $03 $6d
	dec  b                                           ; $5579: $05
	add  hl, de                                      ; $557a: $19
	ld   a, h                                        ; $557b: $7c
	ld   [bc], a                                     ; $557c: $02
	xor  d                                           ; $557d: $aa
	ld   a, h                                        ; $557e: $7c
	cp   b                                           ; $557f: $b8
	push hl                                          ; $5580: $e5
	pop  af                                          ; $5581: $f1
	ei                                               ; $5582: $fb
	ld   a, l                                        ; $5583: $7d
	dec  c                                           ; $5584: $0d
	inc  bc                                          ; $5585: $03
	ld   l, c                                        ; $5586: $69
	ld   [bc], a                                     ; $5587: $02
	cp   [hl]                                        ; $5588: $be
	ld   l, [hl]                                     ; $5589: $6e
	ld   a, b                                        ; $558a: $78
	sbc  a                                           ; $558b: $9f
	dec  c                                           ; $558c: $0d
	nop                                              ; $558d: $00
	ld   a, [bc]                                     ; $558e: $0a
	add  hl, de                                      ; $558f: $19
	dec  b                                           ; $5590: $05
	ld   bc, $c004                                   ; $5591: $01 $04 $c0
	inc  bc                                          ; $5594: $03
	ld   a, l                                        ; $5595: $7d
	ld   h, l                                        ; $5596: $65
	ld   l, l                                        ; $5597: $6d
	nop                                              ; $5598: $00
	nop                                              ; $5599: $00
	rlca                                             ; $559a: $07
	or   b                                           ; $559b: $b0
	dec  b                                           ; $559c: $05
	ld   [bc], a                                     ; $559d: $02
	inc  bc                                          ; $559e: $03
	ld   bc, $2000                                   ; $559f: $01 $00 $20
	nop                                              ; $55a2: $00
	ld   b, $ca                                      ; $55a3: $06 $ca
	dec  b                                           ; $55a5: $05
	rrca                                             ; $55a6: $0f
	nop                                              ; $55a7: $00
	ld   bc, $0101                                   ; $55a8: $01 $01 $01
	inc  bc                                          ; $55ab: $03
	ld   l, e                                        ; $55ac: $6b
	sbc  e                                           ; $55ad: $9b
	ld   l, e                                        ; $55ae: $6b
	sbc  e                                           ; $55af: $9b
	ld   [bc], a                                     ; $55b0: $02
	inc  l                                           ; $55b1: $2c
	ld   e, e                                        ; $55b2: $5b
	inc  bc                                          ; $55b3: $03
	ld   h, l                                        ; $55b4: $65
	ld   h, b                                        ; $55b5: $60
	sub  [hl]                                        ; $55b6: $96
	ld   d, h                                        ; $55b7: $54
	rst  $38                                         ; $55b8: $ff
	rst  $38                                         ; $55b9: $ff
	ld   bc, $0d04                                   ; $55ba: $01 $04 $0d
	nop                                              ; $55bd: $00
	ld   a, [bc]                                     ; $55be: $0a
	nop                                              ; $55bf: $00
	rrca                                             ; $55c0: $0f
	ld   b, $13                                      ; $55c1: $06 $13
	ld   bc, $ffff                                   ; $55c3: $01 $ff $ff
	ld   a, [$030d]                                  ; $55c6: $fa $0d $03
	xor  c                                           ; $55c9: $a9
	ld   l, [hl]                                     ; $55ca: $6e
	ld   a, [$6b10]                                  ; $55cb: $fa $10 $6b
	ld   h, c                                        ; $55ce: $61
	ld   a, c                                        ; $55cf: $79
	ld   d, d                                        ; $55d0: $52
	sbc  c                                           ; $55d1: $99
	ld   a, h                                        ; $55d2: $7c
	ld   a, l                                        ; $55d3: $7d
	ld   a, [$000d]                                  ; $55d4: $fa $0d $00
	ld   a, [bc]                                     ; $55d7: $0a
	rrca                                             ; $55d8: $0f
	nop                                              ; $55d9: $00
	ld   bc, $0101                                   ; $55da: $01 $01 $01
	inc  bc                                          ; $55dd: $03
	ld   [bc], a                                     ; $55de: $02
	and  c                                           ; $55df: $a1
	ld   [hl], e                                     ; $55e0: $73
	ld   e, c                                        ; $55e1: $59
	sbc  d                                           ; $55e2: $9a
	ld   l, l                                        ; $55e3: $6d
	ld   a, [$0401]                                  ; $55e4: $fa $01 $04
	dec  c                                           ; $55e7: $0d
	nop                                              ; $55e8: $00
	ld   a, [bc]                                     ; $55e9: $0a
	add  hl, de                                      ; $55ea: $19
	dec  b                                           ; $55eb: $05
	inc  bc                                          ; $55ec: $03
	inc  bc                                          ; $55ed: $03
	db   $db                                         ; $55ee: $db
	ld   bc, $7614                                   ; $55ef: $01 $14 $76
	ld   h, a                                        ; $55f2: $67
	sbc  c                                           ; $55f3: $99
	nop                                              ; $55f4: $00
	nop                                              ; $55f5: $00
	inc  b                                           ; $55f6: $04
	ld   c, $03                                      ; $55f7: $0e $03
	sub  b                                           ; $55f9: $90
	ld   a, h                                        ; $55fa: $7c
	sub  b                                           ; $55fb: $90
	ld   a, h                                        ; $55fc: $7c
	adc  h                                           ; $55fd: $8c
	ld   a, e                                        ; $55fe: $7b
	and  b                                           ; $55ff: $a0
	ld   h, a                                        ; $5600: $67
	sbc  c                                           ; $5601: $99
	nop                                              ; $5602: $00
	ld   bc, $d503                                   ; $5603: $01 $03 $d5
	ld   h, b                                        ; $5606: $60
	inc  bc                                          ; $5607: $03
	add  b                                           ; $5608: $80
	ld   h, a                                        ; $5609: $67
	nop                                              ; $560a: $00
	ld   [bc], a                                     ; $560b: $02
	rlca                                             ; $560c: $07
	inc  [hl]                                        ; $560d: $34
	ld   b, $02                                      ; $560e: $06 $02
	inc  bc                                          ; $5610: $03
	ld   bc, $2000                                   ; $5611: $01 $00 $20
	nop                                              ; $5614: $00
	rlca                                             ; $5615: $07
	ret  nc                                          ; $5616: $d0

	ld   b, $02                                      ; $5617: $06 $02
	inc  bc                                          ; $5619: $03
	ld   bc, $2001                                   ; $561a: $01 $01 $20
	nop                                              ; $561d: $00
	rlca                                             ; $561e: $07
	ld   a, $07                                      ; $561f: $3e $07
	ld   [bc], a                                     ; $5621: $02
	inc  bc                                          ; $5622: $03
	ld   bc, $2002                                   ; $5623: $01 $02 $20
	nop                                              ; $5626: $00
	ld   b, $a6                                      ; $5627: $06 $a6
	rlca                                             ; $5629: $07
	rrca                                             ; $562a: $0f
	nop                                              ; $562b: $00
	ld   bc, $0101                                   ; $562c: $01 $01 $01
	inc  bc                                          ; $562f: $03
	ld   h, c                                        ; $5630: $61
	ld   h, c                                        ; $5631: $61
	ld   a, l                                        ; $5632: $7d
	inc  bc                                          ; $5633: $03
	db   $db                                         ; $5634: $db
	ld   bc, $7614                                   ; $5635: $01 $14 $76
	rst  $38                                         ; $5638: $ff
	rst  $38                                         ; $5639: $ff
	ld   bc, $0d04                                   ; $563a: $01 $04 $0d
	nop                                              ; $563d: $00
	ld   a, [bc]                                     ; $563e: $0a
	ld   bc, $9e50                                   ; $563f: $01 $50 $9e
	ld   h, a                                        ; $5642: $67
	adc  l                                           ; $5643: $8d
	adc  h                                           ; $5644: $8c
	ld   l, c                                        ; $5645: $69
	and  c                                           ; $5646: $a1
	rst  $38                                         ; $5647: $ff
	rst  $38                                         ; $5648: $ff
	dec  c                                           ; $5649: $0d
	ld   [hl], a                                     ; $564a: $77
	ld   a, b                                        ; $564b: $78
	ld   l, l                                        ; $564c: $6d
	ld   e, c                                        ; $564d: $59
	inc  b                                           ; $564e: $04
	ld   b, l                                        ; $564f: $45
	ld   [hl], c                                     ; $5650: $71
	ld   [hl], h                                     ; $5651: $74
	sub  a                                           ; $5652: $97
	ld   [hl], c                                     ; $5653: $71
	ld   h, l                                        ; $5654: $65
	sub  c                                           ; $5655: $91
	sbc  c                                           ; $5656: $99
	and  c                                           ; $5657: $a1
	dec  c                                           ; $5658: $0d
	ld   [hl], l                                     ; $5659: $75
	ld   h, a                                        ; $565a: $67
	ld   a, e                                        ; $565b: $7b
	ld   sp, hl                                      ; $565c: $f9
	dec  c                                           ; $565d: $0d
	nop                                              ; $565e: $00
	ld   a, [bc]                                     ; $565f: $0a
	rrca                                             ; $5660: $0f

Jump_05b_5661:
	ld   b, $11                                      ; $5661: $06 $11
	ld   bc, $9e58                                   ; $5663: $01 $58 $9e
	ld   [$9f00], sp                                 ; $5666: $08 $00 $9f
	dec  c                                           ; $5669: $0d
	ld   d, b                                        ; $566a: $50
	ld   l, l                                        ; $566b: $6d
	ld   d, d                                        ; $566c: $52
	ld   l, [hl]                                     ; $566d: $6e
	sub  [hl]                                        ; $566e: $96
	sbc  a                                           ; $566f: $9f
	dec  c                                           ; $5670: $0d
	nop                                              ; $5671: $00
	ld   a, [bc]                                     ; $5672: $0a
	rrca                                             ; $5673: $0f
	nop                                              ; $5674: $00
	ld   bc, $ac01                                   ; $5675: $01 $01 $ac
	push af                                          ; $5678: $f5
	bit  4, e                                        ; $5679: $cb $63
	and  c                                           ; $567b: $a1
	ld   [hl], l                                     ; $567c: $75
	ld   h, l                                        ; $567d: $65
	ld   l, l                                        ; $567e: $6d
	ld   e, c                                        ; $567f: $59
	rst  $38                                         ; $5680: $ff
	rst  $38                                         ; $5681: $ff
	dec  c                                           ; $5682: $0d
	ld   h, c                                        ; $5683: $61
	sbc  d                                           ; $5684: $9a
	ld   a, l                                        ; $5685: $7d
	inc  bc                                          ; $5686: $03
	add  e                                           ; $5687: $83
	dec  b                                           ; $5688: $05
	dec  c                                           ; $5689: $0d
	ld   h, l                                        ; $568a: $65
	adc  h                                           ; $568b: $8c
	ld   h, l                                        ; $568c: $65
	ld   l, l                                        ; $568d: $6d
	sbc  a                                           ; $568e: $9f
	dec  c                                           ; $568f: $0d
	nop                                              ; $5690: $00
	ld   a, [bc]                                     ; $5691: $0a
	rrca                                             ; $5692: $0f
	ld   b, $13                                      ; $5693: $06 $13
	ld   bc, $f9a1                                   ; $5695: $01 $a1 $f9
	db   $10                                         ; $5698: $10
	ld   [$ff00], sp                                 ; $5699: $08 $00 $ff
	rst  $38                                         ; $569c: $ff
	dec  c                                           ; $569d: $0d
	rst  $38                                         ; $569e: $ff
	rst  $38                                         ; $569f: $ff
	rst  $38                                         ; $56a0: $ff
	rst  $38                                         ; $56a1: $ff
	sub  b                                           ; $56a2: $90
	ld   h, l                                        ; $56a3: $65
	ld   e, c                                        ; $56a4: $59
	ld   h, l                                        ; $56a5: $65
	ld   [hl], h                                     ; $56a6: $74
	sbc  [hl]                                        ; $56a7: $9e
	dec  c                                           ; $56a8: $0d
	inc  bc                                          ; $56a9: $03
	ld   l, c                                        ; $56aa: $69
	ld   [bc], a                                     ; $56ab: $02
	and  b                                           ; $56ac: $a0
	and  a                                           ; $56ad: $a7
	pop  af                                          ; $56ae: $f1
	or   [hl]                                        ; $56af: $b6
	ld   a, h                                        ; $56b0: $7c
	ld   a, h                                        ; $56b1: $7c
	ld   l, h                                        ; $56b2: $6c
	ld   e, e                                        ; $56b3: $5b
	ld   [hl], c                                     ; $56b4: $71
	ld   [hl], h                                     ; $56b5: $74
	rst  $38                                         ; $56b6: $ff
	rst  $38                                         ; $56b7: $ff
	dec  c                                           ; $56b8: $0d
	nop                                              ; $56b9: $00
	ld   a, [bc]                                     ; $56ba: $0a
	dec  c                                           ; $56bb: $0d
	nop                                              ; $56bc: $00
	nop                                              ; $56bd: $00
	rrca                                             ; $56be: $0f
	nop                                              ; $56bf: $00
	ld   bc, $1e09                                   ; $56c0: $01 $09 $1e
	ld   b, $ae                                      ; $56c3: $06 $ae
	rlca                                             ; $56c5: $07
	rrca                                             ; $56c6: $0f
	nop                                              ; $56c7: $00
	ld   bc, $0101                                   ; $56c8: $01 $01 $01
	inc  bc                                          ; $56cb: $03
	ld   h, c                                        ; $56cc: $61
	ld   d, h                                        ; $56cd: $54
	ld   a, b                                        ; $56ce: $78
	ld   [hl], c                                     ; $56cf: $71
	ld   l, l                                        ; $56d0: $6d
	sub  a                                           ; $56d1: $97
	rst  $38                                         ; $56d2: $ff
	rst  $38                                         ; $56d3: $ff
	ld   bc, $0d04                                   ; $56d4: $01 $04 $0d
	nop                                              ; $56d7: $00
	ld   a, [bc]                                     ; $56d8: $0a
	rrca                                             ; $56d9: $0f
	nop                                              ; $56da: $00
	ld   bc, $0401                                   ; $56db: $01 $01 $04
	ld   c, $03                                      ; $56de: $0e $03
	sub  b                                           ; $56e0: $90
	ld   l, [hl]                                     ; $56e1: $6e
	ld   e, a                                        ; $56e2: $5f
	ld   [hl], a                                     ; $56e3: $77
	sbc  a                                           ; $56e4: $9f
	dec  c                                           ; $56e5: $0d
	nop                                              ; $56e6: $00
	ld   a, [bc]                                     ; $56e7: $0a
	rrca                                             ; $56e8: $0f
	ld   b, $11                                      ; $56e9: $06 $11
	ld   bc, $f9a1                                   ; $56eb: $01 $a1 $f9
	db   $10                                         ; $56ee: $10
	inc  b                                           ; $56ef: $04
	ld   a, [bc]                                     ; $56f0: $0a
	inc  bc                                          ; $56f1: $03
	jp   nc, Jump_05b_7c78                           ; $56f2: $d2 $78 $7c

	ld   e, c                                        ; $56f5: $59
	rst  $38                                         ; $56f6: $ff
	rst  $38                                         ; $56f7: $ff
	ld   sp, hl                                      ; $56f8: $f9
	dec  c                                           ; $56f9: $0d
	cp   b                                           ; $56fa: $b8
	push hl                                          ; $56fb: $e5
	pop  af                                          ; $56fc: $f1
	ei                                               ; $56fd: $fb
	ld   e, d                                        ; $56fe: $5a
	ld   d, h                                        ; $56ff: $54
	sbc  c                                           ; $5700: $99
	ld   h, e                                        ; $5701: $63
	ld   e, l                                        ; $5702: $5d
	ld   [hl], h                                     ; $5703: $74
	sub  [hl]                                        ; $5704: $96
	ld   e, l                                        ; $5705: $5d
	dec  c                                           ; $5706: $0d
	ld   [bc], a                                     ; $5707: $02
	jp   nz, Jump_05b_5661                           ; $5708: $c2 $61 $56

	ld   a, e                                        ; $570b: $7b
	ld   d, [hl]                                     ; $570c: $56
	and  c                                           ; $570d: $a1
	ld   l, [hl]                                     ; $570e: $6e
	ld   e, a                                        ; $570f: $5f
	ld   [hl], a                                     ; $5710: $77
	rst  $38                                         ; $5711: $ff
	rst  $38                                         ; $5712: $ff
	dec  c                                           ; $5713: $0d
	nop                                              ; $5714: $00
	ld   a, [bc]                                     ; $5715: $0a
	rrca                                             ; $5716: $0f
	nop                                              ; $5717: $00
	ld   bc, $0101                                   ; $5718: $01 $01 $01
	inc  bc                                          ; $571b: $03
	ld   d, d                                        ; $571c: $52
	rst  $38                                         ; $571d: $ff
	rst  $38                                         ; $571e: $ff
	ld   d, d                                        ; $571f: $52
	adc  h                                           ; $5720: $8c
	ld   a, h                                        ; $5721: $7c
	ld   d, h                                        ; $5722: $54
	ld   l, a                                        ; $5723: $6f
	ld   a, c                                        ; $5724: $79
	dec  c                                           ; $5725: $0d
	db   $10                                         ; $5726: $10
	inc  bc                                          ; $5727: $03
	push de                                          ; $5728: $d5
	ld   h, b                                        ; $5729: $60
	sub  [hl]                                        ; $572a: $96
	ld   d, h                                        ; $572b: $54
	rst  $38                                         ; $572c: $ff
	rst  $38                                         ; $572d: $ff
	ld   bc, $0d04                                   ; $572e: $01 $04 $0d
	nop                                              ; $5731: $00
	ld   a, [bc]                                     ; $5732: $0a
	nop                                              ; $5733: $00
	rrca                                             ; $5734: $0f
	nop                                              ; $5735: $00
	ld   bc, $0101                                   ; $5736: $01 $01 $01
	inc  bc                                          ; $5739: $03
	ld   h, c                                        ; $573a: $61
	ld   h, c                                        ; $573b: $61
	ld   a, l                                        ; $573c: $7d
	inc  bc                                          ; $573d: $03
	push de                                          ; $573e: $d5
	ld   h, b                                        ; $573f: $60
	sub  [hl]                                        ; $5740: $96
	ld   d, h                                        ; $5741: $54
	rst  $38                                         ; $5742: $ff
	rst  $38                                         ; $5743: $ff
	ld   bc, $0d04                                   ; $5744: $01 $04 $0d
	nop                                              ; $5747: $00
	ld   a, [bc]                                     ; $5748: $0a
	ld   bc, $fa50                                   ; $5749: $01 $50 $fa
	db   $10                                         ; $574c: $10
	ld   a, b                                        ; $574d: $78
	sbc  [hl]                                        ; $574e: $9e
	ld   a, b                                        ; $574f: $78
	ld   l, d                                        ; $5750: $6a
	ld   h, c                                        ; $5751: $61
	and  c                                           ; $5752: $a1
	ld   a, b                                        ; $5753: $78
	halt                                             ; $5754: $76
	ld   h, c                                        ; $5755: $61
	sbc  e                                           ; $5756: $9b
	ld   a, c                                        ; $5757: $79
	dec  c                                           ; $5758: $0d
	call nc, $04fb                                   ; $5759: $d4 $fb $04
	ld   bc, $6d5a                                   ; $575c: $01 $5a $6d
	ld   e, l                                        ; $575f: $5d
	ld   h, e                                        ; $5760: $63
	and  c                                           ; $5761: $a1
	ld   h, c                                        ; $5762: $61
	sbc  e                                           ; $5763: $9b
	ld   e, d                                        ; $5764: $5a
	ld   [hl], c                                     ; $5765: $71
	ld   [hl], h                                     ; $5766: $74
	dec  c                                           ; $5767: $0d
	ld   d, d                                        ; $5768: $52
	sbc  c                                           ; $5769: $99
	and  c                                           ; $576a: $a1
	ld   l, [hl]                                     ; $576b: $6e
	ei                                               ; $576c: $fb
	ei                                               ; $576d: $fb
	ei                                               ; $576e: $fb
	ei                                               ; $576f: $fb
	ei                                               ; $5770: $fb
	ei                                               ; $5771: $fb
	ld   [hl], c                                     ; $5772: $71
	ld   a, [$000d]                                  ; $5773: $fa $0d $00
	ld   a, [bc]                                     ; $5776: $0a
	ld   bc, $9d54                                   ; $5777: $01 $54 $9d
	ld   [hl], c                                     ; $577a: $71
	ld   a, [$000d]                                  ; $577b: $fa $0d $00
	ld   a, [bc]                                     ; $577e: $0a
	inc  c                                           ; $577f: $0c
	rlca                                             ; $5780: $07
	inc  d                                           ; $5781: $14
	ld   [$0101], sp                                 ; $5782: $08 $01 $01
	ld   d, b                                        ; $5785: $50
	ld   l, l                                        ; $5786: $6d
	ld   l, l                                        ; $5787: $6d
	ld   l, l                                        ; $5788: $6d
	ld   l, l                                        ; $5789: $6d
	ld   l, l                                        ; $578a: $6d
	ld   l, l                                        ; $578b: $6d
	rst  $38                                         ; $578c: $ff
	rst  $38                                         ; $578d: $ff
	dec  c                                           ; $578e: $0d
	nop                                              ; $578f: $00
	ld   a, [bc]                                     ; $5790: $0a
	dec  c                                           ; $5791: $0d
	nop                                              ; $5792: $00
	nop                                              ; $5793: $00
	rrca                                             ; $5794: $0f
	nop                                              ; $5795: $00
	ld   bc, $020c                                   ; $5796: $01 $0c $02
	ld   b, $ae                                      ; $5799: $06 $ae
	rlca                                             ; $579b: $07
	dec  c                                           ; $579c: $0d
	nop                                              ; $579d: $00
	nop                                              ; $579e: $00
	rrca                                             ; $579f: $0f
	nop                                              ; $57a0: $00
	ld   bc, $020c                                   ; $57a1: $01 $0c $02
	ld   c, $66                                      ; $57a4: $0e $66
	inc  e                                           ; $57a6: $1c
	ld   b, $02                                      ; $57a7: $06 $02
	ld   [bc], a                                     ; $57a9: $02
	dec  e                                           ; $57aa: $1d
	ld   b, b                                        ; $57ab: $40
	ld   d, $03                                      ; $57ac: $16 $03
	ld   d, $01                                      ; $57ae: $16 $01
	inc  bc                                          ; $57b0: $03
	add  hl, hl                                      ; $57b1: $29
	nop                                              ; $57b2: $00
	ld   bc, $0008                                   ; $57b3: $01 $08 $00
	sbc  a                                           ; $57b6: $9f
	dec  c                                           ; $57b7: $0d
	ld   a, h                                        ; $57b8: $7c
	ld   l, h                                        ; $57b9: $6c
	ld   e, e                                        ; $57ba: $5b
	ld   l, [hl]                                     ; $57bb: $6e
	ld   a, b                                        ; $57bc: $78
	and  c                                           ; $57bd: $a1
	ld   [hl], h                                     ; $57be: $74
	sbc  [hl]                                        ; $57bf: $9e
	ld   d, b                                        ; $57c0: $50
	ld   l, l                                        ; $57c1: $6d
	ld   d, d                                        ; $57c2: $52
	dec  c                                           ; $57c3: $0d
	ld   [bc], a                                     ; $57c4: $02
	sub  l                                           ; $57c5: $95
	ld   l, e                                        ; $57c6: $6b
	ld   h, c                                        ; $57c7: $61
	ld   a, b                                        ; $57c8: $78
	ld   [hl], c                                     ; $57c9: $71
	ld   l, l                                        ; $57ca: $6d
	ld   l, d                                        ; $57cb: $6a
	ld   a, [$000d]                                  ; $57cc: $fa $0d $00
	ld   a, [bc]                                     ; $57cf: $0a
	dec  b                                           ; $57d0: $05
	ld   b, b                                        ; $57d1: $40
	ld   c, l                                        ; $57d2: $4d
	ld   [bc], a                                     ; $57d3: $02
	nop                                              ; $57d4: $00
	nop                                              ; $57d5: $00
	ld   bc, $f5d6                                   ; $57d6: $01 $d6 $f5
	ld   a, [$000d]                                  ; $57d9: $fa $0d $00
	ld   a, [bc]                                     ; $57dc: $0a
	dec  b                                           ; $57dd: $05
	ld   b, b                                        ; $57de: $40
	ld   d, e                                        ; $57df: $53
	ld   bc, $0002                                   ; $57e0: $01 $02 $00
	dec  c                                           ; $57e3: $0d
	nop                                              ; $57e4: $00
	nop                                              ; $57e5: $00
	rrca                                             ; $57e6: $0f
	nop                                              ; $57e7: $00
	ld   bc, $1e09                                   ; $57e8: $01 $09 $1e
	rlca                                             ; $57eb: $07
	ld   b, $08                                      ; $57ec: $06 $08
	inc  b                                           ; $57ee: $04
	add  b                                           ; $57ef: $80
	ld   b, $01                                      ; $57f0: $06 $01
	rst  $38                                         ; $57f2: $ff
	jr   nz, jr_05b_57f5                             ; $57f3: $20 $00

jr_05b_57f5:
	dec  b                                           ; $57f5: $05
	add  b                                           ; $57f6: $80
	ld   b, $01                                      ; $57f7: $06 $01
	ld   bc, $0000                                   ; $57f9: $01 $00 $00
	inc  c                                           ; $57fc: $0c
	ld   [bc], a                                     ; $57fd: $02
	ld   c, $01                                      ; $57fe: $0e $01
	rrca                                             ; $5800: $0f
	nop                                              ; $5801: $00
	ld   bc, $5001                                   ; $5802: $01 $01 $50
	rst  $38                                         ; $5805: $ff
	rst  $38                                         ; $5806: $ff
	sbc  [hl]                                        ; $5807: $9e
	sub  d                                           ; $5808: $92
	ld   a, [hl]                                     ; $5809: $7e
	ld   d, d                                        ; $580a: $52
	sub  [hl]                                        ; $580b: $96
	ld   a, b                                        ; $580c: $78
	db   $fc                                         ; $580d: $fc
	rst  $38                                         ; $580e: $ff
	rst  $38                                         ; $580f: $ff
	dec  c                                           ; $5810: $0d
	inc  bc                                          ; $5811: $03
	add  b                                           ; $5812: $80
	dec  b                                           ; $5813: $05
	db   $10                                         ; $5814: $10
	inc  bc                                          ; $5815: $03
	ld   [hl], l                                     ; $5816: $75
	halt                                             ; $5817: $76
	ld   a, l                                        ; $5818: $7d
	ld   d, d                                        ; $5819: $52
	ld   d, [hl]                                     ; $581a: $56
	rst  $38                                         ; $581b: $ff
	rst  $38                                         ; $581c: $ff
	rst  $38                                         ; $581d: $ff
	rst  $38                                         ; $581e: $ff
	dec  c                                           ; $581f: $0d
	rst  $38                                         ; $5820: $ff
	rst  $38                                         ; $5821: $ff
	rst  $38                                         ; $5822: $ff
	rst  $38                                         ; $5823: $ff
	rst  $38                                         ; $5824: $ff
	rst  $38                                         ; $5825: $ff
	rst  $38                                         ; $5826: $ff
	rst  $38                                         ; $5827: $ff
	rst  $38                                         ; $5828: $ff
	rst  $38                                         ; $5829: $ff
	dec  c                                           ; $582a: $0d
	nop                                              ; $582b: $00
	ld   a, [bc]                                     ; $582c: $0a
	inc  d                                           ; $582d: $14
	ld   b, $01                                      ; $582e: $06 $01
	rrca                                             ; $5830: $0f
	dec  bc                                          ; $5831: $0b
	ld   [bc], a                                     ; $5832: $02
	ld   bc, $0008                                   ; $5833: $01 $08 $00
	ld   e, l                                        ; $5836: $5d
	and  c                                           ; $5837: $a1
	sbc  a                                           ; $5838: $9f
	dec  c                                           ; $5839: $0d
	ld   [bc], a                                     ; $583a: $02
	and  l                                           ; $583b: $a5
	ld   h, a                                        ; $583c: $67
	ld   e, [hl]                                     ; $583d: $5e
	sbc  [hl]                                        ; $583e: $9e
	inc  bc                                          ; $583f: $03
	add  l                                           ; $5840: $85
	inc  b                                           ; $5841: $04
	xor  e                                           ; $5842: $ab
	inc  bc                                          ; $5843: $03
	add  d                                           ; $5844: $82
	inc  bc                                          ; $5845: $03
	ld   c, l                                        ; $5846: $4d
	ld   a, c                                        ; $5847: $79
	dec  b                                           ; $5848: $05
	db   $10                                         ; $5849: $10
	ld   a, b                                        ; $584a: $78
	ld   h, e                                        ; $584b: $63
	ld   d, d                                        ; $584c: $52
	sbc  a                                           ; $584d: $9f
	dec  c                                           ; $584e: $0d
	nop                                              ; $584f: $00
	ld   a, [bc]                                     ; $5850: $0a
	rrca                                             ; $5851: $0f
	nop                                              ; $5852: $00
	ld   bc, $020c                                   ; $5853: $01 $0c $02
	add  hl, bc                                      ; $5856: $09
	ld   e, $01                                      ; $5857: $1e $01
	adc  h                                           ; $5859: $8c

Jump_05b_585a:
	sbc  [hl]                                        ; $585a: $9e
	adc  h                                           ; $585b: $8c
	ld   h, e                                        ; $585c: $63
	ld   e, c                                        ; $585d: $59
	rst  $38                                         ; $585e: $ff
	rst  $38                                         ; $585f: $ff
	dec  c                                           ; $5860: $0d
	nop                                              ; $5861: $00
	ld   a, [bc]                                     ; $5862: $0a
	ld   c, $0c                                      ; $5863: $0e $0c
	inc  e                                           ; $5865: $1c
	ld   a, [bc]                                     ; $5866: $0a
	inc  b                                           ; $5867: $04
	inc  b                                           ; $5868: $04
	ld   bc, $5258                                   ; $5869: $01 $58 $52
	sbc  [hl]                                        ; $586c: $9e
	ld   [$9f00], sp                                 ; $586d: $08 $00 $9f
	dec  c                                           ; $5870: $0d
	ld   e, b                                        ; $5871: $58
	adc  a                                           ; $5872: $8f
	ei                                               ; $5873: $fb
	cp   b                                           ; $5874: $b8
	push hl                                          ; $5875: $e5
	pop  af                                          ; $5876: $f1
	ei                                               ; $5877: $fb
	ld   a, h                                        ; $5878: $7c
	ld   l, h                                        ; $5879: $6c
	ld   d, d                                        ; $587a: $52
	ld   [hl], h                                     ; $587b: $74
	ld   l, l                                        ; $587c: $6d
	and  c                                           ; $587d: $a1
	dec  c                                           ; $587e: $0d
	ld   l, [hl]                                     ; $587f: $6e
	ld   [hl], c                                     ; $5880: $71
	ld   [hl], h                                     ; $5881: $74
	ld   a, b                                        ; $5882: $78
	sbc  a                                           ; $5883: $9f
	dec  c                                           ; $5884: $0d
	nop                                              ; $5885: $00
	ld   a, [bc]                                     ; $5886: $0a
	ld   bc, $a102                                   ; $5887: $01 $02 $a1
	inc  bc                                          ; $588a: $03
	and  b                                           ; $588b: $a0
	ld   l, a                                        ; $588c: $6f
	ld   a, l                                        ; $588d: $7d
	sbc  [hl]                                        ; $588e: $9e
	sbc  l                                           ; $588f: $9d
	ld   e, c                                        ; $5890: $59
	sub  a                                           ; $5891: $97
	and  c                                           ; $5892: $a1
	ld   [hl], l                                     ; $5893: $75
	sub  b                                           ; $5894: $90
	ld   a, b                                        ; $5895: $78
	ld   d, d                                        ; $5896: $52
	dec  c                                           ; $5897: $0d
	ld   e, d                                        ; $5898: $5a
	sbc  [hl]                                        ; $5899: $9e
	inc  de                                          ; $589a: $13
	ld   [bc], a                                     ; $589b: $02
	sub  e                                           ; $589c: $93
	sub  b                                           ; $589d: $90
	sub  d                                           ; $589e: $92
	ld   [hl], c                                     ; $589f: $71
	ld   l, a                                        ; $58a0: $6f
	sub  c                                           ; $58a1: $91
	ei                                               ; $58a2: $fb
	dec  c                                           ; $58a3: $0d
	adc  h                                           ; $58a4: $8c
	ld   l, b                                        ; $58a5: $68
	ld   d, d                                        ; $58a6: $52
	ld   l, [hl]                                     ; $58a7: $6e
	sbc  e                                           ; $58a8: $9b
	sbc  a                                           ; $58a9: $9f
	dec  c                                           ; $58aa: $0d
	nop                                              ; $58ab: $00
	ld   a, [bc]                                     ; $58ac: $0a
	ld   bc, $7e59                                   ; $58ad: $01 $59 $7e
	ld   [hl], c                                     ; $58b0: $71
	ld   [hl], h                                     ; $58b1: $74
	sub  d                                           ; $58b2: $92
	sbc  b                                           ; $58b3: $98
	ld   l, l                                        ; $58b4: $6d
	ld   d, d                                        ; $58b5: $52
	ld   e, d                                        ; $58b6: $5a
	dec  c                                           ; $58b7: $0d
	ld   [bc], a                                     ; $58b8: $02
	sbc  b                                           ; $58b9: $98
	inc  bc                                          ; $58ba: $03
	nop                                              ; $58bb: $00
	ld   a, h                                        ; $58bc: $7c
	inc  bc                                          ; $58bd: $03
	ld   l, e                                        ; $58be: $6b
	inc  bc                                          ; $58bf: $03
	ld   c, a                                        ; $58c0: $4f
	sbc  [hl]                                        ; $58c1: $9e
	ld   l, a                                        ; $58c2: $6f
	sub  l                                           ; $58c3: $95
	ld   [hl], c                                     ; $58c4: $71
	halt                                             ; $58c5: $76
	ldh  [c], a                                      ; $58c6: $e2
	db   $ec                                         ; $58c7: $ec
	dec  c                                           ; $58c8: $0d
	ld   a, b                                        ; $58c9: $78
	and  c                                           ; $58ca: $a1
	ld   [hl], l                                     ; $58cb: $75
	ld   a, b                                        ; $58cc: $78
	sbc  a                                           ; $58cd: $9f
	dec  c                                           ; $58ce: $0d
	nop                                              ; $58cf: $00
	ld   a, [bc]                                     ; $58d0: $0a
	inc  e                                           ; $58d1: $1c
	ld   a, [bc]                                     ; $58d2: $0a
	ld   [bc], a                                     ; $58d3: $02
	ld   [bc], a                                     ; $58d4: $02
	ld   bc, $9d59                                   ; $58d5: $01 $59 $9d
	ld   d, d                                        ; $58d8: $52
	ld   l, e                                        ; $58d9: $6b
	ld   d, h                                        ; $58da: $54
	ld   l, [hl]                                     ; $58db: $6e
	ld   e, d                                        ; $58dc: $5a
	sbc  [hl]                                        ; $58dd: $9e
	dec  c                                           ; $58de: $0d
	inc  b                                           ; $58df: $04
	dec  c                                           ; $58e0: $0d
	ld   [bc], a                                     ; $58e1: $02
	sub  [hl]                                        ; $58e2: $96
	inc  b                                           ; $58e3: $04
	ld   b, l                                        ; $58e4: $45
	inc  b                                           ; $58e5: $04
	ld   a, [bc]                                     ; $58e6: $0a
	ld   a, l                                        ; $58e7: $7d
	ld   h, c                                        ; $58e8: $61
	ld   h, c                                        ; $58e9: $61
	ld   [hl], l                                     ; $58ea: $75
	inc  bc                                          ; $58eb: $03
	ld   a, [hl]                                     ; $58ec: $7e
	dec  b                                           ; $58ed: $05
	nop                                              ; $58ee: $00
	ld   l, [hl]                                     ; $58ef: $6e
	ld   a, [$000d]                                  ; $58f0: $fa $0d $00
	ld   a, [bc]                                     ; $58f3: $0a
	ld   bc, $a102                                   ; $58f4: $01 $02 $a1
	inc  bc                                          ; $58f7: $03
	and  b                                           ; $58f8: $a0
	ld   l, a                                        ; $58f9: $6f
	and  b                                           ; $58fa: $a0
	inc  b                                           ; $58fb: $04
	ld   b, l                                        ; $58fc: $45
	sbc  d                                           ; $58fd: $9a
	dec  b                                           ; $58fe: $05
	scf                                              ; $58ff: $37
	ld   d, [hl]                                     ; $5900: $56
	ld   [hl], h                                     ; $5901: $74
	dec  c                                           ; $5902: $0d
	inc  bc                                          ; $5903: $03
	add  b                                           ; $5904: $80
	inc  bc                                          ; $5905: $03
	jp   c, Jump_05b_7465                            ; $5906: $da $65 $74

	ld   e, e                                        ; $5909: $5b
	ld   a, b                                        ; $590a: $78
	ld   a, [$000d]                                  ; $590b: $fa $0d $00
	ld   a, [bc]                                     ; $590e: $0a
	ld   h, $00                                      ; $590f: $26 $00
	ld   c, $1b                                      ; $5911: $0e $1b
	rrca                                             ; $5913: $0f
	nop                                              ; $5914: $00
	ld   bc, $030d                                   ; $5915: $01 $0d $03
	dec  b                                           ; $5918: $05
	ld   [bc], a                                     ; $5919: $02
	ld   bc, $9a50                                   ; $591a: $01 $50 $9a
	ld   sp, hl                                      ; $591d: $f9
	dec  c                                           ; $591e: $0d
	inc  b                                           ; $591f: $04
	ld   c, c                                        ; $5920: $49
	and  b                                           ; $5921: $a0
	sub  d                                           ; $5922: $92
	ld   [hl], c                                     ; $5923: $71
	ld   [hl], h                                     ; $5924: $74
	sbc  c                                           ; $5925: $99
	and  c                                           ; $5926: $a1
	ld   [hl], l                                     ; $5927: $75
	ld   h, a                                        ; $5928: $67
	ld   e, c                                        ; $5929: $59
	ld   sp, hl                                      ; $592a: $f9
	dec  c                                           ; $592b: $0d
	nop                                              ; $592c: $00
	ld   a, [bc]                                     ; $592d: $0a
	inc  e                                           ; $592e: $1c
	inc  bc                                          ; $592f: $03
	inc  b                                           ; $5930: $04
	inc  b                                           ; $5931: $04
	ld   bc, $8b03                                   ; $5932: $01 $03 $8b
	ld   a, l                                        ; $5935: $7d
	rst  $38                                         ; $5936: $ff
	rst  $38                                         ; $5937: $ff
	inc  b                                           ; $5938: $04
	ld   c, $02                                      ; $5939: $0e $02
	jp   $ef78                                       ; $593b: $c3 $78 $ef


	or   d                                           ; $593e: $b2
	call nz, $a0c9                                   ; $593f: $c4 $c9 $a0
	dec  c                                           ; $5942: $0d
	ld   a, b                                        ; $5943: $78
	ld   e, l                                        ; $5944: $5d
	ld   h, l                                        ; $5945: $65
	ld   [hl], h                                     ; $5946: $74
	ld   h, l                                        ; $5947: $65
	adc  h                                           ; $5948: $8c
	ld   [hl], c                                     ; $5949: $71
	ld   l, l                                        ; $594a: $6d
	ld   a, h                                        ; $594b: $7c
	rst  $38                                         ; $594c: $ff
	rst  $38                                         ; $594d: $ff
	dec  c                                           ; $594e: $0d
	nop                                              ; $594f: $00
	ld   a, [bc]                                     ; $5950: $0a
	rlca                                             ; $5951: $07
	jp   nz, $0400                                   ; $5952: $c2 $00 $04

	add  b                                           ; $5955: $80
	ld   l, d                                        ; $5956: $6a
	ld   bc, $2000                                   ; $5957: $01 $00 $20
	nop                                              ; $595a: $00
	rrca                                             ; $595b: $0f
	nop                                              ; $595c: $00
	ld   bc, $9001                                   ; $595d: $01 $01 $90
	ld   h, l                                        ; $5960: $65
	ld   e, c                                        ; $5961: $59
	ld   h, l                                        ; $5962: $65
	ld   [hl], h                                     ; $5963: $74
	sbc  [hl]                                        ; $5964: $9e
	ld   h, c                                        ; $5965: $61
	sbc  d                                           ; $5966: $9a
	ld   a, h                                        ; $5967: $7c
	ld   [bc], a                                     ; $5968: $02
	jp   Jump_05b_6775                               ; $5969: $c3 $75 $67


	ld   e, c                                        ; $596c: $59
	ld   sp, hl                                      ; $596d: $f9
	dec  c                                           ; $596e: $0d
	nop                                              ; $596f: $00
	ld   a, [bc]                                     ; $5970: $0a
	dec  c                                           ; $5971: $0d
	nop                                              ; $5972: $00
	nop                                              ; $5973: $00
	db   $10                                         ; $5974: $10
	dec  e                                           ; $5975: $1d
	nop                                              ; $5976: $00
	inc  e                                           ; $5977: $1c
	inc  bc                                          ; $5978: $03
	rlca                                             ; $5979: $07
	rlca                                             ; $597a: $07
	ld   bc, $9e6b                                   ; $597b: $01 $6b $9e
	ld   l, e                                        ; $597e: $6b
	sbc  d                                           ; $597f: $9a
	ld   a, l                                        ; $5980: $7d
	rst  $38                                         ; $5981: $ff
	rst  $38                                         ; $5982: $ff
	ld   a, [$0dfa]                                  ; $5983: $fa $fa $0d
	nop                                              ; $5986: $00
	ld   a, [bc]                                     ; $5987: $0a
	inc  e                                           ; $5988: $1c
	inc  bc                                          ; $5989: $03
	inc  bc                                          ; $598a: $03
	inc  bc                                          ; $598b: $03
	dec  e                                           ; $598c: $1d
	ld   b, b                                        ; $598d: $40
	inc  de                                          ; $598e: $13
	inc  bc                                          ; $598f: $03
	inc  de                                          ; $5990: $13
	ld   bc, $2803                                   ; $5991: $01 $03 $28
	nop                                              ; $5994: $00
	ld   bc, $5996                                   ; $5995: $01 $96 $59
	ld   [hl], c                                     ; $5998: $71
	ld   l, l                                        ; $5999: $6d
	rst  $38                                         ; $599a: $ff
	rst  $38                                         ; $599b: $ff
	dec  c                                           ; $599c: $0d
	ld   d, b                                        ; $599d: $50
	ld   a, b                                        ; $599e: $78
	ld   l, l                                        ; $599f: $6d
	ld   e, d                                        ; $59a0: $5a
	add  b                                           ; $59a1: $80
	sbc  e                                           ; $59a2: $9b
	ld   [hl], c                                     ; $59a3: $71
	ld   [hl], h                                     ; $59a4: $74
	ld   e, l                                        ; $59a5: $5d
	sbc  d                                           ; $59a6: $9a
	ld   l, l                                        ; $59a7: $6d
	ld   a, h                                        ; $59a8: $7c
	ld   a, e                                        ; $59a9: $7b
	ld   sp, hl                                      ; $59aa: $f9
	dec  c                                           ; $59ab: $0d
	nop                                              ; $59ac: $00
	ld   a, [bc]                                     ; $59ad: $0a
	inc  e                                           ; $59ae: $1c
	inc  bc                                          ; $59af: $03
	ld   bc, $0101                                   ; $59b0: $01 $01 $01
	ld   d, b                                        ; $59b3: $50
	sbc  b                                           ; $59b4: $98
	ld   e, d                                        ; $59b5: $5a
	halt                                             ; $59b6: $76
	ld   d, h                                        ; $59b7: $54
	rst  $38                                         ; $59b8: $ff
	rst  $38                                         ; $59b9: $ff
	dec  c                                           ; $59ba: $0d
	inc  b                                           ; $59bb: $04
	adc  a                                           ; $59bc: $8f
	inc  b                                           ; $59bd: $04
	jr   @+$7b                                       ; $59be: $18 $79

	ld   d, b                                        ; $59c0: $50
	sbc  b                                           ; $59c1: $98
	ld   e, d                                        ; $59c2: $5a
	halt                                             ; $59c3: $76
	ld   d, h                                        ; $59c4: $54
	rst  $38                                         ; $59c5: $ff
	rst  $38                                         ; $59c6: $ff
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
	add  hl, de                                      ; $59d3: $19
	dec  b                                           ; $59d4: $05
	ld   [bc], a                                     ; $59d5: $02
	ld   d, d                                        ; $59d6: $52
	ld   [hl], c                                     ; $59d7: $71
	ld   h, l                                        ; $59d8: $65
	sub  l                                           ; $59d9: $95
	ld   a, c                                        ; $59da: $79
	ld   h, e                                        ; $59db: $63
	ld   e, d                                        ; $59dc: $5a
	ld   h, a                                        ; $59dd: $67
	nop                                              ; $59de: $00
	nop                                              ; $59df: $00
	dec  b                                           ; $59e0: $05
	ld   d, $6f                                      ; $59e1: $16 $6f
	ld   [bc], a                                     ; $59e3: $02
	ld   d, e                                        ; $59e4: $53
	sbc  c                                           ; $59e5: $99
	nop                                              ; $59e6: $00
	ld   bc, $0707                                   ; $59e7: $01 $07 $07
	ld   bc, $0302                                   ; $59ea: $01 $02 $03
	ld   bc, $2000                                   ; $59ed: $01 $00 $20
	nop                                              ; $59f0: $00
	rlca                                             ; $59f1: $07
	db   $ec                                         ; $59f2: $ec
	nop                                              ; $59f3: $00
	ld   [bc], a                                     ; $59f4: $02
	inc  bc                                          ; $59f5: $03
	ld   bc, $2001                                   ; $59f6: $01 $01 $20
	nop                                              ; $59f9: $00
	ld   b, $ec                                      ; $59fa: $06 $ec
	nop                                              ; $59fc: $00
	rrca                                             ; $59fd: $0f
	nop                                              ; $59fe: $00
	ld   bc, $0201                                   ; $59ff: $01 $01 $02
	sub  l                                           ; $5a02: $95
	ld   [hl], d                                     ; $5a03: $72
	ld   e, c                                        ; $5a04: $59
	sbc  c                                           ; $5a05: $99
	halt                                             ; $5a06: $76
	ld   d, d                                        ; $5a07: $52
	ld   d, d                                        ; $5a08: $52
	ld   [hl], l                                     ; $5a09: $75
	ld   h, a                                        ; $5a0a: $67
	ld   a, e                                        ; $5a0b: $7b
	sbc  a                                           ; $5a0c: $9f
	dec  c                                           ; $5a0d: $0d
	ld   l, e                                        ; $5a0e: $6b
	sbc  d                                           ; $5a0f: $9a
	ld   h, [hl]                                     ; $5a10: $66
	sub  c                                           ; $5a11: $91
	rst  $38                                         ; $5a12: $ff
	rst  $38                                         ; $5a13: $ff
	dec  c                                           ; $5a14: $0d
	nop                                              ; $5a15: $00
	ld   a, [bc]                                     ; $5a16: $0a
	nop                                              ; $5a17: $00
	rrca                                             ; $5a18: $0f
	nop                                              ; $5a19: $00
	ld   bc, $5201                                   ; $5a1a: $01 $01 $52
	ld   [hl], c                                     ; $5a1d: $71
	ld   h, l                                        ; $5a1e: $65
	sub  l                                           ; $5a1f: $95
	ld   a, c                                        ; $5a20: $79
	ld   h, e                                        ; $5a21: $63
	ld   e, d                                        ; $5a22: $5a
	ld   h, l                                        ; $5a23: $65
	adc  h                                           ; $5a24: $8c
	ld   h, a                                        ; $5a25: $67
	sub  [hl]                                        ; $5a26: $96
	sbc  a                                           ; $5a27: $9f
	dec  c                                           ; $5a28: $0d
	nop                                              ; $5a29: $00
	ld   a, [bc]                                     ; $5a2a: $0a
	inc  e                                           ; $5a2b: $1c
	inc  bc                                          ; $5a2c: $03
	inc  bc                                          ; $5a2d: $03
	inc  bc                                          ; $5a2e: $03
	dec  e                                           ; $5a2f: $1d
	ld   b, b                                        ; $5a30: $40
	inc  de                                          ; $5a31: $13
	inc  bc                                          ; $5a32: $03
	inc  de                                          ; $5a33: $13
	ld   bc, $2801                                   ; $5a34: $01 $01 $28
	nop                                              ; $5a37: $00
	ld   bc, $5b03                                   ; $5a38: $01 $03 $5b
	ld   e, c                                        ; $5a3b: $59
	sbc  c                                           ; $5a3c: $99
	sbc  l                                           ; $5a3d: $9d
	rst  $38                                         ; $5a3e: $ff
	rst  $38                                         ; $5a3f: $ff
	dec  c                                           ; $5a40: $0d
	ld   h, a                                        ; $5a41: $67
	ld   h, d                                        ; $5a42: $62
	ld   e, l                                        ; $5a43: $5d
	inc  b                                           ; $5a44: $04
	ld   c, $02                                      ; $5a45: $0e $02
	jp   $9078                                       ; $5a47: $c3 $78 $90


	ld   a, h                                        ; $5a4a: $7c
	ld   a, b                                        ; $5a4b: $78
	ld   a, h                                        ; $5a4c: $7c
	sbc  a                                           ; $5a4d: $9f
	dec  c                                           ; $5a4e: $0d
	nop                                              ; $5a4f: $00
	ld   a, [bc]                                     ; $5a50: $0a
	dec  c                                           ; $5a51: $0d
	nop                                              ; $5a52: $00
	nop                                              ; $5a53: $00
	rrca                                             ; $5a54: $0f
	nop                                              ; $5a55: $00
	ld   bc, $020c                                   ; $5a56: $01 $0c $02
	ld   c, $1b                                      ; $5a59: $0e $1b
	inc  e                                           ; $5a5b: $1c
	inc  bc                                          ; $5a5c: $03
	inc  b                                           ; $5a5d: $04
	inc  b                                           ; $5a5e: $04
	ld   bc, $6161                                   ; $5a5f: $01 $61 $61
	ld   a, c                                        ; $5a62: $79
	ld   a, l                                        ; $5a63: $7d
	rst  $38                                         ; $5a64: $ff
	ld   a, b                                        ; $5a65: $78
	ld   d, d                                        ; $5a66: $52
	adc  l                                           ; $5a67: $8d
	ld   l, l                                        ; $5a68: $6d
	ld   d, d                                        ; $5a69: $52
	ld   a, e                                        ; $5a6a: $7b
	rst  $38                                         ; $5a6b: $ff
	rst  $38                                         ; $5a6c: $ff
	dec  c                                           ; $5a6d: $0d
	nop                                              ; $5a6e: $00
	ld   a, [bc]                                     ; $5a6f: $0a
	ld   bc, $1e04                                   ; $5a70: $01 $04 $1e
	and  b                                           ; $5a73: $a0
	inc  b                                           ; $5a74: $04
	jr   jr_05b_5ae4                                 ; $5a75: $18 $6d

	ld   [hl], c                                     ; $5a77: $71
	ld   [hl], h                                     ; $5a78: $74
	adc  l                                           ; $5a79: $8d
	adc  h                                           ; $5a7a: $8c
	ld   h, l                                        ; $5a7b: $65
	sub  l                                           ; $5a7c: $95
	ld   d, h                                        ; $5a7d: $54
	sbc  a                                           ; $5a7e: $9f
	dec  c                                           ; $5a7f: $0d
	nop                                              ; $5a80: $00
	ld   a, [bc]                                     ; $5a81: $0a
	dec  c                                           ; $5a82: $0d
	nop                                              ; $5a83: $00
	nop                                              ; $5a84: $00
	jr   jr_05b_5a8a                                 ; $5a85: $18 $03

	nop                                              ; $5a87: $00
	inc  b                                           ; $5a88: $04
	adc  [hl]                                        ; $5a89: $8e

jr_05b_5a8a:
	inc  b                                           ; $5a8a: $04
	inc  c                                           ; $5a8b: $0c
	nop                                              ; $5a8c: $00
	nop                                              ; $5a8d: $00
	dec  b                                           ; $5a8e: $05
	inc  de                                          ; $5a8f: $13
	ld   [bc], a                                     ; $5a90: $02
	ld   hl, $0100                                   ; $5a91: $21 $00 $01
	inc  bc                                          ; $5a94: $03
	ld   l, d                                        ; $5a95: $6a
	inc  bc                                          ; $5a96: $03
	db   $db                                         ; $5a97: $db
	nop                                              ; $5a98: $00
	ld   [bc], a                                     ; $5a99: $02
	rlca                                             ; $5a9a: $07
	add  b                                           ; $5a9b: $80
	inc  b                                           ; $5a9c: $04
	ld   [bc], a                                     ; $5a9d: $02
	ld   [bc], a                                     ; $5a9e: $02
	ld   bc, $2000                                   ; $5a9f: $01 $00 $20
	nop                                              ; $5aa2: $00
	rlca                                             ; $5aa3: $07
	and  h                                           ; $5aa4: $a4
	ld   bc, $0202                                   ; $5aa5: $01 $02 $02
	ld   bc, $2001                                   ; $5aa8: $01 $01 $20
	nop                                              ; $5aab: $00
	rlca                                             ; $5aac: $07
	pop  af                                          ; $5aad: $f1
	ld   bc, $0202                                   ; $5aae: $01 $02 $02
	ld   bc, $2002                                   ; $5ab1: $01 $02 $20
	nop                                              ; $5ab4: $00
	rrca                                             ; $5ab5: $0f
	nop                                              ; $5ab6: $00
	ld   bc, $2923                                   ; $5ab7: $01 $23 $29
	dec  c                                           ; $5aba: $0d
	inc  bc                                          ; $5abb: $03
	inc  b                                           ; $5abc: $04
	ld   bc, $6161                                   ; $5abd: $01 $61 $61
	ld   a, c                                        ; $5ac0: $79
	ld   a, l                                        ; $5ac1: $7d
	rst  $38                                         ; $5ac2: $ff
	rst  $38                                         ; $5ac3: $ff
	dec  c                                           ; $5ac4: $0d
	ld   d, b                                        ; $5ac5: $50
	sbc  b                                           ; $5ac6: $98
	adc  h                                           ; $5ac7: $8c
	ld   l, c                                        ; $5ac8: $69
	and  c                                           ; $5ac9: $a1
	ld   a, e                                        ; $5aca: $7b
	rst  $38                                         ; $5acb: $ff
	rst  $38                                         ; $5acc: $ff
	dec  c                                           ; $5acd: $0d
	nop                                              ; $5ace: $00
	ld   a, [bc]                                     ; $5acf: $0a
	dec  c                                           ; $5ad0: $0d
	nop                                              ; $5ad1: $00
	nop                                              ; $5ad2: $00
	jr   jr_05b_5ad8                                 ; $5ad3: $18 $03

	nop                                              ; $5ad5: $00
	inc  b                                           ; $5ad6: $04
	adc  [hl]                                        ; $5ad7: $8e

jr_05b_5ad8:
	inc  b                                           ; $5ad8: $04
	inc  c                                           ; $5ad9: $0c
	nop                                              ; $5ada: $00
	nop                                              ; $5adb: $00
	call c, $edfb                                    ; $5adc: $dc $fb $ed
	nop                                              ; $5adf: $00
	ld   bc, $6a03                                   ; $5ae0: $01 $03 $6a
	inc  bc                                          ; $5ae3: $03

jr_05b_5ae4:
	db   $db                                         ; $5ae4: $db
	nop                                              ; $5ae5: $00
	ld   [bc], a                                     ; $5ae6: $02
	rlca                                             ; $5ae7: $07
	add  b                                           ; $5ae8: $80
	inc  b                                           ; $5ae9: $04
	ld   [bc], a                                     ; $5aea: $02
	ld   [bc], a                                     ; $5aeb: $02
	ld   bc, $2000                                   ; $5aec: $01 $00 $20
	nop                                              ; $5aef: $00
	rlca                                             ; $5af0: $07
	ld   a, $02                                      ; $5af1: $3e $02
	ld   [bc], a                                     ; $5af3: $02
	ld   [bc], a                                     ; $5af4: $02
	ld   bc, $2001                                   ; $5af5: $01 $01 $20
	nop                                              ; $5af8: $00
	rlca                                             ; $5af9: $07
	sub  d                                           ; $5afa: $92
	ld   [bc], a                                     ; $5afb: $02
	ld   [bc], a                                     ; $5afc: $02
	ld   [bc], a                                     ; $5afd: $02
	ld   bc, $2002                                   ; $5afe: $01 $02 $20
	nop                                              ; $5b01: $00
	rrca                                             ; $5b02: $0f
	nop                                              ; $5b03: $00
	ld   bc, $2623                                   ; $5b04: $01 $23 $26
	dec  c                                           ; $5b07: $0d
	inc  bc                                          ; $5b08: $03
	inc  b                                           ; $5b09: $04
	ld   bc, $6161                                   ; $5b0a: $01 $61 $61
	ld   a, c                                        ; $5b0d: $79
	ld   a, l                                        ; $5b0e: $7d
	rst  $38                                         ; $5b0f: $ff
	rst  $38                                         ; $5b10: $ff
	dec  c                                           ; $5b11: $0d
	ld   d, b                                        ; $5b12: $50
	sbc  b                                           ; $5b13: $98
	adc  h                                           ; $5b14: $8c
	ld   l, c                                        ; $5b15: $69
	and  c                                           ; $5b16: $a1
	ld   a, e                                        ; $5b17: $7b
	rst  $38                                         ; $5b18: $ff
	rst  $38                                         ; $5b19: $ff
	dec  c                                           ; $5b1a: $0d
	nop                                              ; $5b1b: $00
	ld   a, [bc]                                     ; $5b1c: $0a
	dec  c                                           ; $5b1d: $0d
	nop                                              ; $5b1e: $00
	nop                                              ; $5b1f: $00
	jr   jr_05b_5b25                                 ; $5b20: $18 $03

	nop                                              ; $5b22: $00
	inc  b                                           ; $5b23: $04
	adc  [hl]                                        ; $5b24: $8e

jr_05b_5b25:
	inc  b                                           ; $5b25: $04
	inc  c                                           ; $5b26: $0c
	nop                                              ; $5b27: $00
	nop                                              ; $5b28: $00
	dec  b                                           ; $5b29: $05
	inc  de                                          ; $5b2a: $13
	ld   [bc], a                                     ; $5b2b: $02
	ld   hl, $0100                                   ; $5b2c: $21 $00 $01
	call c, $edfb                                    ; $5b2f: $dc $fb $ed
	nop                                              ; $5b32: $00
	ld   [bc], a                                     ; $5b33: $02
	rlca                                             ; $5b34: $07
	add  b                                           ; $5b35: $80
	inc  b                                           ; $5b36: $04
	ld   [bc], a                                     ; $5b37: $02
	ld   [bc], a                                     ; $5b38: $02
	ld   bc, $2000                                   ; $5b39: $01 $00 $20
	nop                                              ; $5b3c: $00
	rlca                                             ; $5b3d: $07
	push hl                                          ; $5b3e: $e5
	ld   [bc], a                                     ; $5b3f: $02
	ld   [bc], a                                     ; $5b40: $02
	ld   [bc], a                                     ; $5b41: $02
	ld   bc, $2001                                   ; $5b42: $01 $01 $20
	nop                                              ; $5b45: $00
	rlca                                             ; $5b46: $07
	jr   c, @+$05                                    ; $5b47: $38 $03

	ld   [bc], a                                     ; $5b49: $02
	ld   [bc], a                                     ; $5b4a: $02
	ld   bc, $2002                                   ; $5b4b: $01 $02 $20
	nop                                              ; $5b4e: $00
	rrca                                             ; $5b4f: $0f
	nop                                              ; $5b50: $00
	ld   bc, $0423                                   ; $5b51: $01 $23 $04
	dec  c                                           ; $5b54: $0d
	inc  bc                                          ; $5b55: $03
	inc  b                                           ; $5b56: $04
	ld   bc, $6161                                   ; $5b57: $01 $61 $61
	ld   a, c                                        ; $5b5a: $79
	ld   a, l                                        ; $5b5b: $7d
	rst  $38                                         ; $5b5c: $ff
	rst  $38                                         ; $5b5d: $ff
	dec  c                                           ; $5b5e: $0d
	ld   d, b                                        ; $5b5f: $50
	sbc  b                                           ; $5b60: $98
	adc  h                                           ; $5b61: $8c
	ld   l, c                                        ; $5b62: $69
	and  c                                           ; $5b63: $a1
	ld   a, e                                        ; $5b64: $7b
	rst  $38                                         ; $5b65: $ff
	rst  $38                                         ; $5b66: $ff
	dec  c                                           ; $5b67: $0d
	nop                                              ; $5b68: $00
	ld   a, [bc]                                     ; $5b69: $0a
	dec  c                                           ; $5b6a: $0d
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	jr   jr_05b_5b72                                 ; $5b6d: $18 $03

	nop                                              ; $5b6f: $00
	inc  b                                           ; $5b70: $04
	adc  [hl]                                        ; $5b71: $8e

jr_05b_5b72:
	inc  b                                           ; $5b72: $04
	inc  c                                           ; $5b73: $0c
	nop                                              ; $5b74: $00
	nop                                              ; $5b75: $00
	inc  b                                           ; $5b76: $04
	ld   c, $04                                      ; $5b77: $0e $04
	ld   d, $02                                      ; $5b79: $16 $02
	xor  b                                           ; $5b7b: $a8
	inc  b                                           ; $5b7c: $04
	sub  l                                           ; $5b7d: $95
	ld   [bc], a                                     ; $5b7e: $02
	ld   hl, $0100                                   ; $5b7f: $21 $00 $01
	inc  bc                                          ; $5b82: $03
	ld   l, d                                        ; $5b83: $6a
	inc  bc                                          ; $5b84: $03
	db   $db                                         ; $5b85: $db
	nop                                              ; $5b86: $00
	ld   [bc], a                                     ; $5b87: $02
	rlca                                             ; $5b88: $07
	add  b                                           ; $5b89: $80
	inc  b                                           ; $5b8a: $04
	ld   [bc], a                                     ; $5b8b: $02
	ld   [bc], a                                     ; $5b8c: $02
	ld   bc, $2000                                   ; $5b8d: $01 $00 $20
	nop                                              ; $5b90: $00
	rlca                                             ; $5b91: $07
	adc  h                                           ; $5b92: $8c
	inc  bc                                          ; $5b93: $03
	ld   [bc], a                                     ; $5b94: $02
	ld   [bc], a                                     ; $5b95: $02
	ld   bc, $2001                                   ; $5b96: $01 $01 $20
	nop                                              ; $5b99: $00
	rlca                                             ; $5b9a: $07
	ret                                              ; $5b9b: $c9


	inc  bc                                          ; $5b9c: $03
	ld   [bc], a                                     ; $5b9d: $02
	ld   [bc], a                                     ; $5b9e: $02
	ld   bc, $2002                                   ; $5b9f: $01 $02 $20
	nop                                              ; $5ba2: $00
	rrca                                             ; $5ba3: $0f
	nop                                              ; $5ba4: $00
	ld   bc, $2623                                   ; $5ba5: $01 $23 $26
	dec  c                                           ; $5ba8: $0d
	inc  bc                                          ; $5ba9: $03
	inc  b                                           ; $5baa: $04
	ld   bc, $6161                                   ; $5bab: $01 $61 $61
	ld   a, c                                        ; $5bae: $79
	ld   a, l                                        ; $5baf: $7d
	rst  $38                                         ; $5bb0: $ff
	rst  $38                                         ; $5bb1: $ff
	dec  c                                           ; $5bb2: $0d
	ld   d, b                                        ; $5bb3: $50
	sbc  b                                           ; $5bb4: $98
	adc  h                                           ; $5bb5: $8c
	ld   l, c                                        ; $5bb6: $69
	and  c                                           ; $5bb7: $a1
	ld   a, e                                        ; $5bb8: $7b
	rst  $38                                         ; $5bb9: $ff
	rst  $38                                         ; $5bba: $ff
	dec  c                                           ; $5bbb: $0d
	nop                                              ; $5bbc: $00
	ld   a, [bc]                                     ; $5bbd: $0a
	dec  c                                           ; $5bbe: $0d
	nop                                              ; $5bbf: $00
	nop                                              ; $5bc0: $00
	jr   jr_05b_5bc6                                 ; $5bc1: $18 $03

	nop                                              ; $5bc3: $00
	inc  b                                           ; $5bc4: $04
	adc  [hl]                                        ; $5bc5: $8e

jr_05b_5bc6:
	inc  b                                           ; $5bc6: $04
	inc  c                                           ; $5bc7: $0c
	nop                                              ; $5bc8: $00
	nop                                              ; $5bc9: $00
	call c, $edfb                                    ; $5bca: $dc $fb $ed
	nop                                              ; $5bcd: $00
	ld   bc, $0e04                                   ; $5bce: $01 $04 $0e
	inc  b                                           ; $5bd1: $04
	ld   d, $02                                      ; $5bd2: $16 $02
	xor  b                                           ; $5bd4: $a8
	inc  b                                           ; $5bd5: $04
	sub  l                                           ; $5bd6: $95
	ld   [bc], a                                     ; $5bd7: $02
	ld   hl, $0200                                   ; $5bd8: $21 $00 $02
	rlca                                             ; $5bdb: $07
	add  b                                           ; $5bdc: $80
	inc  b                                           ; $5bdd: $04
	ld   [bc], a                                     ; $5bde: $02
	ld   [bc], a                                     ; $5bdf: $02
	ld   bc, $2000                                   ; $5be0: $01 $00 $20
	nop                                              ; $5be3: $00
	rlca                                             ; $5be4: $07
	ld   b, $04                                      ; $5be5: $06 $04
	ld   [bc], a                                     ; $5be7: $02
	ld   [bc], a                                     ; $5be8: $02
	ld   bc, $2001                                   ; $5be9: $01 $01 $20
	nop                                              ; $5bec: $00
	rlca                                             ; $5bed: $07
	adc  h                                           ; $5bee: $8c
	inc  bc                                          ; $5bef: $03
	ld   [bc], a                                     ; $5bf0: $02
	ld   [bc], a                                     ; $5bf1: $02
	ld   bc, $2002                                   ; $5bf2: $01 $02 $20
	nop                                              ; $5bf5: $00
	rrca                                             ; $5bf6: $0f
	nop                                              ; $5bf7: $00
	ld   bc, $2923                                   ; $5bf8: $01 $23 $29
	dec  c                                           ; $5bfb: $0d
	inc  bc                                          ; $5bfc: $03
	inc  b                                           ; $5bfd: $04
	ld   bc, $6161                                   ; $5bfe: $01 $61 $61
	ld   a, c                                        ; $5c01: $79
	ld   a, l                                        ; $5c02: $7d
	rst  $38                                         ; $5c03: $ff
	rst  $38                                         ; $5c04: $ff
	dec  c                                           ; $5c05: $0d
	ld   d, b                                        ; $5c06: $50
	sbc  b                                           ; $5c07: $98
	adc  h                                           ; $5c08: $8c
	ld   l, c                                        ; $5c09: $69
	and  c                                           ; $5c0a: $a1
	ld   a, e                                        ; $5c0b: $7b
	rst  $38                                         ; $5c0c: $ff
	rst  $38                                         ; $5c0d: $ff
	dec  c                                           ; $5c0e: $0d
	nop                                              ; $5c0f: $00
	ld   a, [bc]                                     ; $5c10: $0a
	dec  c                                           ; $5c11: $0d
	nop                                              ; $5c12: $00
	nop                                              ; $5c13: $00
	jr   jr_05b_5c19                                 ; $5c14: $18 $03

	nop                                              ; $5c16: $00
	inc  b                                           ; $5c17: $04
	adc  [hl]                                        ; $5c18: $8e

jr_05b_5c19:
	inc  b                                           ; $5c19: $04
	inc  c                                           ; $5c1a: $0c
	nop                                              ; $5c1b: $00
	nop                                              ; $5c1c: $00
	inc  b                                           ; $5c1d: $04
	ld   c, $04                                      ; $5c1e: $0e $04
	ld   d, $02                                      ; $5c20: $16 $02
	xor  b                                           ; $5c22: $a8
	inc  b                                           ; $5c23: $04
	sub  l                                           ; $5c24: $95
	ld   [bc], a                                     ; $5c25: $02
	ld   hl, $0100                                   ; $5c26: $21 $00 $01
	call c, $edfb                                    ; $5c29: $dc $fb $ed
	nop                                              ; $5c2c: $00
	ld   [bc], a                                     ; $5c2d: $02
	rlca                                             ; $5c2e: $07
	add  b                                           ; $5c2f: $80
	inc  b                                           ; $5c30: $04
	ld   [bc], a                                     ; $5c31: $02
	ld   [bc], a                                     ; $5c32: $02
	ld   bc, $2000                                   ; $5c33: $01 $00 $20
	nop                                              ; $5c36: $00
	rlca                                             ; $5c37: $07
	adc  h                                           ; $5c38: $8c
	inc  bc                                          ; $5c39: $03
	ld   [bc], a                                     ; $5c3a: $02
	ld   [bc], a                                     ; $5c3b: $02
	ld   bc, $2001                                   ; $5c3c: $01 $01 $20
	nop                                              ; $5c3f: $00
	rlca                                             ; $5c40: $07
	ld   b, $04                                      ; $5c41: $06 $04
	ld   [bc], a                                     ; $5c43: $02
	ld   [bc], a                                     ; $5c44: $02
	ld   bc, $2002                                   ; $5c45: $01 $02 $20
	nop                                              ; $5c48: $00
	rrca                                             ; $5c49: $0f
	nop                                              ; $5c4a: $00
	ld   bc, $0423                                   ; $5c4b: $01 $23 $04
	dec  c                                           ; $5c4e: $0d
	inc  bc                                          ; $5c4f: $03
	inc  b                                           ; $5c50: $04
	ld   bc, $6161                                   ; $5c51: $01 $61 $61
	ld   a, c                                        ; $5c54: $79
	ld   a, l                                        ; $5c55: $7d
	rst  $38                                         ; $5c56: $ff
	rst  $38                                         ; $5c57: $ff
	dec  c                                           ; $5c58: $0d
	ld   d, b                                        ; $5c59: $50
	sbc  b                                           ; $5c5a: $98
	adc  h                                           ; $5c5b: $8c
	ld   l, c                                        ; $5c5c: $69
	and  c                                           ; $5c5d: $a1
	ld   a, e                                        ; $5c5e: $7b
	rst  $38                                         ; $5c5f: $ff
	rst  $38                                         ; $5c60: $ff
	dec  c                                           ; $5c61: $0d
	nop                                              ; $5c62: $00
	ld   a, [bc]                                     ; $5c63: $0a
	dec  c                                           ; $5c64: $0d
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	jr   jr_05b_5c6c                                 ; $5c67: $18 $03

	nop                                              ; $5c69: $00
	inc  b                                           ; $5c6a: $04
	adc  [hl]                                        ; $5c6b: $8e

jr_05b_5c6c:
	inc  b                                           ; $5c6c: $04
	inc  c                                           ; $5c6d: $0c
	nop                                              ; $5c6e: $00
	nop                                              ; $5c6f: $00
	dec  b                                           ; $5c70: $05
	inc  de                                          ; $5c71: $13
	ld   [bc], a                                     ; $5c72: $02
	ld   hl, $0100                                   ; $5c73: $21 $00 $01
	inc  b                                           ; $5c76: $04
	ld   c, $04                                      ; $5c77: $0e $04
	ld   d, $02                                      ; $5c79: $16 $02
	xor  b                                           ; $5c7b: $a8
	inc  b                                           ; $5c7c: $04
	sub  l                                           ; $5c7d: $95
	ld   [bc], a                                     ; $5c7e: $02
	ld   hl, $0200                                   ; $5c7f: $21 $00 $02
	rlca                                             ; $5c82: $07
	add  b                                           ; $5c83: $80
	inc  b                                           ; $5c84: $04
	ld   [bc], a                                     ; $5c85: $02
	ld   [bc], a                                     ; $5c86: $02
	ld   bc, $2000                                   ; $5c87: $01 $00 $20
	nop                                              ; $5c8a: $00
	rlca                                             ; $5c8b: $07
	ld   b, e                                        ; $5c8c: $43
	inc  b                                           ; $5c8d: $04
	ld   [bc], a                                     ; $5c8e: $02
	ld   [bc], a                                     ; $5c8f: $02
	ld   bc, $2001                                   ; $5c90: $01 $01 $20
	nop                                              ; $5c93: $00
	rlca                                             ; $5c94: $07
	adc  h                                           ; $5c95: $8c
	inc  bc                                          ; $5c96: $03
	ld   [bc], a                                     ; $5c97: $02
	ld   [bc], a                                     ; $5c98: $02
	ld   bc, $2002                                   ; $5c99: $01 $02 $20
	nop                                              ; $5c9c: $00
	rrca                                             ; $5c9d: $0f
	nop                                              ; $5c9e: $00
	ld   bc, $1f23                                   ; $5c9f: $01 $23 $1f
	inc  e                                           ; $5ca2: $1c
	inc  bc                                          ; $5ca3: $03
	inc  b                                           ; $5ca4: $04
	inc  b                                           ; $5ca5: $04
	ld   bc, $5490                                   ; $5ca6: $01 $90 $54
	ld   d, d                                        ; $5ca9: $52
	ld   d, d                                        ; $5caa: $52
	sbc  l                                           ; $5cab: $9d
	rst  $38                                         ; $5cac: $ff
	rst  $38                                         ; $5cad: $ff
	dec  c                                           ; $5cae: $0d
	ld   [bc], a                                     ; $5caf: $02
	xor  d                                           ; $5cb0: $aa
	ld   a, l                                        ; $5cb1: $7d
	ld   [bc], a                                     ; $5cb2: $02
	jr   nz, jr_05b_5cb8                             ; $5cb3: $20 $03

	add  d                                           ; $5cb5: $82
	ld   [hl], l                                     ; $5cb6: $75
	ld   h, e                                        ; $5cb7: $63

jr_05b_5cb8:
	ld   e, d                                        ; $5cb8: $5a
	ld   h, a                                        ; $5cb9: $67
	ld   e, c                                        ; $5cba: $59
	sub  a                                           ; $5cbb: $97
	sbc  a                                           ; $5cbc: $9f
	dec  c                                           ; $5cbd: $0d
	inc  bc                                          ; $5cbe: $03
	ld   l, e                                        ; $5cbf: $6b
	inc  b                                           ; $5cc0: $04
	ld   [de], a                                     ; $5cc1: $12
	ld   [hl], c                                     ; $5cc2: $71
	ld   [hl], h                                     ; $5cc3: $74
	ld   e, l                                        ; $5cc4: $5d
	sbc  d                                           ; $5cc5: $9a
	ld   [hl], h                                     ; $5cc6: $74
	sbc  [hl]                                        ; $5cc7: $9e
	ld   d, b                                        ; $5cc8: $50
	sbc  b                                           ; $5cc9: $98
	ld   e, d                                        ; $5cca: $5a
	halt                                             ; $5ccb: $76
	ld   d, h                                        ; $5ccc: $54
	sbc  a                                           ; $5ccd: $9f
	dec  c                                           ; $5cce: $0d
	nop                                              ; $5ccf: $00
	ld   a, [bc]                                     ; $5cd0: $0a
	dec  c                                           ; $5cd1: $0d
	nop                                              ; $5cd2: $00
	nop                                              ; $5cd3: $00
	rrca                                             ; $5cd4: $0f
	nop                                              ; $5cd5: $00
	ld   bc, $1e09                                   ; $5cd6: $01 $09 $1e
	nop                                              ; $5cd9: $00
	rrca                                             ; $5cda: $0f
	nop                                              ; $5cdb: $00
	ld   bc, $2623                                   ; $5cdc: $01 $23 $26
	inc  e                                           ; $5cdf: $1c
	inc  bc                                          ; $5ce0: $03
	inc  b                                           ; $5ce1: $04
	inc  b                                           ; $5ce2: $04
	ld   bc, $5490                                   ; $5ce3: $01 $90 $54
	ld   d, d                                        ; $5ce6: $52
	ld   d, d                                        ; $5ce7: $52
	sbc  l                                           ; $5ce8: $9d
	rst  $38                                         ; $5ce9: $ff
	rst  $38                                         ; $5cea: $ff
	dec  c                                           ; $5ceb: $0d
	ld   [bc], a                                     ; $5cec: $02
	xor  d                                           ; $5ced: $aa
	ld   a, l                                        ; $5cee: $7d
	ld   [bc], a                                     ; $5cef: $02
	jr   nz, jr_05b_5cf5                             ; $5cf0: $20 $03

	add  d                                           ; $5cf2: $82
	ld   [hl], l                                     ; $5cf3: $75
	ld   h, e                                        ; $5cf4: $63

jr_05b_5cf5:
	ld   e, d                                        ; $5cf5: $5a
	ld   h, a                                        ; $5cf6: $67
	ld   e, c                                        ; $5cf7: $59
	sub  a                                           ; $5cf8: $97
	sbc  a                                           ; $5cf9: $9f
	dec  c                                           ; $5cfa: $0d
	inc  bc                                          ; $5cfb: $03
	ld   l, e                                        ; $5cfc: $6b
	inc  b                                           ; $5cfd: $04
	ld   [de], a                                     ; $5cfe: $12
	ld   [hl], c                                     ; $5cff: $71
	ld   [hl], h                                     ; $5d00: $74
	ld   e, l                                        ; $5d01: $5d
	sbc  d                                           ; $5d02: $9a
	ld   [hl], h                                     ; $5d03: $74
	sbc  [hl]                                        ; $5d04: $9e
	ld   d, b                                        ; $5d05: $50
	sbc  b                                           ; $5d06: $98
	ld   e, d                                        ; $5d07: $5a
	halt                                             ; $5d08: $76
	ld   d, h                                        ; $5d09: $54
	sbc  a                                           ; $5d0a: $9f
	dec  c                                           ; $5d0b: $0d
	nop                                              ; $5d0c: $00
	ld   a, [bc]                                     ; $5d0d: $0a
	dec  c                                           ; $5d0e: $0d
	nop                                              ; $5d0f: $00
	nop                                              ; $5d10: $00
	rrca                                             ; $5d11: $0f
	nop                                              ; $5d12: $00
	ld   bc, $1e09                                   ; $5d13: $01 $09 $1e
	nop                                              ; $5d16: $00
	rrca                                             ; $5d17: $0f
	nop                                              ; $5d18: $00
	ld   bc, $0423                                   ; $5d19: $01 $23 $04
	inc  e                                           ; $5d1c: $1c
	inc  bc                                          ; $5d1d: $03
	inc  b                                           ; $5d1e: $04
	inc  b                                           ; $5d1f: $04
	ld   bc, $5490                                   ; $5d20: $01 $90 $54
	ld   d, d                                        ; $5d23: $52
	ld   d, d                                        ; $5d24: $52
	sbc  l                                           ; $5d25: $9d
	rst  $38                                         ; $5d26: $ff
	rst  $38                                         ; $5d27: $ff
	dec  c                                           ; $5d28: $0d
	ld   [bc], a                                     ; $5d29: $02
	xor  d                                           ; $5d2a: $aa
	ld   a, l                                        ; $5d2b: $7d
	ld   [bc], a                                     ; $5d2c: $02
	jr   nz, jr_05b_5d32                             ; $5d2d: $20 $03

	add  d                                           ; $5d2f: $82
	ld   [hl], l                                     ; $5d30: $75
	ld   h, e                                        ; $5d31: $63

jr_05b_5d32:
	ld   e, d                                        ; $5d32: $5a
	ld   h, a                                        ; $5d33: $67
	ld   e, c                                        ; $5d34: $59
	sub  a                                           ; $5d35: $97
	sbc  a                                           ; $5d36: $9f
	dec  c                                           ; $5d37: $0d
	inc  bc                                          ; $5d38: $03
	ld   l, e                                        ; $5d39: $6b
	inc  b                                           ; $5d3a: $04
	ld   [de], a                                     ; $5d3b: $12
	ld   [hl], c                                     ; $5d3c: $71
	ld   [hl], h                                     ; $5d3d: $74
	ld   e, l                                        ; $5d3e: $5d
	sbc  d                                           ; $5d3f: $9a
	ld   [hl], h                                     ; $5d40: $74
	sbc  [hl]                                        ; $5d41: $9e
	ld   d, b                                        ; $5d42: $50
	sbc  b                                           ; $5d43: $98
	ld   e, d                                        ; $5d44: $5a
	halt                                             ; $5d45: $76
	ld   d, h                                        ; $5d46: $54
	sbc  a                                           ; $5d47: $9f
	dec  c                                           ; $5d48: $0d
	nop                                              ; $5d49: $00
	ld   a, [bc]                                     ; $5d4a: $0a
	dec  c                                           ; $5d4b: $0d
	nop                                              ; $5d4c: $00
	nop                                              ; $5d4d: $00
	rrca                                             ; $5d4e: $0f
	nop                                              ; $5d4f: $00
	ld   bc, $1e09                                   ; $5d50: $01 $09 $1e
	nop                                              ; $5d53: $00
	rrca                                             ; $5d54: $0f
	nop                                              ; $5d55: $00
	ld   bc, $2923                                   ; $5d56: $01 $23 $29
	inc  e                                           ; $5d59: $1c
	inc  bc                                          ; $5d5a: $03
	inc  b                                           ; $5d5b: $04
	inc  b                                           ; $5d5c: $04
	ld   bc, $5490                                   ; $5d5d: $01 $90 $54
	ld   d, d                                        ; $5d60: $52
	ld   d, d                                        ; $5d61: $52
	sbc  l                                           ; $5d62: $9d
	rst  $38                                         ; $5d63: $ff
	rst  $38                                         ; $5d64: $ff
	dec  c                                           ; $5d65: $0d
	ld   [bc], a                                     ; $5d66: $02
	xor  d                                           ; $5d67: $aa
	ld   a, l                                        ; $5d68: $7d
	ld   [bc], a                                     ; $5d69: $02
	jr   nz, jr_05b_5d6f                             ; $5d6a: $20 $03

	add  d                                           ; $5d6c: $82
	ld   [hl], l                                     ; $5d6d: $75
	ld   h, e                                        ; $5d6e: $63

jr_05b_5d6f:
	ld   e, d                                        ; $5d6f: $5a
	ld   h, a                                        ; $5d70: $67
	ld   e, c                                        ; $5d71: $59
	sub  a                                           ; $5d72: $97
	sbc  a                                           ; $5d73: $9f
	dec  c                                           ; $5d74: $0d
	inc  bc                                          ; $5d75: $03
	ld   l, e                                        ; $5d76: $6b
	inc  b                                           ; $5d77: $04
	ld   [de], a                                     ; $5d78: $12
	ld   [hl], c                                     ; $5d79: $71
	ld   [hl], h                                     ; $5d7a: $74
	ld   e, l                                        ; $5d7b: $5d
	sbc  d                                           ; $5d7c: $9a
	ld   [hl], h                                     ; $5d7d: $74
	sbc  [hl]                                        ; $5d7e: $9e
	ld   d, b                                        ; $5d7f: $50
	sbc  b                                           ; $5d80: $98
	ld   e, d                                        ; $5d81: $5a
	halt                                             ; $5d82: $76
	ld   d, h                                        ; $5d83: $54
	sbc  a                                           ; $5d84: $9f
	dec  c                                           ; $5d85: $0d
	nop                                              ; $5d86: $00
	ld   a, [bc]                                     ; $5d87: $0a
	dec  c                                           ; $5d88: $0d
	nop                                              ; $5d89: $00
	nop                                              ; $5d8a: $00
	rrca                                             ; $5d8b: $0f
	nop                                              ; $5d8c: $00
	ld   bc, $1e09                                   ; $5d8d: $01 $09 $1e
	nop                                              ; $5d90: $00
	rrca                                             ; $5d91: $0f
	nop                                              ; $5d92: $00
	ld   bc, $1723                                   ; $5d93: $01 $23 $17
	inc  e                                           ; $5d96: $1c
	inc  bc                                          ; $5d97: $03
	rlca                                             ; $5d98: $07
	rlca                                             ; $5d99: $07
	ld   bc, $7150                                   ; $5d9a: $01 $50 $71
	ld   l, l                                        ; $5d9d: $6d
	sbc  l                                           ; $5d9e: $9d
	ld   a, [$000d]                                  ; $5d9f: $fa $0d $00
	ld   a, [bc]                                     ; $5da2: $0a
	db   $10                                         ; $5da3: $10
	dec  e                                           ; $5da4: $1d
	nop                                              ; $5da5: $00
	rrca                                             ; $5da6: $0f
	nop                                              ; $5da7: $00
	ld   bc, $9601                                   ; $5da8: $01 $01 $96
	ld   e, c                                        ; $5dab: $59
	ld   [hl], c                                     ; $5dac: $71
	ld   l, l                                        ; $5dad: $6d
	ld   [hl], l                                     ; $5dae: $75
	ld   h, a                                        ; $5daf: $67
	ld   a, e                                        ; $5db0: $7b
	sbc  [hl]                                        ; $5db1: $9e
	rst  JumpTable                                         ; $5db2: $df
	db   $ec                                         ; $5db3: $ec
	and  e                                           ; $5db4: $a3
	ld   h, e                                        ; $5db5: $63
	and  c                                           ; $5db6: $a1
	sbc  a                                           ; $5db7: $9f
	dec  c                                           ; $5db8: $0d
	nop                                              ; $5db9: $00
	ld   a, [bc]                                     ; $5dba: $0a
	inc  e                                           ; $5dbb: $1c
	inc  bc                                          ; $5dbc: $03
	inc  bc                                          ; $5dbd: $03
	inc  bc                                          ; $5dbe: $03
	dec  e                                           ; $5dbf: $1d
	ld   b, b                                        ; $5dc0: $40
	inc  de                                          ; $5dc1: $13
	inc  bc                                          ; $5dc2: $03
	inc  de                                          ; $5dc3: $13
	ld   bc, $2803                                   ; $5dc4: $01 $03 $28
	nop                                              ; $5dc7: $00
	ld   bc, $7850                                   ; $5dc8: $01 $50 $78
	ld   l, l                                        ; $5dcb: $6d
	ld   a, h                                        ; $5dcc: $7c
	ld   e, b                                        ; $5dcd: $58
	ld   e, c                                        ; $5dce: $59
	ld   h, b                                        ; $5dcf: $60
	sub  [hl]                                        ; $5dd0: $96
	rst  $38                                         ; $5dd1: $ff
	rst  $38                                         ; $5dd2: $ff
	dec  c                                           ; $5dd3: $0d
	inc  b                                           ; $5dd4: $04
	adc  a                                           ; $5dd5: $8f
	inc  b                                           ; $5dd6: $04
	jr   jr_05b_5e52                                 ; $5dd7: $18 $79

	ld   d, b                                        ; $5dd9: $50
	sbc  b                                           ; $5dda: $98
	ld   e, d                                        ; $5ddb: $5a
	halt                                             ; $5ddc: $76
	ld   d, h                                        ; $5ddd: $54
	sbc  a                                           ; $5dde: $9f
	dec  c                                           ; $5ddf: $0d
	nop                                              ; $5de0: $00
	ld   a, [bc]                                     ; $5de1: $0a
	dec  c                                           ; $5de2: $0d
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	rrca                                             ; $5de5: $0f
	nop                                              ; $5de6: $00
	ld   bc, $1e09                                   ; $5de7: $01 $09 $1e
	nop                                              ; $5dea: $00
	nop                                              ; $5deb: $00
	ld   c, $64                                      ; $5dec: $0e $64
	inc  e                                           ; $5dee: $1c
	rrca                                             ; $5def: $0f
	ld   bc, $0201                                   ; $5df0: $01 $01 $02
	ld   bc, $5092                                   ; $5df3: $01 $92 $50
	sbc  [hl]                                        ; $5df6: $9e
	ld   [$5d00], sp                                 ; $5df7: $08 $00 $5d
	and  c                                           ; $5dfa: $a1
	sbc  a                                           ; $5dfb: $9f
	dec  c                                           ; $5dfc: $0d
	nop                                              ; $5dfd: $00
	ld   a, [bc]                                     ; $5dfe: $0a
	dec  b                                           ; $5dff: $05
	add  b                                           ; $5e00: $80
	scf                                              ; $5e01: $37
	ld   bc, $0001                                   ; $5e02: $01 $01 $00
	rlca                                             ; $5e05: $07
	ld   e, c                                        ; $5e06: $59
	nop                                              ; $5e07: $00
	inc  b                                           ; $5e08: $04
	add  b                                           ; $5e09: $80
	rst  ToBoot                                         ; $5e0a: $c7
	ld   bc, $20ff                                   ; $5e0b: $01 $ff $20
	nop                                              ; $5e0e: $00
	dec  b                                           ; $5e0f: $05
	add  b                                           ; $5e10: $80
	rst  ToBoot                                         ; $5e11: $c7
	ld   bc, $0001                                   ; $5e12: $01 $01 $00
	ld   bc, $7305                                   ; $5e15: $01 $05 $73
	ld   a, l                                        ; $5e18: $7d
	ld   [bc], a                                     ; $5e19: $02
	ld   d, b                                        ; $5e1a: $50
	inc  bc                                          ; $5e1b: $03
	ld   e, b                                        ; $5e1c: $58
	ld   b, $2d                                      ; $5e1d: $06 $2d
	ld   [bc], a                                     ; $5e1f: $02
	jr   nz, @+$01                                   ; $5e20: $20 $ff

	rst  $38                                         ; $5e22: $ff
	dec  c                                           ; $5e23: $0d
	inc  b                                           ; $5e24: $04
	ld   c, $03                                      ; $5e25: $0e $03
	sub  b                                           ; $5e27: $90
	halt                                             ; $5e28: $76
	ld   a, l                                        ; $5e29: $7d
	inc  b                                           ; $5e2a: $04
	ld   c, $7c                                      ; $5e2b: $0e $7c
	inc  bc                                          ; $5e2d: $03
	sub  d                                           ; $5e2e: $92
	inc  b                                           ; $5e2f: $04
	ld   [$9f6e], a                                  ; $5e30: $ea $6e $9f
	dec  c                                           ; $5e33: $0d
	ld   [bc], a                                     ; $5e34: $02
	dec  bc                                          ; $5e35: $0b
	ld   [bc], a                                     ; $5e36: $02
	xor  d                                           ; $5e37: $aa
	sbc  [hl]                                        ; $5e38: $9e
	sub  [hl]                                        ; $5e39: $96
	sbc  e                                           ; $5e3a: $9b
	ld   h, l                                        ; $5e3b: $65
	ld   e, l                                        ; $5e3c: $5d
	ld   a, b                                        ; $5e3d: $78
	sbc  a                                           ; $5e3e: $9f
	dec  c                                           ; $5e3f: $0d
	nop                                              ; $5e40: $00
	ld   a, [bc]                                     ; $5e41: $0a
	ld   b, $83                                      ; $5e42: $06 $83
	nop                                              ; $5e44: $00
	ld   bc, $7305                                   ; $5e45: $01 $05 $73
	ld   a, l                                        ; $5e48: $7d
	ld   [bc], a                                     ; $5e49: $02
	ld   d, b                                        ; $5e4a: $50
	inc  bc                                          ; $5e4b: $03
	ld   e, b                                        ; $5e4c: $58
	ld   b, $2d                                      ; $5e4d: $06 $2d
	ld   [bc], a                                     ; $5e4f: $02
	jr   nz, @+$01                                   ; $5e50: $20 $ff

jr_05b_5e52:
	rst  $38                                         ; $5e52: $ff
	dec  c                                           ; $5e53: $0d
	ld   e, b                                        ; $5e54: $58
	ld   [hl], c                                     ; $5e55: $71
	halt                                             ; $5e56: $76
	sbc  [hl]                                        ; $5e57: $9e
	inc  bc                                          ; $5e58: $03
	sub  h                                           ; $5e59: $94
	dec  b                                           ; $5e5a: $05
	inc  sp                                          ; $5e5b: $33
	dec  b                                           ; $5e5c: $05
	ld   b, a                                        ; $5e5d: $47
	dec  b                                           ; $5e5e: $05
	ld   [hl-], a                                    ; $5e5f: $32
	ld   a, l                                        ; $5e60: $7d
	dec  c                                           ; $5e61: $0d
	ld   h, c                                        ; $5e62: $61
	ld   a, h                                        ; $5e63: $7c
	inc  bc                                          ; $5e64: $03
	ld   c, a                                        ; $5e65: $4f
	sub  d                                           ; $5e66: $92
	ld   [hl], c                                     ; $5e67: $71
	ld   l, l                                        ; $5e68: $6d
	ld   a, b                                        ; $5e69: $78
	rst  $38                                         ; $5e6a: $ff
	rst  $38                                         ; $5e6b: $ff
	dec  c                                           ; $5e6c: $0d
	nop                                              ; $5e6d: $00
	ld   a, [bc]                                     ; $5e6e: $0a
	ld   bc, $ca02                                   ; $5e6f: $01 $02 $ca
	ld   e, d                                        ; $5e72: $5a
	inc  b                                           ; $5e73: $04
	ld   [$8f02], sp                                 ; $5e74: $08 $02 $8f
	ld   [bc], a                                     ; $5e77: $02
	sub  b                                           ; $5e78: $90
	ld   [bc], a                                     ; $5e79: $02
	sub  c                                           ; $5e7a: $91
	inc  b                                           ; $5e7b: $04
	add  hl, bc                                      ; $5e7c: $09
	ld   a, h                                        ; $5e7d: $7c
	ld   h, c                                        ; $5e7e: $61
	halt                                             ; $5e7f: $76
	and  b                                           ; $5e80: $a0
	dec  c                                           ; $5e81: $0d
	ld   [hl], a                                     ; $5e82: $77
	sbc  d                                           ; $5e83: $9a
	ld   l, [hl]                                     ; $5e84: $6e
	ld   e, a                                        ; $5e85: $5f
	inc  b                                           ; $5e86: $04
	dec  hl                                          ; $5e87: $2b
	ld   [hl], c                                     ; $5e88: $71
	ld   l, l                                        ; $5e89: $6d
	ld   e, c                                        ; $5e8a: $59
	dec  c                                           ; $5e8b: $0d
	or   b                                           ; $5e8c: $b0
	and  l                                           ; $5e8d: $a5
	cp   e                                           ; $5e8e: $bb
	ld   [hl], l                                     ; $5e8f: $75
	ld   [bc], a                                     ; $5e90: $02
	sbc  a                                           ; $5e91: $9f
	ld   e, c                                        ; $5e92: $59
	adc  a                                           ; $5e93: $8f
	ld   [hl], h                                     ; $5e94: $74
	ld   d, b                                        ; $5e95: $50
	ld   h, b                                        ; $5e96: $60
	sub  [hl]                                        ; $5e97: $96
	ld   d, h                                        ; $5e98: $54
	sbc  a                                           ; $5e99: $9f
	dec  c                                           ; $5e9a: $0d
	nop                                              ; $5e9b: $00
	ld   a, [bc]                                     ; $5e9c: $0a
	dec  c                                           ; $5e9d: $0d
	rrca                                             ; $5e9e: $0f
	db   $10                                         ; $5e9f: $10
	rrca                                             ; $5ea0: $0f
	rrca                                             ; $5ea1: $0f
	ld   bc, $6501                                   ; $5ea2: $01 $01 $65
	ld   d, b                                        ; $5ea5: $50
	sbc  l                                           ; $5ea6: $9d
	ld   l, c                                        ; $5ea7: $69
	ld   l, [hl]                                     ; $5ea8: $6e
	ld   a, b                                        ; $5ea9: $78
	ld   c, a                                        ; $5eaa: $4f
	db   $fc                                         ; $5eab: $fc
	rst  $38                                         ; $5eac: $ff
	rst  $38                                         ; $5ead: $ff
	dec  c                                           ; $5eae: $0d
	ld   h, c                                        ; $5eaf: $61
	and  c                                           ; $5eb0: $a1
	ld   a, b                                        ; $5eb1: $78
	inc  b                                           ; $5eb2: $04
	db   $ec                                         ; $5eb3: $ec
	and  b                                           ; $5eb4: $a0
	sub  b                                           ; $5eb5: $90
	sub  a                                           ; $5eb6: $97
	ld   d, [hl]                                     ; $5eb7: $56
	sbc  c                                           ; $5eb8: $99
	ld   a, b                                        ; $5eb9: $78
	and  c                                           ; $5eba: $a1
	ld   [hl], h                                     ; $5ebb: $74
	sbc  a                                           ; $5ebc: $9f
	dec  c                                           ; $5ebd: $0d
	nop                                              ; $5ebe: $00
	ld   a, [bc]                                     ; $5ebf: $0a
	inc  e                                           ; $5ec0: $1c
	rrca                                             ; $5ec1: $0f
	ld   [bc], a                                     ; $5ec2: $02
	ld   [bc], a                                     ; $5ec3: $02
	ld   bc, $7463                                   ; $5ec4: $01 $63 $74
	inc  b                                           ; $5ec7: $04
	cp   a                                           ; $5ec8: $bf
	inc  b                                           ; $5ec9: $04
	dec  d                                           ; $5eca: $15
	ld   l, [hl]                                     ; $5ecb: $6e
	ld   a, [$000d]                                  ; $5ecc: $fa $0d $00
	ld   a, [bc]                                     ; $5ecf: $0a
	ld   b, $2a                                      ; $5ed0: $06 $2a
	ld   bc, $0f1c                                   ; $5ed2: $01 $1c $0f
	ld   bc, $0101                                   ; $5ed5: $01 $01 $01
	ld   [bc], a                                     ; $5ed8: $02
	dec  bc                                          ; $5ed9: $0b
	inc  bc                                          ; $5eda: $03
	ld   h, l                                        ; $5edb: $65
	ld   [hl], l                                     ; $5edc: $75
	or   b                                           ; $5edd: $b0
	and  l                                           ; $5ede: $a5
	cp   e                                           ; $5edf: $bb
	ld   a, l                                        ; $5ee0: $7d
	inc  bc                                          ; $5ee1: $03
	ld   a, [hl]                                     ; $5ee2: $7e
	sbc  l                                           ; $5ee3: $9d
	sbc  b                                           ; $5ee4: $98
	ld   l, [hl]                                     ; $5ee5: $6e
	sbc  a                                           ; $5ee6: $9f
	dec  c                                           ; $5ee7: $0d
	ld   [bc], a                                     ; $5ee8: $02
	jp   z, EnqueueHDMATransfer                                    ; $5ee9: $ca $7c $02

	and  c                                           ; $5eec: $a1
	inc  bc                                          ; $5eed: $03
	and  b                                           ; $5eee: $a0
	ld   l, a                                        ; $5eef: $6f
	ld   a, l                                        ; $5ef0: $7d
	sbc  [hl]                                        ; $5ef1: $9e
	ld   [bc], a                                     ; $5ef2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ef3: $cf
	dec  b                                           ; $5ef4: $05
	ld   a, [de]                                     ; $5ef5: $1a
	ld   h, e                                        ; $5ef6: $63
	and  c                                           ; $5ef7: $a1
	ld   a, c                                        ; $5ef8: $79
	dec  c                                           ; $5ef9: $0d
	inc  b                                           ; $5efa: $04
	ld   [de], a                                     ; $5efb: $12
	ld   d, [hl]                                     ; $5efc: $56
	ld   [hl], h                                     ; $5efd: $74
	ld   e, b                                        ; $5efe: $58
	ld   e, l                                        ; $5eff: $5d
	sub  [hl]                                        ; $5f00: $96
	rst  $38                                         ; $5f01: $ff
	rst  $38                                         ; $5f02: $ff
	and  e                                           ; $5f03: $a3
	ret  z                                           ; $5f04: $c8

	and  h                                           ; $5f05: $a4
	xor  e                                           ; $5f06: $ab
	cp   d                                           ; $5f07: $ba
	ld   a, [$000d]                                  ; $5f08: $fa $0d $00
	ld   a, [bc]                                     ; $5f0b: $0a
	dec  e                                           ; $5f0c: $1d
	ld   b, b                                        ; $5f0d: $40
	dec  d                                           ; $5f0e: $15
	inc  bc                                          ; $5f0f: $03
	dec  d                                           ; $5f10: $15
	inc  bc                                          ; $5f11: $03
	rst  $38                                         ; $5f12: $ff
	jr   z, jr_05b_5f15                              ; $5f13: $28 $00

jr_05b_5f15:
	nop                                              ; $5f15: $00
	dec  b                                           ; $5f16: $05
	ld   b, b                                        ; $5f17: $40
	cp   $01                                         ; $5f18: $fe $01
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	dec  b                                           ; $5f1c: $05
	add  b                                           ; $5f1d: $80
	ld   c, a                                        ; $5f1e: $4f
	ld   bc, $0000                                   ; $5f1f: $01 $00 $00
	dec  b                                           ; $5f22: $05
	add  b                                           ; $5f23: $80
	ld   d, b                                        ; $5f24: $50
	ld   bc, $0000                                   ; $5f25: $01 $00 $00
	dec  b                                           ; $5f28: $05
	add  b                                           ; $5f29: $80
	ld   d, c                                        ; $5f2a: $51
	ld   bc, $0000                                   ; $5f2b: $01 $00 $00
	dec  b                                           ; $5f2e: $05
	add  b                                           ; $5f2f: $80
	ld   d, d                                        ; $5f30: $52
	ld   bc, $0000                                   ; $5f31: $01 $00 $00
	dec  b                                           ; $5f34: $05
	add  b                                           ; $5f35: $80
	ld   d, e                                        ; $5f36: $53
	ld   bc, $0000                                   ; $5f37: $01 $00 $00
	dec  b                                           ; $5f3a: $05
	add  b                                           ; $5f3b: $80
	ld   d, h                                        ; $5f3c: $54
	ld   bc, $0000                                   ; $5f3d: $01 $00 $00
	dec  b                                           ; $5f40: $05
	add  b                                           ; $5f41: $80
	ld   d, l                                        ; $5f42: $55
	ld   bc, $0000                                   ; $5f43: $01 $00 $00
	dec  b                                           ; $5f46: $05
	add  b                                           ; $5f47: $80
	ld   d, [hl]                                     ; $5f48: $56
	ld   bc, $0000                                   ; $5f49: $01 $00 $00
	dec  b                                           ; $5f4c: $05
	add  b                                           ; $5f4d: $80
	ld   d, a                                        ; $5f4e: $57
	ld   bc, $0000                                   ; $5f4f: $01 $00 $00
	rlca                                             ; $5f52: $07
	rst  $20                                         ; $5f53: $e7
	nop                                              ; $5f54: $00
	inc  bc                                          ; $5f55: $03
	cp   $01                                         ; $5f56: $fe $01
	inc  bc                                          ; $5f58: $03
	dec  h                                           ; $5f59: $25
	nop                                              ; $5f5a: $00
	dec  b                                           ; $5f5b: $05
	ld   b, b                                        ; $5f5c: $40
	cp   $03                                         ; $5f5d: $fe $03
	cp   $01                                         ; $5f5f: $fe $01
	ld   bc, $0028                                   ; $5f61: $01 $28 $00
	jr   nz, jr_05b_5f67                             ; $5f64: $20 $01

	ld   e, d                                        ; $5f66: $5a

jr_05b_5f67:
	nop                                              ; $5f67: $00
	rlca                                             ; $5f68: $07
	rst  ToBoot                                         ; $5f69: $c7
	ld   bc, $0502                                   ; $5f6a: $01 $02 $05
	ld   bc, $220a                                   ; $5f6d: $01 $0a $22
	nop                                              ; $5f70: $00
	rlca                                             ; $5f71: $07
	ld   l, a                                        ; $5f72: $6f
	ld   [bc], a                                     ; $5f73: $02
	ld   [bc], a                                     ; $5f74: $02
	dec  b                                           ; $5f75: $05
	ld   bc, $2214                                   ; $5f76: $01 $14 $22
	nop                                              ; $5f79: $00
	rlca                                             ; $5f7a: $07
	inc  e                                           ; $5f7b: $1c
	inc  bc                                          ; $5f7c: $03
	ld   [bc], a                                     ; $5f7d: $02
	dec  b                                           ; $5f7e: $05
	ld   bc, $221e                                   ; $5f7f: $01 $1e $22
	nop                                              ; $5f82: $00
	rlca                                             ; $5f83: $07
	ret  nc                                          ; $5f84: $d0

	inc  bc                                          ; $5f85: $03
	ld   [bc], a                                     ; $5f86: $02
	dec  b                                           ; $5f87: $05
	ld   bc, $2228                                   ; $5f88: $01 $28 $22
	nop                                              ; $5f8b: $00
	rlca                                             ; $5f8c: $07
	ld   [hl], b                                     ; $5f8d: $70
	inc  b                                           ; $5f8e: $04
	ld   [bc], a                                     ; $5f8f: $02
	dec  b                                           ; $5f90: $05
	ld   bc, $2232                                   ; $5f91: $01 $32 $22
	nop                                              ; $5f94: $00
	rlca                                             ; $5f95: $07
	dec  a                                           ; $5f96: $3d
	dec  b                                           ; $5f97: $05
	ld   [bc], a                                     ; $5f98: $02
	dec  b                                           ; $5f99: $05
	ld   bc, $223c                                   ; $5f9a: $01 $3c $22
	nop                                              ; $5f9d: $00
	rlca                                             ; $5f9e: $07
	db   $db                                         ; $5f9f: $db
	dec  b                                           ; $5fa0: $05
	ld   [bc], a                                     ; $5fa1: $02
	dec  b                                           ; $5fa2: $05
	ld   bc, $2246                                   ; $5fa3: $01 $46 $22
	nop                                              ; $5fa6: $00
	rlca                                             ; $5fa7: $07
	sbc  l                                           ; $5fa8: $9d
	ld   b, $02                                      ; $5fa9: $06 $02
	dec  b                                           ; $5fab: $05
	ld   bc, $2250                                   ; $5fac: $01 $50 $22
	nop                                              ; $5faf: $00
	ld   b, $49                                      ; $5fb0: $06 $49
	rlca                                             ; $5fb2: $07
	rlca                                             ; $5fb3: $07
	ld   l, a                                        ; $5fb4: $6f
	ld   [bc], a                                     ; $5fb5: $02
	inc  b                                           ; $5fb6: $04
	add  b                                           ; $5fb7: $80
	ld   c, a                                        ; $5fb8: $4f
	ld   bc, $20ff                                   ; $5fb9: $01 $ff $20
	nop                                              ; $5fbc: $00
	dec  b                                           ; $5fbd: $05
	add  b                                           ; $5fbe: $80
	ld   c, a                                        ; $5fbf: $4f
	ld   bc, $0001                                   ; $5fc0: $01 $01 $00
	ld   bc, $cf02                                   ; $5fc3: $01 $02 $cf
	dec  b                                           ; $5fc6: $05
	ld   a, [de]                                     ; $5fc7: $1a
	ld   h, e                                        ; $5fc8: $63
	and  c                                           ; $5fc9: $a1
	ld   a, h                                        ; $5fca: $7c
	inc  b                                           ; $5fcb: $04
	ld   e, [hl]                                     ; $5fcc: $5e
	inc  b                                           ; $5fcd: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fce: $cf
	ld   h, l                                        ; $5fcf: $65
	ld   l, l                                        ; $5fd0: $6d
	dec  c                                           ; $5fd1: $0d
	inc  bc                                          ; $5fd2: $03
	rrca                                             ; $5fd3: $0f
	ld   [bc], a                                     ; $5fd4: $02
	and  c                                           ; $5fd5: $a1
	pop  de                                          ; $5fd6: $d1
	and  l                                           ; $5fd7: $a5
	or   b                                           ; $5fd8: $b0
	ld   a, h                                        ; $5fd9: $7c
	inc  b                                           ; $5fda: $04
	rst  ToBoot                                         ; $5fdb: $c7
	inc  bc                                          ; $5fdc: $03
	ld   c, a                                        ; $5fdd: $4f
	ld   a, l                                        ; $5fde: $7d
	ld   sp, hl                                      ; $5fdf: $f9
	dec  c                                           ; $5fe0: $0d
	nop                                              ; $5fe1: $00
	ld   a, [bc]                                     ; $5fe2: $0a
	add  hl, de                                      ; $5fe3: $19
	dec  b                                           ; $5fe4: $05
	inc  bc                                          ; $5fe5: $03
	ret  nc                                          ; $5fe6: $d0

	rst  JumpTable                                         ; $5fe7: $df
	and  l                                           ; $5fe8: $a5
	jp   nz, $0000                                  ; $5fe9: $c2 $00 $00

	ret  nc                                          ; $5fec: $d0

	rst  JumpTable                                         ; $5fed: $df
	or   [hl]                                        ; $5fee: $b6
	push af                                          ; $5fef: $f5
	nop                                              ; $5ff0: $00
	ld   bc, $dfdf                                   ; $5ff1: $01 $df $df
	and  l                                           ; $5ff4: $a5
	jp   nz, $0200                                   ; $5ff5: $c2 $00 $02

	rlca                                             ; $5ff8: $07
	ld   a, [hl+]                                    ; $5ff9: $2a
	ld   [bc], a                                     ; $5ffa: $02
	ld   [bc], a                                     ; $5ffb: $02
	inc  bc                                          ; $5ffc: $03
	ld   bc, $2000                                   ; $5ffd: $01 $00 $20
	nop                                              ; $6000: $00
	rlca                                             ; $6001: $07
	ld   b, a                                        ; $6002: $47
	ld   [bc], a                                     ; $6003: $02
	ld   [bc], a                                     ; $6004: $02
	inc  bc                                          ; $6005: $03
	ld   bc, $2001                                   ; $6006: $01 $01 $20
	nop                                              ; $6009: $00
	rlca                                             ; $600a: $07
	ld   b, a                                        ; $600b: $47
	ld   [bc], a                                     ; $600c: $02
	ld   [bc], a                                     ; $600d: $02
	inc  bc                                          ; $600e: $03
	ld   bc, $2002                                   ; $600f: $01 $02 $20
	nop                                              ; $6012: $00
	ld   b, $47                                      ; $6013: $06 $47
	ld   [bc], a                                     ; $6015: $02
	inc  e                                           ; $6016: $1c
	rrca                                             ; $6017: $0f
	ld   bc, $1401                                   ; $6018: $01 $01 $14
	dec  de                                          ; $601b: $1b
	ld   bc, $0301                                   ; $601c: $01 $01 $03
	ld   c, d                                        ; $601f: $4a
	ld   [bc], a                                     ; $6020: $02
	or   h                                           ; $6021: $b4
	ld   l, [hl]                                     ; $6022: $6e
	sbc  a                                           ; $6023: $9f
	dec  c                                           ; $6024: $0d
	nop                                              ; $6025: $00
	ld   a, [bc]                                     ; $6026: $0a
	dec  b                                           ; $6027: $05
	ld   b, b                                        ; $6028: $40
	rst  $38                                         ; $6029: $ff
	inc  bc                                          ; $602a: $03
	rst  $38                                         ; $602b: $ff
	ld   bc, $2801                                   ; $602c: $01 $01 $28
	nop                                              ; $602f: $00
	ld   b, $66                                      ; $6030: $06 $66
	ld   bc, $0f1c                                   ; $6032: $01 $1c $0f
	ld   [bc], a                                     ; $6035: $02
	ld   [bc], a                                     ; $6036: $02
	inc  d                                           ; $6037: $14
	inc  e                                           ; $6038: $1c
	ld   bc, $0301                                   ; $6039: $01 $01 $03
	jr   z, jr_05b_6042                              ; $603c: $28 $04

	ld   c, b                                        ; $603e: $48
	ld   l, [hl]                                     ; $603f: $6e
	ld   [hl], c                                     ; $6040: $71
	ld   l, l                                        ; $6041: $6d

jr_05b_6042:
	ld   a, b                                        ; $6042: $78
	rst  $38                                         ; $6043: $ff
	rst  $38                                         ; $6044: $ff
	dec  c                                           ; $6045: $0d
	inc  bc                                          ; $6046: $03
	ld   c, d                                        ; $6047: $4a
	ld   [bc], a                                     ; $6048: $02
	or   h                                           ; $6049: $b4
	ld   a, l                                        ; $604a: $7d
	ld   bc, $d007                                   ; $604b: $01 $07 $d0
	rst  JumpTable                                         ; $604e: $df
	and  l                                           ; $604f: $a5
	jp   nz, $0801                                   ; $6050: $c2 $01 $08

	ld   l, [hl]                                     ; $6053: $6e
	sbc  a                                           ; $6054: $9f
	dec  c                                           ; $6055: $0d
	nop                                              ; $6056: $00
	ld   a, [bc]                                     ; $6057: $0a
	ld   b, $66                                      ; $6058: $06 $66
	ld   bc, $1c07                                   ; $605a: $01 $07 $1c
	inc  bc                                          ; $605d: $03
	inc  b                                           ; $605e: $04
	add  b                                           ; $605f: $80
	ld   d, b                                        ; $6060: $50
	ld   bc, $20ff                                   ; $6061: $01 $ff $20
	nop                                              ; $6064: $00
	dec  b                                           ; $6065: $05
	add  b                                           ; $6066: $80
	ld   d, b                                        ; $6067: $50
	ld   bc, $0001                                   ; $6068: $01 $01 $00
	ld   bc, $cf02                                   ; $606b: $01 $02 $cf
	dec  b                                           ; $606e: $05
	ld   a, [de]                                     ; $606f: $1a
	ld   h, e                                        ; $6070: $63
	and  c                                           ; $6071: $a1
	ld   a, h                                        ; $6072: $7c
	inc  b                                           ; $6073: $04
	cp   [hl]                                        ; $6074: $be
	ld   a, l                                        ; $6075: $7d
	ld   sp, hl                                      ; $6076: $f9
	dec  c                                           ; $6077: $0d
	nop                                              ; $6078: $00
	ld   a, [bc]                                     ; $6079: $0a
	add  hl, de                                      ; $607a: $19
	dec  b                                           ; $607b: $05
	inc  bc                                          ; $607c: $03
	ld   [bc], a                                     ; $607d: $02
	or   [hl]                                        ; $607e: $b6
	and  b                                           ; $607f: $a0
	inc  b                                           ; $6080: $04
	ld   a, a                                        ; $6081: $7f
	add  h                                           ; $6082: $84
	ld   h, c                                        ; $6083: $61
	halt                                             ; $6084: $76
	nop                                              ; $6085: $00
	nop                                              ; $6086: $00
	ld   [bc], a                                     ; $6087: $02
	add  l                                           ; $6088: $85
	ld   a, c                                        ; $6089: $79
	ld   b, $4d                                      ; $608a: $06 $4d
	sbc  c                                           ; $608c: $99
	ld   h, c                                        ; $608d: $61
	halt                                             ; $608e: $76
	nop                                              ; $608f: $00
	ld   bc, $6903                                   ; $6090: $01 $03 $69
	ld   [bc], a                                     ; $6093: $02
	cp   [hl]                                        ; $6094: $be
	ld   a, h                                        ; $6095: $7c
	inc  b                                           ; $6096: $04
	ld   e, [hl]                                     ; $6097: $5e
	inc  b                                           ; $6098: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6099: $cf
	and  b                                           ; $609a: $a0
	ld   h, a                                        ; $609b: $67
	sbc  c                                           ; $609c: $99
	ld   h, c                                        ; $609d: $61
	halt                                             ; $609e: $76
	nop                                              ; $609f: $00
	ld   [bc], a                                     ; $60a0: $02
	rlca                                             ; $60a1: $07
	db   $d3                                         ; $60a2: $d3
	ld   [bc], a                                     ; $60a3: $02
	ld   [bc], a                                     ; $60a4: $02
	inc  bc                                          ; $60a5: $03
	ld   bc, $2000                                   ; $60a6: $01 $00 $20
	nop                                              ; $60a9: $00
	rlca                                             ; $60aa: $07
	ldh  a, [rSC]                                    ; $60ab: $f0 $02
	ld   [bc], a                                     ; $60ad: $02
	inc  bc                                          ; $60ae: $03
	ld   bc, $2001                                   ; $60af: $01 $01 $20
	nop                                              ; $60b2: $00
	rlca                                             ; $60b3: $07
	ldh  a, [rSC]                                    ; $60b4: $f0 $02
	ld   [bc], a                                     ; $60b6: $02
	inc  bc                                          ; $60b7: $03
	ld   bc, $2002                                   ; $60b8: $01 $02 $20
	nop                                              ; $60bb: $00
	ld   b, $f0                                      ; $60bc: $06 $f0
	ld   [bc], a                                     ; $60be: $02
	inc  e                                           ; $60bf: $1c
	rrca                                             ; $60c0: $0f
	ld   bc, $1401                                   ; $60c1: $01 $01 $14
	dec  de                                          ; $60c4: $1b
	ld   bc, $0301                                   ; $60c5: $01 $01 $03
	ld   c, d                                        ; $60c8: $4a
	ld   [bc], a                                     ; $60c9: $02
	or   h                                           ; $60ca: $b4
	ld   l, [hl]                                     ; $60cb: $6e
	sbc  a                                           ; $60cc: $9f
	dec  c                                           ; $60cd: $0d
	nop                                              ; $60ce: $00
	ld   a, [bc]                                     ; $60cf: $0a
	dec  b                                           ; $60d0: $05
	ld   b, b                                        ; $60d1: $40
	rst  $38                                         ; $60d2: $ff
	inc  bc                                          ; $60d3: $03
	rst  $38                                         ; $60d4: $ff
	ld   bc, $2801                                   ; $60d5: $01 $01 $28
	nop                                              ; $60d8: $00
	ld   b, $66                                      ; $60d9: $06 $66
	ld   bc, $0f1c                                   ; $60db: $01 $1c $0f
	ld   [bc], a                                     ; $60de: $02
	ld   [bc], a                                     ; $60df: $02
	inc  d                                           ; $60e0: $14
	inc  e                                           ; $60e1: $1c
	ld   bc, $0301                                   ; $60e2: $01 $01 $03
	jr   z, jr_05b_60eb                              ; $60e5: $28 $04

	ld   c, b                                        ; $60e7: $48
	ld   l, [hl]                                     ; $60e8: $6e
	ld   [hl], c                                     ; $60e9: $71
	ld   l, l                                        ; $60ea: $6d

jr_05b_60eb:
	ld   a, b                                        ; $60eb: $78
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	dec  c                                           ; $60ee: $0d
	inc  bc                                          ; $60ef: $03
	ld   c, d                                        ; $60f0: $4a
	ld   [bc], a                                     ; $60f1: $02
	or   h                                           ; $60f2: $b4
	ld   a, l                                        ; $60f3: $7d
	ld   bc, $0207                                   ; $60f4: $01 $07 $02
	or   [hl]                                        ; $60f7: $b6
	and  b                                           ; $60f8: $a0
	inc  b                                           ; $60f9: $04
	ld   a, a                                        ; $60fa: $7f
	add  h                                           ; $60fb: $84
	ld   h, c                                        ; $60fc: $61
	halt                                             ; $60fd: $76
	ld   bc, $6e08                                   ; $60fe: $01 $08 $6e
	sbc  a                                           ; $6101: $9f
	dec  c                                           ; $6102: $0d
	nop                                              ; $6103: $00
	ld   a, [bc]                                     ; $6104: $0a
	ld   b, $66                                      ; $6105: $06 $66
	ld   bc, $d007                                   ; $6107: $01 $07 $d0
	inc  bc                                          ; $610a: $03
	inc  b                                           ; $610b: $04
	add  b                                           ; $610c: $80
	ld   d, c                                        ; $610d: $51
	ld   bc, $20ff                                   ; $610e: $01 $ff $20
	nop                                              ; $6111: $00
	dec  b                                           ; $6112: $05
	add  b                                           ; $6113: $80
	ld   d, c                                        ; $6114: $51
	ld   bc, $0001                                   ; $6115: $01 $01 $00
	ld   bc, $cf02                                   ; $6118: $01 $02 $cf
	dec  b                                           ; $611b: $05
	ld   a, [de]                                     ; $611c: $1a
	ld   h, e                                        ; $611d: $63
	and  c                                           ; $611e: $a1
	ld   a, h                                        ; $611f: $7c
	ld   [bc], a                                     ; $6120: $02
	ld   hl, sp+$04                                  ; $6121: $f8 $04
	ld   c, b                                        ; $6123: $48
	ld   a, l                                        ; $6124: $7d
	ld   sp, hl                                      ; $6125: $f9
	dec  c                                           ; $6126: $0d
	nop                                              ; $6127: $00
	ld   a, [bc]                                     ; $6128: $0a
	add  hl, de                                      ; $6129: $19
	dec  b                                           ; $612a: $05
	inc  bc                                          ; $612b: $03
	inc  b                                           ; $612c: $04
	ld   e, [hl]                                     ; $612d: $5e
	inc  b                                           ; $612e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $612f: $cf
	ld   a, l                                        ; $6130: $7d
	pop  de                                          ; $6131: $d1
	or   b                                           ; $6132: $b0
	ret  nc                                          ; $6133: $d0

	push bc                                          ; $6134: $c5
	sub  d                                           ; $6135: $92
	ld   a, [rRAMG]                                  ; $6136: $fa $00 $00
	inc  b                                           ; $6139: $04
	ld   e, [hl]                                     ; $613a: $5e
	inc  b                                           ; $613b: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $613c: $cf
	ld   a, l                                        ; $613d: $7d
	db   $d3                                         ; $613e: $d3
	db   $eb                                         ; $613f: $eb
	db   $e3                                         ; $6140: $e3
	xor  [hl]                                        ; $6141: $ae
	sub  d                                           ; $6142: $92
	ld   a, [$0100]                                  ; $6143: $fa $00 $01
	and  a                                           ; $6146: $a7
	jp   nz, $047d                                   ; $6147: $c2 $7d $04

	inc  de                                          ; $614a: $13
	inc  bc                                          ; $614b: $03
	ld   b, $92                                      ; $614c: $06 $92
	ld   a, [$0200]                                  ; $614e: $fa $00 $02
	rlca                                             ; $6151: $07
	add  e                                           ; $6152: $83
	inc  bc                                          ; $6153: $03
	ld   [bc], a                                     ; $6154: $02
	inc  bc                                          ; $6155: $03
	ld   bc, $2000                                   ; $6156: $01 $00 $20
	nop                                              ; $6159: $00
	rlca                                             ; $615a: $07
	and  b                                           ; $615b: $a0
	inc  bc                                          ; $615c: $03
	ld   [bc], a                                     ; $615d: $02
	inc  bc                                          ; $615e: $03
	ld   bc, $2001                                   ; $615f: $01 $01 $20
	nop                                              ; $6162: $00
	rlca                                             ; $6163: $07
	and  b                                           ; $6164: $a0
	inc  bc                                          ; $6165: $03
	ld   [bc], a                                     ; $6166: $02
	inc  bc                                          ; $6167: $03
	ld   bc, $2002                                   ; $6168: $01 $02 $20
	nop                                              ; $616b: $00
	ld   b, $a0                                      ; $616c: $06 $a0
	inc  bc                                          ; $616e: $03
	inc  e                                           ; $616f: $1c
	rrca                                             ; $6170: $0f
	ld   bc, $1401                                   ; $6171: $01 $01 $14
	dec  de                                          ; $6174: $1b
	ld   bc, $0301                                   ; $6175: $01 $01 $03
	ld   c, d                                        ; $6178: $4a
	ld   [bc], a                                     ; $6179: $02
	or   h                                           ; $617a: $b4
	ld   l, [hl]                                     ; $617b: $6e
	sbc  a                                           ; $617c: $9f
	dec  c                                           ; $617d: $0d
	nop                                              ; $617e: $00
	ld   a, [bc]                                     ; $617f: $0a
	dec  b                                           ; $6180: $05
	ld   b, b                                        ; $6181: $40
	rst  $38                                         ; $6182: $ff
	inc  bc                                          ; $6183: $03
	rst  $38                                         ; $6184: $ff
	ld   bc, $2801                                   ; $6185: $01 $01 $28
	nop                                              ; $6188: $00
	ld   b, $66                                      ; $6189: $06 $66
	ld   bc, $0f1c                                   ; $618b: $01 $1c $0f
	ld   [bc], a                                     ; $618e: $02
	ld   [bc], a                                     ; $618f: $02
	inc  d                                           ; $6190: $14
	inc  e                                           ; $6191: $1c
	ld   bc, $0301                                   ; $6192: $01 $01 $03
	jr   z, jr_05b_619b                              ; $6195: $28 $04

	ld   c, b                                        ; $6197: $48
	ld   l, [hl]                                     ; $6198: $6e
	ld   [hl], c                                     ; $6199: $71
	ld   l, l                                        ; $619a: $6d

jr_05b_619b:
	ld   a, b                                        ; $619b: $78
	rst  $38                                         ; $619c: $ff
	rst  $38                                         ; $619d: $ff
	dec  c                                           ; $619e: $0d
	inc  bc                                          ; $619f: $03
	ld   c, d                                        ; $61a0: $4a
	ld   [bc], a                                     ; $61a1: $02
	or   h                                           ; $61a2: $b4
	ld   a, l                                        ; $61a3: $7d
	dec  c                                           ; $61a4: $0d
	ld   bc, $0407                                   ; $61a5: $01 $07 $04
	ld   e, [hl]                                     ; $61a8: $5e
	inc  b                                           ; $61a9: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61aa: $cf
	ld   a, l                                        ; $61ab: $7d
	pop  de                                          ; $61ac: $d1
	or   b                                           ; $61ad: $b0
	ret  nc                                          ; $61ae: $d0

	push bc                                          ; $61af: $c5
	sub  d                                           ; $61b0: $92
	ld   a, [$0801]                                  ; $61b1: $fa $01 $08
	ld   l, [hl]                                     ; $61b4: $6e
	sbc  a                                           ; $61b5: $9f
	dec  c                                           ; $61b6: $0d
	nop                                              ; $61b7: $00
	ld   a, [bc]                                     ; $61b8: $0a
	ld   b, $66                                      ; $61b9: $06 $66
	ld   bc, $7007                                   ; $61bb: $01 $07 $70
	inc  b                                           ; $61be: $04
	inc  b                                           ; $61bf: $04
	add  b                                           ; $61c0: $80
	ld   d, d                                        ; $61c1: $52
	ld   bc, $20ff                                   ; $61c2: $01 $ff $20
	nop                                              ; $61c5: $00
	dec  b                                           ; $61c6: $05
	add  b                                           ; $61c7: $80
	ld   d, d                                        ; $61c8: $52
	ld   bc, $0001                                   ; $61c9: $01 $01 $00
	ld   bc, $cf02                                   ; $61cc: $01 $02 $cf
	dec  b                                           ; $61cf: $05
	ld   a, [de]                                     ; $61d0: $1a
	ld   h, e                                        ; $61d1: $63
	and  c                                           ; $61d2: $a1
	ld   e, d                                        ; $61d3: $5a
	ld   [bc], a                                     ; $61d4: $02
	sbc  d                                           ; $61d5: $9a
	ld   e, e                                        ; $61d6: $5b
	ld   a, b                                        ; $61d7: $78
	dec  c                                           ; $61d8: $0d
	xor  h                                           ; $61d9: $ac
	ei                                               ; $61da: $fb
	jp   z, $fbb3                                    ; $61db: $ca $b3 $fb

	ldh  [c], a                                      ; $61de: $e2
	ld   a, l                                        ; $61df: $7d
	ld   sp, hl                                      ; $61e0: $f9
	dec  c                                           ; $61e1: $0d
	nop                                              ; $61e2: $00
	ld   a, [bc]                                     ; $61e3: $0a
	add  hl, de                                      ; $61e4: $19
	dec  b                                           ; $61e5: $05
	inc  bc                                          ; $61e6: $03
	ld   [bc], a                                     ; $61e7: $02
	sbc  b                                           ; $61e8: $98
	ld   [bc], a                                     ; $61e9: $02
	ld   sp, hl                                      ; $61ea: $f9
	nop                                              ; $61eb: $00
	nop                                              ; $61ec: $00
	sbc  $fb                                         ; $61ed: $de $fb
	xor  h                                           ; $61ef: $ac
	ei                                               ; $61f0: $fb
	nop                                              ; $61f1: $00
	ld   bc, $7818                                   ; $61f2: $01 $18 $78
	sub  a                                           ; $61f5: $97
	add  a                                           ; $61f6: $87
	nop                                              ; $61f7: $00
	ld   [bc], a                                     ; $61f8: $02
	rlca                                             ; $61f9: $07
	dec  hl                                          ; $61fa: $2b
	inc  b                                           ; $61fb: $04
	ld   [bc], a                                     ; $61fc: $02
	inc  bc                                          ; $61fd: $03
	ld   bc, $2000                                   ; $61fe: $01 $00 $20
	nop                                              ; $6201: $00
	rlca                                             ; $6202: $07
	ld   c, b                                        ; $6203: $48
	inc  b                                           ; $6204: $04
	ld   [bc], a                                     ; $6205: $02
	inc  bc                                          ; $6206: $03
	ld   bc, $2001                                   ; $6207: $01 $01 $20
	nop                                              ; $620a: $00
	rlca                                             ; $620b: $07
	ld   c, b                                        ; $620c: $48
	inc  b                                           ; $620d: $04
	ld   [bc], a                                     ; $620e: $02
	inc  bc                                          ; $620f: $03
	ld   bc, $2002                                   ; $6210: $01 $02 $20
	nop                                              ; $6213: $00
	ld   b, $48                                      ; $6214: $06 $48
	inc  b                                           ; $6216: $04
	inc  e                                           ; $6217: $1c
	rrca                                             ; $6218: $0f
	ld   bc, $1401                                   ; $6219: $01 $01 $14
	dec  de                                          ; $621c: $1b
	ld   bc, $0301                                   ; $621d: $01 $01 $03
	ld   c, d                                        ; $6220: $4a
	ld   [bc], a                                     ; $6221: $02
	or   h                                           ; $6222: $b4
	ld   l, [hl]                                     ; $6223: $6e
	sbc  a                                           ; $6224: $9f
	dec  c                                           ; $6225: $0d
	nop                                              ; $6226: $00
	ld   a, [bc]                                     ; $6227: $0a
	dec  b                                           ; $6228: $05
	ld   b, b                                        ; $6229: $40
	rst  $38                                         ; $622a: $ff
	inc  bc                                          ; $622b: $03
	rst  $38                                         ; $622c: $ff
	ld   bc, $2801                                   ; $622d: $01 $01 $28
	nop                                              ; $6230: $00
	ld   b, $66                                      ; $6231: $06 $66
	ld   bc, $0f1c                                   ; $6233: $01 $1c $0f
	ld   [bc], a                                     ; $6236: $02
	ld   [bc], a                                     ; $6237: $02
	inc  d                                           ; $6238: $14
	inc  e                                           ; $6239: $1c
	ld   bc, $0301                                   ; $623a: $01 $01 $03
	jr   z, jr_05b_6243                              ; $623d: $28 $04

	ld   c, b                                        ; $623f: $48
	ld   l, [hl]                                     ; $6240: $6e
	ld   [hl], c                                     ; $6241: $71
	ld   l, l                                        ; $6242: $6d

jr_05b_6243:
	ld   a, b                                        ; $6243: $78
	rst  $38                                         ; $6244: $ff
	rst  $38                                         ; $6245: $ff
	dec  c                                           ; $6246: $0d
	inc  bc                                          ; $6247: $03
	ld   c, d                                        ; $6248: $4a
	ld   [bc], a                                     ; $6249: $02
	or   h                                           ; $624a: $b4
	ld   a, l                                        ; $624b: $7d
	ld   bc, $0207                                   ; $624c: $01 $07 $02
	sbc  b                                           ; $624f: $98
	ld   [bc], a                                     ; $6250: $02
	ld   sp, hl                                      ; $6251: $f9
	ld   bc, $6e08                                   ; $6252: $01 $08 $6e
	sbc  a                                           ; $6255: $9f
	dec  c                                           ; $6256: $0d
	nop                                              ; $6257: $00
	ld   a, [bc]                                     ; $6258: $0a
	ld   b, $66                                      ; $6259: $06 $66
	ld   bc, $3d07                                   ; $625b: $01 $07 $3d
	dec  b                                           ; $625e: $05
	inc  b                                           ; $625f: $04
	add  b                                           ; $6260: $80
	ld   d, e                                        ; $6261: $53
	ld   bc, $20ff                                   ; $6262: $01 $ff $20
	nop                                              ; $6265: $00
	dec  b                                           ; $6266: $05
	add  b                                           ; $6267: $80
	ld   d, e                                        ; $6268: $53
	ld   bc, $0001                                   ; $6269: $01 $01 $00
	ld   bc, $9802                                   ; $626c: $01 $02 $98
	sub  d                                           ; $626f: $92
	ld   h, l                                        ; $6270: $65
	ld   e, e                                        ; $6271: $5b
	inc  bc                                          ; $6272: $03
	add  l                                           ; $6273: $85
	inc  b                                           ; $6274: $04
	sub  l                                           ; $6275: $95
	ld   a, l                                        ; $6276: $7d
	dec  c                                           ; $6277: $0d
	inc  b                                           ; $6278: $04
	ld   c, c                                        ; $6279: $49
	and  b                                           ; $627a: $a0
	ld   h, a                                        ; $627b: $67
	sbc  c                                           ; $627c: $99
	halt                                             ; $627d: $76
	ld   h, c                                        ; $627e: $61
	sbc  e                                           ; $627f: $9b
	ld   sp, hl                                      ; $6280: $f9
	dec  c                                           ; $6281: $0d
	nop                                              ; $6282: $00
	ld   a, [bc]                                     ; $6283: $0a
	add  hl, de                                      ; $6284: $19
	dec  b                                           ; $6285: $05
	inc  bc                                          ; $6286: $03
	inc  b                                           ; $6287: $04
	ld   e, a                                        ; $6288: $5f
	inc  b                                           ; $6289: $04
	pop  bc                                          ; $628a: $c1
	inc  b                                           ; $628b: $04
	ld   h, b                                        ; $628c: $60
	ld   [bc], a                                     ; $628d: $02
	ld   d, a                                        ; $628e: $57
	ld   a, h                                        ; $628f: $7c
	ld   [bc], a                                     ; $6290: $02
	adc  b                                           ; $6291: $88
	inc  b                                           ; $6292: $04
	ld   e, [hl]                                     ; $6293: $5e
	sbc  [hl]                                        ; $6294: $9e
	ld   l, c                                        ; $6295: $69
	ld   d, d                                        ; $6296: $52
	add  c                                           ; $6297: $81
	nop                                              ; $6298: $00
	nop                                              ; $6299: $00
	inc  bc                                          ; $629a: $03
	add  c                                           ; $629b: $81
	inc  bc                                          ; $629c: $03
	add  d                                           ; $629d: $82
	ld   a, h                                        ; $629e: $7c
	inc  bc                                          ; $629f: $03
	ld   l, l                                        ; $62a0: $6d
	dec  b                                           ; $62a1: $05
	add  hl, de                                      ; $62a2: $19
	nop                                              ; $62a3: $00
	ld   bc, $8e04                                   ; $62a4: $01 $04 $8e
	inc  b                                           ; $62a7: $04
	inc  c                                           ; $62a8: $0c
	inc  bc                                          ; $62a9: $03
	ld   c, h                                        ; $62aa: $4c
	inc  b                                           ; $62ab: $04
	jr   z, @+$7e                                    ; $62ac: $28 $7c

	ld   [bc], a                                     ; $62ae: $02
	adc  b                                           ; $62af: $88
	inc  b                                           ; $62b0: $04
	ld   e, [hl]                                     ; $62b1: $5e
	sbc  [hl]                                        ; $62b2: $9e
	ld   l, c                                        ; $62b3: $69
	ld   d, d                                        ; $62b4: $52
	add  c                                           ; $62b5: $81
	nop                                              ; $62b6: $00
	ld   [bc], a                                     ; $62b7: $02
	rlca                                             ; $62b8: $07
	ld   [$0204], a                                  ; $62b9: $ea $04 $02
	inc  bc                                          ; $62bc: $03
	ld   bc, $2000                                   ; $62bd: $01 $00 $20
	nop                                              ; $62c0: $00
	rlca                                             ; $62c1: $07
	rlca                                             ; $62c2: $07
	dec  b                                           ; $62c3: $05
	ld   [bc], a                                     ; $62c4: $02
	inc  bc                                          ; $62c5: $03
	ld   bc, $2001                                   ; $62c6: $01 $01 $20
	nop                                              ; $62c9: $00
	rlca                                             ; $62ca: $07
	rlca                                             ; $62cb: $07
	dec  b                                           ; $62cc: $05
	ld   [bc], a                                     ; $62cd: $02
	inc  bc                                          ; $62ce: $03
	ld   bc, $2002                                   ; $62cf: $01 $02 $20
	nop                                              ; $62d2: $00
	ld   b, $07                                      ; $62d3: $06 $07
	dec  b                                           ; $62d5: $05
	inc  e                                           ; $62d6: $1c
	rrca                                             ; $62d7: $0f
	ld   bc, $1401                                   ; $62d8: $01 $01 $14
	dec  de                                          ; $62db: $1b
	ld   bc, $0301                                   ; $62dc: $01 $01 $03
	ld   c, d                                        ; $62df: $4a
	ld   [bc], a                                     ; $62e0: $02
	or   h                                           ; $62e1: $b4
	ld   l, [hl]                                     ; $62e2: $6e
	sbc  a                                           ; $62e3: $9f
	dec  c                                           ; $62e4: $0d
	nop                                              ; $62e5: $00
	ld   a, [bc]                                     ; $62e6: $0a
	dec  b                                           ; $62e7: $05
	ld   b, b                                        ; $62e8: $40
	rst  $38                                         ; $62e9: $ff
	inc  bc                                          ; $62ea: $03
	rst  $38                                         ; $62eb: $ff
	ld   bc, $2801                                   ; $62ec: $01 $01 $28
	nop                                              ; $62ef: $00
	ld   b, $66                                      ; $62f0: $06 $66
	ld   bc, $0f1c                                   ; $62f2: $01 $1c $0f
	ld   [bc], a                                     ; $62f5: $02
	ld   [bc], a                                     ; $62f6: $02
	inc  d                                           ; $62f7: $14
	inc  e                                           ; $62f8: $1c
	ld   bc, $0301                                   ; $62f9: $01 $01 $03
	jr   z, jr_05b_6302                              ; $62fc: $28 $04

	ld   c, b                                        ; $62fe: $48
	ld   l, [hl]                                     ; $62ff: $6e
	ld   [hl], c                                     ; $6300: $71
	ld   l, l                                        ; $6301: $6d

jr_05b_6302:
	ld   a, b                                        ; $6302: $78
	rst  $38                                         ; $6303: $ff
	rst  $38                                         ; $6304: $ff
	dec  c                                           ; $6305: $0d
	inc  bc                                          ; $6306: $03
	ld   c, d                                        ; $6307: $4a
	ld   [bc], a                                     ; $6308: $02
	or   h                                           ; $6309: $b4
	ld   a, l                                        ; $630a: $7d
	ld   bc, $0407                                   ; $630b: $01 $07 $04
	ld   e, a                                        ; $630e: $5f
	inc  b                                           ; $630f: $04
	pop  bc                                          ; $6310: $c1
	inc  b                                           ; $6311: $04
	ld   h, b                                        ; $6312: $60
	ld   [bc], a                                     ; $6313: $02
	ld   d, a                                        ; $6314: $57
	ld   a, h                                        ; $6315: $7c
	ld   [bc], a                                     ; $6316: $02
	adc  b                                           ; $6317: $88
	inc  b                                           ; $6318: $04
	ld   e, [hl]                                     ; $6319: $5e
	dec  c                                           ; $631a: $0d
	sbc  [hl]                                        ; $631b: $9e
	ld   l, c                                        ; $631c: $69
	ld   d, d                                        ; $631d: $52
	add  c                                           ; $631e: $81
	ld   bc, $6e08                                   ; $631f: $01 $08 $6e
	sbc  a                                           ; $6322: $9f
	dec  c                                           ; $6323: $0d
	nop                                              ; $6324: $00
	ld   a, [bc]                                     ; $6325: $0a
	ld   b, $66                                      ; $6326: $06 $66
	ld   bc, $db07                                   ; $6328: $01 $07 $db
	dec  b                                           ; $632b: $05
	inc  b                                           ; $632c: $04
	add  b                                           ; $632d: $80
	ld   d, h                                        ; $632e: $54
	ld   bc, $20ff                                   ; $632f: $01 $ff $20
	nop                                              ; $6332: $00
	dec  b                                           ; $6333: $05
	add  b                                           ; $6334: $80
	ld   d, h                                        ; $6335: $54
	ld   bc, $0001                                   ; $6336: $01 $01 $00
	ld   bc, $cf02                                   ; $6339: $01 $02 $cf
	dec  b                                           ; $633c: $05
	ld   a, [de]                                     ; $633d: $1a
	ld   h, e                                        ; $633e: $63
	and  c                                           ; $633f: $a1
	ld   a, h                                        ; $6340: $7c
	inc  bc                                          ; $6341: $03
	cp   c                                           ; $6342: $b9
	sbc  c                                           ; $6343: $99
	ld   [bc], a                                     ; $6344: $02
	jr   c, jr_05b_634b                              ; $6345: $38 $04

	ld   d, d                                        ; $6347: $52
	ld   a, h                                        ; $6348: $7c
	inc  bc                                          ; $6349: $03
	dec  bc                                          ; $634a: $0b

jr_05b_634b:
	ld   a, l                                        ; $634b: $7d
	ld   sp, hl                                      ; $634c: $f9
	dec  c                                           ; $634d: $0d
	nop                                              ; $634e: $00
	ld   a, [bc]                                     ; $634f: $0a
	add  hl, de                                      ; $6350: $19
	dec  b                                           ; $6351: $05
	inc  bc                                          ; $6352: $03
	or   c                                           ; $6353: $b1
	db   $ec                                         ; $6354: $ec
	ei                                               ; $6355: $fb
	push af                                          ; $6356: $f5
	nop                                              ; $6357: $00
	nop                                              ; $6358: $00
	and  l                                           ; $6359: $a5
	xor  c                                           ; $635a: $a9
	rst  $28                                         ; $635b: $ef
	ei                                               ; $635c: $fb
	nop                                              ; $635d: $00
	ld   bc, $edd7                                   ; $635e: $01 $d7 $ed
	ei                                               ; $6361: $fb
	nop                                              ; $6362: $00
	ld   [bc], a                                     ; $6363: $02
	rlca                                             ; $6364: $07
	sub  [hl]                                        ; $6365: $96
	dec  b                                           ; $6366: $05
	ld   [bc], a                                     ; $6367: $02
	inc  bc                                          ; $6368: $03
	ld   bc, $2000                                   ; $6369: $01 $00 $20
	nop                                              ; $636c: $00
	rlca                                             ; $636d: $07
	or   e                                           ; $636e: $b3
	dec  b                                           ; $636f: $05
	ld   [bc], a                                     ; $6370: $02
	inc  bc                                          ; $6371: $03
	ld   bc, $2001                                   ; $6372: $01 $01 $20
	nop                                              ; $6375: $00
	rlca                                             ; $6376: $07
	or   e                                           ; $6377: $b3

Jump_05b_6378:
	dec  b                                           ; $6378: $05
	ld   [bc], a                                     ; $6379: $02
	inc  bc                                          ; $637a: $03
	ld   bc, $2002                                   ; $637b: $01 $02 $20
	nop                                              ; $637e: $00
	ld   b, $b3                                      ; $637f: $06 $b3
	dec  b                                           ; $6381: $05
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
	ld   b, $66                                      ; $639c: $06 $66
	ld   bc, $0f1c                                   ; $639e: $01 $1c $0f
	ld   [bc], a                                     ; $63a1: $02
	ld   [bc], a                                     ; $63a2: $02
	inc  d                                           ; $63a3: $14
	inc  e                                           ; $63a4: $1c
	ld   bc, $0301                                   ; $63a5: $01 $01 $03
	jr   z, jr_05b_63ae                              ; $63a8: $28 $04

	ld   c, b                                        ; $63aa: $48
	ld   l, [hl]                                     ; $63ab: $6e
	ld   [hl], c                                     ; $63ac: $71
	ld   l, l                                        ; $63ad: $6d

jr_05b_63ae:
	ld   a, b                                        ; $63ae: $78
	rst  $38                                         ; $63af: $ff
	rst  $38                                         ; $63b0: $ff
	dec  c                                           ; $63b1: $0d
	inc  bc                                          ; $63b2: $03
	ld   c, d                                        ; $63b3: $4a
	ld   [bc], a                                     ; $63b4: $02
	or   h                                           ; $63b5: $b4
	ld   a, l                                        ; $63b6: $7d
	ld   bc, $b107                                   ; $63b7: $01 $07 $b1
	db   $ec                                         ; $63ba: $ec
	ei                                               ; $63bb: $fb
	push af                                          ; $63bc: $f5
	ld   bc, $6e08                                   ; $63bd: $01 $08 $6e
	sbc  a                                           ; $63c0: $9f
	dec  c                                           ; $63c1: $0d
	nop                                              ; $63c2: $00
	ld   a, [bc]                                     ; $63c3: $0a
	ld   b, $66                                      ; $63c4: $06 $66
	ld   bc, $9d07                                   ; $63c6: $01 $07 $9d
	ld   b, $04                                      ; $63c9: $06 $04
	add  b                                           ; $63cb: $80
	ld   d, l                                        ; $63cc: $55
	ld   bc, $20ff                                   ; $63cd: $01 $ff $20
	nop                                              ; $63d0: $00
	dec  b                                           ; $63d1: $05
	add  b                                           ; $63d2: $80
	ld   d, l                                        ; $63d3: $55
	ld   bc, $0001                                   ; $63d4: $01 $01 $00
	ld   bc, $cf02                                   ; $63d7: $01 $02 $cf
	dec  b                                           ; $63da: $05
	ld   a, [de]                                     ; $63db: $1a
	ld   h, e                                        ; $63dc: $63
	and  c                                           ; $63dd: $a1
	ld   a, c                                        ; $63de: $79
	ld   [bc], a                                     ; $63df: $02
	ld   c, d                                        ; $63e0: $4a
	inc  b                                           ; $63e1: $04
	ld   c, e                                        ; $63e2: $4b
	inc  b                                           ; $63e3: $04
	adc  b                                           ; $63e4: $88
	and  b                                           ; $63e5: $a0
	ld   [bc], a                                     ; $63e6: $02
	ret  nc                                          ; $63e7: $d0

	ld   d, [hl]                                     ; $63e8: $56
	ld   l, l                                        ; $63e9: $6d
	dec  c                                           ; $63ea: $0d
	ld   [bc], a                                     ; $63eb: $02
	rlc  d                                           ; $63ec: $cb $02
	adc  a                                           ; $63ee: $8f
	inc  bc                                          ; $63ef: $03
	add  d                                           ; $63f0: $82
	ld   a, h                                        ; $63f1: $7c
	inc  b                                           ; $63f2: $04
	rst  ToBoot                                         ; $63f3: $c7
	inc  bc                                          ; $63f4: $03
	ld   c, a                                        ; $63f5: $4f
	ld   a, l                                        ; $63f6: $7d
	ld   sp, hl                                      ; $63f7: $f9
	dec  c                                           ; $63f8: $0d
	nop                                              ; $63f9: $00
	ld   a, [bc]                                     ; $63fa: $0a
	add  hl, de                                      ; $63fb: $19
	dec  b                                           ; $63fc: $05
	inc  bc                                          ; $63fd: $03
	jp   nc, $b8fb                                   ; $63fe: $d2 $fb $b8

	ei                                               ; $6401: $fb
	di                                               ; $6402: $f3
	call c, $fbf1                                    ; $6403: $dc $f1 $fb
	jp   z, $0000                                   ; $6406: $ca $00 $00

	jp   nc, $b8fb                                   ; $6409: $d2 $fb $b8

	ei                                               ; $640c: $fb
	di                                               ; $640d: $f3
	call c, $a5f1                                    ; $640e: $dc $f1 $a5
	ret                                              ; $6411: $c9


	nop                                              ; $6412: $00
	ld   bc, $fbd2                                   ; $6413: $01 $d2 $fb
	cp   b                                           ; $6416: $b8
	ei                                               ; $6417: $fb
	di                                               ; $6418: $f3
	call c, $c4f1                                    ; $6419: $dc $f1 $c4
	ret                                              ; $641c: $c9


	nop                                              ; $641d: $00
	ld   [bc], a                                     ; $641e: $02
	rlca                                             ; $641f: $07
	ld   d, c                                        ; $6420: $51
	ld   b, $02                                      ; $6421: $06 $02
	inc  bc                                          ; $6423: $03
	ld   bc, $2000                                   ; $6424: $01 $00 $20
	nop                                              ; $6427: $00
	rlca                                             ; $6428: $07
	ld   l, [hl]                                     ; $6429: $6e
	ld   b, $02                                      ; $642a: $06 $02
	inc  bc                                          ; $642c: $03
	ld   bc, $2001                                   ; $642d: $01 $01 $20
	nop                                              ; $6430: $00
	rlca                                             ; $6431: $07
	ld   l, [hl]                                     ; $6432: $6e
	ld   b, $02                                      ; $6433: $06 $02
	inc  bc                                          ; $6435: $03
	ld   bc, $2002                                   ; $6436: $01 $02 $20
	nop                                              ; $6439: $00
	ld   b, $6e                                      ; $643a: $06 $6e
	ld   b, $1c                                      ; $643c: $06 $1c
	rrca                                             ; $643e: $0f
	ld   bc, $1401                                   ; $643f: $01 $01 $14
	dec  de                                          ; $6442: $1b
	ld   bc, $0301                                   ; $6443: $01 $01 $03
	ld   c, d                                        ; $6446: $4a
	ld   [bc], a                                     ; $6447: $02
	or   h                                           ; $6448: $b4
	ld   l, [hl]                                     ; $6449: $6e
	sbc  a                                           ; $644a: $9f
	dec  c                                           ; $644b: $0d
	nop                                              ; $644c: $00
	ld   a, [bc]                                     ; $644d: $0a
	dec  b                                           ; $644e: $05
	ld   b, b                                        ; $644f: $40
	rst  $38                                         ; $6450: $ff
	inc  bc                                          ; $6451: $03
	rst  $38                                         ; $6452: $ff
	ld   bc, $2801                                   ; $6453: $01 $01 $28
	nop                                              ; $6456: $00
	ld   b, $66                                      ; $6457: $06 $66
	ld   bc, $0f1c                                   ; $6459: $01 $1c $0f
	ld   [bc], a                                     ; $645c: $02
	ld   [bc], a                                     ; $645d: $02
	inc  d                                           ; $645e: $14
	inc  e                                           ; $645f: $1c
	ld   bc, $0301                                   ; $6460: $01 $01 $03
	jr   z, jr_05b_6469                              ; $6463: $28 $04

	ld   c, b                                        ; $6465: $48
	ld   l, [hl]                                     ; $6466: $6e
	ld   [hl], c                                     ; $6467: $71
	ld   l, l                                        ; $6468: $6d

jr_05b_6469:
	ld   a, b                                        ; $6469: $78
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	dec  c                                           ; $646c: $0d
	inc  bc                                          ; $646d: $03
	ld   c, d                                        ; $646e: $4a
	ld   [bc], a                                     ; $646f: $02
	or   h                                           ; $6470: $b4
	ld   a, l                                        ; $6471: $7d
	sbc  [hl]                                        ; $6472: $9e
	dec  c                                           ; $6473: $0d
	ld   bc, $d207                                   ; $6474: $01 $07 $d2
	ei                                               ; $6477: $fb
	cp   b                                           ; $6478: $b8
	ei                                               ; $6479: $fb
	di                                               ; $647a: $f3
	call c, $fbf1                                    ; $647b: $dc $f1 $fb
	jp   z, $0801                                    ; $647e: $ca $01 $08

	ld   l, [hl]                                     ; $6481: $6e
	sbc  a                                           ; $6482: $9f
	dec  c                                           ; $6483: $0d
	nop                                              ; $6484: $00
	ld   a, [bc]                                     ; $6485: $0a
	ld   b, $66                                      ; $6486: $06 $66
	ld   bc, $4907                                   ; $6488: $01 $07 $49
	rlca                                             ; $648b: $07
	inc  b                                           ; $648c: $04
	add  b                                           ; $648d: $80
	ld   d, [hl]                                     ; $648e: $56
	ld   bc, $20ff                                   ; $648f: $01 $ff $20
	nop                                              ; $6492: $00
	dec  b                                           ; $6493: $05
	add  b                                           ; $6494: $80
	ld   d, [hl]                                     ; $6495: $56
	ld   bc, $0001                                   ; $6496: $01 $01 $00
	ld   bc, $cf02                                   ; $6499: $01 $02 $cf
	dec  b                                           ; $649c: $05
	ld   a, [de]                                     ; $649d: $1a
	ld   h, e                                        ; $649e: $63
	and  c                                           ; $649f: $a1
	ld   e, d                                        ; $64a0: $5a
	inc  b                                           ; $64a1: $04
	ld   c, e                                        ; $64a2: $4b
	inc  b                                           ; $64a3: $04
	ldh  a, [c]                                      ; $64a4: $f2
	ld   [bc], a                                     ; $64a5: $02
	sub  a                                           ; $64a6: $97
	ld   [hl], l                                     ; $64a7: $75
	dec  c                                           ; $64a8: $0d
	ld   [bc], a                                     ; $64a9: $02
	rra                                              ; $64aa: $1f
	ld   h, [hl]                                     ; $64ab: $66
	sbc  c                                           ; $64ac: $99
	inc  b                                           ; $64ad: $04
	db   $ec                                         ; $64ae: $ec
	ld   a, l                                        ; $64af: $7d
	ld   sp, hl                                      ; $64b0: $f9
	dec  c                                           ; $64b1: $0d
	nop                                              ; $64b2: $00
	ld   a, [bc]                                     ; $64b3: $0a
	add  hl, de                                      ; $64b4: $19
	dec  b                                           ; $64b5: $05
	inc  bc                                          ; $64b6: $03
	ld   [bc], a                                     ; $64b7: $02
	db   $f4                                         ; $64b8: $f4
	ld   [bc], a                                     ; $64b9: $02
	ld   a, h                                        ; $64ba: $7c
	ld   [bc], a                                     ; $64bb: $02
	ldh  a, [c]                                      ; $64bc: $f2
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	inc  bc                                          ; $64bf: $03
	ld   d, b                                        ; $64c0: $50
	ld   [bc], a                                     ; $64c1: $02
	ld   a, h                                        ; $64c2: $7c
	ld   [bc], a                                     ; $64c3: $02
	or   [hl]                                        ; $64c4: $b6
	nop                                              ; $64c5: $00
	ld   bc, $fb03                                   ; $64c6: $01 $03 $fb
	inc  b                                           ; $64c9: $04
	ld   a, [hl]                                     ; $64ca: $7e
	ld   [bc], a                                     ; $64cb: $02
	ld   a, l                                        ; $64cc: $7d
	nop                                              ; $64cd: $00
	ld   [bc], a                                     ; $64ce: $02
	rlca                                             ; $64cf: $07
	ld   bc, $0207                                   ; $64d0: $01 $07 $02
	inc  bc                                          ; $64d3: $03
	ld   bc, $2000                                   ; $64d4: $01 $00 $20
	nop                                              ; $64d7: $00
	rlca                                             ; $64d8: $07
	ld   e, $07                                      ; $64d9: $1e $07
	ld   [bc], a                                     ; $64db: $02
	inc  bc                                          ; $64dc: $03
	ld   bc, $2001                                   ; $64dd: $01 $01 $20
	nop                                              ; $64e0: $00
	rlca                                             ; $64e1: $07
	ld   e, $07                                      ; $64e2: $1e $07
	ld   [bc], a                                     ; $64e4: $02
	inc  bc                                          ; $64e5: $03
	ld   bc, $2002                                   ; $64e6: $01 $02 $20
	nop                                              ; $64e9: $00
	ld   b, $1e                                      ; $64ea: $06 $1e
	rlca                                             ; $64ec: $07
	inc  e                                           ; $64ed: $1c
	rrca                                             ; $64ee: $0f
	ld   bc, $1401                                   ; $64ef: $01 $01 $14
	dec  de                                          ; $64f2: $1b
	ld   bc, $0301                                   ; $64f3: $01 $01 $03
	ld   c, d                                        ; $64f6: $4a
	ld   [bc], a                                     ; $64f7: $02
	or   h                                           ; $64f8: $b4
	ld   l, [hl]                                     ; $64f9: $6e
	sbc  a                                           ; $64fa: $9f
	dec  c                                           ; $64fb: $0d
	nop                                              ; $64fc: $00
	ld   a, [bc]                                     ; $64fd: $0a
	dec  b                                           ; $64fe: $05
	ld   b, b                                        ; $64ff: $40
	rst  $38                                         ; $6500: $ff
	inc  bc                                          ; $6501: $03
	rst  $38                                         ; $6502: $ff
	ld   bc, $2801                                   ; $6503: $01 $01 $28
	nop                                              ; $6506: $00
	ld   b, $66                                      ; $6507: $06 $66
	ld   bc, $0f1c                                   ; $6509: $01 $1c $0f
	ld   [bc], a                                     ; $650c: $02
	ld   [bc], a                                     ; $650d: $02
	inc  d                                           ; $650e: $14
	inc  e                                           ; $650f: $1c
	ld   bc, $0301                                   ; $6510: $01 $01 $03
	jr   z, jr_05b_6519                              ; $6513: $28 $04

	ld   c, b                                        ; $6515: $48
	ld   l, [hl]                                     ; $6516: $6e
	ld   [hl], c                                     ; $6517: $71
	ld   l, l                                        ; $6518: $6d

jr_05b_6519:
	ld   a, b                                        ; $6519: $78
	rst  $38                                         ; $651a: $ff
	rst  $38                                         ; $651b: $ff
	dec  c                                           ; $651c: $0d
	inc  bc                                          ; $651d: $03
	ld   c, d                                        ; $651e: $4a
	ld   [bc], a                                     ; $651f: $02
	or   h                                           ; $6520: $b4
	ld   a, l                                        ; $6521: $7d
	sbc  [hl]                                        ; $6522: $9e
	ld   bc, $0207                                   ; $6523: $01 $07 $02
	db   $f4                                         ; $6526: $f4
	ld   [bc], a                                     ; $6527: $02
	ld   a, h                                        ; $6528: $7c
	ld   [bc], a                                     ; $6529: $02
	ldh  a, [c]                                      ; $652a: $f2
	ld   bc, $6e08                                   ; $652b: $01 $08 $6e
	sbc  a                                           ; $652e: $9f
	dec  c                                           ; $652f: $0d
	nop                                              ; $6530: $00
	ld   a, [bc]                                     ; $6531: $0a
	ld   b, $66                                      ; $6532: $06 $66
	ld   bc, $c707                                   ; $6534: $01 $07 $c7
	ld   bc, $8004                                   ; $6537: $01 $04 $80
	ld   d, a                                        ; $653a: $57
	ld   bc, $20ff                                   ; $653b: $01 $ff $20
	nop                                              ; $653e: $00
	dec  b                                           ; $653f: $05
	add  b                                           ; $6540: $80
	ld   d, a                                        ; $6541: $57
	ld   bc, $0001                                   ; $6542: $01 $01 $00
	ld   bc, $3802                                   ; $6545: $01 $02 $38
	inc  b                                           ; $6548: $04
	ld   d, d                                        ; $6549: $52
	ld   a, l                                        ; $654a: $7d
	sbc  [hl]                                        ; $654b: $9e
	inc  b                                           ; $654c: $04
	ld   c, c                                        ; $654d: $49
	inc  b                                           ; $654e: $04
	ld   a, c                                        ; $654f: $79
	ld   [bc], a                                     ; $6550: $02
	ld   e, b                                        ; $6551: $58
	adc  h                                           ; $6552: $8c
	ld   [hl], l                                     ; $6553: $75
	ld   d, b                                        ; $6554: $50
	sbc  c                                           ; $6555: $99
	ld   sp, hl                                      ; $6556: $f9
	dec  c                                           ; $6557: $0d
	nop                                              ; $6558: $00
	ld   a, [bc]                                     ; $6559: $0a
	add  hl, de                                      ; $655a: $19
	dec  b                                           ; $655b: $05
	inc  bc                                          ; $655c: $03
	add  hl, de                                      ; $655d: $19
	inc  b                                           ; $655e: $04
	ld   a, c                                        ; $655f: $79
	ld   [bc], a                                     ; $6560: $02
	ld   e, b                                        ; $6561: $58
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	jr   jr_05b_656a                                 ; $6564: $18 $04

	ld   a, c                                        ; $6566: $79
	ld   [bc], a                                     ; $6567: $02
	ld   e, b                                        ; $6568: $58
	nop                                              ; $6569: $00

jr_05b_656a:
	ld   bc, $041a                                   ; $656a: $01 $1a $04
	ld   a, c                                        ; $656d: $79
	ld   [bc], a                                     ; $656e: $02
	ld   e, b                                        ; $656f: $58
	nop                                              ; $6570: $00
	ld   [bc], a                                     ; $6571: $02
	rlca                                             ; $6572: $07
	and  h                                           ; $6573: $a4
	rlca                                             ; $6574: $07
	ld   [bc], a                                     ; $6575: $02
	inc  bc                                          ; $6576: $03
	ld   bc, $2000                                   ; $6577: $01 $00 $20
	nop                                              ; $657a: $00
	rlca                                             ; $657b: $07
	pop  bc                                          ; $657c: $c1
	rlca                                             ; $657d: $07
	ld   [bc], a                                     ; $657e: $02
	inc  bc                                          ; $657f: $03
	ld   bc, $2001                                   ; $6580: $01 $01 $20
	nop                                              ; $6583: $00
	rlca                                             ; $6584: $07
	pop  bc                                          ; $6585: $c1
	rlca                                             ; $6586: $07
	ld   [bc], a                                     ; $6587: $02
	inc  bc                                          ; $6588: $03
	ld   bc, $2002                                   ; $6589: $01 $02 $20
	nop                                              ; $658c: $00
	ld   b, $c1                                      ; $658d: $06 $c1
	rlca                                             ; $658f: $07
	inc  e                                           ; $6590: $1c
	rrca                                             ; $6591: $0f
	ld   bc, $1401                                   ; $6592: $01 $01 $14
	dec  de                                          ; $6595: $1b
	ld   bc, $0301                                   ; $6596: $01 $01 $03
	ld   c, d                                        ; $6599: $4a
	ld   [bc], a                                     ; $659a: $02
	or   h                                           ; $659b: $b4
	ld   l, [hl]                                     ; $659c: $6e
	sbc  a                                           ; $659d: $9f
	dec  c                                           ; $659e: $0d
	nop                                              ; $659f: $00
	ld   a, [bc]                                     ; $65a0: $0a
	dec  b                                           ; $65a1: $05
	ld   b, b                                        ; $65a2: $40
	rst  $38                                         ; $65a3: $ff
	inc  bc                                          ; $65a4: $03
	rst  $38                                         ; $65a5: $ff
	ld   bc, $2801                                   ; $65a6: $01 $01 $28
	nop                                              ; $65a9: $00
	ld   b, $66                                      ; $65aa: $06 $66
	ld   bc, $0f1c                                   ; $65ac: $01 $1c $0f
	ld   [bc], a                                     ; $65af: $02
	ld   [bc], a                                     ; $65b0: $02
	inc  d                                           ; $65b1: $14
	inc  e                                           ; $65b2: $1c
	ld   bc, $0301                                   ; $65b3: $01 $01 $03
	jr   z, jr_05b_65bc                              ; $65b6: $28 $04

	ld   c, b                                        ; $65b8: $48
	ld   l, [hl]                                     ; $65b9: $6e
	ld   [hl], c                                     ; $65ba: $71
	ld   l, l                                        ; $65bb: $6d

jr_05b_65bc:
	ld   a, b                                        ; $65bc: $78
	rst  $38                                         ; $65bd: $ff
	rst  $38                                         ; $65be: $ff
	dec  c                                           ; $65bf: $0d
	inc  bc                                          ; $65c0: $03
	ld   c, d                                        ; $65c1: $4a
	ld   [bc], a                                     ; $65c2: $02
	or   h                                           ; $65c3: $b4
	ld   a, l                                        ; $65c4: $7d
	sbc  [hl]                                        ; $65c5: $9e
	ld   bc, $1907                                   ; $65c6: $01 $07 $19
	inc  b                                           ; $65c9: $04
	ld   a, c                                        ; $65ca: $79
	ld   [bc], a                                     ; $65cb: $02
	ld   e, b                                        ; $65cc: $58
	ld   bc, $6e08                                   ; $65cd: $01 $08 $6e
	sbc  a                                           ; $65d0: $9f
	dec  c                                           ; $65d1: $0d
	nop                                              ; $65d2: $00
	ld   a, [bc]                                     ; $65d3: $0a
	ld   b, $66                                      ; $65d4: $06 $66
	ld   bc, $0f00                                   ; $65d6: $01 $00 $0f
	nop                                              ; $65d9: $00
	ld   bc, $020d                                   ; $65da: $01 $0d $02
	nop                                              ; $65dd: $00
	ld   c, $3f                                      ; $65de: $0e $3f
	ld   [bc], a                                     ; $65e0: $02
	rlca                                             ; $65e1: $07
	ld   [hl], e                                     ; $65e2: $73
	rlca                                             ; $65e3: $07
	inc  b                                           ; $65e4: $04
	add  b                                           ; $65e5: $80
	dec  de                                          ; $65e6: $1b
	ld   bc, $20ff                                   ; $65e7: $01 $ff $20
	nop                                              ; $65ea: $00
	ld   bc, $9e50                                   ; $65eb: $01 $50 $9e
	ld   h, a                                        ; $65ee: $67
	adc  l                                           ; $65ef: $8d
	sbc  d                                           ; $65f0: $9a
	ld   h, e                                        ; $65f1: $63
	and  c                                           ; $65f2: $a1
	sbc  a                                           ; $65f3: $9f
	dec  c                                           ; $65f4: $0d
	nop                                              ; $65f5: $00
	ld   a, [bc]                                     ; $65f6: $0a
	inc  e                                           ; $65f7: $1c
	ld   [bc], a                                     ; $65f8: $02
	ld   bc, $0101                                   ; $65f9: $01 $01 $01
	ld   d, b                                        ; $65fc: $50
	sub  a                                           ; $65fd: $97
	sbc  [hl]                                        ; $65fe: $9e
	ld   [$6300], sp                                 ; $65ff: $08 $00 $63
	and  c                                           ; $6602: $a1
	sbc  a                                           ; $6603: $9f
	dec  c                                           ; $6604: $0d
	nop                                              ; $6605: $00
	ld   a, [bc]                                     ; $6606: $0a
	rrca                                             ; $6607: $0f
	nop                                              ; $6608: $00
	ld   bc, $5801                                   ; $6609: $01 $01 $58
	ld   d, d                                        ; $660c: $52
	ld   h, l                                        ; $660d: $65
	ld   l, e                                        ; $660e: $6b
	ld   d, h                                        ; $660f: $54
	ld   a, b                                        ; $6610: $78
	ld   [bc], a                                     ; $6611: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6612: $cf
	inc  bc                                          ; $6613: $03
	jp   Jump_05b_6775                               ; $6614: $c3 $75 $67


	ld   a, e                                        ; $6617: $7b
	sbc  a                                           ; $6618: $9f
	dec  c                                           ; $6619: $0d
	ld   h, a                                        ; $661a: $67
	adc  l                                           ; $661b: $8d
	sbc  d                                           ; $661c: $9a
	ld   h, e                                        ; $661d: $63
	and  c                                           ; $661e: $a1
	sbc  a                                           ; $661f: $9f
	dec  c                                           ; $6620: $0d
	nop                                              ; $6621: $00
	ld   a, [bc]                                     ; $6622: $0a
	rrca                                             ; $6623: $0f
	ld   [bc], a                                     ; $6624: $02
	ld   bc, $5001                                   ; $6625: $01 $01 $50
	sub  a                                           ; $6628: $97
	sbc  [hl]                                        ; $6629: $9e
	ld   [$6300], sp                                 ; $662a: $08 $00 $63
	and  c                                           ; $662d: $a1
	sbc  a                                           ; $662e: $9f
	dec  c                                           ; $662f: $0d
	sub  [hl]                                        ; $6630: $96
	ld   e, c                                        ; $6631: $59
	ld   [hl], c                                     ; $6632: $71
	ld   l, l                                        ; $6633: $6d
	sub  a                                           ; $6634: $97
	sbc  [hl]                                        ; $6635: $9e
	ld   e, b                                        ; $6636: $58
	ld   d, d                                        ; $6637: $52
	ld   h, l                                        ; $6638: $65
	ld   d, d                                        ; $6639: $52
	ld   [bc], a                                     ; $663a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $663b: $cf
	inc  bc                                          ; $663c: $03
	jp   $0d7c                                       ; $663d: $c3 $7c $0d


	inc  b                                           ; $6640: $04
	ld   b, l                                        ; $6641: $45
	sbc  d                                           ; $6642: $9a
	inc  b                                           ; $6643: $04
	ld   a, b                                        ; $6644: $78
	and  b                                           ; $6645: $a0
	ld   e, b                                        ; $6646: $58
	ld   [bc], a                                     ; $6647: $02
	ret  nc                                          ; $6648: $d0

	ld   d, [hl]                                     ; $6649: $56
	ld   h, l                                        ; $664a: $65
	adc  h                                           ; $664b: $8c
	ld   h, a                                        ; $664c: $67
	sbc  l                                           ; $664d: $9d
	sub  [hl]                                        ; $664e: $96
	sbc  a                                           ; $664f: $9f
	dec  c                                           ; $6650: $0d
	nop                                              ; $6651: $00
	ld   a, [bc]                                     ; $6652: $0a
	jr   jr_05b_6657                                 ; $6653: $18 $02

	nop                                              ; $6655: $00
	ld   d, [hl]                                     ; $6656: $56

jr_05b_6657:
	and  c                                           ; $6657: $a1
	sbc  b                                           ; $6658: $98
	sub  l                                           ; $6659: $95
	ld   h, a                                        ; $665a: $67
	sbc  c                                           ; $665b: $99
	nop                                              ; $665c: $00
	nop                                              ; $665d: $00
	ld   e, b                                        ; $665e: $58
	ld   [bc], a                                     ; $665f: $02
	add  b                                           ; $6660: $80
	ld   d, d                                        ; $6661: $52
	ld   h, l                                        ; $6662: $65
	adc  h                                           ; $6663: $8c
	ld   h, a                                        ; $6664: $67
	nop                                              ; $6665: $00
	ld   bc, $a107                                   ; $6666: $01 $07 $a1
	nop                                              ; $6669: $00
	ld   [bc], a                                     ; $666a: $02
	ld   [bc], a                                     ; $666b: $02
	ld   bc, $2000                                   ; $666c: $01 $00 $20
	nop                                              ; $666f: $00
	rlca                                             ; $6670: $07
	push hl                                          ; $6671: $e5
	nop                                              ; $6672: $00
	ld   [bc], a                                     ; $6673: $02
	ld   [bc], a                                     ; $6674: $02
	ld   bc, $2001                                   ; $6675: $01 $01 $20
	nop                                              ; $6678: $00
	rrca                                             ; $6679: $0f
	nop                                              ; $667a: $00
	ld   bc, $6701                                   ; $667b: $01 $01 $67
	adc  l                                           ; $667e: $8d
	adc  h                                           ; $667f: $8c
	ld   l, c                                        ; $6680: $69
	and  c                                           ; $6681: $a1
	sbc  a                                           ; $6682: $9f
	dec  c                                           ; $6683: $0d
	ld   l, a                                        ; $6684: $6f
	sub  l                                           ; $6685: $95
	ld   [hl], c                                     ; $6686: $71
	halt                                             ; $6687: $76
	inc  b                                           ; $6688: $04
	di                                               ; $6689: $f3
	ld   [bc], a                                     ; $668a: $02
	jp   Jump_05b_505a                               ; $668b: $c3 $5a $50


	sbc  b                                           ; $668e: $98
	adc  h                                           ; $668f: $8c
	ld   h, l                                        ; $6690: $65
	ld   [hl], h                                     ; $6691: $74
	rst  $38                                         ; $6692: $ff
	rst  $38                                         ; $6693: $ff
	dec  c                                           ; $6694: $0d
	nop                                              ; $6695: $00
	ld   a, [bc]                                     ; $6696: $0a
	inc  e                                           ; $6697: $1c
	ld   [bc], a                                     ; $6698: $02
	dec  b                                           ; $6699: $05
	dec  b                                           ; $669a: $05
	dec  e                                           ; $669b: $1d
	ld   b, b                                        ; $669c: $40
	ld   [de], a                                     ; $669d: $12
	inc  bc                                          ; $669e: $03
	ld   [de], a                                     ; $669f: $12
	ld   bc, $2901                                   ; $66a0: $01 $01 $29
	nop                                              ; $66a3: $00
	ld   bc, $546b                                   ; $66a4: $01 $6b $54
	ld   [hl], l                                     ; $66a7: $75
	ld   h, a                                        ; $66a8: $67
	ld   a, h                                        ; $66a9: $7c
	sbc  a                                           ; $66aa: $9f
	dec  c                                           ; $66ab: $0d
	ld   a, b                                        ; $66ac: $78
	sub  a                                           ; $66ad: $97
	inc  b                                           ; $66ae: $04
	ld   d, h                                        ; $66af: $54
	ld   a, c                                        ; $66b0: $79
	ld   d, d                                        ; $66b1: $52
	ld   d, d                                        ; $66b2: $52
	ld   [hl], l                                     ; $66b3: $75
	ld   h, a                                        ; $66b4: $67
	ld   e, a                                        ; $66b5: $5f
	ld   [hl], a                                     ; $66b6: $77
	rst  $38                                         ; $66b7: $ff
	rst  $38                                         ; $66b8: $ff
	dec  c                                           ; $66b9: $0d
	nop                                              ; $66ba: $00
	ld   a, [bc]                                     ; $66bb: $0a
	nop                                              ; $66bc: $00
	rrca                                             ; $66bd: $0f
	nop                                              ; $66be: $00
	ld   bc, $6a01                                   ; $66bf: $01 $01 $6a
	add  b                                           ; $66c2: $80
	sbc  [hl]                                        ; $66c3: $9e
	ld   e, b                                        ; $66c4: $58
	ld   [bc], a                                     ; $66c5: $02
	add  b                                           ; $66c6: $80
	ld   d, d                                        ; $66c7: $52
	ld   h, l                                        ; $66c8: $65
	adc  h                                           ; $66c9: $8c
	ld   h, a                                        ; $66ca: $67
	sbc  a                                           ; $66cb: $9f
	dec  c                                           ; $66cc: $0d
	nop                                              ; $66cd: $00
	dec  b                                           ; $66ce: $05
	add  b                                           ; $66cf: $80
	dec  de                                          ; $66d0: $1b
	ld   bc, $0001                                   ; $66d1: $01 $01 $00
	ld   bc, $8d67                                   ; $66d4: $01 $67 $8d
	sbc  d                                           ; $66d7: $9a
	ld   h, e                                        ; $66d8: $63
	and  c                                           ; $66d9: $a1
	sbc  a                                           ; $66da: $9f
	dec  c                                           ; $66db: $0d
	nop                                              ; $66dc: $00
	ld   a, [bc]                                     ; $66dd: $0a
	inc  e                                           ; $66de: $1c
	ld   [bc], a                                     ; $66df: $02
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	ld   bc, $599d                                   ; $66e2: $01 $9d $59
	sbc  b                                           ; $66e5: $98
	adc  h                                           ; $66e6: $8c
	ld   h, l                                        ; $66e7: $65
	ld   l, l                                        ; $66e8: $6d
	sbc  a                                           ; $66e9: $9f
	dec  c                                           ; $66ea: $0d
	ld   h, l                                        ; $66eb: $65
	ld   [hl], c                                     ; $66ec: $71
	ld   e, c                                        ; $66ed: $59
	sbc  b                                           ; $66ee: $98
	ld   [bc], a                                     ; $66ef: $02
	ld   a, d                                        ; $66f0: $7a
	ld   d, [hl]                                     ; $66f1: $56
	ld   [hl], h                                     ; $66f2: $74
	ld   l, a                                        ; $66f3: $6f
	sub  l                                           ; $66f4: $95
	ld   d, h                                        ; $66f5: $54
	ld   l, [hl]                                     ; $66f6: $6e
	ld   d, d                                        ; $66f7: $52
	ld   a, e                                        ; $66f8: $7b
	sbc  a                                           ; $66f9: $9f
	dec  c                                           ; $66fa: $0d
	nop                                              ; $66fb: $00
	ld   a, [bc]                                     ; $66fc: $0a
	ld   bc, $688c                                   ; $66fd: $01 $8c $68
	sbc  [hl]                                        ; $6700: $9e
	ld   e, b                                        ; $6701: $58
	inc  bc                                          ; $6702: $03
	ld   e, c                                        ; $6703: $59
	ld   [hl], l                                     ; $6704: $75
	ld   h, a                                        ; $6705: $67
	ld   e, d                                        ; $6706: $5a
	sbc  [hl]                                        ; $6707: $9e
	dec  c                                           ; $6708: $0d
	adc  h                                           ; $6709: $8c
	ld   l, a                                        ; $670a: $6f
	ld   e, d                                        ; $670b: $5a
	ld   [hl], c                                     ; $670c: $71
	ld   [hl], h                                     ; $670d: $74
	sub  b                                           ; $670e: $90
	ldh  [$ce], a                                    ; $670f: $e0 $ce
	db   $eb                                         ; $6711: $eb
	db   $ed                                         ; $6712: $ed
	inc  bc                                          ; $6713: $03
	ld   e, c                                        ; $6714: $59
	ld   a, l                                        ; $6715: $7d
	dec  c                                           ; $6716: $0d
	pop  bc                                          ; $6717: $c1
	db   $e3                                         ; $6718: $e3
	ld   [hl], l                                     ; $6719: $75
	ld   h, a                                        ; $671a: $67
	sbc  l                                           ; $671b: $9d
	sub  [hl]                                        ; $671c: $96
	sbc  a                                           ; $671d: $9f
	dec  c                                           ; $671e: $0d
	nop                                              ; $671f: $00
	ld   a, [bc]                                     ; $6720: $0a
	ld   bc, $5205                                   ; $6721: $01 $05 $52
	inc  bc                                          ; $6724: $03
	ld   e, c                                        ; $6725: $59
	ld   [hl], l                                     ; $6726: $75
	ld   d, b                                        ; $6727: $50
	sbc  c                                           ; $6728: $99
	ld   a, [bc]                                     ; $6729: $0a
	ld   [bc], a                                     ; $672a: $02
	inc  bc                                          ; $672b: $03
	ld   e, c                                        ; $672c: $59
	inc  b                                           ; $672d: $04
	ld   d, $03                                      ; $672e: $16 $03
	ld   e, c                                        ; $6730: $59
	ld   a, [bc]                                     ; $6731: $0a
	inc  bc                                          ; $6732: $03
	ld   a, h                                        ; $6733: $7c
	inc  b                                           ; $6734: $04
	ld   a, b                                        ; $6735: $78
	ld   e, d                                        ; $6736: $5a
	dec  c                                           ; $6737: $0d
	ld   e, b                                        ; $6738: $58
	inc  bc                                          ; $6739: $03
	jp   $7d79                                       ; $673a: $c3 $79 $7d


	ld   [bc], a                                     ; $673d: $02
	ld   a, e                                        ; $673e: $7b
	ld   [hl], c                                     ; $673f: $71
	ld   [hl], h                                     ; $6740: $74
	ld   d, d                                        ; $6741: $52
	sbc  c                                           ; $6742: $99
	ld   a, h                                        ; $6743: $7c
	ld   [hl], l                                     ; $6744: $75
	ld   h, a                                        ; $6745: $67
	sbc  a                                           ; $6746: $9f
	dec  c                                           ; $6747: $0d
	ld   [hl], l                                     ; $6748: $75
	ld   h, a                                        ; $6749: $67
	ld   e, c                                        ; $674a: $59
	sub  a                                           ; $674b: $97
	inc  bc                                          ; $674c: $03
	ld   e, c                                        ; $674d: $59
	inc  b                                           ; $674e: $04
	ld   d, $03                                      ; $674f: $16 $03
	ld   e, c                                        ; $6751: $59
	and  b                                           ; $6752: $a0
	sbc  l                                           ; $6753: $9d
	ld   e, c                                        ; $6754: $59
	ld   h, l                                        ; $6755: $65
	adc  h                                           ; $6756: $8c
	ld   h, a                                        ; $6757: $67
	sbc  a                                           ; $6758: $9f
	dec  c                                           ; $6759: $0d
	nop                                              ; $675a: $00
	ld   a, [bc]                                     ; $675b: $0a
	ld   bc, $6803                                   ; $675c: $01 $03 $68
	ld   a, c                                        ; $675f: $79
	sbc  [hl]                                        ; $6760: $9e
	ld   e, b                                        ; $6761: $58
	inc  bc                                          ; $6762: $03
	jp   $047c                                       ; $6763: $c3 $7c $04


	sub  c                                           ; $6766: $91
	and  b                                           ; $6767: $a0
	inc  b                                           ; $6768: $04
	ld   b, l                                        ; $6769: $45
	sbc  d                                           ; $676a: $9a
	sbc  c                                           ; $676b: $99
	dec  c                                           ; $676c: $0d
	inc  b                                           ; $676d: $04
	db   $e4                                         ; $676e: $e4
	ld   [bc], a                                     ; $676f: $02
	ld   d, a                                        ; $6770: $57
	ld   a, c                                        ; $6771: $79
	ld   a, [bc]                                     ; $6772: $0a
	ld   [bc], a                                     ; $6773: $02
	ld   e, b                                        ; $6774: $58

Jump_05b_6775:
	inc  b                                           ; $6775: $04

Call_05b_6776:
	db   $ed                                         ; $6776: $ed
	and  b                                           ; $6777: $a0
	ld   l, e                                        ; $6778: $6b
	ld   l, e                                        ; $6779: $6b
	ld   e, h                                        ; $677a: $5c
	dec  c                                           ; $677b: $0d
	ld   d, b                                        ; $677c: $50
	ld   l, l                                        ; $677d: $6d
	ld   l, l                                        ; $677e: $6d
	adc  a                                           ; $677f: $8f
	adc  h                                           ; $6780: $8c
	ld   h, a                                        ; $6781: $67
	ld   a, [bc]                                     ; $6782: $0a
	inc  bc                                          ; $6783: $03
	ld   a, h                                        ; $6784: $7c
	sbc  a                                           ; $6785: $9f
	dec  c                                           ; $6786: $0d
	nop                                              ; $6787: $00
	ld   a, [bc]                                     ; $6788: $0a
	ld   bc, $656b                                   ; $6789: $01 $6b $65
	ld   [hl], h                                     ; $678c: $74
	sbc  [hl]                                        ; $678d: $9e
	inc  b                                           ; $678e: $04
	db   $e4                                         ; $678f: $e4
	ld   [bc], a                                     ; $6790: $02
	ld   d, a                                        ; $6791: $57
	ld   a, h                                        ; $6792: $7c
	ld   e, b                                        ; $6793: $58
	inc  b                                           ; $6794: $04
	db   $ed                                         ; $6795: $ed
	and  b                                           ; $6796: $a0
	ld   h, a                                        ; $6797: $67
	ld   [hl], h                                     ; $6798: $74
	dec  c                                           ; $6799: $0d
	ld   e, b                                        ; $679a: $58
	inc  bc                                          ; $679b: $03
	jp   $047c                                       ; $679c: $c3 $7c $04


	sub  c                                           ; $679f: $91
	and  b                                           ; $67a0: $a0
	inc  b                                           ; $67a1: $04
	ld   b, l                                        ; $67a2: $45
	sbc  d                                           ; $67a3: $9a
	adc  h                                           ; $67a4: $8c
	ld   h, a                                        ; $67a5: $67
	ld   a, h                                        ; $67a6: $7c
	sbc  a                                           ; $67a7: $9f
	dec  c                                           ; $67a8: $0d
	ld   a, [bc]                                     ; $67a9: $0a
	ld   [bc], a                                     ; $67aa: $02
	inc  b                                           ; $67ab: $04
	ld   b, l                                        ; $67ac: $45
	sbc  d                                           ; $67ad: $9a
	sbc  c                                           ; $67ae: $99
	dec  b                                           ; $67af: $05
	ld   h, [hl]                                     ; $67b0: $66
	ld   a, l                                        ; $67b1: $7d
	inc  bc                                          ; $67b2: $03
	add  d                                           ; $67b3: $82
	inc  bc                                          ; $67b4: $03
	pop  bc                                          ; $67b5: $c1
	inc  b                                           ; $67b6: $04
	sbc  [hl]                                        ; $67b7: $9e
	ld   a, [bc]                                     ; $67b8: $0a
	inc  bc                                          ; $67b9: $03
	ld   [hl], l                                     ; $67ba: $75
	ld   h, a                                        ; $67bb: $67
	sbc  l                                           ; $67bc: $9d
	sbc  a                                           ; $67bd: $9f
	dec  c                                           ; $67be: $0d
	nop                                              ; $67bf: $00
	ld   a, [bc]                                     ; $67c0: $0a
	ld   bc, $5063                                   ; $67c1: $01 $63 $50
	sbc  [hl]                                        ; $67c4: $9e
	adc  h                                           ; $67c5: $8c
	ld   l, b                                        ; $67c6: $68
	ld   h, c                                        ; $67c7: $61
	ld   h, c                                        ; $67c8: $61
	adc  h                                           ; $67c9: $8c
	ld   [hl], l                                     ; $67ca: $75
	and  b                                           ; $67cb: $a0
	dec  c                                           ; $67cc: $0d
	ld   e, b                                        ; $67cd: $58
	ld   h, e                                        ; $67ce: $63
	sub  a                                           ; $67cf: $97
	ld   d, d                                        ; $67d0: $52
	ld   h, l                                        ; $67d1: $65
	adc  h                                           ; $67d2: $8c
	ld   h, a                                        ; $67d3: $67
	sbc  l                                           ; $67d4: $9d
	sub  [hl]                                        ; $67d5: $96
	sbc  a                                           ; $67d6: $9f
	dec  c                                           ; $67d7: $0d
	nop                                              ; $67d8: $00
	ld   a, [bc]                                     ; $67d9: $0a
	ld   bc, $5992                                   ; $67da: $01 $92 $59
	and  c                                           ; $67dd: $a1
	ld   a, c                                        ; $67de: $79
	inc  b                                           ; $67df: $04
	ld   b, l                                        ; $67e0: $45
	sbc  d                                           ; $67e1: $9a
	ld   [hl], h                                     ; $67e2: $74
	sbc  l                                           ; $67e3: $9d
	ld   e, c                                        ; $67e4: $59
	ld   h, a                                        ; $67e5: $67
	ld   a, h                                        ; $67e6: $7c
	ld   a, l                                        ; $67e7: $7d
	dec  c                                           ; $67e8: $0d
	inc  b                                           ; $67e9: $04
	ld   c, c                                        ; $67ea: $49
	ld   [hl], l                                     ; $67eb: $75
	ld   h, l                                        ; $67ec: $65
	sub  l                                           ; $67ed: $95
	ld   d, h                                        ; $67ee: $54
	ld   e, c                                        ; $67ef: $59
	ld   sp, hl                                      ; $67f0: $f9
	dec  c                                           ; $67f1: $0d
	nop                                              ; $67f2: $00
	ld   a, [bc]                                     ; $67f3: $0a
	add  hl, de                                      ; $67f4: $19
	dec  b                                           ; $67f5: $05
	inc  bc                                          ; $67f6: $03
	inc  bc                                          ; $67f7: $03
	ld   e, c                                        ; $67f8: $59
	inc  b                                           ; $67f9: $04
	ld   d, $03                                      ; $67fa: $16 $03
	ld   e, c                                        ; $67fc: $59
	nop                                              ; $67fd: $00
	nop                                              ; $67fe: $00
	ldh  [$ce], a                                    ; $67ff: $e0 $ce
	db   $eb                                         ; $6801: $eb
	db   $ed                                         ; $6802: $ed
	inc  bc                                          ; $6803: $03
	ld   e, c                                        ; $6804: $59
	nop                                              ; $6805: $00
	ld   bc, $9566                                   ; $6806: $01 $66 $95
	ld   d, h                                        ; $6809: $54
	sbc  b                                           ; $680a: $98
	sub  e                                           ; $680b: $93
	ld   d, h                                        ; $680c: $54
	inc  bc                                          ; $680d: $03
	ld   e, c                                        ; $680e: $59
	nop                                              ; $680f: $00
	ld   [bc], a                                     ; $6810: $02
	rlca                                             ; $6811: $07
	ld   d, a                                        ; $6812: $57
	ld   [bc], a                                     ; $6813: $02
	ld   [bc], a                                     ; $6814: $02
	inc  bc                                          ; $6815: $03
	ld   bc, $2000                                   ; $6816: $01 $00 $20
	nop                                              ; $6819: $00
	rlca                                             ; $681a: $07
	sbc  l                                           ; $681b: $9d
	ld   [bc], a                                     ; $681c: $02
	ld   [bc], a                                     ; $681d: $02
	inc  bc                                          ; $681e: $03
	ld   bc, $2001                                   ; $681f: $01 $01 $20
	nop                                              ; $6822: $00
	rlca                                             ; $6823: $07
	di                                               ; $6824: $f3
	ld   [bc], a                                     ; $6825: $02
	ld   [bc], a                                     ; $6826: $02
	inc  bc                                          ; $6827: $03
	ld   bc, $2002                                   ; $6828: $01 $02 $20
	nop                                              ; $682b: $00
	ld   b, $4c                                      ; $682c: $06 $4c
	inc  bc                                          ; $682e: $03
	rrca                                             ; $682f: $0f
	nop                                              ; $6830: $00
	ld   bc, $0301                                   ; $6831: $01 $01 $03
	ld   e, c                                        ; $6834: $59
	inc  b                                           ; $6835: $04
	ld   d, $03                                      ; $6836: $16 $03
	ld   e, c                                        ; $6838: $59
	ld   [hl], l                                     ; $6839: $75
	ld   h, a                                        ; $683a: $67
	sbc  a                                           ; $683b: $9f
	dec  c                                           ; $683c: $0d
	dec  b                                           ; $683d: $05
	ld   d, d                                        ; $683e: $52
	inc  bc                                          ; $683f: $03
	ld   e, c                                        ; $6840: $59
	ld   a, h                                        ; $6841: $7c
	inc  b                                           ; $6842: $04
	ld   a, b                                        ; $6843: $78
	ld   e, d                                        ; $6844: $5a
	ld   e, b                                        ; $6845: $58
	inc  bc                                          ; $6846: $03
	jp   $7d79                                       ; $6847: $c3 $79 $7d


	ld   [bc], a                                     ; $684a: $02
	ld   a, e                                        ; $684b: $7b
	ld   [hl], c                                     ; $684c: $71
	ld   [hl], h                                     ; $684d: $74
	dec  c                                           ; $684e: $0d
	ld   d, d                                        ; $684f: $52
	adc  h                                           ; $6850: $8c
	ld   h, a                                        ; $6851: $67
	ld   e, c                                        ; $6852: $59
	sub  a                                           ; $6853: $97
	sbc  a                                           ; $6854: $9f
	dec  c                                           ; $6855: $0d
	nop                                              ; $6856: $00
	ld   a, [bc]                                     ; $6857: $0a
	inc  e                                           ; $6858: $1c
	ld   [bc], a                                     ; $6859: $02
	ld   bc, $0101                                   ; $685a: $01 $01 $01
	ld   l, e                                        ; $685d: $6b
	ld   a, h                                        ; $685e: $7c
	halt                                             ; $685f: $76
	ld   e, b                                        ; $6860: $58
	sbc  b                                           ; $6861: $98
	ld   [hl], l                                     ; $6862: $75
	ld   h, a                                        ; $6863: $67
	sbc  l                                           ; $6864: $9d
	sbc  a                                           ; $6865: $9f
	dec  c                                           ; $6866: $0d
	nop                                              ; $6867: $00
	ld   a, [bc]                                     ; $6868: $0a
	dec  b                                           ; $6869: $05
	ld   b, b                                        ; $686a: $40
	rst  $38                                         ; $686b: $ff
	inc  bc                                          ; $686c: $03
	rst  $38                                         ; $686d: $ff
	ld   bc, $2801                                   ; $686e: $01 $01 $28
	nop                                              ; $6871: $00
	ld   b, $7e                                      ; $6872: $06 $7e
	inc  bc                                          ; $6874: $03
	rrca                                             ; $6875: $0f
	nop                                              ; $6876: $00
	ld   bc, $e001                                   ; $6877: $01 $01 $e0
	adc  $eb                                         ; $687a: $ce $eb
	db   $ed                                         ; $687c: $ed
	inc  bc                                          ; $687d: $03
	ld   e, c                                        ; $687e: $59
	ld   [hl], l                                     ; $687f: $75
	ld   h, a                                        ; $6880: $67
	sbc  a                                           ; $6881: $9f
	dec  c                                           ; $6882: $0d
	ld   a, b                                        ; $6883: $78
	and  c                                           ; $6884: $a1
	ld   [hl], h                                     ; $6885: $74
	ld   [hl], c                                     ; $6886: $71
	ld   l, l                                        ; $6887: $6d
	ld   [hl], c                                     ; $6888: $71
	ld   [hl], h                                     ; $6889: $74
	ldh  [$ce], a                                    ; $688a: $e0 $ce
	db   $eb                                         ; $688c: $eb
	db   $ed                                         ; $688d: $ed
	dec  c                                           ; $688e: $0d
	ld   [hl], l                                     ; $688f: $75
	ld   h, a                                        ; $6890: $67
	ld   e, c                                        ; $6891: $59
	sub  a                                           ; $6892: $97
	sbc  a                                           ; $6893: $9f
	dec  c                                           ; $6894: $0d
	nop                                              ; $6895: $00
	ld   a, [bc]                                     ; $6896: $0a
	inc  e                                           ; $6897: $1c
	ld   [bc], a                                     ; $6898: $02
	rlca                                             ; $6899: $07
	rlca                                             ; $689a: $07
	ld   bc, $5a6f                                   ; $689b: $01 $6f $5a
	ld   d, d                                        ; $689e: $52
	adc  h                                           ; $689f: $8c
	ld   h, a                                        ; $68a0: $67
	sbc  l                                           ; $68a1: $9d
	sbc  a                                           ; $68a2: $9f
	inc  bc                                          ; $68a3: $03
	ld   e, c                                        ; $68a4: $59
	inc  b                                           ; $68a5: $04
	ld   d, $03                                      ; $68a6: $16 $03
	ld   e, c                                        ; $68a8: $59
	ld   [hl], l                                     ; $68a9: $75
	ld   h, a                                        ; $68aa: $67
	sbc  a                                           ; $68ab: $9f
	dec  c                                           ; $68ac: $0d
	dec  b                                           ; $68ad: $05
	ld   d, d                                        ; $68ae: $52
	inc  bc                                          ; $68af: $03
	ld   e, c                                        ; $68b0: $59
	ld   a, h                                        ; $68b1: $7c
	inc  b                                           ; $68b2: $04
	ld   a, b                                        ; $68b3: $78
	ld   e, d                                        ; $68b4: $5a
	ld   e, b                                        ; $68b5: $58
	inc  bc                                          ; $68b6: $03
	jp   $7d79                                       ; $68b7: $c3 $79 $7d


	ld   [bc], a                                     ; $68ba: $02
	ld   a, e                                        ; $68bb: $7b
	ld   [hl], c                                     ; $68bc: $71
	ld   [hl], h                                     ; $68bd: $74
	dec  c                                           ; $68be: $0d
	ld   d, d                                        ; $68bf: $52
	adc  h                                           ; $68c0: $8c
	ld   h, a                                        ; $68c1: $67
	ld   e, c                                        ; $68c2: $59
	sub  a                                           ; $68c3: $97
	sbc  a                                           ; $68c4: $9f
	dec  c                                           ; $68c5: $0d
	nop                                              ; $68c6: $00
	ld   a, [bc]                                     ; $68c7: $0a
	ld   b, $7e                                      ; $68c8: $06 $7e
	inc  bc                                          ; $68ca: $03
	rrca                                             ; $68cb: $0f
	nop                                              ; $68cc: $00
	ld   bc, $6601                                   ; $68cd: $01 $01 $66
	sub  l                                           ; $68d0: $95
	ld   d, h                                        ; $68d1: $54
	sbc  b                                           ; $68d2: $98
	sub  e                                           ; $68d3: $93
	ld   d, h                                        ; $68d4: $54
	inc  bc                                          ; $68d5: $03
	ld   e, c                                        ; $68d6: $59
	ld   [hl], l                                     ; $68d7: $75
	ld   h, a                                        ; $68d8: $67
	sbc  a                                           ; $68d9: $9f
	dec  c                                           ; $68da: $0d
	inc  b                                           ; $68db: $04
	and  b                                           ; $68dc: $a0
	dec  b                                           ; $68dd: $05
	ccf                                              ; $68de: $3f
	inc  b                                           ; $68df: $04
	sub  d                                           ; $68e0: $92
	ld   e, d                                        ; $68e1: $5a
	ld   a, b                                        ; $68e2: $78
	ld   d, d                                        ; $68e3: $52
	ld   e, e                                        ; $68e4: $5b
	sbc  d                                           ; $68e5: $9a
	ld   d, d                                        ; $68e6: $52
	ld   a, b                                        ; $68e7: $78
	inc  bc                                          ; $68e8: $03
	ld   e, c                                        ; $68e9: $59
	ld   [hl], l                                     ; $68ea: $75
	ld   h, a                                        ; $68eb: $67
	sbc  a                                           ; $68ec: $9f
	dec  c                                           ; $68ed: $0d
	nop                                              ; $68ee: $00
	ld   a, [bc]                                     ; $68ef: $0a
	inc  e                                           ; $68f0: $1c
	ld   [bc], a                                     ; $68f1: $02
	rlca                                             ; $68f2: $07
	rlca                                             ; $68f3: $07
	ld   bc, $5a6f                                   ; $68f4: $01 $6f $5a
	ld   d, d                                        ; $68f7: $52
	adc  h                                           ; $68f8: $8c
	ld   h, a                                        ; $68f9: $67
	sbc  l                                           ; $68fa: $9d
	sbc  a                                           ; $68fb: $9f
	inc  bc                                          ; $68fc: $03
	ld   e, c                                        ; $68fd: $59
	inc  b                                           ; $68fe: $04
	ld   d, $03                                      ; $68ff: $16 $03
	ld   e, c                                        ; $6901: $59
	ld   [hl], l                                     ; $6902: $75
	ld   h, a                                        ; $6903: $67
	sbc  a                                           ; $6904: $9f
	dec  c                                           ; $6905: $0d
	dec  b                                           ; $6906: $05
	ld   d, d                                        ; $6907: $52
	inc  bc                                          ; $6908: $03
	ld   e, c                                        ; $6909: $59
	ld   a, h                                        ; $690a: $7c
	inc  b                                           ; $690b: $04
	ld   a, b                                        ; $690c: $78
	ld   e, d                                        ; $690d: $5a
	ld   e, b                                        ; $690e: $58
	inc  bc                                          ; $690f: $03
	jp   $7d79                                       ; $6910: $c3 $79 $7d


	ld   [bc], a                                     ; $6913: $02
	ld   a, e                                        ; $6914: $7b
	ld   [hl], c                                     ; $6915: $71
	ld   [hl], h                                     ; $6916: $74
	dec  c                                           ; $6917: $0d
	ld   d, d                                        ; $6918: $52
	adc  h                                           ; $6919: $8c
	ld   h, a                                        ; $691a: $67
	ld   e, c                                        ; $691b: $59
	sub  a                                           ; $691c: $97
	sbc  a                                           ; $691d: $9f
	dec  c                                           ; $691e: $0d
	nop                                              ; $691f: $00
	ld   a, [bc]                                     ; $6920: $0a
	ld   b, $7e                                      ; $6921: $06 $7e
	inc  bc                                          ; $6923: $03
	inc  e                                           ; $6924: $1c
	ld   [bc], a                                     ; $6925: $02
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	ld   bc, $4a03                                   ; $6928: $01 $03 $4a
	ld   [bc], a                                     ; $692b: $02
	or   h                                           ; $692c: $b4
	ld   a, l                                        ; $692d: $7d
	sbc  [hl]                                        ; $692e: $9e
	inc  bc                                          ; $692f: $03
	ld   e, c                                        ; $6930: $59
	inc  b                                           ; $6931: $04
	ld   d, $03                                      ; $6932: $16 $03
	ld   e, c                                        ; $6934: $59
	ld   [hl], l                                     ; $6935: $75
	ld   h, a                                        ; $6936: $67
	sbc  l                                           ; $6937: $9d
	sbc  a                                           ; $6938: $9f
	dec  c                                           ; $6939: $0d
	ld   e, b                                        ; $693a: $58
	inc  bc                                          ; $693b: $03
	jp   $7d79                                       ; $693c: $c3 $79 $7d


	ld   [bc], a                                     ; $693f: $02
	ld   a, e                                        ; $6940: $7b
	ld   [hl], c                                     ; $6941: $71
	ld   [hl], h                                     ; $6942: $74
	ld   d, d                                        ; $6943: $52
	sbc  c                                           ; $6944: $99
	ld   a, h                                        ; $6945: $7c
	ld   a, l                                        ; $6946: $7d
	dec  b                                           ; $6947: $05
	ld   d, d                                        ; $6948: $52
	inc  bc                                          ; $6949: $03
	ld   e, c                                        ; $694a: $59
	dec  c                                           ; $694b: $0d
	ld   a, b                                        ; $694c: $78
	ld   a, h                                        ; $694d: $7c
	ld   [hl], l                                     ; $694e: $75
	ld   h, a                                        ; $694f: $67
	sbc  l                                           ; $6950: $9d
	sub  [hl]                                        ; $6951: $96
	sbc  a                                           ; $6952: $9f
	dec  c                                           ; $6953: $0d
	nop                                              ; $6954: $00
	ld   a, [bc]                                     ; $6955: $0a
	inc  e                                           ; $6956: $1c
	ld   [bc], a                                     ; $6957: $02
	nop                                              ; $6958: $00
	nop                                              ; $6959: $00
	ld   bc, $6803                                   ; $695a: $01 $03 $68
	ld   a, c                                        ; $695d: $79
	sbc  [hl]                                        ; $695e: $9e
	ld   e, b                                        ; $695f: $58
	inc  bc                                          ; $6960: $03
	jp   $047c                                       ; $6961: $c3 $7c $04


	sub  c                                           ; $6964: $91
	and  b                                           ; $6965: $a0
	inc  b                                           ; $6966: $04
	ld   b, l                                        ; $6967: $45
	sbc  d                                           ; $6968: $9a
	sbc  c                                           ; $6969: $99
	dec  c                                           ; $696a: $0d
	inc  b                                           ; $696b: $04
	db   $e4                                         ; $696c: $e4
	ld   [bc], a                                     ; $696d: $02
	ld   d, a                                        ; $696e: $57
	ld   a, l                                        ; $696f: $7d
	ld   [hl], a                                     ; $6970: $77
	ld   a, h                                        ; $6971: $7c
	sub  [hl]                                        ; $6972: $96
	ld   d, h                                        ; $6973: $54
	ld   a, c                                        ; $6974: $79
	ld   h, l                                        ; $6975: $65
	adc  h                                           ; $6976: $8c
	ld   h, a                                        ; $6977: $67
	ld   e, c                                        ; $6978: $59
	ld   sp, hl                                      ; $6979: $f9
	dec  c                                           ; $697a: $0d
	nop                                              ; $697b: $00
	ld   a, [bc]                                     ; $697c: $0a
	add  hl, de                                      ; $697d: $19
	dec  b                                           ; $697e: $05
	inc  bc                                          ; $697f: $03
	ld   e, b                                        ; $6980: $58
	inc  b                                           ; $6981: $04
	db   $ed                                         ; $6982: $ed
	ld   [hl], l                                     ; $6983: $75
	ld   d, b                                        ; $6984: $50
	ld   l, l                                        ; $6985: $6d
	ld   l, l                                        ; $6986: $6d
	adc  a                                           ; $6987: $8f
	sbc  c                                           ; $6988: $99
	nop                                              ; $6989: $00
	nop                                              ; $698a: $00
	inc  b                                           ; $698b: $04
	db   $fc                                         ; $698c: $fc
	ld   l, l                                        ; $698d: $6d
	ld   e, l                                        ; $698e: $5d
	add  b                                           ; $698f: $80
	sub  d                                           ; $6990: $92
	ld   h, l                                        ; $6991: $65
	ld   [hl], h                                     ; $6992: $74
	ld   e, b                                        ; $6993: $58
	ld   e, l                                        ; $6994: $5d
	nop                                              ; $6995: $00
	ld   bc, $eeae                                   ; $6996: $01 $ae $ee
	and  l                                           ; $6999: $a5
	ld   a, c                                        ; $699a: $79
	inc  bc                                          ; $699b: $03
	ld   [hl], e                                     ; $699c: $73
	ld   [hl], c                                     ; $699d: $71
	ld   [hl], h                                     ; $699e: $74
	ld   e, b                                        ; $699f: $58
	ld   e, l                                        ; $69a0: $5d
	nop                                              ; $69a1: $00
	ld   [bc], a                                     ; $69a2: $02
	rlca                                             ; $69a3: $07
	jp   hl                                          ; $69a4: $e9


	inc  bc                                          ; $69a5: $03
	ld   [bc], a                                     ; $69a6: $02
	inc  bc                                          ; $69a7: $03
	ld   bc, $2000                                   ; $69a8: $01 $00 $20
	nop                                              ; $69ab: $00
	rlca                                             ; $69ac: $07
	jr   @+$06                                       ; $69ad: $18 $04

	ld   [bc], a                                     ; $69af: $02
	inc  bc                                          ; $69b0: $03
	ld   bc, $2001                                   ; $69b1: $01 $01 $20
	nop                                              ; $69b4: $00
	rlca                                             ; $69b5: $07
	ld   h, d                                        ; $69b6: $62
	inc  b                                           ; $69b7: $04
	ld   [bc], a                                     ; $69b8: $02
	inc  bc                                          ; $69b9: $03
	ld   bc, $2002                                   ; $69ba: $01 $02 $20
	nop                                              ; $69bd: $00
	ld   b, $ad                                      ; $69be: $06 $ad
	inc  b                                           ; $69c0: $04
	rrca                                             ; $69c1: $0f
	nop                                              ; $69c2: $00
	ld   bc, $5801                                   ; $69c3: $01 $01 $58
	inc  b                                           ; $69c6: $04
	db   $ed                                         ; $69c7: $ed
	ld   [hl], l                                     ; $69c8: $75
	ld   d, b                                        ; $69c9: $50
	ld   l, l                                        ; $69ca: $6d
	ld   l, l                                        ; $69cb: $6d
	adc  a                                           ; $69cc: $8f
	ld   [hl], h                                     ; $69cd: $74
	ld   e, b                                        ; $69ce: $58
	ld   e, e                                        ; $69cf: $5b
	adc  h                                           ; $69d0: $8c
	ld   h, a                                        ; $69d1: $67
	sbc  a                                           ; $69d2: $9f
	dec  c                                           ; $69d3: $0d
	nop                                              ; $69d4: $00
	ld   a, [bc]                                     ; $69d5: $0a
	inc  e                                           ; $69d6: $1c
	ld   [bc], a                                     ; $69d7: $02
	ld   bc, $0101                                   ; $69d8: $01 $01 $01
	ld   l, e                                        ; $69db: $6b
	ld   d, h                                        ; $69dc: $54
	ld   [hl], l                                     ; $69dd: $75
	ld   h, a                                        ; $69de: $67
	sbc  l                                           ; $69df: $9d
	sbc  a                                           ; $69e0: $9f
	dec  c                                           ; $69e1: $0d
	nop                                              ; $69e2: $00
	ld   a, [bc]                                     ; $69e3: $0a
	dec  b                                           ; $69e4: $05
	ld   b, b                                        ; $69e5: $40
	rst  $38                                         ; $69e6: $ff
	inc  bc                                          ; $69e7: $03
	rst  $38                                         ; $69e8: $ff
	ld   bc, $2801                                   ; $69e9: $01 $01 $28
	nop                                              ; $69ec: $00
	ld   b, $d9                                      ; $69ed: $06 $d9
	inc  b                                           ; $69ef: $04
	rrca                                             ; $69f0: $0f
	nop                                              ; $69f1: $00
	ld   bc, $ae01                                   ; $69f2: $01 $01 $ae
	push af                                          ; $69f5: $f5
	xor  [hl]                                        ; $69f6: $ae
	push af                                          ; $69f7: $f5
	ld   a, c                                        ; $69f8: $79
	inc  b                                           ; $69f9: $04
	db   $fc                                         ; $69fa: $fc
	sub  d                                           ; $69fb: $92
	ld   h, l                                        ; $69fc: $65
	ld   [hl], h                                     ; $69fd: $74
	dec  c                                           ; $69fe: $0d
	ld   e, b                                        ; $69ff: $58
	ld   e, e                                        ; $6a00: $5b
	adc  h                                           ; $6a01: $8c
	ld   h, a                                        ; $6a02: $67
	sbc  a                                           ; $6a03: $9f
	dec  c                                           ; $6a04: $0d
	nop                                              ; $6a05: $00
	ld   a, [bc]                                     ; $6a06: $0a
	inc  e                                           ; $6a07: $1c
	ld   [bc], a                                     ; $6a08: $02
	rlca                                             ; $6a09: $07
	rlca                                             ; $6a0a: $07
	ld   bc, $a16b                                   ; $6a0b: $01 $6b $a1
	ld   a, b                                        ; $6a0e: $78
	ld   h, c                                        ; $6a0f: $61
	halt                                             ; $6a10: $76
	ld   h, l                                        ; $6a11: $65
	ld   l, l                                        ; $6a12: $6d
	sub  a                                           ; $6a13: $97
	sbc  [hl]                                        ; $6a14: $9e
	ld   e, b                                        ; $6a15: $58
	inc  bc                                          ; $6a16: $03
	jp   $047c                                       ; $6a17: $c3 $7c $04


	sub  c                                           ; $6a1a: $91
	ld   e, d                                        ; $6a1b: $5a
	dec  c                                           ; $6a1c: $0d
	ld   [bc], a                                     ; $6a1d: $02
	adc  b                                           ; $6a1e: $88
	ld   e, c                                        ; $6a1f: $59
	ld   a, b                                        ; $6a20: $78
	ld   e, l                                        ; $6a21: $5d
	ld   a, b                                        ; $6a22: $78
	sbc  b                                           ; $6a23: $98
	adc  h                                           ; $6a24: $8c
	ld   h, a                                        ; $6a25: $67
	sbc  l                                           ; $6a26: $9d
	sbc  a                                           ; $6a27: $9f
	dec  c                                           ; $6a28: $0d
	ld   d, b                                        ; $6a29: $50
	ld   l, l                                        ; $6a2a: $6d
	ld   l, l                                        ; $6a2b: $6d
	adc  a                                           ; $6a2c: $8f
	sbc  c                                           ; $6a2d: $99
	ld   a, h                                        ; $6a2e: $7c
	ld   [hl], l                                     ; $6a2f: $75
	ld   h, a                                        ; $6a30: $67
	sbc  l                                           ; $6a31: $9d
	sub  [hl]                                        ; $6a32: $96
	sbc  a                                           ; $6a33: $9f
	dec  c                                           ; $6a34: $0d
	nop                                              ; $6a35: $00
	ld   a, [bc]                                     ; $6a36: $0a
	ld   b, $d9                                      ; $6a37: $06 $d9
	inc  b                                           ; $6a39: $04
	rrca                                             ; $6a3a: $0f
	nop                                              ; $6a3b: $00
	ld   bc, $5b01                                   ; $6a3c: $01 $01 $5b
	sbc  d                                           ; $6a3f: $9a
	ld   d, d                                        ; $6a40: $52
	ld   a, c                                        ; $6a41: $79
	inc  bc                                          ; $6a42: $03
	ld   [hl], e                                     ; $6a43: $73
	ld   [hl], c                                     ; $6a44: $71
	ld   [hl], h                                     ; $6a45: $74
	ld   e, b                                        ; $6a46: $58
	ld   e, e                                        ; $6a47: $5b
	adc  h                                           ; $6a48: $8c
	ld   h, a                                        ; $6a49: $67
	sbc  a                                           ; $6a4a: $9f
	dec  c                                           ; $6a4b: $0d
	nop                                              ; $6a4c: $00
	ld   a, [bc]                                     ; $6a4d: $0a
	inc  e                                           ; $6a4e: $1c
	ld   [bc], a                                     ; $6a4f: $02
	nop                                              ; $6a50: $00
	nop                                              ; $6a51: $00
	ld   bc, $9a6b                                   ; $6a52: $01 $6b $9a
	ld   a, l                                        ; $6a55: $7d
	dec  b                                           ; $6a56: $05
	xor  c                                           ; $6a57: $a9
	inc  b                                           ; $6a58: $04
	adc  a                                           ; $6a59: $8f
	inc  b                                           ; $6a5a: $04
	jr   nz, jr_05b_6ad5                             ; $6a5b: $20 $78

	ld   h, c                                        ; $6a5d: $61
	halt                                             ; $6a5e: $76
	ld   [hl], l                                     ; $6a5f: $75
	ld   h, a                                        ; $6a60: $67
	sbc  l                                           ; $6a61: $9d
	sbc  a                                           ; $6a62: $9f
	dec  c                                           ; $6a63: $0d
	ld   [hl], l                                     ; $6a64: $75
	sub  b                                           ; $6a65: $90
	sbc  [hl]                                        ; $6a66: $9e
	ld   [bc], a                                     ; $6a67: $02
	and  l                                           ; $6a68: $a5
	ld   a, h                                        ; $6a69: $7c
	inc  b                                           ; $6a6a: $04
	ld   a, d                                        ; $6a6b: $7a
	ld   [bc], a                                     ; $6a6c: $02
	ld   a, e                                        ; $6a6d: $7b
	ld   a, h                                        ; $6a6e: $7c
	inc  bc                                          ; $6a6f: $03
	ld   c, d                                        ; $6a70: $4a
	ld   [bc], a                                     ; $6a71: $02
	or   h                                           ; $6a72: $b4
	ld   a, l                                        ; $6a73: $7d
	dec  c                                           ; $6a74: $0d
	ld   d, b                                        ; $6a75: $50
	ld   l, l                                        ; $6a76: $6d
	ld   l, l                                        ; $6a77: $6d
	adc  a                                           ; $6a78: $8f
	sbc  c                                           ; $6a79: $99
	sbc  [hl]                                        ; $6a7a: $9e
	ld   [hl], l                                     ; $6a7b: $75
	ld   h, a                                        ; $6a7c: $67
	sbc  l                                           ; $6a7d: $9d
	sbc  a                                           ; $6a7e: $9f
	dec  c                                           ; $6a7f: $0d
	nop                                              ; $6a80: $00
	ld   a, [bc]                                     ; $6a81: $0a
	ld   b, $d9                                      ; $6a82: $06 $d9
	inc  b                                           ; $6a84: $04
	inc  e                                           ; $6a85: $1c
	ld   [bc], a                                     ; $6a86: $02
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	ld   bc, $4a03                                   ; $6a89: $01 $03 $4a
	ld   [bc], a                                     ; $6a8c: $02
	or   h                                           ; $6a8d: $b4
	ld   a, l                                        ; $6a8e: $7d
	sbc  [hl]                                        ; $6a8f: $9e
	ld   d, b                                        ; $6a90: $50
	ld   l, l                                        ; $6a91: $6d
	ld   l, l                                        ; $6a92: $6d
	adc  a                                           ; $6a93: $8f
	sbc  c                                           ; $6a94: $99
	ld   [hl], l                                     ; $6a95: $75
	ld   h, a                                        ; $6a96: $67
	sbc  l                                           ; $6a97: $9d
	sbc  a                                           ; $6a98: $9f
	dec  c                                           ; $6a99: $0d
	ld   [bc], a                                     ; $6a9a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a9b: $cf
	inc  bc                                          ; $6a9c: $03
	jp   $637d                                       ; $6a9d: $c3 $7d $63


	adc  a                                           ; $6aa0: $8f
	sbc  c                                           ; $6aa1: $99
	halt                                             ; $6aa2: $76
	ld   [bc], a                                     ; $6aa3: $02
	sub  h                                           ; $6aa4: $94
	ld   e, l                                        ; $6aa5: $5d
	ld   a, b                                        ; $6aa6: $78
	sbc  b                                           ; $6aa7: $98
	adc  h                                           ; $6aa8: $8c
	ld   h, a                                        ; $6aa9: $67
	dec  c                                           ; $6aaa: $0d
	ld   e, c                                        ; $6aab: $59
	sub  a                                           ; $6aac: $97
	sbc  a                                           ; $6aad: $9f
	dec  c                                           ; $6aae: $0d
	nop                                              ; $6aaf: $00
	ld   a, [bc]                                     ; $6ab0: $0a
	inc  e                                           ; $6ab1: $1c
	ld   [bc], a                                     ; $6ab2: $02
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	ld   bc, $7d75                                   ; $6ab5: $01 $75 $7d
	inc  bc                                          ; $6ab8: $03
	ld   l, b                                        ; $6ab9: $68
	ld   a, c                                        ; $6aba: $79
	sbc  [hl]                                        ; $6abb: $9e
	inc  b                                           ; $6abc: $04
	db   $e4                                         ; $6abd: $e4
	ld   [bc], a                                     ; $6abe: $02
	ld   d, a                                        ; $6abf: $57
	ld   a, c                                        ; $6ac0: $79
	ld   e, b                                        ; $6ac1: $58
	inc  bc                                          ; $6ac2: $03
	jp   $047c                                       ; $6ac3: $c3 $7c $04


	sub  c                                           ; $6ac6: $91
	and  b                                           ; $6ac7: $a0
	dec  c                                           ; $6ac8: $0d
	inc  b                                           ; $6ac9: $04
	ld   b, l                                        ; $6aca: $45
	sbc  d                                           ; $6acb: $9a
	adc  h                                           ; $6acc: $8c
	ld   h, a                                        ; $6acd: $67
	sbc  a                                           ; $6ace: $9f
	dec  c                                           ; $6acf: $0d
	inc  bc                                          ; $6ad0: $03
	ld   l, $03                                      ; $6ad1: $2e $03
	pop  hl                                          ; $6ad3: $e1
	ld   a, l                                        ; $6ad4: $7d

jr_05b_6ad5:
	ld   [hl], a                                     ; $6ad5: $77
	sbc  d                                           ; $6ad6: $9a
	ld   e, l                                        ; $6ad7: $5d
	sub  a                                           ; $6ad8: $97
	ld   d, d                                        ; $6ad9: $52
	ld   d, d                                        ; $6ada: $52
	sbc  d                                           ; $6adb: $9a
	adc  h                                           ; $6adc: $8c
	ld   h, a                                        ; $6add: $67
	ld   e, c                                        ; $6ade: $59
	ld   sp, hl                                      ; $6adf: $f9
	dec  c                                           ; $6ae0: $0d
	nop                                              ; $6ae1: $00
	ld   a, [bc]                                     ; $6ae2: $0a
	add  hl, de                                      ; $6ae3: $19
	dec  b                                           ; $6ae4: $05
	inc  bc                                          ; $6ae5: $03
	inc  bc                                          ; $6ae6: $03
	add  d                                           ; $6ae7: $82
	inc  bc                                          ; $6ae8: $03
	pop  bc                                          ; $6ae9: $c1
	inc  b                                           ; $6aea: $04
	sbc  [hl]                                        ; $6aeb: $9e
	nop                                              ; $6aec: $00
	nop                                              ; $6aed: $00
	inc  bc                                          ; $6aee: $03
	add  d                                           ; $6aef: $82
	inc  bc                                          ; $6af0: $03
	pop  bc                                          ; $6af1: $c1
	inc  b                                           ; $6af2: $04
	sbc  [hl]                                        ; $6af3: $9e
	ld   bc, $1209                                   ; $6af4: $01 $09 $12
	dec  b                                           ; $6af7: $05
	ld   d, [hl]                                     ; $6af8: $56
	nop                                              ; $6af9: $00
	ld   bc, $5d6d                                   ; $6afa: $01 $6d $5d
	ld   h, e                                        ; $6afd: $63
	and  c                                           ; $6afe: $a1
	nop                                              ; $6aff: $00
	ld   [bc], a                                     ; $6b00: $02
	rlca                                             ; $6b01: $07
	ld   b, a                                        ; $6b02: $47
	dec  b                                           ; $6b03: $05
	ld   [bc], a                                     ; $6b04: $02
	inc  bc                                          ; $6b05: $03
	ld   bc, $2000                                   ; $6b06: $01 $00 $20
	nop                                              ; $6b09: $00
	rlca                                             ; $6b0a: $07
	ld   a, c                                        ; $6b0b: $79
	dec  b                                           ; $6b0c: $05
	ld   [bc], a                                     ; $6b0d: $02
	inc  bc                                          ; $6b0e: $03
	ld   bc, $2001                                   ; $6b0f: $01 $01 $20
	nop                                              ; $6b12: $00
	rlca                                             ; $6b13: $07
	ret  nc                                          ; $6b14: $d0

	dec  b                                           ; $6b15: $05
	ld   [bc], a                                     ; $6b16: $02
	inc  bc                                          ; $6b17: $03
	ld   bc, $2002                                   ; $6b18: $01 $02 $20
	nop                                              ; $6b1b: $00
	ld   b, $17                                      ; $6b1c: $06 $17
	ld   b, $0f                                      ; $6b1e: $06 $0f
	nop                                              ; $6b20: $00
	ld   bc, $0301                                   ; $6b21: $01 $01 $03
	add  d                                           ; $6b24: $82
	inc  bc                                          ; $6b25: $03
	pop  bc                                          ; $6b26: $c1
	inc  b                                           ; $6b27: $04
	sbc  [hl]                                        ; $6b28: $9e
	ld   [hl], l                                     ; $6b29: $75
	ld   h, a                                        ; $6b2a: $67
	sbc  a                                           ; $6b2b: $9f
	dec  c                                           ; $6b2c: $0d
	nop                                              ; $6b2d: $00
	ld   a, [bc]                                     ; $6b2e: $0a
	inc  e                                           ; $6b2f: $1c
	ld   [bc], a                                     ; $6b30: $02
	ld   bc, $0101                                   ; $6b31: $01 $01 $01
	ld   l, e                                        ; $6b34: $6b
	ld   d, h                                        ; $6b35: $54
	ld   [hl], l                                     ; $6b36: $75
	ld   h, a                                        ; $6b37: $67
	sbc  l                                           ; $6b38: $9d
	sbc  a                                           ; $6b39: $9f
	dec  c                                           ; $6b3a: $0d
	nop                                              ; $6b3b: $00
	ld   a, [bc]                                     ; $6b3c: $0a
	dec  b                                           ; $6b3d: $05
	ld   b, b                                        ; $6b3e: $40
	rst  $38                                         ; $6b3f: $ff
	inc  bc                                          ; $6b40: $03
	rst  $38                                         ; $6b41: $ff
	ld   bc, $2801                                   ; $6b42: $01 $01 $28
	nop                                              ; $6b45: $00
	dec  c                                           ; $6b46: $0d
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	rrca                                             ; $6b49: $0f
	nop                                              ; $6b4a: $00
	ld   bc, $0b0c                                   ; $6b4b: $01 $0c $0b
	ld   b, $3a                                      ; $6b4e: $06 $3a
	ld   b, $0f                                      ; $6b50: $06 $0f
	nop                                              ; $6b52: $00
	ld   bc, $0301                                   ; $6b53: $01 $01 $03
	add  d                                           ; $6b56: $82
	inc  bc                                          ; $6b57: $03
	pop  bc                                          ; $6b58: $c1
	inc  b                                           ; $6b59: $04
	sbc  [hl]                                        ; $6b5a: $9e
	ld   bc, $1209                                   ; $6b5b: $01 $09 $12
	dec  b                                           ; $6b5e: $05
	ld   d, [hl]                                     ; $6b5f: $56
	ld   [hl], l                                     ; $6b60: $75
	ld   h, a                                        ; $6b61: $67
	sbc  a                                           ; $6b62: $9f
	dec  c                                           ; $6b63: $0d
	nop                                              ; $6b64: $00
	ld   a, [bc]                                     ; $6b65: $0a
	inc  e                                           ; $6b66: $1c
	ld   [bc], a                                     ; $6b67: $02
	nop                                              ; $6b68: $00
	nop                                              ; $6b69: $00
	ld   bc, $9a6b                                   ; $6b6a: $01 $6b $9a
	ld   a, l                                        ; $6b6d: $7d
	sbc  [hl]                                        ; $6b6e: $9e
	inc  b                                           ; $6b6f: $04
	ld   c, $5b                                      ; $6b70: $0e $5b
	ld   d, d                                        ; $6b72: $52
	inc  b                                           ; $6b73: $04
	db   $e4                                         ; $6b74: $e4
	ld   [bc], a                                     ; $6b75: $02
	ld   d, a                                        ; $6b76: $57
	sub  d                                           ; $6b77: $92
	dec  c                                           ; $6b78: $0d
	inc  b                                           ; $6b79: $04
	ld   c, $5b                                      ; $6b7a: $0e $5b
	ld   d, d                                        ; $6b7c: $52
	db   $ec                                         ; $6b7d: $ec
	ei                                               ; $6b7e: $fb
	sub  $7c                                         ; $6b7f: $d6 $7c
	inc  bc                                          ; $6b81: $03
	ld   l, a                                        ; $6b82: $6f
	ld   [hl], l                                     ; $6b83: $75
	ld   h, a                                        ; $6b84: $67
	sbc  l                                           ; $6b85: $9d
	sbc  a                                           ; $6b86: $9f
	dec  c                                           ; $6b87: $0d
	inc  bc                                          ; $6b88: $03
	ld   l, $03                                      ; $6b89: $2e $03
	pop  hl                                          ; $6b8b: $e1
	ld   a, l                                        ; $6b8c: $7d
	inc  bc                                          ; $6b8d: $03
	add  d                                           ; $6b8e: $82
	inc  bc                                          ; $6b8f: $03
	pop  bc                                          ; $6b90: $c1
	inc  b                                           ; $6b91: $04
	sbc  [hl]                                        ; $6b92: $9e
	ld   [hl], l                                     ; $6b93: $75
	ld   d, d                                        ; $6b94: $52
	ld   d, d                                        ; $6b95: $52
	ld   a, h                                        ; $6b96: $7c
	ld   [hl], l                                     ; $6b97: $75
	ld   h, a                                        ; $6b98: $67
	sbc  a                                           ; $6b99: $9f
	dec  c                                           ; $6b9a: $0d
	nop                                              ; $6b9b: $00
	ld   a, [bc]                                     ; $6b9c: $0a
	dec  c                                           ; $6b9d: $0d
	nop                                              ; $6b9e: $00
	nop                                              ; $6b9f: $00

Jump_05b_6ba0:
	rrca                                             ; $6ba0: $0f
	nop                                              ; $6ba1: $00
	ld   bc, $0b0c                                   ; $6ba2: $01 $0c $0b
	ld   b, $3a                                      ; $6ba5: $06 $3a
	ld   b, $0f                                      ; $6ba7: $06 $0f
	nop                                              ; $6ba9: $00
	ld   bc, $6d01                                   ; $6baa: $01 $01 $6d
	ld   e, l                                        ; $6bad: $5d
	ld   h, e                                        ; $6bae: $63
	and  c                                           ; $6baf: $a1
	ld   [hl], l                                     ; $6bb0: $75
	ld   h, a                                        ; $6bb1: $67
	sbc  a                                           ; $6bb2: $9f
	dec  c                                           ; $6bb3: $0d
	nop                                              ; $6bb4: $00
	ld   a, [bc]                                     ; $6bb5: $0a
	inc  e                                           ; $6bb6: $1c
	ld   [bc], a                                     ; $6bb7: $02
	rlca                                             ; $6bb8: $07
	rlca                                             ; $6bb9: $07
	ld   bc, $5a6f                                   ; $6bba: $01 $6f $5a
	ld   d, d                                        ; $6bbd: $52
	adc  h                                           ; $6bbe: $8c
	ld   h, a                                        ; $6bbf: $67
	sbc  l                                           ; $6bc0: $9d
	sbc  a                                           ; $6bc1: $9f
	dec  c                                           ; $6bc2: $0d
	inc  bc                                          ; $6bc3: $03
	add  d                                           ; $6bc4: $82
	inc  bc                                          ; $6bc5: $03
	pop  bc                                          ; $6bc6: $c1
	inc  b                                           ; $6bc7: $04
	sbc  [hl]                                        ; $6bc8: $9e
	ld   [hl], l                                     ; $6bc9: $75
	ld   h, a                                        ; $6bca: $67
	sbc  a                                           ; $6bcb: $9f
	inc  b                                           ; $6bcc: $04
	ld   b, l                                        ; $6bcd: $45
	sbc  d                                           ; $6bce: $9a
	ld   h, a                                        ; $6bcf: $67
	ld   e, h                                        ; $6bd0: $5c
	sbc  c                                           ; $6bd1: $99
	halt                                             ; $6bd2: $76
	dec  c                                           ; $6bd3: $0d
	ld   [bc], a                                     ; $6bd4: $02
	sub  h                                           ; $6bd5: $94
	ld   e, l                                        ; $6bd6: $5d
	ld   [hl], h                                     ; $6bd7: $74
	ld   a, h                                        ; $6bd8: $7c
	adc  a                                           ; $6bd9: $8f
	adc  h                                           ; $6bda: $8c
	ld   l, c                                        ; $6bdb: $69
	and  c                                           ; $6bdc: $a1
	ld   h, c                                        ; $6bdd: $61
	halt                                             ; $6bde: $76
	sub  [hl]                                        ; $6bdf: $96
	sbc  a                                           ; $6be0: $9f
	dec  c                                           ; $6be1: $0d
	nop                                              ; $6be2: $00
	ld   a, [bc]                                     ; $6be3: $0a
	dec  c                                           ; $6be4: $0d
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	rrca                                             ; $6be7: $0f
	nop                                              ; $6be8: $00
	ld   bc, $0b0c                                   ; $6be9: $01 $0c $0b
	ld   b, $3a                                      ; $6bec: $06 $3a
	ld   b, $1c                                      ; $6bee: $06 $1c
	ld   [bc], a                                     ; $6bf0: $02
	nop                                              ; $6bf1: $00
	nop                                              ; $6bf2: $00
	ld   bc, $4a03                                   ; $6bf3: $01 $03 $4a
	ld   [bc], a                                     ; $6bf6: $02
	or   h                                           ; $6bf7: $b4
	ld   a, l                                        ; $6bf8: $7d
	sbc  [hl]                                        ; $6bf9: $9e
	inc  bc                                          ; $6bfa: $03
	add  d                                           ; $6bfb: $82
	inc  bc                                          ; $6bfc: $03
	pop  bc                                          ; $6bfd: $c1
	inc  b                                           ; $6bfe: $04
	sbc  [hl]                                        ; $6bff: $9e
	ld   [hl], l                                     ; $6c00: $75
	ld   h, a                                        ; $6c01: $67
	sbc  l                                           ; $6c02: $9d
	sbc  a                                           ; $6c03: $9f
	dec  c                                           ; $6c04: $0d
	nop                                              ; $6c05: $00
	ld   a, [bc]                                     ; $6c06: $0a
	dec  c                                           ; $6c07: $0d
	nop                                              ; $6c08: $00
	nop                                              ; $6c09: $00
	rrca                                             ; $6c0a: $0f
	nop                                              ; $6c0b: $00
	ld   bc, $0b0c                                   ; $6c0c: $01 $0c $0b
	ld   b, $3a                                      ; $6c0f: $06 $3a
	ld   b, $07                                      ; $6c11: $06 $07
	ld   d, l                                        ; $6c13: $55
	ld   b, $03                                      ; $6c14: $06 $03
	rst  $38                                         ; $6c16: $ff
	ld   bc, $2003                                   ; $6c17: $01 $03 $20
	nop                                              ; $6c1a: $00
	rlca                                             ; $6c1b: $07
	ld   a, b                                        ; $6c1c: $78
	ld   b, $03                                      ; $6c1d: $06 $03
	rst  $38                                         ; $6c1f: $ff
	ld   bc, $2002                                   ; $6c20: $01 $02 $20
	nop                                              ; $6c23: $00
	rlca                                             ; $6c24: $07
	sub  [hl]                                        ; $6c25: $96
	ld   b, $03                                      ; $6c26: $06 $03
	rst  $38                                         ; $6c28: $ff
	ld   bc, $2301                                   ; $6c29: $01 $01 $23
	nop                                              ; $6c2c: $00
	inc  e                                           ; $6c2d: $1c
	ld   [bc], a                                     ; $6c2e: $02
	ld   bc, $1d01                                   ; $6c2f: $01 $01 $1d
	ld   b, b                                        ; $6c32: $40
	ld   [de], a                                     ; $6c33: $12
	inc  bc                                          ; $6c34: $03
	ld   [de], a                                     ; $6c35: $12
	ld   bc, $2803                                   ; $6c36: $01 $03 $28
	nop                                              ; $6c39: $00
	ld   bc, $7e67                                   ; $6c3a: $01 $67 $7e
	sub  a                                           ; $6c3d: $97
	ld   h, l                                        ; $6c3e: $65
	ld   d, d                                        ; $6c3f: $52
	ld   [hl], l                                     ; $6c40: $75
	ld   h, a                                        ; $6c41: $67
	sbc  l                                           ; $6c42: $9d
	sbc  a                                           ; $6c43: $9f
	dec  c                                           ; $6c44: $0d
	ld   [$6300], sp                                 ; $6c45: $08 $00 $63
	and  c                                           ; $6c48: $a1
	sbc  a                                           ; $6c49: $9f
	dec  c                                           ; $6c4a: $0d
	nop                                              ; $6c4b: $00
	ld   a, [bc]                                     ; $6c4c: $0a
	ld   b, $c1                                      ; $6c4d: $06 $c1
	ld   b, $1c                                      ; $6c4f: $06 $1c
	ld   [bc], a                                     ; $6c51: $02
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	dec  e                                           ; $6c54: $1d
	ld   b, b                                        ; $6c55: $40
	ld   [de], a                                     ; $6c56: $12
	inc  bc                                          ; $6c57: $03
	ld   [de], a                                     ; $6c58: $12
	ld   bc, $2802                                   ; $6c59: $01 $02 $28
	nop                                              ; $6c5c: $00
	ld   bc, $508c                                   ; $6c5d: $01 $8c $50
	adc  h                                           ; $6c60: $8c
	ld   d, b                                        ; $6c61: $50
	ld   [hl], l                                     ; $6c62: $75
	ld   h, l                                        ; $6c63: $65
	ld   l, l                                        ; $6c64: $6d
	sbc  l                                           ; $6c65: $9d
	ld   a, e                                        ; $6c66: $7b
	sbc  a                                           ; $6c67: $9f
	dec  c                                           ; $6c68: $0d
	nop                                              ; $6c69: $00
	ld   a, [bc]                                     ; $6c6a: $0a
	ld   b, $c1                                      ; $6c6b: $06 $c1
	ld   b, $1c                                      ; $6c6d: $06 $1c
	ld   [bc], a                                     ; $6c6f: $02
	rlca                                             ; $6c70: $07
	rlca                                             ; $6c71: $07
	dec  e                                           ; $6c72: $1d
	ld   b, b                                        ; $6c73: $40
	ld   [de], a                                     ; $6c74: $12
	inc  bc                                          ; $6c75: $03
	ld   [de], a                                     ; $6c76: $12
	ld   bc, $2902                                   ; $6c77: $01 $02 $29
	nop                                              ; $6c7a: $00
	ld   bc, $8a58                                   ; $6c7b: $01 $58 $8a
	ld   d, [hl]                                     ; $6c7e: $56
	sbc  c                                           ; $6c7f: $99
	ld   [bc], a                                     ; $6c80: $02
	and  c                                           ; $6c81: $a1
	sbc  [hl]                                        ; $6c82: $9e
	ld   h, d                                        ; $6c83: $62
	ld   h, h                                        ; $6c84: $64
	ld   d, d                                        ; $6c85: $52
	adc  h                                           ; $6c86: $8c
	ld   h, a                                        ; $6c87: $67
	ld   a, h                                        ; $6c88: $7c
	ld   sp, hl                                      ; $6c89: $f9
	dec  c                                           ; $6c8a: $0d
	nop                                              ; $6c8b: $00
	ld   a, [bc]                                     ; $6c8c: $0a
	dec  b                                           ; $6c8d: $05
	ld   b, b                                        ; $6c8e: $40
	ld   c, c                                        ; $6c8f: $49
	ld   [bc], a                                     ; $6c90: $02
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	dec  b                                           ; $6c93: $05
	ld   b, b                                        ; $6c94: $40
	ld   c, a                                        ; $6c95: $4f
	ld   bc, $0002                                   ; $6c96: $01 $02 $00
	inc  e                                           ; $6c99: $1c
	ld   [bc], a                                     ; $6c9a: $02
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	ld   bc, $9750                                   ; $6c9d: $01 $50 $97
	sbc  [hl]                                        ; $6ca0: $9e
	sub  b                                           ; $6ca1: $90
	ld   d, h                                        ; $6ca2: $54
	ld   h, c                                        ; $6ca3: $61
	and  c                                           ; $6ca4: $a1
	ld   a, b                                        ; $6ca5: $78
	inc  bc                                          ; $6ca6: $03
	ld   l, a                                        ; $6ca7: $6f
	ld   [bc], a                                     ; $6ca8: $02
	xor  c                                           ; $6ca9: $a9
	sbc  a                                           ; $6caa: $9f
	dec  c                                           ; $6cab: $0d
	nop                                              ; $6cac: $00
	ld   a, [bc]                                     ; $6cad: $0a
	ld   bc, $6903                                   ; $6cae: $01 $03 $69
	ld   [bc], a                                     ; $6cb1: $02
	xor  d                                           ; $6cb2: $aa
	ld   a, c                                        ; $6cb3: $79
	ld   [bc], a                                     ; $6cb4: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cb5: $cf
	inc  bc                                          ; $6cb6: $03
	jp   $b57c                                       ; $6cb7: $c3 $7c $b5


	ei                                               ; $6cba: $fb
	db   $ed                                         ; $6cbb: $ed
	ret  z                                           ; $6cbc: $c8

	push af                                          ; $6cbd: $f5
	db   $ed                                         ; $6cbe: $ed
	ei                                               ; $6cbf: $fb
	db   $ed                                         ; $6cc0: $ed
	dec  c                                           ; $6cc1: $0d
	ld   a, h                                        ; $6cc2: $7c
	dec  b                                           ; $6cc3: $05
	xor  c                                           ; $6cc4: $a9
	inc  b                                           ; $6cc5: $04
	adc  a                                           ; $6cc6: $8f
	and  b                                           ; $6cc7: $a0
	ld   [bc], a                                     ; $6cc8: $02
	ret  nc                                          ; $6cc9: $d0

	ld   d, [hl]                                     ; $6cca: $56
	ld   [hl], h                                     ; $6ccb: $74
	ld   e, b                                        ; $6ccc: $58
	ld   e, e                                        ; $6ccd: $5b
	adc  h                                           ; $6cce: $8c
	ld   h, a                                        ; $6ccf: $67
	sbc  l                                           ; $6cd0: $9d
	ld   a, e                                        ; $6cd1: $7b
	sbc  a                                           ; $6cd2: $9f
	dec  c                                           ; $6cd3: $0d
	inc  b                                           ; $6cd4: $04
	ld   c, $03                                      ; $6cd5: $0e $03
	dec  de                                          ; $6cd7: $1b
	ld   a, b                                        ; $6cd8: $78
	dec  b                                           ; $6cd9: $05
	xor  c                                           ; $6cda: $a9
	inc  b                                           ; $6cdb: $04
	adc  a                                           ; $6cdc: $8f
	ld   [hl], l                                     ; $6cdd: $75
	ld   h, a                                        ; $6cde: $67
	sbc  l                                           ; $6cdf: $9d
	sub  [hl]                                        ; $6ce0: $96
	sbc  a                                           ; $6ce1: $9f
	dec  c                                           ; $6ce2: $0d
	nop                                              ; $6ce3: $00
	ld   a, [bc]                                     ; $6ce4: $0a
	ld   bc, $cf02                                   ; $6ce5: $01 $02 $cf
	inc  bc                                          ; $6ce8: $03
	jp   $b57c                                       ; $6ce9: $c3 $7c $b5


	ei                                               ; $6cec: $fb
	db   $ed                                         ; $6ced: $ed
	ret  z                                           ; $6cee: $c8

	push af                                          ; $6cef: $f5
	db   $ed                                         ; $6cf0: $ed
	ei                                               ; $6cf1: $fb
	db   $ed                                         ; $6cf2: $ed
	halt                                             ; $6cf3: $76
	ld   a, l                                        ; $6cf4: $7d
	dec  c                                           ; $6cf5: $0d
	ld   [de], a                                     ; $6cf6: $12
	xor  h                                           ; $6cf7: $ac
	call nz, $12d8                                   ; $6cf8: $c4 $d8 $12
	rst  ToBoot                                         ; $6cfb: $c7
	and  h                                           ; $6cfc: $a4
	ei                                               ; $6cfd: $fb
	cp   d                                           ; $6cfe: $ba
	ret  c                                           ; $6cff: $d8

	ei                                               ; $6d00: $fb
	push af                                          ; $6d01: $f5
	dec  c                                           ; $6d02: $0d
	inc  b                                           ; $6d03: $04
	ldh  [rAUD1HIGH], a                              ; $6d04: $e0 $14
	dec  sp                                          ; $6d06: $3b
	and  b                                           ; $6d07: $a0
	dec  b                                           ; $6d08: $05
	xor  c                                           ; $6d09: $a9
	inc  bc                                          ; $6d0a: $03
	inc  e                                           ; $6d0b: $1c
	halt                                             ; $6d0c: $76
	ld   h, a                                        ; $6d0d: $67
	sbc  c                                           ; $6d0e: $99
	ld   [bc], a                                     ; $6d0f: $02
	jp   Jump_05b_6775                               ; $6d10: $c3 $75 $67


	ld   a, h                                        ; $6d13: $7c
	sbc  a                                           ; $6d14: $9f
	dec  c                                           ; $6d15: $0d
	nop                                              ; $6d16: $00
	ld   a, [bc]                                     ; $6d17: $0a
	inc  e                                           ; $6d18: $1c
	ld   [bc], a                                     ; $6d19: $02
	ld   bc, $0101                                   ; $6d1a: $01 $01 $01
	ld   [bc], a                                     ; $6d1d: $02
	ei                                               ; $6d1e: $fb
	ld   e, e                                        ; $6d1f: $5b
	ld   a, l                                        ; $6d20: $7d
	adc  h                                           ; $6d21: $8c
	ld   l, l                                        ; $6d22: $6d
	ld   [bc], a                                     ; $6d23: $02
	and  l                                           ; $6d24: $a5
	inc  b                                           ; $6d25: $04
	add  hl, hl                                      ; $6d26: $29
	sbc  [hl]                                        ; $6d27: $9e
	dec  c                                           ; $6d28: $0d
	inc  bc                                          ; $6d29: $03
	ld   l, a                                        ; $6d2a: $6f
	ld   [bc], a                                     ; $6d2b: $02
	xor  c                                           ; $6d2c: $a9
	ld   e, d                                        ; $6d2d: $5a
	ld   d, b                                        ; $6d2e: $50
	sbc  b                                           ; $6d2f: $98
	adc  h                                           ; $6d30: $8c
	ld   h, l                                        ; $6d31: $65
	ld   l, l                                        ; $6d32: $6d
	sub  a                                           ; $6d33: $97
	ld   a, e                                        ; $6d34: $7b
	sbc  a                                           ; $6d35: $9f
	dec  c                                           ; $6d36: $0d
	ld   [hl], l                                     ; $6d37: $75
	ld   a, l                                        ; $6d38: $7d
	sbc  [hl]                                        ; $6d39: $9e
	inc  bc                                          ; $6d3a: $03
	add  e                                           ; $6d3b: $83
	dec  b                                           ; $6d3c: $05
	dec  c                                           ; $6d3d: $0d
	sbc  a                                           ; $6d3e: $9f
	dec  c                                           ; $6d3f: $0d
	nop                                              ; $6d40: $00
	ld   a, [bc]                                     ; $6d41: $0a
	dec  c                                           ; $6d42: $0d
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	rrca                                             ; $6d45: $0f
	nop                                              ; $6d46: $00
	ld   bc, $1e09                                   ; $6d47: $01 $09 $1e
	nop                                              ; $6d4a: $00
	ld   bc, $8d67                                   ; $6d4b: $01 $67 $8d
	sbc  d                                           ; $6d4e: $9a
	ld   h, e                                        ; $6d4f: $63
	and  c                                           ; $6d50: $a1
	sbc  a                                           ; $6d51: $9f
	dec  c                                           ; $6d52: $0d
	ld   e, b                                        ; $6d53: $58
	inc  b                                           ; $6d54: $04
	ld   a, e                                        ; $6d55: $7b
	sbc  d                                           ; $6d56: $9a
	ld   h, e                                        ; $6d57: $63
	adc  h                                           ; $6d58: $8c
	ld   [hl], l                                     ; $6d59: $75
	ld   h, a                                        ; $6d5a: $67
	sbc  a                                           ; $6d5b: $9f
	dec  c                                           ; $6d5c: $0d
	nop                                              ; $6d5d: $00
	ld   a, [bc]                                     ; $6d5e: $0a
	rrca                                             ; $6d5f: $0f
	ld   [bc], a                                     ; $6d60: $02
	nop                                              ; $6d61: $00
	ld   bc, $9750                                   ; $6d62: $01 $50 $97
	sbc  [hl]                                        ; $6d65: $9e
	ld   [$6300], sp                                 ; $6d66: $08 $00 $63
	and  c                                           ; $6d69: $a1
	sbc  a                                           ; $6d6a: $9f
	dec  c                                           ; $6d6b: $0d
	ld   d, d                                        ; $6d6c: $52
	ld   d, d                                        ; $6d6d: $52
	halt                                             ; $6d6e: $76
	ld   h, c                                        ; $6d6f: $61
	sbc  e                                           ; $6d70: $9b
	ld   a, c                                        ; $6d71: $79
	sbc  a                                           ; $6d72: $9f
	dec  c                                           ; $6d73: $0d
	nop                                              ; $6d74: $00
	ld   a, [bc]                                     ; $6d75: $0a
	ld   bc, $5258                                   ; $6d76: $01 $58 $52
	ld   h, l                                        ; $6d79: $65
	ld   d, d                                        ; $6d7a: $52
	ld   [bc], a                                     ; $6d7b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d7c: $cf
	inc  bc                                          ; $6d7d: $03
	jp   $047c                                       ; $6d7e: $c3 $7c $04


	ld   b, l                                        ; $6d81: $45
	sbc  d                                           ; $6d82: $9a
	inc  b                                           ; $6d83: $04
	ld   a, b                                        ; $6d84: $78
	ld   a, h                                        ; $6d85: $7c
	dec  c                                           ; $6d86: $0d
	ld   [bc], a                                     ; $6d87: $02
	ei                                               ; $6d88: $fb
	ld   e, e                                        ; $6d89: $5b
	and  b                                           ; $6d8a: $a0
	ld   e, b                                        ; $6d8b: $58
	ld   [bc], a                                     ; $6d8c: $02
	ret  nc                                          ; $6d8d: $d0

	ld   d, [hl]                                     ; $6d8e: $56
	ld   h, l                                        ; $6d8f: $65
	adc  h                                           ; $6d90: $8c
	ld   h, l                                        ; $6d91: $65
	sub  l                                           ; $6d92: $95
	ld   d, h                                        ; $6d93: $54
	ld   e, c                                        ; $6d94: $59
	sbc  a                                           ; $6d95: $9f
	dec  c                                           ; $6d96: $0d
	nop                                              ; $6d97: $00
	ld   a, [bc]                                     ; $6d98: $0a
	jr   jr_05b_6d9d                                 ; $6d99: $18 $02

	nop                                              ; $6d9b: $00
	ld   d, [hl]                                     ; $6d9c: $56

jr_05b_6d9d:
	and  c                                           ; $6d9d: $a1
	sbc  b                                           ; $6d9e: $98
	sub  l                                           ; $6d9f: $95
	ld   h, a                                        ; $6da0: $67
	sbc  c                                           ; $6da1: $99
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	ld   e, b                                        ; $6da4: $58
	ld   [bc], a                                     ; $6da5: $02
	add  b                                           ; $6da6: $80
	ld   d, d                                        ; $6da7: $52
	ld   h, l                                        ; $6da8: $65
	adc  h                                           ; $6da9: $8c
	ld   h, a                                        ; $6daa: $67
	nop                                              ; $6dab: $00
	ld   bc, $e707                                   ; $6dac: $01 $07 $e7
	rlca                                             ; $6daf: $07
	ld   [bc], a                                     ; $6db0: $02
	ld   [bc], a                                     ; $6db1: $02
	ld   bc, $2000                                   ; $6db2: $01 $00 $20
	nop                                              ; $6db5: $00
	rlca                                             ; $6db6: $07
	ld   h, $08                                      ; $6db7: $26 $08
	ld   [bc], a                                     ; $6db9: $02
	ld   [bc], a                                     ; $6dba: $02
	ld   bc, $2001                                   ; $6dbb: $01 $01 $20
	nop                                              ; $6dbe: $00
	rrca                                             ; $6dbf: $0f
	nop                                              ; $6dc0: $00
	ld   bc, $6701                                   ; $6dc1: $01 $01 $67
	adc  l                                           ; $6dc4: $8d
	adc  h                                           ; $6dc5: $8c
	ld   l, c                                        ; $6dc6: $69
	and  c                                           ; $6dc7: $a1
	sbc  a                                           ; $6dc8: $9f
	dec  c                                           ; $6dc9: $0d
	ld   l, a                                        ; $6dca: $6f
	sub  l                                           ; $6dcb: $95
	ld   [hl], c                                     ; $6dcc: $71
	halt                                             ; $6dcd: $76
	inc  b                                           ; $6dce: $04
	di                                               ; $6dcf: $f3
	ld   [bc], a                                     ; $6dd0: $02
	jp   Jump_05b_505a                               ; $6dd1: $c3 $5a $50


	sbc  b                                           ; $6dd4: $98
	adc  h                                           ; $6dd5: $8c
	ld   h, l                                        ; $6dd6: $65
	ld   [hl], h                                     ; $6dd7: $74
	rst  $38                                         ; $6dd8: $ff
	rst  $38                                         ; $6dd9: $ff
	dec  c                                           ; $6dda: $0d
	nop                                              ; $6ddb: $00
	ld   a, [bc]                                     ; $6ddc: $0a
	inc  e                                           ; $6ddd: $1c
	ld   [bc], a                                     ; $6dde: $02
	dec  b                                           ; $6ddf: $05
	dec  b                                           ; $6de0: $05
	dec  e                                           ; $6de1: $1d
	ld   b, b                                        ; $6de2: $40
	ld   [de], a                                     ; $6de3: $12
	inc  bc                                          ; $6de4: $03
	ld   [de], a                                     ; $6de5: $12
	ld   bc, $2901                                   ; $6de6: $01 $01 $29
	nop                                              ; $6de9: $00
	ld   bc, $546b                                   ; $6dea: $01 $6b $54
	sbc  a                                           ; $6ded: $9f
	dec  c                                           ; $6dee: $0d
	ld   a, b                                        ; $6def: $78
	sub  a                                           ; $6df0: $97
	ld   h, l                                        ; $6df1: $65
	sub  l                                           ; $6df2: $95
	ld   d, h                                        ; $6df3: $54
	ld   e, d                                        ; $6df4: $5a
	ld   a, b                                        ; $6df5: $78
	ld   d, d                                        ; $6df6: $52
	sbc  l                                           ; $6df7: $9d
	ld   a, e                                        ; $6df8: $7b
	sbc  a                                           ; $6df9: $9f
	dec  c                                           ; $6dfa: $0d
	nop                                              ; $6dfb: $00
	ld   a, [bc]                                     ; $6dfc: $0a
	nop                                              ; $6dfd: $00
	rrca                                             ; $6dfe: $0f
	nop                                              ; $6dff: $00
	ld   bc, $6a01                                   ; $6e00: $01 $01 $6a
	add  b                                           ; $6e03: $80
	sbc  [hl]                                        ; $6e04: $9e
	ld   e, b                                        ; $6e05: $58
	ld   [bc], a                                     ; $6e06: $02
	add  b                                           ; $6e07: $80
	ld   d, d                                        ; $6e08: $52
	ld   h, l                                        ; $6e09: $65
	adc  h                                           ; $6e0a: $8c
	ld   h, a                                        ; $6e0b: $67
	sbc  a                                           ; $6e0c: $9f
	dec  c                                           ; $6e0d: $0d
	ld   h, a                                        ; $6e0e: $67
	adc  l                                           ; $6e0f: $8d
	sbc  d                                           ; $6e10: $9a
	ld   h, e                                        ; $6e11: $63
	and  c                                           ; $6e12: $a1
	sbc  a                                           ; $6e13: $9f
	dec  c                                           ; $6e14: $0d
	nop                                              ; $6e15: $00
	ld   a, [bc]                                     ; $6e16: $0a
	inc  e                                           ; $6e17: $1c
	ld   [bc], a                                     ; $6e18: $02
	ld   bc, $0101                                   ; $6e19: $01 $01 $01
	sbc  l                                           ; $6e1c: $9d
	ld   e, c                                        ; $6e1d: $59
	sbc  b                                           ; $6e1e: $98
	adc  h                                           ; $6e1f: $8c
	ld   h, l                                        ; $6e20: $65
	ld   l, l                                        ; $6e21: $6d
	sbc  a                                           ; $6e22: $9f
	dec  c                                           ; $6e23: $0d
	ld   [hl], l                                     ; $6e24: $75
	ld   a, l                                        ; $6e25: $7d
	sbc  [hl]                                        ; $6e26: $9e
	ld   [bc], a                                     ; $6e27: $02
	and  l                                           ; $6e28: $a5
	ld   [bc], a                                     ; $6e29: $02
	sub  e                                           ; $6e2a: $93
	ld   a, l                                        ; $6e2b: $7d
	inc  b                                           ; $6e2c: $04
	db   $e4                                         ; $6e2d: $e4
	ld   [bc], a                                     ; $6e2e: $02
	ld   d, a                                        ; $6e2f: $57
	ld   a, c                                        ; $6e30: $79
	inc  b                                           ; $6e31: $04
	sub  c                                           ; $6e32: $91
	and  b                                           ; $6e33: $a0
	dec  c                                           ; $6e34: $0d
	inc  b                                           ; $6e35: $04
	ld   b, l                                        ; $6e36: $45
	sbc  d                                           ; $6e37: $9a
	ld   l, l                                        ; $6e38: $6d
	ld   [bc], a                                     ; $6e39: $02
	xor  d                                           ; $6e3a: $aa
	ld   e, c                                        ; $6e3b: $59
	sub  a                                           ; $6e3c: $97
	and  b                                           ; $6e3d: $a0
	sub  d                                           ; $6e3e: $92
	sbc  b                                           ; $6e3f: $98
	adc  h                                           ; $6e40: $8c
	ld   h, l                                        ; $6e41: $65
	sub  l                                           ; $6e42: $95
	ld   d, h                                        ; $6e43: $54
	sbc  a                                           ; $6e44: $9f
	dec  c                                           ; $6e45: $0d
	nop                                              ; $6e46: $00
	ld   a, [bc]                                     ; $6e47: $0a
	inc  e                                           ; $6e48: $1c
	ld   [bc], a                                     ; $6e49: $02
	nop                                              ; $6e4a: $00
	nop                                              ; $6e4b: $00
	ld   bc, $688c                                   ; $6e4c: $01 $8c $68
	sbc  [hl]                                        ; $6e4f: $9e
	inc  b                                           ; $6e50: $04
	db   $e4                                         ; $6e51: $e4
	ld   [bc], a                                     ; $6e52: $02
	ld   d, a                                        ; $6e53: $57
	ld   a, c                                        ; $6e54: $79
	ld   e, b                                        ; $6e55: $58
	inc  b                                           ; $6e56: $04
	db   $ed                                         ; $6e57: $ed
	and  b                                           ; $6e58: $a0
	ld   l, e                                        ; $6e59: $6b
	ld   l, e                                        ; $6e5a: $6b
	ld   e, h                                        ; $6e5b: $5c
	sbc  [hl]                                        ; $6e5c: $9e
	dec  c                                           ; $6e5d: $0d
	ld   d, b                                        ; $6e5e: $50
	adc  h                                           ; $6e5f: $8c
	ld   [hl], c                                     ; $6e60: $71
	ld   l, l                                        ; $6e61: $6d
	ld   e, b                                        ; $6e62: $58
	inc  b                                           ; $6e63: $04
	db   $ed                                         ; $6e64: $ed
	ld   [hl], l                                     ; $6e65: $75
	sbc  [hl]                                        ; $6e66: $9e
	xor  h                                           ; $6e67: $ac
	call nz, $92d8                                   ; $6e68: $c4 $d8 $92
	dec  c                                           ; $6e6b: $0d
	sbc  $c4                                         ; $6e6c: $de $c4
	ret                                              ; $6e6e: $c9


	and  b                                           ; $6e6f: $a0
	ld   a, [bc]                                     ; $6e70: $0a
	ld   [bc], a                                     ; $6e71: $02
	ld   d, b                                        ; $6e72: $50
	ld   l, l                                        ; $6e73: $6d
	ld   l, l                                        ; $6e74: $6d
	adc  a                                           ; $6e75: $8f
	adc  h                                           ; $6e76: $8c
	ld   h, a                                        ; $6e77: $67
	ld   a, [bc]                                     ; $6e78: $0a
	inc  bc                                          ; $6e79: $03
	ld   a, h                                        ; $6e7a: $7c
	sbc  a                                           ; $6e7b: $9f
	dec  c                                           ; $6e7c: $0d
	nop                                              ; $6e7d: $00
	ld   a, [bc]                                     ; $6e7e: $0a
	ld   bc, $a4c7                                   ; $6e7f: $01 $c7 $a4
	ei                                               ; $6e82: $fb
	xor  h                                           ; $6e83: $ac
	call nz, Call_05b_7cd8                           ; $6e84: $c4 $d8 $7c
	ld   e, b                                        ; $6e87: $58
	inc  b                                           ; $6e88: $04
	db   $ed                                         ; $6e89: $ed
	and  b                                           ; $6e8a: $a0
	ld   h, a                                        ; $6e8b: $67
	ld   [hl], h                                     ; $6e8c: $74
	dec  c                                           ; $6e8d: $0d
	ld   a, [bc]                                     ; $6e8e: $0a
	ld   [bc], a                                     ; $6e8f: $02
	dec  b                                           ; $6e90: $05
	ld   d, c                                        ; $6e91: $51
	ld   h, e                                        ; $6e92: $63
	ld   e, d                                        ; $6e93: $5a
	ld   e, e                                        ; $6e94: $5b
	and  c                                           ; $6e95: $a1
	halt                                             ; $6e96: $76
	ld   d, h                                        ; $6e97: $54
	ld   a, c                                        ; $6e98: $79
	ld   a, b                                        ; $6e99: $78
	sbc  c                                           ; $6e9a: $99
	sub  [hl]                                        ; $6e9b: $96
	ld   d, h                                        ; $6e9c: $54
	ld   a, c                                        ; $6e9d: $79
	ld   a, [bc]                                     ; $6e9e: $0a
	inc  bc                                          ; $6e9f: $03
	dec  c                                           ; $6ea0: $0d
	ld   [bc], a                                     ; $6ea1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ea2: $cf
	inc  bc                                          ; $6ea3: $03
	jp   Jump_05b_6ba0                               ; $6ea4: $c3 $a0 $6b


	ld   l, e                                        ; $6ea7: $6b
	ld   e, h                                        ; $6ea8: $5c
	adc  h                                           ; $6ea9: $8c
	ld   h, a                                        ; $6eaa: $67
	ld   a, h                                        ; $6eab: $7c
	sbc  a                                           ; $6eac: $9f
	dec  c                                           ; $6ead: $0d
	nop                                              ; $6eae: $00
	ld   a, [bc]                                     ; $6eaf: $0a
	ld   bc, $8c50                                   ; $6eb0: $01 $50 $8c
	ld   [hl], c                                     ; $6eb3: $71
	ld   l, l                                        ; $6eb4: $6d
	ld   [bc], a                                     ; $6eb5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eb6: $cf
	inc  bc                                          ; $6eb7: $03
	jp   $9e7d                                       ; $6eb8: $c3 $7d $9e


	ld   d, b                                        ; $6ebb: $50
	ld   l, l                                        ; $6ebc: $6d
	ld   l, l                                        ; $6ebd: $6d
	adc  a                                           ; $6ebe: $8f
	ld   l, l                                        ; $6ebf: $6d
	dec  c                                           ; $6ec0: $0d
	sbc  $c4                                         ; $6ec1: $de $c4
	ret                                              ; $6ec3: $c9


	ld   a, c                                        ; $6ec4: $79
	inc  b                                           ; $6ec5: $04
	ld   b, l                                        ; $6ec6: $45
	sbc  d                                           ; $6ec7: $9a
	sbc  [hl]                                        ; $6ec8: $9e
	inc  b                                           ; $6ec9: $04
	db   $fc                                         ; $6eca: $fc
	adc  a                                           ; $6ecb: $8f
	ld   a, b                                        ; $6ecc: $78
	ld   d, d                                        ; $6ecd: $52
	sub  [hl]                                        ; $6ece: $96
	ld   d, h                                        ; $6ecf: $54
	ld   a, c                                        ; $6ed0: $79
	dec  c                                           ; $6ed1: $0d
	ld   h, l                                        ; $6ed2: $65
	ld   [hl], h                                     ; $6ed3: $74
	ld   e, b                                        ; $6ed4: $58
	ld   e, e                                        ; $6ed5: $5b
	adc  h                                           ; $6ed6: $8c
	ld   h, a                                        ; $6ed7: $67
	ld   a, h                                        ; $6ed8: $7c
	sbc  a                                           ; $6ed9: $9f
	dec  c                                           ; $6eda: $0d
	nop                                              ; $6edb: $00
	ld   a, [bc]                                     ; $6edc: $0a
	ld   bc, $546b                                   ; $6edd: $01 $6b $54
	ld   l, e                                        ; $6ee0: $6b
	ld   d, h                                        ; $6ee1: $54
	sbc  [hl]                                        ; $6ee2: $9e
	inc  b                                           ; $6ee3: $04
	sub  c                                           ; $6ee4: $91
	and  b                                           ; $6ee5: $a0
	adc  [hl]                                        ; $6ee6: $8e
	sub  a                                           ; $6ee7: $97
	ld   h, a                                        ; $6ee8: $67
	inc  bc                                          ; $6ee9: $03
	ld   l, a                                        ; $6eea: $6f
	ld   [bc], a                                     ; $6eeb: $02
	xor  c                                           ; $6eec: $a9
	ld   a, l                                        ; $6eed: $7d
	dec  c                                           ; $6eee: $0d
	dec  b                                           ; $6eef: $05
	ld   a, $05                                      ; $6ef0: $3e $05
	ld   h, d                                        ; $6ef2: $62
	ld   a, c                                        ; $6ef3: $79
	sub  [hl]                                        ; $6ef4: $96
	ld   [hl], c                                     ; $6ef5: $71
	ld   [hl], h                                     ; $6ef6: $74
	ld   l, a                                        ; $6ef7: $6f
	ld   e, d                                        ; $6ef8: $5a
	ld   d, d                                        ; $6ef9: $52
	adc  h                                           ; $6efa: $8c
	ld   h, a                                        ; $6efb: $67
	ld   e, a                                        ; $6efc: $5f
	ld   [hl], a                                     ; $6efd: $77
	dec  c                                           ; $6efe: $0d
	ld   l, [hl]                                     ; $6eff: $6e
	ld   d, d                                        ; $6f00: $52
	ld   l, l                                        ; $6f01: $6d
	ld   d, d                                        ; $6f02: $52
	ld   a, [bc]                                     ; $6f03: $0a
	ld   [bc], a                                     ; $6f04: $02
	inc  d                                           ; $6f05: $14
	inc  b                                           ; $6f06: $04
	sbc  [hl]                                        ; $6f07: $9e
	ld   a, [bc]                                     ; $6f08: $0a
	inc  bc                                          ; $6f09: $03
	ld   [hl], l                                     ; $6f0a: $75
	ld   h, a                                        ; $6f0b: $67
	sbc  l                                           ; $6f0c: $9d
	sbc  a                                           ; $6f0d: $9f
	dec  c                                           ; $6f0e: $0d
	nop                                              ; $6f0f: $00
	ld   a, [bc]                                     ; $6f10: $0a
	ld   bc, $5063                                   ; $6f11: $01 $63 $50
	sbc  [hl]                                        ; $6f14: $9e
	ld   e, b                                        ; $6f15: $58
	ld   h, e                                        ; $6f16: $63
	sub  a                                           ; $6f17: $97
	ld   d, d                                        ; $6f18: $52
	ld   h, l                                        ; $6f19: $65
	adc  h                                           ; $6f1a: $8c
	ld   h, a                                        ; $6f1b: $67
	sbc  l                                           ; $6f1c: $9d
	sub  [hl]                                        ; $6f1d: $96
	sbc  a                                           ; $6f1e: $9f
	dec  c                                           ; $6f1f: $0d
	nop                                              ; $6f20: $00
	ld   a, [bc]                                     ; $6f21: $0a
	ld   bc, $0358                                   ; $6f22: $01 $58 $03
	jp   $04a0                                       ; $6f25: $c3 $a0 $04


	ld   b, l                                        ; $6f28: $45
	sbc  d                                           ; $6f29: $9a
	sbc  c                                           ; $6f2a: $99
	inc  bc                                          ; $6f2b: $03
	ld   c, a                                        ; $6f2c: $4f
	ld   a, c                                        ; $6f2d: $79
	dec  c                                           ; $6f2e: $0d
	rst  ToBoot                                         ; $6f2f: $c7
	and  h                                           ; $6f30: $a4
	ei                                               ; $6f31: $fb
	xor  h                                           ; $6f32: $ac
	call nz, Call_05b_7dd8                           ; $6f33: $c4 $d8 $7d
	ld   [hl], a                                     ; $6f36: $77
	ld   a, h                                        ; $6f37: $7c
	sub  [hl]                                        ; $6f38: $96
	ld   d, h                                        ; $6f39: $54
	ld   a, c                                        ; $6f3a: $79
	dec  c                                           ; $6f3b: $0d
	ld   h, l                                        ; $6f3c: $65
	ld   [hl], h                                     ; $6f3d: $74
	ld   e, b                                        ; $6f3e: $58
	ld   e, e                                        ; $6f3f: $5b
	adc  h                                           ; $6f40: $8c
	ld   h, a                                        ; $6f41: $67
	ld   e, c                                        ; $6f42: $59
	ld   sp, hl                                      ; $6f43: $f9
	dec  c                                           ; $6f44: $0d
	nop                                              ; $6f45: $00
	ld   a, [bc]                                     ; $6f46: $0a
	add  hl, de                                      ; $6f47: $19
	dec  b                                           ; $6f48: $05
	inc  bc                                          ; $6f49: $03
	ld   d, b                                        ; $6f4a: $50
	ld   l, l                                        ; $6f4b: $6d
	ld   l, l                                        ; $6f4c: $6d
	adc  a                                           ; $6f4d: $8f
	ld   [hl], h                                     ; $6f4e: $74
	ld   e, b                                        ; $6f4f: $58
	ld   e, l                                        ; $6f50: $5d
	nop                                              ; $6f51: $00
	nop                                              ; $6f52: $00
	inc  b                                           ; $6f53: $04
	db   $fc                                         ; $6f54: $fc
	sub  d                                           ; $6f55: $92
	ld   h, l                                        ; $6f56: $65
	ld   [hl], h                                     ; $6f57: $74
	ld   e, b                                        ; $6f58: $58
	ld   e, l                                        ; $6f59: $5d
	nop                                              ; $6f5a: $00
	ld   bc, $7c6b                                   ; $6f5b: $01 $6b $7c
	adc  h                                           ; $6f5e: $8c
	adc  h                                           ; $6f5f: $8c
	ld   a, c                                        ; $6f60: $79
	ld   h, l                                        ; $6f61: $65
	ld   [hl], h                                     ; $6f62: $74
	ld   e, b                                        ; $6f63: $58
	ld   e, l                                        ; $6f64: $5d
	nop                                              ; $6f65: $00
	ld   [bc], a                                     ; $6f66: $02
	rlca                                             ; $6f67: $07
	xor  l                                           ; $6f68: $ad
	add  hl, bc                                      ; $6f69: $09
	ld   [bc], a                                     ; $6f6a: $02
	inc  bc                                          ; $6f6b: $03
	ld   bc, $2000                                   ; $6f6c: $01 $00 $20
	nop                                              ; $6f6f: $00
	rlca                                             ; $6f70: $07
	pop  hl                                          ; $6f71: $e1
	add  hl, bc                                      ; $6f72: $09
	ld   [bc], a                                     ; $6f73: $02
	inc  bc                                          ; $6f74: $03
	ld   bc, $2001                                   ; $6f75: $01 $01 $20
	nop                                              ; $6f78: $00
	rlca                                             ; $6f79: $07
	dec  h                                           ; $6f7a: $25
	ld   a, [bc]                                     ; $6f7b: $0a
	ld   [bc], a                                     ; $6f7c: $02
	inc  bc                                          ; $6f7d: $03
	ld   bc, $2002                                   ; $6f7e: $01 $02 $20
	nop                                              ; $6f81: $00
	ld   b, $56                                      ; $6f82: $06 $56
	ld   a, [bc]                                     ; $6f84: $0a
	rrca                                             ; $6f85: $0f
	nop                                              ; $6f86: $00
	ld   bc, $5001                                   ; $6f87: $01 $01 $50
	adc  h                                           ; $6f8a: $8c
	ld   [hl], c                                     ; $6f8b: $71
	ld   l, l                                        ; $6f8c: $6d
	ld   e, b                                        ; $6f8d: $58
	inc  b                                           ; $6f8e: $04
	db   $ed                                         ; $6f8f: $ed
	ld   [hl], l                                     ; $6f90: $75
	dec  c                                           ; $6f91: $0d
	ld   d, b                                        ; $6f92: $50
	ld   l, l                                        ; $6f93: $6d
	ld   l, l                                        ; $6f94: $6d
	adc  a                                           ; $6f95: $8f
	ld   [hl], h                                     ; $6f96: $74
	ld   e, b                                        ; $6f97: $58
	ld   e, e                                        ; $6f98: $5b
	adc  h                                           ; $6f99: $8c
	ld   h, a                                        ; $6f9a: $67
	sbc  a                                           ; $6f9b: $9f
	dec  c                                           ; $6f9c: $0d
	nop                                              ; $6f9d: $00
	ld   a, [bc]                                     ; $6f9e: $0a
	inc  e                                           ; $6f9f: $1c
	ld   [bc], a                                     ; $6fa0: $02
	ld   bc, $0101                                   ; $6fa1: $01 $01 $01
	ld   l, e                                        ; $6fa4: $6b
	ld   d, h                                        ; $6fa5: $54
	ld   [hl], l                                     ; $6fa6: $75
	ld   h, a                                        ; $6fa7: $67
	sbc  l                                           ; $6fa8: $9d
	sbc  a                                           ; $6fa9: $9f
	dec  c                                           ; $6faa: $0d
	nop                                              ; $6fab: $00
	ld   a, [bc]                                     ; $6fac: $0a
	dec  b                                           ; $6fad: $05
	ld   b, b                                        ; $6fae: $40
	rst  $38                                         ; $6faf: $ff
	inc  bc                                          ; $6fb0: $03
	rst  $38                                         ; $6fb1: $ff
	ld   bc, $2801                                   ; $6fb2: $01 $01 $28
	nop                                              ; $6fb5: $00
	ld   b, $86                                      ; $6fb6: $06 $86
	ld   a, [bc]                                     ; $6fb8: $0a
	rrca                                             ; $6fb9: $0f
	nop                                              ; $6fba: $00
	ld   bc, $0401                                   ; $6fbb: $01 $01 $04
	db   $fc                                         ; $6fbe: $fc
	sub  d                                           ; $6fbf: $92
	ld   h, l                                        ; $6fc0: $65
	ld   [hl], h                                     ; $6fc1: $74
	ld   e, b                                        ; $6fc2: $58
	ld   e, e                                        ; $6fc3: $5b
	adc  h                                           ; $6fc4: $8c
	ld   h, a                                        ; $6fc5: $67
	sbc  a                                           ; $6fc6: $9f
	dec  c                                           ; $6fc7: $0d
	nop                                              ; $6fc8: $00
	ld   a, [bc]                                     ; $6fc9: $0a
	inc  e                                           ; $6fca: $1c
	ld   [bc], a                                     ; $6fcb: $02
	rlca                                             ; $6fcc: $07
	rlca                                             ; $6fcd: $07
	ld   bc, $5a6f                                   ; $6fce: $01 $6f $5a
	ld   d, d                                        ; $6fd1: $52
	adc  h                                           ; $6fd2: $8c
	ld   h, a                                        ; $6fd3: $67
	sbc  l                                           ; $6fd4: $9d
	sbc  a                                           ; $6fd5: $9f
	inc  b                                           ; $6fd6: $04
	db   $fc                                         ; $6fd7: $fc
	sub  d                                           ; $6fd8: $92
	ld   h, l                                        ; $6fd9: $65
	ld   l, l                                        ; $6fda: $6d
	sub  a                                           ; $6fdb: $97
	dec  c                                           ; $6fdc: $0d
	ld   l, c                                        ; $6fdd: $69
	ld   [hl], c                                     ; $6fde: $71
	ld   e, c                                        ; $6fdf: $59
	ld   e, l                                        ; $6fe0: $5d
	ld   a, h                                        ; $6fe1: $7c
	ld   [bc], a                                     ; $6fe2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fe3: $cf
	inc  bc                                          ; $6fe4: $03
	jp   $045a                                       ; $6fe5: $c3 $5a $04


	db   $fc                                         ; $6fe8: $fc
	adc  a                                           ; $6fe9: $8f
	ld   [hl], h                                     ; $6fea: $74
	dec  c                                           ; $6feb: $0d
	ld   h, l                                        ; $6fec: $65
	adc  h                                           ; $6fed: $8c
	ld   d, h                                        ; $6fee: $54
	ld   h, [hl]                                     ; $6fef: $66
	sub  c                                           ; $6ff0: $91
	ld   a, b                                        ; $6ff1: $78
	ld   d, d                                        ; $6ff2: $52
	ld   [hl], l                                     ; $6ff3: $75
	ld   h, a                                        ; $6ff4: $67
	ld   a, h                                        ; $6ff5: $7c
	sbc  a                                           ; $6ff6: $9f
	dec  c                                           ; $6ff7: $0d
	nop                                              ; $6ff8: $00
	ld   a, [bc]                                     ; $6ff9: $0a
	ld   b, $86                                      ; $6ffa: $06 $86
	ld   a, [bc]                                     ; $6ffc: $0a
	rrca                                             ; $6ffd: $0f
	nop                                              ; $6ffe: $00
	ld   bc, $6b01                                   ; $6fff: $01 $01 $6b
	ld   a, h                                        ; $7002: $7c
	adc  h                                           ; $7003: $8c
	adc  h                                           ; $7004: $8c
	ld   a, c                                        ; $7005: $79
	ld   h, l                                        ; $7006: $65
	ld   [hl], h                                     ; $7007: $74
	ld   e, b                                        ; $7008: $58
	ld   e, e                                        ; $7009: $5b
	adc  h                                           ; $700a: $8c
	ld   h, a                                        ; $700b: $67
	sbc  a                                           ; $700c: $9f
	dec  c                                           ; $700d: $0d
	nop                                              ; $700e: $00
	ld   a, [bc]                                     ; $700f: $0a
	inc  e                                           ; $7010: $1c
	ld   [bc], a                                     ; $7011: $02
	rlca                                             ; $7012: $07
	rlca                                             ; $7013: $07
	ld   bc, $5a6f                                   ; $7014: $01 $6f $5a
	ld   d, d                                        ; $7017: $52
	adc  h                                           ; $7018: $8c
	ld   h, a                                        ; $7019: $67
	sbc  l                                           ; $701a: $9d
	sbc  a                                           ; $701b: $9f
	dec  c                                           ; $701c: $0d
	ld   d, b                                        ; $701d: $50
	ld   l, l                                        ; $701e: $6d
	ld   l, l                                        ; $701f: $6d
	adc  a                                           ; $7020: $8f
	ld   [hl], h                                     ; $7021: $74
	ld   e, b                                        ; $7022: $58
	ld   e, l                                        ; $7023: $5d
	and  c                                           ; $7024: $a1
	ld   [hl], l                                     ; $7025: $75
	ld   h, a                                        ; $7026: $67
	sbc  a                                           ; $7027: $9f
	dec  c                                           ; $7028: $0d
	nop                                              ; $7029: $00
	ld   a, [bc]                                     ; $702a: $0a
	ld   b, $86                                      ; $702b: $06 $86
	ld   a, [bc]                                     ; $702d: $0a
	inc  e                                           ; $702e: $1c
	ld   [bc], a                                     ; $702f: $02
	nop                                              ; $7030: $00
	nop                                              ; $7031: $00
	ld   bc, $4a03                                   ; $7032: $01 $03 $4a
	ld   [bc], a                                     ; $7035: $02
	or   h                                           ; $7036: $b4
	ld   a, l                                        ; $7037: $7d
	sbc  [hl]                                        ; $7038: $9e
	ld   d, b                                        ; $7039: $50
	ld   l, l                                        ; $703a: $6d
	ld   l, l                                        ; $703b: $6d
	adc  a                                           ; $703c: $8f
	sbc  c                                           ; $703d: $99
	ld   [hl], l                                     ; $703e: $75
	ld   h, a                                        ; $703f: $67
	sbc  l                                           ; $7040: $9d
	sbc  a                                           ; $7041: $9f
	dec  c                                           ; $7042: $0d
	ld   [bc], a                                     ; $7043: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7044: $cf
	inc  bc                                          ; $7045: $03
	jp   $9e7d                                       ; $7046: $c3 $7d $9e


	ld   d, b                                        ; $7049: $50
	ld   l, l                                        ; $704a: $6d
	ld   l, l                                        ; $704b: $6d
	ld   e, c                                        ; $704c: $59
	ld   d, d                                        ; $704d: $52
	inc  b                                           ; $704e: $04
	ld   a, b                                        ; $704f: $78
	ld   e, d                                        ; $7050: $5a
	dec  c                                           ; $7051: $0d
	ld   e, b                                        ; $7052: $58
	ld   d, d                                        ; $7053: $52
	ld   h, l                                        ; $7054: $65
	ld   d, d                                        ; $7055: $52
	ld   [hl], l                                     ; $7056: $75
	ld   h, a                                        ; $7057: $67
	ld   e, c                                        ; $7058: $59
	sub  a                                           ; $7059: $97
	sbc  a                                           ; $705a: $9f
	dec  c                                           ; $705b: $0d
	nop                                              ; $705c: $00
	ld   a, [bc]                                     ; $705d: $0a
	inc  e                                           ; $705e: $1c
	ld   [bc], a                                     ; $705f: $02
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	ld   bc, $6803                                   ; $7062: $01 $03 $68
	ld   a, c                                        ; $7065: $79
	sbc  [hl]                                        ; $7066: $9e
	ld   [bc], a                                     ; $7067: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7068: $cf
	inc  bc                                          ; $7069: $03
	jp   $c7a0                                       ; $706a: $c3 $a0 $c7


	and  h                                           ; $706d: $a4
	ei                                               ; $706e: $fb
	xor  h                                           ; $706f: $ac
	call nz, Call_05b_79d8                           ; $7070: $c4 $d8 $79
	dec  c                                           ; $7073: $0d
	ld   l, e                                        ; $7074: $6b
	ld   l, e                                        ; $7075: $6b
	ld   e, [hl]                                     ; $7076: $5e
	inc  bc                                          ; $7077: $03
	ld   l, a                                        ; $7078: $6f
	ld   a, c                                        ; $7079: $79
	sbc  [hl]                                        ; $707a: $9e
	ld   [hl], a                                     ; $707b: $77
	ld   a, h                                        ; $707c: $7c
	sub  [hl]                                        ; $707d: $96
	ld   d, h                                        ; $707e: $54
	ld   a, b                                        ; $707f: $78
	inc  bc                                          ; $7080: $03
	db   $ed                                         ; $7081: $ed
	ld   a, c                                        ; $7082: $79
	dec  c                                           ; $7083: $0d
	inc  bc                                          ; $7084: $03
	and  $02                                         ; $7085: $e6 $02
	ld   b, $65                                      ; $7087: $06 $65
	adc  h                                           ; $7089: $8c
	ld   h, a                                        ; $708a: $67
	ld   e, c                                        ; $708b: $59
	ld   sp, hl                                      ; $708c: $f9
	dec  c                                           ; $708d: $0d
	nop                                              ; $708e: $00
	ld   a, [bc]                                     ; $708f: $0a
	add  hl, de                                      ; $7090: $19
	dec  b                                           ; $7091: $05
	inc  bc                                          ; $7092: $03
	dec  b                                           ; $7093: $05
	ld   d, c                                        ; $7094: $51
	ld   h, e                                        ; $7095: $63
	ld   e, d                                        ; $7096: $5a
	ld   e, e                                        ; $7097: $5b
	and  c                                           ; $7098: $a1
	halt                                             ; $7099: $76
	ld   d, h                                        ; $709a: $54
	ld   a, c                                        ; $709b: $79
	ld   a, b                                        ; $709c: $78
	sbc  c                                           ; $709d: $99
	sub  [hl]                                        ; $709e: $96
	ld   d, h                                        ; $709f: $54
	ld   a, c                                        ; $70a0: $79
	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	ld   h, d                                        ; $70a3: $62
	ld   d, h                                        ; $70a4: $54
	ld   e, c                                        ; $70a5: $59
	ld   d, d                                        ; $70a6: $52
	ld   a, c                                        ; $70a7: $79
	ld   [bc], a                                     ; $70a8: $02
	jr   nz, jr_05b_70ad                             ; $70a9: $20 $02

	and  c                                           ; $70ab: $a1
	ld   a, c                                        ; $70ac: $79

jr_05b_70ad:
	nop                                              ; $70ad: $00
	ld   bc, $5505                                   ; $70ae: $01 $05 $55
	ld   bc, $7614                                   ; $70b1: $01 $14 $76
	ld   l, e                                        ; $70b4: $6b
	ld   l, e                                        ; $70b5: $6b
	ld   e, [hl]                                     ; $70b6: $5e
	nop                                              ; $70b7: $00
	ld   [bc], a                                     ; $70b8: $02
	rlca                                             ; $70b9: $07
	rst  $38                                         ; $70ba: $ff
	ld   a, [bc]                                     ; $70bb: $0a
	ld   [bc], a                                     ; $70bc: $02
	inc  bc                                          ; $70bd: $03
	ld   bc, $2000                                   ; $70be: $01 $00 $20
	nop                                              ; $70c1: $00
	rlca                                             ; $70c2: $07
	dec  [hl]                                        ; $70c3: $35
	dec  bc                                          ; $70c4: $0b
	ld   [bc], a                                     ; $70c5: $02
	inc  bc                                          ; $70c6: $03
	ld   bc, $2001                                   ; $70c7: $01 $01 $20
	nop                                              ; $70ca: $00
	rlca                                             ; $70cb: $07
	ld   a, [hl]                                     ; $70cc: $7e
	dec  bc                                          ; $70cd: $0b
	ld   [bc], a                                     ; $70ce: $02
	inc  bc                                          ; $70cf: $03
	ld   bc, $2002                                   ; $70d0: $01 $02 $20
	nop                                              ; $70d3: $00
	ld   b, $c1                                      ; $70d4: $06 $c1
	dec  bc                                          ; $70d6: $0b
	rrca                                             ; $70d7: $0f
	nop                                              ; $70d8: $00
	ld   bc, $0501                                   ; $70d9: $01 $01 $05
	ld   d, c                                        ; $70dc: $51
	ld   h, e                                        ; $70dd: $63
	ld   e, d                                        ; $70de: $5a
	ld   e, e                                        ; $70df: $5b
	and  c                                           ; $70e0: $a1
	halt                                             ; $70e1: $76
	ld   d, h                                        ; $70e2: $54
	ld   a, c                                        ; $70e3: $79
	ld   a, b                                        ; $70e4: $78
	sbc  c                                           ; $70e5: $99
	sub  [hl]                                        ; $70e6: $96
	ld   d, h                                        ; $70e7: $54
	ld   a, c                                        ; $70e8: $79
	dec  c                                           ; $70e9: $0d
	ld   l, e                                        ; $70ea: $6b
	ld   l, e                                        ; $70eb: $6b
	ld   e, h                                        ; $70ec: $5c
	adc  h                                           ; $70ed: $8c
	ld   h, a                                        ; $70ee: $67
	sbc  a                                           ; $70ef: $9f
	dec  c                                           ; $70f0: $0d
	nop                                              ; $70f1: $00
	ld   a, [bc]                                     ; $70f2: $0a
	inc  e                                           ; $70f3: $1c
	ld   [bc], a                                     ; $70f4: $02
	ld   bc, $0101                                   ; $70f5: $01 $01 $01
	ld   l, e                                        ; $70f8: $6b
	ld   d, h                                        ; $70f9: $54
	ld   [hl], l                                     ; $70fa: $75
	ld   h, a                                        ; $70fb: $67
	sbc  l                                           ; $70fc: $9d
	sbc  a                                           ; $70fd: $9f
	dec  c                                           ; $70fe: $0d
	nop                                              ; $70ff: $00
	ld   a, [bc]                                     ; $7100: $0a
	dec  b                                           ; $7101: $05
	ld   b, b                                        ; $7102: $40
	rst  $38                                         ; $7103: $ff
	inc  bc                                          ; $7104: $03
	rst  $38                                         ; $7105: $ff
	ld   bc, $2801                                   ; $7106: $01 $01 $28
	nop                                              ; $7109: $00
	ld   b, $e6                                      ; $710a: $06 $e6
	dec  bc                                          ; $710c: $0b
	rrca                                             ; $710d: $0f
	nop                                              ; $710e: $00
	ld   bc, $6201                                   ; $710f: $01 $01 $62
	ld   d, h                                        ; $7112: $54
	ld   e, c                                        ; $7113: $59
	ld   d, d                                        ; $7114: $52
	ld   a, c                                        ; $7115: $79
	ld   [bc], a                                     ; $7116: $02
	jr   nz, jr_05b_711b                             ; $7117: $20 $02

	and  c                                           ; $7119: $a1
	ld   a, c                                        ; $711a: $79

jr_05b_711b:
	dec  c                                           ; $711b: $0d
	ld   l, e                                        ; $711c: $6b
	ld   l, e                                        ; $711d: $6b
	ld   e, h                                        ; $711e: $5c
	adc  h                                           ; $711f: $8c
	ld   h, a                                        ; $7120: $67
	sbc  a                                           ; $7121: $9f
	dec  c                                           ; $7122: $0d
	nop                                              ; $7123: $00
	ld   a, [bc]                                     ; $7124: $0a
	inc  e                                           ; $7125: $1c
	ld   [bc], a                                     ; $7126: $02
	rlca                                             ; $7127: $07
	rlca                                             ; $7128: $07
	ld   bc, $e3c1                                   ; $7129: $01 $c1 $e3
	ld   [hl], l                                     ; $712c: $75
	ld   h, a                                        ; $712d: $67
	sbc  l                                           ; $712e: $9d
	sbc  a                                           ; $712f: $9f
	ld   l, e                                        ; $7130: $6b
	and  c                                           ; $7131: $a1
	ld   a, b                                        ; $7132: $78
	ld   h, c                                        ; $7133: $61
	halt                                             ; $7134: $76
	ld   h, l                                        ; $7135: $65
	ld   l, l                                        ; $7136: $6d
	sub  a                                           ; $7137: $97
	dec  c                                           ; $7138: $0d
	ld   l, c                                        ; $7139: $69
	ld   [hl], c                                     ; $713a: $71
	ld   e, c                                        ; $713b: $59
	ld   e, l                                        ; $713c: $5d
	ld   a, h                                        ; $713d: $7c
	ld   [bc], a                                     ; $713e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $713f: $cf
	inc  bc                                          ; $7140: $03
	jp   Jump_05b_585a                               ; $7141: $c3 $5a $58


	ld   d, d                                        ; $7144: $52
	ld   h, l                                        ; $7145: $65
	ld   e, l                                        ; $7146: $5d
	dec  c                                           ; $7147: $0d
	ld   a, b                                        ; $7148: $78
	ld   e, l                                        ; $7149: $5d
	ld   a, b                                        ; $714a: $78
	sbc  b                                           ; $714b: $98
	adc  h                                           ; $714c: $8c
	ld   h, a                                        ; $714d: $67
	sbc  l                                           ; $714e: $9d
	sbc  a                                           ; $714f: $9f
	dec  c                                           ; $7150: $0d
	nop                                              ; $7151: $00
	ld   a, [bc]                                     ; $7152: $0a
	ld   b, $e6                                      ; $7153: $06 $e6
	dec  bc                                          ; $7155: $0b
	rrca                                             ; $7156: $0f
	nop                                              ; $7157: $00
	ld   bc, $0501                                   ; $7158: $01 $01 $05
	ld   d, l                                        ; $715b: $55
	ld   bc, $7614                                   ; $715c: $01 $14 $76
	ld   l, e                                        ; $715f: $6b
	ld   l, e                                        ; $7160: $6b
	ld   e, h                                        ; $7161: $5c
	adc  h                                           ; $7162: $8c
	ld   h, a                                        ; $7163: $67
	sbc  a                                           ; $7164: $9f
	dec  c                                           ; $7165: $0d
	nop                                              ; $7166: $00
	ld   a, [bc]                                     ; $7167: $0a
	inc  e                                           ; $7168: $1c
	ld   [bc], a                                     ; $7169: $02
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	ld   bc, $9a6b                                   ; $716c: $01 $6b $9a
	ld   a, l                                        ; $716f: $7d
	inc  b                                           ; $7170: $04
	ld   d, h                                        ; $7171: $54
	ld   a, c                                        ; $7172: $79
	ld   e, c                                        ; $7173: $59
	adc  h                                           ; $7174: $8c
	ld   d, d                                        ; $7175: $52
	adc  h                                           ; $7176: $8c
	ld   l, c                                        ; $7177: $69
	and  c                                           ; $7178: $a1
	ld   e, d                                        ; $7179: $5a
	dec  c                                           ; $717a: $0d
	dec  b                                           ; $717b: $05
	ld   d, c                                        ; $717c: $51
	ld   h, e                                        ; $717d: $63
	ld   e, d                                        ; $717e: $5a
	ld   e, e                                        ; $717f: $5b
	and  c                                           ; $7180: $a1
	halt                                             ; $7181: $76
	ld   d, h                                        ; $7182: $54
	ld   a, c                                        ; $7183: $79
	ld   a, b                                        ; $7184: $78
	sbc  c                                           ; $7185: $99
	sub  [hl]                                        ; $7186: $96
	ld   d, h                                        ; $7187: $54
	ld   a, c                                        ; $7188: $79
	dec  c                                           ; $7189: $0d
	ld   l, e                                        ; $718a: $6b
	ld   l, e                                        ; $718b: $6b
	ld   d, d                                        ; $718c: $52
	ld   [hl], l                                     ; $718d: $75
	ld   [bc], a                                     ; $718e: $02
	inc  [hl]                                        ; $718f: $34
	ld   h, e                                        ; $7190: $63
	ld   d, d                                        ; $7191: $52
	sbc  a                                           ; $7192: $9f
	dec  c                                           ; $7193: $0d
	nop                                              ; $7194: $00
	ld   a, [bc]                                     ; $7195: $0a
	ld   b, $e6                                      ; $7196: $06 $e6
	dec  bc                                          ; $7198: $0b
	inc  e                                           ; $7199: $1c
	ld   [bc], a                                     ; $719a: $02
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	ld   bc, $4a03                                   ; $719d: $01 $03 $4a
	ld   [bc], a                                     ; $71a0: $02
	or   h                                           ; $71a1: $b4
	ld   a, l                                        ; $71a2: $7d
	sbc  [hl]                                        ; $71a3: $9e
	dec  b                                           ; $71a4: $05
	ld   d, c                                        ; $71a5: $51
	ld   h, e                                        ; $71a6: $63
	ld   e, d                                        ; $71a7: $5a
	ld   e, e                                        ; $71a8: $5b
	and  c                                           ; $71a9: $a1
	halt                                             ; $71aa: $76
	ld   d, h                                        ; $71ab: $54
	ld   a, c                                        ; $71ac: $79
	dec  c                                           ; $71ad: $0d
	ld   a, b                                        ; $71ae: $78
	sbc  c                                           ; $71af: $99
	sub  [hl]                                        ; $71b0: $96
	ld   d, h                                        ; $71b1: $54
	ld   a, c                                        ; $71b2: $79
	ld   l, e                                        ; $71b3: $6b
	ld   l, e                                        ; $71b4: $6b
	ld   e, [hl]                                     ; $71b5: $5e
	sbc  [hl]                                        ; $71b6: $9e
	ld   [hl], l                                     ; $71b7: $75
	ld   h, a                                        ; $71b8: $67
	sbc  l                                           ; $71b9: $9d
	sbc  a                                           ; $71ba: $9f
	dec  c                                           ; $71bb: $0d
	nop                                              ; $71bc: $00
	ld   a, [bc]                                     ; $71bd: $0a
	inc  e                                           ; $71be: $1c
	ld   [bc], a                                     ; $71bf: $02
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	ld   bc, $7d75                                   ; $71c2: $01 $75 $7d
	inc  bc                                          ; $71c5: $03
	ld   l, b                                        ; $71c6: $68
	ld   a, c                                        ; $71c7: $79
	sbc  [hl]                                        ; $71c8: $9e
	ld   e, b                                        ; $71c9: $58
	inc  bc                                          ; $71ca: $03
	jp   $047c                                       ; $71cb: $c3 $7c $04


	sub  c                                           ; $71ce: $91
	ld   a, h                                        ; $71cf: $7c
	dec  c                                           ; $71d0: $0d
	adc  [hl]                                        ; $71d1: $8e
	sub  a                                           ; $71d2: $97
	ld   h, l                                        ; $71d3: $65
	inc  bc                                          ; $71d4: $03
	ld   l, a                                        ; $71d5: $6f
	ld   [bc], a                                     ; $71d6: $02
	xor  c                                           ; $71d7: $a9
	ld   a, l                                        ; $71d8: $7d
	ld   [hl], a                                     ; $71d9: $77
	ld   a, h                                        ; $71da: $7c
	ld   e, l                                        ; $71db: $5d
	sub  a                                           ; $71dc: $97
	ld   d, d                                        ; $71dd: $52
	dec  c                                           ; $71de: $0d
	ld   [hl], l                                     ; $71df: $75
	ld   h, l                                        ; $71e0: $65
	sub  l                                           ; $71e1: $95
	ld   d, h                                        ; $71e2: $54
	ld   e, c                                        ; $71e3: $59
	ld   sp, hl                                      ; $71e4: $f9
	dec  c                                           ; $71e5: $0d
	nop                                              ; $71e6: $00
	ld   a, [bc]                                     ; $71e7: $0a
	add  hl, de                                      ; $71e8: $19
	dec  b                                           ; $71e9: $05
	inc  bc                                          ; $71ea: $03
	ld   e, b                                        ; $71eb: $58
	ld   e, b                                        ; $71ec: $58
	sub  [hl]                                        ; $71ed: $96
	ld   l, e                                        ; $71ee: $6b
	inc  d                                           ; $71ef: $14
	inc  b                                           ; $71f0: $04
	sbc  [hl]                                        ; $71f1: $9e
	nop                                              ; $71f2: $00
	nop                                              ; $71f3: $00
	ld   d, $04                                      ; $71f4: $16 $04
	sbc  [hl]                                        ; $71f6: $9e
	nop                                              ; $71f7: $00
	ld   bc, $f503                                   ; $71f8: $01 $03 $f5
	inc  b                                           ; $71fb: $04
	jr   jr_05b_71fe                                 ; $71fc: $18 $00

jr_05b_71fe:
	ld   [bc], a                                     ; $71fe: $02
	rlca                                             ; $71ff: $07
	ld   b, l                                        ; $7200: $45
	inc  c                                           ; $7201: $0c
	ld   [bc], a                                     ; $7202: $02
	inc  bc                                          ; $7203: $03
	ld   bc, $2000                                   ; $7204: $01 $00 $20
	nop                                              ; $7207: $00
	rlca                                             ; $7208: $07
	adc  a                                           ; $7209: $8f
	inc  c                                           ; $720a: $0c
	ld   [bc], a                                     ; $720b: $02
	inc  bc                                          ; $720c: $03
	ld   bc, $2001                                   ; $720d: $01 $01 $20
	nop                                              ; $7210: $00
	rlca                                             ; $7211: $07
	ret  c                                           ; $7212: $d8

	inc  c                                           ; $7213: $0c
	ld   [bc], a                                     ; $7214: $02
	inc  bc                                          ; $7215: $03
	ld   bc, $2002                                   ; $7216: $01 $02 $20
	nop                                              ; $7219: $00
	ld   b, $2c                                      ; $721a: $06 $2c
	dec  c                                           ; $721c: $0d
	rrca                                             ; $721d: $0f
	nop                                              ; $721e: $00
	ld   bc, $0501                                   ; $721f: $01 $01 $05
	ld   a, $05                                      ; $7222: $3e $05
	ld   h, d                                        ; $7224: $62
	ld   a, c                                        ; $7225: $79
	sub  [hl]                                        ; $7226: $96
	ld   [hl], c                                     ; $7227: $71
	ld   [hl], h                                     ; $7228: $74
	ld   h, c                                        ; $7229: $61
	halt                                             ; $722a: $76
	ld   a, b                                        ; $722b: $78
	sbc  b                                           ; $722c: $98
	adc  h                                           ; $722d: $8c
	ld   h, a                                        ; $722e: $67
	ld   e, d                                        ; $722f: $5a
	dec  c                                           ; $7230: $0d
	ld   l, [hl]                                     ; $7231: $6e
	ld   d, d                                        ; $7232: $52
	ld   l, l                                        ; $7233: $6d
	ld   d, d                                        ; $7234: $52
	inc  d                                           ; $7235: $14
	inc  b                                           ; $7236: $04
	sbc  [hl]                                        ; $7237: $9e
	and  b                                           ; $7238: $a0
	inc  b                                           ; $7239: $04
	call nc, $2602                                   ; $723a: $d4 $02 $26
	halt                                             ; $723d: $76
	ld   h, l                                        ; $723e: $65
	adc  h                                           ; $723f: $8c
	ld   h, a                                        ; $7240: $67
	sbc  a                                           ; $7241: $9f
	dec  c                                           ; $7242: $0d
	nop                                              ; $7243: $00
	ld   a, [bc]                                     ; $7244: $0a
	inc  e                                           ; $7245: $1c
	ld   [bc], a                                     ; $7246: $02
	ld   bc, $0101                                   ; $7247: $01 $01 $01
	ld   l, e                                        ; $724a: $6b
	ld   d, h                                        ; $724b: $54
	ld   [hl], l                                     ; $724c: $75
	ld   h, a                                        ; $724d: $67
	sbc  l                                           ; $724e: $9d
	sbc  a                                           ; $724f: $9f
	dec  c                                           ; $7250: $0d
	nop                                              ; $7251: $00
	ld   a, [bc]                                     ; $7252: $0a
	dec  b                                           ; $7253: $05
	ld   b, b                                        ; $7254: $40
	rst  $38                                         ; $7255: $ff
	inc  bc                                          ; $7256: $03
	rst  $38                                         ; $7257: $ff
	ld   bc, $2801                                   ; $7258: $01 $01 $28
	nop                                              ; $725b: $00
	dec  c                                           ; $725c: $0d
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	rrca                                             ; $725f: $0f
	nop                                              ; $7260: $00
	ld   bc, $0b0c                                   ; $7261: $01 $0c $0b
	ld   b, $6f                                      ; $7264: $06 $6f
	dec  c                                           ; $7266: $0d
	rrca                                             ; $7267: $0f
	nop                                              ; $7268: $00
	ld   bc, $5b01                                   ; $7269: $01 $01 $5b
	ld   [hl], c                                     ; $726c: $71
	ld   l, a                                        ; $726d: $6f
	sbc  b                                           ; $726e: $98
	ld   d, $04                                      ; $726f: $16 $04
	sbc  [hl]                                        ; $7271: $9e
	ld   [hl], l                                     ; $7272: $75
	ld   h, a                                        ; $7273: $67
	sbc  a                                           ; $7274: $9f
	dec  c                                           ; $7275: $0d
	nop                                              ; $7276: $00
	ld   a, [bc]                                     ; $7277: $0a
	inc  e                                           ; $7278: $1c
	ld   [bc], a                                     ; $7279: $02
	nop                                              ; $727a: $00
	nop                                              ; $727b: $00
	ld   bc, $5a6f                                   ; $727c: $01 $6f $5a
	ld   d, d                                        ; $727f: $52
	adc  h                                           ; $7280: $8c
	ld   h, a                                        ; $7281: $67
	sbc  l                                           ; $7282: $9d
	sbc  a                                           ; $7283: $9f
	dec  c                                           ; $7284: $0d
	dec  b                                           ; $7285: $05
	ld   a, $05                                      ; $7286: $3e $05
	ld   h, d                                        ; $7288: $62
	ld   a, c                                        ; $7289: $79
	sub  [hl]                                        ; $728a: $96
	ld   [hl], c                                     ; $728b: $71
	ld   [hl], h                                     ; $728c: $74
	ld   h, c                                        ; $728d: $61
	halt                                             ; $728e: $76
	ld   a, b                                        ; $728f: $78
	sbc  b                                           ; $7290: $98
	adc  h                                           ; $7291: $8c
	ld   h, a                                        ; $7292: $67
	ld   e, d                                        ; $7293: $5a
	dec  c                                           ; $7294: $0d
	inc  b                                           ; $7295: $04
	call nc, $2602                                   ; $7296: $d4 $02 $26
	halt                                             ; $7299: $76
	ld   h, l                                        ; $729a: $65
	ld   [hl], h                                     ; $729b: $74
	inc  d                                           ; $729c: $14
	inc  b                                           ; $729d: $04
	sbc  [hl]                                        ; $729e: $9e
	ld   [hl], l                                     ; $729f: $75
	ld   h, a                                        ; $72a0: $67
	sbc  a                                           ; $72a1: $9f
	dec  c                                           ; $72a2: $0d
	nop                                              ; $72a3: $00
	ld   a, [bc]                                     ; $72a4: $0a
	dec  c                                           ; $72a5: $0d
	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	rrca                                             ; $72a8: $0f
	nop                                              ; $72a9: $00
	ld   bc, $0b0c                                   ; $72aa: $01 $0c $0b
	ld   b, $6f                                      ; $72ad: $06 $6f
	dec  c                                           ; $72af: $0d
	rrca                                             ; $72b0: $0f
	nop                                              ; $72b1: $00
	ld   bc, $0301                                   ; $72b2: $01 $01 $03
	push af                                          ; $72b5: $f5
	inc  b                                           ; $72b6: $04
	jr   @+$7b                                       ; $72b7: $18 $79

	sbc  [hl]                                        ; $72b9: $9e
	inc  bc                                          ; $72ba: $03
	add  d                                           ; $72bb: $82
	ld   l, e                                        ; $72bc: $6b
	sbc  d                                           ; $72bd: $9a
	ld   l, h                                        ; $72be: $6c
	sbc  d                                           ; $72bf: $9a
	ld   [bc], a                                     ; $72c0: $02
	ld   l, a                                        ; $72c1: $6f
	ld   [hl], l                                     ; $72c2: $75
	dec  c                                           ; $72c3: $0d
	sub  d                                           ; $72c4: $92
	sbc  b                                           ; $72c5: $98
	adc  h                                           ; $72c6: $8c
	ld   h, a                                        ; $72c7: $67
	sbc  a                                           ; $72c8: $9f
	dec  c                                           ; $72c9: $0d
	nop                                              ; $72ca: $00
	ld   a, [bc]                                     ; $72cb: $0a
	inc  e                                           ; $72cc: $1c
	ld   [bc], a                                     ; $72cd: $02
	rlca                                             ; $72ce: $07
	rlca                                             ; $72cf: $07
	ld   bc, $5a6f                                   ; $72d0: $01 $6f $5a
	ld   d, d                                        ; $72d3: $52
	adc  h                                           ; $72d4: $8c
	ld   h, a                                        ; $72d5: $67
	sbc  l                                           ; $72d6: $9d
	sbc  a                                           ; $72d7: $9f
	dec  c                                           ; $72d8: $0d
	dec  b                                           ; $72d9: $05
	ld   a, $05                                      ; $72da: $3e $05
	ld   h, d                                        ; $72dc: $62
	ld   a, c                                        ; $72dd: $79
	sub  [hl]                                        ; $72de: $96
	ld   [hl], c                                     ; $72df: $71
	ld   [hl], h                                     ; $72e0: $74
	ld   h, c                                        ; $72e1: $61
	halt                                             ; $72e2: $76
	ld   a, b                                        ; $72e3: $78
	sbc  b                                           ; $72e4: $98
	adc  h                                           ; $72e5: $8c
	ld   h, a                                        ; $72e6: $67
	ld   e, d                                        ; $72e7: $5a
	dec  c                                           ; $72e8: $0d
	inc  b                                           ; $72e9: $04
	call nc, $2602                                   ; $72ea: $d4 $02 $26
	halt                                             ; $72ed: $76
	ld   h, l                                        ; $72ee: $65
	ld   [hl], h                                     ; $72ef: $74
	inc  d                                           ; $72f0: $14
	inc  b                                           ; $72f1: $04
	sbc  [hl]                                        ; $72f2: $9e
	ld   [hl], l                                     ; $72f3: $75
	ld   h, a                                        ; $72f4: $67
	sbc  a                                           ; $72f5: $9f
	dec  c                                           ; $72f6: $0d
	nop                                              ; $72f7: $00
	ld   a, [bc]                                     ; $72f8: $0a
	dec  c                                           ; $72f9: $0d
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	rrca                                             ; $72fc: $0f
	nop                                              ; $72fd: $00
	ld   bc, $0b0c                                   ; $72fe: $01 $0c $0b
	ld   b, $6f                                      ; $7301: $06 $6f
	dec  c                                           ; $7303: $0d
	inc  e                                           ; $7304: $1c
	ld   [bc], a                                     ; $7305: $02
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	ld   bc, $4a03                                   ; $7308: $01 $03 $4a
	ld   [bc], a                                     ; $730b: $02
	or   h                                           ; $730c: $b4
	ld   a, l                                        ; $730d: $7d
	sbc  [hl]                                        ; $730e: $9e
	ld   e, b                                        ; $730f: $58
	ld   e, b                                        ; $7310: $58
	ld   l, e                                        ; $7311: $6b
	sub  [hl]                                        ; $7312: $96
	inc  d                                           ; $7313: $14
	inc  b                                           ; $7314: $04
	sbc  [hl]                                        ; $7315: $9e
	ld   [hl], l                                     ; $7316: $75
	ld   h, a                                        ; $7317: $67
	sbc  l                                           ; $7318: $9d
	sbc  a                                           ; $7319: $9f
	dec  c                                           ; $731a: $0d
	dec  b                                           ; $731b: $05
	ld   a, $05                                      ; $731c: $3e $05
	ld   h, d                                        ; $731e: $62
	ld   a, c                                        ; $731f: $79
	sub  [hl]                                        ; $7320: $96
	ld   [hl], c                                     ; $7321: $71
	ld   [hl], h                                     ; $7322: $74
	ld   l, a                                        ; $7323: $6f
	ld   e, d                                        ; $7324: $5a
	ld   d, d                                        ; $7325: $52
	adc  h                                           ; $7326: $8c
	ld   h, a                                        ; $7327: $67
	ld   e, c                                        ; $7328: $59
	sub  a                                           ; $7329: $97
	dec  c                                           ; $732a: $0d
	ld   d, b                                        ; $732b: $50
	ld   e, l                                        ; $732c: $5d
	adc  h                                           ; $732d: $8c
	ld   [hl], l                                     ; $732e: $75
	sbc  [hl]                                        ; $732f: $9e
	inc  b                                           ; $7330: $04
	call nc, $2602                                   ; $7331: $d4 $02 $26
	ld   [hl], l                                     ; $7334: $75
	ld   h, a                                        ; $7335: $67
	ld   e, a                                        ; $7336: $5f
	ld   [hl], a                                     ; $7337: $77
	sbc  a                                           ; $7338: $9f
	dec  c                                           ; $7339: $0d
	nop                                              ; $733a: $00
	ld   a, [bc]                                     ; $733b: $0a
	dec  c                                           ; $733c: $0d
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	rrca                                             ; $733f: $0f
	nop                                              ; $7340: $00
	ld   bc, $0b0c                                   ; $7341: $01 $0c $0b
	ld   b, $6f                                      ; $7344: $06 $6f
	dec  c                                           ; $7346: $0d
	rlca                                             ; $7347: $07
	adc  d                                           ; $7348: $8a
	dec  c                                           ; $7349: $0d
	inc  bc                                          ; $734a: $03
	rst  $38                                         ; $734b: $ff
	ld   bc, $2003                                   ; $734c: $01 $03 $20
	nop                                              ; $734f: $00
	rlca                                             ; $7350: $07
	xor  l                                           ; $7351: $ad
	dec  c                                           ; $7352: $0d
	inc  bc                                          ; $7353: $03
	rst  $38                                         ; $7354: $ff
	ld   bc, $2002                                   ; $7355: $01 $02 $20
	nop                                              ; $7358: $00
	rlca                                             ; $7359: $07
	dec  e                                           ; $735a: $1d
	ld   c, $03                                      ; $735b: $0e $03
	rst  $38                                         ; $735d: $ff
	ld   bc, $2301                                   ; $735e: $01 $01 $23
	nop                                              ; $7361: $00
	inc  e                                           ; $7362: $1c
	ld   [bc], a                                     ; $7363: $02
	ld   bc, $1d01                                   ; $7364: $01 $01 $1d
	ld   b, b                                        ; $7367: $40
	ld   [de], a                                     ; $7368: $12
	inc  bc                                          ; $7369: $03
	ld   [de], a                                     ; $736a: $12
	ld   bc, $2803                                   ; $736b: $01 $03 $28
	nop                                              ; $736e: $00
	ld   bc, $7e67                                   ; $736f: $01 $67 $7e
	sub  a                                           ; $7372: $97
	ld   h, l                                        ; $7373: $65
	ld   d, d                                        ; $7374: $52
	ld   [hl], l                                     ; $7375: $75
	ld   h, a                                        ; $7376: $67
	sbc  l                                           ; $7377: $9d
	sbc  a                                           ; $7378: $9f
	dec  c                                           ; $7379: $0d
	ld   [$6300], sp                                 ; $737a: $08 $00 $63
	and  c                                           ; $737d: $a1
	sbc  a                                           ; $737e: $9f
	dec  c                                           ; $737f: $0d
	nop                                              ; $7380: $00
	ld   a, [bc]                                     ; $7381: $0a
	ld   b, $cb                                      ; $7382: $06 $cb
	dec  c                                           ; $7384: $0d
	inc  e                                           ; $7385: $1c
	ld   [bc], a                                     ; $7386: $02
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	dec  e                                           ; $7389: $1d
	ld   b, b                                        ; $738a: $40
	ld   [de], a                                     ; $738b: $12
	inc  bc                                          ; $738c: $03
	ld   [de], a                                     ; $738d: $12
	ld   bc, $2802                                   ; $738e: $01 $02 $28
	nop                                              ; $7391: $00
	ld   bc, $508c                                   ; $7392: $01 $8c $50
	adc  h                                           ; $7395: $8c
	ld   d, b                                        ; $7396: $50
	ld   [hl], l                                     ; $7397: $75
	ld   h, l                                        ; $7398: $65
	ld   l, l                                        ; $7399: $6d
	sbc  l                                           ; $739a: $9d
	ld   a, e                                        ; $739b: $7b
	sbc  a                                           ; $739c: $9f
	dec  c                                           ; $739d: $0d
	nop                                              ; $739e: $00
	ld   a, [bc]                                     ; $739f: $0a
	ld   b, $cb                                      ; $73a0: $06 $cb
	dec  c                                           ; $73a2: $0d
	ld   bc, $9750                                   ; $73a3: $01 $50 $97
	sbc  [hl]                                        ; $73a6: $9e
	sub  b                                           ; $73a7: $90
	ld   d, h                                        ; $73a8: $54
	ld   h, c                                        ; $73a9: $61
	and  c                                           ; $73aa: $a1
	ld   a, b                                        ; $73ab: $78
	inc  bc                                          ; $73ac: $03
	ld   l, a                                        ; $73ad: $6f
	ld   [bc], a                                     ; $73ae: $02
	xor  c                                           ; $73af: $a9
	sbc  a                                           ; $73b0: $9f
	dec  c                                           ; $73b1: $0d
	sbc  l                                           ; $73b2: $9d
	ld   l, l                                        ; $73b3: $6d
	ld   e, l                                        ; $73b4: $5d
	ld   h, l                                        ; $73b5: $65
	ld   [bc], a                                     ; $73b6: $02
	ld   a, a                                        ; $73b7: $7f
	ld   e, c                                        ; $73b8: $59
	ld   a, b                                        ; $73b9: $78
	ld   e, l                                        ; $73ba: $5d
	ld   l, a                                        ; $73bb: $6f
	sub  c                                           ; $73bc: $91
	sbc  a                                           ; $73bd: $9f
	dec  c                                           ; $73be: $0d
	nop                                              ; $73bf: $00
	ld   a, [bc]                                     ; $73c0: $0a
	ld   bc, $9003                                   ; $73c1: $01 $03 $90
	inc  bc                                          ; $73c4: $03
	cp   e                                           ; $73c5: $bb
	ld   h, a                                        ; $73c6: $67
	adc  l                                           ; $73c7: $8d
	sbc  d                                           ; $73c8: $9a
	dec  b                                           ; $73c9: $05
	inc  d                                           ; $73ca: $14
	dec  c                                           ; $73cb: $0d
	ld   e, b                                        ; $73cc: $58
	ld   d, d                                        ; $73cd: $52
	ld   h, l                                        ; $73ce: $65
	ld   d, d                                        ; $73cf: $52
	ld   [bc], a                                     ; $73d0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d1: $cf
	inc  bc                                          ; $73d2: $03
	jp   $047c                                       ; $73d3: $c3 $7c $04


	ld   b, l                                        ; $73d6: $45
	sbc  d                                           ; $73d7: $9a
	inc  b                                           ; $73d8: $04
	ld   a, b                                        ; $73d9: $78
	dec  c                                           ; $73da: $0d
	ld   h, l                                        ; $73db: $65
	ld   [hl], c                                     ; $73dc: $71
	ld   e, c                                        ; $73dd: $59
	sbc  b                                           ; $73de: $98
	ld   e, b                                        ; $73df: $58
	adc  d                                           ; $73e0: $8a
	ld   d, [hl]                                     ; $73e1: $56
	ld   [hl], h                                     ; $73e2: $74
	ld   e, b                                        ; $73e3: $58
	ld   e, e                                        ; $73e4: $5b
	ld   a, b                                        ; $73e5: $78
	ld   h, e                                        ; $73e6: $63
	ld   d, d                                        ; $73e7: $52
	sbc  a                                           ; $73e8: $9f
	dec  c                                           ; $73e9: $0d
	nop                                              ; $73ea: $00
	ld   a, [bc]                                     ; $73eb: $0a
	dec  c                                           ; $73ec: $0d
	nop                                              ; $73ed: $00
	nop                                              ; $73ee: $00
	rrca                                             ; $73ef: $0f
	nop                                              ; $73f0: $00
	ld   bc, $1e09                                   ; $73f1: $01 $09 $1e
	nop                                              ; $73f4: $00
	inc  e                                           ; $73f5: $1c
	ld   [bc], a                                     ; $73f6: $02
	rlca                                             ; $73f7: $07
	rlca                                             ; $73f8: $07
	dec  e                                           ; $73f9: $1d
	ld   b, b                                        ; $73fa: $40
	ld   [de], a                                     ; $73fb: $12
	inc  bc                                          ; $73fc: $03
	ld   [de], a                                     ; $73fd: $12
	ld   bc, $2902                                   ; $73fe: $01 $02 $29
	nop                                              ; $7401: $00
	ld   bc, $8a58                                   ; $7402: $01 $58 $8a
	ld   d, [hl]                                     ; $7405: $56
	sbc  c                                           ; $7406: $99
	ld   [bc], a                                     ; $7407: $02
	and  c                                           ; $7408: $a1
	sbc  [hl]                                        ; $7409: $9e
	ld   h, d                                        ; $740a: $62
	ld   h, h                                        ; $740b: $64
	ld   d, d                                        ; $740c: $52
	adc  h                                           ; $740d: $8c
	ld   h, a                                        ; $740e: $67
	ld   a, h                                        ; $740f: $7c
	ld   sp, hl                                      ; $7410: $f9
	dec  c                                           ; $7411: $0d
	nop                                              ; $7412: $00
	ld   a, [bc]                                     ; $7413: $0a
	dec  b                                           ; $7414: $05
	ld   b, b                                        ; $7415: $40
	ld   c, c                                        ; $7416: $49
	ld   [bc], a                                     ; $7417: $02
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	dec  b                                           ; $741a: $05
	ld   b, b                                        ; $741b: $40
	ld   c, a                                        ; $741c: $4f
	ld   bc, $0002                                   ; $741d: $01 $02 $00
	ld   bc, $9750                                   ; $7420: $01 $50 $97
	sbc  [hl]                                        ; $7423: $9e
	sub  b                                           ; $7424: $90
	ld   d, h                                        ; $7425: $54
	ld   h, c                                        ; $7426: $61
	and  c                                           ; $7427: $a1
	ld   a, b                                        ; $7428: $78
	inc  bc                                          ; $7429: $03
	ld   l, a                                        ; $742a: $6f
	ld   [bc], a                                     ; $742b: $02
	xor  c                                           ; $742c: $a9
	sbc  a                                           ; $742d: $9f
	dec  c                                           ; $742e: $0d
	sbc  l                                           ; $742f: $9d
	ld   l, l                                        ; $7430: $6d
	ld   e, l                                        ; $7431: $5d
	ld   h, l                                        ; $7432: $65
	ld   [bc], a                                     ; $7433: $02
	ld   a, a                                        ; $7434: $7f
	ld   e, c                                        ; $7435: $59
	ld   a, b                                        ; $7436: $78
	ld   e, l                                        ; $7437: $5d
	ld   l, a                                        ; $7438: $6f
	sub  c                                           ; $7439: $91
	sbc  a                                           ; $743a: $9f
	dec  c                                           ; $743b: $0d
	nop                                              ; $743c: $00
	ld   a, [bc]                                     ; $743d: $0a
	dec  c                                           ; $743e: $0d
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	rrca                                             ; $7441: $0f
	nop                                              ; $7442: $00
	ld   bc, $1e09                                   ; $7443: $01 $09 $1e
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	ld   c, $29                                      ; $7448: $0e $29
	rrca                                             ; $744a: $0f
	nop                                              ; $744b: $00
	ld   bc, $010d                                   ; $744c: $01 $0d $01
	inc  b                                           ; $744f: $04
	ld   [bc], a                                     ; $7450: $02
	dec  b                                           ; $7451: $05

Jump_05b_7452:
	add  b                                           ; $7452: $80
	jp   z, $0101                                    ; $7453: $ca $01 $01

	nop                                              ; $7456: $00
	ld   bc, $9a50                                   ; $7457: $01 $50 $9a
	sbc  [hl]                                        ; $745a: $9e
	ld   h, e                                        ; $745b: $63
	ld   e, l                                        ; $745c: $5d
	sub  a                                           ; $745d: $97
	ld   h, e                                        ; $745e: $63
	and  c                                           ; $745f: $a1
	rst  $38                                         ; $7460: $ff
	rst  $38                                         ; $7461: $ff
	dec  c                                           ; $7462: $0d
	inc  b                                           ; $7463: $04
	ld   c, c                                        ; $7464: $49

Jump_05b_7465:
	ld   h, l                                        ; $7465: $65
	ld   [hl], h                                     ; $7466: $74
	sbc  c                                           ; $7467: $99
	and  c                                           ; $7468: $a1
	ld   [hl], l                                     ; $7469: $75
	ld   h, a                                        ; $746a: $67
	ld   e, c                                        ; $746b: $59
	ld   sp, hl                                      ; $746c: $f9
	dec  c                                           ; $746d: $0d
	nop                                              ; $746e: $00
	ld   a, [bc]                                     ; $746f: $0a
	inc  e                                           ; $7470: $1c
	ld   bc, $0404                                   ; $7471: $01 $04 $04
	ld   bc, $0358                                   ; $7474: $01 $58 $03
	sub  e                                           ; $7477: $93
	sbc  b                                           ; $7478: $98
	and  b                                           ; $7479: $a0
	ld   h, e                                        ; $747a: $63
	ld   e, d                                        ; $747b: $5a
	ld   h, l                                        ; $747c: $65
	ld   [hl], h                                     ; $747d: $74
	sbc  c                                           ; $747e: $99
	and  c                                           ; $747f: $a1
	ld   [hl], l                                     ; $7480: $75
	ld   h, a                                        ; $7481: $67
	dec  c                                           ; $7482: $0d
	ld   e, a                                        ; $7483: $5f
	ld   [hl], a                                     ; $7484: $77
	rst  $38                                         ; $7485: $ff
	rst  $38                                         ; $7486: $ff
	dec  c                                           ; $7487: $0d
	nop                                              ; $7488: $00
	ld   a, [bc]                                     ; $7489: $0a
	rlca                                             ; $748a: $07
	ret                                              ; $748b: $c9


	nop                                              ; $748c: $00
	inc  b                                           ; $748d: $04
	add  b                                           ; $748e: $80
	ld   a, [bc]                                     ; $748f: $0a
	ld   bc, $2000                                   ; $7490: $01 $00 $20
	nop                                              ; $7493: $00
	rrca                                             ; $7494: $0f
	nop                                              ; $7495: $00
	ld   bc, $9001                                   ; $7496: $01 $01 $90
	ld   h, l                                        ; $7499: $65
	ld   e, c                                        ; $749a: $59
	ld   h, l                                        ; $749b: $65
	ld   [hl], h                                     ; $749c: $74
	sbc  [hl]                                        ; $749d: $9e
	ld   h, c                                        ; $749e: $61
	sbc  d                                           ; $749f: $9a
	ld   [hl], l                                     ; $74a0: $75
	ld   h, a                                        ; $74a1: $67
	ld   e, c                                        ; $74a2: $59
	ld   sp, hl                                      ; $74a3: $f9
	dec  c                                           ; $74a4: $0d
	nop                                              ; $74a5: $00
	ld   a, [bc]                                     ; $74a6: $0a
	db   $10                                         ; $74a7: $10
	ld   [$1c00], sp                                 ; $74a8: $08 $00 $1c
	ld   bc, $0303                                   ; $74ab: $01 $03 $03
	dec  e                                           ; $74ae: $1d
	ld   b, b                                        ; $74af: $40
	ld   de, $1103                                   ; $74b0: $11 $03 $11
	ld   bc, $2803                                   ; $74b3: $01 $03 $28
	nop                                              ; $74b6: $00
	ld   bc, $9a6b                                   ; $74b7: $01 $6b $9a
	ld   [hl], l                                     ; $74ba: $75
	ld   h, a                                        ; $74bb: $67
	ld   a, [$960d]                                  ; $74bc: $fa $0d $96
	ld   e, c                                        ; $74bf: $59
	ld   [hl], c                                     ; $74c0: $71
	ld   l, l                                        ; $74c1: $6d
	ld   [bc], a                                     ; $74c2: $02
	sub  l                                           ; $74c3: $95
	ld   [hl], d                                     ; $74c4: $72
	ld   e, c                                        ; $74c5: $59
	ld   [hl], c                                     ; $74c6: $71
	ld   [hl], h                                     ; $74c7: $74
	rst  $38                                         ; $74c8: $ff
	rst  $38                                         ; $74c9: $ff
	dec  c                                           ; $74ca: $0d
	nop                                              ; $74cb: $00
	ld   a, [bc]                                     ; $74cc: $0a
	inc  e                                           ; $74cd: $1c
	ld   bc, $0101                                   ; $74ce: $01 $01 $01
	ld   bc, $8f04                                   ; $74d1: $01 $04 $8f
	inc  b                                           ; $74d4: $04
	jr   @+$7b                                       ; $74d5: $18 $79

	inc  bc                                          ; $74d7: $03
	ld   e, e                                        ; $74d8: $5b
	ld   e, c                                        ; $74d9: $59
	sbc  b                                           ; $74da: $98
	adc  h                                           ; $74db: $8c
	ld   h, l                                        ; $74dc: $65
	ld   l, l                                        ; $74dd: $6d
	rst  $38                                         ; $74de: $ff
	rst  $38                                         ; $74df: $ff
	dec  c                                           ; $74e0: $0d
	ld   [$6300], sp                                 ; $74e1: $08 $00 $63
	and  c                                           ; $74e4: $a1
	ld   e, d                                        ; $74e5: $5a
	sbc  [hl]                                        ; $74e6: $9e
	inc  bc                                          ; $74e7: $03
	dec  l                                           ; $74e8: $2d
	ld   [hl], c                                     ; $74e9: $71
	ld   [hl], h                                     ; $74ea: $74
	dec  c                                           ; $74eb: $0d
	ld   e, l                                        ; $74ec: $5d
	sbc  d                                           ; $74ed: $9a
	ld   [hl], h                                     ; $74ee: $74
	ld   l, l                                        ; $74ef: $6d
	and  c                                           ; $74f0: $a1
	ld   [hl], l                                     ; $74f1: $75
	ld   h, a                                        ; $74f2: $67
	ld   a, e                                        ; $74f3: $7b
	sbc  a                                           ; $74f4: $9f
	dec  c                                           ; $74f5: $0d
	nop                                              ; $74f6: $00
	ld   a, [bc]                                     ; $74f7: $0a
	ld   bc, $9850                                   ; $74f8: $01 $50 $98
	ld   e, d                                        ; $74fb: $5a
	halt                                             ; $74fc: $76
	ld   d, h                                        ; $74fd: $54
	ld   h, d                                        ; $74fe: $62
	ld   h, h                                        ; $74ff: $64
	ld   d, d                                        ; $7500: $52
	adc  h                                           ; $7501: $8c
	ld   h, l                                        ; $7502: $65
	ld   l, l                                        ; $7503: $6d
	sbc  a                                           ; $7504: $9f
	dec  c                                           ; $7505: $0d
	nop                                              ; $7506: $00
	ld   a, [bc]                                     ; $7507: $0a
	dec  c                                           ; $7508: $0d
	nop                                              ; $7509: $00
	nop                                              ; $750a: $00
	rrca                                             ; $750b: $0f
	nop                                              ; $750c: $00
	ld   bc, $1e09                                   ; $750d: $01 $09 $1e
	nop                                              ; $7510: $00
	add  hl, de                                      ; $7511: $19
	dec  b                                           ; $7512: $05
	ld   [bc], a                                     ; $7513: $02
	ld   d, d                                        ; $7514: $52
	ld   [hl], c                                     ; $7515: $71
	ld   h, l                                        ; $7516: $65
	sub  l                                           ; $7517: $95
	ld   a, c                                        ; $7518: $79
	ld   h, e                                        ; $7519: $63
	ld   e, d                                        ; $751a: $5a
	ld   h, a                                        ; $751b: $67
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	dec  b                                           ; $751e: $05
	ld   d, $6f                                      ; $751f: $16 $6f
	ld   [bc], a                                     ; $7521: $02
	ld   d, e                                        ; $7522: $53
	sbc  c                                           ; $7523: $99
	nop                                              ; $7524: $00
	ld   bc, $f307                                   ; $7525: $01 $07 $f3
	nop                                              ; $7528: $00
	ld   [bc], a                                     ; $7529: $02
	inc  bc                                          ; $752a: $03
	ld   bc, $2000                                   ; $752b: $01 $00 $20
	nop                                              ; $752e: $00
	rlca                                             ; $752f: $07
	add  h                                           ; $7530: $84
	ld   bc, $0302                                   ; $7531: $01 $02 $03
	ld   bc, $2001                                   ; $7534: $01 $01 $20
	nop                                              ; $7537: $00
	ld   b, $c1                                      ; $7538: $06 $c1
	ld   bc, $000f                                   ; $753a: $01 $0f $00
	ld   bc, $5201                                   ; $753d: $01 $01 $52
	ld   [hl], c                                     ; $7540: $71
	ld   h, l                                        ; $7541: $65
	sub  l                                           ; $7542: $95
	ld   a, c                                        ; $7543: $79
	ld   h, e                                        ; $7544: $63
	ld   e, d                                        ; $7545: $5a
	ld   h, l                                        ; $7546: $65
	adc  h                                           ; $7547: $8c
	ld   h, a                                        ; $7548: $67
	sub  [hl]                                        ; $7549: $96
	sbc  a                                           ; $754a: $9f
	dec  c                                           ; $754b: $0d
	nop                                              ; $754c: $00
	ld   a, [bc]                                     ; $754d: $0a
	inc  e                                           ; $754e: $1c
	ld   bc, $0101                                   ; $754f: $01 $01 $01
	dec  e                                           ; $7552: $1d
	ld   b, b                                        ; $7553: $40
	ld   de, $1103                                   ; $7554: $11 $03 $11
	ld   bc, $2801                                   ; $7557: $01 $01 $28
	nop                                              ; $755a: $00
	ld   bc, $8d67                                   ; $755b: $01 $67 $8d
	adc  h                                           ; $755e: $8c
	ld   l, c                                        ; $755f: $69
	and  c                                           ; $7560: $a1
	rst  $38                                         ; $7561: $ff
	rst  $38                                         ; $7562: $ff
	dec  c                                           ; $7563: $0d
	nop                                              ; $7564: $00
	ld   a, [bc]                                     ; $7565: $0a
	dec  c                                           ; $7566: $0d
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	rrca                                             ; $7569: $0f
	nop                                              ; $756a: $00
	ld   bc, $0b0c                                   ; $756b: $01 $0c $0b
	dec  c                                           ; $756e: $0d
	ld   bc, $0f04                                   ; $756f: $01 $04 $0f
	nop                                              ; $7572: $00
	ld   bc, $5801                                   ; $7573: $01 $01 $58
	ld   e, c                                        ; $7576: $59
	ld   h, l                                        ; $7577: $65
	ld   d, d                                        ; $7578: $52
	ld   [hl], l                                     ; $7579: $75
	ld   h, a                                        ; $757a: $67
	ld   a, e                                        ; $757b: $7b
	rst  $38                                         ; $757c: $ff
	rst  $38                                         ; $757d: $ff
	dec  c                                           ; $757e: $0d
	ld   [hl], a                                     ; $757f: $77
	ld   h, c                                        ; $7580: $61
	ld   a, c                                        ; $7581: $79
	sub  b                                           ; $7582: $90
	ld   d, b                                        ; $7583: $50
	sbc  b                                           ; $7584: $98
	adc  h                                           ; $7585: $8c
	ld   l, c                                        ; $7586: $69
	and  c                                           ; $7587: $a1
	sub  [hl]                                        ; $7588: $96
	sbc  a                                           ; $7589: $9f
	dec  c                                           ; $758a: $0d
	nop                                              ; $758b: $00
	ld   a, [bc]                                     ; $758c: $0a
	rrca                                             ; $758d: $0f
	ld   bc, $0104                              ; $758e: $01 $04 $01
	ld   [bc], a                                     ; $7591: $02
	sbc  a                                           ; $7592: $9f
	ld   e, c                                        ; $7593: $59
	ld   a, c                                        ; $7594: $79
	ld   h, c                                        ; $7595: $61
	ld   h, c                                        ; $7596: $61
	ld   l, [hl]                                     ; $7597: $6e
	halt                                             ; $7598: $76
	dec  c                                           ; $7599: $0d
	dec  b                                           ; $759a: $05
	pop  de                                          ; $759b: $d1
	ld   [hl], c                                     ; $759c: $71
	ld   l, l                                        ; $759d: $6d
	and  c                                           ; $759e: $a1
	ld   [hl], l                                     ; $759f: $75
	ld   h, a                                        ; $75a0: $67
	ld   e, a                                        ; $75a1: $5f
	ld   [hl], a                                     ; $75a2: $77
	rst  $38                                         ; $75a3: $ff
	rst  $38                                         ; $75a4: $ff
	dec  c                                           ; $75a5: $0d
	nop                                              ; $75a6: $00
	ld   a, [bc]                                     ; $75a7: $0a
	ld   bc, $8d67                                   ; $75a8: $01 $67 $8d
	adc  h                                           ; $75ab: $8c
	ld   l, c                                        ; $75ac: $69
	and  c                                           ; $75ad: $a1
	rst  $38                                         ; $75ae: $ff
	rst  $38                                         ; $75af: $ff
	dec  c                                           ; $75b0: $0d
	ld   d, b                                        ; $75b1: $50
	ld   l, l                                        ; $75b2: $6d
	ld   h, l                                        ; $75b3: $65
	inc  b                                           ; $75b4: $04
	ld   e, $a0                                      ; $75b5: $1e $a0
	inc  b                                           ; $75b7: $04
	jr   jr_05b_7627                                 ; $75b8: $18 $6d

	ld   [hl], c                                     ; $75ba: $71
	ld   [hl], h                                     ; $75bb: $74
	adc  l                                           ; $75bc: $8d
	adc  h                                           ; $75bd: $8c
	ld   h, a                                        ; $75be: $67
	sbc  a                                           ; $75bf: $9f
	dec  c                                           ; $75c0: $0d
	nop                                              ; $75c1: $00
	ld   a, [bc]                                     ; $75c2: $0a
	dec  c                                           ; $75c3: $0d
	nop                                              ; $75c4: $00
	nop                                              ; $75c5: $00
	rrca                                             ; $75c6: $0f
	nop                                              ; $75c7: $00
	ld   bc, $1e09                                   ; $75c8: $01 $09 $1e
	nop                                              ; $75cb: $00
	rrca                                             ; $75cc: $0f
	nop                                              ; $75cd: $00
	ld   bc, $6b01                                   ; $75ce: $01 $01 $6b
	sbc  d                                           ; $75d1: $9a
	ld   h, [hl]                                     ; $75d2: $66
	sub  c                                           ; $75d3: $91
	ld   e, b                                        ; $75d4: $58
	ld   h, [hl]                                     ; $75d5: $66
	sub  c                                           ; $75d6: $91
	adc  h                                           ; $75d7: $8c
	and  b                                           ; $75d8: $a0
	ld   h, l                                        ; $75d9: $65
	ld   l, a                                        ; $75da: $6f
	sub  c                                           ; $75db: $91
	dec  c                                           ; $75dc: $0d
	ld   [bc], a                                     ; $75dd: $02
	jr   z, jr_05b_7632                              ; $75de: $28 $52

	ld   a, h                                        ; $75e0: $7c
	ld   [hl], l                                     ; $75e1: $75
	rst  $38                                         ; $75e2: $ff
	rst  $38                                         ; $75e3: $ff
	dec  c                                           ; $75e4: $0d
	nop                                              ; $75e5: $00
	ld   a, [bc]                                     ; $75e6: $0a
	inc  e                                           ; $75e7: $1c
	ld   bc, $0000                                   ; $75e8: $01 $00 $00
	ld   bc, $7c50                                   ; $75eb: $01 $50 $7c
	rst  $38                                         ; $75ee: $ff
	rst  $38                                         ; $75ef: $ff
	ld   [hl], a                                     ; $75f0: $77
	ld   h, c                                        ; $75f1: $61
	ld   e, c                                        ; $75f2: $59
	ld   [hl], l                                     ; $75f3: $75
	ld   [bc], a                                     ; $75f4: $02
	sub  l                                           ; $75f5: $95
	ld   e, c                                        ; $75f6: $59
	ld   e, a                                        ; $75f7: $5f
	ld   l, l                                        ; $75f8: $6d
	sub  a                                           ; $75f9: $97
	dec  c                                           ; $75fa: $0d
	ld   [bc], a                                     ; $75fb: $02
	ret  nc                                          ; $75fc: $d0

	ld   d, [hl]                                     ; $75fd: $56
	ld   [hl], h                                     ; $75fe: $74
	ld   [bc], a                                     ; $75ff: $02
	inc  [hl]                                        ; $7600: $34
	ld   h, e                                        ; $7601: $63
	ld   d, d                                        ; $7602: $52
	ld   a, e                                        ; $7603: $7b
	sbc  a                                           ; $7604: $9f
	dec  c                                           ; $7605: $0d
	nop                                              ; $7606: $00
	ld   a, [bc]                                     ; $7607: $0a
	nop                                              ; $7608: $00
	inc  e                                           ; $7609: $1c
	ld   bc, $0404                                   ; $760a: $01 $04 $04
	ld   bc, $7c50                                   ; $760d: $01 $50 $7c
	rst  $38                                         ; $7610: $ff
	rst  $38                                         ; $7611: $ff
	ld   [hl], a                                     ; $7612: $77
	ld   h, c                                        ; $7613: $61
	ld   e, c                                        ; $7614: $59
	ld   [hl], l                                     ; $7615: $75
	ld   [bc], a                                     ; $7616: $02
	sub  l                                           ; $7617: $95
	ld   e, c                                        ; $7618: $59
	ld   e, a                                        ; $7619: $5f
	ld   l, l                                        ; $761a: $6d
	sub  a                                           ; $761b: $97
	dec  c                                           ; $761c: $0d
	ld   [bc], a                                     ; $761d: $02
	ret  nc                                          ; $761e: $d0

	ld   d, [hl]                                     ; $761f: $56
	ld   [hl], h                                     ; $7620: $74
	ld   [bc], a                                     ; $7621: $02
	inc  [hl]                                        ; $7622: $34
	ld   h, e                                        ; $7623: $63
	ld   d, d                                        ; $7624: $52
	ld   a, e                                        ; $7625: $7b
	sbc  a                                           ; $7626: $9f

jr_05b_7627:
	dec  c                                           ; $7627: $0d
	nop                                              ; $7628: $00
	ld   a, [bc]                                     ; $7629: $0a
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	ld   c, $6f                                      ; $762c: $0e $6f
	inc  e                                           ; $762e: $1c
	ld   b, $00                                      ; $762f: $06 $00
	nop                                              ; $7631: $00

jr_05b_7632:
	ld   [bc], a                                     ; $7632: $02
	ld   bc, $5458                                   ; $7633: $01 $58 $54
	sbc  [hl]                                        ; $7636: $9e
	ld   [$9f00], sp                                 ; $7637: $08 $00 $9f
	dec  c                                           ; $763a: $0d
	ld   d, d                                        ; $763b: $52
	ld   d, d                                        ; $763c: $52
	halt                                             ; $763d: $76
	ld   h, c                                        ; $763e: $61
	sbc  e                                           ; $763f: $9b
	ld   a, c                                        ; $7640: $79
	dec  b                                           ; $7641: $05
	db   $10                                         ; $7642: $10
	ld   l, l                                        ; $7643: $6d
	ld   a, b                                        ; $7644: $78
	sbc  a                                           ; $7645: $9f
	dec  c                                           ; $7646: $0d
	ld   e, c                                        ; $7647: $59
	sbc  l                                           ; $7648: $9d
	sub  a                                           ; $7649: $97
	ld   [bc], a                                     ; $764a: $02
	halt                                             ; $764b: $76
	sub  a                                           ; $764c: $97
	ld   l, c                                        ; $764d: $69
	ld   [hl], h                                     ; $764e: $74
	sub  d                                           ; $764f: $92
	sbc  c                                           ; $7650: $99
	sub  [hl]                                        ; $7651: $96
	sbc  a                                           ; $7652: $9f
	dec  c                                           ; $7653: $0d
	nop                                              ; $7654: $00
	ld   a, [bc]                                     ; $7655: $0a
	inc  e                                           ; $7656: $1c
	ld   b, $01                                      ; $7657: $06 $01
	ld   bc, $ba01                                   ; $7659: $01 $01 $ba
	xor  h                                           ; $765c: $ac
	call nz, Call_05b_6776                           ; $765d: $c4 $76 $67
	sbc  c                                           ; $7660: $99
	ld   l, d                                        ; $7661: $6a
	ld   a, [$630d]                                  ; $7662: $fa $0d $63
	ld   d, b                                        ; $7665: $50
	sbc  [hl]                                        ; $7666: $9e
	sub  d                                           ; $7667: $92
	sbc  b                                           ; $7668: $98
	ld   a, b                                        ; $7669: $78
	ld   a, [$000d]                                  ; $766a: $fa $0d $00
	ld   a, [bc]                                     ; $766d: $0a
	add  hl, de                                      ; $766e: $19
	dec  b                                           ; $766f: $05
	inc  bc                                          ; $7670: $03
	ld   d, $04                                      ; $7671: $16 $04
	push bc                                          ; $7673: $c5
	ld   [bc], a                                     ; $7674: $02
	halt                                             ; $7675: $76
	sbc  d                                           ; $7676: $9a
	ld   l, l                                        ; $7677: $6d
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	inc  de                                          ; $767a: $13
	ld   de, $c504                                   ; $767b: $11 $04 $c5
	ld   [bc], a                                     ; $767e: $02
	halt                                             ; $767f: $76
	sbc  b                                           ; $7680: $98
	ld   l, l                                        ; $7681: $6d
	ld   e, c                                        ; $7682: $59
	ld   [hl], c                                     ; $7683: $71
	ld   l, l                                        ; $7684: $6d
	nop                                              ; $7685: $00
	ld   bc, $0419                                   ; $7686: $01 $19 $04
	push bc                                          ; $7689: $c5
	ld   [bc], a                                     ; $768a: $02
	halt                                             ; $768b: $76
	sbc  d                                           ; $768c: $9a
	ld   [hl], h                                     ; $768d: $74
	sub  [hl]                                        ; $768e: $96
	ld   e, c                                        ; $768f: $59
	ld   [hl], c                                     ; $7690: $71
	ld   l, l                                        ; $7691: $6d
	nop                                              ; $7692: $00
	ld   [bc], a                                     ; $7693: $02
	rlca                                             ; $7694: $07
	add  [hl]                                        ; $7695: $86
	nop                                              ; $7696: $00
	ld   [bc], a                                     ; $7697: $02
	inc  bc                                          ; $7698: $03
	ld   bc, $2000                                   ; $7699: $01 $00 $20
	nop                                              ; $769c: $00
	rlca                                             ; $769d: $07
	cp   d                                           ; $769e: $ba
	nop                                              ; $769f: $00
	ld   [bc], a                                     ; $76a0: $02
	inc  bc                                          ; $76a1: $03
	ld   bc, $2001                                   ; $76a2: $01 $01 $20
	nop                                              ; $76a5: $00
	rlca                                             ; $76a6: $07
	inc  bc                                          ; $76a7: $03
	ld   bc, $0302                                   ; $76a8: $01 $02 $03
	ld   bc, $2002                                   ; $76ab: $01 $02 $20
	nop                                              ; $76ae: $00
	ld   b, $3e                                      ; $76af: $06 $3e
	ld   bc, $061c                                   ; $76b1: $01 $1c $06
	inc  bc                                          ; $76b4: $03
	inc  bc                                          ; $76b5: $03
	dec  e                                           ; $76b6: $1d
	ld   b, b                                        ; $76b7: $40
	ld   d, $03                                      ; $76b8: $16 $03
	ld   d, $01                                      ; $76ba: $16 $01
	ld   bc, $0028                                   ; $76bc: $01 $28 $00
	ld   bc, $7158                                   ; $76bf: $01 $58 $71
	ld   a, [$1610]                                  ; $76c2: $fa $10 $16
	inc  b                                           ; $76c5: $04
	push bc                                          ; $76c6: $c5
	ld   e, c                                        ; $76c7: $59
	sbc  a                                           ; $76c8: $9f
	dec  c                                           ; $76c9: $0d
	adc  h                                           ; $76ca: $8c
	ld   d, b                                        ; $76cb: $50
	sbc  [hl]                                        ; $76cc: $9e
	adc  h                                           ; $76cd: $8c
	ld   d, b                                        ; $76ce: $50
	ld   [hl], c                                     ; $76cf: $71
	ld   [hl], h                                     ; $76d0: $74
	halt                                             ; $76d1: $76
	ld   h, c                                        ; $76d2: $61
	ld   e, c                                        ; $76d3: $59
	sbc  a                                           ; $76d4: $9f
	dec  c                                           ; $76d5: $0d
	ld   h, [hl]                                     ; $76d6: $66
	sub  c                                           ; $76d7: $91
	ld   d, b                                        ; $76d8: $50
	sbc  [hl]                                        ; $76d9: $9e
	sub  b                                           ; $76da: $90
	ld   d, h                                        ; $76db: $54
	ld   [de], a                                     ; $76dc: $12
	ld   [bc], a                                     ; $76dd: $02
	sub  e                                           ; $76de: $93
	sbc  a                                           ; $76df: $9f
	dec  c                                           ; $76e0: $0d
	nop                                              ; $76e1: $00
	ld   a, [bc]                                     ; $76e2: $0a
	ld   b, $71                                      ; $76e3: $06 $71
	ld   bc, $061c                                   ; $76e5: $01 $1c $06
	dec  b                                           ; $76e8: $05
	dec  b                                           ; $76e9: $05
	ld   bc, $9850                                   ; $76ea: $01 $50 $98
	sub  c                                           ; $76ed: $91
	ei                                               ; $76ee: $fb
	sbc  [hl]                                        ; $76ef: $9e
	inc  de                                          ; $76f0: $13
	ld   de, $c504                                   ; $76f1: $11 $04 $c5
	ld   e, l                                        ; $76f4: $5d
	sub  a                                           ; $76f5: $97
	ld   d, d                                        ; $76f6: $52
	dec  c                                           ; $76f7: $0d
	ld   [bc], a                                     ; $76f8: $02
	halt                                             ; $76f9: $76
	sbc  b                                           ; $76fa: $98
	ld   l, e                                        ; $76fb: $6b
	ld   d, h                                        ; $76fc: $54
	ld   a, b                                        ; $76fd: $78
	sbc  [hl]                                        ; $76fe: $9e
	ld   d, d                                        ; $76ff: $52
	ld   e, e                                        ; $7700: $5b
	ld   e, b                                        ; $7701: $58
	ld   d, d                                        ; $7702: $52
	ld   l, [hl]                                     ; $7703: $6e
	ld   [hl], c                                     ; $7704: $71
	ld   l, l                                        ; $7705: $6d
	dec  c                                           ; $7706: $0d
	ld   a, h                                        ; $7707: $7c
	ld   a, c                                        ; $7708: $79
	inc  de                                          ; $7709: $13
	inc  b                                           ; $770a: $04
	push bc                                          ; $770b: $c5
	ld   h, l                                        ; $770c: $65
	ld   e, c                                        ; $770d: $59
	ld   [bc], a                                     ; $770e: $02
	halt                                             ; $770f: $76
	sbc  d                                           ; $7710: $9a
	ld   [hl], h                                     ; $7711: $74
	ld   a, b                                        ; $7712: $78
	ld   d, d                                        ; $7713: $52
	ld   l, d                                        ; $7714: $6a
	sbc  a                                           ; $7715: $9f
	dec  c                                           ; $7716: $0d
	nop                                              ; $7717: $00
	ld   a, [bc]                                     ; $7718: $0a
	inc  e                                           ; $7719: $1c
	ld   b, $00                                      ; $771a: $06 $00
	nop                                              ; $771c: $00
	ld   bc, $9166                                   ; $771d: $01 $66 $91
	ld   d, b                                        ; $7720: $50
	sbc  [hl]                                        ; $7721: $9e
	sub  b                                           ; $7722: $90
	ld   d, h                                        ; $7723: $54
	ld   [de], a                                     ; $7724: $12
	ld   [bc], a                                     ; $7725: $02
	sub  e                                           ; $7726: $93
	ld   l, [hl]                                     ; $7727: $6e
	sbc  a                                           ; $7728: $9f
	dec  c                                           ; $7729: $0d
	nop                                              ; $772a: $00
	ld   a, [bc]                                     ; $772b: $0a
	ld   b, $71                                      ; $772c: $06 $71
	ld   bc, $061c                                   ; $772e: $01 $1c $06
	ld   bc, $1d01                                   ; $7731: $01 $01 $1d
	ld   b, b                                        ; $7734: $40
	ld   d, $03                                      ; $7735: $16 $03
	ld   d, $01                                      ; $7737: $16 $01
	ld   [bc], a                                     ; $7739: $02
	jr   z, jr_05b_773c                              ; $773a: $28 $00

jr_05b_773c:
	ld   bc, $7158                                   ; $773c: $01 $58 $71
	ld   a, [$1910]                                  ; $773f: $fa $10 $19
	inc  b                                           ; $7742: $04
	push bc                                          ; $7743: $c5
	sub  b                                           ; $7744: $90
	ld   [bc], a                                     ; $7745: $02
	halt                                             ; $7746: $76
	sbc  c                                           ; $7747: $99
	halt                                             ; $7748: $76
	ld   a, l                                        ; $7749: $7d
	dec  c                                           ; $774a: $0d
	ld   a, b                                        ; $774b: $78
	ld   e, c                                        ; $774c: $59
	ld   a, b                                        ; $774d: $78
	ld   e, c                                        ; $774e: $59
	sub  d                                           ; $774f: $92
	sbc  c                                           ; $7750: $99
	ld   h, [hl]                                     ; $7751: $66
	sub  c                                           ; $7752: $91
	and  c                                           ; $7753: $a1
	sbc  a                                           ; $7754: $9f
	dec  c                                           ; $7755: $0d
	sub  [hl]                                        ; $7756: $96
	ld   h, l                                        ; $7757: $65
	sbc  [hl]                                        ; $7758: $9e
	sub  b                                           ; $7759: $90
	ld   d, h                                        ; $775a: $54
	ld   [de], a                                     ; $775b: $12
	ld   [bc], a                                     ; $775c: $02
	sub  e                                           ; $775d: $93
	sub  d                                           ; $775e: $92
	ld   [hl], c                                     ; $775f: $71
	ld   [hl], h                                     ; $7760: $74
	adc  l                                           ; $7761: $8d
	ld   a, b                                        ; $7762: $78
	sbc  a                                           ; $7763: $9f
	dec  c                                           ; $7764: $0d
	nop                                              ; $7765: $00
	ld   a, [bc]                                     ; $7766: $0a
	ld   b, $71                                      ; $7767: $06 $71
	ld   bc, $061c                                   ; $7769: $01 $1c $06
	ld   [bc], a                                     ; $776c: $02
	ld   [bc], a                                     ; $776d: $02
	dec  e                                           ; $776e: $1d
	ld   b, b                                        ; $776f: $40
	ld   d, $03                                      ; $7770: $16 $03
	ld   d, $01                                      ; $7772: $16 $01
	ld   [bc], a                                     ; $7774: $02
	add  hl, hl                                      ; $7775: $29
	nop                                              ; $7776: $00
	ld   bc, $a178                                   ; $7777: $01 $78 $a1
	ld   l, [hl]                                     ; $777a: $6e
	sub  [hl]                                        ; $777b: $96
	sbc  [hl]                                        ; $777c: $9e
	ld   h, c                                        ; $777d: $61
	and  c                                           ; $777e: $a1
	ld   a, b                                        ; $777f: $78
	ld   e, c                                        ; $7780: $59
	sbc  l                                           ; $7781: $9d
	sub  a                                           ; $7782: $97
	ld   e, [hl]                                     ; $7783: $5e
	sub  a                                           ; $7784: $97
	ld   d, d                                        ; $7785: $52
	dec  c                                           ; $7786: $0d
	ld   [hl], l                                     ; $7787: $75
	call nc, $a1d4                                   ; $7788: $d4 $d4 $a1
	ld   a, b                                        ; $778b: $78
	sub  [hl]                                        ; $778c: $96
	ld   a, b                                        ; $778d: $78
	sbc  a                                           ; $778e: $9f
	dec  c                                           ; $778f: $0d
	sub  b                                           ; $7790: $90
	ld   d, h                                        ; $7791: $54
	ld   d, d                                        ; $7792: $52
	ld   d, d                                        ; $7793: $52
	sbc  [hl]                                        ; $7794: $9e
	ld   d, d                                        ; $7795: $52
	ld   e, a                                        ; $7796: $5f
	sub  [hl]                                        ; $7797: $96
	sbc  a                                           ; $7798: $9f
	dec  c                                           ; $7799: $0d
	nop                                              ; $779a: $00
	ld   a, [bc]                                     ; $779b: $0a
	nop                                              ; $779c: $00
	add  hl, de                                      ; $779d: $19
	dec  b                                           ; $779e: $05
	inc  bc                                          ; $779f: $03
	add  hl, de                                      ; $77a0: $19
	inc  b                                           ; $77a1: $04
	push bc                                          ; $77a2: $c5
	ld   [bc], a                                     ; $77a3: $02
	halt                                             ; $77a4: $76
	ld   [hl], c                                     ; $77a5: $71
	ld   [hl], h                                     ; $77a6: $74
	or   h                                           ; $77a7: $b4
	rst  $10                                         ; $77a8: $d7
	cp   b                                           ; $77a9: $b8
	ld   d, d                                        ; $77aa: $52
	ld   l, l                                        ; $77ab: $6d
	adc  a                                           ; $77ac: $8f
	ld   l, l                                        ; $77ad: $6d
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00
	ld   [de], a                                     ; $77b0: $12
	ld   de, $c504                                   ; $77b1: $11 $04 $c5
	ld   [bc], a                                     ; $77b4: $02
	halt                                             ; $77b5: $76
	sbc  d                                           ; $77b6: $9a
	ld   [hl], h                                     ; $77b7: $74
	sub  [hl]                                        ; $77b8: $96
	ld   e, c                                        ; $77b9: $59
	ld   [hl], c                                     ; $77ba: $71
	ld   l, l                                        ; $77bb: $6d
	nop                                              ; $77bc: $00
	ld   bc, $0415                                   ; $77bd: $01 $15 $04
	push bc                                          ; $77c0: $c5
	ld   [bc], a                                     ; $77c1: $02
	halt                                             ; $77c2: $76
	sbc  d                                           ; $77c3: $9a
	ld   l, l                                        ; $77c4: $6d
	nop                                              ; $77c5: $00
	ld   [bc], a                                     ; $77c6: $02
	rlca                                             ; $77c7: $07
	cp   c                                           ; $77c8: $b9
	ld   bc, $0302                                   ; $77c9: $01 $02 $03
	ld   bc, $2000                                   ; $77cc: $01 $00 $20
	nop                                              ; $77cf: $00
	rlca                                             ; $77d0: $07
	ld   [de], a                                     ; $77d1: $12
	ld   [bc], a                                     ; $77d2: $02
	ld   [bc], a                                     ; $77d3: $02
	inc  bc                                          ; $77d4: $03
	ld   bc, $2001                                   ; $77d5: $01 $01 $20
	nop                                              ; $77d8: $00
	rlca                                             ; $77d9: $07
	ld   c, d                                        ; $77da: $4a
	ld   [bc], a                                     ; $77db: $02
	ld   [bc], a                                     ; $77dc: $02
	inc  bc                                          ; $77dd: $03
	ld   bc, $2002                                   ; $77de: $01 $02 $20
	nop                                              ; $77e1: $00
	ld   b, $3e                                      ; $77e2: $06 $3e
	ld   bc, $061c                                   ; $77e4: $01 $1c $06
	dec  b                                           ; $77e7: $05
	dec  b                                           ; $77e8: $05
	ld   bc, $9850                                   ; $77e9: $01 $50 $98
	sub  c                                           ; $77ec: $91
	sbc  b                                           ; $77ed: $98
	sub  c                                           ; $77ee: $91
	rst  $38                                         ; $77ef: $ff
	rst  $38                                         ; $77f0: $ff
	dec  c                                           ; $77f1: $0d
	ld   [$9e00], sp                                 ; $77f2: $08 $00 $9e
	ld   e, b                                        ; $77f5: $58
	inc  bc                                          ; $77f6: $03
	ld   c, a                                        ; $77f7: $4f
	or   h                                           ; $77f8: $b4
	rst  $10                                         ; $77f9: $d7
	cp   b                                           ; $77fa: $b8
	dec  c                                           ; $77fb: $0d
	ld   d, d                                        ; $77fc: $52
	ld   l, l                                        ; $77fd: $6d
	adc  a                                           ; $77fe: $8f
	ld   [hl], h                                     ; $77ff: $74
	sbc  c                                           ; $7800: $99
	ld   h, [hl]                                     ; $7801: $66
	sub  c                                           ; $7802: $91
	ld   a, b                                        ; $7803: $78
	ld   d, d                                        ; $7804: $52
	ld   e, c                                        ; $7805: $59
	sbc  a                                           ; $7806: $9f
	dec  c                                           ; $7807: $0d
	nop                                              ; $7808: $00
	ld   a, [bc]                                     ; $7809: $0a
	inc  e                                           ; $780a: $1c
	ld   b, $00                                      ; $780b: $06 $00
	nop                                              ; $780d: $00
	ld   bc, $9861                                   ; $780e: $01 $61 $98
	sub  c                                           ; $7811: $91
	sbc  [hl]                                        ; $7812: $9e
	sub  d                                           ; $7813: $92
	adc  a                                           ; $7814: $8f
	ld   l, l                                        ; $7815: $6d
	inc  b                                           ; $7816: $04
	ld   a, b                                        ; $7817: $78
	ld   e, d                                        ; $7818: $5a
	ld   d, d                                        ; $7819: $52
	ld   d, d                                        ; $781a: $52
	ld   a, b                                        ; $781b: $78
	sbc  a                                           ; $781c: $9f
	dec  c                                           ; $781d: $0d
	ld   [hl], l                                     ; $781e: $75
	sub  b                                           ; $781f: $90
	sbc  [hl]                                        ; $7820: $9e
	ld   [bc], a                                     ; $7821: $02
	ld   [hl], $05                                   ; $7822: $36 $05
	pop  bc                                          ; $7824: $c1
	ld   l, [hl]                                     ; $7825: $6e
	ld   e, c                                        ; $7826: $59
	sub  a                                           ; $7827: $97
	ld   h, a                                        ; $7828: $67
	ld   e, [hl]                                     ; $7829: $5e
	inc  bc                                          ; $782a: $03
	ld   sp, hl                                      ; $782b: $f9
	sbc  c                                           ; $782c: $99
	sub  [hl]                                        ; $782d: $96
	sbc  a                                           ; $782e: $9f
	dec  c                                           ; $782f: $0d
	ld   h, [hl]                                     ; $7830: $66
	sub  c                                           ; $7831: $91
	sbc  [hl]                                        ; $7832: $9e
	ld   e, b                                        ; $7833: $58
	ld   l, [hl]                                     ; $7834: $6e
	ld   d, d                                        ; $7835: $52
	ld   h, [hl]                                     ; $7836: $66
	ld   a, c                                        ; $7837: $79
	ld   a, b                                        ; $7838: $78
	sbc  a                                           ; $7839: $9f
	dec  c                                           ; $783a: $0d
	nop                                              ; $783b: $00
	ld   a, [bc]                                     ; $783c: $0a
	nop                                              ; $783d: $00
	inc  e                                           ; $783e: $1c
	ld   b, $01                                      ; $783f: $06 $01
	ld   bc, $401d                                   ; $7841: $01 $1d $40
	ld   d, $03                                      ; $7844: $16 $03
	ld   d, $01                                      ; $7846: $16 $01
	inc  bc                                          ; $7848: $03
	jr   z, jr_05b_784b                              ; $7849: $28 $00

jr_05b_784b:
	ld   bc, $5858                                   ; $784b: $01 $58 $58
	sbc  [hl]                                        ; $784e: $9e
	ld   [de], a                                     ; $784f: $12
	ld   de, $c504                                   ; $7850: $11 $04 $c5
	sub  b                                           ; $7853: $90
	ld   [bc], a                                     ; $7854: $02
	halt                                             ; $7855: $76
	sbc  b                                           ; $7856: $98
	sub  d                                           ; $7857: $92
	ld   e, d                                        ; $7858: $5a
	ld   [hl], c                                     ; $7859: $71

Jump_05b_785a:
	ld   l, l                                        ; $785a: $6d
	sbc  a                                           ; $785b: $9f
	dec  c                                           ; $785c: $0d
	ld   h, a                                        ; $785d: $67
	ld   h, d                                        ; $785e: $62
	ld   d, d                                        ; $785f: $52
	ld   a, b                                        ; $7860: $78
	sbc  [hl]                                        ; $7861: $9e
	ld   [$9f00], sp                                 ; $7862: $08 $00 $9f
	dec  c                                           ; $7865: $0d
	sub  [hl]                                        ; $7866: $96
	ld   h, l                                        ; $7867: $65
	sbc  [hl]                                        ; $7868: $9e
	db   $eb                                         ; $7869: $eb
	cp   d                                           ; $786a: $ba
	ret                                              ; $786b: $c9


	ld   [de], a                                     ; $786c: $12
	ld   [bc], a                                     ; $786d: $02
	sub  e                                           ; $786e: $93
	sbc  a                                           ; $786f: $9f
	dec  c                                           ; $7870: $0d
	nop                                              ; $7871: $00
	ld   a, [bc]                                     ; $7872: $0a
	ld   b, $71                                      ; $7873: $06 $71
	ld   [bc], a                                     ; $7875: $02
	inc  e                                           ; $7876: $1c
	ld   b, $05                                      ; $7877: $06 $05
	dec  b                                           ; $7879: $05
	ld   bc, $a178                                   ; $787a: $01 $78 $a1
	ld   l, [hl]                                     ; $787d: $6e
	sbc  [hl]                                        ; $787e: $9e
	dec  d                                           ; $787f: $15
	inc  b                                           ; $7880: $04
	push bc                                          ; $7881: $c5
	ld   e, c                                        ; $7882: $59
	sub  [hl]                                        ; $7883: $96
	sbc  a                                           ; $7884: $9f
	dec  c                                           ; $7885: $0d
	and  c                                           ; $7886: $a1
	ld   h, [hl]                                     ; $7887: $66
	sub  c                                           ; $7888: $91
	sbc  [hl]                                        ; $7889: $9e
	db   $eb                                         ; $788a: $eb
	cp   d                                           ; $788b: $ba
	ret                                              ; $788c: $c9


	ld   [de], a                                     ; $788d: $12
	ld   [bc], a                                     ; $788e: $02
	sub  e                                           ; $788f: $93
	dec  c                                           ; $7890: $0d
	ld   e, d                                        ; $7891: $5a
	and  c                                           ; $7892: $a1
	ld   a, [hl]                                     ; $7893: $7e
	sbc  d                                           ; $7894: $9a
	sub  [hl]                                        ; $7895: $96
	sbc  a                                           ; $7896: $9f
	dec  c                                           ; $7897: $0d
	nop                                              ; $7898: $00
	ld   a, [bc]                                     ; $7899: $0a
	ld   b, $71                                      ; $789a: $06 $71
	ld   [bc], a                                     ; $789c: $02
	add  hl, de                                      ; $789d: $19
	dec  b                                           ; $789e: $05
	inc  bc                                          ; $789f: $03
	ld   [de], a                                     ; $78a0: $12
	ld   d, $04                                      ; $78a1: $16 $04
	push bc                                          ; $78a3: $c5
	ld   [bc], a                                     ; $78a4: $02
	halt                                             ; $78a5: $76
	ld   [hl], c                                     ; $78a6: $71
	ld   [hl], h                                     ; $78a7: $74
	or   h                                           ; $78a8: $b4
	rst  $10                                         ; $78a9: $d7
	cp   b                                           ; $78aa: $b8
	ld   d, d                                        ; $78ab: $52
	ld   l, l                                        ; $78ac: $6d
	adc  a                                           ; $78ad: $8f
	ld   l, l                                        ; $78ae: $6d
	nop                                              ; $78af: $00
	nop                                              ; $78b0: $00
	ld   a, [de]                                     ; $78b1: $1a
	inc  b                                           ; $78b2: $04
	push bc                                          ; $78b3: $c5
	ld   [bc], a                                     ; $78b4: $02
	halt                                             ; $78b5: $76
	sbc  b                                           ; $78b6: $98
	ld   l, l                                        ; $78b7: $6d
	ld   e, c                                        ; $78b8: $59
	ld   [hl], c                                     ; $78b9: $71
	ld   l, l                                        ; $78ba: $6d
	nop                                              ; $78bb: $00
	ld   bc, $1612                                   ; $78bc: $01 $12 $16
	inc  b                                           ; $78bf: $04
	push bc                                          ; $78c0: $c5
	ld   [bc], a                                     ; $78c1: $02
	halt                                             ; $78c2: $76
	sbc  d                                           ; $78c3: $9a
	ld   l, l                                        ; $78c4: $6d
	nop                                              ; $78c5: $00
	ld   [bc], a                                     ; $78c6: $02
	rlca                                             ; $78c7: $07
	cp   c                                           ; $78c8: $b9
	ld   bc, $0302                                   ; $78c9: $01 $02 $03
	ld   bc, $2000                                   ; $78cc: $01 $00 $20
	nop                                              ; $78cf: $00
	rlca                                             ; $78d0: $07
	cp   c                                           ; $78d1: $b9
	ld   [bc], a                                     ; $78d2: $02
	ld   [bc], a                                     ; $78d3: $02
	inc  bc                                          ; $78d4: $03
	ld   bc, $2001                                   ; $78d5: $01 $01 $20
	nop                                              ; $78d8: $00
	rlca                                             ; $78d9: $07
	jp   hl                                          ; $78da: $e9


	ld   [bc], a                                     ; $78db: $02
	ld   [bc], a                                     ; $78dc: $02
	inc  bc                                          ; $78dd: $03
	ld   bc, $2002                                   ; $78de: $01 $02 $20
	nop                                              ; $78e1: $00
	ld   b, $3e                                      ; $78e2: $06 $3e
	ld   bc, $061c                                   ; $78e4: $01 $1c $06
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	dec  e                                           ; $78e9: $1d
	ld   b, b                                        ; $78ea: $40
	ld   d, $03                                      ; $78eb: $16 $03
	ld   d, $01                                      ; $78ed: $16 $01
	ld   [bc], a                                     ; $78ef: $02
	jr   z, jr_05b_78f2                              ; $78f0: $28 $00

jr_05b_78f2:
	ld   bc, $7158                                   ; $78f2: $01 $58 $71
	sbc  [hl]                                        ; $78f5: $9e
	ld   a, [de]                                     ; $78f6: $1a
	inc  b                                           ; $78f7: $04
	push bc                                          ; $78f8: $c5
	ld   sp, hl                                      ; $78f9: $f9
	dec  c                                           ; $78fa: $0d
	rst  $38                                         ; $78fb: $ff
	rst  $38                                         ; $78fc: $ff
	ld   e, b                                        ; $78fd: $58
	ld   h, l                                        ; $78fe: $65
	ld   d, d                                        ; $78ff: $52
	ld   a, b                                        ; $7900: $78
	sbc  [hl]                                        ; $7901: $9e
	jr   jr_05b_7908                                 ; $7902: $18 $04

	push bc                                          ; $7904: $c5
	ld   l, [hl]                                     ; $7905: $6e
	sbc  a                                           ; $7906: $9f
	dec  c                                           ; $7907: $0d

jr_05b_7908:
	adc  h                                           ; $7908: $8c
	ld   l, b                                        ; $7909: $68
	adc  h                                           ; $790a: $8c
	ld   l, b                                        ; $790b: $68
	ld   e, c                                        ; $790c: $59
	ld   a, b                                        ; $790d: $78
	sbc  a                                           ; $790e: $9f
	dec  c                                           ; $790f: $0d
	nop                                              ; $7910: $00
	ld   a, [bc]                                     ; $7911: $0a
	ld   b, $17                                      ; $7912: $06 $17
	inc  bc                                          ; $7914: $03
	inc  e                                           ; $7915: $1c
	ld   b, $07                                      ; $7916: $06 $07
	rlca                                             ; $7918: $07
	dec  e                                           ; $7919: $1d
	ld   b, b                                        ; $791a: $40
	ld   d, $03                                      ; $791b: $16 $03
	ld   d, $01                                      ; $791d: $16 $01
	inc  bc                                          ; $791f: $03
	jr   z, jr_05b_7922                              ; $7920: $28 $00

jr_05b_7922:
	ld   bc, $6267                                   ; $7922: $01 $67 $62
	ld   d, d                                        ; $7925: $52
	ld   l, d                                        ; $7926: $6a
	ld   a, [$120d]                                  ; $7927: $fa $0d $12
	ld   d, $04                                      ; $792a: $16 $04
	push bc                                          ; $792c: $c5
	sub  b                                           ; $792d: $90
	ld   [bc], a                                     ; $792e: $02
	halt                                             ; $792f: $76
	sbc  d                                           ; $7930: $9a
	ld   [hl], h                                     ; $7931: $74
	sbc  c                                           ; $7932: $99
	sbc  a                                           ; $7933: $9f
	dec  c                                           ; $7934: $0d
	sub  d                                           ; $7935: $92
	sbc  c                                           ; $7936: $99
	ld   a, b                                        ; $7937: $78
	ei                                               ; $7938: $fb
	sbc  [hl]                                        ; $7939: $9e
	ld   [$9f00], sp                                 ; $793a: $08 $00 $9f
	dec  c                                           ; $793d: $0d
	nop                                              ; $793e: $00
	ld   a, [bc]                                     ; $793f: $0a
	ld   b, $17                                      ; $7940: $06 $17
	inc  bc                                          ; $7942: $03
	inc  e                                           ; $7943: $1c
	ld   b, $01                                      ; $7944: $06 $01
	ld   bc, $7701                                   ; $7946: $01 $01 $77
	ld   d, h                                        ; $7949: $54
	ld   l, [hl]                                     ; $794a: $6e
	ld   d, d                                        ; $794b: $52
	sbc  a                                           ; $794c: $9f
	cp   d                                           ; $794d: $ba
	xor  h                                           ; $794e: $ac
	call nz, Call_05b_6776                           ; $794f: $c4 $76 $67
	sbc  c                                           ; $7952: $99
	ld   l, [hl]                                     ; $7953: $6e
	sbc  e                                           ; $7954: $9b
	sbc  a                                           ; $7955: $9f
	dec  c                                           ; $7956: $0d
	adc  h                                           ; $7957: $8c
	ld   l, l                                        ; $7958: $6d
	ld   [bc], a                                     ; $7959: $02
	ld   e, b                                        ; $795a: $58
	ld   [bc], a                                     ; $795b: $02
	add  [hl]                                        ; $795c: $86
	ld   e, d                                        ; $795d: $5a
	ld   d, b                                        ; $795e: $50
	ld   [hl], c                                     ; $795f: $71
	ld   l, l                                        ; $7960: $6d
	sub  a                                           ; $7961: $97
	dec  c                                           ; $7962: $0d
	ld   [bc], a                                     ; $7963: $02
	halt                                             ; $7964: $76
	sub  a                                           ; $7965: $97
	ld   l, c                                        ; $7966: $69
	ld   [hl], h                                     ; $7967: $74
	sub  d                                           ; $7968: $92
	sbc  c                                           ; $7969: $99
	sub  [hl]                                        ; $796a: $96
	sbc  a                                           ; $796b: $9f
	ld   h, [hl]                                     ; $796c: $66
	sub  c                                           ; $796d: $91
	ld   d, b                                        ; $796e: $50
	ld   a, b                                        ; $796f: $78
	sbc  a                                           ; $7970: $9f
	dec  c                                           ; $7971: $0d
	nop                                              ; $7972: $00
	ld   a, [bc]                                     ; $7973: $0a
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	ld   c, $2f                                      ; $7976: $0e $2f
	ld   [bc], a                                     ; $7978: $02
	inc  e                                           ; $7979: $1c
	dec  c                                           ; $797a: $0d
	ld   bc, $0101                                   ; $797b: $01 $01 $01
	ld   d, b                                        ; $797e: $50
	sub  a                                           ; $797f: $97
	sbc  [hl]                                        ; $7980: $9e
	ld   [$5d00], sp                                 ; $7981: $08 $00 $5d
	and  c                                           ; $7984: $a1
	sbc  a                                           ; $7985: $9f
	dec  c                                           ; $7986: $0d
	ld   l, a                                        ; $7987: $6f
	sub  l                                           ; $7988: $95
	ld   d, h                                        ; $7989: $54
	ld   [hl], a                                     ; $798a: $77
	ld   d, d                                        ; $798b: $52
	ld   d, d                                        ; $798c: $52
	halt                                             ; $798d: $76
	ld   h, c                                        ; $798e: $61
	sbc  e                                           ; $798f: $9b
	ld   a, c                                        ; $7990: $79
	sbc  a                                           ; $7991: $9f
	dec  c                                           ; $7992: $0d
	ld   l, a                                        ; $7993: $6f
	sub  l                                           ; $7994: $95
	ld   [hl], c                                     ; $7995: $71
	halt                                             ; $7996: $76
	inc  bc                                          ; $7997: $03
	ld   l, e                                        ; $7998: $6b
	inc  b                                           ; $7999: $04
	ld   [de], a                                     ; $799a: $12
	ld   [hl], c                                     ; $799b: $71
	ld   [hl], h                                     ; $799c: $74
	ld   e, l                                        ; $799d: $5d
	sbc  d                                           ; $799e: $9a
	ld   a, b                                        ; $799f: $78
	ld   d, d                                        ; $79a0: $52
	ld   sp, hl                                      ; $79a1: $f9
	dec  c                                           ; $79a2: $0d
	nop                                              ; $79a3: $00
	ld   a, [bc]                                     ; $79a4: $0a
	add  hl, de                                      ; $79a5: $19
	dec  b                                           ; $79a6: $05
	ld   [bc], a                                     ; $79a7: $02
	ld   a, l                                        ; $79a8: $7d
	ld   d, d                                        ; $79a9: $52
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	ld   d, d                                        ; $79ac: $52
	ld   d, d                                        ; $79ad: $52
	ld   d, [hl]                                     ; $79ae: $56
	nop                                              ; $79af: $00
	ld   bc, $a607                                   ; $79b0: $01 $07 $a6
	nop                                              ; $79b3: $00
	ld   [bc], a                                     ; $79b4: $02
	inc  bc                                          ; $79b5: $03
	ld   bc, $2000                                   ; $79b6: $01 $00 $20
	nop                                              ; $79b9: $00
	rlca                                             ; $79ba: $07
	ld   d, b                                        ; $79bb: $50
	nop                                              ; $79bc: $00
	ld   [bc], a                                     ; $79bd: $02
	inc  bc                                          ; $79be: $03
	ld   bc, $2001                                   ; $79bf: $01 $01 $20
	nop                                              ; $79c2: $00
	ld   b, $84                                      ; $79c3: $06 $84
	nop                                              ; $79c5: $00
	rrca                                             ; $79c6: $0f
	nop                                              ; $79c7: $00
	ld   bc, $6701                                   ; $79c8: $01 $01 $67
	adc  l                                           ; $79cb: $8d
	adc  h                                           ; $79cc: $8c
	ld   l, c                                        ; $79cd: $69
	and  c                                           ; $79ce: $a1
	sbc  a                                           ; $79cf: $9f
	dec  c                                           ; $79d0: $0d
	ld   [bc], a                                     ; $79d1: $02
	and  l                                           ; $79d2: $a5
	ld   l, a                                        ; $79d3: $6f
	sub  l                                           ; $79d4: $95
	ld   [hl], c                                     ; $79d5: $71
	halt                                             ; $79d6: $76
	ld   d, d                                        ; $79d7: $52

Call_05b_79d8:
	ld   l, e                                        ; $79d8: $6b
	ld   e, d                                        ; $79d9: $5a
	ld   h, l                                        ; $79da: $65
	ld   d, d                                        ; $79db: $52
	ld   a, h                                        ; $79dc: $7c
	ld   [hl], l                                     ; $79dd: $75
	rst  $38                                         ; $79de: $ff
	rst  $38                                         ; $79df: $ff
	dec  c                                           ; $79e0: $0d
	nop                                              ; $79e1: $00
	ld   a, [bc]                                     ; $79e2: $0a
	inc  e                                           ; $79e3: $1c
	dec  c                                           ; $79e4: $0d
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	ld   bc, $546b                                   ; $79e7: $01 $6b $54
	sbc  [hl]                                        ; $79ea: $9e
	ld   h, [hl]                                     ; $79eb: $66
	sub  c                                           ; $79ec: $91
	ld   d, d                                        ; $79ed: $52
	ld   d, d                                        ; $79ee: $52
	sbc  l                                           ; $79ef: $9d
	sbc  a                                           ; $79f0: $9f
	dec  c                                           ; $79f1: $0d
	adc  h                                           ; $79f2: $8c
	ld   l, l                                        ; $79f3: $6d
	ld   a, e                                        ; $79f4: $7b
	sbc  a                                           ; $79f5: $9f
	dec  c                                           ; $79f6: $0d
	nop                                              ; $79f7: $00
	ld   a, [bc]                                     ; $79f8: $0a
	nop                                              ; $79f9: $00
	rrca                                             ; $79fa: $0f
	dec  c                                           ; $79fb: $0d
	ld   bc, $0401                                   ; $79fc: $01 $01 $04
	sub  a                                           ; $79ff: $97
	ld   [bc], a                                     ; $7a00: $02
	jp   Jump_05b_785a                               ; $7a01: $c3 $5a $78


	ld   d, d                                        ; $7a04: $52
	ld   [hl], c                                     ; $7a05: $71
	ld   [hl], h                                     ; $7a06: $74
	ld   h, c                                        ; $7a07: $61
	halt                                             ; $7a08: $76
	ld   a, l                                        ; $7a09: $7d
	dec  c                                           ; $7a0a: $0d
	xor  e                                           ; $7a0b: $ab
	call nz, $fbb2                                   ; $7a0c: $c4 $b2 $fb
	ld   [hl], c                                     ; $7a0f: $71
	ld   [hl], h                                     ; $7a10: $74
	ld   h, c                                        ; $7a11: $61
	halt                                             ; $7a12: $76
	sub  [hl]                                        ; $7a13: $96
	ld   a, e                                        ; $7a14: $7b
	sbc  a                                           ; $7a15: $9f
	dec  c                                           ; $7a16: $0d
	nop                                              ; $7a17: $00
	ld   a, [bc]                                     ; $7a18: $0a
	ld   b, $b6                                      ; $7a19: $06 $b6
	nop                                              ; $7a1b: $00
	rrca                                             ; $7a1c: $0f
	nop                                              ; $7a1d: $00
	ld   bc, $7d01                                   ; $7a1e: $01 $01 $7d
	ld   d, d                                        ; $7a21: $52
	sbc  [hl]                                        ; $7a22: $9e
	ld   d, d                                        ; $7a23: $52
	ld   d, d                                        ; $7a24: $52
	ld   [hl], l                                     ; $7a25: $75
	ld   h, a                                        ; $7a26: $67
	sub  [hl]                                        ; $7a27: $96
	sbc  a                                           ; $7a28: $9f
	dec  c                                           ; $7a29: $0d
	nop                                              ; $7a2a: $00
	ld   a, [bc]                                     ; $7a2b: $0a
	inc  e                                           ; $7a2c: $1c
	dec  c                                           ; $7a2d: $0d
	nop                                              ; $7a2e: $00
	nop                                              ; $7a2f: $00
	ld   bc, $9166                                   ; $7a30: $01 $66 $91
	ld   d, b                                        ; $7a33: $50
	sbc  [hl]                                        ; $7a34: $9e
	ld   l, e                                        ; $7a35: $6b
	ld   h, c                                        ; $7a36: $61
	ld   a, c                                        ; $7a37: $79
	ld   d, b                                        ; $7a38: $50
	sbc  c                                           ; $7a39: $99
	inc  bc                                          ; $7a3a: $03
	ld   d, l                                        ; $7a3b: $55
	dec  b                                           ; $7a3c: $05
	ld   h, d                                        ; $7a3d: $62
	ld   a, h                                        ; $7a3e: $7c
	dec  c                                           ; $7a3f: $0d
	inc  b                                           ; $7a40: $04
	push bc                                          ; $7a41: $c5
	inc  bc                                          ; $7a42: $03
	pop  bc                                          ; $7a43: $c1
	and  b                                           ; $7a44: $a0
	inc  bc                                          ; $7a45: $03
	pop  bc                                          ; $7a46: $c1
	ld   d, [hl]                                     ; $7a47: $56
	ld   [hl], h                                     ; $7a48: $74
	inc  b                                           ; $7a49: $04
	db   $e3                                         ; $7a4a: $e3
	ld   h, l                                        ; $7a4b: $65
	ld   d, d                                        ; $7a4c: $52
	ld   a, h                                        ; $7a4d: $7c
	sbc  a                                           ; $7a4e: $9f
	dec  c                                           ; $7a4f: $0d
	nop                                              ; $7a50: $00
	ld   a, [bc]                                     ; $7a51: $0a
	db   $10                                         ; $7a52: $10
	ld   c, h                                        ; $7a53: $4c
	nop                                              ; $7a54: $00
	ld   bc, $0008                                   ; $7a55: $01 $08 $00
	ld   e, l                                        ; $7a58: $5d
	and  c                                           ; $7a59: $a1
	ld   a, c                                        ; $7a5a: $79
	ld   a, l                                        ; $7a5b: $7d
	inc  d                                           ; $7a5c: $14
	inc  bc                                          ; $7a5d: $03
	dec  hl                                          ; $7a5e: $2b
	sbc  [hl]                                        ; $7a5f: $9e
	dec  c                                           ; $7a60: $0d
	ld   e, b                                        ; $7a61: $58
	ld   [bc], a                                     ; $7a62: $02
	add  b                                           ; $7a63: $80
	ld   d, d                                        ; $7a64: $52
	ld   h, a                                        ; $7a65: $67
	sbc  c                                           ; $7a66: $99
	sbc  l                                           ; $7a67: $9d
	sbc  a                                           ; $7a68: $9f
	dec  c                                           ; $7a69: $0d
	nop                                              ; $7a6a: $00
	ld   a, [bc]                                     ; $7a6b: $0a
	rrca                                             ; $7a6c: $0f
	nop                                              ; $7a6d: $00
	ld   bc, $7d01                                   ; $7a6e: $01 $01 $7d
	ld   d, d                                        ; $7a71: $52
	sbc  [hl]                                        ; $7a72: $9e
	sbc  l                                           ; $7a73: $9d
	ld   e, c                                        ; $7a74: $59
	sbc  b                                           ; $7a75: $98
	adc  h                                           ; $7a76: $8c
	ld   h, l                                        ; $7a77: $65
	ld   l, l                                        ; $7a78: $6d
	sbc  a                                           ; $7a79: $9f
	dec  c                                           ; $7a7a: $0d
	ld   h, [hl]                                     ; $7a7b: $66
	sub  c                                           ; $7a7c: $91
	sbc  [hl]                                        ; $7a7d: $9e
	inc  bc                                          ; $7a7e: $03
	pop  bc                                          ; $7a7f: $c1
	ld   d, [hl]                                     ; $7a80: $56
	adc  h                                           ; $7a81: $8c
	ld   h, a                                        ; $7a82: $67
	sbc  a                                           ; $7a83: $9f
	dec  c                                           ; $7a84: $0d
	nop                                              ; $7a85: $00
	ld   a, [bc]                                     ; $7a86: $0a
	dec  c                                           ; $7a87: $0d
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	db   $10                                         ; $7a8a: $10
	ld   c, e                                        ; $7a8b: $4b
	nop                                              ; $7a8c: $00
	ld   bc, $0412                                   ; $7a8d: $01 $12 $04
	push bc                                          ; $7a90: $c5
	sbc  [hl]                                        ; $7a91: $9e
	inc  de                                          ; $7a92: $13
	inc  b                                           ; $7a93: $04
	push bc                                          ; $7a94: $c5
	rst  $38                                         ; $7a95: $ff
	rst  $38                                         ; $7a96: $ff
	rla                                              ; $7a97: $17
	inc  b                                           ; $7a98: $04
	push bc                                          ; $7a99: $c5
	rst  $38                                         ; $7a9a: $ff
	rst  $38                                         ; $7a9b: $ff
	rst  $38                                         ; $7a9c: $ff
	rst  $38                                         ; $7a9d: $ff
	dec  c                                           ; $7a9e: $0d
	inc  de                                          ; $7a9f: $13
	ld   de, $c504                                   ; $7aa0: $11 $04 $c5
	rst  $38                                         ; $7aa3: $ff
	rst  $38                                         ; $7aa4: $ff
	rst  $38                                         ; $7aa5: $ff
	rst  $38                                         ; $7aa6: $ff
	inc  d                                           ; $7aa7: $14
	add  hl, de                                      ; $7aa8: $19
	inc  b                                           ; $7aa9: $04
	push bc                                          ; $7aaa: $c5
	rst  $38                                         ; $7aab: $ff
	rst  $38                                         ; $7aac: $ff
	rst  $38                                         ; $7aad: $ff
	rst  $38                                         ; $7aae: $ff
	dec  c                                           ; $7aaf: $0d
	ld   d, $15                                      ; $7ab0: $16 $15
	inc  b                                           ; $7ab2: $04
	push bc                                          ; $7ab3: $c5
	rst  $38                                         ; $7ab4: $ff
	rst  $38                                         ; $7ab5: $ff
	rst  $38                                         ; $7ab6: $ff
	rst  $38                                         ; $7ab7: $ff
	rla                                              ; $7ab8: $17
	jr   jr_05b_7abf                                 ; $7ab9: $18 $04

	push bc                                          ; $7abb: $c5
	sbc  a                                           ; $7abc: $9f
	dec  c                                           ; $7abd: $0d
	nop                                              ; $7abe: $00

jr_05b_7abf:
	ld   a, [bc]                                     ; $7abf: $0a
	ld   bc, $020a                                   ; $7ac0: $01 $0a $02
	add  b                                           ; $7ac3: $80
	halt                                             ; $7ac4: $76
	inc  bc                                          ; $7ac5: $03
	dec  hl                                          ; $7ac6: $2b
	adc  a                                           ; $7ac7: $8f
	ld   a, l                                        ; $7ac8: $7d
	rla                                              ; $7ac9: $17
	jr   jr_05b_7ad0                                 ; $7aca: $18 $04

	push bc                                          ; $7acc: $c5
	ld   a, [bc]                                     ; $7acd: $0a
	inc  bc                                          ; $7ace: $03
	ld   l, [hl]                                     ; $7acf: $6e

jr_05b_7ad0:
	ld   a, b                                        ; $7ad0: $78
	sbc  a                                           ; $7ad1: $9f
	dec  c                                           ; $7ad2: $0d
	sub  [hl]                                        ; $7ad3: $96
	ld   h, l                                        ; $7ad4: $65
	sbc  [hl]                                        ; $7ad5: $9e
	inc  bc                                          ; $7ad6: $03
	ld   l, b                                        ; $7ad7: $68
	ld   a, l                                        ; $7ad8: $7d
	rst  $38                                         ; $7ad9: $ff
	rst  $38                                         ; $7ada: $ff
	rst  $38                                         ; $7adb: $ff
	rst  $38                                         ; $7adc: $ff
	dec  c                                           ; $7add: $0d
	nop                                              ; $7ade: $00
	ld   a, [bc]                                     ; $7adf: $0a
	inc  e                                           ; $7ae0: $1c
	dec  c                                           ; $7ae1: $0d
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	ld   bc, $546b                                   ; $7ae4: $01 $6b $54
	ld   l, [hl]                                     ; $7ae7: $6e
	sbc  [hl]                                        ; $7ae8: $9e
	ld   [$5d00], sp                                 ; $7ae9: $08 $00 $5d
	and  c                                           ; $7aec: $a1
	sbc  a                                           ; $7aed: $9f
	dec  c                                           ; $7aee: $0d
	inc  bc                                          ; $7aef: $03
	ld   c, a                                        ; $7af0: $4f
	ld   e, c                                        ; $7af1: $59
	sub  a                                           ; $7af2: $97
	ld   [bc], a                                     ; $7af3: $02
	jp   nz, Jump_05b_7452                           ; $7af4: $c2 $52 $74

	adc  l                                           ; $7af7: $8d
	ld   l, l                                        ; $7af8: $6d
	ld   e, c                                        ; $7af9: $59
	ld   [hl], c                                     ; $7afa: $71
	ld   l, l                                        ; $7afb: $6d
	and  c                                           ; $7afc: $a1
	dec  c                                           ; $7afd: $0d
	ld   l, [hl]                                     ; $7afe: $6e
	ld   e, a                                        ; $7aff: $5f
	ld   [hl], a                                     ; $7b00: $77
	rst  $38                                         ; $7b01: $ff
	rst  $38                                         ; $7b02: $ff
	dec  c                                           ; $7b03: $0d
	nop                                              ; $7b04: $00
	ld   a, [bc]                                     ; $7b05: $0a
	inc  e                                           ; $7b06: $1c
	dec  c                                           ; $7b07: $0d
	ld   bc, $0101                                   ; $7b08: $01 $01 $01
	ld   d, b                                        ; $7b0b: $50
	ld   l, l                                        ; $7b0c: $6d
	ld   h, l                                        ; $7b0d: $65
	halt                                             ; $7b0e: $76
	sbc  [hl]                                        ; $7b0f: $9e
	ld   e, c                                        ; $7b10: $59
	ld   h, a                                        ; $7b11: $67
	adc  l                                           ; $7b12: $8d
	ld   h, e                                        ; $7b13: $63
	and  c                                           ; $7b14: $a1
	halt                                             ; $7b15: $76
	dec  c                                           ; $7b16: $0d
	ld   b, $5b                                      ; $7b17: $06 $5b
	ld   a, h                                        ; $7b19: $7c
	inc  bc                                          ; $7b1a: $03
	inc  sp                                          ; $7b1b: $33
	inc  bc                                          ; $7b1c: $03
	add  d                                           ; $7b1d: $82
	ld   a, h                                        ; $7b1e: $7c
	inc  b                                           ; $7b1f: $04
	dec  bc                                          ; $7b20: $0b
	ld   [hl], l                                     ; $7b21: $75
	dec  c                                           ; $7b22: $0d
	inc  bc                                          ; $7b23: $03
	xor  c                                           ; $7b24: $a9
	ld   e, d                                        ; $7b25: $5a
	ld   [bc], a                                     ; $7b26: $02
	jr   nz, jr_05b_7b2d                             ; $7b27: $20 $04

	ld   a, c                                        ; $7b29: $79
	ret  nz                                          ; $7b2a: $c0

	and  l                                           ; $7b2b: $a5
	ret  c                                           ; $7b2c: $d8

jr_05b_7b2d:
	ld   sp, hl                                      ; $7b2d: $f9
	dec  c                                           ; $7b2e: $0d
	nop                                              ; $7b2f: $00
	ld   a, [bc]                                     ; $7b30: $0a
	rrca                                             ; $7b31: $0f
	nop                                              ; $7b32: $00
	ld   bc, $5601                                   ; $7b33: $01 $01 $56
	ld   [hl], c                                     ; $7b36: $71
	ld   a, [$6e10]                                  ; $7b37: $fa $10 $6e
	sbc  [hl]                                        ; $7b3a: $9e
	inc  bc                                          ; $7b3b: $03
	xor  c                                           ; $7b3c: $a9
	ld   [hl], c                                     ; $7b3d: $71
	ld   [hl], h                                     ; $7b3e: $74
	ld   [bc], a                                     ; $7b3f: $02
	sbc  l                                           ; $7b40: $9d
	sbc  l                                           ; $7b41: $9d
	sbc  d                                           ; $7b42: $9a
	ld   [hl], h                                     ; $7b43: $74
	sub  b                                           ; $7b44: $90
	dec  c                                           ; $7b45: $0d
	rst  $38                                         ; $7b46: $ff
	rst  $38                                         ; $7b47: $ff
	rst  $38                                         ; $7b48: $ff
	rst  $38                                         ; $7b49: $ff
	rst  $38                                         ; $7b4a: $ff
	rst  $38                                         ; $7b4b: $ff
	rst  $38                                         ; $7b4c: $ff
	rst  $38                                         ; $7b4d: $ff
	rst  $38                                         ; $7b4e: $ff
	rst  $38                                         ; $7b4f: $ff
	rst  $38                                         ; $7b50: $ff
	rst  $38                                         ; $7b51: $ff
	rst  $38                                         ; $7b52: $ff
	rst  $38                                         ; $7b53: $ff
	dec  c                                           ; $7b54: $0d
	nop                                              ; $7b55: $00
	ld   a, [bc]                                     ; $7b56: $0a
	add  hl, de                                      ; $7b57: $19
	dec  b                                           ; $7b58: $05
	inc  bc                                          ; $7b59: $03
	inc  b                                           ; $7b5a: $04
	pop  hl                                          ; $7b5b: $e1
	inc  b                                           ; $7b5c: $04
	rst  $38                                         ; $7b5d: $ff
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	ld   e, c                                        ; $7b60: $59
	ld   h, a                                        ; $7b61: $67
	adc  l                                           ; $7b62: $8d
	nop                                              ; $7b63: $00
	ld   bc, $5b06                                   ; $7b64: $01 $06 $5b
	nop                                              ; $7b67: $00
	ld   [bc], a                                     ; $7b68: $02
	rlca                                             ; $7b69: $07
	ld   de, $0202                                   ; $7b6a: $11 $02 $02
	inc  bc                                          ; $7b6d: $03
	ld   bc, $2000                                   ; $7b6e: $01 $00 $20
	nop                                              ; $7b71: $00
	rlca                                             ; $7b72: $07
	ld   d, a                                        ; $7b73: $57
	ld   [bc], a                                     ; $7b74: $02
	ld   [bc], a                                     ; $7b75: $02
	inc  bc                                          ; $7b76: $03
	ld   bc, $2001                                   ; $7b77: $01 $01 $20
	nop                                              ; $7b7a: $00
	rlca                                             ; $7b7b: $07
	cp   h                                           ; $7b7c: $bc
	ld   [bc], a                                     ; $7b7d: $02
	ld   [bc], a                                     ; $7b7e: $02
	inc  bc                                          ; $7b7f: $03
	ld   bc, $2002                                   ; $7b80: $01 $02 $20
	nop                                              ; $7b83: $00
	ld   b, $19                                      ; $7b84: $06 $19
	inc  bc                                          ; $7b86: $03
	rrca                                             ; $7b87: $0f
	nop                                              ; $7b88: $00
	ld   bc, $6b01                                   ; $7b89: $01 $01 $6b
	sbc  b                                           ; $7b8c: $98
	sub  c                                           ; $7b8d: $91
	sbc  [hl]                                        ; $7b8e: $9e
	sub  b                                           ; $7b8f: $90
	ld   l, a                                        ; $7b90: $6f
	sbc  e                                           ; $7b91: $9b
	and  c                                           ; $7b92: $a1
	inc  b                                           ; $7b93: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b94: $cf
	sbc  c                                           ; $7b95: $99
	ld   e, l                                        ; $7b96: $5d
	ld   [hl], h                                     ; $7b97: $74
	dec  c                                           ; $7b98: $0d
	ld   [bc], a                                     ; $7b99: $02
	or   a                                           ; $7b9a: $b7
	inc  b                                           ; $7b9b: $04
	ld   e, [hl]                                     ; $7b9c: $5e
	ld   a, b                                        ; $7b9d: $78
	inc  b                                           ; $7b9e: $04
	pop  hl                                          ; $7b9f: $e1
	inc  b                                           ; $7ba0: $04
	rst  $38                                         ; $7ba1: $ff
	ld   h, e                                        ; $7ba2: $63
	and  c                                           ; $7ba3: $a1
	ld   [hl], l                                     ; $7ba4: $75
	ld   h, a                                        ; $7ba5: $67
	sub  [hl]                                        ; $7ba6: $96
	sbc  a                                           ; $7ba7: $9f
	dec  c                                           ; $7ba8: $0d
	nop                                              ; $7ba9: $00
	ld   a, [bc]                                     ; $7baa: $0a
	inc  e                                           ; $7bab: $1c
	dec  c                                           ; $7bac: $0d
	ld   bc, $0101                                   ; $7bad: $01 $01 $01
	ld   d, b                                        ; $7bb0: $50
	sub  a                                           ; $7bb1: $97
	sbc  a                                           ; $7bb2: $9f
	dec  c                                           ; $7bb3: $0d
	ld   e, b                                        ; $7bb4: $58
	inc  bc                                          ; $7bb5: $03
	add  hl, de                                      ; $7bb6: $19
	ld   b, $8e                                      ; $7bb7: $06 $8e
	ld   e, d                                        ; $7bb9: $5a
	ld   d, h                                        ; $7bba: $54
	adc  h                                           ; $7bbb: $8c
	ld   d, d                                        ; $7bbc: $52
	ld   a, h                                        ; $7bbd: $7c
	ld   a, e                                        ; $7bbe: $7b
	sbc  a                                           ; $7bbf: $9f
	dec  c                                           ; $7bc0: $0d
	ld   [$5d00], sp                                 ; $7bc1: $08 $00 $5d
	and  c                                           ; $7bc4: $a1
	ld   [hl], h                                     ; $7bc5: $74
	sbc  a                                           ; $7bc6: $9f
	dec  c                                           ; $7bc7: $0d
	nop                                              ; $7bc8: $00
	ld   a, [bc]                                     ; $7bc9: $0a
	ld   b, $41                                      ; $7bca: $06 $41
	inc  bc                                          ; $7bcc: $03
	rrca                                             ; $7bcd: $0f
	nop                                              ; $7bce: $00
	ld   bc, $6b01                                   ; $7bcf: $01 $01 $6b
	ld   d, h                                        ; $7bd2: $54
	ld   [hl], l                                     ; $7bd3: $75
	ld   h, a                                        ; $7bd4: $67
	ld   a, e                                        ; $7bd5: $7b
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	sbc  [hl]                                        ; $7bd8: $9e
	ld   d, b                                        ; $7bd9: $50
	ld   d, [hl]                                     ; $7bda: $56
	ld   [hl], h                                     ; $7bdb: $74
	ld   [bc], a                                     ; $7bdc: $02
	sbc  l                                           ; $7bdd: $9d
	ld   d, h                                        ; $7bde: $54
	dec  c                                           ; $7bdf: $0d
	ld   a, b                                        ; $7be0: $78
	sub  a                                           ; $7be1: $97
	sbc  [hl]                                        ; $7be2: $9e
	dec  b                                           ; $7be3: $05
	ld   [de], a                                     ; $7be4: $12
	ld   l, a                                        ; $7be5: $6f
	inc  b                                           ; $7be6: $04
	rlca                                             ; $7be7: $07
	ld   d, d                                        ; $7be8: $52
	ld   [hl], h                                     ; $7be9: $74
	ld   d, d                                        ; $7bea: $52
	ld   [hl], h                                     ; $7beb: $74
	sbc  [hl]                                        ; $7bec: $9e
	dec  c                                           ; $7bed: $0d
	sub  d                                           ; $7bee: $92
	ld   h, e                                        ; $7bef: $63
	ld   h, l                                        ; $7bf0: $65
	ld   d, d                                        ; $7bf1: $52
	sbc  [hl]                                        ; $7bf2: $9e
	ld   e, c                                        ; $7bf3: $59
	ld   h, a                                        ; $7bf4: $67
	adc  l                                           ; $7bf5: $8d
	ld   h, e                                        ; $7bf6: $63
	and  c                                           ; $7bf7: $a1
	ld   [hl], l                                     ; $7bf8: $75
	ld   h, a                                        ; $7bf9: $67
	ld   a, e                                        ; $7bfa: $7b
	sbc  a                                           ; $7bfb: $9f
	dec  c                                           ; $7bfc: $0d
	nop                                              ; $7bfd: $00
	ld   a, [bc]                                     ; $7bfe: $0a
	inc  e                                           ; $7bff: $1c
	dec  c                                           ; $7c00: $0d
	inc  bc                                          ; $7c01: $03
	inc  bc                                          ; $7c02: $03
	ld   bc, $546b                                   ; $7c03: $01 $6b $54
	rst  $38                                         ; $7c06: $ff
	rst  $38                                         ; $7c07: $ff
	sbc  [hl]                                        ; $7c08: $9e
	ld   [$5d00], sp                                 ; $7c09: $08 $00 $5d
	and  c                                           ; $7c0c: $a1
	ld   a, l                                        ; $7c0d: $7d
	dec  c                                           ; $7c0e: $0d
	inc  b                                           ; $7c0f: $04
	ld   d, b                                        ; $7c10: $50
	inc  bc                                          ; $7c11: $03
	ld   h, l                                        ; $7c12: $65
	ld   a, c                                        ; $7c13: $79
	dec  b                                           ; $7c14: $05
	and  c                                           ; $7c15: $a1
	ld   d, [hl]                                     ; $7c16: $56
	ld   l, l                                        ; $7c17: $6d
	ld   d, d                                        ; $7c18: $52
	ret  nz                                          ; $7c19: $c0

	and  l                                           ; $7c1a: $a5
	ret  c                                           ; $7c1b: $d8

	ld   a, b                                        ; $7c1c: $78
	ld   a, h                                        ; $7c1d: $7c
	ld   a, e                                        ; $7c1e: $7b
	sbc  a                                           ; $7c1f: $9f
	dec  c                                           ; $7c20: $0d
	add  e                                           ; $7c21: $83
	db   $fc                                         ; $7c22: $fc
	and  c                                           ; $7c23: $a1
	sbc  [hl]                                        ; $7c24: $9e
	ld   l, e                                        ; $7c25: $6b
	ld   d, h                                        ; $7c26: $54
	ld   a, b                                        ; $7c27: $78
	and  c                                           ; $7c28: $a1
	ld   l, [hl]                                     ; $7c29: $6e
	rst  $38                                         ; $7c2a: $ff
	rst  $38                                         ; $7c2b: $ff
	dec  c                                           ; $7c2c: $0d
	nop                                              ; $7c2d: $00
	ld   a, [bc]                                     ; $7c2e: $0a
	ld   b, $41                                      ; $7c2f: $06 $41
	inc  bc                                          ; $7c31: $03
	rrca                                             ; $7c32: $0f
	nop                                              ; $7c33: $00
	ld   bc, $6b01                                   ; $7c34: $01 $01 $6b
	ld   d, h                                        ; $7c37: $54
	ld   [hl], l                                     ; $7c38: $75
	ld   h, a                                        ; $7c39: $67
	ld   a, e                                        ; $7c3a: $7b
	rst  $38                                         ; $7c3b: $ff
	rst  $38                                         ; $7c3c: $ff
	sbc  [hl]                                        ; $7c3d: $9e
	ld   d, b                                        ; $7c3e: $50
	ld   d, [hl]                                     ; $7c3f: $56
	ld   [hl], h                                     ; $7c40: $74
	ld   [bc], a                                     ; $7c41: $02
	sbc  l                                           ; $7c42: $9d
	ld   d, h                                        ; $7c43: $54
	dec  c                                           ; $7c44: $0d
	ld   a, b                                        ; $7c45: $78
	sub  a                                           ; $7c46: $97
	sbc  [hl]                                        ; $7c47: $9e
	ld   [bc], a                                     ; $7c48: $02
	xor  h                                           ; $7c49: $ac
	ld   [bc], a                                     ; $7c4a: $02
	and  c                                           ; $7c4b: $a1
	ld   [hl], l                                     ; $7c4c: $75
	inc  b                                           ; $7c4d: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c4e: $cf
	sbc  c                                           ; $7c4f: $99
	ld   d, d                                        ; $7c50: $52
	ld   b, $5b                                      ; $7c51: $06 $5b
	ld   h, e                                        ; $7c53: $63
	and  c                                           ; $7c54: $a1
	dec  c                                           ; $7c55: $0d
	ld   [hl], l                                     ; $7c56: $75
	ld   h, a                                        ; $7c57: $67
	ld   a, e                                        ; $7c58: $7b
	sbc  a                                           ; $7c59: $9f
	dec  c                                           ; $7c5a: $0d
	nop                                              ; $7c5b: $00
	ld   a, [bc]                                     ; $7c5c: $0a
	inc  e                                           ; $7c5d: $1c
	dec  c                                           ; $7c5e: $0d
	inc  bc                                          ; $7c5f: $03
	inc  bc                                          ; $7c60: $03
	ld   bc, $546b                                   ; $7c61: $01 $6b $54
	rst  $38                                         ; $7c64: $ff
	rst  $38                                         ; $7c65: $ff
	sbc  [hl]                                        ; $7c66: $9e
	ld   [$5d00], sp                                 ; $7c67: $08 $00 $5d
	and  c                                           ; $7c6a: $a1
	ld   a, l                                        ; $7c6b: $7d
	dec  c                                           ; $7c6c: $0d
	inc  bc                                          ; $7c6d: $03
	add  [hl]                                        ; $7c6e: $86
	ld   [bc], a                                     ; $7c6f: $02
	xor  l                                           ; $7c70: $ad
	ld   [hl], c                                     ; $7c71: $71
	adc  e                                           ; $7c72: $8b
	ld   d, d                                        ; $7c73: $52
	ld   a, h                                        ; $7c74: $7c
	ld   e, d                                        ; $7c75: $5a
	ld   [bc], a                                     ; $7c76: $02
	sbc  d                                           ; $7c77: $9a

Jump_05b_7c78:
	ld   e, e                                        ; $7c78: $5b
	ld   a, b                                        ; $7c79: $78
	ld   a, h                                        ; $7c7a: $7c
	ld   a, e                                        ; $7c7b: $7b
	sbc  a                                           ; $7c7c: $9f
	dec  c                                           ; $7c7d: $0d
	add  e                                           ; $7c7e: $83
	db   $fc                                         ; $7c7f: $fc
	and  c                                           ; $7c80: $a1
	sbc  [hl]                                        ; $7c81: $9e
	ld   l, e                                        ; $7c82: $6b
	ld   d, h                                        ; $7c83: $54
	ld   a, b                                        ; $7c84: $78
	and  c                                           ; $7c85: $a1
	ld   l, [hl]                                     ; $7c86: $6e
	rst  $38                                         ; $7c87: $ff
	rst  $38                                         ; $7c88: $ff
	dec  c                                           ; $7c89: $0d
	nop                                              ; $7c8a: $00
	ld   a, [bc]                                     ; $7c8b: $0a
	ld   b, $41                                      ; $7c8c: $06 $41
	inc  bc                                          ; $7c8e: $03
	inc  e                                           ; $7c8f: $1c
	dec  c                                           ; $7c90: $0d
	ld   [bc], a                                     ; $7c91: $02
	ld   [bc], a                                     ; $7c92: $02
	ld   bc, $8302                                   ; $7c93: $01 $02 $83
	adc  a                                           ; $7c96: $8f
	sub  a                                           ; $7c97: $97
	sbc  d                                           ; $7c98: $9a
	ld   a, b                                        ; $7c99: $78
	ld   d, d                                        ; $7c9a: $52
	ld   a, h                                        ; $7c9b: $7c
	ld   sp, hl                                      ; $7c9c: $f9
	dec  c                                           ; $7c9d: $0d
	ld   [$5d00], sp                                 ; $7c9e: $08 $00 $5d
	and  c                                           ; $7ca1: $a1
	ld   [hl], h                                     ; $7ca2: $74
	sbc  [hl]                                        ; $7ca3: $9e
	inc  b                                           ; $7ca4: $04
	rst  $30                                         ; $7ca5: $f7
	dec  b                                           ; $7ca6: $05
	or   a                                           ; $7ca7: $b7
	inc  b                                           ; $7ca8: $04
	and  b                                           ; $7ca9: $a0
	inc  b                                           ; $7caa: $04
	inc  h                                           ; $7cab: $24
	dec  c                                           ; $7cac: $0d
	ld   a, b                                        ; $7cad: $78
	ld   a, h                                        ; $7cae: $7c
	ld   a, e                                        ; $7caf: $7b
	sbc  a                                           ; $7cb0: $9f
	dec  c                                           ; $7cb1: $0d
	nop                                              ; $7cb2: $00
	ld   a, [bc]                                     ; $7cb3: $0a
	ld   b, $41                                      ; $7cb4: $06 $41
	inc  bc                                          ; $7cb6: $03
	inc  e                                           ; $7cb7: $1c
	dec  c                                           ; $7cb8: $0d
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	ld   bc, $9166                                   ; $7cbb: $01 $66 $91
	ld   d, b                                        ; $7cbe: $50
	sbc  [hl]                                        ; $7cbf: $9e
	inc  bc                                          ; $7cc0: $03
	xor  h                                           ; $7cc1: $ac
	ld   b, $8a                                      ; $7cc2: $06 $8a
	and  b                                           ; $7cc4: $a0
	ld   [hl], d                                     ; $7cc5: $72
	ld   [hl], e                                     ; $7cc6: $73
	ld   e, a                                        ; $7cc7: $5f
	ld   [hl], h                                     ; $7cc8: $74
	sbc  [hl]                                        ; $7cc9: $9e
	dec  c                                           ; $7cca: $0d
	ld   [$5d00], sp                                 ; $7ccb: $08 $00 $5d
	and  c                                           ; $7cce: $a1
	sbc  a                                           ; $7ccf: $9f
	dec  c                                           ; $7cd0: $0d
	nop                                              ; $7cd1: $00
	ld   a, [bc]                                     ; $7cd2: $0a
	rrca                                             ; $7cd3: $0f
	nop                                              ; $7cd4: $00
	ld   bc, $7d01                                   ; $7cd5: $01 $01 $7d

Call_05b_7cd8:
	ld   d, d                                        ; $7cd8: $52
	sbc  a                                           ; $7cd9: $9f
	dec  c                                           ; $7cda: $0d
	nop                                              ; $7cdb: $00
	ld   a, [bc]                                     ; $7cdc: $0a
	dec  c                                           ; $7cdd: $0d
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	db   $10                                         ; $7ce0: $10
	ld   c, e                                        ; $7ce1: $4b
	nop                                              ; $7ce2: $00
	ld   bc, $0412                                   ; $7ce3: $01 $12 $04
	push bc                                          ; $7ce6: $c5
	sbc  [hl]                                        ; $7ce7: $9e
	inc  de                                          ; $7ce8: $13
	inc  b                                           ; $7ce9: $04
	push bc                                          ; $7cea: $c5
	rst  $38                                         ; $7ceb: $ff
	rst  $38                                         ; $7cec: $ff
	add  hl, de                                      ; $7ced: $19
	inc  b                                           ; $7cee: $04
	push bc                                          ; $7cef: $c5
	rst  $38                                         ; $7cf0: $ff
	rst  $38                                         ; $7cf1: $ff
	rst  $38                                         ; $7cf2: $ff
	rst  $38                                         ; $7cf3: $ff
	dec  c                                           ; $7cf4: $0d
	inc  de                                          ; $7cf5: $13
	inc  d                                           ; $7cf6: $14
	inc  b                                           ; $7cf7: $04
	push bc                                          ; $7cf8: $c5
	rst  $38                                         ; $7cf9: $ff
	rst  $38                                         ; $7cfa: $ff
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	dec  d                                           ; $7cfd: $15
	inc  de                                          ; $7cfe: $13
	inc  b                                           ; $7cff: $04
	push bc                                          ; $7d00: $c5
	rst  $38                                         ; $7d01: $ff
	rst  $38                                         ; $7d02: $ff
	rst  $38                                         ; $7d03: $ff
	rst  $38                                         ; $7d04: $ff
	dec  c                                           ; $7d05: $0d
	rla                                              ; $7d06: $17
	jr   jr_05b_7d0d                                 ; $7d07: $18 $04

	push bc                                          ; $7d09: $c5
	rst  $38                                         ; $7d0a: $ff
	rst  $38                                         ; $7d0b: $ff
	rst  $38                                         ; $7d0c: $ff

jr_05b_7d0d:
	rst  $38                                         ; $7d0d: $ff
	jr   jr_05b_7d2a                                 ; $7d0e: $18 $1a

	inc  b                                           ; $7d10: $04
	push bc                                          ; $7d11: $c5
	sbc  a                                           ; $7d12: $9f
	dec  c                                           ; $7d13: $0d
	nop                                              ; $7d14: $00
	ld   a, [bc]                                     ; $7d15: $0a
	ld   bc, $020a                                   ; $7d16: $01 $0a $02
	add  e                                           ; $7d19: $83
	ld   l, l                                        ; $7d1a: $6d
	inc  bc                                          ; $7d1b: $03
	dec  hl                                          ; $7d1c: $2b
	adc  a                                           ; $7d1d: $8f
	ld   a, l                                        ; $7d1e: $7d
	jr   jr_05b_7d3b                                 ; $7d1f: $18 $1a

	inc  b                                           ; $7d21: $04
	push bc                                          ; $7d22: $c5
	ld   a, [bc]                                     ; $7d23: $0a
	inc  bc                                          ; $7d24: $03
	ld   l, [hl]                                     ; $7d25: $6e
	ld   a, b                                        ; $7d26: $78
	sbc  a                                           ; $7d27: $9f
	dec  c                                           ; $7d28: $0d
	sub  [hl]                                        ; $7d29: $96

jr_05b_7d2a:
	ld   h, l                                        ; $7d2a: $65
	sbc  [hl]                                        ; $7d2b: $9e
	inc  bc                                          ; $7d2c: $03
	ld   l, b                                        ; $7d2d: $68
	ld   a, l                                        ; $7d2e: $7d
	rst  $38                                         ; $7d2f: $ff
	rst  $38                                         ; $7d30: $ff
	rst  $38                                         ; $7d31: $ff
	rst  $38                                         ; $7d32: $ff
	dec  c                                           ; $7d33: $0d
	nop                                              ; $7d34: $00
	ld   a, [bc]                                     ; $7d35: $0a
	rlca                                             ; $7d36: $07
	call $0408                                       ; $7d37: $cd $08 $04
	add  b                                           ; $7d3a: $80

jr_05b_7d3b:
	ld   b, $01                                      ; $7d3b: $06 $01
	rst  $38                                         ; $7d3d: $ff
	jr   nz, jr_05b_7d40                             ; $7d3e: $20 $00

jr_05b_7d40:
	inc  e                                           ; $7d40: $1c
	dec  c                                           ; $7d41: $0d
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	ld   bc, $0008                                   ; $7d44: $01 $08 $00
	ld   e, l                                        ; $7d47: $5d
	and  c                                           ; $7d48: $a1
	ld   [hl], h                                     ; $7d49: $74
	ld   h, e                                        ; $7d4a: $63
	ei                                               ; $7d4b: $fb
	dec  c                                           ; $7d4c: $0d
	xor  l                                           ; $7d4d: $ad
	ei                                               ; $7d4e: $fb
	db   $ed                                         ; $7d4f: $ed
	sub  $ee                                         ; $7d50: $d6 $ee
	push af                                          ; $7d52: $f5
	jp   z, $9952                                    ; $7d53: $ca $52 $99

	ld   a, h                                        ; $7d56: $7c
	ld   sp, hl                                      ; $7d57: $f9
	dec  c                                           ; $7d58: $0d
	nop                                              ; $7d59: $00
	ld   a, [bc]                                     ; $7d5a: $0a
	rrca                                             ; $7d5b: $0f
	nop                                              ; $7d5c: $00
	ld   bc, $5601                                   ; $7d5d: $01 $01 $56
	ld   [hl], c                                     ; $7d60: $71
	ld   a, [$7610]                                  ; $7d61: $fa $10 $76
	sbc  [hl]                                        ; $7d64: $9e
	inc  bc                                          ; $7d65: $03
	di                                               ; $7d66: $f3
	inc  bc                                          ; $7d67: $03
	sbc  c                                           ; $7d68: $99
	inc  b                                           ; $7d69: $04
	ld   c, c                                        ; $7d6a: $49
	and  b                                           ; $7d6b: $a0
	ld   [bc], a                                     ; $7d6c: $02
	sbc  l                                           ; $7d6d: $9d
	ld   d, d                                        ; $7d6e: $52
	inc  bc                                          ; $7d6f: $03
	add  b                                           ; $7d70: $80
	ld   h, a                                        ; $7d71: $67
	dec  c                                           ; $7d72: $0d
	and  c                                           ; $7d73: $a1
	ld   [hl], l                                     ; $7d74: $75
	ld   h, a                                        ; $7d75: $67
	ld   e, c                                        ; $7d76: $59
	ld   a, [$0dfa]                                  ; $7d77: $fa $fa $0d
	nop                                              ; $7d7a: $00
	ld   a, [bc]                                     ; $7d7b: $0a
	rrca                                             ; $7d7c: $0f
	dec  c                                           ; $7d7d: $0d
	nop                                              ; $7d7e: $00
	ld   bc, $5477                                   ; $7d7f: $01 $77 $54
	ld   a, b                                        ; $7d82: $78
	ld   a, h                                        ; $7d83: $7c
	sub  [hl]                                        ; $7d84: $96
	ei                                               ; $7d85: $fb
	sbc  a                                           ; $7d86: $9f
	dec  c                                           ; $7d87: $0d
	nop                                              ; $7d88: $00
	ld   a, [bc]                                     ; $7d89: $0a
	add  hl, de                                      ; $7d8a: $19
	dec  b                                           ; $7d8b: $05
	inc  bc                                          ; $7d8c: $03
	ld   d, d                                        ; $7d8d: $52
	sbc  c                                           ; $7d8e: $99
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	ld   d, d                                        ; $7d91: $52
	ld   a, b                                        ; $7d92: $78
	ld   d, d                                        ; $7d93: $52
	nop                                              ; $7d94: $00
	ld   bc, $6f77                                   ; $7d95: $01 $77 $6f
	sub  a                                           ; $7d98: $97
	halt                                             ; $7d99: $76
	sub  b                                           ; $7d9a: $90
	ld   [bc], a                                     ; $7d9b: $02
	sbc  l                                           ; $7d9c: $9d
	ld   d, [hl]                                     ; $7d9d: $56
	ld   a, b                                        ; $7d9e: $78
	ld   d, d                                        ; $7d9f: $52
	nop                                              ; $7da0: $00
	ld   [bc], a                                     ; $7da1: $02
	rlca                                             ; $7da2: $07
	ld   c, d                                        ; $7da3: $4a
	inc  b                                           ; $7da4: $04
	ld   [bc], a                                     ; $7da5: $02
	inc  bc                                          ; $7da6: $03
	ld   bc, $2000                                   ; $7da7: $01 $00 $20
	nop                                              ; $7daa: $00
	rlca                                             ; $7dab: $07
	ld   a, e                                        ; $7dac: $7b
	inc  b                                           ; $7dad: $04
	ld   [bc], a                                     ; $7dae: $02
	inc  bc                                          ; $7daf: $03
	ld   bc, $2001                                   ; $7db0: $01 $01 $20
	nop                                              ; $7db3: $00
	rlca                                             ; $7db4: $07
	or   c                                           ; $7db5: $b1
	inc  b                                           ; $7db6: $04
	ld   [bc], a                                     ; $7db7: $02
	inc  bc                                          ; $7db8: $03
	ld   bc, $2002                                   ; $7db9: $01 $02 $20
	nop                                              ; $7dbc: $00
	ld   b, $fe                                      ; $7dbd: $06 $fe
	inc  b                                           ; $7dbf: $04
	rrca                                             ; $7dc0: $0f
	nop                                              ; $7dc1: $00
	ld   bc, $5201                                   ; $7dc2: $01 $01 $52
	adc  h                                           ; $7dc5: $8c
	ld   h, a                                        ; $7dc6: $67
	sub  [hl]                                        ; $7dc7: $96
	sbc  a                                           ; $7dc8: $9f
	dec  c                                           ; $7dc9: $0d
	nop                                              ; $7dca: $00
	ld   a, [bc]                                     ; $7dcb: $0a
	inc  e                                           ; $7dcc: $1c
	dec  c                                           ; $7dcd: $0d
	ld   bc, $0101                                   ; $7dce: $01 $01 $01
	ld   d, [hl]                                     ; $7dd1: $56
	ei                                               ; $7dd2: $fb
	sbc  [hl]                                        ; $7dd3: $9e
	ld   l, e                                        ; $7dd4: $6b
	ld   d, h                                        ; $7dd5: $54
	ld   a, b                                        ; $7dd6: $78
	and  c                                           ; $7dd7: $a1

Call_05b_7dd8:
	ld   l, [hl]                                     ; $7dd8: $6e
	ld   a, [$780d]                                  ; $7dd9: $fa $0d $78
	ld   e, c                                        ; $7ddc: $59
	ld   a, b                                        ; $7ddd: $78
	ld   e, c                                        ; $7dde: $59
	sub  d                                           ; $7ddf: $92
	sbc  c                                           ; $7de0: $99
	ld   h, [hl]                                     ; $7de1: $66
	sub  c                                           ; $7de2: $91
	ld   a, b                                        ; $7de3: $78
	ld   d, d                                        ; $7de4: $52
	dec  c                                           ; $7de5: $0d
	ld   [$5d00], sp                                 ; $7de6: $08 $00 $5d
	and  c                                           ; $7de9: $a1
	sbc  a                                           ; $7dea: $9f
	dec  c                                           ; $7deb: $0d
	nop                                              ; $7dec: $00
	ld   a, [bc]                                     ; $7ded: $0a
	ld   b, $2a                                      ; $7dee: $06 $2a
	dec  b                                           ; $7df0: $05
	rrca                                             ; $7df1: $0f
	nop                                              ; $7df2: $00
	ld   bc, $5201                                   ; $7df3: $01 $01 $52
	adc  h                                           ; $7df6: $8c
	ld   l, c                                        ; $7df7: $69
	and  c                                           ; $7df8: $a1
	rst  $38                                         ; $7df9: $ff
	rst  $38                                         ; $7dfa: $ff
	dec  c                                           ; $7dfb: $0d
	nop                                              ; $7dfc: $00
	ld   a, [bc]                                     ; $7dfd: $0a
	inc  e                                           ; $7dfe: $1c
	dec  c                                           ; $7dff: $0d
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	ld   bc, $9750                                   ; $7e02: $01 $50 $97
	sbc  [hl]                                        ; $7e05: $9e
	ld   l, e                                        ; $7e06: $6b
	ld   d, h                                        ; $7e07: $54
	ld   a, b                                        ; $7e08: $78
	ld   a, h                                        ; $7e09: $7c
	rst  $38                                         ; $7e0a: $ff
	rst  $38                                         ; $7e0b: $ff
	dec  c                                           ; $7e0c: $0d
	ld   [hl], l                                     ; $7e0d: $75
	sub  b                                           ; $7e0e: $90
	sbc  [hl]                                        ; $7e0f: $9e
	ld   [$5d00], sp                                 ; $7e10: $08 $00 $5d
	and  c                                           ; $7e13: $a1
	ld   a, b                                        ; $7e14: $78
	sub  a                                           ; $7e15: $97
	sbc  [hl]                                        ; $7e16: $9e
	dec  c                                           ; $7e17: $0d
	ld   h, a                                        ; $7e18: $67
	ld   e, [hl]                                     ; $7e19: $5e
	ld   a, c                                        ; $7e1a: $79
	ld   [hl], l                                     ; $7e1b: $75
	ld   e, e                                        ; $7e1c: $5b
	sbc  c                                           ; $7e1d: $99
	sbc  l                                           ; $7e1e: $9d
	sub  [hl]                                        ; $7e1f: $96
	sbc  a                                           ; $7e20: $9f
	dec  c                                           ; $7e21: $0d
	nop                                              ; $7e22: $00
	ld   a, [bc]                                     ; $7e23: $0a
	ld   b, $2a                                      ; $7e24: $06 $2a
	dec  b                                           ; $7e26: $05
	rrca                                             ; $7e27: $0f
	nop                                              ; $7e28: $00
	ld   bc, $6b01                                   ; $7e29: $01 $01 $6b
	ld   d, h                                        ; $7e2c: $54
	ld   [hl], l                                     ; $7e2d: $75
	ld   h, a                                        ; $7e2e: $67
	ld   a, e                                        ; $7e2f: $7b
	rst  $38                                         ; $7e30: $ff
	rst  $38                                         ; $7e31: $ff
	sbc  [hl]                                        ; $7e32: $9e
	ld   d, d                                        ; $7e33: $52
	sbc  c                                           ; $7e34: $99
	sub  [hl]                                        ; $7e35: $96
	ld   d, h                                        ; $7e36: $54
	ld   a, b                                        ; $7e37: $78
	dec  c                                           ; $7e38: $0d
	ld   d, d                                        ; $7e39: $52
	ld   a, b                                        ; $7e3a: $78
	ld   d, d                                        ; $7e3b: $52
	sub  [hl]                                        ; $7e3c: $96
	ld   d, h                                        ; $7e3d: $54
	ld   a, b                                        ; $7e3e: $78
	rst  $38                                         ; $7e3f: $ff
	rst  $38                                         ; $7e40: $ff
	ld   d, h                                        ; $7e41: $54
	db   $fc                                         ; $7e42: $fc
	and  c                                           ; $7e43: $a1
	rst  $38                                         ; $7e44: $ff
	rst  $38                                         ; $7e45: $ff
	dec  c                                           ; $7e46: $0d
	ld   [hl], a                                     ; $7e47: $77
	ld   d, h                                        ; $7e48: $54
	ld   a, b                                        ; $7e49: $78
	and  c                                           ; $7e4a: $a1
	ld   [hl], l                                     ; $7e4b: $75
	ld   h, l                                        ; $7e4c: $65
	sub  l                                           ; $7e4d: $95
	ld   d, h                                        ; $7e4e: $54
	ld   e, c                                        ; $7e4f: $59
	ld   sp, hl                                      ; $7e50: $f9
	dec  c                                           ; $7e51: $0d
	nop                                              ; $7e52: $00
	ld   a, [bc]                                     ; $7e53: $0a
	inc  e                                           ; $7e54: $1c
	dec  c                                           ; $7e55: $0d
	inc  bc                                          ; $7e56: $03
	inc  bc                                          ; $7e57: $03
	ld   bc, $9e50                                   ; $7e58: $01 $50 $9e
	ld   l, e                                        ; $7e5b: $6b
	and  c                                           ; $7e5c: $a1
	ld   a, b                                        ; $7e5d: $78
	ld   a, c                                        ; $7e5e: $79
	inc  bc                                          ; $7e5f: $03
	and  e                                           ; $7e60: $a3
	ld   e, l                                        ; $7e61: $5d
	ld   [bc], a                                     ; $7e62: $02
	ld   h, l                                        ; $7e63: $65
	ld   d, [hl]                                     ; $7e64: $56
	ld   a, b                                        ; $7e65: $78
	ld   d, d                                        ; $7e66: $52
	ld   [hl], l                                     ; $7e67: $75
	dec  c                                           ; $7e68: $0d
	ld   d, d                                        ; $7e69: $52
	ld   d, d                                        ; $7e6a: $52
	ld   a, h                                        ; $7e6b: $7c
	sub  [hl]                                        ; $7e6c: $96
	sbc  a                                           ; $7e6d: $9f
	dec  c                                           ; $7e6e: $0d
	nop                                              ; $7e6f: $00
	ld   a, [bc]                                     ; $7e70: $0a
	ld   b, $2a                                      ; $7e71: $06 $2a
	dec  b                                           ; $7e73: $05
	inc  e                                           ; $7e74: $1c
	dec  c                                           ; $7e75: $0d
	ld   [bc], a                                     ; $7e76: $02
	ld   [bc], a                                     ; $7e77: $02
	ld   bc, $fb90                                   ; $7e78: $01 $90 $fb
	ld   [hl], a                                     ; $7e7b: $77
	ld   [hl], c                                     ; $7e7c: $71
	ld   l, a                                        ; $7e7d: $6f
	ld   a, b                                        ; $7e7e: $78
	ld   a, h                                        ; $7e7f: $7c
	sub  [hl]                                        ; $7e80: $96
	ei                                               ; $7e81: $fb
	ei                                               ; $7e82: $fb
	ei                                               ; $7e83: $fb
	ld   [hl], c                                     ; $7e84: $71
	sbc  a                                           ; $7e85: $9f
	dec  c                                           ; $7e86: $0d
	ld   [$5d00], sp                                 ; $7e87: $08 $00 $5d
	and  c                                           ; $7e8a: $a1
	ld   [hl], h                                     ; $7e8b: $74
	sbc  [hl]                                        ; $7e8c: $9e
	inc  b                                           ; $7e8d: $04
	rst  $30                                         ; $7e8e: $f7
	dec  b                                           ; $7e8f: $05
	or   a                                           ; $7e90: $b7
	inc  b                                           ; $7e91: $04
	and  b                                           ; $7e92: $a0
	inc  b                                           ; $7e93: $04
	inc  h                                           ; $7e94: $24
	dec  c                                           ; $7e95: $0d
	ld   a, b                                        ; $7e96: $78
	ld   a, h                                        ; $7e97: $7c
	ld   a, e                                        ; $7e98: $7b
	sbc  a                                           ; $7e99: $9f
	dec  c                                           ; $7e9a: $0d
	nop                                              ; $7e9b: $00
	ld   a, [bc]                                     ; $7e9c: $0a
	ld   b, $2a                                      ; $7e9d: $06 $2a
	dec  b                                           ; $7e9f: $05
	inc  e                                           ; $7ea0: $1c
	dec  c                                           ; $7ea1: $0d
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	ld   bc, $9166                                   ; $7ea4: $01 $66 $91
	ld   d, b                                        ; $7ea7: $50
	sbc  [hl]                                        ; $7ea8: $9e
	inc  bc                                          ; $7ea9: $03
	xor  h                                           ; $7eaa: $ac
	ld   b, $8a                                      ; $7eab: $06 $8a
	and  b                                           ; $7ead: $a0
	dec  c                                           ; $7eae: $0d
	ld   [bc], a                                     ; $7eaf: $02
	ei                                               ; $7eb0: $fb
	ld   e, a                                        ; $7eb1: $5f
	adc  h                                           ; $7eb2: $8c
	ld   h, l                                        ; $7eb3: $65
	sub  l                                           ; $7eb4: $95
	ld   d, h                                        ; $7eb5: $54
	sbc  a                                           ; $7eb6: $9f
	dec  c                                           ; $7eb7: $0d
	ld   [$5d00], sp                                 ; $7eb8: $08 $00 $5d
	and  c                                           ; $7ebb: $a1
	sbc  a                                           ; $7ebc: $9f
	dec  c                                           ; $7ebd: $0d
	nop                                              ; $7ebe: $00
	ld   a, [bc]                                     ; $7ebf: $0a
	rrca                                             ; $7ec0: $0f
	nop                                              ; $7ec1: $00
	ld   bc, $7d01                                   ; $7ec2: $01 $01 $7d
	ld   d, d                                        ; $7ec5: $52
	sbc  a                                           ; $7ec6: $9f
	dec  c                                           ; $7ec7: $0d
	nop                                              ; $7ec8: $00
	ld   a, [bc]                                     ; $7ec9: $0a
	dec  c                                           ; $7eca: $0d
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	db   $10                                         ; $7ecd: $10
	ld   c, e                                        ; $7ece: $4b
	nop                                              ; $7ecf: $00
	ld   bc, $0412                                   ; $7ed0: $01 $12 $04
	push bc                                          ; $7ed3: $c5
	sbc  [hl]                                        ; $7ed4: $9e
	inc  de                                          ; $7ed5: $13
	inc  b                                           ; $7ed6: $04
	push bc                                          ; $7ed7: $c5
	rst  $38                                         ; $7ed8: $ff
	rst  $38                                         ; $7ed9: $ff
	ld   d, $04                                      ; $7eda: $16 $04
	push bc                                          ; $7edc: $c5
	rst  $38                                         ; $7edd: $ff
	rst  $38                                         ; $7ede: $ff
	rst  $38                                         ; $7edf: $ff
	rst  $38                                         ; $7ee0: $ff
	dec  c                                           ; $7ee1: $0d
	ld   [de], a                                     ; $7ee2: $12
	add  hl, de                                      ; $7ee3: $19
	inc  b                                           ; $7ee4: $04
	push bc                                          ; $7ee5: $c5
	rst  $38                                         ; $7ee6: $ff
	rst  $38                                         ; $7ee7: $ff
	rst  $38                                         ; $7ee8: $ff
	rst  $38                                         ; $7ee9: $ff
	inc  d                                           ; $7eea: $14
	ld   [de], a                                     ; $7eeb: $12
	inc  b                                           ; $7eec: $04
	push bc                                          ; $7eed: $c5
	rst  $38                                         ; $7eee: $ff
	rst  $38                                         ; $7eef: $ff
	rst  $38                                         ; $7ef0: $ff
	rst  $38                                         ; $7ef1: $ff
	dec  c                                           ; $7ef2: $0d
	dec  d                                           ; $7ef3: $15
	jr   jr_05b_7efa                                 ; $7ef4: $18 $04

	push bc                                          ; $7ef6: $c5
	rst  $38                                         ; $7ef7: $ff
	rst  $38                                         ; $7ef8: $ff
	rst  $38                                         ; $7ef9: $ff

jr_05b_7efa:
	rst  $38                                         ; $7efa: $ff
	ld   d, $14                                      ; $7efb: $16 $14
	inc  b                                           ; $7efd: $04
	push bc                                          ; $7efe: $c5
	sbc  a                                           ; $7eff: $9f
	dec  c                                           ; $7f00: $0d
	nop                                              ; $7f01: $00
	ld   a, [bc]                                     ; $7f02: $0a
	ld   bc, $020a                                   ; $7f03: $01 $0a $02
	inc  bc                                          ; $7f06: $03
	ld   l, c                                        ; $7f07: $69
	ld   [bc], a                                     ; $7f08: $02
	xor  d                                           ; $7f09: $aa
	ld   a, l                                        ; $7f0a: $7d
	ld   d, $14                                      ; $7f0b: $16 $14
	inc  b                                           ; $7f0d: $04
	push bc                                          ; $7f0e: $c5
	sbc  a                                           ; $7f0f: $9f
	ld   a, [bc]                                     ; $7f10: $0a
	inc  bc                                          ; $7f11: $03
	dec  c                                           ; $7f12: $0d
	sub  [hl]                                        ; $7f13: $96
	ld   h, l                                        ; $7f14: $65
	sbc  [hl]                                        ; $7f15: $9e
	inc  bc                                          ; $7f16: $03
	ld   a, [hl]                                     ; $7f17: $7e
	dec  b                                           ; $7f18: $05
	nop                                              ; $7f19: $00
	sbc  a                                           ; $7f1a: $9f
	dec  c                                           ; $7f1b: $0d
	nop                                              ; $7f1c: $00
	ld   a, [bc]                                     ; $7f1d: $0a
	inc  e                                           ; $7f1e: $1c
	dec  c                                           ; $7f1f: $0d
	nop                                              ; $7f20: $00
	nop                                              ; $7f21: $00
	ld   bc, $7e03                                   ; $7f22: $01 $03 $7e
	sbc  l                                           ; $7f25: $9d
	ld   [hl], c                                     ; $7f26: $71
	ld   l, l                                        ; $7f27: $6d
	ld   a, h                                        ; $7f28: $7c
	ld   a, e                                        ; $7f29: $7b
	ld   [$5d00], sp                                 ; $7f2a: $08 $00 $5d
	and  c                                           ; $7f2d: $a1
	sbc  a                                           ; $7f2e: $9f
	dec  c                                           ; $7f2f: $0d
	ld   h, [hl]                                     ; $7f30: $66
	sub  c                                           ; $7f31: $91
	ld   d, b                                        ; $7f32: $50
	sbc  [hl]                                        ; $7f33: $9e
	ld   l, e                                        ; $7f34: $6b
	sbc  d                                           ; $7f35: $9a
	ld   l, h                                        ; $7f36: $6c
	sbc  d                                           ; $7f37: $9a
	ld   a, h                                        ; $7f38: $7c
	inc  b                                           ; $7f39: $04
	push bc                                          ; $7f3a: $c5
	inc  bc                                          ; $7f3b: $03
	pop  bc                                          ; $7f3c: $c1
	and  b                                           ; $7f3d: $a0
	dec  c                                           ; $7f3e: $0d
	inc  b                                           ; $7f3f: $04
	ld   l, a                                        ; $7f40: $6f
	ld   [bc], a                                     ; $7f41: $02
	ld   [hl], h                                     ; $7f42: $74
	ld   h, l                                        ; $7f43: $65
	ld   [hl], h                                     ; $7f44: $74
	ld   l, a                                        ; $7f45: $6f
	sub  l                                           ; $7f46: $95
	ld   d, h                                        ; $7f47: $54
	ld   l, [hl]                                     ; $7f48: $6e
	ld   d, d                                        ; $7f49: $52
	sbc  a                                           ; $7f4a: $9f
	dec  c                                           ; $7f4b: $0d
	nop                                              ; $7f4c: $00
	ld   a, [bc]                                     ; $7f4d: $0a
	add  hl, de                                      ; $7f4e: $19
	dec  b                                           ; $7f4f: $05
	inc  bc                                          ; $7f50: $03
	rla                                              ; $7f51: $17
	jr   jr_05b_7f58                                 ; $7f52: $18 $04

	push bc                                          ; $7f54: $c5
	sbc  [hl]                                        ; $7f55: $9e
	jr   @+$1c                                       ; $7f56: $18 $1a

jr_05b_7f58:
	inc  b                                           ; $7f58: $04
	push bc                                          ; $7f59: $c5
	sbc  [hl]                                        ; $7f5a: $9e
	ld   d, $14                                      ; $7f5b: $16 $14
	inc  b                                           ; $7f5d: $04
	push bc                                          ; $7f5e: $c5
	nop                                              ; $7f5f: $00
	nop                                              ; $7f60: $00
	rla                                              ; $7f61: $17
	inc  de                                          ; $7f62: $13
	inc  b                                           ; $7f63: $04
	push bc                                          ; $7f64: $c5
	sbc  [hl]                                        ; $7f65: $9e
	add  hl, de                                      ; $7f66: $19
	inc  d                                           ; $7f67: $14
	inc  b                                           ; $7f68: $04
	push bc                                          ; $7f69: $c5
	sbc  [hl]                                        ; $7f6a: $9e
	ld   d, $14                                      ; $7f6b: $16 $14
	inc  b                                           ; $7f6d: $04
	push bc                                          ; $7f6e: $c5
	nop                                              ; $7f6f: $00
	ld   bc, $1418                                   ; $7f70: $01 $18 $14
	inc  b                                           ; $7f73: $04
	push bc                                          ; $7f74: $c5
	sbc  [hl]                                        ; $7f75: $9e
	rla                                              ; $7f76: $17
	ld   a, [de]                                     ; $7f77: $1a
	inc  b                                           ; $7f78: $04
	push bc                                          ; $7f79: $c5
	sbc  [hl]                                        ; $7f7a: $9e
	ld   d, $18                                      ; $7f7b: $16 $18
	inc  b                                           ; $7f7d: $04
	push bc                                          ; $7f7e: $c5
	nop                                              ; $7f7f: $00
	ld   [bc], a                                     ; $7f80: $02
	rlca                                             ; $7f81: $07
	dec  a                                           ; $7f82: $3d
	ld   b, $02                                      ; $7f83: $06 $02
	inc  bc                                          ; $7f85: $03
	ld   bc, $2000                                   ; $7f86: $01 $00 $20
	nop                                              ; $7f89: $00
	rlca                                             ; $7f8a: $07
	ld   [hl], h                                     ; $7f8b: $74
	rlca                                             ; $7f8c: $07
	ld   [bc], a                                     ; $7f8d: $02
	inc  bc                                          ; $7f8e: $03
	ld   bc, $2001                                   ; $7f8f: $01 $01 $20
	nop                                              ; $7f92: $00
	rlca                                             ; $7f93: $07
	adc  a                                           ; $7f94: $8f
	rlca                                             ; $7f95: $07
	ld   [bc], a                                     ; $7f96: $02
	inc  bc                                          ; $7f97: $03
	ld   bc, $2002                                   ; $7f98: $01 $02 $20
	nop                                              ; $7f9b: $00
	ld   b, $29                                      ; $7f9c: $06 $29
	ld   b, $1c                                      ; $7f9e: $06 $1c
	dec  c                                           ; $7fa0: $0d
	ld   [bc], a                                     ; $7fa1: $02
	ld   [bc], a                                     ; $7fa2: $02
	ld   bc, $5490                                   ; $7fa3: $01 $90 $54
	sbc  [hl]                                        ; $7fa6: $9e
	ld   a, l                                        ; $7fa7: $7d
	sub  d                                           ; $7fa8: $92
	ld   e, l                                        ; $7fa9: $5d
	ld   h, l                                        ; $7faa: $65
	ld   [hl], h                                     ; $7fab: $74
	sbc  a                                           ; $7fac: $9f
	dec  c                                           ; $7fad: $0d
	nop                                              ; $7fae: $00
	ld   a, [bc]                                     ; $7faf: $0a
	ld   b, $d8                                      ; $7fb0: $06 $d8
	dec  b                                           ; $7fb2: $05
	inc  e                                           ; $7fb3: $1c
	dec  c                                           ; $7fb4: $0d
	nop                                              ; $7fb5: $00
	nop                                              ; $7fb6: $00
	ld   bc, $1817                                   ; $7fb7: $01 $17 $18
	inc  b                                           ; $7fba: $04
	push bc                                          ; $7fbb: $c5
	sbc  [hl]                                        ; $7fbc: $9e
	jr   jr_05b_7fd9                                 ; $7fbd: $18 $1a

	inc  b                                           ; $7fbf: $04
	push bc                                          ; $7fc0: $c5
	sbc  [hl]                                        ; $7fc1: $9e
	ld   d, $14                                      ; $7fc2: $16 $14
	inc  b                                           ; $7fc4: $04
	push bc                                          ; $7fc5: $c5
	ld   a, e                                        ; $7fc6: $7b
	sbc  a                                           ; $7fc7: $9f
	dec  c                                           ; $7fc8: $0d
	nop                                              ; $7fc9: $00
	ld   a, [bc]                                     ; $7fca: $0a
	rrca                                             ; $7fcb: $0f
	inc  c                                           ; $7fcc: $0c
	nop                                              ; $7fcd: $00
	ld   bc, $9750                                   ; $7fce: $01 $50 $97
	sbc  [hl]                                        ; $7fd1: $9e
	inc  b                                           ; $7fd2: $04
	pop  hl                                          ; $7fd3: $e1
	inc  b                                           ; $7fd4: $04
	rst  $38                                         ; $7fd5: $ff
	sbc  [hl]                                        ; $7fd6: $9e
	ld   a, b                                        ; $7fd7: $78
	ld   a, c                                        ; $7fd8: $79

jr_05b_7fd9:
	ld   h, l                                        ; $7fd9: $65
	ld   [hl], h                                     ; $7fda: $74
	sbc  c                                           ; $7fdb: $99
	ld   a, h                                        ; $7fdc: $7c
	ld   sp, hl                                      ; $7fdd: $f9
	dec  c                                           ; $7fde: $0d
	ld   l, e                                        ; $7fdf: $6b
	sbc  d                                           ; $7fe0: $9a
	sbc  [hl]                                        ; $7fe1: $9e
	ld   h, e                                        ; $7fe2: $63
	ld   [hl], c                                     ; $7fe3: $71
	ld   e, e                                        ; $7fe4: $5b
	sbc  l                                           ; $7fe5: $9d
	ld   l, l                                        ; $7fe6: $6d
	ld   h, l                                        ; $7fe7: $65
	ld   e, d                                        ; $7fe8: $5a
	inc  bc                                          ; $7fe9: $03
	pop  bc                                          ; $7fea: $c1
	ld   d, [hl]                                     ; $7feb: $56
	ld   l, l                                        ; $7fec: $6d
	dec  c                                           ; $7fed: $0d
	inc  bc                                          ; $7fee: $03
	ld   d, l                                        ; $7fef: $55
	dec  b                                           ; $7ff0: $05
	ld   h, d                                        ; $7ff1: $62
	ld   h, [hl]                                     ; $7ff2: $66
	sub  c                                           ; $7ff3: $91
	ld   a, b                                        ; $7ff4: $78
	ld   d, d                                        ; $7ff5: $52
	sbc  a                                           ; $7ff6: $9f
	dec  c                                           ; $7ff7: $0d
	nop                                              ; $7ff8: $00
	ld   a, [bc]                                     ; $7ff9: $0a
	ld   bc, $8b06                                   ; $7ffa: $01 $06 $8b
	ld   a, c                                        ; $7ffd: $79
	db   $e3                                         ; $7ffe: $e3
	db   $e4                                         ; $7fff: $e4
