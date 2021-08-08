; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

	db   $e3                                         ; $4000: $e3
	ld   [hl], l                                     ; $4001: $75
	ld   h, a                                        ; $4002: $67
	sbc  l                                           ; $4003: $9d
	sub  [hl]                                        ; $4004: $96
	ld   a, e                                        ; $4005: $7b
	sbc  a                                           ; $4006: $9f
	dec  c                                           ; $4007: $0d
	nop                                              ; $4008: $00
	ld   a, [bc]                                     ; $4009: $0a
	ld   bc, $0008                                   ; $400a: $01 $08 $00
	ld   h, e                                        ; $400d: $63
	and  c                                           ; $400e: $a1
	sbc  [hl]                                        ; $400f: $9e
	sbc  l                                           ; $4010: $9d
	ld   e, c                                        ; $4011: $59
	ld   [hl], c                                     ; $4012: $71
	ld   [hl], h                                     ; $4013: $74
	dec  c                                           ; $4014: $0d
	sub  a                                           ; $4015: $97
	ld   [hl], c                                     ; $4016: $71
	ld   h, l                                        ; $4017: $65
	sub  c                                           ; $4018: $91
	sbc  c                                           ; $4019: $99
	sbc  l                                           ; $401a: $9d
	db   $fc                                         ; $401b: $fc
	sbc  a                                           ; $401c: $9f
	dec  c                                           ; $401d: $0d
	ld   [hl], l                                     ; $401e: $75
	ld   a, l                                        ; $401f: $7d
	sbc  [hl]                                        ; $4020: $9e
	sbc  l                                           ; $4021: $9d
	ld   l, l                                        ; $4022: $6d
	ld   e, l                                        ; $4023: $5d
	ld   h, l                                        ; $4024: $65
	ld   a, l                                        ; $4025: $7d
	ld   h, c                                        ; $4026: $61
	sbc  d                                           ; $4027: $9a
	ld   [hl], l                                     ; $4028: $75
	rst  $38                                         ; $4029: $ff
	rst  $38                                         ; $402a: $ff
	dec  c                                           ; $402b: $0d
	nop                                              ; $402c: $00
	ld   a, [bc]                                     ; $402d: $0a
	dec  c                                           ; $402e: $0d
	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	rrca                                             ; $4031: $0f
	nop                                              ; $4032: $00
	ld   bc, $1e09                                   ; $4033: $01 $09 $1e
	nop                                              ; $4036: $00
	inc  e                                           ; $4037: $1c
	ld   [bc], a                                     ; $4038: $02
	rlca                                             ; $4039: $07
	rlca                                             ; $403a: $07
	dec  e                                           ; $403b: $1d
	ld   b, b                                        ; $403c: $40
	ld   [de], a                                     ; $403d: $12
	inc  bc                                          ; $403e: $03
	ld   [de], a                                     ; $403f: $12
	ld   bc, $2901                                   ; $4040: $01 $01 $29
	nop                                              ; $4043: $00
	ld   bc, $7978                                   ; $4044: $01 $78 $79
	and  b                                           ; $4047: $a0
	ld   [bc], a                                     ; $4048: $02
	ld   h, l                                        ; $4049: $65
	ld   d, [hl]                                     ; $404a: $56
	ld   [bc], a                                     ; $404b: $02
	ld   b, b                                        ; $404c: $40
	and  c                                           ; $404d: $a1
	ld   [hl], l                                     ; $404e: $75
	ld   d, d                                        ; $404f: $52
	sub  a                                           ; $4050: $97
	ld   [hl], c                                     ; $4051: $71
	ld   h, l                                        ; $4052: $65
	sub  c                                           ; $4053: $91
	sbc  c                                           ; $4054: $99
	dec  c                                           ; $4055: $0d
	ld   a, h                                        ; $4056: $7c
	ld   e, c                                        ; $4057: $59
	ld   h, l                                        ; $4058: $65
	sub  a                                           ; $4059: $97
	ld   sp, hl                                      ; $405a: $f9
	dec  c                                           ; $405b: $0d
	adc  h                                           ; $405c: $8c
	ld   [hl], c                                     ; $405d: $71
	ld   l, l                                        ; $405e: $6d
	ld   e, l                                        ; $405f: $5d
	sbc  [hl]                                        ; $4060: $9e
	pop  bc                                          ; $4061: $c1
	db   $e3                                         ; $4062: $e3
	ld   [hl], l                                     ; $4063: $75
	ld   h, a                                        ; $4064: $67
	sbc  l                                           ; $4065: $9d
	ld   a, e                                        ; $4066: $7b
	sbc  a                                           ; $4067: $9f
	dec  c                                           ; $4068: $0d
	nop                                              ; $4069: $00
	ld   a, [bc]                                     ; $406a: $0a
	ld   bc, $fb90                                   ; $406b: $01 $90 $fb
	ld   e, a                                        ; $406e: $5f
	ld   [hl], c                                     ; $406f: $71
	ld   h, c                                        ; $4070: $61
	ld   d, h                                        ; $4071: $54
	ld   [hl], l                                     ; $4072: $75
	ld   h, a                                        ; $4073: $67
	sbc  l                                           ; $4074: $9d
	sbc  a                                           ; $4075: $9f
	dec  c                                           ; $4076: $0d
	ld   e, b                                        ; $4077: $58
	sub  d                                           ; $4078: $92
	ld   h, a                                        ; $4079: $67
	adc  l                                           ; $407a: $8d
	ld   a, b                                        ; $407b: $78
	ld   h, e                                        ; $407c: $63
	ld   d, d                                        ; $407d: $52
	sbc  a                                           ; $407e: $9f
	dec  c                                           ; $407f: $0d
	nop                                              ; $4080: $00
	ld   a, [bc]                                     ; $4081: $0a
	dec  c                                           ; $4082: $0d
	nop                                              ; $4083: $00
	nop                                              ; $4084: $00
	rrca                                             ; $4085: $0f
	nop                                              ; $4086: $00
	ld   bc, $1e09                                   ; $4087: $01 $09 $1e
	nop                                              ; $408a: $00
	ld   bc, $8d67                                   ; $408b: $01 $67 $8d
	sbc  d                                           ; $408e: $9a
	ld   h, e                                        ; $408f: $63
	and  c                                           ; $4090: $a1
	sbc  a                                           ; $4091: $9f
	dec  c                                           ; $4092: $0d
	ld   e, b                                        ; $4093: $58
	inc  b                                           ; $4094: $04
	ld   a, e                                        ; $4095: $7b
	sbc  d                                           ; $4096: $9a
	ld   h, e                                        ; $4097: $63
	adc  h                                           ; $4098: $8c
	ld   [hl], l                                     ; $4099: $75
	ld   h, a                                        ; $409a: $67
	sbc  a                                           ; $409b: $9f
	dec  c                                           ; $409c: $0d
	nop                                              ; $409d: $00
	ld   a, [bc]                                     ; $409e: $0a
	rlca                                             ; $409f: $07
	pop  hl                                          ; $40a0: $e1
	inc  b                                           ; $40a1: $04
	inc  bc                                          ; $40a2: $03
	ld   [de], a                                     ; $40a3: $12
	ld   bc, $2278                                   ; $40a4: $01 $78 $22
	nop                                              ; $40a7: $00
	inc  e                                           ; $40a8: $1c
	ld   [bc], a                                     ; $40a9: $02
	ld   bc, $0101                                   ; $40aa: $01 $01 $01
	ld   d, b                                        ; $40ad: $50
	sub  a                                           ; $40ae: $97
	sbc  [hl]                                        ; $40af: $9e
	ld   [$6300], sp                                 ; $40b0: $08 $00 $63
	and  c                                           ; $40b3: $a1
	sbc  a                                           ; $40b4: $9f
	dec  c                                           ; $40b5: $0d
	ld   [bc], a                                     ; $40b6: $02
	sub  l                                           ; $40b7: $95
	ld   [bc], a                                     ; $40b8: $02
	sub  e                                           ; $40b9: $93
	sbc  b                                           ; $40ba: $98
	ld   h, d                                        ; $40bb: $62
	ld   [bc], a                                     ; $40bc: $02
	sub  h                                           ; $40bd: $94
	dec  b                                           ; $40be: $05
	rrca                                             ; $40bf: $0f
	ld   h, e                                        ; $40c0: $63
	adc  h                                           ; $40c1: $8c
	sbc  a                                           ; $40c2: $9f
	dec  c                                           ; $40c3: $0d
	nop                                              ; $40c4: $00
	ld   a, [bc]                                     ; $40c5: $0a
	ld   bc, $0458                                   ; $40c6: $01 $58 $04
	xor  l                                           ; $40c9: $ad
	ld   a, l                                        ; $40ca: $7d
	sbc  [hl]                                        ; $40cb: $9e
	ld   h, e                                        ; $40cc: $63
	ld   d, d                                        ; $40cd: $52
	ld   a, b                                        ; $40ce: $78
	and  c                                           ; $40cf: $a1
	ld   l, [hl]                                     ; $40d0: $6e
	ld   [hl], c                                     ; $40d1: $71
	ld   l, l                                        ; $40d2: $6d
	dec  c                                           ; $40d3: $0d
	sub  [hl]                                        ; $40d4: $96
	ld   d, h                                        ; $40d5: $54
	ld   [hl], l                                     ; $40d6: $75
	ld   h, a                                        ; $40d7: $67
	sbc  l                                           ; $40d8: $9d
	ld   a, e                                        ; $40d9: $7b
	sbc  a                                           ; $40da: $9f
	dec  c                                           ; $40db: $0d
	nop                                              ; $40dc: $00
	ld   a, [bc]                                     ; $40dd: $0a
	ld   b, $06                                      ; $40de: $06 $06
	dec  b                                           ; $40e0: $05
	inc  e                                           ; $40e1: $1c
	ld   [bc], a                                     ; $40e2: $02
	nop                                              ; $40e3: $00
	nop                                              ; $40e4: $00
	ld   bc, $9750                                   ; $40e5: $01 $50 $97
	sbc  [hl]                                        ; $40e8: $9e
	ld   [$6300], sp                                 ; $40e9: $08 $00 $63
	and  c                                           ; $40ec: $a1
	sbc  a                                           ; $40ed: $9f
	dec  c                                           ; $40ee: $0d
	ld   e, b                                        ; $40ef: $58
	inc  b                                           ; $40f0: $04
	xor  l                                           ; $40f1: $ad
	ld   a, l                                        ; $40f2: $7d
	sbc  [hl]                                        ; $40f3: $9e
	ld   h, e                                        ; $40f4: $63
	ld   d, d                                        ; $40f5: $52
	ld   a, b                                        ; $40f6: $78
	and  c                                           ; $40f7: $a1
	ld   l, [hl]                                     ; $40f8: $6e
	ld   [hl], c                                     ; $40f9: $71
	ld   l, l                                        ; $40fa: $6d
	dec  c                                           ; $40fb: $0d
	sub  [hl]                                        ; $40fc: $96
	ld   d, h                                        ; $40fd: $54
	ld   [hl], l                                     ; $40fe: $75
	ld   h, a                                        ; $40ff: $67
	sbc  l                                           ; $4100: $9d
	ld   a, e                                        ; $4101: $7b
	sbc  a                                           ; $4102: $9f
	dec  c                                           ; $4103: $0d
	nop                                              ; $4104: $00
	ld   a, [bc]                                     ; $4105: $0a
	inc  e                                           ; $4106: $1c
	ld   [bc], a                                     ; $4107: $02
	nop                                              ; $4108: $00
	nop                                              ; $4109: $00
	ld   bc, $6176                                   ; $410a: $01 $76 $61
	sbc  e                                           ; $410d: $9b
	ld   [hl], l                                     ; $410e: $75
	sbc  [hl]                                        ; $410f: $9e
	ld   [$6300], sp                                 ; $4110: $08 $00 $63
	and  c                                           ; $4113: $a1
	ld   a, l                                        ; $4114: $7d
	dec  c                                           ; $4115: $0d
	sbc  l                                           ; $4116: $9d
	ld   l, l                                        ; $4117: $6d
	ld   e, l                                        ; $4118: $5d
	ld   h, l                                        ; $4119: $65
	ld   a, h                                        ; $411a: $7c
	inc  bc                                          ; $411b: $03
	ld   b, h                                        ; $411c: $44
	ld   [bc], a                                     ; $411d: $02
	rra                                              ; $411e: $1f
	inc  bc                                          ; $411f: $03
	xor  h                                           ; $4120: $ac
	dec  c                                           ; $4121: $0d
	ld   h, d                                        ; $4122: $62
	inc  bc                                          ; $4123: $03
	push bc                                          ; $4124: $c5
	inc  b                                           ; $4125: $04
	dec  hl                                          ; $4126: $2b
	ld   [hl], l                                     ; $4127: $75
	ld   h, a                                        ; $4128: $67
	sbc  l                                           ; $4129: $9d
	sub  [hl]                                        ; $412a: $96
	ld   a, e                                        ; $412b: $7b
	ld   sp, hl                                      ; $412c: $f9
	dec  c                                           ; $412d: $0d
	nop                                              ; $412e: $00
	ld   a, [bc]                                     ; $412f: $0a
	add  hl, de                                      ; $4130: $19
	dec  b                                           ; $4131: $05
	inc  bc                                          ; $4132: $03
	cp   b                                           ; $4133: $b8
	push af                                          ; $4134: $f5
	ret  z                                           ; $4135: $c8

	xor  $eb                                         ; $4136: $ee $eb
	nop                                              ; $4138: $00
	nop                                              ; $4139: $00
	ld   [bc], a                                     ; $413a: $02
	dec  hl                                          ; $413b: $2b
	ld   a, l                                        ; $413c: $7d
	pop  bc                                          ; $413d: $c1
	and  l                                           ; $413e: $a5
	and  $00                                         ; $413f: $e6 $00
	ld   bc, $2b02                                   ; $4141: $01 $02 $2b
	sub  h                                           ; $4144: $94
	ld   d, [hl]                                     ; $4145: $56
	ld   a, c                                        ; $4146: $79
	nop                                              ; $4147: $00
	ld   [bc], a                                     ; $4148: $02
	rlca                                             ; $4149: $07
	sbc  b                                           ; $414a: $98
	ld   [bc], a                                     ; $414b: $02
	ld   [bc], a                                     ; $414c: $02
	inc  bc                                          ; $414d: $03
	ld   bc, $2000                                   ; $414e: $01 $00 $20
	nop                                              ; $4151: $00
	rlca                                             ; $4152: $07
	ld   h, a                                        ; $4153: $67
	dec  b                                           ; $4154: $05
	ld   [bc], a                                     ; $4155: $02
	inc  bc                                          ; $4156: $03
	ld   bc, $2001                                   ; $4157: $01 $01 $20
	nop                                              ; $415a: $00
	rlca                                             ; $415b: $07
	dec  c                                           ; $415c: $0d
	ld   b, $02                                      ; $415d: $06 $02
	inc  bc                                          ; $415f: $03
	ld   bc, $2002                                   ; $4160: $01 $02 $20
	nop                                              ; $4163: $00
	ld   b, $95                                      ; $4164: $06 $95
	ld   b, $0f                                      ; $4166: $06 $0f
	nop                                              ; $4168: $00
	ld   bc, $0101                                   ; $4169: $01 $01 $01
	rlca                                             ; $416c: $07
	ld   [bc], a                                     ; $416d: $02
	dec  hl                                          ; $416e: $2b
	ld   a, l                                        ; $416f: $7d
	pop  bc                                          ; $4170: $c1
	and  l                                           ; $4171: $a5
	and  $01                                         ; $4172: $e6 $01
	ld   [$6775], sp                                 ; $4174: $08 $75 $67
	sub  [hl]                                        ; $4177: $96
	ld   a, e                                        ; $4178: $7b
	sbc  a                                           ; $4179: $9f
	dec  c                                           ; $417a: $0d
	nop                                              ; $417b: $00
	ld   a, [bc]                                     ; $417c: $0a
	inc  e                                           ; $417d: $1c
	ld   [bc], a                                     ; $417e: $02
	ld   bc, $0101                                   ; $417f: $01 $01 $01
	ld   d, [hl]                                     ; $4182: $56
	ld   d, [hl]                                     ; $4183: $56
	sbc  [hl]                                        ; $4184: $9e
	ld   l, e                                        ; $4185: $6b
	ld   d, h                                        ; $4186: $54
	ld   [hl], l                                     ; $4187: $75
	ld   h, a                                        ; $4188: $67
	sbc  l                                           ; $4189: $9d
	sbc  a                                           ; $418a: $9f
	dec  c                                           ; $418b: $0d
	sbc  l                                           ; $418c: $9d
	ld   l, l                                        ; $418d: $6d
	ld   e, l                                        ; $418e: $5d
	ld   h, l                                        ; $418f: $65
	ld   [bc], a                                     ; $4190: $02
	rra                                              ; $4191: $1f
	ld   h, [hl]                                     ; $4192: $66
	ld   l, l                                        ; $4193: $6d
	ld   bc, $5807                                   ; $4194: $01 $07 $58
	inc  b                                           ; $4197: $04
	ret                                              ; $4198: $c9


	ld   bc, $7908                                   ; $4199: $01 $08 $79
	dec  c                                           ; $419c: $0d
	ld   e, b                                        ; $419d: $58
	ld   [bc], a                                     ; $419e: $02
	add  c                                           ; $419f: $81
	inc  bc                                          ; $41a0: $03
	sbc  b                                           ; $41a1: $98
	ld   a, l                                        ; $41a2: $7d
	dec  b                                           ; $41a3: $05
	ld   h, e                                        ; $41a4: $63
	ld   h, l                                        ; $41a5: $65
	ld   [hl], h                                     ; $41a6: $74
	rst  $38                                         ; $41a7: $ff
	rst  $38                                         ; $41a8: $ff
	dec  c                                           ; $41a9: $0d
	nop                                              ; $41aa: $00
	ld   a, [bc]                                     ; $41ab: $0a
	ld   bc, $9a6b                                   ; $41ac: $01 $6b $9a
	ld   a, l                                        ; $41af: $7d
	ld   l, e                                        ; $41b0: $6b
	sbc  d                                           ; $41b1: $9a
	ld   a, l                                        ; $41b2: $7d
	dec  c                                           ; $41b3: $0d
	ld   l, l                                        ; $41b4: $6d
	ld   d, d                                        ; $41b5: $52
	add  [hl]                                        ; $41b6: $86
	and  c                                           ; $41b7: $a1
	ld   [bc], a                                     ; $41b8: $02
	scf                                              ; $41b9: $37
	inc  b                                           ; $41ba: $04
	dec  de                                          ; $41bb: $1b
	inc  b                                           ; $41bc: $04
	jr   nz, jr_052_4237                             ; $41bd: $20 $78

	inc  b                                           ; $41bf: $04
	adc  [hl]                                        ; $41c0: $8e
	inc  b                                           ; $41c1: $04
	inc  c                                           ; $41c2: $0c
	ld   a, c                                        ; $41c3: $79
	dec  c                                           ; $41c4: $0d
	ld   a, b                                        ; $41c5: $78
	ld   [hl], c                                     ; $41c6: $71
	ld   l, l                                        ; $41c7: $6d
	sub  b                                           ; $41c8: $90
	ld   a, h                                        ; $41c9: $7c
	ld   [hl], l                                     ; $41ca: $75
	ld   h, l                                        ; $41cb: $65
	ld   l, l                                        ; $41cc: $6d
	sbc  l                                           ; $41cd: $9d
	sbc  a                                           ; $41ce: $9f
	dec  c                                           ; $41cf: $0d
	nop                                              ; $41d0: $00
	ld   a, [bc]                                     ; $41d1: $0a
	dec  e                                           ; $41d2: $1d
	ld   b, b                                        ; $41d3: $40
	ld   [de], a                                     ; $41d4: $12
	inc  bc                                          ; $41d5: $03
	ld   [de], a                                     ; $41d6: $12
	ld   bc, $2802                                   ; $41d7: $01 $02 $28
	nop                                              ; $41da: $00
	ld   bc, $5d96                                   ; $41db: $01 $96 $5d
	ld   h, d                                        ; $41de: $62
	inc  bc                                          ; $41df: $03
	push bc                                          ; $41e0: $c5
	ld   h, [hl]                                     ; $41e1: $66
	ld   [hl], l                                     ; $41e2: $75
	ld   h, l                                        ; $41e3: $65
	ld   l, l                                        ; $41e4: $6d
	sbc  l                                           ; $41e5: $9d
	ld   a, e                                        ; $41e6: $7b
	sbc  a                                           ; $41e7: $9f
	dec  c                                           ; $41e8: $0d
	ld   [hl], l                                     ; $41e9: $75
	ld   a, l                                        ; $41ea: $7d
	sbc  [hl]                                        ; $41eb: $9e
	sbc  l                                           ; $41ec: $9d
	ld   l, l                                        ; $41ed: $6d
	ld   e, l                                        ; $41ee: $5d
	ld   h, l                                        ; $41ef: $65
	dec  c                                           ; $41f0: $0d
	ld   l, e                                        ; $41f1: $6b
	sbc  e                                           ; $41f2: $9b
	ld   l, e                                        ; $41f3: $6b
	sbc  e                                           ; $41f4: $9b
	inc  bc                                          ; $41f5: $03
	and  a                                           ; $41f6: $a7
	adc  l                                           ; $41f7: $8d
	adc  h                                           ; $41f8: $8c
	ld   h, a                                        ; $41f9: $67
	sbc  l                                           ; $41fa: $9d
	sbc  a                                           ; $41fb: $9f
	inc  bc                                          ; $41fc: $03
	add  e                                           ; $41fd: $83
	dec  b                                           ; $41fe: $05
	dec  c                                           ; $41ff: $0d
	sbc  a                                           ; $4200: $9f
	dec  c                                           ; $4201: $0d
	nop                                              ; $4202: $00
	ld   a, [bc]                                     ; $4203: $0a
	dec  c                                           ; $4204: $0d
	nop                                              ; $4205: $00
	nop                                              ; $4206: $00
	rrca                                             ; $4207: $0f
	nop                                              ; $4208: $00
	ld   bc, $1e09                                   ; $4209: $01 $09 $1e
	nop                                              ; $420c: $00
	rrca                                             ; $420d: $0f
	nop                                              ; $420e: $00
	ld   bc, $0101                                   ; $420f: $01 $01 $01
	rlca                                             ; $4212: $07
	ld   [bc], a                                     ; $4213: $02
	dec  hl                                          ; $4214: $2b
	sub  h                                           ; $4215: $94
	ld   d, [hl]                                     ; $4216: $56
	ld   a, c                                        ; $4217: $79
	ld   bc, $7508                                   ; $4218: $01 $08 $75
	ld   h, a                                        ; $421b: $67
	sub  [hl]                                        ; $421c: $96
	ld   a, e                                        ; $421d: $7b
	sbc  a                                           ; $421e: $9f
	dec  c                                           ; $421f: $0d
	nop                                              ; $4220: $00
	ld   a, [bc]                                     ; $4221: $0a
	inc  e                                           ; $4222: $1c
	ld   [bc], a                                     ; $4223: $02
	ld   [bc], a                                     ; $4224: $02
	ld   [bc], a                                     ; $4225: $02
	ld   bc, $2b02                                   ; $4226: $01 $02 $2b
	sub  h                                           ; $4229: $94
	ld   d, [hl]                                     ; $422a: $56
	ld   a, c                                        ; $422b: $79
	ld   a, h                                        ; $422c: $7c
	inc  bc                                          ; $422d: $03
	ld   b, h                                        ; $422e: $44
	ld   [bc], a                                     ; $422f: $02
	rra                                              ; $4230: $1f
	ld   a, l                                        ; $4231: $7d
	dec  c                                           ; $4232: $0d
	nop                                              ; $4233: $00
	dec  b                                           ; $4234: $05
	ld   b, b                                        ; $4235: $40
	ld   c, c                                        ; $4236: $49

jr_052_4237:
	ld   [bc], a                                     ; $4237: $02
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	ld   bc, $5d63                                   ; $423a: $01 $63 $5d
	sub  a                                           ; $423d: $97
	ld   h, e                                        ; $423e: $63
	and  c                                           ; $423f: $a1
	ld   [hl], l                                     ; $4240: $75
	ld   h, a                                        ; $4241: $67
	sbc  l                                           ; $4242: $9d
	ld   a, [$000d]                                  ; $4243: $fa $0d $00
	dec  b                                           ; $4246: $05
	ld   b, b                                        ; $4247: $40
	ld   c, a                                        ; $4248: $4f
	ld   bc, $0002                                   ; $4249: $01 $02 $00
	ld   bc, $718c                                   ; $424c: $01 $8c $71
	ld   l, l                                        ; $424f: $6d
	ld   e, l                                        ; $4250: $5d
	sub  b                                           ; $4251: $90
	ei                                               ; $4252: $fb
	ld   a, [$0dfa]                                  ; $4253: $fa $fa $0d
	nop                                              ; $4256: $00
	ld   a, [bc]                                     ; $4257: $0a
	inc  e                                           ; $4258: $1c
	ld   [bc], a                                     ; $4259: $02
	rlca                                             ; $425a: $07
	rlca                                             ; $425b: $07
	dec  e                                           ; $425c: $1d
	ld   b, b                                        ; $425d: $40
	ld   [de], a                                     ; $425e: $12
	inc  bc                                          ; $425f: $03
	ld   [de], a                                     ; $4260: $12
	ld   bc, $2903                                   ; $4261: $01 $03 $29
	nop                                              ; $4264: $00
	ld   bc, $a178                                   ; $4265: $01 $78 $a1
	ld   l, [hl]                                     ; $4268: $6e
	ld   e, c                                        ; $4269: $59
	sbc  l                                           ; $426a: $9d
	ld   l, l                                        ; $426b: $6d
	ld   e, l                                        ; $426c: $5d
	ld   h, l                                        ; $426d: $65
	dec  c                                           ; $426e: $0d
	ld   [bc], a                                     ; $426f: $02
	and  c                                           ; $4270: $a1
	inc  b                                           ; $4271: $04
	sbc  [hl]                                        ; $4272: $9e
	ld   e, d                                        ; $4273: $5a
	ld   h, a                                        ; $4274: $67
	ld   e, [hl]                                     ; $4275: $5e
	sbc  d                                           ; $4276: $9a
	adc  h                                           ; $4277: $8c
	ld   l, c                                        ; $4278: $69
	and  c                                           ; $4279: $a1
	ld   a, h                                        ; $427a: $7c
	ld   [hl], l                                     ; $427b: $75
	dec  c                                           ; $427c: $0d
	inc  b                                           ; $427d: $04
	sub  l                                           ; $427e: $95
	ld   [bc], a                                     ; $427f: $02
	ld   hl, $9086                                   ; $4280: $21 $86 $90
	ld   [hl], a                                     ; $4283: $77
	sbc  b                                           ; $4284: $98
	adc  h                                           ; $4285: $8c
	ld   h, a                                        ; $4286: $67
	sbc  l                                           ; $4287: $9d
	sbc  a                                           ; $4288: $9f
	dec  c                                           ; $4289: $0d
	nop                                              ; $428a: $00
	ld   a, [bc]                                     ; $428b: $0a
	dec  c                                           ; $428c: $0d
	nop                                              ; $428d: $00
	nop                                              ; $428e: $00
	rrca                                             ; $428f: $0f
	nop                                              ; $4290: $00
	ld   bc, $1e09                                   ; $4291: $01 $09 $1e
	nop                                              ; $4294: $00
	inc  e                                           ; $4295: $1c
	ld   [bc], a                                     ; $4296: $02
	inc  bc                                          ; $4297: $03
	inc  bc                                          ; $4298: $03
	ld   bc, $6c62                                   ; $4299: $01 $62 $6c
	and  c                                           ; $429c: $a1
	ld   h, [hl]                                     ; $429d: $66
	ld   a, b                                        ; $429e: $78
	ld   d, d                                        ; $429f: $52
	ld   a, h                                        ; $42a0: $7c
	ld   [hl], l                                     ; $42a1: $75
	ld   h, a                                        ; $42a2: $67
	ld   e, c                                        ; $42a3: $59
	ld   sp, hl                                      ; $42a4: $f9
	dec  c                                           ; $42a5: $0d
	ld   h, c                                        ; $42a6: $61
	ld   a, h                                        ; $42a7: $7c
	ld   [bc], a                                     ; $42a8: $02
	sbc  b                                           ; $42a9: $98
	inc  bc                                          ; $42aa: $03
	nop                                              ; $42ab: $00
	ld   a, h                                        ; $42ac: $7c
	ret                                              ; $42ad: $c9


	call nz, $bad8                                   ; $42ae: $c4 $d8 $ba
	ret  nz                                          ; $42b1: $c0

	and  e                                           ; $42b2: $a3
	ld   a, h                                        ; $42b3: $7c
	dec  c                                           ; $42b4: $0d
	inc  bc                                          ; $42b5: $03
	ld   b, h                                        ; $42b6: $44
	ld   [bc], a                                     ; $42b7: $02
	rra                                              ; $42b8: $1f
	inc  bc                                          ; $42b9: $03
	xor  h                                           ; $42ba: $ac
	and  b                                           ; $42bb: $a0
	ld   h, l                                        ; $42bc: $65
	sub  a                                           ; $42bd: $97
	ld   a, b                                        ; $42be: $78
	ld   d, d                                        ; $42bf: $52
	halt                                             ; $42c0: $76
	ld   sp, hl                                      ; $42c1: $f9
	dec  c                                           ; $42c2: $0d
	nop                                              ; $42c3: $00
	ld   a, [bc]                                     ; $42c4: $0a
	inc  e                                           ; $42c5: $1c
	ld   [bc], a                                     ; $42c6: $02
	ld   [bc], a                                     ; $42c7: $02
	ld   [bc], a                                     ; $42c8: $02
	dec  e                                           ; $42c9: $1d
	ld   b, b                                        ; $42ca: $40
	ld   [de], a                                     ; $42cb: $12
	inc  bc                                          ; $42cc: $03
	ld   [de], a                                     ; $42cd: $12
	ld   bc, $2902                                   ; $42ce: $01 $02 $29
	nop                                              ; $42d1: $00
	ld   bc, $7850                                   ; $42d2: $01 $50 $78
	ld   l, l                                        ; $42d5: $6d
	sub  b                                           ; $42d6: $90
	sbc  [hl]                                        ; $42d7: $9e
	ld   [bc], a                                     ; $42d8: $02
	sbc  b                                           ; $42d9: $98
	inc  bc                                          ; $42da: $03
	nop                                              ; $42db: $00
	ld   a, c                                        ; $42dc: $79
	ld   d, d                                        ; $42dd: $52
	sbc  c                                           ; $42de: $99
	ld   a, h                                        ; $42df: $7c
	dec  c                                           ; $42e0: $0d
	nop                                              ; $42e1: $00
	dec  b                                           ; $42e2: $05
	ld   b, b                                        ; $42e3: $40
	ld   c, c                                        ; $42e4: $49
	ld   [bc], a                                     ; $42e5: $02
	nop                                              ; $42e6: $00
	nop                                              ; $42e7: $00
	ld   bc, $6575                                   ; $42e8: $01 $75 $65
	ld   l, l                                        ; $42eb: $6d
	sub  a                                           ; $42ec: $97
	sbc  [hl]                                        ; $42ed: $9e
	inc  bc                                          ; $42ee: $03
	ld   l, h                                        ; $42ef: $6c
	ld   h, l                                        ; $42f0: $65
	ld   e, l                                        ; $42f1: $5d
	sub  a                                           ; $42f2: $97
	ld   d, d                                        ; $42f3: $52
	dec  c                                           ; $42f4: $0d
	nop                                              ; $42f5: $00
	dec  b                                           ; $42f6: $05
	ld   b, b                                        ; $42f7: $40
	ld   c, a                                        ; $42f8: $4f
	ld   bc, $0002                                   ; $42f9: $01 $02 $00
	ld   bc, $ae04                                   ; $42fc: $01 $04 $ae
	ld   [bc], a                                     ; $42ff: $02
	call nc, $6378                                   ; $4300: $d4 $78 $63
	ld   d, d                                        ; $4303: $52
	ld   a, [$000d]                                  ; $4304: $fa $0d $00
	ld   a, [bc]                                     ; $4307: $0a
	ld   bc, $6d9d                                   ; $4308: $01 $9d $6d
	ld   e, l                                        ; $430b: $5d
	ld   h, l                                        ; $430c: $65
	sbc  [hl]                                        ; $430d: $9e
	sub  b                                           ; $430e: $90
	ld   d, h                                        ; $430f: $54
	inc  b                                           ; $4310: $04
	ld   b, d                                        ; $4311: $42
	adc  h                                           ; $4312: $8c
	ld   h, a                                        ; $4313: $67
	sbc  l                                           ; $4314: $9d
	sbc  a                                           ; $4315: $9f
	dec  c                                           ; $4316: $0d
	ld   [$6300], sp                                 ; $4317: $08 $00 $63
	and  c                                           ; $431a: $a1
	sub  b                                           ; $431b: $90
	sbc  [hl]                                        ; $431c: $9e
	ld   h, e                                        ; $431d: $63
	ld   [hl], c                                     ; $431e: $71
	ld   h, e                                        ; $431f: $63
	halt                                             ; $4320: $76
	dec  c                                           ; $4321: $0d
	ld   [bc], a                                     ; $4322: $02
	sub  l                                           ; $4323: $95
	ld   [bc], a                                     ; $4324: $02
	sub  e                                           ; $4325: $93
	sbc  b                                           ; $4326: $98
	ld   h, a                                        ; $4327: $67
	adc  h                                           ; $4328: $8c
	ld   l, c                                        ; $4329: $69
	ld   a, b                                        ; $432a: $78
	ld   h, e                                        ; $432b: $63
	ld   d, d                                        ; $432c: $52
	ld   a, [$000d]                                  ; $432d: $fa $0d $00
	ld   a, [bc]                                     ; $4330: $0a
	dec  c                                           ; $4331: $0d
	nop                                              ; $4332: $00
	nop                                              ; $4333: $00
	rrca                                             ; $4334: $0f
	nop                                              ; $4335: $00
	ld   bc, $1e09                                   ; $4336: $01 $09 $1e
	nop                                              ; $4339: $00
	nop                                              ; $433a: $00
	ld   c, $3e                                      ; $433b: $0e $3e
	inc  e                                           ; $433d: $1c
	ld   bc, $0000                                   ; $433e: $01 $00 $00
	ld   [bc], a                                     ; $4341: $02
	rlca                                             ; $4342: $07
	cp   [hl]                                        ; $4343: $be
	ld   bc, $8004                                   ; $4344: $01 $04 $80
	ld   sp, $ff01                                   ; $4347: $31 $01 $ff
	jr   nz, jr_052_434e                             ; $434a: $20 $02

	nop                                              ; $434c: $00
	inc  bc                                          ; $434d: $03

jr_052_434e:
	ld   b, c                                        ; $434e: $41
	jr   nz, jr_052_436d                             ; $434f: $20 $1c

	nop                                              ; $4351: $00
	ld   bc, $9e50                                   ; $4352: $01 $50 $9e
	ld   [$6300], sp                                 ; $4355: $08 $00 $63
	and  c                                           ; $4358: $a1
	sbc  a                                           ; $4359: $9f
	dec  c                                           ; $435a: $0d
	nop                                              ; $435b: $00
	ld   a, [bc]                                     ; $435c: $0a
	rrca                                             ; $435d: $0f
	nop                                              ; $435e: $00
	ld   bc, $6301                                   ; $435f: $01 $01 $63
	ld   e, l                                        ; $4362: $5d
	sub  a                                           ; $4363: $97
	ld   h, e                                        ; $4364: $63
	and  c                                           ; $4365: $a1
	sbc  [hl]                                        ; $4366: $9e
	dec  c                                           ; $4367: $0d
	inc  b                                           ; $4368: $04
	adc  a                                           ; $4369: $8f
	ld   e, b                                        ; $436a: $58
	ld   [bc], a                                     ; $436b: $02
	sbc  d                                           ; $436c: $9a

jr_052_436d:
	ld   e, e                                        ; $436d: $5b
	ld   a, b                                        ; $436e: $78
	and  c                                           ; $436f: $a1
	ld   [hl], l                                     ; $4370: $75
	ld   h, a                                        ; $4371: $67
	ld   e, c                                        ; $4372: $59
	ld   sp, hl                                      ; $4373: $f9
	dec  c                                           ; $4374: $0d
	nop                                              ; $4375: $00
	ld   a, [bc]                                     ; $4376: $0a
	inc  e                                           ; $4377: $1c
	ld   bc, $0101                                   ; $4378: $01 $01 $01
	ld   bc, $5656                                   ; $437b: $01 $56 $56
	sbc  [hl]                                        ; $437e: $9e
	ld   bc, $0207                                   ; $437f: $01 $07 $02
	and  e                                           ; $4382: $a3
	inc  b                                           ; $4383: $04
	ret  nc                                          ; $4384: $d0

	ld   a, h                                        ; $4385: $7c
	and  e                                           ; $4386: $a3
	push af                                          ; $4387: $f5
	ld   bc, $7608                                   ; $4388: $01 $08 $76
	ld   e, c                                        ; $438b: $59
	dec  c                                           ; $438c: $0d
	ld   bc, $0507                                   ; $438d: $01 $07 $05
	rra                                              ; $4390: $1f
	inc  b                                           ; $4391: $04
	sub  c                                           ; $4392: $91
	inc  b                                           ; $4393: $04
	sub  d                                           ; $4394: $92
	ld   [bc], a                                     ; $4395: $02
	and  h                                           ; $4396: $a4
	ld   bc, $7608                                   ; $4397: $01 $08 $76
	ld   e, c                                        ; $439a: $59
	sbc  [hl]                                        ; $439b: $9e
	inc  bc                                          ; $439c: $03
	ld   l, h                                        ; $439d: $6c
	inc  bc                                          ; $439e: $03
	ld   l, [hl]                                     ; $439f: $6e
	inc  b                                           ; $43a0: $04
	sub  b                                           ; $43a1: $90
	ld   [bc], a                                     ; $43a2: $02
	and  d                                           ; $43a3: $a2
	ld   e, d                                        ; $43a4: $5a
	dec  c                                           ; $43a5: $0d
	ld   [bc], a                                     ; $43a6: $02
	sbc  d                                           ; $43a7: $9a
	ld   e, e                                        ; $43a8: $5b
	ld   a, b                                        ; $43a9: $78
	and  c                                           ; $43aa: $a1
	ld   [hl], l                                     ; $43ab: $75
	ld   h, a                                        ; $43ac: $67
	sub  [hl]                                        ; $43ad: $96
	sbc  a                                           ; $43ae: $9f
	dec  c                                           ; $43af: $0d
	nop                                              ; $43b0: $00
	ld   a, [bc]                                     ; $43b1: $0a
	add  hl, de                                      ; $43b2: $19
	dec  b                                           ; $43b3: $05
	inc  bc                                          ; $43b4: $03
	ld   h, e                                        ; $43b5: $63
	ld   e, l                                        ; $43b6: $5d
	sub  a                                           ; $43b7: $97
	ld   h, e                                        ; $43b8: $63
	and  c                                           ; $43b9: $a1
	sub  a                                           ; $43ba: $97
	ld   h, l                                        ; $43bb: $65
	ld   d, d                                        ; $43bc: $52
	ld   [hl], l                                     ; $43bd: $75
	ld   h, a                                        ; $43be: $67
	ld   a, e                                        ; $43bf: $7b
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	inc  bc                                          ; $43c2: $03
	add  [hl]                                        ; $43c3: $86
	ld   [bc], a                                     ; $43c4: $02
	xor  l                                           ; $43c5: $ad
	ld   [hl], c                                     ; $43c6: $71
	adc  e                                           ; $43c7: $8b
	ld   d, d                                        ; $43c8: $52
	and  c                                           ; $43c9: $a1
	ld   [hl], l                                     ; $43ca: $75
	ld   h, a                                        ; $43cb: $67
	ld   a, e                                        ; $43cc: $7b
	nop                                              ; $43cd: $00
	ld   bc, $6d04                                   ; $43ce: $01 $04 $6d
	sub  b                                           ; $43d1: $90
	ld   [bc], a                                     ; $43d2: $02
	sbc  d                                           ; $43d3: $9a
	ld   e, e                                        ; $43d4: $5b
	ld   a, b                                        ; $43d5: $78
	and  c                                           ; $43d6: $a1
	ld   [hl], l                                     ; $43d7: $75
	ld   h, a                                        ; $43d8: $67
	sub  [hl]                                        ; $43d9: $96
	sbc  a                                           ; $43da: $9f
	nop                                              ; $43db: $00
	ld   [bc], a                                     ; $43dc: $02
	rlca                                             ; $43dd: $07
	ret  nz                                          ; $43de: $c0

	nop                                              ; $43df: $00
	ld   [bc], a                                     ; $43e0: $02
	inc  bc                                          ; $43e1: $03
	ld   bc, $2000                                   ; $43e2: $01 $00 $20
	nop                                              ; $43e5: $00
	rlca                                             ; $43e6: $07
	ld   a, [de]                                     ; $43e7: $1a
	ld   bc, $0302                                   ; $43e8: $01 $02 $03
	ld   bc, $2001                                   ; $43eb: $01 $01 $20
	nop                                              ; $43ee: $00
	rlca                                             ; $43ef: $07
	ld   e, [hl]                                     ; $43f0: $5e
	ld   bc, $0302                                   ; $43f1: $01 $02 $03
	ld   bc, $2002                                   ; $43f4: $01 $02 $20
	nop                                              ; $43f7: $00
	ld   b, $a1                                      ; $43f8: $06 $a1
	ld   bc, $000f                                   ; $43fa: $01 $0f $00
	ld   bc, $6301                                   ; $43fd: $01 $01 $63
	ld   e, l                                        ; $4400: $5d
	sub  a                                           ; $4401: $97
	ld   h, e                                        ; $4402: $63
	and  c                                           ; $4403: $a1
	sub  a                                           ; $4404: $97
	ld   h, l                                        ; $4405: $65
	ld   d, d                                        ; $4406: $52
	ld   [hl], l                                     ; $4407: $75
	ld   h, a                                        ; $4408: $67
	ld   a, e                                        ; $4409: $7b
	sbc  a                                           ; $440a: $9f
	dec  c                                           ; $440b: $0d
	inc  bc                                          ; $440c: $03
	ld   l, [hl]                                     ; $440d: $6e
	ld   a, h                                        ; $440e: $7c
	inc  bc                                          ; $440f: $03
	add  [hl]                                        ; $4410: $86
	sub  a                                           ; $4411: $97
	ld   h, l                                        ; $4412: $65
	ld   e, l                                        ; $4413: $5d
	ld   [hl], h                                     ; $4414: $74
	ld   d, d                                        ; $4415: $52
	ld   d, d                                        ; $4416: $52
	ld   [hl], l                                     ; $4417: $75
	ld   h, a                                        ; $4418: $67
	sub  [hl]                                        ; $4419: $96
	sbc  a                                           ; $441a: $9f
	dec  c                                           ; $441b: $0d
	nop                                              ; $441c: $00
	ld   a, [bc]                                     ; $441d: $0a
	inc  e                                           ; $441e: $1c
	ld   bc, $0101                                   ; $441f: $01 $01 $01
	dec  e                                           ; $4422: $1d
	ld   b, b                                        ; $4423: $40
	ld   de, $1103                                   ; $4424: $11 $03 $11
	ld   bc, $2801                                   ; $4427: $01 $01 $28
	nop                                              ; $442a: $00
	ld   bc, $546b                                   ; $442b: $01 $6b $54
	ld   [hl], l                                     ; $442e: $75
	ld   h, a                                        ; $442f: $67
	ld   e, c                                        ; $4430: $59
	ld   sp, hl                                      ; $4431: $f9
	dec  c                                           ; $4432: $0d
	adc  l                                           ; $4433: $8d
	and  c                                           ; $4434: $a1
	ld   a, b                                        ; $4435: $78
	ld   a, c                                        ; $4436: $79
	ld   a, l                                        ; $4437: $7d
	inc  bc                                          ; $4438: $03
	ld   l, h                                        ; $4439: $6c
	inc  bc                                          ; $443a: $03
	ld   l, [hl]                                     ; $443b: $6e
	ld   h, l                                        ; $443c: $65
	sub  e                                           ; $443d: $93
	adc  l                                           ; $443e: $8d
	ld   l, [hl]                                     ; $443f: $6e
	ld   [hl], c                                     ; $4440: $71
	ld   [hl], h                                     ; $4441: $74
	dec  c                                           ; $4442: $0d
	ld   [bc], a                                     ; $4443: $02
	sbc  l                                           ; $4444: $9d
	sbc  l                                           ; $4445: $9d
	sbc  d                                           ; $4446: $9a
	ld   l, a                                        ; $4447: $6f
	sub  c                                           ; $4448: $91
	ld   d, d                                        ; $4449: $52
	adc  h                                           ; $444a: $8c
	ld   h, a                                        ; $444b: $67
	ld   e, a                                        ; $444c: $5f
	ld   [hl], a                                     ; $444d: $77
	sbc  a                                           ; $444e: $9f
	dec  c                                           ; $444f: $0d
	nop                                              ; $4450: $00
	ld   a, [bc]                                     ; $4451: $0a
	ld   b, $a1                                      ; $4452: $06 $a1
	ld   bc, $000f                                   ; $4454: $01 $0f $00
	ld   bc, $0201                                   ; $4457: $01 $01 $02
	ld   b, $02                                      ; $445a: $06 $02
	bit  6, [hl]                                     ; $445c: $cb $76
	inc  bc                                          ; $445e: $03
	add  [hl]                                        ; $445f: $86
	ld   [bc], a                                     ; $4460: $02
	xor  l                                           ; $4461: $ad
	ld   [hl], c                                     ; $4462: $71
	adc  e                                           ; $4463: $8b
	ld   d, d                                        ; $4464: $52
	and  c                                           ; $4465: $a1
	ld   [hl], l                                     ; $4466: $75
	ld   h, a                                        ; $4467: $67
	ld   a, e                                        ; $4468: $7b
	sbc  a                                           ; $4469: $9f
	dec  c                                           ; $446a: $0d
	nop                                              ; $446b: $00
	ld   a, [bc]                                     ; $446c: $0a
	inc  e                                           ; $446d: $1c
	ld   bc, $0404                                   ; $446e: $01 $04 $04
	dec  e                                           ; $4471: $1d
	ld   b, b                                        ; $4472: $40
	ld   de, $1103                                   ; $4473: $11 $03 $11
	ld   bc, $2902                                   ; $4476: $01 $02 $29
	nop                                              ; $4479: $00
	ld   bc, $546b                                   ; $447a: $01 $6b $54
	ld   [hl], l                                     ; $447d: $75
	ld   h, a                                        ; $447e: $67
	ld   e, c                                        ; $447f: $59
	rst  $38                                         ; $4480: $ff
	rst  $38                                         ; $4481: $ff
	ld   sp, hl                                      ; $4482: $f9
	dec  c                                           ; $4483: $0d
	adc  h                                           ; $4484: $8c
	ld   d, b                                        ; $4485: $50
	sbc  [hl]                                        ; $4486: $9e
	sub  [hl]                                        ; $4487: $96
	ld   e, l                                        ; $4488: $5d
	ld   [bc], a                                     ; $4489: $02
	sbc  l                                           ; $448a: $9d
	sbc  l                                           ; $448b: $9d
	sbc  d                                           ; $448c: $9a
	adc  h                                           ; $448d: $8c
	ld   h, a                                        ; $448e: $67
	ld   e, a                                        ; $448f: $5f
	ld   [hl], a                                     ; $4490: $77
	rst  $38                                         ; $4491: $ff
	rst  $38                                         ; $4492: $ff
	dec  c                                           ; $4493: $0d
	nop                                              ; $4494: $00
	ld   a, [bc]                                     ; $4495: $0a
	ld   b, $a1                                      ; $4496: $06 $a1
	ld   bc, $000f                                   ; $4498: $01 $0f $00
	ld   bc, $0401                                   ; $449b: $01 $01 $04
	ld   l, l                                        ; $449e: $6d
	sub  b                                           ; $449f: $90
	ld   [bc], a                                     ; $44a0: $02
	sbc  d                                           ; $44a1: $9a
	ld   e, e                                        ; $44a2: $5b
	ld   a, b                                        ; $44a3: $78
	and  c                                           ; $44a4: $a1
	ld   [hl], l                                     ; $44a5: $75
	ld   h, a                                        ; $44a6: $67
	sub  [hl]                                        ; $44a7: $96
	sbc  a                                           ; $44a8: $9f
	dec  c                                           ; $44a9: $0d
	nop                                              ; $44aa: $00
	ld   a, [bc]                                     ; $44ab: $0a
	inc  e                                           ; $44ac: $1c
	ld   bc, $0101                                   ; $44ad: $01 $01 $01
	dec  e                                           ; $44b0: $1d
	ld   b, b                                        ; $44b1: $40
	ld   de, $1103                                   ; $44b2: $11 $03 $11
	ld   bc, $2802                                   ; $44b5: $01 $02 $28
	nop                                              ; $44b8: $00
	ld   bc, $9e56                                   ; $44b9: $01 $56 $9e
	ld   l, e                                        ; $44bc: $6b
	ld   d, h                                        ; $44bd: $54
	ld   a, b                                        ; $44be: $78
	and  c                                           ; $44bf: $a1
	ld   [hl], l                                     ; $44c0: $75
	ld   h, a                                        ; $44c1: $67
	ld   e, c                                        ; $44c2: $59
	ld   sp, hl                                      ; $44c3: $f9
	dec  c                                           ; $44c4: $0d
	inc  b                                           ; $44c5: $04
	ld   c, c                                        ; $44c6: $49
	ld   l, [hl]                                     ; $44c7: $6e
	ld   e, c                                        ; $44c8: $59
	sbc  [hl]                                        ; $44c9: $9e
	ld   [bc], a                                     ; $44ca: $02
	and  c                                           ; $44cb: $a1
	ld   e, d                                        ; $44cc: $5a
	ld   [bc], a                                     ; $44cd: $02
	ld   a, e                                        ; $44ce: $7b
	ld   d, d                                        ; $44cf: $52
	ld   l, e                                        ; $44d0: $6b
	ld   d, h                                        ; $44d1: $54
	ld   [hl], l                                     ; $44d2: $75
	ld   h, a                                        ; $44d3: $67
	ld   a, e                                        ; $44d4: $7b
	sbc  a                                           ; $44d5: $9f
	dec  c                                           ; $44d6: $0d
	nop                                              ; $44d7: $00
	ld   a, [bc]                                     ; $44d8: $0a
	ld   b, $a1                                      ; $44d9: $06 $a1
	ld   bc, $011c                                   ; $44db: $01 $1c $01
	nop                                              ; $44de: $00
	nop                                              ; $44df: $00
	ld   bc, $9166                                   ; $44e0: $01 $66 $91
	sbc  [hl]                                        ; $44e3: $9e
	ld   d, b                                        ; $44e4: $50
	ld   l, l                                        ; $44e5: $6d
	ld   h, l                                        ; $44e6: $65
	ld   a, l                                        ; $44e7: $7d
	ld   h, c                                        ; $44e8: $61
	sbc  d                                           ; $44e9: $9a
	ld   [hl], l                                     ; $44ea: $75
	rst  $38                                         ; $44eb: $ff
	rst  $38                                         ; $44ec: $ff
	dec  c                                           ; $44ed: $0d
	nop                                              ; $44ee: $00
	ld   a, [bc]                                     ; $44ef: $0a
	dec  c                                           ; $44f0: $0d
	nop                                              ; $44f1: $00
	nop                                              ; $44f2: $00
	rrca                                             ; $44f3: $0f
	nop                                              ; $44f4: $00
	ld   bc, $1e09                                   ; $44f5: $01 $09 $1e
	nop                                              ; $44f8: $00
	inc  e                                           ; $44f9: $1c
	ld   bc, $0404                                   ; $44fa: $01 $04 $04
	ld   bc, $9e50                                   ; $44fd: $01 $50 $9e
	ld   [$6300], sp                                 ; $4500: $08 $00 $63
	and  c                                           ; $4503: $a1
	sbc  a                                           ; $4504: $9f
	dec  c                                           ; $4505: $0d
	ld   e, b                                        ; $4506: $58
	inc  b                                           ; $4507: $04
	dec  c                                           ; $4508: $0d
	sbc  [hl]                                        ; $4509: $9e
	inc  b                                           ; $450a: $04
	ld   c, $03                                      ; $450b: $0e $03
	sbc  l                                           ; $450d: $9d
	inc  b                                           ; $450e: $04
	and  [hl]                                        ; $450f: $a6
	ld   [hl], l                                     ; $4510: $75
	ld   h, a                                        ; $4511: $67
	ld   e, c                                        ; $4512: $59
	ld   sp, hl                                      ; $4513: $f9
	dec  c                                           ; $4514: $0d
	ld   e, b                                        ; $4515: $58
	inc  b                                           ; $4516: $04
	xor  l                                           ; $4517: $ad
	ld   a, l                                        ; $4518: $7d
	inc  b                                           ; $4519: $04
	ld   c, $04                                      ; $451a: $0e $04
	adc  h                                           ; $451c: $8c
	ld   l, [hl]                                     ; $451d: $6e
	ld   [hl], c                                     ; $451e: $71
	ld   l, l                                        ; $451f: $6d
	sub  [hl]                                        ; $4520: $96
	ld   d, h                                        ; $4521: $54
	ld   [hl], l                                     ; $4522: $75
	rst  $38                                         ; $4523: $ff
	dec  c                                           ; $4524: $0d
	nop                                              ; $4525: $00
	ld   a, [bc]                                     ; $4526: $0a
	rrca                                             ; $4527: $0f
	nop                                              ; $4528: $00
	ld   bc, $5001                                   ; $4529: $01 $01 $50
	sbc  b                                           ; $452c: $98
	ld   e, d                                        ; $452d: $5a
	halt                                             ; $452e: $76
	ld   d, h                                        ; $452f: $54
	ld   h, d                                        ; $4530: $62
	ld   h, h                                        ; $4531: $64
	ld   d, d                                        ; $4532: $52
	adc  h                                           ; $4533: $8c
	ld   h, a                                        ; $4534: $67
	sbc  a                                           ; $4535: $9f
	dec  c                                           ; $4536: $0d
	inc  b                                           ; $4537: $04
	ld   c, $03                                      ; $4538: $0e $03
	sbc  l                                           ; $453a: $9d
	inc  b                                           ; $453b: $04
	and  [hl]                                        ; $453c: $a6
	ld   [hl], l                                     ; $453d: $75
	ld   h, a                                        ; $453e: $67
	sbc  a                                           ; $453f: $9f
	dec  c                                           ; $4540: $0d
	nop                                              ; $4541: $00
	ld   a, [bc]                                     ; $4542: $0a
	ld   bc, $6176                                   ; $4543: $01 $76 $61
	sbc  e                                           ; $4546: $9b
	ld   [hl], l                                     ; $4547: $75
	sbc  [hl]                                        ; $4548: $9e
	ld   h, e                                        ; $4549: $63
	ld   e, l                                        ; $454a: $5d
	sub  a                                           ; $454b: $97
	ld   h, e                                        ; $454c: $63
	and  c                                           ; $454d: $a1
	sbc  [hl]                                        ; $454e: $9e
	dec  c                                           ; $454f: $0d
	inc  b                                           ; $4550: $04
	adc  a                                           ; $4551: $8f
	ld   e, b                                        ; $4552: $58
	ld   [bc], a                                     ; $4553: $02
	sbc  d                                           ; $4554: $9a
	ld   e, e                                        ; $4555: $5b
	ld   a, b                                        ; $4556: $78
	and  c                                           ; $4557: $a1
	ld   [hl], l                                     ; $4558: $75
	ld   h, a                                        ; $4559: $67
	ld   e, c                                        ; $455a: $59
	ld   sp, hl                                      ; $455b: $f9
	dec  c                                           ; $455c: $0d
	nop                                              ; $455d: $00
	ld   a, [bc]                                     ; $455e: $0a
	inc  e                                           ; $455f: $1c
	ld   bc, $0101                                   ; $4560: $01 $01 $01
	ld   bc, $5656                                   ; $4563: $01 $56 $56
	sbc  [hl]                                        ; $4566: $9e
	ld   bc, $0207                                   ; $4567: $01 $07 $02
	and  e                                           ; $456a: $a3
	inc  b                                           ; $456b: $04
	ret  nc                                          ; $456c: $d0

	ld   a, h                                        ; $456d: $7c
	and  e                                           ; $456e: $a3
	push af                                          ; $456f: $f5
	ld   bc, $7608                                   ; $4570: $01 $08 $76
	ld   e, c                                        ; $4573: $59
	dec  c                                           ; $4574: $0d
	ld   bc, $0507                                   ; $4575: $01 $07 $05
	rra                                              ; $4578: $1f
	inc  b                                           ; $4579: $04
	sub  c                                           ; $457a: $91
	inc  b                                           ; $457b: $04
	sub  d                                           ; $457c: $92
	ld   [bc], a                                     ; $457d: $02
	and  h                                           ; $457e: $a4
	ld   bc, $7608                                   ; $457f: $01 $08 $76
	ld   e, c                                        ; $4582: $59
	sbc  [hl]                                        ; $4583: $9e
	inc  bc                                          ; $4584: $03
	ld   l, h                                        ; $4585: $6c
	inc  bc                                          ; $4586: $03
	ld   l, [hl]                                     ; $4587: $6e
	inc  b                                           ; $4588: $04
	sub  b                                           ; $4589: $90
	ld   [bc], a                                     ; $458a: $02
	and  d                                           ; $458b: $a2
	ld   e, d                                        ; $458c: $5a
	dec  c                                           ; $458d: $0d
	ld   [bc], a                                     ; $458e: $02
	sbc  d                                           ; $458f: $9a
	ld   e, e                                        ; $4590: $5b
	ld   a, b                                        ; $4591: $78
	and  c                                           ; $4592: $a1
	ld   [hl], l                                     ; $4593: $75
	ld   h, a                                        ; $4594: $67
	sub  [hl]                                        ; $4595: $96
	sbc  a                                           ; $4596: $9f
	dec  c                                           ; $4597: $0d
	nop                                              ; $4598: $00
	ld   a, [bc]                                     ; $4599: $0a
	add  hl, de                                      ; $459a: $19
	dec  b                                           ; $459b: $05
	inc  bc                                          ; $459c: $03
	ld   h, e                                        ; $459d: $63
	ld   e, l                                        ; $459e: $5d
	sub  a                                           ; $459f: $97
	ld   h, e                                        ; $45a0: $63
	and  c                                           ; $45a1: $a1
	sub  a                                           ; $45a2: $97
	ld   h, l                                        ; $45a3: $65
	ld   d, d                                        ; $45a4: $52
	ld   [hl], l                                     ; $45a5: $75
	ld   h, a                                        ; $45a6: $67
	ld   a, e                                        ; $45a7: $7b
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	inc  bc                                          ; $45aa: $03
	add  [hl]                                        ; $45ab: $86
	ld   [bc], a                                     ; $45ac: $02
	xor  l                                           ; $45ad: $ad
	ld   [hl], c                                     ; $45ae: $71
	adc  e                                           ; $45af: $8b
	ld   d, d                                        ; $45b0: $52
	and  c                                           ; $45b1: $a1
	ld   [hl], l                                     ; $45b2: $75
	ld   h, a                                        ; $45b3: $67
	ld   a, e                                        ; $45b4: $7b
	nop                                              ; $45b5: $00
	ld   bc, $6d04                                   ; $45b6: $01 $04 $6d
	sub  b                                           ; $45b9: $90
	ld   [bc], a                                     ; $45ba: $02
	sbc  d                                           ; $45bb: $9a
	ld   e, e                                        ; $45bc: $5b
	ld   a, b                                        ; $45bd: $78
	and  c                                           ; $45be: $a1
	ld   [hl], l                                     ; $45bf: $75
	ld   h, a                                        ; $45c0: $67
	sub  [hl]                                        ; $45c1: $96
	sbc  a                                           ; $45c2: $9f
	nop                                              ; $45c3: $00
	ld   [bc], a                                     ; $45c4: $02
	rlca                                             ; $45c5: $07
	xor  b                                           ; $45c6: $a8
	ld   [bc], a                                     ; $45c7: $02
	ld   [bc], a                                     ; $45c8: $02
	inc  bc                                          ; $45c9: $03
	ld   bc, $2000                                   ; $45ca: $01 $00 $20
	nop                                              ; $45cd: $00
	rlca                                             ; $45ce: $07
	ld   [bc], a                                     ; $45cf: $02
	inc  bc                                          ; $45d0: $03
	ld   [bc], a                                     ; $45d1: $02
	inc  bc                                          ; $45d2: $03
	ld   bc, $2001                                   ; $45d3: $01 $01 $20
	nop                                              ; $45d6: $00
	rlca                                             ; $45d7: $07
	ld   b, [hl]                                     ; $45d8: $46
	inc  bc                                          ; $45d9: $03
	ld   [bc], a                                     ; $45da: $02
	inc  bc                                          ; $45db: $03
	ld   bc, $2002                                   ; $45dc: $01 $02 $20
	nop                                              ; $45df: $00
	ld   b, $89                                      ; $45e0: $06 $89
	inc  bc                                          ; $45e2: $03
	rrca                                             ; $45e3: $0f
	nop                                              ; $45e4: $00
	ld   bc, $6301                                   ; $45e5: $01 $01 $63
	ld   e, l                                        ; $45e8: $5d
	sub  a                                           ; $45e9: $97
	ld   h, e                                        ; $45ea: $63
	and  c                                           ; $45eb: $a1
	sub  a                                           ; $45ec: $97
	ld   h, l                                        ; $45ed: $65
	ld   d, d                                        ; $45ee: $52
	ld   [hl], l                                     ; $45ef: $75
	ld   h, a                                        ; $45f0: $67
	ld   a, e                                        ; $45f1: $7b
	sbc  a                                           ; $45f2: $9f
	dec  c                                           ; $45f3: $0d
	inc  bc                                          ; $45f4: $03
	ld   l, [hl]                                     ; $45f5: $6e
	ld   a, h                                        ; $45f6: $7c
	inc  bc                                          ; $45f7: $03
	add  [hl]                                        ; $45f8: $86
	sub  a                                           ; $45f9: $97
	ld   h, l                                        ; $45fa: $65
	ld   e, l                                        ; $45fb: $5d
	ld   [hl], h                                     ; $45fc: $74
	ld   d, d                                        ; $45fd: $52
	ld   d, d                                        ; $45fe: $52
	ld   [hl], l                                     ; $45ff: $75
	ld   h, a                                        ; $4600: $67
	sub  [hl]                                        ; $4601: $96
	sbc  a                                           ; $4602: $9f
	dec  c                                           ; $4603: $0d
	nop                                              ; $4604: $00
	ld   a, [bc]                                     ; $4605: $0a
	inc  e                                           ; $4606: $1c
	ld   bc, $0101                                   ; $4607: $01 $01 $01
	dec  e                                           ; $460a: $1d
	ld   b, b                                        ; $460b: $40
	ld   de, $1103                                   ; $460c: $11 $03 $11
	ld   bc, $2801                                   ; $460f: $01 $01 $28
	nop                                              ; $4612: $00
	ld   bc, $546b                                   ; $4613: $01 $6b $54
	ld   [hl], l                                     ; $4616: $75
	ld   h, a                                        ; $4617: $67
	ld   e, c                                        ; $4618: $59
	ld   sp, hl                                      ; $4619: $f9
	dec  c                                           ; $461a: $0d
	adc  l                                           ; $461b: $8d
	and  c                                           ; $461c: $a1
	ld   a, b                                        ; $461d: $78
	ld   a, c                                        ; $461e: $79
	ld   a, l                                        ; $461f: $7d
	inc  bc                                          ; $4620: $03
	ld   l, h                                        ; $4621: $6c
	inc  bc                                          ; $4622: $03
	ld   l, [hl]                                     ; $4623: $6e
	ld   h, l                                        ; $4624: $65
	sub  e                                           ; $4625: $93
	adc  l                                           ; $4626: $8d
	ld   l, [hl]                                     ; $4627: $6e
	ld   [hl], c                                     ; $4628: $71
	ld   [hl], h                                     ; $4629: $74
	dec  c                                           ; $462a: $0d
	ld   [bc], a                                     ; $462b: $02
	sbc  l                                           ; $462c: $9d
	sbc  l                                           ; $462d: $9d
	sbc  d                                           ; $462e: $9a
	ld   l, a                                        ; $462f: $6f
	sub  c                                           ; $4630: $91
	ld   d, d                                        ; $4631: $52
	adc  h                                           ; $4632: $8c
	ld   h, a                                        ; $4633: $67
	ld   e, a                                        ; $4634: $5f
	ld   [hl], a                                     ; $4635: $77
	sbc  a                                           ; $4636: $9f
	dec  c                                           ; $4637: $0d
	nop                                              ; $4638: $00
	ld   a, [bc]                                     ; $4639: $0a
	ld   b, $89                                      ; $463a: $06 $89
	inc  bc                                          ; $463c: $03
	rrca                                             ; $463d: $0f
	nop                                              ; $463e: $00
	ld   bc, $0201                                   ; $463f: $01 $01 $02
	ld   b, $02                                      ; $4642: $06 $02
	bit  6, [hl]                                     ; $4644: $cb $76
	inc  bc                                          ; $4646: $03
	add  [hl]                                        ; $4647: $86
	ld   [bc], a                                     ; $4648: $02
	xor  l                                           ; $4649: $ad
	ld   [hl], c                                     ; $464a: $71
	adc  e                                           ; $464b: $8b
	ld   d, d                                        ; $464c: $52
	and  c                                           ; $464d: $a1
	ld   [hl], l                                     ; $464e: $75
	ld   h, a                                        ; $464f: $67
	ld   a, e                                        ; $4650: $7b
	sbc  a                                           ; $4651: $9f
	dec  c                                           ; $4652: $0d
	nop                                              ; $4653: $00
	ld   a, [bc]                                     ; $4654: $0a
	inc  e                                           ; $4655: $1c
	ld   bc, $0404                                   ; $4656: $01 $04 $04
	dec  e                                           ; $4659: $1d
	ld   b, b                                        ; $465a: $40
	ld   de, $1103                                   ; $465b: $11 $03 $11
	ld   bc, $2902                                   ; $465e: $01 $02 $29
	nop                                              ; $4661: $00
	ld   bc, $546b                                   ; $4662: $01 $6b $54
	ld   [hl], l                                     ; $4665: $75
	ld   h, a                                        ; $4666: $67
	ld   e, c                                        ; $4667: $59
	rst  $38                                         ; $4668: $ff
	rst  $38                                         ; $4669: $ff
	ld   sp, hl                                      ; $466a: $f9
	dec  c                                           ; $466b: $0d
	adc  h                                           ; $466c: $8c
	ld   d, b                                        ; $466d: $50
	sbc  [hl]                                        ; $466e: $9e
	sub  [hl]                                        ; $466f: $96
	ld   e, l                                        ; $4670: $5d
	ld   [bc], a                                     ; $4671: $02
	sbc  l                                           ; $4672: $9d
	sbc  l                                           ; $4673: $9d
	sbc  d                                           ; $4674: $9a
	adc  h                                           ; $4675: $8c
	ld   h, a                                        ; $4676: $67
	ld   e, a                                        ; $4677: $5f
	ld   [hl], a                                     ; $4678: $77
	rst  $38                                         ; $4679: $ff
	rst  $38                                         ; $467a: $ff
	dec  c                                           ; $467b: $0d
	nop                                              ; $467c: $00
	ld   a, [bc]                                     ; $467d: $0a
	ld   b, $89                                      ; $467e: $06 $89
	inc  bc                                          ; $4680: $03
	rrca                                             ; $4681: $0f
	nop                                              ; $4682: $00
	ld   bc, $0401                                   ; $4683: $01 $01 $04
	ld   l, l                                        ; $4686: $6d
	sub  b                                           ; $4687: $90
	ld   [bc], a                                     ; $4688: $02
	sbc  d                                           ; $4689: $9a
	ld   e, e                                        ; $468a: $5b
	ld   a, b                                        ; $468b: $78
	and  c                                           ; $468c: $a1
	ld   [hl], l                                     ; $468d: $75
	ld   h, a                                        ; $468e: $67
	sub  [hl]                                        ; $468f: $96
	sbc  a                                           ; $4690: $9f
	dec  c                                           ; $4691: $0d
	nop                                              ; $4692: $00
	ld   a, [bc]                                     ; $4693: $0a
	inc  e                                           ; $4694: $1c
	ld   bc, $0101                                   ; $4695: $01 $01 $01
	dec  e                                           ; $4698: $1d
	ld   b, b                                        ; $4699: $40
	ld   de, $1103                                   ; $469a: $11 $03 $11
	ld   bc, $2802                                   ; $469d: $01 $02 $28
	nop                                              ; $46a0: $00
	ld   bc, $9e56                                   ; $46a1: $01 $56 $9e
	ld   l, e                                        ; $46a4: $6b
	ld   d, h                                        ; $46a5: $54
	ld   a, b                                        ; $46a6: $78
	and  c                                           ; $46a7: $a1
	ld   [hl], l                                     ; $46a8: $75
	ld   h, a                                        ; $46a9: $67
	ld   e, c                                        ; $46aa: $59
	ld   sp, hl                                      ; $46ab: $f9
	dec  c                                           ; $46ac: $0d
	inc  b                                           ; $46ad: $04
	ld   c, c                                        ; $46ae: $49
	ld   l, [hl]                                     ; $46af: $6e
	ld   e, c                                        ; $46b0: $59
	sbc  [hl]                                        ; $46b1: $9e
	ld   [bc], a                                     ; $46b2: $02
	and  c                                           ; $46b3: $a1
	ld   e, d                                        ; $46b4: $5a
	ld   [bc], a                                     ; $46b5: $02
	ld   a, e                                        ; $46b6: $7b
	ld   d, d                                        ; $46b7: $52
	ld   l, e                                        ; $46b8: $6b
	ld   d, h                                        ; $46b9: $54
	ld   [hl], l                                     ; $46ba: $75
	ld   h, a                                        ; $46bb: $67
	ld   a, e                                        ; $46bc: $7b
	sbc  a                                           ; $46bd: $9f
	dec  c                                           ; $46be: $0d
	nop                                              ; $46bf: $00
	ld   a, [bc]                                     ; $46c0: $0a
	ld   b, $89                                      ; $46c1: $06 $89
	inc  bc                                          ; $46c3: $03
	inc  e                                           ; $46c4: $1c
	ld   bc, $0000                                   ; $46c5: $01 $00 $00
	ld   bc, $9166                                   ; $46c8: $01 $66 $91
	sbc  [hl]                                        ; $46cb: $9e
	ld   d, b                                        ; $46cc: $50
	ld   l, l                                        ; $46cd: $6d
	ld   h, l                                        ; $46ce: $65
	ld   a, l                                        ; $46cf: $7d
	ld   h, c                                        ; $46d0: $61
	sbc  d                                           ; $46d1: $9a
	ld   [hl], l                                     ; $46d2: $75
	rst  $38                                         ; $46d3: $ff
	rst  $38                                         ; $46d4: $ff
	dec  c                                           ; $46d5: $0d
	nop                                              ; $46d6: $00
	ld   a, [bc]                                     ; $46d7: $0a
	dec  c                                           ; $46d8: $0d
	nop                                              ; $46d9: $00
	nop                                              ; $46da: $00
	rrca                                             ; $46db: $0f
	nop                                              ; $46dc: $00
	ld   bc, $1e09                                   ; $46dd: $01 $09 $1e
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	ld   c, $21                                      ; $46e2: $0e $21
	rrca                                             ; $46e4: $0f
	nop                                              ; $46e5: $00
	ld   bc, $0502                                   ; $46e6: $01 $02 $05
	add  b                                           ; $46e9: $80
	add  c                                           ; $46ea: $81
	ld   bc, $0001                                   ; $46eb: $01 $01 $00
	ld   bc, $9a50                                   ; $46ee: $01 $50 $9a
	rst  $38                                         ; $46f1: $ff
	rst  $38                                         ; $46f2: $ff
	xor  h                                           ; $46f3: $ac
	push af                                          ; $46f4: $f5
	bit  4, e                                        ; $46f5: $cb $63
	and  c                                           ; $46f7: $a1
	dec  c                                           ; $46f8: $0d
	inc  b                                           ; $46f9: $04
	ld   c, c                                        ; $46fa: $49
	sub  d                                           ; $46fb: $92
	ld   [hl], c                                     ; $46fc: $71
	ld   [hl], h                                     ; $46fd: $74
	sbc  c                                           ; $46fe: $99
	and  c                                           ; $46ff: $a1
	ld   [hl], l                                     ; $4700: $75
	ld   h, a                                        ; $4701: $67
	ld   e, c                                        ; $4702: $59
	ld   sp, hl                                      ; $4703: $f9
	dec  c                                           ; $4704: $0d
	nop                                              ; $4705: $00
	ld   a, [bc]                                     ; $4706: $0a
	inc  e                                           ; $4707: $1c
	ld   b, $03                                      ; $4708: $06 $03
	inc  bc                                          ; $470a: $03
	ld   bc, $9eb3                                   ; $470b: $01 $b3 $9e
	ld   [$ff00], sp                                 ; $470e: $08 $00 $ff
	rst  $38                                         ; $4711: $ff
	dec  c                                           ; $4712: $0d
	ld   a, b                                        ; $4713: $78
	sbc  [hl]                                        ; $4714: $9e
	inc  b                                           ; $4715: $04
	ld   c, c                                        ; $4716: $49
	ld   [hl], l                                     ; $4717: $75
	sub  b                                           ; $4718: $90
	ld   a, b                                        ; $4719: $78
	ld   d, d                                        ; $471a: $52
	ld   [hl], c                                     ; $471b: $71
	ld   [hl], h                                     ; $471c: $74
	rst  $38                                         ; $471d: $ff
	rst  $38                                         ; $471e: $ff
	dec  c                                           ; $471f: $0d
	nop                                              ; $4720: $00
	ld   a, [bc]                                     ; $4721: $0a
	rrca                                             ; $4722: $0f
	nop                                              ; $4723: $00
	ld   bc, $6b01                                   ; $4724: $01 $01 $6b
	ld   a, h                                        ; $4727: $7c
	inc  b                                           ; $4728: $04
	ld   c, $04                                      ; $4729: $0e $04
	ld   d, $02                                      ; $472b: $16 $02
	xor  b                                           ; $472d: $a8
	ld   h, c                                        ; $472e: $61
	sbc  l                                           ; $472f: $9d
	sbc  d                                           ; $4730: $9a
	ld   [hl], h                                     ; $4731: $74
	adc  h                                           ; $4732: $8c
	ld   h, a                                        ; $4733: $67
	ld   e, a                                        ; $4734: $5f
	ld   [hl], a                                     ; $4735: $77
	dec  c                                           ; $4736: $0d
	xor  h                                           ; $4737: $ac
	push af                                          ; $4738: $f5
	bit  4, e                                        ; $4739: $cb $63
	and  c                                           ; $473b: $a1
	ld   e, d                                        ; $473c: $5a
	sub  d                                           ; $473d: $92
	ld   [hl], c                                     ; $473e: $71
	ld   l, l                                        ; $473f: $6d
	and  c                                           ; $4740: $a1
	ld   [hl], l                                     ; $4741: $75
	ld   h, a                                        ; $4742: $67
	ld   e, c                                        ; $4743: $59
	ld   sp, hl                                      ; $4744: $f9
	dec  c                                           ; $4745: $0d
	nop                                              ; $4746: $00
	ld   a, [bc]                                     ; $4747: $0a
	inc  e                                           ; $4748: $1c
	ld   b, $01                                      ; $4749: $06 $01
	ld   bc, $d001                                   ; $474b: $01 $01 $d0
	ret  nc                                          ; $474e: $d0

	rst  $38                                         ; $474f: $ff
	rst  $38                                         ; $4750: $ff
	ld   [bc], a                                     ; $4751: $02
	jp   $ce02                                       ; $4752: $c3 $02 $ce


	ld   l, [hl]                                     ; $4755: $6e
	sub  [hl]                                        ; $4756: $96
	ld   [bc], a                                     ; $4757: $02
	jp   $ce02                                       ; $4758: $c3 $02 $ce


	sbc  a                                           ; $475b: $9f
	dec  c                                           ; $475c: $0d
	nop                                              ; $475d: $00
	ld   a, [bc]                                     ; $475e: $0a
	inc  e                                           ; $475f: $1c
	ld   b, $05                                      ; $4760: $06 $05
	dec  b                                           ; $4762: $05
	ld   bc, $9a6b                                   ; $4763: $01 $6b $9a
	sub  [hl]                                        ; $4766: $96
	sbc  b                                           ; $4767: $98
	sbc  [hl]                                        ; $4768: $9e
	ld   [$ff00], sp                                 ; $4769: $08 $00 $ff
	rst  $38                                         ; $476c: $ff
	dec  c                                           ; $476d: $0d
	ld   h, c                                        ; $476e: $61
	ld   a, h                                        ; $476f: $7c
	ld   h, c                                        ; $4770: $61
	halt                                             ; $4771: $76
	ld   a, l                                        ; $4772: $7d
	adc  l                                           ; $4773: $8d
	and  c                                           ; $4774: $a1
	ld   a, b                                        ; $4775: $78
	ld   a, c                                        ; $4776: $79
	dec  c                                           ; $4777: $0d
	ld   l, [hl]                                     ; $4778: $6e
	adc  h                                           ; $4779: $8c
	ld   [hl], c                                     ; $477a: $71
	ld   [hl], h                                     ; $477b: $74
	ld   [hl], h                                     ; $477c: $74
	ld   e, l                                        ; $477d: $5d
	sbc  d                                           ; $477e: $9a
	sub  [hl]                                        ; $477f: $96
	ld   a, b                                        ; $4780: $78
	ld   sp, hl                                      ; $4781: $f9
	dec  c                                           ; $4782: $0d
	nop                                              ; $4783: $00
	ld   a, [bc]                                     ; $4784: $0a
	add  hl, de                                      ; $4785: $19
	dec  b                                           ; $4786: $05
	ld   [bc], a                                     ; $4787: $02
	ld   l, [hl]                                     ; $4788: $6e
	adc  h                                           ; $4789: $8c
	ld   [hl], c                                     ; $478a: $71
	ld   [hl], h                                     ; $478b: $74
	adc  h                                           ; $478c: $8c
	ld   h, a                                        ; $478d: $67
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	inc  b                                           ; $4790: $04
	ld   l, a                                        ; $4791: $6f
	ld   [bc], a                                     ; $4792: $02
	ld   [hl], h                                     ; $4793: $74
	ld   h, l                                        ; $4794: $65
	adc  h                                           ; $4795: $8c
	ld   h, a                                        ; $4796: $67
	nop                                              ; $4797: $00
	ld   bc, $cc07                                   ; $4798: $01 $07 $cc
	nop                                              ; $479b: $00
	ld   [bc], a                                     ; $479c: $02
	inc  bc                                          ; $479d: $03
	ld   bc, $2000                                   ; $479e: $01 $00 $20
	nop                                              ; $47a1: $00
	rlca                                             ; $47a2: $07
	add  hl, de                                      ; $47a3: $19
	ld   bc, $0302                                   ; $47a4: $01 $02 $03
	ld   bc, $2001                                   ; $47a7: $01 $01 $20
	nop                                              ; $47aa: $00
	ld   b, $92                                      ; $47ab: $06 $92
	ld   bc, $000f                                   ; $47ad: $01 $0f $00
	ld   bc, $6e01                                   ; $47b0: $01 $01 $6e
	adc  h                                           ; $47b3: $8c
	ld   [hl], c                                     ; $47b4: $71
	ld   [hl], h                                     ; $47b5: $74
	adc  h                                           ; $47b6: $8c
	ld   h, a                                        ; $47b7: $67
	sbc  a                                           ; $47b8: $9f
	dec  c                                           ; $47b9: $0d
	ld   [bc], a                                     ; $47ba: $02
	ld   h, $03                                      ; $47bb: $26 $03
	ld   [hl], l                                     ; $47bd: $75
	ld   h, l                                        ; $47be: $65
	ld   [hl], h                                     ; $47bf: $74
	ld   [bc], a                                     ; $47c0: $02
	inc  [hl]                                        ; $47c1: $34
	ld   h, e                                        ; $47c2: $63
	ld   d, d                                        ; $47c3: $52
	rst  $38                                         ; $47c4: $ff
	rst  $38                                         ; $47c5: $ff
	dec  c                                           ; $47c6: $0d
	nop                                              ; $47c7: $00
	ld   a, [bc]                                     ; $47c8: $0a
	inc  e                                           ; $47c9: $1c
	ld   b, $01                                      ; $47ca: $06 $01
	ld   bc, $401d                                   ; $47cc: $01 $1d $40
	ld   d, $03                                      ; $47cf: $16 $03
	ld   d, $01                                      ; $47d1: $16 $01
	ld   [bc], a                                     ; $47d3: $02
	jr   z, jr_052_47d6                              ; $47d4: $28 $00

jr_052_47d6:
	ld   bc, $8c67                                   ; $47d6: $01 $67 $8c
	ld   a, b                                        ; $47d9: $78
	ld   d, d                                        ; $47da: $52
	ld   a, [$6f0d]                                  ; $47db: $fa $0d $6f
	sub  c                                           ; $47de: $91
	and  c                                           ; $47df: $a1
	halt                                             ; $47e0: $76
	inc  bc                                          ; $47e1: $03
	jp   c, Jump_052_7465                            ; $47e2: $da $65 $74

	ld   e, b                                        ; $47e5: $58
	ld   e, l                                        ; $47e6: $5d
	ld   e, c                                        ; $47e7: $59
	sub  a                                           ; $47e8: $97
	sub  [hl]                                        ; $47e9: $96
	rst  $38                                         ; $47ea: $ff
	rst  $38                                         ; $47eb: $ff
	dec  c                                           ; $47ec: $0d
	ld   l, e                                        ; $47ed: $6b
	sbc  d                                           ; $47ee: $9a
	adc  h                                           ; $47ef: $8c
	ld   [hl], l                                     ; $47f0: $75
	sbc  [hl]                                        ; $47f1: $9e
	ld   l, l                                        ; $47f2: $6d
	ld   a, h                                        ; $47f3: $7c
	adc  [hl]                                        ; $47f4: $8e
	ld   l, d                                        ; $47f5: $6a
	sbc  a                                           ; $47f6: $9f
	dec  c                                           ; $47f7: $0d
	nop                                              ; $47f8: $00
	ld   a, [bc]                                     ; $47f9: $0a
	nop                                              ; $47fa: $00
	rrca                                             ; $47fb: $0f
	nop                                              ; $47fc: $00
	ld   bc, $0401                                   ; $47fd: $01 $01 $04
	ld   l, a                                        ; $4800: $6f
	ld   [bc], a                                     ; $4801: $02
	ld   [hl], h                                     ; $4802: $74
	ld   h, l                                        ; $4803: $65
	adc  h                                           ; $4804: $8c
	ld   h, a                                        ; $4805: $67
	sbc  a                                           ; $4806: $9f
	dec  c                                           ; $4807: $0d
	ld   [bc], a                                     ; $4808: $02
	sub  l                                           ; $4809: $95
	ld   [bc], a                                     ; $480a: $02
	sub  e                                           ; $480b: $93
	sbc  b                                           ; $480c: $98
	ld   a, h                                        ; $480d: $7c
	halt                                             ; $480e: $76
	ld   l, a                                        ; $480f: $6f
	sub  e                                           ; $4810: $93
	ld   d, h                                        ; $4811: $54
	ld   [hl], l                                     ; $4812: $75
	ld   h, a                                        ; $4813: $67
	ld   e, c                                        ; $4814: $59
	sub  a                                           ; $4815: $97
	rst  $38                                         ; $4816: $ff
	rst  $38                                         ; $4817: $ff
	dec  c                                           ; $4818: $0d
	nop                                              ; $4819: $00
	ld   a, [bc]                                     ; $481a: $0a
	inc  e                                           ; $481b: $1c
	ld   b, $02                                      ; $481c: $06 $02
	ld   [bc], a                                     ; $481e: $02
	dec  e                                           ; $481f: $1d
	ld   b, b                                        ; $4820: $40
	ld   d, $03                                      ; $4821: $16 $03
	ld   d, $01                                      ; $4823: $16 $01
	ld   bc, $0029                                   ; $4825: $01 $29 $00
	ld   bc, $c0ac                                   ; $4828: $01 $ac $c0
	and  l                                           ; $482b: $a5
	sub  d                                           ; $482c: $92
	ld   [hl], d                                     ; $482d: $72
	ld   l, [hl]                                     ; $482e: $6e
	ld   a, b                                        ; $482f: $78
	rst  $38                                         ; $4830: $ff
	rst  $38                                         ; $4831: $ff
	dec  c                                           ; $4832: $0d
	ld   d, b                                        ; $4833: $50
	ei                                               ; $4834: $fb
	sbc  l                                           ; $4835: $9d
	ld   e, c                                        ; $4836: $59
	ld   [hl], c                                     ; $4837: $71
	ld   l, l                                        ; $4838: $6d
	sbc  a                                           ; $4839: $9f
	dec  c                                           ; $483a: $0d
	ld   d, b                                        ; $483b: $50
	ld   l, l                                        ; $483c: $6d
	ld   d, d                                        ; $483d: $52
	ld   e, d                                        ; $483e: $5a
	ld   [bc], a                                     ; $483f: $02
	jr   z, jr_052_489b                              ; $4840: $28 $59

	ld   [hl], c                                     ; $4842: $71
	ld   l, l                                        ; $4843: $6d
	sub  [hl]                                        ; $4844: $96
	sbc  a                                           ; $4845: $9f
	dec  c                                           ; $4846: $0d
	nop                                              ; $4847: $00
	ld   a, [bc]                                     ; $4848: $0a
	ld   bc, $916f                                   ; $4849: $01 $6f $91
	and  c                                           ; $484c: $a1
	halt                                             ; $484d: $76
	inc  bc                                          ; $484e: $03
	jp   c, Jump_052_7465                            ; $484f: $da $65 $74

	ld   e, b                                        ; $4852: $58
	ld   e, l                                        ; $4853: $5d
	ld   e, c                                        ; $4854: $59
	sub  a                                           ; $4855: $97
	dec  c                                           ; $4856: $0d
	ld   [hl], a                                     ; $4857: $77
	ei                                               ; $4858: $fb
	ld   l, c                                        ; $4859: $69
	ld   l, [hl]                                     ; $485a: $6e
	ld   [hl], c                                     ; $485b: $71
	ld   l, l                                        ; $485c: $6d
	sub  a                                           ; $485d: $97
	ld   l, e                                        ; $485e: $6b
	sbc  d                                           ; $485f: $9a
	sub  b                                           ; $4860: $90
	sbc  [hl]                                        ; $4861: $9e
	dec  c                                           ; $4862: $0d
	inc  b                                           ; $4863: $04
	ld   l, a                                        ; $4864: $6f
	ld   [bc], a                                     ; $4865: $02
	ld   [hl], h                                     ; $4866: $74
	ld   h, l                                        ; $4867: $65
	halt                                             ; $4868: $76
	ld   d, d                                        ; $4869: $52
	ld   [hl], h                                     ; $486a: $74
	ld   e, l                                        ; $486b: $5d
	sbc  d                                           ; $486c: $9a
	sub  [hl]                                        ; $486d: $96
	ld   a, b                                        ; $486e: $78
	sbc  a                                           ; $486f: $9f
	dec  c                                           ; $4870: $0d
	nop                                              ; $4871: $00
	ld   a, [bc]                                     ; $4872: $0a
	nop                                              ; $4873: $00
	inc  e                                           ; $4874: $1c
	ld   b, $02                                      ; $4875: $06 $02
	ld   [bc], a                                     ; $4877: $02
	ld   bc, $0008                                   ; $4878: $01 $08 $00
	sbc  [hl]                                        ; $487b: $9e
	ld   e, b                                        ; $487c: $58
	inc  bc                                          ; $487d: $03
	ld   c, a                                        ; $487e: $4f
	ld   a, l                                        ; $487f: $7d
	dec  c                                           ; $4880: $0d
	ld   [hl], d                                     ; $4881: $72
	ld   h, b                                        ; $4882: $60
	ld   [bc], a                                     ; $4883: $02
	xor  [hl]                                        ; $4884: $ae
	ld   a, b                                        ; $4885: $78
	and  c                                           ; $4886: $a1
	ld   e, c                                        ; $4887: $59
	ld   h, l                                        ; $4888: $65
	ld   a, b                                        ; $4889: $78
	ld   d, d                                        ; $488a: $52
	and  $c5                                         ; $488b: $e6 $c5
	ld   l, [hl]                                     ; $488d: $6e
	rst  $38                                         ; $488e: $ff
	rst  $38                                         ; $488f: $ff
	dec  c                                           ; $4890: $0d
	ld   l, e                                        ; $4891: $6b
	ld   d, h                                        ; $4892: $54
	ld   [bc], a                                     ; $4893: $02
	ld   hl, sp+$66                                  ; $4894: $f8 $66
	ld   [hl], h                                     ; $4896: $74
	sbc  c                                           ; $4897: $99
	ld   e, c                                        ; $4898: $59
	sub  a                                           ; $4899: $97
	ld   a, b                                        ; $489a: $78

jr_052_489b:
	sbc  a                                           ; $489b: $9f
	dec  c                                           ; $489c: $0d
	nop                                              ; $489d: $00
	ld   a, [bc]                                     ; $489e: $0a
	nop                                              ; $489f: $00
	nop                                              ; $48a0: $00
	inc  e                                           ; $48a1: $1c
	inc  bc                                          ; $48a2: $03
	nop                                              ; $48a3: $00
	nop                                              ; $48a4: $00
	ld   [bc], a                                     ; $48a5: $02
	ld   bc, $9750                                   ; $48a6: $01 $50 $97
	sbc  [hl]                                        ; $48a9: $9e
	ld   [$5d00], sp                                 ; $48aa: $08 $00 $5d
	and  c                                           ; $48ad: $a1
	sbc  a                                           ; $48ae: $9f
	dec  c                                           ; $48af: $0d
	ld   [bc], a                                     ; $48b0: $02
	sub  l                                           ; $48b1: $95
	ld   [bc], a                                     ; $48b2: $02
	sub  e                                           ; $48b3: $93
	sbc  b                                           ; $48b4: $98
	ld   h, d                                        ; $48b5: $62
	ld   [bc], a                                     ; $48b6: $02
	sub  h                                           ; $48b7: $94
	dec  b                                           ; $48b8: $05
	rrca                                             ; $48b9: $0f
	ld   h, e                                        ; $48ba: $63
	adc  h                                           ; $48bb: $8c
	sbc  a                                           ; $48bc: $9f
	dec  c                                           ; $48bd: $0d
	nop                                              ; $48be: $00
	ld   a, [bc]                                     ; $48bf: $0a
	add  hl, de                                      ; $48c0: $19
	dec  b                                           ; $48c1: $05
	inc  bc                                          ; $48c2: $03
	inc  b                                           ; $48c3: $04
	ld   l, d                                        ; $48c4: $6a
	and  b                                           ; $48c5: $a0
	ld   [bc], a                                     ; $48c6: $02
	sub  l                                           ; $48c7: $95
	sbc  c                                           ; $48c8: $99
	nop                                              ; $48c9: $00
	nop                                              ; $48ca: $00
	inc  b                                           ; $48cb: $04
	call nc, $02a0                                   ; $48cc: $d4 $a0 $02
	sub  l                                           ; $48cf: $95
	sbc  c                                           ; $48d0: $99
	nop                                              ; $48d1: $00
	ld   bc, $6602                                   ; $48d2: $01 $02 $66
	ld   [bc], a                                     ; $48d5: $02
	xor  h                                           ; $48d6: $ac
	and  b                                           ; $48d7: $a0
	ld   [bc], a                                     ; $48d8: $02
	sub  l                                           ; $48d9: $95
	sbc  c                                           ; $48da: $99
	nop                                              ; $48db: $00
	ld   [bc], a                                     ; $48dc: $02
	rlca                                             ; $48dd: $07
	ld   e, d                                        ; $48de: $5a
	nop                                              ; $48df: $00
	ld   [bc], a                                     ; $48e0: $02
	inc  bc                                          ; $48e1: $03
	ld   bc, $2000                                   ; $48e2: $01 $00 $20
	nop                                              ; $48e5: $00
	rlca                                             ; $48e6: $07
	xor  a                                           ; $48e7: $af
	nop                                              ; $48e8: $00
	ld   [bc], a                                     ; $48e9: $02
	inc  bc                                          ; $48ea: $03
	ld   bc, $2001                                   ; $48eb: $01 $01 $20
	nop                                              ; $48ee: $00
	rlca                                             ; $48ef: $07
	inc  b                                           ; $48f0: $04
	ld   bc, $0302                                   ; $48f1: $01 $02 $03
	ld   bc, $2002                                   ; $48f4: $01 $02 $20
	nop                                              ; $48f7: $00
	ld   b, $80                                      ; $48f8: $06 $80
	ld   bc, $000f                                   ; $48fa: $01 $0f $00
	ld   bc, $df01                                   ; $48fd: $01 $01 $df
	db   $ec                                         ; $4900: $ec
	and  e                                           ; $4901: $a3
	ld   h, e                                        ; $4902: $63
	and  c                                           ; $4903: $a1
	ld   a, h                                        ; $4904: $7c
	inc  b                                           ; $4905: $04
	ld   l, d                                        ; $4906: $6a
	ld   [hl], c                                     ; $4907: $71
	ld   [hl], h                                     ; $4908: $74
	dec  c                                           ; $4909: $0d
	ld   e, e                                        ; $490a: $5b
	sbc  d                                           ; $490b: $9a
	ld   d, d                                        ; $490c: $52
	ld   [hl], l                                     ; $490d: $75
	ld   h, a                                        ; $490e: $67
	ld   a, e                                        ; $490f: $7b
	rst  $38                                         ; $4910: $ff
	rst  $38                                         ; $4911: $ff
	dec  c                                           ; $4912: $0d
	nop                                              ; $4913: $00
	ld   a, [bc]                                     ; $4914: $0a
	inc  e                                           ; $4915: $1c
	inc  bc                                          ; $4916: $03
	inc  bc                                          ; $4917: $03
	inc  bc                                          ; $4918: $03
	dec  e                                           ; $4919: $1d
	ld   b, b                                        ; $491a: $40
	inc  de                                          ; $491b: $13
	inc  bc                                          ; $491c: $03
	inc  de                                          ; $491d: $13
	ld   bc, $2802                                   ; $491e: $01 $02 $28
	nop                                              ; $4921: $00
	ld   bc, $9750                                   ; $4922: $01 $50 $97
	sbc  [hl]                                        ; $4925: $9e
	ld   d, b                                        ; $4926: $50
	sbc  b                                           ; $4927: $98
	ld   e, d                                        ; $4928: $5a
	halt                                             ; $4929: $76
	ld   d, h                                        ; $492a: $54
	rst  $38                                         ; $492b: $ff
	rst  $38                                         ; $492c: $ff
	dec  c                                           ; $492d: $0d
	ld   [hl], l                                     ; $492e: $75
	sub  b                                           ; $492f: $90
	sbc  [hl]                                        ; $4930: $9e
	ld   [bc], a                                     ; $4931: $02
	and  l                                           ; $4932: $a5
	ld   a, l                                        ; $4933: $7d
	ld   [bc], a                                     ; $4934: $02
	sub  l                                           ; $4935: $95
	ld   [bc], a                                     ; $4936: $02
	sub  e                                           ; $4937: $93
	sbc  b                                           ; $4938: $98
	inc  b                                           ; $4939: $04
	dec  bc                                          ; $493a: $0b
	ld   l, [hl]                                     ; $493b: $6e
	ld   [hl], c                                     ; $493c: $71
	ld   [hl], h                                     ; $493d: $74
	ld   h, c                                        ; $493e: $61
	halt                                             ; $493f: $76
	dec  c                                           ; $4940: $0d
	inc  b                                           ; $4941: $04
	and  e                                           ; $4942: $a3
	sbc  d                                           ; $4943: $9a
	ld   l, a                                        ; $4944: $6f
	sub  c                                           ; $4945: $91
	pop  bc                                          ; $4946: $c1
	db   $e3                                         ; $4947: $e3
	sub  [hl]                                        ; $4948: $96
	sbc  a                                           ; $4949: $9f
	dec  c                                           ; $494a: $0d
	nop                                              ; $494b: $00
	ld   a, [bc]                                     ; $494c: $0a
	ld   b, $6c                                      ; $494d: $06 $6c
	ld   bc, $000f                                   ; $494f: $01 $0f $00
	ld   bc, $df01                                   ; $4952: $01 $01 $df
	db   $ec                                         ; $4955: $ec
	and  e                                           ; $4956: $a3
	ld   h, e                                        ; $4957: $63
	and  c                                           ; $4958: $a1
	ld   a, h                                        ; $4959: $7c
	inc  b                                           ; $495a: $04
	call nc, $7471                                   ; $495b: $d4 $71 $74
	dec  c                                           ; $495e: $0d
	ld   e, e                                        ; $495f: $5b
	sbc  d                                           ; $4960: $9a
	ld   d, d                                        ; $4961: $52
	ld   [hl], l                                     ; $4962: $75
	ld   h, a                                        ; $4963: $67
	ld   a, e                                        ; $4964: $7b
	rst  $38                                         ; $4965: $ff
	rst  $38                                         ; $4966: $ff
	dec  c                                           ; $4967: $0d
	nop                                              ; $4968: $00
	ld   a, [bc]                                     ; $4969: $0a
	inc  e                                           ; $496a: $1c
	inc  bc                                          ; $496b: $03
	inc  bc                                          ; $496c: $03
	inc  bc                                          ; $496d: $03
	dec  e                                           ; $496e: $1d
	ld   b, b                                        ; $496f: $40
	inc  de                                          ; $4970: $13
	inc  bc                                          ; $4971: $03
	inc  de                                          ; $4972: $13
	ld   bc, $2802                                   ; $4973: $01 $02 $28
	nop                                              ; $4976: $00
	ld   bc, $9750                                   ; $4977: $01 $50 $97
	sbc  [hl]                                        ; $497a: $9e
	ld   d, b                                        ; $497b: $50
	sbc  b                                           ; $497c: $98
	ld   e, d                                        ; $497d: $5a
	halt                                             ; $497e: $76
	ld   d, h                                        ; $497f: $54
	rst  $38                                         ; $4980: $ff
	rst  $38                                         ; $4981: $ff
	dec  c                                           ; $4982: $0d
	ld   [hl], l                                     ; $4983: $75
	sub  b                                           ; $4984: $90
	sbc  [hl]                                        ; $4985: $9e
	ld   [bc], a                                     ; $4986: $02
	and  l                                           ; $4987: $a5
	ld   a, l                                        ; $4988: $7d
	ld   [bc], a                                     ; $4989: $02
	sub  l                                           ; $498a: $95
	ld   [bc], a                                     ; $498b: $02
	sub  e                                           ; $498c: $93
	sbc  b                                           ; $498d: $98
	inc  b                                           ; $498e: $04
	dec  bc                                          ; $498f: $0b
	ld   l, [hl]                                     ; $4990: $6e
	ld   [hl], c                                     ; $4991: $71
	ld   [hl], h                                     ; $4992: $74
	ld   h, c                                        ; $4993: $61
	halt                                             ; $4994: $76
	dec  c                                           ; $4995: $0d
	inc  b                                           ; $4996: $04
	and  e                                           ; $4997: $a3
	sbc  d                                           ; $4998: $9a
	ld   l, a                                        ; $4999: $6f
	sub  c                                           ; $499a: $91
	pop  bc                                          ; $499b: $c1
	db   $e3                                         ; $499c: $e3
	sub  [hl]                                        ; $499d: $96
	sbc  a                                           ; $499e: $9f
	dec  c                                           ; $499f: $0d
	nop                                              ; $49a0: $00
	ld   a, [bc]                                     ; $49a1: $0a
	ld   b, $6c                                      ; $49a2: $06 $6c
	ld   bc, $000f                                   ; $49a4: $01 $0f $00
	ld   bc, $df01                                   ; $49a7: $01 $01 $df
	db   $ec                                         ; $49aa: $ec
	and  e                                           ; $49ab: $a3
	ld   h, e                                        ; $49ac: $63
	and  c                                           ; $49ad: $a1
	ld   a, h                                        ; $49ae: $7c
	ld   [bc], a                                     ; $49af: $02
	ld   h, [hl]                                     ; $49b0: $66
	ld   [hl], c                                     ; $49b1: $71
	ld   [hl], h                                     ; $49b2: $74
	dec  c                                           ; $49b3: $0d
	inc  b                                           ; $49b4: $04
	ld   c, $5b                                      ; $49b5: $0e $5b
	ld   d, d                                        ; $49b7: $52
	ld   [hl], l                                     ; $49b8: $75
	ld   h, a                                        ; $49b9: $67
	sub  [hl]                                        ; $49ba: $96
	ld   a, e                                        ; $49bb: $7b
	rst  $38                                         ; $49bc: $ff
	rst  $38                                         ; $49bd: $ff
	dec  c                                           ; $49be: $0d
	nop                                              ; $49bf: $00
	ld   a, [bc]                                     ; $49c0: $0a
	inc  e                                           ; $49c1: $1c
	inc  bc                                          ; $49c2: $03
	ld   [bc], a                                     ; $49c3: $02
	ld   [bc], a                                     ; $49c4: $02
	dec  e                                           ; $49c5: $1d
	ld   b, b                                        ; $49c6: $40
	inc  de                                          ; $49c7: $13
	inc  bc                                          ; $49c8: $03
	inc  de                                          ; $49c9: $13
	ld   bc, $2903                                   ; $49ca: $01 $03 $29
	nop                                              ; $49cd: $00
	ld   bc, $4904                                   ; $49ce: $01 $04 $49
	and  b                                           ; $49d1: $a0
	ld   [bc], a                                     ; $49d2: $02
	sbc  l                                           ; $49d3: $9d
	ld   [hl], c                                     ; $49d4: $71
	ld   [hl], h                                     ; $49d5: $74
	sbc  c                                           ; $49d6: $99
	ld   a, h                                        ; $49d7: $7c
	ld   a, [$830d]                                  ; $49d8: $fa $0d $83
	ld   h, h                                        ; $49db: $64
	ld   e, a                                        ; $49dc: $5f
	ld   a, b                                        ; $49dd: $78
	ld   d, d                                        ; $49de: $52
	ld   [hl], l                                     ; $49df: $75
	ld   a, [$000d]                                  ; $49e0: $fa $0d $00
	ld   a, [bc]                                     ; $49e3: $0a
	ld   bc, $718c                                   ; $49e4: $01 $8c $71
	ld   l, l                                        ; $49e7: $6d
	ld   e, l                                        ; $49e8: $5d
	rst  $38                                         ; $49e9: $ff
	rst  $38                                         ; $49ea: $ff
	dec  c                                           ; $49eb: $0d
	inc  b                                           ; $49ec: $04
	dec  c                                           ; $49ed: $0d
	ld   [bc], a                                     ; $49ee: $02
	sub  [hl]                                        ; $49ef: $96
	inc  b                                           ; $49f0: $04
	ld   b, l                                        ; $49f1: $45
	inc  b                                           ; $49f2: $04
	ld   a, [bc]                                     ; $49f3: $0a
	inc  b                                           ; $49f4: $04
	dec  bc                                          ; $49f5: $0b
	ld   l, [hl]                                     ; $49f6: $6e
	halt                                             ; $49f7: $76
	ld   d, d                                        ; $49f8: $52
	ld   d, h                                        ; $49f9: $54
	ld   h, c                                        ; $49fa: $61
	halt                                             ; $49fb: $76
	and  b                                           ; $49fc: $a0
	dec  c                                           ; $49fd: $0d
	inc  b                                           ; $49fe: $04
	and  e                                           ; $49ff: $a3
	sbc  d                                           ; $4a00: $9a
	ld   a, b                                        ; $4a01: $78
	ld   d, d                                        ; $4a02: $52
	ld   [hl], l                                     ; $4a03: $75
	adc  c                                           ; $4a04: $89
	ld   h, l                                        ; $4a05: $65
	ld   d, d                                        ; $4a06: $52
	sbc  l                                           ; $4a07: $9d
	ld   a, e                                        ; $4a08: $7b
	sbc  a                                           ; $4a09: $9f
	dec  c                                           ; $4a0a: $0d
	nop                                              ; $4a0b: $00
	ld   a, [bc]                                     ; $4a0c: $0a
	ld   bc, $9e63                                   ; $4a0d: $01 $63 $9e
	ld   [bc], a                                     ; $4a10: $02
	sub  l                                           ; $4a11: $95
	ld   [bc], a                                     ; $4a12: $02
	sub  e                                           ; $4a13: $93
	sbc  b                                           ; $4a14: $98
	and  b                                           ; $4a15: $a0
	ld   [bc], a                                     ; $4a16: $02
	ei                                               ; $4a17: $fb
	ld   e, a                                        ; $4a18: $5f
	ld   a, b                                        ; $4a19: $78
	ld   h, e                                        ; $4a1a: $63
	ld   d, d                                        ; $4a1b: $52
	sbc  a                                           ; $4a1c: $9f
	dec  c                                           ; $4a1d: $0d
	nop                                              ; $4a1e: $00
	ld   a, [bc]                                     ; $4a1f: $0a
	nop                                              ; $4a20: $00
	inc  e                                           ; $4a21: $1c
	inc  bc                                          ; $4a22: $03
	nop                                              ; $4a23: $00
	nop                                              ; $4a24: $00
	ld   bc, $9e63                                   ; $4a25: $01 $63 $9e
	ld   [bc], a                                     ; $4a28: $02
	sub  l                                           ; $4a29: $95
	ld   [bc], a                                     ; $4a2a: $02
	sub  e                                           ; $4a2b: $93
	sbc  b                                           ; $4a2c: $98
	and  b                                           ; $4a2d: $a0
	ld   [bc], a                                     ; $4a2e: $02
	ei                                               ; $4a2f: $fb
	ld   e, a                                        ; $4a30: $5f
	ld   a, b                                        ; $4a31: $78
	ld   h, e                                        ; $4a32: $63
	ld   d, d                                        ; $4a33: $52
	sbc  a                                           ; $4a34: $9f
	dec  c                                           ; $4a35: $0d
	nop                                              ; $4a36: $00
	ld   a, [bc]                                     ; $4a37: $0a
	nop                                              ; $4a38: $00
	nop                                              ; $4a39: $00
	rrca                                             ; $4a3a: $0f
	nop                                              ; $4a3b: $00
	ld   bc, $040d                                   ; $4a3c: $01 $0d $04
	ld   b, h                                        ; $4a3f: $44
	ld   [bc], a                                     ; $4a40: $02
	ld   bc, $9a50                                   ; $4a41: $01 $50 $9a
	ld   sp, hl                                      ; $4a44: $f9
	dec  c                                           ; $4a45: $0d
	ld   [hl], a                                     ; $4a46: $77
	ld   d, h                                        ; $4a47: $54
	ld   h, l                                        ; $4a48: $65
	ld   l, l                                        ; $4a49: $6d
	and  c                                           ; $4a4a: $a1
	ld   l, [hl]                                     ; $4a4b: $6e
	ld   d, d                                        ; $4a4c: $52
	sbc  [hl]                                        ; $4a4d: $9e
	and  e                                           ; $4a4e: $a3
	and  l                                           ; $4a4f: $a5
	db   $ec                                         ; $4a50: $ec
	cp   d                                           ; $4a51: $ba
	ld   sp, hl                                      ; $4a52: $f9
	dec  c                                           ; $4a53: $0d
	ld   h, c                                        ; $4a54: $61
	and  c                                           ; $4a55: $a1
	ld   a, b                                        ; $4a56: $78
	halt                                             ; $4a57: $76
	ld   h, c                                        ; $4a58: $61
	sbc  e                                           ; $4a59: $9b
	ld   [hl], l                                     ; $4a5a: $75
	sbc  a                                           ; $4a5b: $9f
	dec  c                                           ; $4a5c: $0d
	nop                                              ; $4a5d: $00
	ld   a, [bc]                                     ; $4a5e: $0a
	rrca                                             ; $4a5f: $0f
	inc  b                                           ; $4a60: $04
	inc  e                                           ; $4a61: $1c
	ld   bc, $526f                                   ; $4a62: $01 $6f $52
	ld   [bc], a                                     ; $4a65: $02
	inc  de                                          ; $4a66: $13
	ld   l, a                                        ; $4a67: $6f
	sub  c                                           ; $4a68: $91
	and  c                                           ; $4a69: $a1
	rst  $38                                         ; $4a6a: $ff
	rst  $38                                         ; $4a6b: $ff
	dec  c                                           ; $4a6c: $0d
	cp   c                                           ; $4a6d: $b9
	push hl                                          ; $4a6e: $e5
	push af                                          ; $4a6f: $f5
	sbc  $fb                                         ; $4a70: $de $fb
	db   $ed                                         ; $4a72: $ed
	ld   e, d                                        ; $4a73: $5a
	sbc  [hl]                                        ; $4a74: $9e
	dec  c                                           ; $4a75: $0d
	ld   d, d                                        ; $4a76: $52
	ld   a, b                                        ; $4a77: $78
	ld   e, l                                        ; $4a78: $5d
	ld   a, b                                        ; $4a79: $78
	ld   [hl], c                                     ; $4a7a: $71
	ld   l, a                                        ; $4a7b: $6f
	sub  c                                           ; $4a7c: $91
	ld   [hl], c                                     ; $4a7d: $71
	ld   l, l                                        ; $4a7e: $6d
	ld   a, h                                        ; $4a7f: $7c
	rst  $38                                         ; $4a80: $ff
	rst  $38                                         ; $4a81: $ff
	dec  c                                           ; $4a82: $0d
	nop                                              ; $4a83: $00
	ld   a, [bc]                                     ; $4a84: $0a
	add  hl, de                                      ; $4a85: $19
	dec  b                                           ; $4a86: $05
	inc  bc                                          ; $4a87: $03
	ld   d, d                                        ; $4a88: $52
	ld   [hl], c                                     ; $4a89: $71
	ld   h, l                                        ; $4a8a: $65
	sub  l                                           ; $4a8b: $95
	ld   a, c                                        ; $4a8c: $79
	inc  b                                           ; $4a8d: $04
	inc  d                                           ; $4a8e: $14
	ld   h, l                                        ; $4a8f: $65
	ld   [hl], h                                     ; $4a90: $74
	ld   d, b                                        ; $4a91: $50
	ld   h, b                                        ; $4a92: $60
	sbc  c                                           ; $4a93: $99
	sub  [hl]                                        ; $4a94: $96
	nop                                              ; $4a95: $00
	nop                                              ; $4a96: $00
	ld   a, b                                        ; $4a97: $78
	ld   e, l                                        ; $4a98: $5d
	ld   h, c                                        ; $4a99: $61
	halt                                             ; $4a9a: $76
	ld   a, b                                        ; $4a9b: $78
	ld   d, d                                        ; $4a9c: $52
	ld   l, [hl]                                     ; $4a9d: $6e
	sbc  e                                           ; $4a9e: $9b
	ld   d, h                                        ; $4a9f: $54
	ld   sp, hl                                      ; $4aa0: $f9
	nop                                              ; $4aa1: $00
	ld   bc, $a602                                   ; $4aa2: $01 $02 $a6
	inc  bc                                          ; $4aa5: $03
	add  b                                           ; $4aa6: $80
	ld   h, l                                        ; $4aa7: $65
	ld   l, l                                        ; $4aa8: $6d
	and  c                                           ; $4aa9: $a1
	ld   h, [hl]                                     ; $4aaa: $66
	sub  c                                           ; $4aab: $91
	ld   a, b                                        ; $4aac: $78
	ld   d, d                                        ; $4aad: $52
	ld   e, c                                        ; $4aae: $59
	ld   sp, hl                                      ; $4aaf: $f9
	nop                                              ; $4ab0: $00
	ld   [bc], a                                     ; $4ab1: $02
	rlca                                             ; $4ab2: $07
	sbc  e                                           ; $4ab3: $9b
	ld   bc, $0302                                   ; $4ab4: $01 $02 $03
	ld   bc, $2000                                   ; $4ab7: $01 $00 $20
	nop                                              ; $4aba: $00
	rlca                                             ; $4abb: $07
	sub  [hl]                                        ; $4abc: $96
	nop                                              ; $4abd: $00
	ld   [bc], a                                     ; $4abe: $02
	inc  bc                                          ; $4abf: $03
	ld   bc, $2001                                   ; $4ac0: $01 $01 $20
	nop                                              ; $4ac3: $00
	rlca                                             ; $4ac4: $07
	rlca                                             ; $4ac5: $07
	ld   bc, $0302                                   ; $4ac6: $01 $02 $03
	ld   bc, $2002                                   ; $4ac9: $01 $02 $20
	nop                                              ; $4acc: $00
	ld   b, $71                                      ; $4acd: $06 $71
	ld   bc, $000f                                   ; $4acf: $01 $0f $00
	ld   bc, $7801                                   ; $4ad2: $01 $01 $78
	ld   e, l                                        ; $4ad5: $5d
	ld   h, c                                        ; $4ad6: $61
	halt                                             ; $4ad7: $76
	ld   a, b                                        ; $4ad8: $78
	ld   d, d                                        ; $4ad9: $52
	ld   l, [hl]                                     ; $4ada: $6e
	sbc  e                                           ; $4adb: $9b
	ld   d, h                                        ; $4adc: $54
	ld   sp, hl                                      ; $4add: $f9
	dec  c                                           ; $4ade: $0d
	inc  b                                           ; $4adf: $04
	ld   e, $79                                      ; $4ae0: $1e $79
	sub  b                                           ; $4ae2: $90
	ld   a, d                                        ; $4ae3: $7a
	ld   d, d                                        ; $4ae4: $52
	ld   e, [hl]                                     ; $4ae5: $5e
	sbc  c                                           ; $4ae6: $99
	adc  l                                           ; $4ae7: $8d
	ld   a, l                                        ; $4ae8: $7d
	ld   d, b                                        ; $4ae9: $50
	sbc  c                                           ; $4aea: $99
	ld   e, c                                        ; $4aeb: $59
	sub  a                                           ; $4aec: $97
	dec  c                                           ; $4aed: $0d
	ld   d, d                                        ; $4aee: $52
	ld   d, d                                        ; $4aef: $52
	ld   h, [hl]                                     ; $4af0: $66
	sub  c                                           ; $4af1: $91
	ld   a, b                                        ; $4af2: $78
	ld   d, d                                        ; $4af3: $52
	ld   e, c                                        ; $4af4: $59
	sbc  a                                           ; $4af5: $9f
	dec  c                                           ; $4af6: $0d
	nop                                              ; $4af7: $00
	ld   a, [bc]                                     ; $4af8: $0a
	inc  e                                           ; $4af9: $1c
	inc  b                                           ; $4afa: $04
	ld   b, h                                        ; $4afb: $44
	inc  e                                           ; $4afc: $1c
	dec  e                                           ; $4afd: $1d
	ld   b, b                                        ; $4afe: $40
	inc  d                                           ; $4aff: $14
	inc  bc                                          ; $4b00: $03
	inc  d                                           ; $4b01: $14
	ld   bc, $2902                                   ; $4b02: $01 $02 $29
	nop                                              ; $4b05: $00
	ld   bc, $5a6f                                   ; $4b06: $01 $6f $5a
	ld   d, h                                        ; $4b09: $54
	sub  b                                           ; $4b0a: $90
	and  c                                           ; $4b0b: $a1
	ld   a, [$b90d]                                  ; $4b0c: $fa $0d $b9
	push hl                                          ; $4b0f: $e5
	push af                                          ; $4b10: $f5
	sbc  $fb                                         ; $4b11: $de $fb
	db   $ed                                         ; $4b13: $ed
	ld   a, l                                        ; $4b14: $7d
	dec  c                                           ; $4b15: $0d
	cp   c                                           ; $4b16: $b9
	push hl                                          ; $4b17: $e5
	push af                                          ; $4b18: $f5
	sbc  $fb                                         ; $4b19: $de $fb
	db   $ed                                         ; $4b1b: $ed
	ld   l, [hl]                                     ; $4b1c: $6e
	sub  b                                           ; $4b1d: $90
	and  c                                           ; $4b1e: $a1
	ld   a, [$000d]                                  ; $4b1f: $fa $0d $00
	ld   a, [bc]                                     ; $4b22: $0a
	ld   bc, $526f                                   ; $4b23: $01 $6f $52
	ld   [bc], a                                     ; $4b26: $02
	inc  de                                          ; $4b27: $13
	ld   l, a                                        ; $4b28: $6f
	sub  c                                           ; $4b29: $91
	and  c                                           ; $4b2a: $a1
	ld   a, b                                        ; $4b2b: $78
	and  c                                           ; $4b2c: $a1
	ld   e, c                                        ; $4b2d: $59
	sbc  [hl]                                        ; $4b2e: $9e
	dec  c                                           ; $4b2f: $0d
	ld   h, l                                        ; $4b30: $65
	sub  a                                           ; $4b31: $97
	ld   a, b                                        ; $4b32: $78
	ld   d, d                                        ; $4b33: $52
	ld   a, [$000d]                                  ; $4b34: $fa $0d $00
	ld   a, [bc]                                     ; $4b37: $0a
	dec  c                                           ; $4b38: $0d
	nop                                              ; $4b39: $00
	nop                                              ; $4b3a: $00
	rrca                                             ; $4b3b: $0f
	nop                                              ; $4b3c: $00
	ld   bc, $1e09                                   ; $4b3d: $01 $09 $1e
	nop                                              ; $4b40: $00
	rrca                                             ; $4b41: $0f
	nop                                              ; $4b42: $00
	ld   bc, $0201                                   ; $4b43: $01 $01 $02
	and  [hl]                                        ; $4b46: $a6
	inc  bc                                          ; $4b47: $03
	add  b                                           ; $4b48: $80
	ld   h, l                                        ; $4b49: $65
	ld   l, l                                        ; $4b4a: $6d
	and  c                                           ; $4b4b: $a1
	ld   h, [hl]                                     ; $4b4c: $66
	sub  c                                           ; $4b4d: $91
	ld   a, b                                        ; $4b4e: $78
	ld   d, d                                        ; $4b4f: $52
	ld   e, c                                        ; $4b50: $59
	ld   sp, hl                                      ; $4b51: $f9
	dec  c                                           ; $4b52: $0d
	and  e                                           ; $4b53: $a3
	and  l                                           ; $4b54: $a5
	db   $ec                                         ; $4b55: $ec
	cp   d                                           ; $4b56: $ba
	ld   e, d                                        ; $4b57: $5a
	ld   d, d                                        ; $4b58: $52
	ld   h, [hl]                                     ; $4b59: $66
	adc  a                                           ; $4b5a: $8f
	sbc  c                                           ; $4b5b: $99
	ld   e, c                                        ; $4b5c: $59
	sub  a                                           ; $4b5d: $97
	rst  $38                                         ; $4b5e: $ff
	rst  $38                                         ; $4b5f: $ff
	dec  c                                           ; $4b60: $0d
	nop                                              ; $4b61: $00
	ld   a, [bc]                                     ; $4b62: $0a
	inc  e                                           ; $4b63: $1c
	inc  b                                           ; $4b64: $04
	ld   b, a                                        ; $4b65: $47
	rra                                              ; $4b66: $1f
	dec  e                                           ; $4b67: $1d
	ld   b, b                                        ; $4b68: $40
	inc  d                                           ; $4b69: $14
	inc  bc                                          ; $4b6a: $03
	inc  d                                           ; $4b6b: $14
	ld   bc, $2903                                   ; $4b6c: $01 $03 $29
	nop                                              ; $4b6f: $00
	ld   bc, $6652                                   ; $4b70: $01 $52 $66
	adc  a                                           ; $4b73: $8f
	ld   [hl], h                                     ; $4b74: $74
	ld   a, b                                        ; $4b75: $78
	and  c                                           ; $4b76: $a1
	ld   e, c                                        ; $4b77: $59
	ld   a, b                                        ; $4b78: $78
	ld   d, d                                        ; $4b79: $52
	sub  b                                           ; $4b7a: $90
	and  c                                           ; $4b7b: $a1
	ld   a, [$6f0d]                                  ; $4b7c: $fa $0d $6f
	ld   d, d                                        ; $4b7f: $52
	ld   [bc], a                                     ; $4b80: $02
	inc  de                                          ; $4b81: $13
	ld   l, a                                        ; $4b82: $6f
	sub  c                                           ; $4b83: $91
	and  c                                           ; $4b84: $a1
	ld   a, b                                        ; $4b85: $78
	and  c                                           ; $4b86: $a1
	ld   e, c                                        ; $4b87: $59
	sbc  [hl]                                        ; $4b88: $9e
	dec  c                                           ; $4b89: $0d
	nop                                              ; $4b8a: $00
	dec  b                                           ; $4b8b: $05
	ld   b, b                                        ; $4b8c: $40
	ld   c, e                                        ; $4b8d: $4b
	ld   [bc], a                                     ; $4b8e: $02
	nop                                              ; $4b8f: $00
	nop                                              ; $4b90: $00
	dec  b                                           ; $4b91: $05
	ld   b, b                                        ; $4b92: $40
	ld   d, c                                        ; $4b93: $51
	ld   bc, $0002                                   ; $4b94: $01 $02 $00
	ld   bc, $526e                                   ; $4b97: $01 $6e $52
	ld   [hl], c                                     ; $4b9a: $71
	xor  [hl]                                        ; $4b9b: $ae
	db   $eb                                         ; $4b9c: $eb
	and  l                                           ; $4b9d: $a5
	ld   a, [$000d]                                  ; $4b9e: $fa $0d $00
	ld   a, [bc]                                     ; $4ba1: $0a
	dec  c                                           ; $4ba2: $0d
	nop                                              ; $4ba3: $00
	nop                                              ; $4ba4: $00
	rrca                                             ; $4ba5: $0f
	nop                                              ; $4ba6: $00
	ld   bc, $1e09                                   ; $4ba7: $01 $09 $1e
	nop                                              ; $4baa: $00
	inc  e                                           ; $4bab: $1c
	inc  b                                           ; $4bac: $04
	ld   b, h                                        ; $4bad: $44
	inc  e                                           ; $4bae: $1c
	ld   bc, $fb50                                   ; $4baf: $01 $50 $fb
	and  c                                           ; $4bb2: $a1
	sbc  [hl]                                        ; $4bb3: $9e
	cp   c                                           ; $4bb4: $b9
	push hl                                          ; $4bb5: $e5
	push af                                          ; $4bb6: $f5
	sbc  $fb                                         ; $4bb7: $de $fb
	db   $ed                                         ; $4bb9: $ed
	ld   d, e                                        ; $4bba: $53
	rst  $38                                         ; $4bbb: $ff
	rst  $38                                         ; $4bbc: $ff
	dec  c                                           ; $4bbd: $0d
	ld   [hl], a                                     ; $4bbe: $77
	ld   h, c                                        ; $4bbf: $61
	ld   d, d                                        ; $4bc0: $52
	ld   [hl], c                                     ; $4bc1: $71
	ld   l, a                                        ; $4bc2: $6f
	sub  c                                           ; $4bc3: $91
	ld   [hl], c                                     ; $4bc4: $71
	ld   l, l                                        ; $4bc5: $6d
	ld   a, h                                        ; $4bc6: $7c
	rst  $38                                         ; $4bc7: $ff
	rst  $38                                         ; $4bc8: $ff
	dec  c                                           ; $4bc9: $0d
	nop                                              ; $4bca: $00
	ld   a, [bc]                                     ; $4bcb: $0a
	dec  c                                           ; $4bcc: $0d
	nop                                              ; $4bcd: $00
	nop                                              ; $4bce: $00
	rrca                                             ; $4bcf: $0f
	nop                                              ; $4bd0: $00
	ld   bc, $1e09                                   ; $4bd1: $01 $09 $1e
	nop                                              ; $4bd4: $00
	rrca                                             ; $4bd5: $0f
	nop                                              ; $4bd6: $00
	ld   bc, $5201                                   ; $4bd7: $01 $01 $52
	ld   [hl], c                                     ; $4bda: $71
	ld   h, l                                        ; $4bdb: $65
	sub  l                                           ; $4bdc: $95
	ld   a, c                                        ; $4bdd: $79
	inc  b                                           ; $4bde: $04
	inc  d                                           ; $4bdf: $14
	ld   h, l                                        ; $4be0: $65
	ld   [hl], h                                     ; $4be1: $74
	ld   d, b                                        ; $4be2: $50
	ld   h, b                                        ; $4be3: $60
	sbc  c                                           ; $4be4: $99
	sub  [hl]                                        ; $4be5: $96
	sbc  a                                           ; $4be6: $9f
	dec  c                                           ; $4be7: $0d
	nop                                              ; $4be8: $00
	ld   a, [bc]                                     ; $4be9: $0a
	inc  e                                           ; $4bea: $1c
	inc  b                                           ; $4beb: $04
	ld   b, c                                        ; $4bec: $41
	add  hl, de                                      ; $4bed: $19
	ld   bc, $9850                                   ; $4bee: $01 $50 $98
	ld   e, d                                        ; $4bf1: $5a
	halt                                             ; $4bf2: $76
	ld   d, h                                        ; $4bf3: $54
	sbc  [hl]                                        ; $4bf4: $9e
	ld   l, a                                        ; $4bf5: $6f
	ld   d, d                                        ; $4bf6: $52
	ld   [bc], a                                     ; $4bf7: $02
	inc  de                                          ; $4bf8: $13
	ld   l, a                                        ; $4bf9: $6f
	sub  c                                           ; $4bfa: $91
	and  c                                           ; $4bfb: $a1
	ld   a, [$000d]                                  ; $4bfc: $fa $0d $00
	ld   a, [bc]                                     ; $4bff: $0a
	rrca                                             ; $4c00: $0f
	nop                                              ; $4c01: $00
	ld   bc, $6101                                   ; $4c02: $01 $01 $61
	ld   h, c                                        ; $4c05: $61
	ld   a, c                                        ; $4c06: $79
	ld   a, b                                        ; $4c07: $78
	ld   d, d                                        ; $4c08: $52
	halt                                             ; $4c09: $76
	ld   h, l                                        ; $4c0a: $65
	ld   l, l                                        ; $4c0b: $6d
	sub  a                                           ; $4c0c: $97
	rst  $38                                         ; $4c0d: $ff
	rst  $38                                         ; $4c0e: $ff
	dec  c                                           ; $4c0f: $0d
	halt                                             ; $4c10: $76
	sbc  b                                           ; $4c11: $98
	ld   d, b                                        ; $4c12: $50
	ld   d, [hl]                                     ; $4c13: $56
	ld   l, b                                        ; $4c14: $68
	inc  b                                           ; $4c15: $04
	ld   e, $a0                                      ; $4c16: $1e $a0
	inc  b                                           ; $4c18: $04
	jr   jr_052_4c88                                 ; $4c19: $18 $6d

	sbc  e                                           ; $4c1b: $9b
	ld   d, h                                        ; $4c1c: $54
	sbc  a                                           ; $4c1d: $9f
	dec  c                                           ; $4c1e: $0d
	nop                                              ; $4c1f: $00
	ld   a, [bc]                                     ; $4c20: $0a
	jr   jr_052_4c26                                 ; $4c21: $18 $03

	nop                                              ; $4c23: $00
	dec  b                                           ; $4c24: $05
	inc  de                                          ; $4c25: $13

jr_052_4c26:
	ld   [bc], a                                     ; $4c26: $02
	ld   hl, $0000                                   ; $4c27: $21 $00 $00
	inc  b                                           ; $4c2a: $04
	adc  [hl]                                        ; $4c2b: $8e
	inc  b                                           ; $4c2c: $04
	inc  c                                           ; $4c2d: $0c
	nop                                              ; $4c2e: $00
	ld   bc, $6a03                                   ; $4c2f: $01 $03 $6a
	inc  bc                                          ; $4c32: $03
	db   $db                                         ; $4c33: $db
	nop                                              ; $4c34: $00
	ld   [bc], a                                     ; $4c35: $02
	rlca                                             ; $4c36: $07
	ld   [hl], e                                     ; $4c37: $73
	inc  b                                           ; $4c38: $04
	ld   [bc], a                                     ; $4c39: $02
	ld   [bc], a                                     ; $4c3a: $02
	ld   bc, $2000                                   ; $4c3b: $01 $00 $20
	nop                                              ; $4c3e: $00
	rlca                                             ; $4c3f: $07
	rla                                              ; $4c40: $17
	ld   [bc], a                                     ; $4c41: $02
	ld   [bc], a                                     ; $4c42: $02
	ld   [bc], a                                     ; $4c43: $02
	ld   bc, $2001                                   ; $4c44: $01 $01 $20
	nop                                              ; $4c47: $00
	rlca                                             ; $4c48: $07
	ld   [hl], b                                     ; $4c49: $70
	ld   [bc], a                                     ; $4c4a: $02
	ld   [bc], a                                     ; $4c4b: $02
	ld   [bc], a                                     ; $4c4c: $02
	ld   bc, $2002                                   ; $4c4d: $01 $02 $20
	nop                                              ; $4c50: $00
	dec  c                                           ; $4c51: $0d
	nop                                              ; $4c52: $00
	nop                                              ; $4c53: $00
	rrca                                             ; $4c54: $0f
	nop                                              ; $4c55: $00
	ld   bc, $1723                                   ; $4c56: $01 $23 $17
	dec  c                                           ; $4c59: $0d
	inc  b                                           ; $4c5a: $04
	ld   b, h                                        ; $4c5b: $44
	ld   bc, $6161                                   ; $4c5c: $01 $61 $61
	ld   a, c                                        ; $4c5f: $79
	ld   a, l                                        ; $4c60: $7d
	cp   c                                           ; $4c61: $b9
	push hl                                          ; $4c62: $e5
	push af                                          ; $4c63: $f5
	sbc  $fb                                         ; $4c64: $de $fb
	db   $ed                                         ; $4c66: $ed
	dec  c                                           ; $4c67: $0d
	ld   d, d                                        ; $4c68: $52
	ld   a, b                                        ; $4c69: $78
	ld   d, d                                        ; $4c6a: $52
	ld   a, b                                        ; $4c6b: $78
	rst  $38                                         ; $4c6c: $ff
	rst  $38                                         ; $4c6d: $ff
	dec  c                                           ; $4c6e: $0d
	adc  c                                           ; $4c6f: $89
	ld   e, c                                        ; $4c70: $59
	and  b                                           ; $4c71: $a0
	ld   h, e                                        ; $4c72: $63
	ld   e, d                                        ; $4c73: $5a
	ld   l, e                                        ; $4c74: $6b
	ld   d, h                                        ; $4c75: $54
	rst  $38                                         ; $4c76: $ff
	rst  $38                                         ; $4c77: $ff
	dec  c                                           ; $4c78: $0d
	nop                                              ; $4c79: $00
	ld   a, [bc]                                     ; $4c7a: $0a
	jr   jr_052_4c80                                 ; $4c7b: $18 $03

	nop                                              ; $4c7d: $00
	dec  b                                           ; $4c7e: $05
	inc  de                                          ; $4c7f: $13

jr_052_4c80:
	ld   [bc], a                                     ; $4c80: $02
	ld   hl, $0000                                   ; $4c81: $21 $00 $00
	call c, $edfb                                    ; $4c84: $dc $fb $ed
	nop                                              ; $4c87: $00

jr_052_4c88:
	ld   bc, $6a03                                   ; $4c88: $01 $03 $6a
	inc  bc                                          ; $4c8b: $03
	db   $db                                         ; $4c8c: $db
	nop                                              ; $4c8d: $00
	ld   [bc], a                                     ; $4c8e: $02
	rlca                                             ; $4c8f: $07
	ld   [hl], e                                     ; $4c90: $73
	inc  b                                           ; $4c91: $04
	ld   [bc], a                                     ; $4c92: $02
	ld   [bc], a                                     ; $4c93: $02
	ld   bc, $2000                                   ; $4c94: $01 $00 $20
	nop                                              ; $4c97: $00
	rlca                                             ; $4c98: $07
	ret                                              ; $4c99: $c9


	ld   [bc], a                                     ; $4c9a: $02
	ld   [bc], a                                     ; $4c9b: $02
	ld   [bc], a                                     ; $4c9c: $02
	ld   bc, $2001                                   ; $4c9d: $01 $01 $20
	nop                                              ; $4ca0: $00
	rlca                                             ; $4ca1: $07
	add  hl, hl                                      ; $4ca2: $29
	inc  bc                                          ; $4ca3: $03
	ld   [bc], a                                     ; $4ca4: $02
	ld   [bc], a                                     ; $4ca5: $02
	ld   bc, $2002                                   ; $4ca6: $01 $02 $20
	nop                                              ; $4ca9: $00
	dec  c                                           ; $4caa: $0d
	nop                                              ; $4cab: $00
	nop                                              ; $4cac: $00
	rrca                                             ; $4cad: $0f
	nop                                              ; $4cae: $00
	ld   bc, $2823                                   ; $4caf: $01 $23 $28
	dec  c                                           ; $4cb2: $0d
	inc  b                                           ; $4cb3: $04
	ld   b, h                                        ; $4cb4: $44
	ld   bc, $6161                                   ; $4cb5: $01 $61 $61
	ld   a, c                                        ; $4cb8: $79
	ld   a, l                                        ; $4cb9: $7d
	cp   c                                           ; $4cba: $b9
	push hl                                          ; $4cbb: $e5
	push af                                          ; $4cbc: $f5
	sbc  $fb                                         ; $4cbd: $de $fb
	db   $ed                                         ; $4cbf: $ed
	dec  c                                           ; $4cc0: $0d
	ld   d, d                                        ; $4cc1: $52
	ld   a, b                                        ; $4cc2: $78
	ld   d, d                                        ; $4cc3: $52
	ld   a, b                                        ; $4cc4: $78
	rst  $38                                         ; $4cc5: $ff
	rst  $38                                         ; $4cc6: $ff
	dec  c                                           ; $4cc7: $0d
	adc  c                                           ; $4cc8: $89
	ld   e, c                                        ; $4cc9: $59
	and  b                                           ; $4cca: $a0
	ld   h, e                                        ; $4ccb: $63
	ld   e, d                                        ; $4ccc: $5a
	ld   l, e                                        ; $4ccd: $6b
	ld   d, h                                        ; $4cce: $54
	rst  $38                                         ; $4ccf: $ff
	rst  $38                                         ; $4cd0: $ff
	dec  c                                           ; $4cd1: $0d
	nop                                              ; $4cd2: $00
	ld   a, [bc]                                     ; $4cd3: $0a
	jr   jr_052_4cd9                                 ; $4cd4: $18 $03

	nop                                              ; $4cd6: $00
	dec  b                                           ; $4cd7: $05
	inc  de                                          ; $4cd8: $13

jr_052_4cd9:
	ld   [bc], a                                     ; $4cd9: $02
	ld   hl, $0000                                   ; $4cda: $21 $00 $00
	inc  b                                           ; $4cdd: $04
	adc  [hl]                                        ; $4cde: $8e
	inc  b                                           ; $4cdf: $04
	inc  c                                           ; $4ce0: $0c
	nop                                              ; $4ce1: $00
	ld   bc, $fbdc                                   ; $4ce2: $01 $dc $fb
	db   $ed                                         ; $4ce5: $ed
	nop                                              ; $4ce6: $00
	ld   [bc], a                                     ; $4ce7: $02
	rlca                                             ; $4ce8: $07
	ld   [hl], e                                     ; $4ce9: $73
	inc  b                                           ; $4cea: $04
	ld   [bc], a                                     ; $4ceb: $02
	ld   [bc], a                                     ; $4cec: $02
	ld   bc, $2000                                   ; $4ced: $01 $00 $20
	nop                                              ; $4cf0: $00
	rlca                                             ; $4cf1: $07
	adc  b                                           ; $4cf2: $88
	inc  bc                                          ; $4cf3: $03
	ld   [bc], a                                     ; $4cf4: $02
	ld   [bc], a                                     ; $4cf5: $02
	ld   bc, $2001                                   ; $4cf6: $01 $01 $20
	nop                                              ; $4cf9: $00
	rlca                                             ; $4cfa: $07
	rst  $20                                         ; $4cfb: $e7
	inc  bc                                          ; $4cfc: $03
	ld   [bc], a                                     ; $4cfd: $02
	ld   [bc], a                                     ; $4cfe: $02
	ld   bc, $2002                                   ; $4cff: $01 $02 $20
	nop                                              ; $4d02: $00
	dec  c                                           ; $4d03: $0d
	nop                                              ; $4d04: $00
	nop                                              ; $4d05: $00
	rrca                                             ; $4d06: $0f
	nop                                              ; $4d07: $00
	ld   bc, $0623                                   ; $4d08: $01 $23 $06
	dec  c                                           ; $4d0b: $0d
	inc  b                                           ; $4d0c: $04
	ld   b, h                                        ; $4d0d: $44
	ld   bc, $6161                                   ; $4d0e: $01 $61 $61
	ld   a, c                                        ; $4d11: $79
	ld   a, l                                        ; $4d12: $7d
	cp   c                                           ; $4d13: $b9
	push hl                                          ; $4d14: $e5
	push af                                          ; $4d15: $f5
	sbc  $fb                                         ; $4d16: $de $fb
	db   $ed                                         ; $4d18: $ed
	dec  c                                           ; $4d19: $0d
	ld   d, d                                        ; $4d1a: $52
	ld   a, b                                        ; $4d1b: $78
	ld   d, d                                        ; $4d1c: $52
	ld   a, b                                        ; $4d1d: $78
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	dec  c                                           ; $4d20: $0d
	adc  c                                           ; $4d21: $89
	ld   e, c                                        ; $4d22: $59
	and  b                                           ; $4d23: $a0
	ld   h, e                                        ; $4d24: $63
	ld   e, d                                        ; $4d25: $5a
	ld   l, e                                        ; $4d26: $6b
	ld   d, h                                        ; $4d27: $54
	rst  $38                                         ; $4d28: $ff
	rst  $38                                         ; $4d29: $ff
	dec  c                                           ; $4d2a: $0d
	nop                                              ; $4d2b: $00
	ld   a, [bc]                                     ; $4d2c: $0a
	jr   jr_052_4d32                                 ; $4d2d: $18 $03

	nop                                              ; $4d2f: $00
	dec  b                                           ; $4d30: $05
	inc  de                                          ; $4d31: $13

jr_052_4d32:
	ld   [bc], a                                     ; $4d32: $02
	ld   hl, $0000                                   ; $4d33: $21 $00 $00
	inc  b                                           ; $4d36: $04
	ld   c, $04                                      ; $4d37: $0e $04
	ld   d, $02                                      ; $4d39: $16 $02
	xor  b                                           ; $4d3b: $a8
	inc  b                                           ; $4d3c: $04
	sub  l                                           ; $4d3d: $95
	ld   [bc], a                                     ; $4d3e: $02
	ld   hl, $0100                                   ; $4d3f: $21 $00 $01
	inc  bc                                          ; $4d42: $03
	ld   l, d                                        ; $4d43: $6a
	inc  bc                                          ; $4d44: $03
	db   $db                                         ; $4d45: $db
	nop                                              ; $4d46: $00
	ld   [bc], a                                     ; $4d47: $02
	rlca                                             ; $4d48: $07
	ld   [hl], e                                     ; $4d49: $73
	inc  b                                           ; $4d4a: $04
	ld   [bc], a                                     ; $4d4b: $02
	ld   [bc], a                                     ; $4d4c: $02
	ld   bc, $2000                                   ; $4d4d: $01 $00 $20
	nop                                              ; $4d50: $00
	rlca                                             ; $4d51: $07
	ld   b, a                                        ; $4d52: $47
	inc  b                                           ; $4d53: $04
	ld   [bc], a                                     ; $4d54: $02
	ld   [bc], a                                     ; $4d55: $02
	ld   bc, $2001                                   ; $4d56: $01 $01 $20
	nop                                              ; $4d59: $00
	rlca                                             ; $4d5a: $07
	ld   b, a                                        ; $4d5b: $47
	inc  b                                           ; $4d5c: $04
	ld   [bc], a                                     ; $4d5d: $02
	ld   [bc], a                                     ; $4d5e: $02
	ld   bc, $2002                                   ; $4d5f: $01 $02 $20
	nop                                              ; $4d62: $00
	dec  c                                           ; $4d63: $0d
	nop                                              ; $4d64: $00
	nop                                              ; $4d65: $00
	rrca                                             ; $4d66: $0f
	nop                                              ; $4d67: $00
	ld   bc, $2823                                   ; $4d68: $01 $23 $28
	dec  c                                           ; $4d6b: $0d
	inc  b                                           ; $4d6c: $04
	ld   b, h                                        ; $4d6d: $44
	ld   bc, $6161                                   ; $4d6e: $01 $61 $61
	ld   a, c                                        ; $4d71: $79
	ld   a, l                                        ; $4d72: $7d
	cp   c                                           ; $4d73: $b9
	push hl                                          ; $4d74: $e5
	push af                                          ; $4d75: $f5
	sbc  $fb                                         ; $4d76: $de $fb
	db   $ed                                         ; $4d78: $ed
	dec  c                                           ; $4d79: $0d
	ld   d, d                                        ; $4d7a: $52
	ld   a, b                                        ; $4d7b: $78
	ld   d, d                                        ; $4d7c: $52
	ld   a, b                                        ; $4d7d: $78
	rst  $38                                         ; $4d7e: $ff
	rst  $38                                         ; $4d7f: $ff
	dec  c                                           ; $4d80: $0d
	adc  c                                           ; $4d81: $89
	ld   e, c                                        ; $4d82: $59
	and  b                                           ; $4d83: $a0
	ld   h, e                                        ; $4d84: $63
	ld   e, d                                        ; $4d85: $5a
	ld   l, e                                        ; $4d86: $6b
	ld   d, h                                        ; $4d87: $54
	rst  $38                                         ; $4d88: $ff
	rst  $38                                         ; $4d89: $ff
	dec  c                                           ; $4d8a: $0d
	nop                                              ; $4d8b: $00
	ld   a, [bc]                                     ; $4d8c: $0a
	jr   jr_052_4d92                                 ; $4d8d: $18 $03

	nop                                              ; $4d8f: $00
	dec  b                                           ; $4d90: $05
	inc  de                                          ; $4d91: $13

jr_052_4d92:
	ld   [bc], a                                     ; $4d92: $02
	ld   hl, $0000                                   ; $4d93: $21 $00 $00
	call c, $edfb                                    ; $4d96: $dc $fb $ed
	nop                                              ; $4d99: $00
	ld   bc, $0e04                                   ; $4d9a: $01 $04 $0e
	inc  b                                           ; $4d9d: $04
	ld   d, $02                                      ; $4d9e: $16 $02
	xor  b                                           ; $4da0: $a8
	inc  b                                           ; $4da1: $04
	sub  l                                           ; $4da2: $95
	ld   [bc], a                                     ; $4da3: $02
	ld   hl, $0200                                   ; $4da4: $21 $00 $02
	rlca                                             ; $4da7: $07
	ld   [hl], e                                     ; $4da8: $73
	inc  b                                           ; $4da9: $04
	ld   [bc], a                                     ; $4daa: $02
	ld   [bc], a                                     ; $4dab: $02
	ld   bc, $2000                                   ; $4dac: $01 $00 $20
	nop                                              ; $4daf: $00
	rlca                                             ; $4db0: $07
	ld   b, a                                        ; $4db1: $47
	inc  b                                           ; $4db2: $04
	ld   [bc], a                                     ; $4db3: $02
	ld   [bc], a                                     ; $4db4: $02
	ld   bc, $2001                                   ; $4db5: $01 $01 $20
	nop                                              ; $4db8: $00
	rlca                                             ; $4db9: $07
	ld   b, a                                        ; $4dba: $47
	inc  b                                           ; $4dbb: $04
	ld   [bc], a                                     ; $4dbc: $02
	ld   [bc], a                                     ; $4dbd: $02
	ld   bc, $2002                                   ; $4dbe: $01 $02 $20
	nop                                              ; $4dc1: $00
	dec  c                                           ; $4dc2: $0d
	nop                                              ; $4dc3: $00
	nop                                              ; $4dc4: $00
	rrca                                             ; $4dc5: $0f
	nop                                              ; $4dc6: $00
	ld   bc, $1723                                   ; $4dc7: $01 $23 $17
	dec  c                                           ; $4dca: $0d
	inc  b                                           ; $4dcb: $04
	ld   b, h                                        ; $4dcc: $44
	ld   bc, $6161                                   ; $4dcd: $01 $61 $61
	ld   a, c                                        ; $4dd0: $79
	ld   a, l                                        ; $4dd1: $7d
	cp   c                                           ; $4dd2: $b9
	push hl                                          ; $4dd3: $e5
	push af                                          ; $4dd4: $f5
	sbc  $fb                                         ; $4dd5: $de $fb
	db   $ed                                         ; $4dd7: $ed
	dec  c                                           ; $4dd8: $0d
	ld   d, d                                        ; $4dd9: $52
	ld   a, b                                        ; $4dda: $78
	ld   d, d                                        ; $4ddb: $52
	ld   a, b                                        ; $4ddc: $78
	rst  $38                                         ; $4ddd: $ff
	rst  $38                                         ; $4dde: $ff
	dec  c                                           ; $4ddf: $0d
	adc  c                                           ; $4de0: $89
	ld   e, c                                        ; $4de1: $59
	and  b                                           ; $4de2: $a0
	ld   h, e                                        ; $4de3: $63
	ld   e, d                                        ; $4de4: $5a
	ld   l, e                                        ; $4de5: $6b
	ld   d, h                                        ; $4de6: $54
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	dec  c                                           ; $4de9: $0d
	nop                                              ; $4dea: $00
	ld   a, [bc]                                     ; $4deb: $0a
	jr   jr_052_4df1                                 ; $4dec: $18 $03

	nop                                              ; $4dee: $00
	dec  b                                           ; $4def: $05
	inc  de                                          ; $4df0: $13

jr_052_4df1:
	ld   [bc], a                                     ; $4df1: $02
	ld   hl, $0000                                   ; $4df2: $21 $00 $00
	inc  b                                           ; $4df5: $04
	ld   c, $04                                      ; $4df6: $0e $04
	ld   d, $02                                      ; $4df8: $16 $02
	xor  b                                           ; $4dfa: $a8
	inc  b                                           ; $4dfb: $04
	sub  l                                           ; $4dfc: $95
	ld   [bc], a                                     ; $4dfd: $02
	ld   hl, $0100                                   ; $4dfe: $21 $00 $01
	call c, $edfb                                    ; $4e01: $dc $fb $ed
	nop                                              ; $4e04: $00
	ld   [bc], a                                     ; $4e05: $02
	rlca                                             ; $4e06: $07
	ld   [hl], e                                     ; $4e07: $73
	inc  b                                           ; $4e08: $04
	ld   [bc], a                                     ; $4e09: $02
	ld   [bc], a                                     ; $4e0a: $02
	ld   bc, $2000                                   ; $4e0b: $01 $00 $20
	nop                                              ; $4e0e: $00
	rlca                                             ; $4e0f: $07
	ld   b, a                                        ; $4e10: $47
	inc  b                                           ; $4e11: $04
	ld   [bc], a                                     ; $4e12: $02
	ld   [bc], a                                     ; $4e13: $02
	ld   bc, $2001                                   ; $4e14: $01 $01 $20
	nop                                              ; $4e17: $00
	rlca                                             ; $4e18: $07
	ld   b, a                                        ; $4e19: $47
	inc  b                                           ; $4e1a: $04
	ld   [bc], a                                     ; $4e1b: $02
	ld   [bc], a                                     ; $4e1c: $02
	ld   bc, $2002                                   ; $4e1d: $01 $02 $20
	nop                                              ; $4e20: $00
	dec  c                                           ; $4e21: $0d
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	rrca                                             ; $4e24: $0f
	nop                                              ; $4e25: $00
	ld   bc, $0623                                   ; $4e26: $01 $23 $06
	dec  c                                           ; $4e29: $0d
	inc  b                                           ; $4e2a: $04
	ld   b, h                                        ; $4e2b: $44
	ld   bc, $6161                                   ; $4e2c: $01 $61 $61
	ld   a, c                                        ; $4e2f: $79
	ld   a, l                                        ; $4e30: $7d
	cp   c                                           ; $4e31: $b9
	push hl                                          ; $4e32: $e5
	push af                                          ; $4e33: $f5
	sbc  $fb                                         ; $4e34: $de $fb
	db   $ed                                         ; $4e36: $ed
	dec  c                                           ; $4e37: $0d
	ld   d, d                                        ; $4e38: $52
	ld   a, b                                        ; $4e39: $78
	ld   d, d                                        ; $4e3a: $52
	ld   a, b                                        ; $4e3b: $78
	rst  $38                                         ; $4e3c: $ff
	rst  $38                                         ; $4e3d: $ff
	dec  c                                           ; $4e3e: $0d
	adc  c                                           ; $4e3f: $89
	ld   e, c                                        ; $4e40: $59
	and  b                                           ; $4e41: $a0
	ld   h, e                                        ; $4e42: $63
	ld   e, d                                        ; $4e43: $5a
	ld   l, e                                        ; $4e44: $6b
	ld   d, h                                        ; $4e45: $54
	rst  $38                                         ; $4e46: $ff
	rst  $38                                         ; $4e47: $ff
	dec  c                                           ; $4e48: $0d
	nop                                              ; $4e49: $00
	ld   a, [bc]                                     ; $4e4a: $0a
	jr   jr_052_4e50                                 ; $4e4b: $18 $03

	nop                                              ; $4e4d: $00
	dec  b                                           ; $4e4e: $05
	inc  de                                          ; $4e4f: $13

jr_052_4e50:
	ld   [bc], a                                     ; $4e50: $02
	ld   hl, $0000                                   ; $4e51: $21 $00 $00
	inc  b                                           ; $4e54: $04
	adc  [hl]                                        ; $4e55: $8e
	inc  b                                           ; $4e56: $04
	inc  c                                           ; $4e57: $0c
	nop                                              ; $4e58: $00
	ld   bc, $0e04                                   ; $4e59: $01 $04 $0e
	inc  b                                           ; $4e5c: $04
	ld   d, $02                                      ; $4e5d: $16 $02
	xor  b                                           ; $4e5f: $a8
	inc  b                                           ; $4e60: $04
	sub  l                                           ; $4e61: $95
	ld   [bc], a                                     ; $4e62: $02
	ld   hl, $0200                                   ; $4e63: $21 $00 $02
	rlca                                             ; $4e66: $07
	ld   [hl], e                                     ; $4e67: $73
	inc  b                                           ; $4e68: $04
	ld   [bc], a                                     ; $4e69: $02
	ld   [bc], a                                     ; $4e6a: $02
	ld   bc, $2000                                   ; $4e6b: $01 $00 $20
	nop                                              ; $4e6e: $00
	rlca                                             ; $4e6f: $07
	ld   b, a                                        ; $4e70: $47
	inc  b                                           ; $4e71: $04
	ld   [bc], a                                     ; $4e72: $02
	ld   [bc], a                                     ; $4e73: $02
	ld   bc, $2001                                   ; $4e74: $01 $01 $20
	nop                                              ; $4e77: $00
	rlca                                             ; $4e78: $07
	ld   b, a                                        ; $4e79: $47
	inc  b                                           ; $4e7a: $04
	ld   [bc], a                                     ; $4e7b: $02
	ld   [bc], a                                     ; $4e7c: $02
	ld   bc, $2002                                   ; $4e7d: $01 $02 $20
	nop                                              ; $4e80: $00
	inc  e                                           ; $4e81: $1c
	inc  b                                           ; $4e82: $04
	ld   b, e                                        ; $4e83: $43
	dec  de                                          ; $4e84: $1b
	ld   bc, $5490                                   ; $4e85: $01 $90 $54
	ld   d, d                                        ; $4e88: $52
	ld   [hl], c                                     ; $4e89: $71
	ld   e, c                                        ; $4e8a: $59
	ld   d, d                                        ; $4e8b: $52
	dec  c                                           ; $4e8c: $0d
	ld   e, b                                        ; $4e8d: $58
	add  [hl]                                        ; $4e8e: $86
	sub  d                                           ; $4e8f: $92
	and  b                                           ; $4e90: $a0
	ld   h, e                                        ; $4e91: $63
	ld   e, d                                        ; $4e92: $5a
	ld   h, l                                        ; $4e93: $65
	ld   [hl], h                                     ; $4e94: $74
	adc  l                                           ; $4e95: $8d
	sbc  c                                           ; $4e96: $99
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	dec  c                                           ; $4e99: $0d
	ld   d, b                                        ; $4e9a: $50
	sbc  b                                           ; $4e9b: $98
	ld   e, d                                        ; $4e9c: $5a
	halt                                             ; $4e9d: $76
	ld   d, h                                        ; $4e9e: $54
	ld   a, e                                        ; $4e9f: $7b
	sbc  [hl]                                        ; $4ea0: $9e
	ld   l, a                                        ; $4ea1: $6f
	ld   d, d                                        ; $4ea2: $52
	ld   [bc], a                                     ; $4ea3: $02
	inc  de                                          ; $4ea4: $13
	ld   l, a                                        ; $4ea5: $6f
	sub  c                                           ; $4ea6: $91
	and  c                                           ; $4ea7: $a1
	sbc  a                                           ; $4ea8: $9f
	dec  c                                           ; $4ea9: $0d
	nop                                              ; $4eaa: $00
	ld   a, [bc]                                     ; $4eab: $0a
	nop                                              ; $4eac: $00
	rrca                                             ; $4ead: $0f
	nop                                              ; $4eae: $00
	ld   bc, $000d                                   ; $4eaf: $01 $0d $00
	nop                                              ; $4eb2: $00
	inc  hl                                          ; $4eb3: $23
	dec  hl                                          ; $4eb4: $2b
	dec  de                                          ; $4eb5: $1b
	ld   b, c                                        ; $4eb6: $41
	rrca                                             ; $4eb7: $0f
	inc  b                                           ; $4eb8: $04
	ld   e, $01                                      ; $4eb9: $1e $01
	ld   d, d                                        ; $4ebb: $52
	ld   l, l                                        ; $4ebc: $6d
	ld   a, [$b90d]                                  ; $4ebd: $fa $0d $b9
	push hl                                          ; $4ec0: $e5
	push af                                          ; $4ec1: $f5
	sbc  $fb                                         ; $4ec2: $de $fb
	db   $ed                                         ; $4ec4: $ed
	ld   a, [$000d]                                  ; $4ec5: $fa $0d $00
	ld   a, [bc]                                     ; $4ec8: $0a
	dec  c                                           ; $4ec9: $0d
	nop                                              ; $4eca: $00
	nop                                              ; $4ecb: $00
	db   $10                                         ; $4ecc: $10
	ld   h, $00                                      ; $4ecd: $26 $00
	dec  c                                           ; $4ecf: $0d
	inc  b                                           ; $4ed0: $04
	ld   b, c                                        ; $4ed1: $41
	rrca                                             ; $4ed2: $0f
	nop                                              ; $4ed3: $00
	ld   bc, $9601                                   ; $4ed4: $01 $01 $96
	ld   e, c                                        ; $4ed7: $59
	ld   [hl], c                                     ; $4ed8: $71
	ld   l, l                                        ; $4ed9: $6d
	ld   a, e                                        ; $4eda: $7b
	sbc  [hl]                                        ; $4edb: $9e
	and  e                                           ; $4edc: $a3
	and  l                                           ; $4edd: $a5
	db   $ec                                         ; $4ede: $ec
	cp   d                                           ; $4edf: $ba
	sbc  a                                           ; $4ee0: $9f
	dec  c                                           ; $4ee1: $0d
	nop                                              ; $4ee2: $00
	ld   a, [bc]                                     ; $4ee3: $0a
	rrca                                             ; $4ee4: $0f
	inc  b                                           ; $4ee5: $04
	add  hl, de                                      ; $4ee6: $19
	dec  e                                           ; $4ee7: $1d
	ld   b, b                                        ; $4ee8: $40
	inc  d                                           ; $4ee9: $14
	inc  bc                                          ; $4eea: $03
	inc  d                                           ; $4eeb: $14
	ld   bc, $2803                                   ; $4eec: $01 $03 $28
	nop                                              ; $4eef: $00
	ld   bc, $a154                                   ; $4ef0: $01 $54 $a1
	ld   a, [$500d]                                  ; $4ef3: $fa $0d $50
	sbc  b                                           ; $4ef6: $98
	ld   e, d                                        ; $4ef7: $5a
	halt                                             ; $4ef8: $76
	ld   d, h                                        ; $4ef9: $54
	sbc  [hl]                                        ; $4efa: $9e
	ld   l, a                                        ; $4efb: $6f
	ld   d, d                                        ; $4efc: $52
	ld   [bc], a                                     ; $4efd: $02
	inc  de                                          ; $4efe: $13
	ld   l, a                                        ; $4eff: $6f
	sub  c                                           ; $4f00: $91
	and  c                                           ; $4f01: $a1
	sbc  a                                           ; $4f02: $9f
	dec  c                                           ; $4f03: $0d
	nop                                              ; $4f04: $00
	ld   a, [bc]                                     ; $4f05: $0a
	nop                                              ; $4f06: $00
	nop                                              ; $4f07: $00
	ld   c, $74                                      ; $4f08: $0e $74
	rrca                                             ; $4f0a: $0f
	nop                                              ; $4f0b: $00
	ld   bc, $0102                                   ; $4f0c: $01 $02 $01
	ld   bc, $0203                                   ; $4f0f: $01 $03 $02
	sub  l                                           ; $4f12: $95
	ld   [bc], a                                     ; $4f13: $02
	sub  e                                           ; $4f14: $93
	sbc  b                                           ; $4f15: $98
	ld   l, l                                        ; $4f16: $6d
	sbc  c                                           ; $4f17: $99
	sub  b                                           ; $4f18: $90
	ld   a, h                                        ; $4f19: $7c
	ld   h, a                                        ; $4f1a: $67
	adc  l                                           ; $4f1b: $8d
	ld   l, b                                        ; $4f1c: $68
	adc  l                                           ; $4f1d: $8d
	adc  h                                           ; $4f1e: $8c
	ld   [hl], l                                     ; $4f1f: $75
	dec  c                                           ; $4f20: $0d
	db   $10                                         ; $4f21: $10
	ld   [bc], a                                     ; $4f22: $02
	sub  l                                           ; $4f23: $95
	ld   [bc], a                                     ; $4f24: $02
	sub  e                                           ; $4f25: $93
	sub  a                                           ; $4f26: $97
	ld   a, b                                        ; $4f27: $78
	ld   d, d                                        ; $4f28: $52
	halt                                             ; $4f29: $76
	ld   a, e                                        ; $4f2a: $7b
	sbc  a                                           ; $4f2b: $9f
	dec  c                                           ; $4f2c: $0d
	db   $10                                         ; $4f2d: $10
	ld   [bc], a                                     ; $4f2e: $02
	ld   a, a                                        ; $4f2f: $7f
	ld   e, l                                        ; $4f30: $5d
	ld   l, h                                        ; $4f31: $6c
	db   $fc                                         ; $4f32: $fc
	sbc  a                                           ; $4f33: $9f
	cp   b                                           ; $4f34: $b8
	push hl                                          ; $4f35: $e5
	pop  af                                          ; $4f36: $f1
	ei                                               ; $4f37: $fb
	inc  bc                                          ; $4f38: $03
	ld   c, l                                        ; $4f39: $4d
	ld   a, [$0401]                                  ; $4f3a: $fa $01 $04
	dec  c                                           ; $4f3d: $0d
	nop                                              ; $4f3e: $00
	ld   a, [bc]                                     ; $4f3f: $0a
	inc  hl                                          ; $4f40: $23
	ld   h, l                                        ; $4f41: $65
	dec  c                                           ; $4f42: $0d
	dec  b                                           ; $4f43: $05
	nop                                              ; $4f44: $00
	ld   bc, $7150                                   ; $4f45: $01 $50 $71
	ld   a, [$0210]                                  ; $4f48: $fa $10 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f4b: $cf
	dec  b                                           ; $4f4c: $05
	ld   a, [de]                                     ; $4f4d: $1a
	ld   h, e                                        ; $4f4e: $63
	and  c                                           ; $4f4f: $a1
	ld   a, [$0dfa]                                  ; $4f50: $fa $fa $0d
	nop                                              ; $4f53: $00
	ld   a, [bc]                                     ; $4f54: $0a
	add  hl, de                                      ; $4f55: $19
	dec  b                                           ; $4f56: $05
	inc  bc                                          ; $4f57: $03
	ld   e, l                                        ; $4f58: $5d
	sub  d                                           ; $4f59: $92
	ld   h, l                                        ; $4f5a: $65
	ld   e, d                                        ; $4f5b: $5a
	sbc  c                                           ; $4f5c: $99
	nop                                              ; $4f5d: $00
	nop                                              ; $4f5e: $00
	ld   h, d                                        ; $4f5f: $62
	adc  h                                           ; $4f60: $8c
	and  b                                           ; $4f61: $a0
	ld   h, a                                        ; $4f62: $67
	sbc  c                                           ; $4f63: $99
	nop                                              ; $4f64: $00
	ld   bc, $1503                                   ; $4f65: $01 $03 $15
	inc  b                                           ; $4f68: $04
	cp   a                                           ; $4f69: $bf
	ld   h, a                                        ; $4f6a: $67
	sbc  c                                           ; $4f6b: $99
	nop                                              ; $4f6c: $00
	ld   [bc], a                                     ; $4f6d: $02
	rlca                                             ; $4f6e: $07
	reti                                             ; $4f6f: $d9


	nop                                              ; $4f70: $00
	ld   [bc], a                                     ; $4f71: $02
	inc  bc                                          ; $4f72: $03
	ld   bc, $2000                                   ; $4f73: $01 $00 $20
	nop                                              ; $4f76: $00
	rlca                                             ; $4f77: $07
	sub  a                                           ; $4f78: $97
	ld   bc, $0302                                   ; $4f79: $01 $02 $03
	ld   bc, $2001                                   ; $4f7c: $01 $01 $20
	nop                                              ; $4f7f: $00
	rlca                                             ; $4f80: $07
	add  c                                           ; $4f81: $81
	ld   [bc], a                                     ; $4f82: $02
	ld   [bc], a                                     ; $4f83: $02
	inc  bc                                          ; $4f84: $03
	ld   bc, $2002                                   ; $4f85: $01 $02 $20
	nop                                              ; $4f88: $00
	ld   b, $84                                      ; $4f89: $06 $84
	nop                                              ; $4f8b: $00
	rrca                                             ; $4f8c: $0f
	nop                                              ; $4f8d: $00
	ld   bc, $8d01                                   ; $4f8e: $01 $01 $8d
	sbc  [hl]                                        ; $4f91: $9e
	ld   [bc], a                                     ; $4f92: $02
	sub  l                                           ; $4f93: $95
	ld   [bc], a                                     ; $4f94: $02
	sub  e                                           ; $4f95: $93
	sbc  b                                           ; $4f96: $98
	ld   a, c                                        ; $4f97: $79
	dec  b                                           ; $4f98: $05
	db   $10                                         ; $4f99: $10
	adc  h                                           ; $4f9a: $8c
	ld   h, l                                        ; $4f9b: $65
	ld   l, l                                        ; $4f9c: $6d
	sbc  a                                           ; $4f9d: $9f
	dec  c                                           ; $4f9e: $0d

jr_052_4f9f:
	nop                                              ; $4f9f: $00
	ld   a, [bc]                                     ; $4fa0: $0a
	rrca                                             ; $4fa1: $0f
	dec  b                                           ; $4fa2: $05
	nop                                              ; $4fa3: $00
	ld   bc, $9a6b                                   ; $4fa4: $01 $6b $9a
	ld   a, l                                        ; $4fa7: $7d
	sbc  [hl]                                        ; $4fa8: $9e
	ld   l, e                                        ; $4fa9: $6b
	sbc  d                                           ; $4faa: $9a
	ld   a, l                                        ; $4fab: $7d
	sbc  a                                           ; $4fac: $9f
	dec  c                                           ; $4fad: $0d
	ld   h, d                                        ; $4fae: $62
	ld   e, l                                        ; $4faf: $5d
	sbc  e                                           ; $4fb0: $9b
	ld   d, h                                        ; $4fb1: $54
	ld   h, e                                        ; $4fb2: $63
	and  c                                           ; $4fb3: $a1
	sbc  a                                           ; $4fb4: $9f
	dec  c                                           ; $4fb5: $0d
	nop                                              ; $4fb6: $00
	ld   a, [bc]                                     ; $4fb7: $0a
	ld   bc, $546b                                   ; $4fb8: $01 $6b $54
	ld   l, e                                        ; $4fbb: $6b
	ld   d, h                                        ; $4fbc: $54
	sbc  a                                           ; $4fbd: $9f
	dec  c                                           ; $4fbe: $0d
	ld   a, h                                        ; $4fbf: $7c
	ld   l, h                                        ; $4fc0: $6c
	ld   e, e                                        ; $4fc1: $5b
	ld   a, l                                        ; $4fc2: $7d
	ld   d, b                                        ; $4fc3: $50
	ld   e, c                                        ; $4fc4: $59
	and  c                                           ; $4fc5: $a1
	ld   [hl], l                                     ; $4fc6: $75
	sbc  a                                           ; $4fc7: $9f
	dec  c                                           ; $4fc8: $0d
	ld   b, $25                                      ; $4fc9: $06 $25
	inc  bc                                          ; $4fcb: $03
	jr   @-$66                                       ; $4fcc: $18 $98

	ld   a, c                                        ; $4fce: $79
	ld   a, b                                        ; $4fcf: $78
	sbc  c                                           ; $4fd0: $99
	ld   e, c                                        ; $4fd1: $59
	sub  a                                           ; $4fd2: $97
	ld   a, b                                        ; $4fd3: $78
	sbc  a                                           ; $4fd4: $9f
	dec  c                                           ; $4fd5: $0d
	nop                                              ; $4fd6: $00
	ld   a, [bc]                                     ; $4fd7: $0a
	dec  c                                           ; $4fd8: $0d
	nop                                              ; $4fd9: $00
	nop                                              ; $4fda: $00
	rrca                                             ; $4fdb: $0f
	nop                                              ; $4fdc: $00
	ld   bc, $1e09                                   ; $4fdd: $01 $09 $1e
	nop                                              ; $4fe0: $00
	rrca                                             ; $4fe1: $0f
	nop                                              ; $4fe2: $00
	ld   bc, $6501                                   ; $4fe3: $01 $01 $65
	adc  h                                           ; $4fe6: $8c
	ld   [hl], c                                     ; $4fe7: $71
	ld   l, l                                        ; $4fe8: $6d
	db   $fc                                         ; $4fe9: $fc
	sbc  a                                           ; $4fea: $9f
	dec  c                                           ; $4feb: $0d
	sub  b                                           ; $4fec: $90
	ld   d, h                                        ; $4fed: $54
	inc  bc                                          ; $4fee: $03
	ld   l, h                                        ; $4fef: $6c
	ld   h, l                                        ; $4ff0: $65
	inc  bc                                          ; $4ff1: $03
	ld   [hl], b                                     ; $4ff2: $70
	ld   e, l                                        ; $4ff3: $5d
	dec  b                                           ; $4ff4: $05
	db   $10                                         ; $4ff5: $10
	ld   [hl], h                                     ; $4ff6: $74
	ld   d, d                                        ; $4ff7: $52
	sbc  d                                           ; $4ff8: $9a
	ld   a, [hl]                                     ; $4ff9: $7e
	rst  $38                                         ; $4ffa: $ff
	rst  $38                                         ; $4ffb: $ff
	dec  c                                           ; $4ffc: $0d
	nop                                              ; $4ffd: $00
	ld   a, [bc]                                     ; $4ffe: $0a
	inc  e                                           ; $4fff: $1c
	dec  b                                           ; $5000: $05
	ld   [bc], a                                     ; $5001: $02
	ld   [bc], a                                     ; $5002: $02
	ld   bc, $f9a1                                   ; $5003: $01 $a1 $f9
	db   $10                                         ; $5006: $10
	inc  b                                           ; $5007: $04
	ld   c, c                                        ; $5008: $49
	ld   a, h                                        ; $5009: $7c
	dec  b                                           ; $500a: $05
	jr   nz, jr_052_4f9f                             ; $500b: $20 $92

	dec  c                                           ; $500d: $0d
	nop                                              ; $500e: $00
	inc  e                                           ; $500f: $1c
	dec  b                                           ; $5010: $05
	inc  bc                                          ; $5011: $03
	inc  bc                                          ; $5012: $03
	ld   bc, $7150                                   ; $5013: $01 $50 $71
	ld   a, [$9010]                                  ; $5016: $fa $10 $90
	ld   h, l                                        ; $5019: $65
	ld   e, c                                        ; $501a: $59
	ld   h, l                                        ; $501b: $65
	ld   [hl], h                                     ; $501c: $74
	dec  c                                           ; $501d: $0d
	ld   [$7d00], sp                                 ; $501e: $08 $00 $7d
	and  c                                           ; $5021: $a1
	ld   sp, hl                                      ; $5022: $f9
	dec  c                                           ; $5023: $0d
	nop                                              ; $5024: $00
	ld   a, [bc]                                     ; $5025: $0a
	inc  e                                           ; $5026: $1c
	dec  b                                           ; $5027: $05
	rlca                                             ; $5028: $07
	rlca                                             ; $5029: $07
	ld   bc, wRandomNumStruct                                   ; $502a: $01 $a7 $c2
	ld   a, h                                        ; $502d: $7c
	cp   b                                           ; $502e: $b8
	push hl                                          ; $502f: $e5
	pop  af                                          ; $5030: $f1
	ei                                               ; $5031: $fb
	and  b                                           ; $5032: $a0
	ld   a, h                                        ; $5033: $7c
	ld   l, h                                        ; $5034: $6c
	ld   e, e                                        ; $5035: $5b
	ld   a, c                                        ; $5036: $79
	dec  c                                           ; $5037: $0d
	dec  b                                           ; $5038: $05
	db   $10                                         ; $5039: $10
	ld   l, l                                        ; $503a: $6d
	sbc  [hl]                                        ; $503b: $9e
	halt                                             ; $503c: $76
	ld   e, c                                        ; $503d: $59
	rst  $38                                         ; $503e: $ff
	rst  $38                                         ; $503f: $ff
	sbc  a                                           ; $5040: $9f
	dec  c                                           ; $5041: $0d
	nop                                              ; $5042: $00
	ld   a, [bc]                                     ; $5043: $0a
	rrca                                             ; $5044: $0f
	nop                                              ; $5045: $00
	ld   bc, $5201                                   ; $5046: $01 $01 $52
	sbc  [hl]                                        ; $5049: $9e
	ld   d, d                                        ; $504a: $52
	ld   d, [hl]                                     ; $504b: $56
	sbc  a                                           ; $504c: $9f
	dec  c                                           ; $504d: $0d
	ld   l, e                                        ; $504e: $6b
	ld   a, h                                        ; $504f: $7c
	sub  [hl]                                        ; $5050: $96
	ld   d, h                                        ; $5051: $54
	ld   a, b                                        ; $5052: $78
	ld   h, c                                        ; $5053: $61
	halt                                             ; $5054: $76
	ld   a, l                                        ; $5055: $7d
	ld   [bc], a                                     ; $5056: $02
	add  e                                           ; $5057: $83
	ld   h, l                                        ; $5058: $65
	ld   [hl], h                                     ; $5059: $74
	rst  $38                                         ; $505a: $ff
	rst  $38                                         ; $505b: $ff
	sbc  a                                           ; $505c: $9f
	dec  c                                           ; $505d: $0d
	nop                                              ; $505e: $00
	ld   a, [bc]                                     ; $505f: $0a
	inc  e                                           ; $5060: $1c
	dec  b                                           ; $5061: $05
	ld   [bc], a                                     ; $5062: $02
	ld   [bc], a                                     ; $5063: $02
	dec  e                                           ; $5064: $1d
	ld   b, b                                        ; $5065: $40
	dec  d                                           ; $5066: $15
	inc  bc                                          ; $5067: $03
	dec  d                                           ; $5068: $15
	ld   bc, $2902                                   ; $5069: $01 $02 $29
	nop                                              ; $506c: $00
	ld   bc, $fb83                                   ; $506d: $01 $83 $fb
	and  c                                           ; $5070: $a1
	sbc  a                                           ; $5071: $9f
	adc  h                                           ; $5072: $8c
	ld   d, b                                        ; $5073: $50
	xor  c                                           ; $5074: $a9
	xor  c                                           ; $5075: $a9
	sbc  l                                           ; $5076: $9d
	rst  $38                                         ; $5077: $ff
	rst  $38                                         ; $5078: $ff
	dec  c                                           ; $5079: $0d
	inc  bc                                          ; $507a: $03
	adc  e                                           ; $507b: $8b
	dec  b                                           ; $507c: $05
	ld   c, b                                        ; $507d: $48
	ld   a, h                                        ; $507e: $7c
	ld   l, h                                        ; $507f: $6c
	ld   e, c                                        ; $5080: $59
	sbc  d                                           ; $5081: $9a
	ld   l, l                                        ; $5082: $6d
	sbc  l                                           ; $5083: $9d
	ld   e, a                                        ; $5084: $5f
	sub  d                                           ; $5085: $92
	ld   a, b                                        ; $5086: $78
	ld   d, d                                        ; $5087: $52
	ld   h, l                                        ; $5088: $65
	sbc  a                                           ; $5089: $9f
	dec  c                                           ; $508a: $0d
	adc  c                                           ; $508b: $89
	ld   a, b                                        ; $508c: $78
	sbc  [hl]                                        ; $508d: $9e
	ld   e, b                                        ; $508e: $58
	sub  d                                           ; $508f: $92
	ld   h, a                                        ; $5090: $67
	adc  l                                           ; $5091: $8d
	sbc  a                                           ; $5092: $9f
	dec  c                                           ; $5093: $0d
	nop                                              ; $5094: $00
	ld   a, [bc]                                     ; $5095: $0a
	dec  c                                           ; $5096: $0d
	nop                                              ; $5097: $00
	nop                                              ; $5098: $00
	rrca                                             ; $5099: $0f
	nop                                              ; $509a: $00
	ld   bc, $1e09                                   ; $509b: $01 $09 $1e
	nop                                              ; $509e: $00
	rrca                                             ; $509f: $0f
	nop                                              ; $50a0: $00
	ld   bc, $6101                                   ; $50a1: $01 $01 $61
	sbc  [hl]                                        ; $50a4: $9e
	ld   [bc], a                                     ; $50a5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50a6: $cf
	dec  b                                           ; $50a7: $05
	ld   a, [de]                                     ; $50a8: $1a
	ld   h, e                                        ; $50a9: $63
	and  c                                           ; $50aa: $a1
	sbc  a                                           ; $50ab: $9f
	dec  c                                           ; $50ac: $0d
	inc  b                                           ; $50ad: $04
	xor  $75                                         ; $50ae: $ee $75
	sub  b                                           ; $50b0: $90
	ld   h, e                                        ; $50b1: $63
	ld   h, l                                        ; $50b2: $65
	adc  h                                           ; $50b3: $8c
	ld   h, l                                        ; $50b4: $65
	sub  l                                           ; $50b5: $95
	ld   d, h                                        ; $50b6: $54
	ld   e, c                                        ; $50b7: $59
	ld   sp, hl                                      ; $50b8: $f9
	dec  c                                           ; $50b9: $0d
	nop                                              ; $50ba: $00
	ld   a, [bc]                                     ; $50bb: $0a
	inc  e                                           ; $50bc: $1c
	dec  b                                           ; $50bd: $05
	ld   bc, $0101                                   ; $50be: $01 $01 $01
	ld   l, e                                        ; $50c1: $6b
	ld   d, h                                        ; $50c2: $54
	ld   l, e                                        ; $50c3: $6b
	ld   d, h                                        ; $50c4: $54
	sbc  a                                           ; $50c5: $9f
	dec  c                                           ; $50c6: $0d
	inc  bc                                          ; $50c7: $03
	ld   e, c                                        ; $50c8: $59
	ld   a, c                                        ; $50c9: $79
	ld   a, d                                        ; $50ca: $7a
	sbc  d                                           ; $50cb: $9a
	ld   l, l                                        ; $50cc: $6d
	sub  a                                           ; $50cd: $97
	inc  bc                                          ; $50ce: $03
	ld   l, e                                        ; $50cf: $6b
	inc  b                                           ; $50d0: $04
	ld   b, l                                        ; $50d1: $45
	sbc  d                                           ; $50d2: $9a
	ld   l, c                                        ; $50d3: $69
	and  c                                           ; $50d4: $a1
	halt                                             ; $50d5: $76
	ld   a, b                                        ; $50d6: $78
	sbc  a                                           ; $50d7: $9f
	dec  c                                           ; $50d8: $0d
	rst  $38                                         ; $50d9: $ff
	rst  $38                                         ; $50da: $ff
	rst  $38                                         ; $50db: $ff
	rst  $38                                         ; $50dc: $ff
	rst  $38                                         ; $50dd: $ff
	rst  $38                                         ; $50de: $ff
	dec  c                                           ; $50df: $0d
	nop                                              ; $50e0: $00
	ld   a, [bc]                                     ; $50e1: $0a
	ld   bc, $ffff                                   ; $50e2: $01 $ff $ff
	ld   [hl], c                                     ; $50e5: $71
	ld   [hl], h                                     ; $50e6: $74
	sbc  a                                           ; $50e7: $9f
	dec  c                                           ; $50e8: $0d
	nop                                              ; $50e9: $00
	inc  e                                           ; $50ea: $1c
	dec  b                                           ; $50eb: $05
	inc  bc                                          ; $50ec: $03
	inc  bc                                          ; $50ed: $03
	ld   bc, wRandomNumStruct                                   ; $50ee: $01 $a7 $c2
	ld   a, l                                        ; $50f1: $7d
	sbc  [hl]                                        ; $50f2: $9e
	ld   [bc], a                                     ; $50f3: $02
	jr   c, jr_052_50fa                              ; $50f4: $38 $04

	ld   d, d                                        ; $50f6: $52
	sub  d                                           ; $50f7: $92
	ld   a, b                                        ; $50f8: $78
	ld   d, d                                        ; $50f9: $52

jr_052_50fa:
	ld   [hl], c                                     ; $50fa: $71
	dec  c                                           ; $50fb: $0d
	ld   l, a                                        ; $50fc: $6f
	sub  e                                           ; $50fd: $93
	ei                                               ; $50fe: $fb
	ld   a, e                                        ; $50ff: $7b
	and  c                                           ; $5100: $a1
	ld   a, [$000d]                                  ; $5101: $fa $0d $00
	ld   a, [bc]                                     ; $5104: $0a
	inc  e                                           ; $5105: $1c
	dec  b                                           ; $5106: $05
	dec  b                                           ; $5107: $05
	dec  b                                           ; $5108: $05
	dec  e                                           ; $5109: $1d
	ld   b, b                                        ; $510a: $40
	dec  d                                           ; $510b: $15
	inc  bc                                          ; $510c: $03
	dec  d                                           ; $510d: $15
	ld   bc, $2802                                   ; $510e: $01 $02 $28
	nop                                              ; $5111: $00
	ld   bc, $508c                                   ; $5112: $01 $8c $50
	adc  h                                           ; $5115: $8c
	ld   d, b                                        ; $5116: $50
	ld   a, h                                        ; $5117: $7c
	db   $dd                                         ; $5118: $dd
	or   d                                           ; $5119: $b2
	sub  d                                           ; $511a: $92
	ld   [hl], c                                     ; $511b: $71
	ld   l, l                                        ; $511c: $6d
	ld   a, b                                        ; $511d: $78
	sbc  a                                           ; $511e: $9f
	dec  c                                           ; $511f: $0d
	ld   [hl], l                                     ; $5120: $75
	sub  b                                           ; $5121: $90
	sbc  [hl]                                        ; $5122: $9e
	call c, $c9f5                                    ; $5123: $dc $f5 $c9
	ld   a, l                                        ; $5126: $7d
	and  a                                           ; $5127: $a7
	jp   nz, $b87c                                   ; $5128: $c2 $7c $b8

	push hl                                          ; $512b: $e5
	pop  af                                          ; $512c: $f1
	ei                                               ; $512d: $fb
	dec  c                                           ; $512e: $0d
	ld   a, h                                        ; $512f: $7c
	ld   l, h                                        ; $5130: $6c
	ld   e, e                                        ; $5131: $5b
	ld   a, c                                        ; $5132: $79
	dec  b                                           ; $5133: $05
	db   $10                                         ; $5134: $10
	ld   l, l                                        ; $5135: $6d
	and  c                                           ; $5136: $a1
	halt                                             ; $5137: $76
	ld   l, a                                        ; $5138: $6f
	sub  c                                           ; $5139: $91
	ld   d, h                                        ; $513a: $54
	ld   e, c                                        ; $513b: $59
	ld   sp, hl                                      ; $513c: $f9
	dec  c                                           ; $513d: $0d
	nop                                              ; $513e: $00
	ld   a, [bc]                                     ; $513f: $0a
	rrca                                             ; $5140: $0f
	nop                                              ; $5141: $00
	ld   bc, $5201                                   ; $5142: $01 $01 $52
	sbc  [hl]                                        ; $5145: $9e
	ld   d, d                                        ; $5146: $52
	ld   d, [hl]                                     ; $5147: $56
	sbc  a                                           ; $5148: $9f
	dec  c                                           ; $5149: $0d
	ld   l, e                                        ; $514a: $6b
	ld   a, h                                        ; $514b: $7c
	sub  [hl]                                        ; $514c: $96
	ld   d, h                                        ; $514d: $54
	ld   a, b                                        ; $514e: $78
	ld   h, c                                        ; $514f: $61
	halt                                             ; $5150: $76
	ld   a, l                                        ; $5151: $7d
	ld   [bc], a                                     ; $5152: $02
	add  e                                           ; $5153: $83
	ld   h, l                                        ; $5154: $65
	ld   [hl], h                                     ; $5155: $74
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	sbc  a                                           ; $5158: $9f
	dec  c                                           ; $5159: $0d
	nop                                              ; $515a: $00
	ld   a, [bc]                                     ; $515b: $0a
	rrca                                             ; $515c: $0f
	dec  b                                           ; $515d: $05
	dec  b                                           ; $515e: $05
	ld   bc, $fb83                                   ; $515f: $01 $83 $fb
	and  c                                           ; $5162: $a1
	sbc  a                                           ; $5163: $9f
	adc  h                                           ; $5164: $8c
	ld   d, b                                        ; $5165: $50
	xor  c                                           ; $5166: $a9
	xor  c                                           ; $5167: $a9
	sbc  l                                           ; $5168: $9d
	sbc  a                                           ; $5169: $9f
	dec  c                                           ; $516a: $0d
	ld   e, b                                        ; $516b: $58
	sub  b                                           ; $516c: $90
	sbc  e                                           ; $516d: $9b
	ld   e, c                                        ; $516e: $59
	ld   [hl], c                                     ; $516f: $71
	ld   l, l                                        ; $5170: $6d
	ld   h, l                                        ; $5171: $65
	ld   a, b                                        ; $5172: $78
	sbc  a                                           ; $5173: $9f
	dec  c                                           ; $5174: $0d
	adc  c                                           ; $5175: $89
	ld   a, b                                        ; $5176: $78
	sbc  [hl]                                        ; $5177: $9e
	ld   e, b                                        ; $5178: $58
	sub  d                                           ; $5179: $92
	ld   h, a                                        ; $517a: $67
	adc  l                                           ; $517b: $8d
	sbc  a                                           ; $517c: $9f
	dec  c                                           ; $517d: $0d
	nop                                              ; $517e: $00
	ld   a, [bc]                                     ; $517f: $0a
	dec  c                                           ; $5180: $0d
	nop                                              ; $5181: $00
	nop                                              ; $5182: $00
	rrca                                             ; $5183: $0f
	nop                                              ; $5184: $00
	ld   bc, $1e09                                   ; $5185: $01 $09 $1e
	nop                                              ; $5188: $00
	rrca                                             ; $5189: $0f
	nop                                              ; $518a: $00
	ld   bc, $5601                                   ; $518b: $01 $01 $56
	db   $fc                                         ; $518e: $fc
	halt                                             ; $518f: $76
	rst  $38                                         ; $5190: $ff
	rst  $38                                         ; $5191: $ff
	dec  c                                           ; $5192: $0d
	ld   [bc], a                                     ; $5193: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5194: $cf
	dec  b                                           ; $5195: $05
	ld   a, [de]                                     ; $5196: $1a
	ld   h, e                                        ; $5197: $63
	and  c                                           ; $5198: $a1
	ld   a, l                                        ; $5199: $7d
	cp   b                                           ; $519a: $b8
	push hl                                          ; $519b: $e5
	pop  af                                          ; $519c: $f1
	ei                                               ; $519d: $fb
	ld   a, h                                        ; $519e: $7c
	inc  bc                                          ; $519f: $03
	ld   l, a                                        ; $51a0: $6f
	ld   [hl], c                                     ; $51a1: $71
	ld   [hl], h                                     ; $51a2: $74
	dec  c                                           ; $51a3: $0d
	db   $e3                                         ; $51a4: $e3
	xor  l                                           ; $51a5: $ad
	adc  $7d                                         ; $51a6: $ce $7d
	ld   l, b                                        ; $51a8: $68
	ld   h, a                                        ; $51a9: $67
	and  c                                           ; $51aa: $a1
	ld   [hl], l                                     ; $51ab: $75
	ld   h, a                                        ; $51ac: $67
	ld   e, c                                        ; $51ad: $59
	ld   sp, hl                                      ; $51ae: $f9
	dec  c                                           ; $51af: $0d
	nop                                              ; $51b0: $00
	ld   a, [bc]                                     ; $51b1: $0a
	inc  e                                           ; $51b2: $1c
	dec  b                                           ; $51b3: $05
	nop                                              ; $51b4: $00
	nop                                              ; $51b5: $00
	ld   bc, $6f90                                   ; $51b6: $01 $90 $6f
	sbc  e                                           ; $51b9: $9b
	and  c                                           ; $51ba: $a1
	sbc  [hl]                                        ; $51bb: $9e
	ld   a, l                                        ; $51bc: $7d
	ld   l, b                                        ; $51bd: $68
	ld   h, a                                        ; $51be: $67
	ld   [hl], l                                     ; $51bf: $75
	sbc  a                                           ; $51c0: $9f
	dec  c                                           ; $51c1: $0d
	ld   b, $3f                                      ; $51c2: $06 $3f
	sbc  c                                           ; $51c4: $99
	ld   h, e                                        ; $51c5: $63
	ld   e, c                                        ; $51c6: $59
	ld   d, d                                        ; $51c7: $52
	ld   a, c                                        ; $51c8: $79
	ld   a, b                                        ; $51c9: $78
	sbc  a                                           ; $51ca: $9f
	dec  c                                           ; $51cb: $0d
	nop                                              ; $51cc: $00
	ld   a, [bc]                                     ; $51cd: $0a
	rrca                                             ; $51ce: $0f
	nop                                              ; $51cf: $00
	ld   bc, $6b01                                   ; $51d0: $01 $01 $6b
	ld   d, h                                        ; $51d3: $54
	ld   a, b                                        ; $51d4: $78
	and  c                                           ; $51d5: $a1
	ld   [hl], l                                     ; $51d6: $75
	ld   h, a                                        ; $51d7: $67
	ld   e, c                                        ; $51d8: $59
	sbc  a                                           ; $51d9: $9f
	dec  c                                           ; $51da: $0d
	nop                                              ; $51db: $00
	ld   a, [bc]                                     ; $51dc: $0a
	inc  e                                           ; $51dd: $1c
	dec  b                                           ; $51de: $05
	dec  b                                           ; $51df: $05
	dec  b                                           ; $51e0: $05
	ld   bc, $5050                                   ; $51e1: $01 $50 $50
	rst  $38                                         ; $51e4: $ff
	rst  $38                                         ; $51e5: $ff
	dec  c                                           ; $51e6: $0d
	ld   l, c                                        ; $51e7: $69
	sub  d                                           ; $51e8: $92
	ld   e, a                                        ; $51e9: $5f
	ld   [hl], a                                     ; $51ea: $77
	sbc  [hl]                                        ; $51eb: $9e
	inc  bc                                          ; $51ec: $03
	xor  c                                           ; $51ed: $a9
	ld   e, d                                        ; $51ee: $5a
	ld   a, h                                        ; $51ef: $7c
	ld   l, h                                        ; $51f0: $6c
	ld   d, d                                        ; $51f1: $52
	ld   l, l                                        ; $51f2: $6d
	ld   e, c                                        ; $51f3: $59
	ld   a, l                                        ; $51f4: $7d
	dec  c                                           ; $51f5: $0d
	ld   h, a                                        ; $51f6: $67
	ld   e, [hl]                                     ; $51f7: $5e
	ld   a, c                                        ; $51f8: $79
	sbc  l                                           ; $51f9: $9d
	ld   e, c                                        ; $51fa: $59
	sbc  c                                           ; $51fb: $99
	ld   [hl], l                                     ; $51fc: $75
	sbc  a                                           ; $51fd: $9f
	dec  c                                           ; $51fe: $0d
	nop                                              ; $51ff: $00
	ld   a, [bc]                                     ; $5200: $0a
	ld   bc, $0008                                   ; $5201: $01 $08 $00
	ld   a, l                                        ; $5204: $7d
	and  c                                           ; $5205: $a1
	sub  b                                           ; $5206: $90
	dec  c                                           ; $5207: $0d
	reti                                             ; $5208: $d9


	push af                                          ; $5209: $f5
	ld   a, b                                        ; $520a: $78
	ld   h, c                                        ; $520b: $61
	halt                                             ; $520c: $76
	ld   [bc], a                                     ; $520d: $02
	ld   h, l                                        ; $520e: $65
	ld   d, [hl]                                     ; $520f: $56
	and  c                                           ; $5210: $a1
	sub  [hl]                                        ; $5211: $96
	ld   d, h                                        ; $5212: $54
	ld   a, c                                        ; $5213: $79
	ld   a, b                                        ; $5214: $78
	sbc  a                                           ; $5215: $9f
	dec  c                                           ; $5216: $0d
	adc  c                                           ; $5217: $89
	ld   a, b                                        ; $5218: $78
	sbc  [hl]                                        ; $5219: $9e
	ld   e, b                                        ; $521a: $58
	sub  d                                           ; $521b: $92
	ld   h, a                                        ; $521c: $67
	adc  l                                           ; $521d: $8d
	sbc  a                                           ; $521e: $9f
	dec  c                                           ; $521f: $0d
	nop                                              ; $5220: $00
	ld   a, [bc]                                     ; $5221: $0a
	dec  c                                           ; $5222: $0d
	nop                                              ; $5223: $00
	nop                                              ; $5224: $00
	rrca                                             ; $5225: $0f
	nop                                              ; $5226: $00
	ld   bc, $1e09                                   ; $5227: $01 $09 $1e
	nop                                              ; $522a: $00
	nop                                              ; $522b: $00
	rrca                                             ; $522c: $0f
	nop                                              ; $522d: $00
	ld   bc, $0102                                   ; $522e: $01 $02 $01
	ld   h, a                                        ; $5231: $67
	adc  l                                           ; $5232: $8d
	adc  h                                           ; $5233: $8c
	ld   l, c                                        ; $5234: $69
	and  c                                           ; $5235: $a1
	sbc  a                                           ; $5236: $9f
	dec  c                                           ; $5237: $0d
	ld   h, a                                        ; $5238: $67
	adc  l                                           ; $5239: $8d
	sbc  d                                           ; $523a: $9a
	ld   h, e                                        ; $523b: $63
	and  c                                           ; $523c: $a1
	sbc  [hl]                                        ; $523d: $9e
	ld   l, a                                        ; $523e: $6f
	sub  l                                           ; $523f: $95
	ld   [hl], c                                     ; $5240: $71
	halt                                             ; $5241: $76
	dec  c                                           ; $5242: $0d
	ld   d, d                                        ; $5243: $52
	ld   d, d                                        ; $5244: $52
	ld   [hl], l                                     ; $5245: $75
	ld   h, a                                        ; $5246: $67
	ld   e, c                                        ; $5247: $59
	ld   sp, hl                                      ; $5248: $f9
	dec  c                                           ; $5249: $0d
	nop                                              ; $524a: $00
	ld   a, [bc]                                     ; $524b: $0a
	inc  e                                           ; $524c: $1c
	ld   [bc], a                                     ; $524d: $02
	nop                                              ; $524e: $00
	nop                                              ; $524f: $00
	ld   bc, $9750                                   ; $5250: $01 $50 $97
	sbc  [hl]                                        ; $5253: $9e
	ld   [$6300], sp                                 ; $5254: $08 $00 $63
	and  c                                           ; $5257: $a1
	sbc  [hl]                                        ; $5258: $9e
	dec  c                                           ; $5259: $0d
	inc  b                                           ; $525a: $04
	ld   c, c                                        ; $525b: $49
	ld   e, c                                        ; $525c: $59
	ld   h, l                                        ; $525d: $65
	sub  a                                           ; $525e: $97
	ld   sp, hl                                      ; $525f: $f9
	dec  c                                           ; $5260: $0d
	nop                                              ; $5261: $00
	ld   a, [bc]                                     ; $5262: $0a
	add  hl, de                                      ; $5263: $19
	dec  b                                           ; $5264: $05
	inc  bc                                          ; $5265: $03
	ld   h, a                                        ; $5266: $67
	adc  l                                           ; $5267: $8d
	sbc  d                                           ; $5268: $9a
	ld   a, h                                        ; $5269: $7c
	ld   [bc], a                                     ; $526a: $02
	and  c                                           ; $526b: $a1
	inc  b                                           ; $526c: $04
	ld   h, c                                        ; $526d: $61
	ld   a, c                                        ; $526e: $79
	ld   [hl], d                                     ; $526f: $72
	ld   d, d                                        ; $5270: $52
	ld   [hl], h                                     ; $5271: $74
	ld   [bc], a                                     ; $5272: $02
	jp   nz, $005d                                   ; $5273: $c2 $5d $00

	nop                                              ; $5276: $00
	ld   h, a                                        ; $5277: $67
	adc  l                                           ; $5278: $8d
	sbc  d                                           ; $5279: $9a
	ld   a, h                                        ; $527a: $7c
	inc  b                                           ; $527b: $04
	and  l                                           ; $527c: $a5
	inc  bc                                          ; $527d: $03
	ld   c, h                                        ; $527e: $4c
	ld   a, c                                        ; $527f: $79
	ld   [hl], d                                     ; $5280: $72
	ld   d, d                                        ; $5281: $52
	ld   [hl], h                                     ; $5282: $74
	ld   [bc], a                                     ; $5283: $02
	jp   nz, $005d                                   ; $5284: $c2 $5d $00

	ld   bc, $8d67                                   ; $5287: $01 $67 $8d
	sbc  d                                           ; $528a: $9a
	ld   a, h                                        ; $528b: $7c
	inc  b                                           ; $528c: $04
	dec  [hl]                                        ; $528d: $35
	inc  b                                           ; $528e: $04
	add  hl, hl                                      ; $528f: $29
	ld   a, c                                        ; $5290: $79
	ld   [hl], d                                     ; $5291: $72
	ld   d, d                                        ; $5292: $52
	ld   [hl], h                                     ; $5293: $74
	ld   [bc], a                                     ; $5294: $02
	jp   nz, $005d                                   ; $5295: $c2 $5d $00

	ld   [bc], a                                     ; $5298: $02
	rlca                                             ; $5299: $07
	adc  e                                           ; $529a: $8b
	nop                                              ; $529b: $00
	ld   [bc], a                                     ; $529c: $02
	inc  bc                                          ; $529d: $03
	ld   bc, $2000                                   ; $529e: $01 $00 $20
	nop                                              ; $52a1: $00
	rlca                                             ; $52a2: $07
	ld   b, c                                        ; $52a3: $41
	ld   bc, $0302                                   ; $52a4: $01 $02 $03
	ld   bc, $2001                                   ; $52a7: $01 $01 $20
	nop                                              ; $52aa: $00
	rlca                                             ; $52ab: $07
	or   h                                           ; $52ac: $b4
	ld   bc, $0302                                   ; $52ad: $01 $02 $03
	ld   bc, $2002                                   ; $52b0: $01 $02 $20
	nop                                              ; $52b3: $00
	ld   b, $43                                      ; $52b4: $06 $43
	ld   [bc], a                                     ; $52b6: $02
	rrca                                             ; $52b7: $0f
	nop                                              ; $52b8: $00
	ld   bc, $6701                                   ; $52b9: $01 $01 $67
	adc  l                                           ; $52bc: $8d
	sbc  d                                           ; $52bd: $9a
	ld   h, e                                        ; $52be: $63
	and  c                                           ; $52bf: $a1
	ld   a, l                                        ; $52c0: $7d
	sbc  [hl]                                        ; $52c1: $9e
	ld   a, b                                        ; $52c2: $78
	ld   l, d                                        ; $52c3: $6a
	ld   l, e                                        ; $52c4: $6b
	and  c                                           ; $52c5: $a1
	ld   a, b                                        ; $52c6: $78
	ld   a, c                                        ; $52c7: $79
	dec  c                                           ; $52c8: $0d
	ld   [bc], a                                     ; $52c9: $02
	and  c                                           ; $52ca: $a1
	inc  b                                           ; $52cb: $04
	ld   h, c                                        ; $52cc: $61
	ld   e, d                                        ; $52cd: $5a
	ld   d, b                                        ; $52ce: $50
	sbc  c                                           ; $52cf: $99
	ld   a, h                                        ; $52d0: $7c
	ld   [hl], l                                     ; $52d1: $75
	ld   h, a                                        ; $52d2: $67
	ld   e, c                                        ; $52d3: $59
	ld   sp, hl                                      ; $52d4: $f9
	dec  c                                           ; $52d5: $0d
	nop                                              ; $52d6: $00
	ld   a, [bc]                                     ; $52d7: $0a
	inc  e                                           ; $52d8: $1c
	ld   [bc], a                                     ; $52d9: $02
	ld   bc, $0101                                   ; $52da: $01 $01 $01
	inc  bc                                          ; $52dd: $03
	cpl                                              ; $52de: $2f
	ld   [bc], a                                     ; $52df: $02
	ld   e, e                                        ; $52e0: $5b
	ld   [bc], a                                     ; $52e1: $02
	ld   b, d                                        ; $52e2: $42
	ld   a, h                                        ; $52e3: $7c
	ret                                              ; $52e4: $c9


	call nz, $eed8                                   ; $52e5: $c4 $d8 $ee
	ret  z                                           ; $52e8: $c8

	and  h                                           ; $52e9: $a4
	ei                                               ; $52ea: $fb
	ld   a, c                                        ; $52eb: $79
	ld   a, b                                        ; $52ec: $78
	sbc  c                                           ; $52ed: $99
	dec  c                                           ; $52ee: $0d
	ld   l, l                                        ; $52ef: $6d
	adc  a                                           ; $52f0: $8f
	ld   a, c                                        ; $52f1: $79
	inc  bc                                          ; $52f2: $03
	ld   d, d                                        ; $52f3: $52
	adc  h                                           ; $52f4: $8c
	sbc  d                                           ; $52f5: $9a
	ld   [hl], h                                     ; $52f6: $74
	ld   e, e                                        ; $52f7: $5b
	ld   l, l                                        ; $52f8: $6d
	sbc  [hl]                                        ; $52f9: $9e
	sbc  l                                           ; $52fa: $9d
	ld   l, l                                        ; $52fb: $6d
	ld   e, l                                        ; $52fc: $5d
	ld   h, l                                        ; $52fd: $65
	dec  c                                           ; $52fe: $0d
	ld   [hl], l                                     ; $52ff: $75
	ld   h, a                                        ; $5300: $67
	ld   e, c                                        ; $5301: $59
	sub  a                                           ; $5302: $97
	rst  $38                                         ; $5303: $ff
	rst  $38                                         ; $5304: $ff
	dec  c                                           ; $5305: $0d
	nop                                              ; $5306: $00
	ld   a, [bc]                                     ; $5307: $0a
	inc  e                                           ; $5308: $1c
	ld   [bc], a                                     ; $5309: $02
	jr   nc, jr_052_5325                             ; $530a: $30 $19

	dec  e                                           ; $530c: $1d
	ld   b, b                                        ; $530d: $40
	ld   [de], a                                     ; $530e: $12
	inc  bc                                          ; $530f: $03
	ld   [de], a                                     ; $5310: $12
	ld   bc, $2802                                   ; $5311: $01 $02 $28
	nop                                              ; $5314: $00
	ld   bc, $c403                                   ; $5315: $01 $03 $c4
	inc  b                                           ; $5318: $04
	sbc  $7c                                         ; $5319: $de $7c
	inc  b                                           ; $531b: $04
	ld   a, b                                        ; $531c: $78
	halt                                             ; $531d: $76
	ld   a, l                                        ; $531e: $7d
	sbc  [hl]                                        ; $531f: $9e
	ld   l, a                                        ; $5320: $6f
	ld   e, d                                        ; $5321: $5a
	ld   d, d                                        ; $5322: $52
	adc  h                                           ; $5323: $8c
	ld   h, a                                        ; $5324: $67

jr_052_5325:
	ld   a, h                                        ; $5325: $7c
	sbc  a                                           ; $5326: $9f
	dec  c                                           ; $5327: $0d
	sub  h                                           ; $5328: $94
	ld   d, h                                        ; $5329: $54
	ld   e, d                                        ; $532a: $5a
	ld   a, c                                        ; $532b: $79
	sbc  [hl]                                        ; $532c: $9e
	ld   l, e                                        ; $532d: $6b
	ld   h, l                                        ; $532e: $65
	ld   [hl], h                                     ; $532f: $74
	ld   e, c                                        ; $5330: $59
	sbc  d                                           ; $5331: $9a
	ld   d, d                                        ; $5332: $52
	ld   a, c                                        ; $5333: $79
	sbc  a                                           ; $5334: $9f
	dec  c                                           ; $5335: $0d
	ld   l, e                                        ; $5336: $6b
	sbc  d                                           ; $5337: $9a
	ld   e, d                                        ; $5338: $5a
	inc  bc                                          ; $5339: $03
	sub  b                                           ; $533a: $90
	inc  bc                                          ; $533b: $03
	cp   e                                           ; $533c: $bb
	ld   h, a                                        ; $533d: $67
	adc  l                                           ; $533e: $8d
	sbc  d                                           ; $533f: $9a
	ld   a, b                                        ; $5340: $78
	ld   a, h                                        ; $5341: $7c
	ld   [hl], l                                     ; $5342: $75
	ld   h, a                                        ; $5343: $67
	sbc  l                                           ; $5344: $9d
	sbc  a                                           ; $5345: $9f
	dec  c                                           ; $5346: $0d
	nop                                              ; $5347: $00
	ld   a, [bc]                                     ; $5348: $0a
	inc  e                                           ; $5349: $1c
	ld   [bc], a                                     ; $534a: $02
	ld   bc, $0101                                   ; $534b: $01 $01 $01
	ld   l, e                                        ; $534e: $6b
	sbc  d                                           ; $534f: $9a
	ld   h, [hl]                                     ; $5350: $66
	sub  c                                           ; $5351: $91
	sbc  [hl]                                        ; $5352: $9e
	ld   e, b                                        ; $5353: $58
	sub  d                                           ; $5354: $92
	ld   h, a                                        ; $5355: $67
	adc  l                                           ; $5356: $8d
	ld   a, b                                        ; $5357: $78
	ld   h, e                                        ; $5358: $63
	ld   d, d                                        ; $5359: $52
	sbc  a                                           ; $535a: $9f
	dec  c                                           ; $535b: $0d
	ld   [$6300], sp                                 ; $535c: $08 $00 $63
	and  c                                           ; $535f: $a1
	sbc  a                                           ; $5360: $9f
	dec  c                                           ; $5361: $0d
	nop                                              ; $5362: $00
	ld   a, [bc]                                     ; $5363: $0a
	dec  c                                           ; $5364: $0d
	nop                                              ; $5365: $00
	nop                                              ; $5366: $00
	rrca                                             ; $5367: $0f
	nop                                              ; $5368: $00
	ld   bc, $1e09                                   ; $5369: $01 $09 $1e
	nop                                              ; $536c: $00
	rrca                                             ; $536d: $0f
	nop                                              ; $536e: $00
	ld   bc, $0201                                   ; $536f: $01 $01 $02
	cp   a                                           ; $5372: $bf
	and  b                                           ; $5373: $a0
	inc  bc                                          ; $5374: $03
	add  b                                           ; $5375: $80
	ld   h, l                                        ; $5376: $65
	ld   l, l                                        ; $5377: $6d
	inc  b                                           ; $5378: $04
	and  l                                           ; $5379: $a5
	and  b                                           ; $537a: $a0
	inc  b                                           ; $537b: $04
	rlca                                             ; $537c: $07
	ld   [hl], h                                     ; $537d: $74
	dec  c                                           ; $537e: $0d
	ld   [bc], a                                     ; $537f: $02
	db   $e4                                         ; $5380: $e4
	ld   e, l                                        ; $5381: $5d
	ld   a, b                                        ; $5382: $78
	ld   d, d                                        ; $5383: $52
	and  c                                           ; $5384: $a1
	ld   [hl], l                                     ; $5385: $75
	ld   h, a                                        ; $5386: $67
	ld   e, c                                        ; $5387: $59
	ld   sp, hl                                      ; $5388: $f9
	dec  c                                           ; $5389: $0d
	nop                                              ; $538a: $00
	ld   a, [bc]                                     ; $538b: $0a
	rrca                                             ; $538c: $0f
	ld   [bc], a                                     ; $538d: $02
	nop                                              ; $538e: $00
	ld   bc, wLCDC                                   ; $538f: $01 $03 $c2
	ld   d, d                                        ; $5392: $52
	sbc  [hl]                                        ; $5393: $9e
	ld   [bc], a                                     ; $5394: $02
	db   $e4                                         ; $5395: $e4
	ld   d, d                                        ; $5396: $52
	and  b                                           ; $5397: $a0
	ld   [bc], a                                     ; $5398: $02
	ld   h, l                                        ; $5399: $65
	ld   d, [hl]                                     ; $539a: $56
	ld   [hl], h                                     ; $539b: $74
	ld   d, d                                        ; $539c: $52
	ld   [hl], h                                     ; $539d: $74
	ld   a, l                                        ; $539e: $7d
	dec  c                                           ; $539f: $0d
	inc  b                                           ; $53a0: $04
	adc  a                                           ; $53a1: $8f
	inc  b                                           ; $53a2: $04
	jr   jr_052_5421                                 ; $53a3: $18 $7c

	xor  e                                           ; $53a5: $ab
	cp   b                                           ; $53a6: $b8
	push hl                                          ; $53a7: $e5
	xor  $7d                                         ; $53a8: $ee $7d
	ld   [hl], l                                     ; $53aa: $75
	ld   e, e                                        ; $53ab: $5b
	adc  h                                           ; $53ac: $8c
	ld   l, c                                        ; $53ad: $69
	and  c                                           ; $53ae: $a1
	dec  c                                           ; $53af: $0d
	ld   a, h                                        ; $53b0: $7c
	sub  [hl]                                        ; $53b1: $96
	sbc  a                                           ; $53b2: $9f
	ld   e, b                                        ; $53b3: $58
	adc  d                                           ; $53b4: $8a
	ld   d, [hl]                                     ; $53b5: $56
	ld   [hl], h                                     ; $53b6: $74
	ld   e, b                                        ; $53b7: $58
	ld   e, e                                        ; $53b8: $5b
	ld   a, b                                        ; $53b9: $78
	ld   h, e                                        ; $53ba: $63
	ld   d, d                                        ; $53bb: $52
	sbc  a                                           ; $53bc: $9f
	dec  c                                           ; $53bd: $0d
	nop                                              ; $53be: $00
	ld   a, [bc]                                     ; $53bf: $0a
	ld   bc, $9a6b                                   ; $53c0: $01 $6b $9a
	ld   h, [hl]                                     ; $53c3: $66
	sub  c                                           ; $53c4: $91
	sbc  [hl]                                        ; $53c5: $9e
	ld   e, b                                        ; $53c6: $58
	sub  d                                           ; $53c7: $92
	ld   h, a                                        ; $53c8: $67
	adc  l                                           ; $53c9: $8d
	ld   a, b                                        ; $53ca: $78
	ld   h, e                                        ; $53cb: $63
	ld   d, d                                        ; $53cc: $52
	sbc  a                                           ; $53cd: $9f
	dec  c                                           ; $53ce: $0d
	ld   [$6300], sp                                 ; $53cf: $08 $00 $63
	and  c                                           ; $53d2: $a1
	sbc  a                                           ; $53d3: $9f
	dec  c                                           ; $53d4: $0d
	nop                                              ; $53d5: $00
	ld   a, [bc]                                     ; $53d6: $0a
	dec  c                                           ; $53d7: $0d
	nop                                              ; $53d8: $00
	nop                                              ; $53d9: $00
	rrca                                             ; $53da: $0f
	nop                                              ; $53db: $00
	ld   bc, $1e09                                   ; $53dc: $01 $09 $1e
	nop                                              ; $53df: $00
	rrca                                             ; $53e0: $0f
	nop                                              ; $53e1: $00
	ld   bc, $6701                                   ; $53e2: $01 $01 $67
	adc  l                                           ; $53e5: $8d
	sbc  d                                           ; $53e6: $9a
	ld   h, e                                        ; $53e7: $63
	and  c                                           ; $53e8: $a1
	ld   a, l                                        ; $53e9: $7d
	sbc  [hl]                                        ; $53ea: $9e
	ld   a, b                                        ; $53eb: $78
	ld   l, d                                        ; $53ec: $6a
	ld   l, e                                        ; $53ed: $6b
	and  c                                           ; $53ee: $a1
	ld   a, b                                        ; $53ef: $78
	ld   a, c                                        ; $53f0: $79
	sub  b                                           ; $53f1: $90
	dec  c                                           ; $53f2: $0d
	ld   [bc], a                                     ; $53f3: $02
	cp   [hl]                                        ; $53f4: $be
	inc  b                                           ; $53f5: $04
	ld   a, a                                        ; $53f6: $7f
	inc  bc                                          ; $53f7: $03
	sub  l                                           ; $53f8: $95
	ld   a, b                                        ; $53f9: $78
	inc  b                                           ; $53fa: $04
	dec  [hl]                                        ; $53fb: $35
	inc  b                                           ; $53fc: $04
	add  hl, hl                                      ; $53fd: $29
	ld   a, b                                        ; $53fe: $78
	and  c                                           ; $53ff: $a1
	ld   [hl], l                                     ; $5400: $75
	ld   h, a                                        ; $5401: $67
	ld   e, c                                        ; $5402: $59
	ld   sp, hl                                      ; $5403: $f9
	dec  c                                           ; $5404: $0d
	nop                                              ; $5405: $00
	ld   a, [bc]                                     ; $5406: $0a
	inc  e                                           ; $5407: $1c
	ld   [bc], a                                     ; $5408: $02
	ld   [bc], a                                     ; $5409: $02
	ld   [bc], a                                     ; $540a: $02
	dec  e                                           ; $540b: $1d
	ld   b, b                                        ; $540c: $40
	ld   [de], a                                     ; $540d: $12
	inc  bc                                          ; $540e: $03
	ld   [de], a                                     ; $540f: $12
	ld   bc, $2903                                   ; $5410: $01 $03 $29
	nop                                              ; $5413: $00
	ld   bc, $6d9d                                   ; $5414: $01 $9d $6d
	ld   e, l                                        ; $5417: $5d
	ld   h, l                                        ; $5418: $65
	ld   a, h                                        ; $5419: $7c
	ld   [hl], a                                     ; $541a: $77
	ld   h, c                                        ; $541b: $61
	ld   e, d                                        ; $541c: $5a
	ld   [bc], a                                     ; $541d: $02
	cp   [hl]                                        ; $541e: $be
	inc  b                                           ; $541f: $04
	ld   a, a                                        ; $5420: $7f

jr_052_5421:
	inc  bc                                          ; $5421: $03
	sub  l                                           ; $5422: $95
	ld   l, [hl]                                     ; $5423: $6e
	halt                                             ; $5424: $76
	dec  c                                           ; $5425: $0d
	ld   e, b                                        ; $5426: $58
	ld   [hl], c                                     ; $5427: $71
	ld   h, l                                        ; $5428: $65
	sub  c                                           ; $5429: $91
	sbc  c                                           ; $542a: $99
	ld   a, h                                        ; $542b: $7c
	ld   a, [$030d]                                  ; $542c: $fa $0d $03
	add  e                                           ; $542f: $83
	dec  b                                           ; $5430: $05
	dec  c                                           ; $5431: $0d
	ld   [hl], l                                     ; $5432: $75
	ld   h, a                                        ; $5433: $67
	sbc  l                                           ; $5434: $9d
	ld   a, e                                        ; $5435: $7b
	ld   a, [$d610]                                  ; $5436: $fa $10 $d6
	push af                                          ; $5439: $f5
	ld   a, [$000d]                                  ; $543a: $fa $0d $00
	ld   a, [bc]                                     ; $543d: $0a
	ld   bc, $a161                                   ; $543e: $01 $61 $a1
	ld   a, b                                        ; $5441: $78
	halt                                             ; $5442: $76
	ld   h, c                                        ; $5443: $61
	sbc  e                                           ; $5444: $9b
	ld   [hl], l                                     ; $5445: $75
	inc  b                                           ; $5446: $04
	xor  $a0                                         ; $5447: $ee $a0
	ld   b, $1a                                      ; $5449: $06 $1a
	ld   [hl], c                                     ; $544b: $71
	ld   [hl], h                                     ; $544c: $74
	dec  c                                           ; $544d: $0d
	ld   a, b                                        ; $544e: $78
	ld   d, d                                        ; $544f: $52
	ld   [hl], l                                     ; $5450: $75
	sbc  [hl]                                        ; $5451: $9e
	ld   h, e                                        ; $5452: $63
	ld   [hl], c                                     ; $5453: $71
	ld   h, e                                        ; $5454: $63
	halt                                             ; $5455: $76
	ld   [bc], a                                     ; $5456: $02
	sub  l                                           ; $5457: $95
	ld   [bc], a                                     ; $5458: $02
	sub  e                                           ; $5459: $93
	sbc  b                                           ; $545a: $98
	dec  c                                           ; $545b: $0d
	ld   h, a                                        ; $545c: $67
	adc  h                                           ; $545d: $8c
	ld   l, c                                        ; $545e: $69
	ld   a, b                                        ; $545f: $78
	ld   h, e                                        ; $5460: $63
	ld   d, d                                        ; $5461: $52
	ld   a, [$000d]                                  ; $5462: $fa $0d $00
	ld   a, [bc]                                     ; $5465: $0a
	dec  c                                           ; $5466: $0d
	nop                                              ; $5467: $00
	nop                                              ; $5468: $00
	rrca                                             ; $5469: $0f
	nop                                              ; $546a: $00
	ld   bc, $1e09                                   ; $546b: $01 $09 $1e
	nop                                              ; $546e: $00
	inc  e                                           ; $546f: $1c
	ld   [bc], a                                     ; $5470: $02
	rlca                                             ; $5471: $07
	rlca                                             ; $5472: $07
	dec  e                                           ; $5473: $1d
	ld   b, b                                        ; $5474: $40
	ld   [de], a                                     ; $5475: $12
	inc  bc                                          ; $5476: $03
	ld   [de], a                                     ; $5477: $12
	ld   bc, $2901                                   ; $5478: $01 $01 $29
	nop                                              ; $547b: $00
	ld   bc, $a178                                   ; $547c: $01 $78 $a1
	ld   [hl], l                                     ; $547f: $75
	ld   h, a                                        ; $5480: $67
	ld   a, h                                        ; $5481: $7c
	ld   sp, hl                                      ; $5482: $f9
	dec  c                                           ; $5483: $0d
	inc  b                                           ; $5484: $04
	di                                               ; $5485: $f3
	ld   e, d                                        ; $5486: $5a
	ld   a, b                                        ; $5487: $78
	ld   d, d                                        ; $5488: $52
	ld   a, h                                        ; $5489: $7c
	ld   a, b                                        ; $548a: $78
	sub  a                                           ; $548b: $97
	sbc  [hl]                                        ; $548c: $9e
	sbc  l                                           ; $548d: $9d
	ld   l, l                                        ; $548e: $6d
	ld   e, l                                        ; $548f: $5d
	ld   h, l                                        ; $5490: $65
	dec  c                                           ; $5491: $0d
	inc  bc                                          ; $5492: $03
	add  e                                           ; $5493: $83
	dec  b                                           ; $5494: $05
	dec  c                                           ; $5495: $0d
	ld   h, l                                        ; $5496: $65
	adc  h                                           ; $5497: $8c
	ld   h, a                                        ; $5498: $67
	sbc  l                                           ; $5499: $9d
	sbc  a                                           ; $549a: $9f
	dec  c                                           ; $549b: $0d
	nop                                              ; $549c: $00
	ld   a, [bc]                                     ; $549d: $0a
	dec  c                                           ; $549e: $0d
	nop                                              ; $549f: $00
	nop                                              ; $54a0: $00
	rrca                                             ; $54a1: $0f
	nop                                              ; $54a2: $00
	ld   bc, $1e09                                   ; $54a3: $01 $09 $1e
	nop                                              ; $54a6: $00
	nop                                              ; $54a7: $00
	ld   c, $72                                      ; $54a8: $0e $72
	inc  e                                           ; $54aa: $1c
	ld   bc, $0303                                   ; $54ab: $01 $03 $03
	ld   [bc], a                                     ; $54ae: $02
	dec  b                                           ; $54af: $05
	add  b                                           ; $54b0: $80
	xor  d                                           ; $54b1: $aa
	ld   bc, $0001                                   ; $54b2: $01 $01 $00
	ld   bc, $9e50                                   ; $54b5: $01 $50 $9e
	ld   [$6300], sp                                 ; $54b8: $08 $00 $63
	and  c                                           ; $54bb: $a1
	sbc  a                                           ; $54bc: $9f
	dec  c                                           ; $54bd: $0d
	ld   [hl], a                                     ; $54be: $77
	ld   d, h                                        ; $54bf: $54
	ld   h, l                                        ; $54c0: $65
	ld   l, l                                        ; $54c1: $6d
	and  c                                           ; $54c2: $a1
	ld   [hl], l                                     ; $54c3: $75
	ld   h, a                                        ; $54c4: $67
	ld   e, c                                        ; $54c5: $59
	ld   sp, hl                                      ; $54c6: $f9
	dec  c                                           ; $54c7: $0d
	ld   h, c                                        ; $54c8: $61
	and  c                                           ; $54c9: $a1
	ld   a, b                                        ; $54ca: $78
	inc  bc                                          ; $54cb: $03
	ld   l, a                                        ; $54cc: $6f
	ld   [bc], a                                     ; $54cd: $02
	xor  c                                           ; $54ce: $a9
	ld   a, c                                        ; $54cf: $79
	rst  $38                                         ; $54d0: $ff
	rst  $38                                         ; $54d1: $ff
	dec  c                                           ; $54d2: $0d
	nop                                              ; $54d3: $00
	ld   a, [bc]                                     ; $54d4: $0a
	rrca                                             ; $54d5: $0f
	nop                                              ; $54d6: $00
	ld   bc, $0301                                   ; $54d7: $01 $01 $03
	adc  e                                           ; $54da: $8b
	ld   a, l                                        ; $54db: $7d
	rst  $38                                         ; $54dc: $ff
	rst  $38                                         ; $54dd: $ff
	dec  c                                           ; $54de: $0d
	nop                                              ; $54df: $00
	ld   a, [bc]                                     ; $54e0: $0a
	add  hl, de                                      ; $54e1: $19
	dec  b                                           ; $54e2: $05
	inc  bc                                          ; $54e3: $03
	adc  d                                           ; $54e4: $8a
	ld   e, l                                        ; $54e5: $5d
	ld   a, h                                        ; $54e6: $7c
	inc  bc                                          ; $54e7: $03
	ld   [hl], l                                     ; $54e8: $75
	and  b                                           ; $54e9: $a0
	inc  bc                                          ; $54ea: $03
	ld   sp, hl                                      ; $54eb: $f9
	ld   h, l                                        ; $54ec: $65
	ld   [hl], h                                     ; $54ed: $74
	ld   e, l                                        ; $54ee: $5d
	ld   l, [hl]                                     ; $54ef: $6e
	ld   h, e                                        ; $54f0: $63
	ld   d, d                                        ; $54f1: $52
	nop                                              ; $54f2: $00
	nop                                              ; $54f3: $00
	ld   h, e                                        ; $54f4: $63
	ld   e, l                                        ; $54f5: $5d
	sub  a                                           ; $54f6: $97
	ld   h, e                                        ; $54f7: $63
	and  c                                           ; $54f8: $a1
	ld   h, c                                        ; $54f9: $61
	ld   l, e                                        ; $54fa: $6b
	rst  $38                                         ; $54fb: $ff
	inc  b                                           ; $54fc: $04
	ld   c, c                                        ; $54fd: $49
	and  b                                           ; $54fe: $a0
	ld   sp, hl                                      ; $54ff: $f9
	nop                                              ; $5500: $00
	ld   bc, $ea03                                   ; $5501: $01 $03 $ea
	ld   h, l                                        ; $5504: $65
	ld   l, l                                        ; $5505: $6d
	ld   d, d                                        ; $5506: $52
	sub  b                                           ; $5507: $90
	ld   a, h                                        ; $5508: $7c
	ld   e, d                                        ; $5509: $5a
	ld   d, b                                        ; $550a: $50
	sbc  c                                           ; $550b: $99
	and  c                                           ; $550c: $a1
	ld   [hl], l                                     ; $550d: $75
	ld   h, a                                        ; $550e: $67
	nop                                              ; $550f: $00
	ld   [bc], a                                     ; $5510: $02
	rlca                                             ; $5511: $07
	or   [hl]                                        ; $5512: $b6
	nop                                              ; $5513: $00
	ld   [bc], a                                     ; $5514: $02
	inc  bc                                          ; $5515: $03
	ld   bc, $2000                                   ; $5516: $01 $00 $20
	nop                                              ; $5519: $00
	rlca                                             ; $551a: $07
	inc  a                                           ; $551b: $3c
	ld   bc, $0302                                   ; $551c: $01 $02 $03
	ld   bc, $2001                                   ; $551f: $01 $01 $20
	nop                                              ; $5522: $00
	rlca                                             ; $5523: $07
	rst  ToBoot                                         ; $5524: $c7
	ld   [bc], a                                     ; $5525: $02
	ld   [bc], a                                     ; $5526: $02
	inc  bc                                          ; $5527: $03
	ld   bc, $2002                                   ; $5528: $01 $02 $20
	nop                                              ; $552b: $00
	ld   b, $87                                      ; $552c: $06 $87
	nop                                              ; $552e: $00
	rrca                                             ; $552f: $0f
	nop                                              ; $5530: $00
	ld   bc, $5201                                   ; $5531: $01 $01 $52
	ld   d, [hl]                                     ; $5534: $56
	sbc  [hl]                                        ; $5535: $9e
	ld   a, b                                        ; $5536: $78
	and  c                                           ; $5537: $a1
	ld   [hl], l                                     ; $5538: $75
	sub  b                                           ; $5539: $90
	ld   d, b                                        ; $553a: $50
	sbc  b                                           ; $553b: $98
	adc  h                                           ; $553c: $8c
	ld   l, c                                        ; $553d: $69
	and  c                                           ; $553e: $a1
	sbc  a                                           ; $553f: $9f
	dec  c                                           ; $5540: $0d
	nop                                              ; $5541: $00
	ld   a, [bc]                                     ; $5542: $0a
	inc  e                                           ; $5543: $1c
	ld   bc, $0000                                   ; $5544: $01 $00 $00
	ld   bc, $546b                                   ; $5547: $01 $6b $54
	ld   [hl], l                                     ; $554a: $75
	ld   h, a                                        ; $554b: $67
	ld   e, c                                        ; $554c: $59
	sbc  a                                           ; $554d: $9f
	dec  c                                           ; $554e: $0d
	ld   h, [hl]                                     ; $554f: $66
	sub  c                                           ; $5550: $91
	sbc  [hl]                                        ; $5551: $9e
	ld   e, b                                        ; $5552: $58
	sub  d                                           ; $5553: $92
	ld   h, a                                        ; $5554: $67
	adc  l                                           ; $5555: $8d
	ld   a, b                                        ; $5556: $78
	ld   h, e                                        ; $5557: $63
	ld   d, d                                        ; $5558: $52
	sbc  a                                           ; $5559: $9f
	dec  c                                           ; $555a: $0d
	nop                                              ; $555b: $00
	ld   a, [bc]                                     ; $555c: $0a
	nop                                              ; $555d: $00
	rrca                                             ; $555e: $0f
	nop                                              ; $555f: $00
	ld   bc, $8a01                                   ; $5560: $01 $01 $8a
	ld   e, l                                        ; $5563: $5d
	ld   a, h                                        ; $5564: $7c
	inc  bc                                          ; $5565: $03
	ld   [hl], l                                     ; $5566: $75
	and  b                                           ; $5567: $a0
	inc  bc                                          ; $5568: $03
	ld   sp, hl                                      ; $5569: $f9
	ld   h, l                                        ; $556a: $65
	ld   [hl], h                                     ; $556b: $74
	ld   e, l                                        ; $556c: $5d
	ld   l, [hl]                                     ; $556d: $6e
	ld   h, e                                        ; $556e: $63
	ld   d, d                                        ; $556f: $52
	ld   a, [$000d]                                  ; $5570: $fa $0d $00
	ld   a, [bc]                                     ; $5573: $0a
	inc  e                                           ; $5574: $1c
	ld   bc, $0303                                   ; $5575: $01 $03 $03
	ld   bc, $9e78                                   ; $5578: $01 $78 $9e
	ld   a, b                                        ; $557b: $78
	and  c                                           ; $557c: $a1
	ld   a, h                                        ; $557d: $7c
	ld   h, c                                        ; $557e: $61
	halt                                             ; $557f: $76
	ld   [hl], l                                     ; $5580: $75
	ld   h, a                                        ; $5581: $67
	ld   e, c                                        ; $5582: $59
	ld   a, [$0df9]                                  ; $5583: $fa $f9 $0d
	ld   [$6300], sp                                 ; $5586: $08 $00 $63
	and  c                                           ; $5589: $a1
	dec  c                                           ; $558a: $0d
	ld   a, e                                        ; $558b: $7b
	adc  d                                           ; $558c: $8a
	ld   e, a                                        ; $558d: $5f
	ld   [hl], h                                     ; $558e: $74
	adc  h                                           ; $558f: $8c
	ld   h, a                                        ; $5590: $67
	ld   a, e                                        ; $5591: $7b
	sbc  a                                           ; $5592: $9f
	dec  c                                           ; $5593: $0d
	nop                                              ; $5594: $00
	ld   a, [bc]                                     ; $5595: $0a
	inc  e                                           ; $5596: $1c
	ld   bc, $0202                                   ; $5597: $01 $02 $02
	dec  e                                           ; $559a: $1d
	ld   b, b                                        ; $559b: $40
	ld   de, $1103                                   ; $559c: $11 $03 $11
	ld   bc, $2902                                   ; $559f: $01 $02 $29
	nop                                              ; $55a2: $00
	ld   bc, $9502                                   ; $55a3: $01 $02 $95
	ld   [bc], a                                     ; $55a6: $02
	sub  e                                           ; $55a7: $93
	sbc  b                                           ; $55a8: $98
	ld   a, l                                        ; $55a9: $7d
	sbc  [hl]                                        ; $55aa: $9e
	sub  b                                           ; $55ab: $90
	ld   [hl], c                                     ; $55ac: $71
	halt                                             ; $55ad: $76
	adc  h                                           ; $55ae: $8c
	ld   h, [hl]                                     ; $55af: $66
	adc  a                                           ; $55b0: $8f
	ld   a, c                                        ; $55b1: $79
	dec  c                                           ; $55b2: $0d
	sub  d                                           ; $55b3: $92
	ld   [hl], c                                     ; $55b4: $71
	ld   [hl], h                                     ; $55b5: $74
	ld   e, l                                        ; $55b6: $5d
	ld   l, [hl]                                     ; $55b7: $6e
	ld   h, e                                        ; $55b8: $63
	ld   d, d                                        ; $55b9: $52
	sbc  a                                           ; $55ba: $9f
	dec  c                                           ; $55bb: $0d
	inc  b                                           ; $55bc: $04
	ld   c, $03                                      ; $55bd: $0e $03
	sub  b                                           ; $55bf: $90
	ld   h, e                                        ; $55c0: $63
	and  c                                           ; $55c1: $a1
	ld   a, c                                        ; $55c2: $79
	inc  bc                                          ; $55c3: $03
	ld   hl, sp-$69                                  ; $55c4: $f8 $97
	sbc  d                                           ; $55c6: $9a
	adc  h                                           ; $55c7: $8c
	ld   h, a                                        ; $55c8: $67
	sub  [hl]                                        ; $55c9: $96
	sbc  a                                           ; $55ca: $9f
	dec  c                                           ; $55cb: $0d
	nop                                              ; $55cc: $00
	ld   a, [bc]                                     ; $55cd: $0a
	ld   bc, $8303                                   ; $55ce: $01 $03 $83
	dec  b                                           ; $55d1: $05
	dec  c                                           ; $55d2: $0d
	ld   h, l                                        ; $55d3: $65
	adc  h                                           ; $55d4: $8c
	ld   h, a                                        ; $55d5: $67
	rst  $38                                         ; $55d6: $ff
	rst  $38                                         ; $55d7: $ff
	dec  c                                           ; $55d8: $0d
	nop                                              ; $55d9: $00
	ld   a, [bc]                                     ; $55da: $0a
	dec  c                                           ; $55db: $0d
	nop                                              ; $55dc: $00
	nop                                              ; $55dd: $00
	rrca                                             ; $55de: $0f
	nop                                              ; $55df: $00
	ld   bc, $1e09                                   ; $55e0: $01 $09 $1e
	nop                                              ; $55e3: $00
	rrca                                             ; $55e4: $0f
	nop                                              ; $55e5: $00
	ld   bc, $6301                                   ; $55e6: $01 $01 $63
	ld   e, l                                        ; $55e9: $5d
	sub  a                                           ; $55ea: $97
	ld   h, e                                        ; $55eb: $63
	and  c                                           ; $55ec: $a1
	ld   h, c                                        ; $55ed: $61
	ld   l, e                                        ; $55ee: $6b
	rst  $38                                         ; $55ef: $ff
	dec  c                                           ; $55f0: $0d
	ld   h, c                                        ; $55f1: $61
	and  c                                           ; $55f2: $a1
	ld   a, b                                        ; $55f3: $78
	inc  bc                                          ; $55f4: $03
	ld   l, a                                        ; $55f5: $6f
	ld   [bc], a                                     ; $55f6: $02
	xor  c                                           ; $55f7: $a9
	ld   a, c                                        ; $55f8: $79
	ld   [bc], a                                     ; $55f9: $02
	jr   nz, jr_052_5600                             ; $55fa: $20 $04

	dec  c                                           ; $55fc: $0d
	inc  b                                           ; $55fd: $04
	ld   c, c                                        ; $55fe: $49
	and  b                                           ; $55ff: $a0

jr_052_5600:
	ld   sp, hl                                      ; $5600: $f9
	dec  c                                           ; $5601: $0d
	nop                                              ; $5602: $00
	ld   a, [bc]                                     ; $5603: $0a
	inc  e                                           ; $5604: $1c
	ld   bc, $0000                                   ; $5605: $01 $00 $00
	ld   bc, $f956                                   ; $5608: $01 $56 $f9
	dec  c                                           ; $560b: $0d
	ld   l, e                                        ; $560c: $6b
	ld   d, h                                        ; $560d: $54
	ld   h, [hl]                                     ; $560e: $66
	ld   h, l                                        ; $560f: $65
	ld   [hl], h                                     ; $5610: $74
	sbc  c                                           ; $5611: $99
	and  c                                           ; $5612: $a1
	ld   [hl], l                                     ; $5613: $75
	ld   h, a                                        ; $5614: $67
	ld   e, a                                        ; $5615: $5f
	ld   [hl], a                                     ; $5616: $77
	rst  $38                                         ; $5617: $ff
	rst  $38                                         ; $5618: $ff
	dec  c                                           ; $5619: $0d
	nop                                              ; $561a: $00
	ld   a, [bc]                                     ; $561b: $0a
	add  hl, de                                      ; $561c: $19
	dec  b                                           ; $561d: $05
	inc  bc                                          ; $561e: $03
	inc  bc                                          ; $561f: $03
	ld   l, e                                        ; $5620: $6b
	inc  b                                           ; $5621: $04
	ld   [de], a                                     ; $5622: $12
	ld   d, d                                        ; $5623: $52
	adc  h                                           ; $5624: $8c
	ld   h, l                                        ; $5625: $65
	sub  l                                           ; $5626: $95
	ld   d, h                                        ; $5627: $54
	ld   e, c                                        ; $5628: $59
	ld   sp, hl                                      ; $5629: $f9
	nop                                              ; $562a: $00
	nop                                              ; $562b: $00
	inc  b                                           ; $562c: $04
	ld   c, c                                        ; $562d: $49
	ld   e, c                                        ; $562e: $59
	ld   h, l                                        ; $562f: $65
	ld   l, l                                        ; $5630: $6d
	and  c                                           ; $5631: $a1
	ld   [hl], l                                     ; $5632: $75
	ld   h, a                                        ; $5633: $67
	ld   e, c                                        ; $5634: $59
	ld   sp, hl                                      ; $5635: $f9
	nop                                              ; $5636: $00
	ld   bc, $a15a                                   ; $5637: $01 $5a $a1
	ld   a, [hl]                                     ; $563a: $7e
	ld   [hl], c                                     ; $563b: $71
	ld   [hl], h                                     ; $563c: $74
	ld   [bc], a                                     ; $563d: $02
	inc  [hl]                                        ; $563e: $34
	ld   h, e                                        ; $563f: $63
	ld   d, d                                        ; $5640: $52
	nop                                              ; $5641: $00
	ld   [bc], a                                     ; $5642: $02
	rlca                                             ; $5643: $07
	cp   c                                           ; $5644: $b9
	ld   bc, $0302                                   ; $5645: $01 $02 $03
	ld   bc, $2000                                   ; $5648: $01 $00 $20
	nop                                              ; $564b: $00
	rlca                                             ; $564c: $07
	inc  bc                                          ; $564d: $03
	ld   [bc], a                                     ; $564e: $02
	ld   [bc], a                                     ; $564f: $02
	inc  bc                                          ; $5650: $03
	ld   bc, $2001                                   ; $5651: $01 $01 $20
	nop                                              ; $5654: $00
	rlca                                             ; $5655: $07
	ld   [hl], a                                     ; $5656: $77
	ld   [bc], a                                     ; $5657: $02
	ld   [bc], a                                     ; $5658: $02
	inc  bc                                          ; $5659: $03
	ld   bc, $2002                                   ; $565a: $01 $02 $20
	nop                                              ; $565d: $00
	ld   b, $96                                      ; $565e: $06 $96
	ld   [bc], a                                     ; $5660: $02
	rrca                                             ; $5661: $0f
	nop                                              ; $5662: $00
	ld   bc, $0301                                   ; $5663: $01 $01 $03
	ld   l, e                                        ; $5666: $6b
	inc  b                                           ; $5667: $04
	ld   [de], a                                     ; $5668: $12
	ld   d, d                                        ; $5669: $52
	adc  h                                           ; $566a: $8c
	ld   h, l                                        ; $566b: $65
	sub  l                                           ; $566c: $95
	ld   d, h                                        ; $566d: $54
	ld   e, c                                        ; $566e: $59
	ld   sp, hl                                      ; $566f: $f9
	dec  c                                           ; $5670: $0d
	nop                                              ; $5671: $00
	ld   a, [bc]                                     ; $5672: $0a
	inc  e                                           ; $5673: $1c
	ld   bc, $0101                                   ; $5674: $01 $01 $01
	dec  e                                           ; $5677: $1d
	ld   b, b                                        ; $5678: $40
	ld   de, $1103                                   ; $5679: $11 $03 $11
	ld   bc, $2802                                   ; $567c: $01 $02 $28
	nop                                              ; $567f: $00
	ld   bc, $9850                                   ; $5680: $01 $50 $98
	ld   e, d                                        ; $5683: $5a
	halt                                             ; $5684: $76
	ld   d, h                                        ; $5685: $54
	ld   h, d                                        ; $5686: $62
	ld   h, h                                        ; $5687: $64
	ld   d, d                                        ; $5688: $52
	adc  h                                           ; $5689: $8c
	ld   h, a                                        ; $568a: $67
	rst  $38                                         ; $568b: $ff
	rst  $38                                         ; $568c: $ff
	dec  c                                           ; $568d: $0d
	ld   [hl], l                                     ; $568e: $75
	sub  b                                           ; $568f: $90
	sbc  [hl]                                        ; $5690: $9e
	ld   e, b                                        ; $5691: $58
	ld   [bc], a                                     ; $5692: $02
	and  c                                           ; $5693: $a1
	inc  bc                                          ; $5694: $03
	and  b                                           ; $5695: $a0
	ld   l, a                                        ; $5696: $6f
	ld   l, [hl]                                     ; $5697: $6e
	ld   e, a                                        ; $5698: $5f
	ld   d, d                                        ; $5699: $52
	ld   l, l                                        ; $569a: $6d
	ld   l, [hl]                                     ; $569b: $6e
	ld   d, d                                        ; $569c: $52
	ld   [hl], h                                     ; $569d: $74
	dec  c                                           ; $569e: $0d
	ld   e, b                                        ; $569f: $58
	ld   e, e                                        ; $56a0: $5b
	adc  h                                           ; $56a1: $8c
	ld   h, a                                        ; $56a2: $67
	ld   a, e                                        ; $56a3: $7b
	sbc  a                                           ; $56a4: $9f
	dec  c                                           ; $56a5: $0d
	nop                                              ; $56a6: $00
	ld   a, [bc]                                     ; $56a7: $0a
	ld   b, $96                                      ; $56a8: $06 $96
	ld   [bc], a                                     ; $56aa: $02
	rrca                                             ; $56ab: $0f
	nop                                              ; $56ac: $00
	ld   bc, $0401                                   ; $56ad: $01 $01 $04
	ld   c, c                                        ; $56b0: $49
	ld   e, c                                        ; $56b1: $59
	ld   h, l                                        ; $56b2: $65
	ld   l, l                                        ; $56b3: $6d
	and  c                                           ; $56b4: $a1
	ld   [hl], l                                     ; $56b5: $75
	ld   h, a                                        ; $56b6: $67
	ld   e, c                                        ; $56b7: $59
	ld   sp, hl                                      ; $56b8: $f9
	dec  c                                           ; $56b9: $0d
	nop                                              ; $56ba: $00
	ld   a, [bc]                                     ; $56bb: $0a
	inc  e                                           ; $56bc: $1c
	ld   bc, $0303                                   ; $56bd: $01 $03 $03
	ld   bc, $9a6b                                   ; $56c0: $01 $6b $9a
	sbc  [hl]                                        ; $56c3: $9e
	ld   [hl], a                                     ; $56c4: $77
	ld   d, h                                        ; $56c5: $54
	ld   d, d                                        ; $56c6: $52
	ld   d, h                                        ; $56c7: $54
	ld   [bc], a                                     ; $56c8: $02
	ld   b, $04                                      ; $56c9: $06 $04
	jp   nc, Jump_052_6775                           ; $56cb: $d2 $75 $67

	ld   e, c                                        ; $56ce: $59
	ld   sp, hl                                      ; $56cf: $f9
	dec  c                                           ; $56d0: $0d
	nop                                              ; $56d1: $00
	ld   a, [bc]                                     ; $56d2: $0a
	rrca                                             ; $56d3: $0f
	nop                                              ; $56d4: $00
	ld   bc, $5201                                   ; $56d5: $01 $01 $52
	sbc  [hl]                                        ; $56d8: $9e
	ld   d, d                                        ; $56d9: $52
	sub  d                                           ; $56da: $92
	rst  $38                                         ; $56db: $ff
	dec  c                                           ; $56dc: $0d
	pop  de                                          ; $56dd: $d1
	push bc                                          ; $56de: $c5
	ld   l, e                                        ; $56df: $6b
	ld   d, h                                        ; $56e0: $54
	ld   h, [hl]                                     ; $56e1: $66
	halt                                             ; $56e2: $76
	ld   e, c                                        ; $56e3: $59
	rst  $38                                         ; $56e4: $ff
	rst  $38                                         ; $56e5: $ff
	dec  c                                           ; $56e6: $0d
	nop                                              ; $56e7: $00
	ld   a, [bc]                                     ; $56e8: $0a
	inc  e                                           ; $56e9: $1c
	ld   bc, $0202                                   ; $56ea: $01 $02 $02
	dec  e                                           ; $56ed: $1d
	ld   b, b                                        ; $56ee: $40
	ld   de, $1103                                   ; $56ef: $11 $03 $11
	ld   bc, $2903                                   ; $56f2: $01 $03 $29
	nop                                              ; $56f5: $00
	ld   bc, $9a61                                   ; $56f6: $01 $61 $9a
	ld   a, l                                        ; $56f9: $7d
	ld   [bc], a                                     ; $56fa: $02
	sbc  d                                           ; $56fb: $9a
	ld   e, e                                        ; $56fc: $5b
	ld   [hl], l                                     ; $56fd: $75
	sub  d                                           ; $56fe: $92
	ld   [hl], c                                     ; $56ff: $71
	ld   [hl], h                                     ; $5700: $74
	sbc  c                                           ; $5701: $99
	and  c                                           ; $5702: $a1
	ld   [hl], l                                     ; $5703: $75
	ld   h, a                                        ; $5704: $67
	ld   a, [$670d]                                  ; $5705: $fa $0d $67
	adc  l                                           ; $5708: $8d
	adc  h                                           ; $5709: $8c
	ld   l, c                                        ; $570a: $69
	and  c                                           ; $570b: $a1
	ld   e, d                                        ; $570c: $5a
	sbc  [hl]                                        ; $570d: $9e
	dec  c                                           ; $570e: $0d
	ld   h, [hl]                                     ; $570f: $66
	sub  c                                           ; $5710: $91
	adc  h                                           ; $5711: $8c
	ld   h, l                                        ; $5712: $65
	ld   a, b                                        ; $5713: $78
	ld   d, d                                        ; $5714: $52
	ld   [hl], l                                     ; $5715: $75
	ld   [bc], a                                     ; $5716: $02
	inc  [hl]                                        ; $5717: $34
	ld   h, e                                        ; $5718: $63
	ld   d, d                                        ; $5719: $52
	ld   a, [$000d]                                  ; $571a: $fa $0d $00
	ld   a, [bc]                                     ; $571d: $0a
	nop                                              ; $571e: $00
	rrca                                             ; $571f: $0f
	nop                                              ; $5720: $00
	ld   bc, $5a01                                   ; $5721: $01 $01 $5a
	and  c                                           ; $5724: $a1
	ld   a, [hl]                                     ; $5725: $7e
	ld   [hl], c                                     ; $5726: $71
	ld   [hl], h                                     ; $5727: $74
	ld   [bc], a                                     ; $5728: $02
	inc  [hl]                                        ; $5729: $34
	ld   h, e                                        ; $572a: $63
	ld   d, d                                        ; $572b: $52
	sbc  a                                           ; $572c: $9f
	dec  c                                           ; $572d: $0d
	nop                                              ; $572e: $00
	ld   a, [bc]                                     ; $572f: $0a
	inc  e                                           ; $5730: $1c
	ld   bc, $0101                                   ; $5731: $01 $01 $01
	ld   bc, $527d                                   ; $5734: $01 $7d $52
	sbc  a                                           ; $5737: $9f
	dec  c                                           ; $5738: $0d
	nop                                              ; $5739: $00
	ld   a, [bc]                                     ; $573a: $0a
	ld   b, $96                                      ; $573b: $06 $96
	ld   [bc], a                                     ; $573d: $02
	inc  e                                           ; $573e: $1c
	ld   bc, $0000                                   ; $573f: $01 $00 $00
	ld   bc, $cf04                                   ; $5742: $01 $04 $cf
	inc  b                                           ; $5745: $04
	xor  d                                           ; $5746: $aa
	sub  b                                           ; $5747: $90
	inc  bc                                          ; $5748: $03
	ld   [hl], b                                     ; $5749: $70
	ld   d, d                                        ; $574a: $52
	and  c                                           ; $574b: $a1
	ld   [hl], l                                     ; $574c: $75
	ld   h, a                                        ; $574d: $67
	ld   e, c                                        ; $574e: $59
	sub  a                                           ; $574f: $97
	dec  c                                           ; $5750: $0d
	inc  bc                                          ; $5751: $03
	ld   [hl], b                                     ; $5752: $70
	ld   e, l                                        ; $5753: $5d
	inc  bc                                          ; $5754: $03
	and  a                                           ; $5755: $a7
	and  c                                           ; $5756: $a1
	ld   l, [hl]                                     ; $5757: $6e
	inc  b                                           ; $5758: $04
	ld   a, b                                        ; $5759: $78
	ld   e, d                                        ; $575a: $5a
	ld   d, d                                        ; $575b: $52
	ld   d, d                                        ; $575c: $52
	ld   [hl], l                                     ; $575d: $75
	ld   h, a                                        ; $575e: $67
	sub  [hl]                                        ; $575f: $96
	sbc  a                                           ; $5760: $9f
	dec  c                                           ; $5761: $0d
	ld   e, b                                        ; $5762: $58
	sub  d                                           ; $5763: $92
	ld   h, a                                        ; $5764: $67
	adc  l                                           ; $5765: $8d
	ld   a, b                                        ; $5766: $78
	ld   h, e                                        ; $5767: $63
	ld   d, d                                        ; $5768: $52
	rst  $38                                         ; $5769: $ff
	rst  $38                                         ; $576a: $ff
	dec  c                                           ; $576b: $0d
	nop                                              ; $576c: $00
	ld   a, [bc]                                     ; $576d: $0a
	nop                                              ; $576e: $00
	rrca                                             ; $576f: $0f
	nop                                              ; $5770: $00
	ld   bc, $6301                                   ; $5771: $01 $01 $63
	ld   e, l                                        ; $5774: $5d
	sub  a                                           ; $5775: $97
	ld   h, e                                        ; $5776: $63
	and  c                                           ; $5777: $a1
	sbc  a                                           ; $5778: $9f
	ld   h, c                                        ; $5779: $61
	sbc  d                                           ; $577a: $9a
	inc  b                                           ; $577b: $04
	ld   hl, $bc03                                   ; $577c: $21 $03 $bc
	ld   e, c                                        ; $577f: $59
	sub  a                                           ; $5780: $97
	dec  c                                           ; $5781: $0d
	inc  bc                                          ; $5782: $03
	sbc  a                                           ; $5783: $9f
	ld   [hl], c                                     ; $5784: $71
	ld   [hl], h                                     ; $5785: $74
	ld   e, e                                        ; $5786: $5b
	ld   l, l                                        ; $5787: $6d
	and  c                                           ; $5788: $a1
	ld   [hl], l                                     ; $5789: $75
	ld   h, a                                        ; $578a: $67
	ld   e, a                                        ; $578b: $5f
	ld   [hl], a                                     ; $578c: $77
	rst  $38                                         ; $578d: $ff
	rst  $38                                         ; $578e: $ff
	dec  c                                           ; $578f: $0d
	nop                                              ; $5790: $00
	ld   a, [bc]                                     ; $5791: $0a
	inc  e                                           ; $5792: $1c
	ld   bc, $0303                                   ; $5793: $01 $03 $03
	ld   bc, $f956                                   ; $5796: $01 $56 $f9
	dec  c                                           ; $5799: $0d
	ld   d, b                                        ; $579a: $50
	ld   l, l                                        ; $579b: $6d
	ld   h, l                                        ; $579c: $65
	ld   a, c                                        ; $579d: $79
	ld   [hl], l                                     ; $579e: $75
	ld   h, a                                        ; $579f: $67
	ld   e, c                                        ; $57a0: $59
	rst  $38                                         ; $57a1: $ff
	rst  $38                                         ; $57a2: $ff
	ld   sp, hl                                      ; $57a3: $f9
	dec  c                                           ; $57a4: $0d
	nop                                              ; $57a5: $00
	ld   a, [bc]                                     ; $57a6: $0a
	rrca                                             ; $57a7: $0f
	nop                                              ; $57a8: $00
	ld   bc, $010d                                   ; $57a9: $01 $0d $01
	nop                                              ; $57ac: $00
	ld   bc, $0301                                   ; $57ad: $01 $01 $03
	ld   [hl], a                                     ; $57b0: $77
	sbc  d                                           ; $57b1: $9a
	and  b                                           ; $57b2: $a0
	inc  bc                                          ; $57b3: $03
	ld   [$546b], a                                  ; $57b4: $ea $6b $54
	ld   e, c                                        ; $57b7: $59
	ld   a, b                                        ; $57b8: $78
	ld   sp, hl                                      ; $57b9: $f9
	ld   bc, $0d04                                   ; $57ba: $01 $04 $0d
	nop                                              ; $57bd: $00
	ld   a, [bc]                                     ; $57be: $0a
	jr   jr_052_57c4                                 ; $57bf: $18 $03

	nop                                              ; $57c1: $00
	sub  [hl]                                        ; $57c2: $96
	ld   d, h                                        ; $57c3: $54

jr_052_57c4:
	ld   e, c                                        ; $57c4: $59
	and  c                                           ; $57c5: $a1
	nop                                              ; $57c6: $00
	nop                                              ; $57c7: $00
	inc  b                                           ; $57c8: $04
	push de                                          ; $57c9: $d5
	inc  b                                           ; $57ca: $04
	inc  l                                           ; $57cb: $2c
	nop                                              ; $57cc: $00
	ld   bc, $d504                                   ; $57cd: $01 $04 $d5
	inc  b                                           ; $57d0: $04
	and  a                                           ; $57d1: $a7
	sbc  b                                           ; $57d2: $98
	ld   a, h                                        ; $57d3: $7c
	or   b                                           ; $57d4: $b0
	rst  JumpTable                                         ; $57d5: $df
	nop                                              ; $57d6: $00
	ld   [bc], a                                     ; $57d7: $02
	rlca                                             ; $57d8: $07
	ld   c, e                                        ; $57d9: $4b
	inc  bc                                          ; $57da: $03
	ld   [bc], a                                     ; $57db: $02
	ld   [bc], a                                     ; $57dc: $02
	ld   bc, $2000                                   ; $57dd: $01 $00 $20
	nop                                              ; $57e0: $00
	rlca                                             ; $57e1: $07
	sub  [hl]                                        ; $57e2: $96
	inc  bc                                          ; $57e3: $03
	ld   [bc], a                                     ; $57e4: $02
	ld   [bc], a                                     ; $57e5: $02
	ld   bc, $2001                                   ; $57e6: $01 $01 $20
	nop                                              ; $57e9: $00
	rlca                                             ; $57ea: $07
	rst  $28                                         ; $57eb: $ef
	inc  bc                                          ; $57ec: $03
	ld   [bc], a                                     ; $57ed: $02
	ld   [bc], a                                     ; $57ee: $02
	ld   bc, $2002                                   ; $57ef: $01 $02 $20
	nop                                              ; $57f2: $00
	rrca                                             ; $57f3: $0f
	nop                                              ; $57f4: $00
	ld   bc, $0310                                   ; $57f5: $01 $10 $03
	nop                                              ; $57f8: $00
	ld   bc, $5496                                   ; $57f9: $01 $96 $54
	ld   e, c                                        ; $57fc: $59
	and  c                                           ; $57fd: $a1
	ld   a, b                                        ; $57fe: $78
	and  c                                           ; $57ff: $a1
	ld   [hl], l                                     ; $5800: $75
	ld   h, a                                        ; $5801: $67
	ld   e, d                                        ; $5802: $5a
	dec  c                                           ; $5803: $0d
	ld   d, d                                        ; $5804: $52
	ld   e, c                                        ; $5805: $59
	ld   e, d                                        ; $5806: $5a
	ld   [hl], l                                     ; $5807: $75
	ld   h, a                                        ; $5808: $67
	ld   e, c                                        ; $5809: $59
	ld   sp, hl                                      ; $580a: $f9
	dec  c                                           ; $580b: $0d
	nop                                              ; $580c: $00
	ld   a, [bc]                                     ; $580d: $0a
	inc  e                                           ; $580e: $1c
	ld   bc, $0101                                   ; $580f: $01 $01 $01
	dec  e                                           ; $5812: $1d
	ld   b, b                                        ; $5813: $40
	ld   de, $1103                                   ; $5814: $11 $03 $11
	ld   bc, $2802                                   ; $5817: $01 $02 $28
	nop                                              ; $581a: $00
	ld   bc, $9850                                   ; $581b: $01 $50 $98
	ld   e, d                                        ; $581e: $5a
	halt                                             ; $581f: $76
	ld   d, h                                        ; $5820: $54
	ld   h, d                                        ; $5821: $62
	ld   h, h                                        ; $5822: $64
	ld   d, d                                        ; $5823: $52
	adc  h                                           ; $5824: $8c
	ld   h, a                                        ; $5825: $67
	sbc  a                                           ; $5826: $9f
	dec  c                                           ; $5827: $0d
	ld   [bc], a                                     ; $5828: $02
	xor  d                                           ; $5829: $aa
	ld   [hl], l                                     ; $582a: $75
	inc  bc                                          ; $582b: $03
	ld   l, d                                        ; $582c: $6a
	add  a                                           ; $582d: $87
	ld   h, e                                        ; $582e: $63
	ld   l, c                                        ; $582f: $69
	ld   [hl], h                                     ; $5830: $74
	sub  b                                           ; $5831: $90
	sub  a                                           ; $5832: $97
	ld   d, d                                        ; $5833: $52
	adc  h                                           ; $5834: $8c
	ld   h, a                                        ; $5835: $67
	ld   a, e                                        ; $5836: $7b
	sbc  a                                           ; $5837: $9f
	dec  c                                           ; $5838: $0d
	nop                                              ; $5839: $00
	ld   a, [bc]                                     ; $583a: $0a
	ld   b, $35                                      ; $583b: $06 $35
	inc  b                                           ; $583d: $04
	rrca                                             ; $583e: $0f
	nop                                              ; $583f: $00
	ld   bc, $0410                                   ; $5840: $01 $10 $04
	nop                                              ; $5843: $00
	ld   bc, $5d63                                   ; $5844: $01 $63 $5d
	sub  a                                           ; $5847: $97
	ld   h, e                                        ; $5848: $63
	and  c                                           ; $5849: $a1
	ld   a, c                                        ; $584a: $79
	ld   a, l                                        ; $584b: $7d
	inc  b                                           ; $584c: $04
	push de                                          ; $584d: $d5
	inc  b                                           ; $584e: $04
	inc  l                                           ; $584f: $2c
	ld   a, b                                        ; $5850: $78
	and  c                                           ; $5851: $a1
	ld   e, c                                        ; $5852: $59
	dec  c                                           ; $5853: $0d
	ld   d, d                                        ; $5854: $52
	ld   e, c                                        ; $5855: $59
	ld   e, c                                        ; $5856: $59
	ld   [hl], l                                     ; $5857: $75
	ld   h, l                                        ; $5858: $65
	sub  l                                           ; $5859: $95
	ld   d, h                                        ; $585a: $54
	ld   e, c                                        ; $585b: $59
	ld   sp, hl                                      ; $585c: $f9
	dec  c                                           ; $585d: $0d
	nop                                              ; $585e: $00
	ld   a, [bc]                                     ; $585f: $0a
	inc  e                                           ; $5860: $1c
	ld   bc, $0101                                   ; $5861: $01 $01 $01
	dec  e                                           ; $5864: $1d
	ld   b, b                                        ; $5865: $40
	ld   de, $1103                                   ; $5866: $11 $03 $11
	ld   bc, $2803                                   ; $5869: $01 $03 $28
	nop                                              ; $586c: $00
	ld   bc, $9750                                   ; $586d: $01 $50 $97
	ld   a, [$5210]                                  ; $5870: $fa $10 $52
	ld   d, d                                        ; $5873: $52
	and  c                                           ; $5874: $a1
	ld   [hl], l                                     ; $5875: $75
	ld   h, a                                        ; $5876: $67
	ld   e, c                                        ; $5877: $59
	ld   sp, hl                                      ; $5878: $f9
	dec  c                                           ; $5879: $0d
	ld   l, l                                        ; $587a: $6d
	and  c                                           ; $587b: $a1
	sbc  d                                           ; $587c: $9a
	and  c                                           ; $587d: $a1
	inc  b                                           ; $587e: $04
	di                                               ; $587f: $f3
	ld   a, h                                        ; $5880: $7c
	inc  b                                           ; $5881: $04
	push de                                          ; $5882: $d5
	inc  b                                           ; $5883: $04
	inc  l                                           ; $5884: $2c
	ld   e, d                                        ; $5885: $5a
	dec  c                                           ; $5886: $0d
	inc  b                                           ; $5887: $04
	db   $e3                                         ; $5888: $e3
	ld   h, l                                        ; $5889: $65
	ld   e, c                                        ; $588a: $59
	ld   [hl], c                                     ; $588b: $71
	ld   l, l                                        ; $588c: $6d
	and  c                                           ; $588d: $a1
	ld   [hl], l                                     ; $588e: $75
	ld   h, a                                        ; $588f: $67
	sbc  a                                           ; $5890: $9f
	dec  c                                           ; $5891: $0d
	nop                                              ; $5892: $00
	ld   a, [bc]                                     ; $5893: $0a
	ld   b, $35                                      ; $5894: $06 $35
	inc  b                                           ; $5896: $04
	rrca                                             ; $5897: $0f
	nop                                              ; $5898: $00
	ld   bc, $0510                                   ; $5899: $01 $10 $05
	nop                                              ; $589c: $00
	ld   bc, $d504                                   ; $589d: $01 $04 $d5
	inc  b                                           ; $58a0: $04
	and  a                                           ; $58a1: $a7
	sbc  b                                           ; $58a2: $98
	ld   a, h                                        ; $58a3: $7c
	or   b                                           ; $58a4: $b0
	rst  JumpTable                                         ; $58a5: $df
	ld   [hl], l                                     ; $58a6: $75
	ld   h, a                                        ; $58a7: $67
	dec  c                                           ; $58a8: $0d
	ld   [bc], a                                     ; $58a9: $02
	adc  e                                           ; $58aa: $8b
	ld   [bc], a                                     ; $58ab: $02
	dec  hl                                          ; $58ac: $2b
	ld   e, d                                        ; $58ad: $5a
	ld   [hl], c                                     ; $58ae: $71
	ld   [hl], h                                     ; $58af: $74
	sub  d                                           ; $58b0: $92
	ld   [hl], c                                     ; $58b1: $71
	ld   [hl], h                                     ; $58b2: $74
	ld   [bc], a                                     ; $58b3: $02
	inc  [hl]                                        ; $58b4: $34
	ld   h, e                                        ; $58b5: $63
	ld   d, d                                        ; $58b6: $52
	sbc  a                                           ; $58b7: $9f
	dec  c                                           ; $58b8: $0d
	nop                                              ; $58b9: $00
	ld   a, [bc]                                     ; $58ba: $0a
	inc  e                                           ; $58bb: $1c
	ld   bc, $0303                                   ; $58bc: $01 $03 $03
	dec  e                                           ; $58bf: $1d
	ld   b, b                                        ; $58c0: $40
	ld   de, $1103                                   ; $58c1: $11 $03 $11
	ld   bc, $2902                                   ; $58c4: $01 $02 $29
	nop                                              ; $58c7: $00
	ld   bc, $9e50                                   ; $58c8: $01 $50 $9e
	ld   d, b                                        ; $58cb: $50
	sbc  b                                           ; $58cc: $98
	ld   e, d                                        ; $58cd: $5a
	halt                                             ; $58ce: $76
	ld   d, h                                        ; $58cf: $54
	ld   h, d                                        ; $58d0: $62
	ld   h, h                                        ; $58d1: $64
	ld   d, d                                        ; $58d2: $52
	adc  h                                           ; $58d3: $8c
	ld   h, a                                        ; $58d4: $67
	rst  $38                                         ; $58d5: $ff
	rst  $38                                         ; $58d6: $ff
	dec  c                                           ; $58d7: $0d
	nop                                              ; $58d8: $00
	ld   a, [bc]                                     ; $58d9: $0a
	ld   b, $35                                      ; $58da: $06 $35
	inc  b                                           ; $58dc: $04
	inc  e                                           ; $58dd: $1c
	ld   bc, $0000                                   ; $58de: $01 $00 $00
	ld   bc, $cf04                                   ; $58e1: $01 $04 $cf
	inc  b                                           ; $58e4: $04
	xor  d                                           ; $58e5: $aa
	sub  b                                           ; $58e6: $90
	inc  bc                                          ; $58e7: $03
	ld   [hl], b                                     ; $58e8: $70
	ld   d, d                                        ; $58e9: $52
	and  c                                           ; $58ea: $a1
	ld   [hl], l                                     ; $58eb: $75
	ld   h, a                                        ; $58ec: $67
	ld   e, c                                        ; $58ed: $59
	sub  a                                           ; $58ee: $97
	dec  c                                           ; $58ef: $0d
	inc  bc                                          ; $58f0: $03
	ld   [hl], b                                     ; $58f1: $70
	ld   e, l                                        ; $58f2: $5d
	inc  bc                                          ; $58f3: $03
	and  a                                           ; $58f4: $a7
	and  c                                           ; $58f5: $a1
	ld   l, [hl]                                     ; $58f6: $6e
	inc  b                                           ; $58f7: $04
	ld   a, b                                        ; $58f8: $78
	ld   e, d                                        ; $58f9: $5a
	ld   d, d                                        ; $58fa: $52
	ld   d, d                                        ; $58fb: $52
	ld   [hl], l                                     ; $58fc: $75
	ld   h, a                                        ; $58fd: $67
	sub  [hl]                                        ; $58fe: $96
	sbc  a                                           ; $58ff: $9f
	dec  c                                           ; $5900: $0d
	ld   e, b                                        ; $5901: $58
	sub  d                                           ; $5902: $92
	ld   h, a                                        ; $5903: $67
	adc  l                                           ; $5904: $8d
	ld   a, b                                        ; $5905: $78
	ld   h, e                                        ; $5906: $63
	ld   d, d                                        ; $5907: $52
	rst  $38                                         ; $5908: $ff
	rst  $38                                         ; $5909: $ff
	dec  c                                           ; $590a: $0d
	nop                                              ; $590b: $00
	ld   a, [bc]                                     ; $590c: $0a
	dec  c                                           ; $590d: $0d
	nop                                              ; $590e: $00
	nop                                              ; $590f: $00
	rrca                                             ; $5910: $0f
	nop                                              ; $5911: $00
	ld   bc, $1e09                                   ; $5912: $01 $09 $1e
	nop                                              ; $5915: $00
	nop                                              ; $5916: $00
	ld   c, $2b                                      ; $5917: $0e $2b
	rrca                                             ; $5919: $0f
	nop                                              ; $591a: $00
	ld   bc, $060d                                   ; $591b: $01 $0d $06
	nop                                              ; $591e: $00
	ld   [bc], a                                     ; $591f: $02
	ld   bc, $9a50                                   ; $5920: $01 $50 $9a
	rst  $38                                         ; $5923: $ff
	rst  $38                                         ; $5924: $ff
	xor  h                                           ; $5925: $ac
	push af                                          ; $5926: $f5
	bit  4, e                                        ; $5927: $cb $63
	and  c                                           ; $5929: $a1
	dec  c                                           ; $592a: $0d
	inc  b                                           ; $592b: $04
	ld   c, c                                        ; $592c: $49
	sub  d                                           ; $592d: $92
	ld   [hl], c                                     ; $592e: $71
	ld   [hl], h                                     ; $592f: $74
	sbc  c                                           ; $5930: $99
	and  c                                           ; $5931: $a1
	ld   [hl], l                                     ; $5932: $75
	ld   h, a                                        ; $5933: $67
	ld   e, c                                        ; $5934: $59
	ld   sp, hl                                      ; $5935: $f9
	dec  c                                           ; $5936: $0d
	nop                                              ; $5937: $00
	ld   a, [bc]                                     ; $5938: $0a
	inc  e                                           ; $5939: $1c
	ld   b, $00                                      ; $593a: $06 $00
	nop                                              ; $593c: $00
	ld   bc, $5896                                   ; $593d: $01 $96 $58
	sbc  [hl]                                        ; $5940: $9e
	ld   [$9f00], sp                                 ; $5941: $08 $00 $9f
	dec  c                                           ; $5944: $0d
	ld   [bc], a                                     ; $5945: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5946: $cf
	dec  b                                           ; $5947: $05
	ld   a, [de]                                     ; $5948: $1a
	halt                                             ; $5949: $76
	ld   [bc], a                                     ; $594a: $02
	sbc  b                                           ; $594b: $98
	ld   [bc], a                                     ; $594c: $02
	ld   sp, hl                                      ; $594d: $f9
	sub  d                                           ; $594e: $92
	sbc  e                                           ; $594f: $9b
	ld   d, h                                        ; $5950: $54
	halt                                             ; $5951: $76
	dec  b                                           ; $5952: $05
	pop  de                                          ; $5953: $d1
	ld   [hl], c                                     ; $5954: $71
	ld   [hl], h                                     ; $5955: $74
	dec  c                                           ; $5956: $0d
	ld   d, b                                        ; $5957: $50
	ld   d, d                                        ; $5958: $52
	ld   [hl], d                                     ; $5959: $72
	and  b                                           ; $595a: $a0
	adc  h                                           ; $595b: $8c
	ld   [hl], c                                     ; $595c: $71
	ld   [hl], h                                     ; $595d: $74
	sbc  c                                           ; $595e: $99
	and  c                                           ; $595f: $a1
	ld   l, [hl]                                     ; $5960: $6e
	sub  [hl]                                        ; $5961: $96
	sbc  a                                           ; $5962: $9f
	dec  c                                           ; $5963: $0d
	nop                                              ; $5964: $00
	ld   a, [bc]                                     ; $5965: $0a
	inc  e                                           ; $5966: $1c
	ld   b, $01                                      ; $5967: $06 $01
	ld   bc, $5001                                   ; $5969: $01 $01 $50
	sbc  [hl]                                        ; $596c: $9e
	ld   l, e                                        ; $596d: $6b
	ld   d, h                                        ; $596e: $54
	ld   l, [hl]                                     ; $596f: $6e
	sbc  a                                           ; $5970: $9f
	dec  c                                           ; $5971: $0d
	ld   [bc], a                                     ; $5972: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5973: $cf
	dec  b                                           ; $5974: $05
	ld   a, [de]                                     ; $5975: $1a
	ld   e, d                                        ; $5976: $5a
	dec  b                                           ; $5977: $05
	db   $10                                         ; $5978: $10
	sbc  c                                           ; $5979: $99
	adc  h                                           ; $597a: $8c
	ld   [hl], l                                     ; $597b: $75
	dec  c                                           ; $597c: $0d
	ld   e, b                                        ; $597d: $58
	inc  bc                                          ; $597e: $03
	ld   c, a                                        ; $597f: $4f
	ld   e, d                                        ; $5980: $5a
	ld   [bc], a                                     ; $5981: $02
	ld   a, [de]                                     ; $5982: $1a
	inc  bc                                          ; $5983: $03
	ld   l, e                                        ; $5984: $6b
	ld   h, l                                        ; $5985: $65
	ld   [hl], h                                     ; $5986: $74
	ld   e, l                                        ; $5987: $5d
	sbc  d                                           ; $5988: $9a
	sub  [hl]                                        ; $5989: $96
	ld   sp, hl                                      ; $598a: $f9
	dec  c                                           ; $598b: $0d
	nop                                              ; $598c: $00
	ld   a, [bc]                                     ; $598d: $0a
	add  hl, de                                      ; $598e: $19
	dec  b                                           ; $598f: $05
	inc  bc                                          ; $5990: $03
	sub  d                                           ; $5991: $92
	sbc  b                                           ; $5992: $98
	adc  h                                           ; $5993: $8c
	ld   h, l                                        ; $5994: $65
	sub  l                                           ; $5995: $95
	ld   d, h                                        ; $5996: $54
	sbc  [hl]                                        ; $5997: $9e
	xor  h                                           ; $5998: $ac
	push af                                          ; $5999: $f5
	bit  4, e                                        ; $599a: $cb $63
	and  c                                           ; $599c: $a1
	nop                                              ; $599d: $00
	nop                                              ; $599e: $00
	ld   [bc], a                                     ; $599f: $02
	sub  l                                           ; $59a0: $95
	ld   [bc], a                                     ; $59a1: $02
	sub  e                                           ; $59a2: $93
	sbc  b                                           ; $59a3: $98
	ld   a, h                                        ; $59a4: $7c
	halt                                             ; $59a5: $76
	ld   l, a                                        ; $59a6: $6f
	sub  e                                           ; $59a7: $93
	ld   d, h                                        ; $59a8: $54
	ld   [hl], l                                     ; $59a9: $75
	ld   h, a                                        ; $59aa: $67
	ld   e, c                                        ; $59ab: $59
	sub  a                                           ; $59ac: $97
	nop                                              ; $59ad: $00
	ld   bc, $6d8c                                   ; $59ae: $01 $8c $6d
	ld   [bc], a                                     ; $59b1: $02
	and  l                                           ; $59b2: $a5
	inc  b                                           ; $59b3: $04
	add  hl, hl                                      ; $59b4: $29
	ld   [hl], l                                     ; $59b5: $75
	sub  b                                           ; $59b6: $90
	ld   d, d                                        ; $59b7: $52
	ld   d, d                                        ; $59b8: $52
	ld   [hl], l                                     ; $59b9: $75
	ld   h, a                                        ; $59ba: $67
	ld   e, c                                        ; $59bb: $59
	ld   sp, hl                                      ; $59bc: $f9
	nop                                              ; $59bd: $00
	ld   [bc], a                                     ; $59be: $02
	rlca                                             ; $59bf: $07
	add  $00                                         ; $59c0: $c6 $00
	ld   [bc], a                                     ; $59c2: $02
	inc  bc                                          ; $59c3: $03
	ld   bc, $2000                                   ; $59c4: $01 $00 $20
	nop                                              ; $59c7: $00
	rlca                                             ; $59c8: $07
	rst  ToBoot                                         ; $59c9: $c7
	ld   bc, $0302                                   ; $59ca: $01 $02 $03
	ld   bc, $2001                                   ; $59cd: $01 $01 $20
	nop                                              ; $59d0: $00
	rlca                                             ; $59d1: $07
	ld   a, [de]                                     ; $59d2: $1a
	ld   [bc], a                                     ; $59d3: $02
	ld   [bc], a                                     ; $59d4: $02
	inc  bc                                          ; $59d5: $03
	ld   bc, $2002                                   ; $59d6: $01 $02 $20
	nop                                              ; $59d9: $00
	ld   b, $01                                      ; $59da: $06 $01
	ld   bc, $000f                                   ; $59dc: $01 $0f $00
	ld   bc, $9201                                   ; $59df: $01 $01 $92
	sbc  b                                           ; $59e2: $98
	adc  h                                           ; $59e3: $8c
	ld   h, l                                        ; $59e4: $65
	sub  l                                           ; $59e5: $95
	ld   d, h                                        ; $59e6: $54
	sbc  [hl]                                        ; $59e7: $9e
	xor  h                                           ; $59e8: $ac
	push af                                          ; $59e9: $f5
	bit  4, e                                        ; $59ea: $cb $63
	and  c                                           ; $59ec: $a1
	sbc  a                                           ; $59ed: $9f
	dec  c                                           ; $59ee: $0d
	nop                                              ; $59ef: $00
	ld   a, [bc]                                     ; $59f0: $0a
	inc  e                                           ; $59f1: $1c
	ld   b, $01                                      ; $59f2: $06 $01
	ld   bc, $401d                                   ; $59f4: $01 $1d $40
	ld   d, $03                                      ; $59f7: $16 $03
	ld   d, $01                                      ; $59f9: $16 $01
	inc  bc                                          ; $59fb: $03
	jr   z, jr_052_59fe                              ; $59fc: $28 $00

jr_052_59fe:
	ld   bc, $546b                                   ; $59fe: $01 $6b $54
	ld   h, c                                        ; $5a01: $61
	ld   a, b                                        ; $5a02: $78
	ld   e, l                                        ; $5a03: $5d
	ld   [hl], c                                     ; $5a04: $71
	ld   l, a                                        ; $5a05: $6f
	sub  c                                           ; $5a06: $91
	ld   a, b                                        ; $5a07: $78
	sbc  a                                           ; $5a08: $9f
	dec  c                                           ; $5a09: $0d
	ld   h, [hl]                                     ; $5a0a: $66
	sub  c                                           ; $5a0b: $91
	sbc  [hl]                                        ; $5a0c: $9e
	ld   d, d                                        ; $5a0d: $52
	ld   e, l                                        ; $5a0e: $5d
	ld   l, d                                        ; $5a0f: $6a
	rst  $38                                         ; $5a10: $ff
	rst  $38                                         ; $5a11: $ff
	dec  c                                           ; $5a12: $0d
	nop                                              ; $5a13: $00
	ld   a, [bc]                                     ; $5a14: $0a
	ld   b, $2c                                      ; $5a15: $06 $2c
	ld   bc, $061c                                   ; $5a17: $01 $1c $06
	ld   bc, $0101                                   ; $5a1a: $01 $01 $01
	halt                                             ; $5a1d: $76
	ld   e, c                                        ; $5a1e: $59
	ld   [bc], a                                     ; $5a1f: $02
	sbc  l                                           ; $5a20: $9d
	ld   d, d                                        ; $5a21: $52
	ld   a, b                                        ; $5a22: $78
	ld   e, d                                        ; $5a23: $5a
	sub  a                                           ; $5a24: $97
	sbc  [hl]                                        ; $5a25: $9e
	dec  c                                           ; $5a26: $0d
	ld   d, h                                        ; $5a27: $54
	adc  [hl]                                        ; $5a28: $8e
	and  b                                           ; $5a29: $a0
	ld   [bc], a                                     ; $5a2a: $02
	sbc  l                                           ; $5a2b: $9d
	sbc  l                                           ; $5a2c: $9d
	ld   h, e                                        ; $5a2d: $63
	ld   l, b                                        ; $5a2e: $68
	ld   [bc], a                                     ; $5a2f: $02
	ld   sp, hl                                      ; $5a30: $f9
	and  b                                           ; $5a31: $a0
	dec  c                                           ; $5a32: $0d
	ld   e, l                                        ; $5a33: $5d
	ld   a, [hl]                                     ; $5a34: $7e
	ld   [hl], c                                     ; $5a35: $71
	ld   [hl], h                                     ; $5a36: $74
	ld   l, l                                        ; $5a37: $6d
	sbc  b                                           ; $5a38: $98
	ld   h, a                                        ; $5a39: $67
	sbc  c                                           ; $5a3a: $99
	and  c                                           ; $5a3b: $a1
	ld   l, [hl]                                     ; $5a3c: $6e
	ld   a, b                                        ; $5a3d: $78
	rst  $38                                         ; $5a3e: $ff
	rst  $38                                         ; $5a3f: $ff
	dec  c                                           ; $5a40: $0d
	nop                                              ; $5a41: $00
	ld   a, [bc]                                     ; $5a42: $0a
	rrca                                             ; $5a43: $0f
	inc  bc                                          ; $5a44: $03
	ld   b, $01                                      ; $5a45: $06 $01
	ld   b, $09                                      ; $5a47: $06 $09
	inc  bc                                          ; $5a49: $03
	add  d                                           ; $5a4a: $82
	halt                                             ; $5a4b: $76
	sub  b                                           ; $5a4c: $90
	inc  b                                           ; $5a4d: $04
	ld   c, c                                        ; $5a4e: $49
	sub  d                                           ; $5a4f: $92
	ld   [hl], c                                     ; $5a50: $71
	ld   [hl], h                                     ; $5a51: $74
	sbc  c                                           ; $5a52: $99
	ld   a, h                                        ; $5a53: $7c
	ld   a, [$000d]                                  ; $5a54: $fa $0d $00
	ld   a, [bc]                                     ; $5a57: $0a
	inc  e                                           ; $5a58: $1c
	ld   b, $03                                      ; $5a59: $06 $03
	inc  bc                                          ; $5a5b: $03
	ld   bc, $c4b3                                   ; $5a5c: $01 $b3 $c4
	ld   a, [$df0d]                                  ; $5a5f: $fa $0d $df
	db   $ec                                         ; $5a62: $ec
	and  e                                           ; $5a63: $a3
	rst  $38                                         ; $5a64: $ff
	rst  $38                                         ; $5a65: $ff
	dec  c                                           ; $5a66: $0d
	nop                                              ; $5a67: $00
	ld   a, [bc]                                     ; $5a68: $0a
	inc  e                                           ; $5a69: $1c
	inc  bc                                          ; $5a6a: $03
	ld   b, $06                                      ; $5a6b: $06 $06
	dec  e                                           ; $5a6d: $1d
	ld   b, b                                        ; $5a6e: $40
	inc  de                                          ; $5a6f: $13
	inc  bc                                          ; $5a70: $03
	inc  de                                          ; $5a71: $13
	ld   bc, $2903                                   ; $5a72: $01 $03 $29
	nop                                              ; $5a75: $00
	ld   bc, $0008                                   ; $5a76: $01 $08 $00
	ld   e, l                                        ; $5a79: $5d
	and  c                                           ; $5a7a: $a1
	sbc  [hl]                                        ; $5a7b: $9e
	ld   d, b                                        ; $5a7c: $50
	ld   a, b                                        ; $5a7d: $78
	ld   l, l                                        ; $5a7e: $6d
	ld   a, l                                        ; $5a7f: $7d
	dec  c                                           ; $5a80: $0d
	ld   [bc], a                                     ; $5a81: $02
	sub  l                                           ; $5a82: $95
	ld   [bc], a                                     ; $5a83: $02
	sub  e                                           ; $5a84: $93
	sbc  b                                           ; $5a85: $98
	ld   a, h                                        ; $5a86: $7c
	inc  bc                                          ; $5a87: $03
	ld   l, a                                        ; $5a88: $6f
	ld   [bc], a                                     ; $5a89: $02
	xor  c                                           ; $5a8a: $a9
	ld   [hl], l                                     ; $5a8b: $75
	ld   h, l                                        ; $5a8c: $65
	sub  l                                           ; $5a8d: $95
	ld   sp, hl                                      ; $5a8e: $f9
	dec  c                                           ; $5a8f: $0d
	add  e                                           ; $5a90: $83
	ld   h, h                                        ; $5a91: $64
	ld   e, a                                        ; $5a92: $5f
	sbc  c                                           ; $5a93: $99
	ld   a, h                                        ; $5a94: $7c
	sub  b                                           ; $5a95: $90
	ld   l, l                                        ; $5a96: $6d
	ld   d, d                                        ; $5a97: $52
	ld   e, d                                        ; $5a98: $5a
	ld   d, d                                        ; $5a99: $52
	ld   a, c                                        ; $5a9a: $79
	ld   h, l                                        ; $5a9b: $65
	ld   [hl], h                                     ; $5a9c: $74
	ld   a, [$000d]                                  ; $5a9d: $fa $0d $00
	ld   a, [bc]                                     ; $5aa0: $0a
	ld   bc, $0906                                   ; $5aa1: $01 $06 $09
	inc  bc                                          ; $5aa4: $03
	add  d                                           ; $5aa5: $82
	halt                                             ; $5aa6: $76
	sub  b                                           ; $5aa7: $90
	sbc  [hl]                                        ; $5aa8: $9e
	ld   h, l                                        ; $5aa9: $65
	ld   a, [hl]                                     ; $5aaa: $7e
	sub  a                                           ; $5aab: $97
	ld   e, l                                        ; $5aac: $5d
	ld   h, c                                        ; $5aad: $61
	ld   h, c                                        ; $5aae: $61
	ld   [hl], l                                     ; $5aaf: $75
	dec  c                                           ; $5ab0: $0d
	inc  bc                                          ; $5ab1: $03
	ld   c, d                                        ; $5ab2: $4a
	inc  bc                                          ; $5ab3: $03
	ld   d, h                                        ; $5ab4: $54
	ld   h, l                                        ; $5ab5: $65
	ld   [hl], h                                     ; $5ab6: $74
	ld   a, b                                        ; $5ab7: $78
	ld   h, e                                        ; $5ab8: $63
	ld   d, d                                        ; $5ab9: $52
	ld   a, [$000d]                                  ; $5aba: $fa $0d $00
	ld   a, [bc]                                     ; $5abd: $0a
	inc  e                                           ; $5abe: $1c
	ld   b, $03                                      ; $5abf: $06 $03
	inc  bc                                          ; $5ac1: $03
	ld   bc, $dcc9                                   ; $5ac2: $01 $c9 $dc
	call c, $ffff                                    ; $5ac5: $dc $ff $ff
	dec  c                                           ; $5ac8: $0d
	ld   [hl], d                                     ; $5ac9: $72
	ld   d, d                                        ; $5aca: $52
	ld   [hl], h                                     ; $5acb: $74
	ld   a, e                                        ; $5acc: $7b
	ld   d, [hl]                                     ; $5acd: $56
	ld   a, b                                        ; $5ace: $78
	ld   d, b                                        ; $5acf: $50
	rst  $38                                         ; $5ad0: $ff
	rst  $38                                         ; $5ad1: $ff
	dec  c                                           ; $5ad2: $0d
	nop                                              ; $5ad3: $00
	ld   a, [bc]                                     ; $5ad4: $0a
	dec  c                                           ; $5ad5: $0d
	nop                                              ; $5ad6: $00
	nop                                              ; $5ad7: $00
	rrca                                             ; $5ad8: $0f
	nop                                              ; $5ad9: $00
	ld   bc, $1e09                                   ; $5ada: $01 $09 $1e
	nop                                              ; $5add: $00
	rrca                                             ; $5ade: $0f
	nop                                              ; $5adf: $00
	ld   bc, $6701                                   ; $5ae0: $01 $01 $67
	adc  l                                           ; $5ae3: $8d
	adc  h                                           ; $5ae4: $8c
	ld   l, c                                        ; $5ae5: $69
	and  c                                           ; $5ae6: $a1
	ld   e, d                                        ; $5ae7: $5a
	sbc  [hl]                                        ; $5ae8: $9e
	dec  c                                           ; $5ae9: $0d
	ld   [bc], a                                     ; $5aea: $02
	sub  l                                           ; $5aeb: $95
	ld   [bc], a                                     ; $5aec: $02
	sub  e                                           ; $5aed: $93
	sbc  b                                           ; $5aee: $98
	ld   a, h                                        ; $5aef: $7c
	halt                                             ; $5af0: $76
	ld   l, a                                        ; $5af1: $6f
	sub  e                                           ; $5af2: $93
	ld   d, h                                        ; $5af3: $54
	ld   [hl], l                                     ; $5af4: $75
	ld   h, a                                        ; $5af5: $67
	ld   e, c                                        ; $5af6: $59
	sub  a                                           ; $5af7: $97
	rst  $38                                         ; $5af8: $ff
	rst  $38                                         ; $5af9: $ff
	dec  c                                           ; $5afa: $0d
	nop                                              ; $5afb: $00
	ld   a, [bc]                                     ; $5afc: $0a
	inc  e                                           ; $5afd: $1c
	ld   b, $02                                      ; $5afe: $06 $02
	ld   [bc], a                                     ; $5b00: $02
	dec  e                                           ; $5b01: $1d
	ld   b, b                                        ; $5b02: $40
	ld   d, $03                                      ; $5b03: $16 $03
	ld   d, $01                                      ; $5b05: $16 $01
	ld   [bc], a                                     ; $5b07: $02
	add  hl, hl                                      ; $5b08: $29
	nop                                              ; $5b09: $00
	ld   bc, $8c72                                   ; $5b0a: $01 $72 $8c
	sub  a                                           ; $5b0d: $97
	ld   a, b                                        ; $5b0e: $78
	ld   d, d                                        ; $5b0f: $52
	and  $c5                                         ; $5b10: $e6 $c5
	rst  $38                                         ; $5b12: $ff
	rst  $38                                         ; $5b13: $ff
	dec  c                                           ; $5b14: $0d
	ld   h, [hl]                                     ; $5b15: $66
	sub  c                                           ; $5b16: $91
	ld   d, b                                        ; $5b17: $50
	sbc  [hl]                                        ; $5b18: $9e
	ld   h, e                                        ; $5b19: $63
	ld   [hl], c                                     ; $5b1a: $71
	ld   h, e                                        ; $5b1b: $63
	halt                                             ; $5b1c: $76
	inc  b                                           ; $5b1d: $04
	ld   e, $7c                                      ; $5b1e: $1e $7c
	inc  b                                           ; $5b20: $04
	ld   a, d                                        ; $5b21: $7a
	inc  bc                                          ; $5b22: $03
	ld   c, e                                        ; $5b23: $4b
	ld   a, c                                        ; $5b24: $79
	dec  c                                           ; $5b25: $0d
	ld   [bc], a                                     ; $5b26: $02
	ld   a, a                                        ; $5b27: $7f
	ld   [hl], c                                     ; $5b28: $71
	ld   [hl], h                                     ; $5b29: $74
	ld   e, e                                        ; $5b2a: $5b
	ld   a, b                                        ; $5b2b: $78
	sbc  a                                           ; $5b2c: $9f
	dec  c                                           ; $5b2d: $0d
	nop                                              ; $5b2e: $00
	ld   a, [bc]                                     ; $5b2f: $0a
	nop                                              ; $5b30: $00
	rrca                                             ; $5b31: $0f
	nop                                              ; $5b32: $00
	ld   bc, $8c01                                   ; $5b33: $01 $01 $8c
	ld   l, l                                        ; $5b36: $6d
	ld   [bc], a                                     ; $5b37: $02
	and  l                                           ; $5b38: $a5
	inc  b                                           ; $5b39: $04
	add  hl, hl                                      ; $5b3a: $29
	ld   [hl], l                                     ; $5b3b: $75
	sub  b                                           ; $5b3c: $90
	ld   d, d                                        ; $5b3d: $52
	ld   d, d                                        ; $5b3e: $52
	ld   [hl], l                                     ; $5b3f: $75
	ld   h, a                                        ; $5b40: $67
	ld   e, c                                        ; $5b41: $59
	ld   sp, hl                                      ; $5b42: $f9
	dec  c                                           ; $5b43: $0d
	nop                                              ; $5b44: $00
	ld   a, [bc]                                     ; $5b45: $0a
	inc  e                                           ; $5b46: $1c
	ld   b, $05                                      ; $5b47: $06 $05
	dec  b                                           ; $5b49: $05
	ld   bc, $9565                                   ; $5b4a: $01 $65 $95
	ld   d, h                                        ; $5b4d: $54
	ld   e, d                                        ; $5b4e: $5a
	ld   a, e                                        ; $5b4f: $7b
	ld   d, [hl]                                     ; $5b50: $56
	ld   a, b                                        ; $5b51: $78
	rst  $38                                         ; $5b52: $ff
	rst  $38                                         ; $5b53: $ff
	dec  c                                           ; $5b54: $0d
	ld   h, [hl]                                     ; $5b55: $66
	sub  c                                           ; $5b56: $91
	sbc  [hl]                                        ; $5b57: $9e
	ld   [bc], a                                     ; $5b58: $02
	and  l                                           ; $5b59: $a5
	inc  b                                           ; $5b5a: $04
	add  hl, hl                                      ; $5b5b: $29
	ld   l, [hl]                                     ; $5b5c: $6e
	ld   l, h                                        ; $5b5d: $6c
	sbc  a                                           ; $5b5e: $9f
	dec  c                                           ; $5b5f: $0d
	ld   [bc], a                                     ; $5b60: $02
	and  l                                           ; $5b61: $a5
	inc  b                                           ; $5b62: $04
	add  hl, hl                                      ; $5b63: $29
	ld   a, l                                        ; $5b64: $7d
	ld   l, a                                        ; $5b65: $6f
	sub  c                                           ; $5b66: $91
	and  c                                           ; $5b67: $a1
	halt                                             ; $5b68: $76
	ld   [bc], a                                     ; $5b69: $02
	ld   a, [de]                                     ; $5b6a: $1a
	inc  bc                                          ; $5b6b: $03
	ld   l, e                                        ; $5b6c: $6b
	ld   h, l                                        ; $5b6d: $65
	sbc  e                                           ; $5b6e: $9b
	sub  [hl]                                        ; $5b6f: $96
	ld   a, b                                        ; $5b70: $78
	sbc  a                                           ; $5b71: $9f
	dec  c                                           ; $5b72: $0d
	nop                                              ; $5b73: $00
	ld   a, [bc]                                     ; $5b74: $0a
	nop                                              ; $5b75: $00
	nop                                              ; $5b76: $00
	ld   c, $3e                                      ; $5b77: $0e $3e
	inc  e                                           ; $5b79: $1c
	inc  bc                                          ; $5b7a: $03
	inc  bc                                          ; $5b7b: $03
	inc  bc                                          ; $5b7c: $03
	ld   [bc], a                                     ; $5b7d: $02
	ld   bc, $9750                                   ; $5b7e: $01 $50 $97
	sbc  [hl]                                        ; $5b81: $9e
	ld   [$5d00], sp                                 ; $5b82: $08 $00 $5d
	and  c                                           ; $5b85: $a1
	sbc  a                                           ; $5b86: $9f
	dec  c                                           ; $5b87: $0d
	ld   [bc], a                                     ; $5b88: $02
	sub  l                                           ; $5b89: $95
	ld   [bc], a                                     ; $5b8a: $02
	sub  e                                           ; $5b8b: $93
	sbc  b                                           ; $5b8c: $98
	ld   h, d                                        ; $5b8d: $62
	ld   [bc], a                                     ; $5b8e: $02
	sub  h                                           ; $5b8f: $94
	dec  b                                           ; $5b90: $05
	rrca                                             ; $5b91: $0f
	ld   h, e                                        ; $5b92: $63
	adc  h                                           ; $5b93: $8c
	sbc  a                                           ; $5b94: $9f
	dec  c                                           ; $5b95: $0d
	nop                                              ; $5b96: $00
	ld   a, [bc]                                     ; $5b97: $0a
	rrca                                             ; $5b98: $0f
	nop                                              ; $5b99: $00
	ld   bc, $0401                                   ; $5b9a: $01 $01 $04
	ld   c, c                                        ; $5b9d: $49
	ld   a, h                                        ; $5b9e: $7c
	inc  b                                           ; $5b9f: $04
	adc  a                                           ; $5ba0: $8f
	and  b                                           ; $5ba1: $a0
	inc  b                                           ; $5ba2: $04
	ld   de, $75a1                                   ; $5ba3: $11 $a1 $75
	sbc  c                                           ; $5ba6: $99
	and  c                                           ; $5ba7: $a1
	ld   [hl], l                                     ; $5ba8: $75
	ld   h, a                                        ; $5ba9: $67
	ld   e, c                                        ; $5baa: $59
	ld   sp, hl                                      ; $5bab: $f9
	dec  c                                           ; $5bac: $0d
	nop                                              ; $5bad: $00
	ld   a, [bc]                                     ; $5bae: $0a
	inc  e                                           ; $5baf: $1c
	inc  bc                                          ; $5bb0: $03
	inc  bc                                          ; $5bb1: $03
	inc  bc                                          ; $5bb2: $03
	ld   bc, $0701                                   ; $5bb3: $01 $01 $07
	ld   h, c                                        ; $5bb6: $61
	ld   h, c                                        ; $5bb7: $61
	sbc  e                                           ; $5bb8: $9b
	ld   bc, $a008                                   ; $5bb9: $01 $08 $a0
	inc  b                                           ; $5bbc: $04
	ld   de, $75a1                                   ; $5bbd: $11 $a1 $75
	sbc  c                                           ; $5bc0: $99
	ld   a, h                                        ; $5bc1: $7c
	sbc  a                                           ; $5bc2: $9f
	dec  c                                           ; $5bc3: $0d
	nop                                              ; $5bc4: $00
	ld   a, [bc]                                     ; $5bc5: $0a
	add  hl, de                                      ; $5bc6: $19
	dec  b                                           ; $5bc7: $05
	inc  bc                                          ; $5bc8: $03
	inc  b                                           ; $5bc9: $04
	ld   c, h                                        ; $5bca: $4c
	inc  b                                           ; $5bcb: $04
	call nc, $cc05                                   ; $5bcc: $d4 $05 $cc
	inc  bc                                          ; $5bcf: $03
	cp   a                                           ; $5bd0: $bf
	ld   [hl], l                                     ; $5bd1: $75
	ld   h, a                                        ; $5bd2: $67
	ld   a, e                                        ; $5bd3: $7b
	nop                                              ; $5bd4: $00
	nop                                              ; $5bd5: $00
	dec  b                                           ; $5bd6: $05
	ld   l, e                                        ; $5bd7: $6b
	inc  bc                                          ; $5bd8: $03
	ld   h, e                                        ; $5bd9: $63
	ld   b, $31                                      ; $5bda: $06 $31
	ld   b, $07                                      ; $5bdc: $06 $07
	dec  b                                           ; $5bde: $05
	ld   [hl-], a                                    ; $5bdf: $32
	ld   [hl], l                                     ; $5be0: $75
	ld   h, a                                        ; $5be1: $67
	ld   a, e                                        ; $5be2: $7b
	nop                                              ; $5be3: $00
	ld   bc, $5a03                                   ; $5be4: $01 $03 $5a
	inc  bc                                          ; $5be7: $03
	cp   e                                           ; $5be8: $bb
	dec  b                                           ; $5be9: $05
	ld   hl, sp+$05                                  ; $5bea: $f8 $05
	sbc  $75                                         ; $5bec: $de $75
	ld   h, a                                        ; $5bee: $67
	ld   a, e                                        ; $5bef: $7b
	nop                                              ; $5bf0: $00
	ld   [bc], a                                     ; $5bf1: $02
	rlca                                             ; $5bf2: $07
	sbc  c                                           ; $5bf3: $99
	nop                                              ; $5bf4: $00
	ld   [bc], a                                     ; $5bf5: $02
	inc  bc                                          ; $5bf6: $03
	ld   bc, $2000                                   ; $5bf7: $01 $00 $20
	nop                                              ; $5bfa: $00
	rlca                                             ; $5bfb: $07
	or   $00                                         ; $5bfc: $f6 $00
	ld   [bc], a                                     ; $5bfe: $02
	inc  bc                                          ; $5bff: $03
	ld   bc, $2001                                   ; $5c00: $01 $01 $20
	nop                                              ; $5c03: $00
	rlca                                             ; $5c04: $07
	ld   c, $01                                      ; $5c05: $0e $01
	ld   [bc], a                                     ; $5c07: $02
	inc  bc                                          ; $5c08: $03
	ld   bc, $2002                                   ; $5c09: $01 $02 $20
	nop                                              ; $5c0c: $00
	ld   b, $5b                                      ; $5c0d: $06 $5b
	ld   bc, $000f                                   ; $5c0f: $01 $0f $00
	ld   bc, $0401                                   ; $5c12: $01 $01 $04
	ld   c, h                                        ; $5c15: $4c
	inc  b                                           ; $5c16: $04
	call nc, $cc05                                   ; $5c17: $d4 $05 $cc
	inc  bc                                          ; $5c1a: $03
	cp   a                                           ; $5c1b: $bf
	ld   [hl], l                                     ; $5c1c: $75
	ld   h, a                                        ; $5c1d: $67
	ld   a, e                                        ; $5c1e: $7b
	sbc  a                                           ; $5c1f: $9f
	dec  c                                           ; $5c20: $0d
	nop                                              ; $5c21: $00
	ld   a, [bc]                                     ; $5c22: $0a
	inc  e                                           ; $5c23: $1c
	inc  bc                                          ; $5c24: $03
	inc  bc                                          ; $5c25: $03
	inc  bc                                          ; $5c26: $03
	dec  e                                           ; $5c27: $1d
	ld   b, b                                        ; $5c28: $40
	inc  de                                          ; $5c29: $13
	inc  bc                                          ; $5c2a: $03
	inc  de                                          ; $5c2b: $13
	ld   bc, $2802                                   ; $5c2c: $01 $02 $28
	nop                                              ; $5c2f: $00
	ld   bc, $546b                                   ; $5c30: $01 $6b $54
	sub  [hl]                                        ; $5c33: $96
	sbc  [hl]                                        ; $5c34: $9e
	sub  [hl]                                        ; $5c35: $96
	ld   e, l                                        ; $5c36: $5d
	inc  b                                           ; $5c37: $04
	dec  hl                                          ; $5c38: $2b
	ld   [hl], c                                     ; $5c39: $71
	ld   [hl], h                                     ; $5c3a: $74
	sbc  c                                           ; $5c3b: $99
	sbc  l                                           ; $5c3c: $9d
	ld   a, e                                        ; $5c3d: $7b
	sbc  a                                           ; $5c3e: $9f
	dec  c                                           ; $5c3f: $0d
	ld   [bc], a                                     ; $5c40: $02
	scf                                              ; $5c41: $37
	inc  bc                                          ; $5c42: $03
	ld   [hl], l                                     ; $5c43: $75
	ld   l, [hl]                                     ; $5c44: $6e
	sbc  l                                           ; $5c45: $9d
	rst  $38                                         ; $5c46: $ff
	rst  $38                                         ; $5c47: $ff
	dec  c                                           ; $5c48: $0d
	nop                                              ; $5c49: $00
	ld   a, [bc]                                     ; $5c4a: $0a
	ld   bc, $9e63                                   ; $5c4b: $01 $63 $9e
	ld   e, b                                        ; $5c4e: $58
	ld   h, l                                        ; $5c4f: $65
	sub  c                                           ; $5c50: $91
	add  a                                           ; $5c51: $87
	sbc  b                                           ; $5c52: $98
	ld   a, l                                        ; $5c53: $7d
	inc  bc                                          ; $5c54: $03
	ld   a, [hl]                                     ; $5c55: $7e
	sbc  l                                           ; $5c56: $9d
	sbc  b                                           ; $5c57: $98
	ld   a, c                                        ; $5c58: $79
	ld   h, l                                        ; $5c59: $65
	ld   [hl], h                                     ; $5c5a: $74
	dec  c                                           ; $5c5b: $0d
	ld   [bc], a                                     ; $5c5c: $02
	sub  l                                           ; $5c5d: $95
	ld   [bc], a                                     ; $5c5e: $02
	sub  e                                           ; $5c5f: $93
	sbc  b                                           ; $5c60: $98
	and  b                                           ; $5c61: $a0
	ld   [bc], a                                     ; $5c62: $02
	ei                                               ; $5c63: $fb
	ld   e, a                                        ; $5c64: $5f
	ld   a, b                                        ; $5c65: $78
	ld   h, e                                        ; $5c66: $63
	ld   d, d                                        ; $5c67: $52
	sbc  a                                           ; $5c68: $9f
	dec  c                                           ; $5c69: $0d
	nop                                              ; $5c6a: $00
	ld   a, [bc]                                     ; $5c6b: $0a
	nop                                              ; $5c6c: $00
	rrca                                             ; $5c6d: $0f
	nop                                              ; $5c6e: $00
	ld   bc, $0501                                   ; $5c6f: $01 $01 $05
	ld   l, e                                        ; $5c72: $6b
	inc  bc                                          ; $5c73: $03
	ld   h, e                                        ; $5c74: $63
	ld   b, $31                                      ; $5c75: $06 $31
	ld   b, $07                                      ; $5c77: $06 $07
	dec  b                                           ; $5c79: $05
	ld   [hl-], a                                    ; $5c7a: $32
	ld   [hl], l                                     ; $5c7b: $75
	ld   h, a                                        ; $5c7c: $67
	ld   a, e                                        ; $5c7d: $7b
	sbc  a                                           ; $5c7e: $9f
	dec  c                                           ; $5c7f: $0d
	nop                                              ; $5c80: $00
	ld   a, [bc]                                     ; $5c81: $0a
	ld   b, $24                                      ; $5c82: $06 $24
	ld   bc, $000f                                   ; $5c84: $01 $0f $00
	ld   bc, $0301                                   ; $5c87: $01 $01 $03
	ld   e, d                                        ; $5c8a: $5a
	inc  bc                                          ; $5c8b: $03
	cp   e                                           ; $5c8c: $bb
	dec  b                                           ; $5c8d: $05
	ld   hl, sp+$05                                  ; $5c8e: $f8 $05
	sbc  $75                                         ; $5c90: $de $75
	ld   h, a                                        ; $5c92: $67
	ld   a, e                                        ; $5c93: $7b
	sbc  a                                           ; $5c94: $9f
	dec  c                                           ; $5c95: $0d
	nop                                              ; $5c96: $00
	ld   a, [bc]                                     ; $5c97: $0a
	ld   b, $24                                      ; $5c98: $06 $24
	ld   bc, $031c                                   ; $5c9a: $01 $1c $03
	ld   [bc], a                                     ; $5c9d: $02
	ld   [bc], a                                     ; $5c9e: $02
	dec  e                                           ; $5c9f: $1d
	ld   b, b                                        ; $5ca0: $40
	inc  de                                          ; $5ca1: $13
	inc  bc                                          ; $5ca2: $03
	inc  de                                          ; $5ca3: $13
	ld   bc, $2902                                   ; $5ca4: $01 $02 $29
	nop                                              ; $5ca7: $00
	ld   bc, $5a6f                                   ; $5ca8: $01 $6f $5a
	ld   d, h                                        ; $5cab: $54
	sbc  l                                           ; $5cac: $9d
	rst  $38                                         ; $5cad: $ff
	rst  $38                                         ; $5cae: $ff
	inc  b                                           ; $5caf: $04
	ld   c, h                                        ; $5cb0: $4c
	inc  b                                           ; $5cb1: $04
	call nc, $cc05                                   ; $5cb2: $d4 $05 $cc
	inc  bc                                          ; $5cb5: $03
	cp   a                                           ; $5cb6: $bf
	sub  [hl]                                        ; $5cb7: $96
	sbc  a                                           ; $5cb8: $9f
	dec  c                                           ; $5cb9: $0d
	inc  b                                           ; $5cba: $04
	dec  hl                                          ; $5cbb: $2b
	ld   [hl], c                                     ; $5cbc: $71
	ld   l, l                                        ; $5cbd: $6d
	ld   e, c                                        ; $5cbe: $59
	add  h                                           ; $5cbf: $84
	sbc  b                                           ; $5cc0: $98
	ld   a, l                                        ; $5cc1: $7d
	dec  c                                           ; $5cc2: $0d
	ld   [bc], a                                     ; $5cc3: $02
	scf                                              ; $5cc4: $37
	inc  bc                                          ; $5cc5: $03
	ld   [hl], l                                     ; $5cc6: $75
	ld   [hl], l                                     ; $5cc7: $75
	ld   e, e                                        ; $5cc8: $5b
	ld   a, b                                        ; $5cc9: $78
	ld   d, d                                        ; $5cca: $52
	sbc  l                                           ; $5ccb: $9d
	ld   a, e                                        ; $5ccc: $7b
	rst  $38                                         ; $5ccd: $ff
	rst  $38                                         ; $5cce: $ff
	dec  c                                           ; $5ccf: $0d
	nop                                              ; $5cd0: $00
	ld   a, [bc]                                     ; $5cd1: $0a
	inc  e                                           ; $5cd2: $1c
	inc  bc                                          ; $5cd3: $03
	nop                                              ; $5cd4: $00
	nop                                              ; $5cd5: $00
	ld   bc, $9e63                                   ; $5cd6: $01 $63 $9e
	ld   [bc], a                                     ; $5cd9: $02
	sub  l                                           ; $5cda: $95
	ld   [bc], a                                     ; $5cdb: $02
	sub  e                                           ; $5cdc: $93
	sbc  b                                           ; $5cdd: $98
	and  b                                           ; $5cde: $a0
	ld   [bc], a                                     ; $5cdf: $02
	ei                                               ; $5ce0: $fb
	ld   e, a                                        ; $5ce1: $5f
	ld   a, b                                        ; $5ce2: $78
	ld   h, e                                        ; $5ce3: $63
	ld   d, d                                        ; $5ce4: $52
	sbc  a                                           ; $5ce5: $9f
	dec  c                                           ; $5ce6: $0d
	nop                                              ; $5ce7: $00
	ld   a, [bc]                                     ; $5ce8: $0a
	nop                                              ; $5ce9: $00
	nop                                              ; $5cea: $00
	ld   c, $4a                                      ; $5ceb: $0e $4a
	rrca                                             ; $5ced: $0f
	nop                                              ; $5cee: $00
	ld   bc, $0702                                   ; $5cef: $01 $02 $07
	sub  c                                           ; $5cf2: $91
	ld   bc, $8004                                   ; $5cf3: $01 $04 $80
	ld   sp, $ff01                                   ; $5cf6: $31 $01 $ff
	jr   nz, jr_052_5cfd                             ; $5cf9: $20 $02

	nop                                              ; $5cfb: $00
	inc  bc                                          ; $5cfc: $03

jr_052_5cfd:
	ld   b, c                                        ; $5cfd: $41
	ld   bc, $2801                                   ; $5cfe: $01 $01 $28
	jr   nz, jr_052_5d1f                             ; $5d01: $20 $1c

	nop                                              ; $5d03: $00
	inc  d                                           ; $5d04: $14
	ld   b, $01                                      ; $5d05: $06 $01
	ld   bc, $a5a3                                   ; $5d07: $01 $a3 $a5
	db   $ec                                         ; $5d0a: $ec
	cp   d                                           ; $5d0b: $ba
	sbc  [hl]                                        ; $5d0c: $9e
	dec  c                                           ; $5d0d: $0d
	ld   l, a                                        ; $5d0e: $6f
	sub  l                                           ; $5d0f: $95
	ld   [hl], c                                     ; $5d10: $71
	halt                                             ; $5d11: $76
	ld   d, d                                        ; $5d12: $52
	ld   d, d                                        ; $5d13: $52
	ld   e, c                                        ; $5d14: $59
	ld   a, b                                        ; $5d15: $78
	ld   sp, hl                                      ; $5d16: $f9
	dec  c                                           ; $5d17: $0d
	nop                                              ; $5d18: $00
	ld   a, [bc]                                     ; $5d19: $0a
	ld   bc, $ffff                                   ; $5d1a: $01 $ff $ff
	rst  $38                                         ; $5d1d: $ff
	rst  $38                                         ; $5d1e: $ff

jr_052_5d1f:
	dec  c                                           ; $5d1f: $0d
	nop                                              ; $5d20: $00
	ld   a, [bc]                                     ; $5d21: $0a
	inc  d                                           ; $5d22: $14
	ld   a, [bc]                                     ; $5d23: $0a
	ld   bc, $0101                                   ; $5d24: $01 $01 $01
	inc  bc                                          ; $5d27: $03
	inc  b                                           ; $5d28: $04
	ld   b, d                                        ; $5d29: $42
	ld   [hl], h                                     ; $5d2a: $74
	sbc  c                                           ; $5d2b: $99
	ld   a, h                                        ; $5d2c: $7c
	ld   e, c                                        ; $5d2d: $59
	ld   a, b                                        ; $5d2e: $78
	rst  $38                                         ; $5d2f: $ff
	rst  $38                                         ; $5d30: $ff
	ld   sp, hl                                      ; $5d31: $f9
	ld   bc, $0d04                                   ; $5d32: $01 $04 $0d
	nop                                              ; $5d35: $00
	ld   a, [bc]                                     ; $5d36: $0a
	ld   c, $57                                      ; $5d37: $0e $57
	add  hl, bc                                      ; $5d39: $09
	ld   d, b                                        ; $5d3a: $50
	ld   d, $13                                      ; $5d3b: $16 $13
	rrca                                             ; $5d3d: $0f
	inc  b                                           ; $5d3e: $04
	ld   hl, $6701                                   ; $5d3f: $21 $01 $67
	ei                                               ; $5d42: $fb
	ld   h, a                                        ; $5d43: $67
	ei                                               ; $5d44: $fb
	rst  $38                                         ; $5d45: $ff
	rst  $38                                         ; $5d46: $ff
	dec  c                                           ; $5d47: $0d
	nop                                              ; $5d48: $00
	ld   a, [bc]                                     ; $5d49: $0a
	rrca                                             ; $5d4a: $0f
	nop                                              ; $5d4b: $00
	ld   bc, $0101                                   ; $5d4c: $01 $01 $01
	inc  bc                                          ; $5d4f: $03
	sub  d                                           ; $5d50: $92
	ld   [hl], c                                     ; $5d51: $71
	ld   a, a                                        ; $5d52: $7f
	sbc  b                                           ; $5d53: $98
	inc  b                                           ; $5d54: $04
	ld   b, d                                        ; $5d55: $42
	ld   [hl], h                                     ; $5d56: $74
	sbc  c                                           ; $5d57: $99
	rst  $38                                         ; $5d58: $ff
	rst  $38                                         ; $5d59: $ff
	ld   bc, $0d04                                   ; $5d5a: $01 $04 $0d
	nop                                              ; $5d5d: $00
	ld   a, [bc]                                     ; $5d5e: $0a
	add  hl, de                                      ; $5d5f: $19
	dec  b                                           ; $5d60: $05
	ld   [bc], a                                     ; $5d61: $02
	ld   l, e                                        ; $5d62: $6b
	ld   [hl], c                                     ; $5d63: $71
	halt                                             ; $5d64: $76
	ld   h, l                                        ; $5d65: $65
	ld   [hl], h                                     ; $5d66: $74
	ld   e, b                                        ; $5d67: $58
	ld   e, l                                        ; $5d68: $5d
	nop                                              ; $5d69: $00
	nop                                              ; $5d6a: $00
	ld   [bc], a                                     ; $5d6b: $02
	ld   e, d                                        ; $5d6c: $5a
	ld   h, c                                        ; $5d6d: $61
	ld   h, l                                        ; $5d6e: $65
	ld   [hl], h                                     ; $5d6f: $74
	adc  l                                           ; $5d70: $8d
	sbc  c                                           ; $5d71: $99
	nop                                              ; $5d72: $00
	ld   bc, $9e07                                   ; $5d73: $01 $07 $9e
	nop                                              ; $5d76: $00
	ld   [bc], a                                     ; $5d77: $02
	inc  bc                                          ; $5d78: $03
	ld   bc, $2000                                   ; $5d79: $01 $00 $20
	nop                                              ; $5d7c: $00
	rlca                                             ; $5d7d: $07
	or   h                                           ; $5d7e: $b4
	nop                                              ; $5d7f: $00
	ld   [bc], a                                     ; $5d80: $02
	inc  bc                                          ; $5d81: $03
	ld   bc, $2001                                   ; $5d82: $01 $01 $20
	nop                                              ; $5d85: $00
	ld   b, $26                                      ; $5d86: $06 $26
	ld   bc, $000f                                   ; $5d88: $01 $0f $00
	ld   bc, $0101                                   ; $5d8b: $01 $01 $01
	inc  bc                                          ; $5d8e: $03
	ld   l, e                                        ; $5d8f: $6b
	ld   [hl], c                                     ; $5d90: $71
	halt                                             ; $5d91: $76
	ld   h, l                                        ; $5d92: $65
	ld   [hl], h                                     ; $5d93: $74
	ld   e, b                                        ; $5d94: $58
	ld   h, c                                        ; $5d95: $61
	ld   d, h                                        ; $5d96: $54
	rst  $38                                         ; $5d97: $ff
	rst  $38                                         ; $5d98: $ff
	ld   bc, $0d04                                   ; $5d99: $01 $04 $0d
	nop                                              ; $5d9c: $00
	ld   a, [bc]                                     ; $5d9d: $0a
	nop                                              ; $5d9e: $00
	rrca                                             ; $5d9f: $0f
	nop                                              ; $5da0: $00
	ld   bc, $a301                                   ; $5da1: $01 $01 $a3
	and  l                                           ; $5da4: $a5
	db   $ec                                         ; $5da5: $ec
	cp   d                                           ; $5da6: $ba
	ld   a, [$a30d]                                  ; $5da7: $fa $0d $a3
	and  l                                           ; $5daa: $a5
	db   $ec                                         ; $5dab: $ec
	cp   d                                           ; $5dac: $ba
	ld   a, [$a30d]                                  ; $5dad: $fa $0d $a3
	and  l                                           ; $5db0: $a5
	db   $ec                                         ; $5db1: $ec
	cp   d                                           ; $5db2: $ba
	ei                                               ; $5db3: $fb
	ld   [hl], c                                     ; $5db4: $71
	ld   a, [$000d]                                  ; $5db5: $fa $0d $00
	ld   a, [bc]                                     ; $5db8: $0a
	dec  c                                           ; $5db9: $0d
	nop                                              ; $5dba: $00
	nop                                              ; $5dbb: $00
	ld   c, $57                                      ; $5dbc: $0e $57
	inc  e                                           ; $5dbe: $1c
	inc  b                                           ; $5dbf: $04
	ld   b, e                                        ; $5dc0: $43
	dec  de                                          ; $5dc1: $1b
	ld   bc, $7983                                   ; $5dc2: $01 $83 $79
	sub  e                                           ; $5dc5: $93
	rst  $38                                         ; $5dc6: $ff
	rst  $38                                         ; $5dc7: $ff
	dec  c                                           ; $5dc8: $0d
	ld   a, b                                        ; $5dc9: $78
	ld   c, a                                        ; $5dca: $4f
	ld   a, c                                        ; $5dcb: $79
	rst  $38                                         ; $5dcc: $ff
	rst  $38                                         ; $5dcd: $ff
	ld   sp, hl                                      ; $5dce: $f9
	dec  c                                           ; $5dcf: $0d
	nop                                              ; $5dd0: $00
	ld   a, [bc]                                     ; $5dd1: $0a
	rrca                                             ; $5dd2: $0f
	nop                                              ; $5dd3: $00
	ld   bc, $5801                                   ; $5dd4: $01 $01 $58
	ld   a, l                                        ; $5dd7: $7d
	sub  [hl]                                        ; $5dd8: $96
	ld   d, h                                        ; $5dd9: $54
	sbc  [hl]                                        ; $5dda: $9e
	and  e                                           ; $5ddb: $a3
	and  l                                           ; $5ddc: $a5
	db   $ec                                         ; $5ddd: $ec
	cp   d                                           ; $5dde: $ba
	sbc  a                                           ; $5ddf: $9f
	dec  c                                           ; $5de0: $0d
	nop                                              ; $5de1: $00
	ld   a, [bc]                                     ; $5de2: $0a
	inc  e                                           ; $5de3: $1c
	inc  b                                           ; $5de4: $04
	ld   b, a                                        ; $5de5: $47
	rra                                              ; $5de6: $1f
	dec  e                                           ; $5de7: $1d
	ld   b, b                                        ; $5de8: $40
	inc  d                                           ; $5de9: $14
	inc  bc                                          ; $5dea: $03
	inc  d                                           ; $5deb: $14
	ld   bc, $2903                                   ; $5dec: $01 $03 $29
	nop                                              ; $5def: $00
	ld   bc, $a5a3                                   ; $5df0: $01 $a3 $a5
	db   $ec                                         ; $5df3: $ec
	cp   d                                           ; $5df4: $ba
	sbc  [hl]                                        ; $5df5: $9e
	adc  h                                           ; $5df6: $8c
	ld   l, [hl]                                     ; $5df7: $6e
	ld   a, e                                        ; $5df8: $7b
	adc  [hl]                                        ; $5df9: $8e
	ld   d, d                                        ; $5dfa: $52
	ld   a, h                                        ; $5dfb: $7c
	rst  $38                                         ; $5dfc: $ff
	rst  $38                                         ; $5dfd: $ff
	dec  c                                           ; $5dfe: $0d
	ld   [hl], l                                     ; $5dff: $75
	ld   [hl], h                                     ; $5e00: $74
	ld   [hl], c                                     ; $5e01: $71
	ld   [hl], h                                     ; $5e02: $74
	ld   d, l                                        ; $5e03: $55
	rst  $38                                         ; $5e04: $ff
	rst  $38                                         ; $5e05: $ff
	ld   [hl], l                                     ; $5e06: $75
	ld   [hl], h                                     ; $5e07: $74
	ld   [hl], c                                     ; $5e08: $71
	ld   [hl], h                                     ; $5e09: $74
	ld   d, l                                        ; $5e0a: $55
	rst  $38                                         ; $5e0b: $ff
	rst  $38                                         ; $5e0c: $ff
	dec  c                                           ; $5e0d: $0d
	nop                                              ; $5e0e: $00
	ld   a, [bc]                                     ; $5e0f: $0a
	nop                                              ; $5e10: $00
	dec  c                                           ; $5e11: $0d
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	ld   c, $57                                      ; $5e14: $0e $57
	inc  e                                           ; $5e16: $1c
	inc  b                                           ; $5e17: $04
	ld   b, l                                        ; $5e18: $45
	dec  e                                           ; $5e19: $1d
	ld   bc, $9e54                                   ; $5e1a: $01 $54 $9e
	ld   d, h                                        ; $5e1d: $54
	ei                                               ; $5e1e: $fb
	and  c                                           ; $5e1f: $a1
	rst  $38                                         ; $5e20: $ff
	rst  $38                                         ; $5e21: $ff
	dec  c                                           ; $5e22: $0d
	nop                                              ; $5e23: $00
	ld   a, [bc]                                     ; $5e24: $0a
	inc  c                                           ; $5e25: $0c
	ld   b, $0f                                      ; $5e26: $06 $0f
	nop                                              ; $5e28: $00
	ld   bc, $5401                                   ; $5e29: $01 $01 $54
	sbc  l                                           ; $5e2c: $9d
	ld   [hl], c                                     ; $5e2d: $71
	ld   a, [$000d]                                  ; $5e2e: $fa $0d $00
	ld   a, [bc]                                     ; $5e31: $0a
	ld   sp, $2040                                   ; $5e32: $31 $40 $20
	inc  bc                                          ; $5e35: $03
	jr   nz, jr_052_5e39                             ; $5e36: $20 $01

	ld   [hl-], a                                    ; $5e38: $32

jr_052_5e39:
	add  hl, hl                                      ; $5e39: $29
	nop                                              ; $5e3a: $00
	rrca                                             ; $5e3b: $0f
	inc  b                                           ; $5e3c: $04
	dec  e                                           ; $5e3d: $1d
	add  hl, bc                                      ; $5e3e: $09
	nop                                              ; $5e3f: $00
	ld   bc, $ffff                                   ; $5e40: $01 $ff $ff
	rst  $38                                         ; $5e43: $ff
	ldh  [c], a                                      ; $5e44: $e2
	call z, $ffe5                                    ; $5e45: $cc $e5 $ff
	rst  $38                                         ; $5e48: $ff
	rst  $38                                         ; $5e49: $ff
	dec  c                                           ; $5e4a: $0d
	nop                                              ; $5e4b: $00
	ld   a, [bc]                                     ; $5e4c: $0a
	dec  c                                           ; $5e4d: $0d
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	rrca                                             ; $5e50: $0f
	inc  b                                           ; $5e51: $04
	ld   hl, $6701                                   ; $5e52: $21 $01 $67
	ei                                               ; $5e55: $fb
	ld   h, a                                        ; $5e56: $67
	ei                                               ; $5e57: $fb
	rst  $38                                         ; $5e58: $ff
	rst  $38                                         ; $5e59: $ff
	rst  $38                                         ; $5e5a: $ff
	rst  $38                                         ; $5e5b: $ff
	rst  $38                                         ; $5e5c: $ff
	dec  c                                           ; $5e5d: $0d
	nop                                              ; $5e5e: $00
	ld   a, [bc]                                     ; $5e5f: $0a
	rrca                                             ; $5e60: $0f
	nop                                              ; $5e61: $00
	ld   bc, $7b01                                   ; $5e62: $01 $01 $7b
	sbc  [hl]                                        ; $5e65: $9e
	ld   a, e                                        ; $5e66: $7b
	adc  d                                           ; $5e67: $8a
	ld   e, a                                        ; $5e68: $5f
	ld   l, l                                        ; $5e69: $6d
	ld   a, h                                        ; $5e6a: $7c
	ld   e, c                                        ; $5e6b: $59
	rst  $38                                         ; $5e6c: $ff
	rst  $38                                         ; $5e6d: $ff
	ld   sp, hl                                      ; $5e6e: $f9
	dec  c                                           ; $5e6f: $0d
	ld   h, l                                        ; $5e70: $65
	sbc  [hl]                                        ; $5e71: $9e
	ld   h, l                                        ; $5e72: $65
	add  c                                           ; $5e73: $81
	sbc  d                                           ; $5e74: $9a
	ld   l, l                                        ; $5e75: $6d
	rst  $38                                         ; $5e76: $ff
	rst  $38                                         ; $5e77: $ff
	dec  c                                           ; $5e78: $0d
	nop                                              ; $5e79: $00
	ld   a, [bc]                                     ; $5e7a: $0a
	nop                                              ; $5e7b: $00
	rrca                                             ; $5e7c: $0f
	nop                                              ; $5e7d: $00
	ld   bc, $0614                                   ; $5e7e: $01 $14 $06
	ld   bc, $a301                                   ; $5e81: $01 $01 $a3
	and  l                                           ; $5e84: $a5
	db   $ec                                         ; $5e85: $ec
	cp   d                                           ; $5e86: $ba
	sbc  [hl]                                        ; $5e87: $9e
	dec  c                                           ; $5e88: $0d
	ld   l, a                                        ; $5e89: $6f
	sub  l                                           ; $5e8a: $95
	ld   [hl], c                                     ; $5e8b: $71
	halt                                             ; $5e8c: $76
	ld   d, d                                        ; $5e8d: $52
	ld   d, d                                        ; $5e8e: $52
	ld   e, c                                        ; $5e8f: $59
	ld   a, b                                        ; $5e90: $78
	ld   sp, hl                                      ; $5e91: $f9
	dec  c                                           ; $5e92: $0d
	nop                                              ; $5e93: $00
	ld   a, [bc]                                     ; $5e94: $0a
	inc  d                                           ; $5e95: $14
	ld   a, [bc]                                     ; $5e96: $0a
	ld   bc, $1316                                   ; $5e97: $01 $16 $13
	rrca                                             ; $5e9a: $0f
	inc  b                                           ; $5e9b: $04
	ld   hl, $ff01                                   ; $5e9c: $21 $01 $ff
	rst  $38                                         ; $5e9f: $ff
	rst  $38                                         ; $5ea0: $ff
	rst  $38                                         ; $5ea1: $ff
	rst  $38                                         ; $5ea2: $ff
	rst  $38                                         ; $5ea3: $ff
	rst  $38                                         ; $5ea4: $ff
	rst  $38                                         ; $5ea5: $ff
	dec  c                                           ; $5ea6: $0d
	nop                                              ; $5ea7: $00
	ld   a, [bc]                                     ; $5ea8: $0a
	rrca                                             ; $5ea9: $0f
	nop                                              ; $5eaa: $00
	ld   bc, $0101                                   ; $5eab: $01 $01 $01
	inc  bc                                          ; $5eae: $03
	inc  b                                           ; $5eaf: $04
	ld   b, d                                        ; $5eb0: $42
	ld   [hl], h                                     ; $5eb1: $74
	sbc  c                                           ; $5eb2: $99
	ld   a, h                                        ; $5eb3: $7c
	ld   e, c                                        ; $5eb4: $59
	ld   sp, hl                                      ; $5eb5: $f9
	rst  $38                                         ; $5eb6: $ff
	rst  $38                                         ; $5eb7: $ff
	ld   bc, $0d04                                   ; $5eb8: $01 $04 $0d
	nop                                              ; $5ebb: $00
	ld   a, [bc]                                     ; $5ebc: $0a
	rrca                                             ; $5ebd: $0f
	inc  b                                           ; $5ebe: $04
	ld   hl, $ff01                                   ; $5ebf: $21 $01 $ff
	rst  $38                                         ; $5ec2: $ff
	ld   l, [hl]                                     ; $5ec3: $6e
	adc  a                                           ; $5ec4: $8f
	ld   l, [hl]                                     ; $5ec5: $6e
	sub  [hl]                                        ; $5ec6: $96
	ld   h, c                                        ; $5ec7: $61
	ld   d, h                                        ; $5ec8: $54
	sub  a                                           ; $5ec9: $97
	and  c                                           ; $5eca: $a1
	sbc  a                                           ; $5ecb: $9f
	dec  c                                           ; $5ecc: $0d
	ld   l, a                                        ; $5ecd: $6f
	ld   d, d                                        ; $5ece: $52
	ld   [bc], a                                     ; $5ecf: $02
	inc  de                                          ; $5ed0: $13
	ld   l, a                                        ; $5ed1: $6f
	sub  c                                           ; $5ed2: $91
	and  c                                           ; $5ed3: $a1
	ld   e, d                                        ; $5ed4: $5a
	sbc  [hl]                                        ; $5ed5: $9e
	ld   a, [hl]                                     ; $5ed6: $7e
	ld   e, l                                        ; $5ed7: $5d
	ld   a, l                                        ; $5ed8: $7d
	ld   [hl], d                                     ; $5ed9: $72
	dec  c                                           ; $5eda: $0d
	ld   h, l                                        ; $5edb: $65
	ld   l, a                                        ; $5edc: $6f
	sub  c                                           ; $5edd: $91
	ld   [hl], c                                     ; $5ede: $71
	ld   l, l                                        ; $5edf: $6d
	sub  [hl]                                        ; $5ee0: $96
	rst  $38                                         ; $5ee1: $ff
	rst  $38                                         ; $5ee2: $ff
	dec  c                                           ; $5ee3: $0d
	nop                                              ; $5ee4: $00
	ld   a, [bc]                                     ; $5ee5: $0a
	rrca                                             ; $5ee6: $0f
	nop                                              ; $5ee7: $00
	ld   bc, $0101                                   ; $5ee8: $01 $01 $01
	inc  bc                                          ; $5eeb: $03
	xor  a                                           ; $5eec: $af
	or   b                                           ; $5eed: $b0
	call nz, $01fa                                   ; $5eee: $c4 $fa $01
	inc  b                                           ; $5ef1: $04
	dec  c                                           ; $5ef2: $0d
	nop                                              ; $5ef3: $00
	ld   a, [bc]                                     ; $5ef4: $0a
	rrca                                             ; $5ef5: $0f
	inc  b                                           ; $5ef6: $04
	ld   hl, $6701                                   ; $5ef7: $21 $01 $67
	ei                                               ; $5efa: $fb
	ld   h, a                                        ; $5efb: $67
	ei                                               ; $5efc: $fb
	rst  $38                                         ; $5efd: $ff
	rst  $38                                         ; $5efe: $ff
	dec  c                                           ; $5eff: $0d
	adc  [hl]                                        ; $5f00: $8e
	ld   a, c                                        ; $5f01: $79
	sub  c                                           ; $5f02: $91
	adc  [hl]                                        ; $5f03: $8e
	ld   a, c                                        ; $5f04: $79
	sub  c                                           ; $5f05: $91
	rst  $38                                         ; $5f06: $ff
	rst  $38                                         ; $5f07: $ff
	dec  c                                           ; $5f08: $0d
	nop                                              ; $5f09: $00
	ld   a, [bc]                                     ; $5f0a: $0a
	rrca                                             ; $5f0b: $0f
	nop                                              ; $5f0c: $00
	ld   bc, $0101                                   ; $5f0d: $01 $01 $01
	inc  bc                                          ; $5f10: $03
	ld   a, b                                        ; $5f11: $78
	and  c                                           ; $5f12: $a1
	ld   l, [hl]                                     ; $5f13: $6e
	sbc  [hl]                                        ; $5f14: $9e
	inc  b                                           ; $5f15: $04
	ld   b, d                                        ; $5f16: $42
	ld   [bc], a                                     ; $5f17: $02
	sbc  l                                           ; $5f18: $9d
	ld   e, c                                        ; $5f19: $59
	rst  $38                                         ; $5f1a: $ff
	rst  $38                                         ; $5f1b: $ff
	ld   bc, $0d04                                   ; $5f1c: $01 $04 $0d
	nop                                              ; $5f1f: $00
	ld   a, [bc]                                     ; $5f20: $0a
	add  hl, de                                      ; $5f21: $19
	dec  b                                           ; $5f22: $05
	ld   [bc], a                                     ; $5f23: $02
	ld   l, e                                        ; $5f24: $6b
	ld   [hl], c                                     ; $5f25: $71
	halt                                             ; $5f26: $76
	ld   h, l                                        ; $5f27: $65
	ld   [hl], h                                     ; $5f28: $74
	ld   e, b                                        ; $5f29: $58
	ld   e, l                                        ; $5f2a: $5d
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	ld   [bc], a                                     ; $5f2d: $02
	ld   e, d                                        ; $5f2e: $5a
	ld   h, c                                        ; $5f2f: $61
	ld   h, l                                        ; $5f30: $65
	ld   [hl], h                                     ; $5f31: $74
	adc  l                                           ; $5f32: $8d
	sbc  c                                           ; $5f33: $99
	nop                                              ; $5f34: $00
	ld   bc, $6007                                   ; $5f35: $01 $07 $60
	ld   [bc], a                                     ; $5f38: $02
	ld   [bc], a                                     ; $5f39: $02
	inc  bc                                          ; $5f3a: $03
	ld   bc, $2000                                   ; $5f3b: $01 $00 $20
	nop                                              ; $5f3e: $00
	rlca                                             ; $5f3f: $07
	halt                                             ; $5f40: $76
	ld   [bc], a                                     ; $5f41: $02
	ld   [bc], a                                     ; $5f42: $02
	inc  bc                                          ; $5f43: $03
	ld   bc, $2001                                   ; $5f44: $01 $01 $20
	nop                                              ; $5f47: $00
	ld   b, $e8                                      ; $5f48: $06 $e8
	ld   [bc], a                                     ; $5f4a: $02
	rrca                                             ; $5f4b: $0f
	nop                                              ; $5f4c: $00
	ld   bc, $0101                                   ; $5f4d: $01 $01 $01
	inc  bc                                          ; $5f50: $03
	ld   l, e                                        ; $5f51: $6b
	ld   [hl], c                                     ; $5f52: $71
	halt                                             ; $5f53: $76
	ld   h, l                                        ; $5f54: $65
	ld   [hl], h                                     ; $5f55: $74
	ld   e, b                                        ; $5f56: $58
	ld   h, c                                        ; $5f57: $61
	ld   d, h                                        ; $5f58: $54
	rst  $38                                         ; $5f59: $ff
	rst  $38                                         ; $5f5a: $ff
	ld   bc, $0d04                                   ; $5f5b: $01 $04 $0d
	nop                                              ; $5f5e: $00
	ld   a, [bc]                                     ; $5f5f: $0a
	nop                                              ; $5f60: $00
	rrca                                             ; $5f61: $0f
	nop                                              ; $5f62: $00
	ld   bc, $a301                                   ; $5f63: $01 $01 $a3
	and  l                                           ; $5f66: $a5
	db   $ec                                         ; $5f67: $ec
	cp   d                                           ; $5f68: $ba
	ld   a, [$a30d]                                  ; $5f69: $fa $0d $a3
	and  l                                           ; $5f6c: $a5
	db   $ec                                         ; $5f6d: $ec
	cp   d                                           ; $5f6e: $ba
	ld   a, [$a30d]                                  ; $5f6f: $fa $0d $a3
	and  l                                           ; $5f72: $a5
	db   $ec                                         ; $5f73: $ec
	cp   d                                           ; $5f74: $ba
	ei                                               ; $5f75: $fb
	ld   [hl], c                                     ; $5f76: $71
	ld   a, [$000d]                                  ; $5f77: $fa $0d $00
	ld   a, [bc]                                     ; $5f7a: $0a
	dec  c                                           ; $5f7b: $0d
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	ld   c, $57                                      ; $5f7e: $0e $57
	inc  e                                           ; $5f80: $1c
	inc  b                                           ; $5f81: $04
	ld   b, e                                        ; $5f82: $43
	dec  de                                          ; $5f83: $1b
	ld   bc, $7983                                   ; $5f84: $01 $83 $79
	sub  e                                           ; $5f87: $93
	rst  $38                                         ; $5f88: $ff
	rst  $38                                         ; $5f89: $ff
	dec  c                                           ; $5f8a: $0d
	ld   a, b                                        ; $5f8b: $78
	ld   c, a                                        ; $5f8c: $4f
	ld   a, c                                        ; $5f8d: $79
	rst  $38                                         ; $5f8e: $ff
	rst  $38                                         ; $5f8f: $ff
	ld   sp, hl                                      ; $5f90: $f9
	dec  c                                           ; $5f91: $0d
	nop                                              ; $5f92: $00
	ld   a, [bc]                                     ; $5f93: $0a
	rrca                                             ; $5f94: $0f
	nop                                              ; $5f95: $00
	ld   bc, $5801                                   ; $5f96: $01 $01 $58
	ld   a, l                                        ; $5f99: $7d
	sub  [hl]                                        ; $5f9a: $96
	ld   d, h                                        ; $5f9b: $54
	sbc  [hl]                                        ; $5f9c: $9e
	and  e                                           ; $5f9d: $a3
	and  l                                           ; $5f9e: $a5
	db   $ec                                         ; $5f9f: $ec
	cp   d                                           ; $5fa0: $ba
	sbc  a                                           ; $5fa1: $9f
	dec  c                                           ; $5fa2: $0d
	nop                                              ; $5fa3: $00
	ld   a, [bc]                                     ; $5fa4: $0a
	inc  e                                           ; $5fa5: $1c
	inc  b                                           ; $5fa6: $04
	ld   b, a                                        ; $5fa7: $47
	rra                                              ; $5fa8: $1f
	dec  e                                           ; $5fa9: $1d
	ld   b, b                                        ; $5faa: $40
	inc  d                                           ; $5fab: $14
	inc  bc                                          ; $5fac: $03
	inc  d                                           ; $5fad: $14
	ld   bc, $2903                                   ; $5fae: $01 $03 $29
	nop                                              ; $5fb1: $00
	ld   bc, $a5a3                                   ; $5fb2: $01 $a3 $a5
	db   $ec                                         ; $5fb5: $ec
	cp   d                                           ; $5fb6: $ba
	sbc  [hl]                                        ; $5fb7: $9e
	adc  h                                           ; $5fb8: $8c
	ld   l, [hl]                                     ; $5fb9: $6e
	ld   a, e                                        ; $5fba: $7b
	adc  [hl]                                        ; $5fbb: $8e
	ld   d, d                                        ; $5fbc: $52
	ld   a, h                                        ; $5fbd: $7c
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	dec  c                                           ; $5fc0: $0d
	ld   [hl], l                                     ; $5fc1: $75
	ld   [hl], h                                     ; $5fc2: $74
	ld   [hl], c                                     ; $5fc3: $71
	ld   [hl], h                                     ; $5fc4: $74
	ld   d, l                                        ; $5fc5: $55
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	ld   [hl], l                                     ; $5fc8: $75
	ld   [hl], h                                     ; $5fc9: $74
	ld   [hl], c                                     ; $5fca: $71
	ld   [hl], h                                     ; $5fcb: $74
	ld   d, l                                        ; $5fcc: $55
	rst  $38                                         ; $5fcd: $ff
	rst  $38                                         ; $5fce: $ff
	dec  c                                           ; $5fcf: $0d
	nop                                              ; $5fd0: $00
	ld   a, [bc]                                     ; $5fd1: $0a
	nop                                              ; $5fd2: $00
	dec  c                                           ; $5fd3: $0d
	nop                                              ; $5fd4: $00
	nop                                              ; $5fd5: $00
	ld   c, $57                                      ; $5fd6: $0e $57
	inc  e                                           ; $5fd8: $1c
	inc  b                                           ; $5fd9: $04
	ld   b, l                                        ; $5fda: $45
	dec  e                                           ; $5fdb: $1d
	ld   bc, $9e54                                   ; $5fdc: $01 $54 $9e
	ld   d, h                                        ; $5fdf: $54
	ei                                               ; $5fe0: $fb
	and  c                                           ; $5fe1: $a1
	rst  $38                                         ; $5fe2: $ff
	rst  $38                                         ; $5fe3: $ff
	dec  c                                           ; $5fe4: $0d
	nop                                              ; $5fe5: $00
	ld   a, [bc]                                     ; $5fe6: $0a
	inc  c                                           ; $5fe7: $0c
	ld   b, $0f                                      ; $5fe8: $06 $0f
	nop                                              ; $5fea: $00
	ld   bc, $5401                                   ; $5feb: $01 $01 $54
	sbc  l                                           ; $5fee: $9d
	ld   [hl], c                                     ; $5fef: $71
	ld   a, [$000d]                                  ; $5ff0: $fa $0d $00
	ld   a, [bc]                                     ; $5ff3: $0a
	ld   sp, $2040                                   ; $5ff4: $31 $40 $20
	inc  bc                                          ; $5ff7: $03
	jr   nz, jr_052_5ffb                             ; $5ff8: $20 $01

	ld   [hl-], a                                    ; $5ffa: $32

jr_052_5ffb:
	add  hl, hl                                      ; $5ffb: $29
	nop                                              ; $5ffc: $00
	rrca                                             ; $5ffd: $0f
	inc  b                                           ; $5ffe: $04
	dec  e                                           ; $5fff: $1d
	add  hl, bc                                      ; $6000: $09
	nop                                              ; $6001: $00
	ld   bc, $ffff                                   ; $6002: $01 $ff $ff
	rst  $38                                         ; $6005: $ff
	ldh  [c], a                                      ; $6006: $e2
	call z, $ffe5                                    ; $6007: $cc $e5 $ff
	rst  $38                                         ; $600a: $ff
	rst  $38                                         ; $600b: $ff
	dec  c                                           ; $600c: $0d
	nop                                              ; $600d: $00
	ld   a, [bc]                                     ; $600e: $0a
	dec  c                                           ; $600f: $0d
	nop                                              ; $6010: $00
	nop                                              ; $6011: $00
	rrca                                             ; $6012: $0f
	inc  b                                           ; $6013: $04
	ld   hl, $6701                                   ; $6014: $21 $01 $67
	ei                                               ; $6017: $fb
	ld   h, a                                        ; $6018: $67
	ei                                               ; $6019: $fb
	rst  $38                                         ; $601a: $ff
	rst  $38                                         ; $601b: $ff
	rst  $38                                         ; $601c: $ff
	rst  $38                                         ; $601d: $ff
	rst  $38                                         ; $601e: $ff
	dec  c                                           ; $601f: $0d
	nop                                              ; $6020: $00
	ld   a, [bc]                                     ; $6021: $0a
	rrca                                             ; $6022: $0f
	nop                                              ; $6023: $00
	ld   bc, $7b01                                   ; $6024: $01 $01 $7b
	sbc  [hl]                                        ; $6027: $9e
	ld   a, e                                        ; $6028: $7b
	adc  d                                           ; $6029: $8a
	ld   e, a                                        ; $602a: $5f
	ld   l, l                                        ; $602b: $6d
	ld   a, h                                        ; $602c: $7c
	ld   e, c                                        ; $602d: $59
	rst  $38                                         ; $602e: $ff
	rst  $38                                         ; $602f: $ff
	ld   sp, hl                                      ; $6030: $f9
	dec  c                                           ; $6031: $0d
	ld   h, l                                        ; $6032: $65
	sbc  [hl]                                        ; $6033: $9e
	ld   h, l                                        ; $6034: $65
	add  c                                           ; $6035: $81
	sbc  d                                           ; $6036: $9a
	ld   l, l                                        ; $6037: $6d
	rst  $38                                         ; $6038: $ff
	rst  $38                                         ; $6039: $ff
	dec  c                                           ; $603a: $0d
	nop                                              ; $603b: $00
	ld   a, [bc]                                     ; $603c: $0a
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	ld   c, $28                                      ; $603f: $0e $28
	rrca                                             ; $6041: $0f
	nop                                              ; $6042: $00
	ld   bc, $050d                                   ; $6043: $01 $0d $05
	nop                                              ; $6046: $00
	ld   [bc], a                                     ; $6047: $02
	ld   bc, $a161                                   ; $6048: $01 $61 $a1
	ld   a, [hl]                                     ; $604b: $7e
	and  c                                           ; $604c: $a1
	ld   a, l                                        ; $604d: $7d
	sbc  a                                           ; $604e: $9f
	ld   [bc], a                                     ; $604f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6050: $cf
	dec  b                                           ; $6051: $05
	ld   a, [de]                                     ; $6052: $1a
	ld   h, e                                        ; $6053: $63
	and  c                                           ; $6054: $a1
	sbc  a                                           ; $6055: $9f
	dec  c                                           ; $6056: $0d
	nop                                              ; $6057: $00
	ld   a, [bc]                                     ; $6058: $0a
	add  hl, de                                      ; $6059: $19
	dec  b                                           ; $605a: $05
	ld   [bc], a                                     ; $605b: $02
	inc  b                                           ; $605c: $04
	ld   c, c                                        ; $605d: $49
	ld   h, l                                        ; $605e: $65
	ld   [hl], h                                     ; $605f: $74
	sbc  c                                           ; $6060: $99
	ld   a, h                                        ; $6061: $7c
	ld   e, c                                        ; $6062: $59
	ld   [bc], a                                     ; $6063: $02
	jp   nz, $005d                                   ; $6064: $c2 $5d $00

	nop                                              ; $6067: $00
	inc  b                                           ; $6068: $04
	rst  $10                                         ; $6069: $d7
	inc  b                                           ; $606a: $04
	ld   hl, $0b04                                   ; $606b: $21 $04 $0b
	inc  bc                                          ; $606e: $03
	ld   h, h                                        ; $606f: $64
	ld   a, c                                        ; $6070: $79
	ld   [hl], d                                     ; $6071: $72
	ld   d, d                                        ; $6072: $52
	ld   [hl], h                                     ; $6073: $74
	ld   [bc], a                                     ; $6074: $02
	jp   nz, $005d                                   ; $6075: $c2 $5d $00

	ld   bc, $6e07                                   ; $6078: $01 $07 $6e
	nop                                              ; $607b: $00
	ld   [bc], a                                     ; $607c: $02
	inc  bc                                          ; $607d: $03
	ld   bc, $2000                                   ; $607e: $01 $00 $20
	nop                                              ; $6081: $00
	rlca                                             ; $6082: $07
	dec  hl                                          ; $6083: $2b
	ld   [bc], a                                     ; $6084: $02
	ld   [bc], a                                     ; $6085: $02
	inc  bc                                          ; $6086: $03
	ld   bc, $2001                                   ; $6087: $01 $01 $20
	nop                                              ; $608a: $00
	ld   b, $4f                                      ; $608b: $06 $4f
	nop                                              ; $608d: $00
	inc  e                                           ; $608e: $1c
	dec  b                                           ; $608f: $05
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	ld   bc, $5050                                   ; $6092: $01 $50 $50
	sbc  [hl]                                        ; $6095: $9e
	ld   [$7d00], sp                                 ; $6096: $08 $00 $7d
	and  c                                           ; $6099: $a1
	sbc  a                                           ; $609a: $9f
	dec  c                                           ; $609b: $0d
	ld   [bc], a                                     ; $609c: $02
	sub  l                                           ; $609d: $95
	ld   [bc], a                                     ; $609e: $02
	sub  e                                           ; $609f: $93
	sbc  b                                           ; $60a0: $98
	ld   h, d                                        ; $60a1: $62
	ld   [bc], a                                     ; $60a2: $02
	sub  h                                           ; $60a3: $94
	dec  b                                           ; $60a4: $05
	rrca                                             ; $60a5: $0f
	ld   h, e                                        ; $60a6: $63
	and  c                                           ; $60a7: $a1
	sbc  a                                           ; $60a8: $9f
	dec  c                                           ; $60a9: $0d
	nop                                              ; $60aa: $00
	ld   a, [bc]                                     ; $60ab: $0a
	nop                                              ; $60ac: $00
	rrca                                             ; $60ad: $0f
	nop                                              ; $60ae: $00
	ld   bc, $6101                                   ; $60af: $01 $01 $61
	and  c                                           ; $60b2: $a1
	ld   a, b                                        ; $60b3: $78
	inc  b                                           ; $60b4: $04
	rst  $28                                         ; $60b5: $ef
	add  e                                           ; $60b6: $83
	ld   e, a                                        ; $60b7: $5f
	ld   a, c                                        ; $60b8: $79
	sbc  [hl]                                        ; $60b9: $9e
	dec  c                                           ; $60ba: $0d
	inc  b                                           ; $60bb: $04
	ld   c, c                                        ; $60bc: $49
	and  b                                           ; $60bd: $a0
	ld   h, l                                        ; $60be: $65
	ld   [hl], h                                     ; $60bf: $74
	sbc  c                                           ; $60c0: $99
	and  c                                           ; $60c1: $a1
	ld   [hl], l                                     ; $60c2: $75
	ld   h, a                                        ; $60c3: $67
	ld   e, c                                        ; $60c4: $59
	ld   sp, hl                                      ; $60c5: $f9
	dec  c                                           ; $60c6: $0d
	nop                                              ; $60c7: $00
	ld   a, [bc]                                     ; $60c8: $0a
	inc  e                                           ; $60c9: $1c
	dec  b                                           ; $60ca: $05
	nop                                              ; $60cb: $00
	nop                                              ; $60cc: $00
	ld   bc, $5050                                   ; $60cd: $01 $50 $50
	sbc  [hl]                                        ; $60d0: $9e
	ld   [$7d00], sp                                 ; $60d1: $08 $00 $7d
	and  c                                           ; $60d4: $a1
	sbc  a                                           ; $60d5: $9f
	dec  c                                           ; $60d6: $0d
	ld   [bc], a                                     ; $60d7: $02
	sub  l                                           ; $60d8: $95
	ld   [bc], a                                     ; $60d9: $02
	sub  e                                           ; $60da: $93
	sbc  b                                           ; $60db: $98
	ld   h, d                                        ; $60dc: $62
	ld   [bc], a                                     ; $60dd: $02
	sub  h                                           ; $60de: $94
	dec  b                                           ; $60df: $05
	rrca                                             ; $60e0: $0f
	ld   h, e                                        ; $60e1: $63
	and  c                                           ; $60e2: $a1
	sbc  a                                           ; $60e3: $9f
	dec  c                                           ; $60e4: $0d
	nop                                              ; $60e5: $00
	ld   a, [bc]                                     ; $60e6: $0a
	ld   bc, $f5ac                                   ; $60e7: $01 $ac $f5
	bit  7, l                                        ; $60ea: $cb $7d
	and  c                                           ; $60ec: $a1
	and  b                                           ; $60ed: $a0
	inc  b                                           ; $60ee: $04
	rla                                              ; $60ef: $17
	ld   [hl], c                                     ; $60f0: $71
	ld   [hl], h                                     ; $60f1: $74
	and  c                                           ; $60f2: $a1
	ld   a, e                                        ; $60f3: $7b
	and  c                                           ; $60f4: $a1
	sbc  a                                           ; $60f5: $9f
	dec  c                                           ; $60f6: $0d
	ld   [bc], a                                     ; $60f7: $02
	sbc  b                                           ; $60f8: $98
	ld   [bc], a                                     ; $60f9: $02
	ld   sp, hl                                      ; $60fa: $f9
	sub  d                                           ; $60fb: $92
	sbc  e                                           ; $60fc: $9b
	ld   d, h                                        ; $60fd: $54
	halt                                             ; $60fe: $76
	dec  b                                           ; $60ff: $05
	pop  de                                          ; $6100: $d1
	ld   [hl], c                                     ; $6101: $71
	ld   [hl], h                                     ; $6102: $74
	ld   a, b                                        ; $6103: $78
	sbc  a                                           ; $6104: $9f
	dec  c                                           ; $6105: $0d
	ld   [$7d00], sp                                 ; $6106: $08 $00 $7d
	and  c                                           ; $6109: $a1
	sub  b                                           ; $610a: $90
	sub  d                                           ; $610b: $92
	sbc  c                                           ; $610c: $99
	ld   sp, hl                                      ; $610d: $f9
	dec  c                                           ; $610e: $0d
	nop                                              ; $610f: $00
	ld   a, [bc]                                     ; $6110: $0a
	add  hl, de                                      ; $6111: $19
	dec  b                                           ; $6112: $05
	ld   [bc], a                                     ; $6113: $02
	ld   a, l                                        ; $6114: $7d
	ld   d, d                                        ; $6115: $52
	nop                                              ; $6116: $00
	nop                                              ; $6117: $00
	ld   d, d                                        ; $6118: $52
	ld   d, d                                        ; $6119: $52
	ld   d, [hl]                                     ; $611a: $56
	nop                                              ; $611b: $00
	ld   bc, $f307                                   ; $611c: $01 $07 $f3
	nop                                              ; $611f: $00
	ld   [bc], a                                     ; $6120: $02
	inc  bc                                          ; $6121: $03
	ld   bc, $2000                                   ; $6122: $01 $00 $20
	nop                                              ; $6125: $00
	rlca                                             ; $6126: $07
	ret  nz                                          ; $6127: $c0

	ld   bc, $0302                                   ; $6128: $01 $02 $03
	ld   bc, $2001                                   ; $612b: $01 $01 $20
	nop                                              ; $612e: $00
	ld   b, $03                                      ; $612f: $06 $03
	ld   [bc], a                                     ; $6131: $02
	rrca                                             ; $6132: $0f
	nop                                              ; $6133: $00
	ld   bc, $5201                                   ; $6134: $01 $01 $52
	ld   d, d                                        ; $6137: $52
	ld   [hl], l                                     ; $6138: $75
	ld   h, a                                        ; $6139: $67
	ld   a, e                                        ; $613a: $7b
	db   $fc                                         ; $613b: $fc
	sbc  a                                           ; $613c: $9f
	dec  c                                           ; $613d: $0d
	inc  b                                           ; $613e: $04
	ld   l, l                                        ; $613f: $6d
	sub  b                                           ; $6140: $90
	inc  b                                           ; $6141: $04
	ld   b, c                                        ; $6142: $41
	ld   [bc], a                                     ; $6143: $02
	xor  c                                           ; $6144: $a9
	ld   a, c                                        ; $6145: $79
	inc  b                                           ; $6146: $04
	ld   b, l                                        ; $6147: $45
	sbc  d                                           ; $6148: $9a
	ld   [hl], h                                     ; $6149: $74
	ld   e, l                                        ; $614a: $5d
	ld   l, [hl]                                     ; $614b: $6e
	ld   h, e                                        ; $614c: $63
	ld   d, d                                        ; $614d: $52
	sbc  a                                           ; $614e: $9f
	dec  c                                           ; $614f: $0d
	nop                                              ; $6150: $00
	ld   a, [bc]                                     ; $6151: $0a
	inc  e                                           ; $6152: $1c
	dec  b                                           ; $6153: $05
	ld   bc, $1d01                                   ; $6154: $01 $01 $1d
	ld   b, b                                        ; $6157: $40
	dec  d                                           ; $6158: $15
	inc  bc                                          ; $6159: $03
	dec  d                                           ; $615a: $15
	ld   bc, $2802                                   ; $615b: $01 $02 $28
	nop                                              ; $615e: $00
	ld   bc, $7158                                   ; $615f: $01 $58 $71
	ld   a, [$6b10]                                  ; $6162: $fa $10 $6b
	ld   d, h                                        ; $6165: $54
	ld   e, c                                        ; $6166: $59
	ld   a, [$920d]                                  ; $6167: $fa $0d $92
	sbc  e                                           ; $616a: $9b
	sub  d                                           ; $616b: $92
	sbc  e                                           ; $616c: $9b
	ld   a, [$000d]                                  ; $616d: $fa $0d $00
	ld   a, [bc]                                     ; $6170: $0a
	rrca                                             ; $6171: $0f
	inc  bc                                          ; $6172: $03
	ld   [bc], a                                     ; $6173: $02
	ld   bc, $a161                                   ; $6174: $01 $61 $a1
	ld   a, b                                        ; $6177: $78
	inc  b                                           ; $6178: $04
	rst  $28                                         ; $6179: $ef
	add  e                                           ; $617a: $83
	ld   e, a                                        ; $617b: $5f
	ld   a, c                                        ; $617c: $79
	inc  b                                           ; $617d: $04
	ld   c, c                                        ; $617e: $49
	and  b                                           ; $617f: $a0
	sub  d                                           ; $6180: $92
	sbc  c                                           ; $6181: $99
	ld   a, h                                        ; $6182: $7c
	ld   sp, hl                                      ; $6183: $f9
	dec  c                                           ; $6184: $0d
	nop                                              ; $6185: $00
	ld   a, [bc]                                     ; $6186: $0a
	inc  e                                           ; $6187: $1c
	dec  b                                           ; $6188: $05
	inc  bc                                          ; $6189: $03
	inc  bc                                          ; $618a: $03
	ld   bc, $7150                                   ; $618b: $01 $50 $71
	ld   a, [$df10]                                  ; $618e: $fa $10 $df
	db   $ec                                         ; $6191: $ec
	and  e                                           ; $6192: $a3
	ld   a, l                                        ; $6193: $7d
	and  c                                           ; $6194: $a1
	ld   a, [$000d]                                  ; $6195: $fa $0d $00
	ld   a, [bc]                                     ; $6198: $0a
	inc  e                                           ; $6199: $1c
	inc  bc                                          ; $619a: $03
	ld   [bc], a                                     ; $619b: $02
	ld   [bc], a                                     ; $619c: $02
	dec  e                                           ; $619d: $1d
	ld   b, b                                        ; $619e: $40
	inc  de                                          ; $619f: $13
	inc  bc                                          ; $61a0: $03
	inc  de                                          ; $61a1: $13
	ld   bc, $2902                                   ; $61a2: $01 $02 $29
	nop                                              ; $61a5: $00
	ld   bc, $cf02                                   ; $61a6: $01 $02 $cf
	dec  b                                           ; $61a9: $05
	ld   a, [de]                                     ; $61aa: $1a
	sub  b                                           ; $61ab: $90
	ld   l, e                                        ; $61ac: $6b
	ld   d, h                                        ; $61ad: $54
	ld   l, [hl]                                     ; $61ae: $6e
	ld   e, a                                        ; $61af: $5f
	ld   [hl], a                                     ; $61b0: $77
	sbc  [hl]                                        ; $61b1: $9e
	dec  c                                           ; $61b2: $0d
	ld   [$5d00], sp                                 ; $61b3: $08 $00 $5d
	and  c                                           ; $61b6: $a1
	sbc  a                                           ; $61b7: $9f
	ld   d, b                                        ; $61b8: $50
	ld   a, b                                        ; $61b9: $78
	ld   l, l                                        ; $61ba: $6d
	ld   a, l                                        ; $61bb: $7d
	dec  c                                           ; $61bc: $0d
	inc  b                                           ; $61bd: $04
	dec  c                                           ; $61be: $0d
	ld   [bc], a                                     ; $61bf: $02
	sub  [hl]                                        ; $61c0: $96
	inc  b                                           ; $61c1: $04
	ld   b, l                                        ; $61c2: $45
	inc  b                                           ; $61c3: $04
	ld   a, [bc]                                     ; $61c4: $0a
	inc  b                                           ; $61c5: $04
	dec  bc                                          ; $61c6: $0b
	ld   a, b                                        ; $61c7: $78
	ld   a, h                                        ; $61c8: $7c
	sub  [hl]                                        ; $61c9: $96
	ld   a, [$000d]                                  ; $61ca: $fa $0d $00
	ld   a, [bc]                                     ; $61cd: $0a
	ld   bc, $5490                                   ; $61ce: $01 $90 $54
	inc  bc                                          ; $61d1: $03
	ld   l, h                                        ; $61d2: $6c
	ld   h, l                                        ; $61d3: $65
	sbc  [hl]                                        ; $61d4: $9e
	inc  bc                                          ; $61d5: $03
	sub  h                                           ; $61d6: $94
	ld   [bc], a                                     ; $61d7: $02
	ld   a, d                                        ; $61d8: $7a
	ld   h, l                                        ; $61d9: $65
	ld   [hl], h                                     ; $61da: $74
	sub  b                                           ; $61db: $90
	sub  a                                           ; $61dc: $97
	sbc  l                                           ; $61dd: $9d
	dec  c                                           ; $61de: $0d
	ld   a, b                                        ; $61df: $78
	ld   d, d                                        ; $61e0: $52
	halt                                             ; $61e1: $76
	dec  b                                           ; $61e2: $05
	sub  [hl]                                        ; $61e3: $96
	sbc  c                                           ; $61e4: $99
	sbc  l                                           ; $61e5: $9d
	sbc  a                                           ; $61e6: $9f
	ld   h, e                                        ; $61e7: $63
	ld   d, b                                        ; $61e8: $50
	sbc  [hl]                                        ; $61e9: $9e
	inc  bc                                          ; $61ea: $03
	ld   [hl], b                                     ; $61eb: $70
	ld   e, l                                        ; $61ec: $5d
	dec  c                                           ; $61ed: $0d
	ld   [bc], a                                     ; $61ee: $02
	sub  l                                           ; $61ef: $95
	ld   [bc], a                                     ; $61f0: $02
	sub  e                                           ; $61f1: $93
	sbc  b                                           ; $61f2: $98
	ld   a, c                                        ; $61f3: $79
	inc  b                                           ; $61f4: $04
	jp   Jump_052_7898                               ; $61f5: $c3 $98 $78


	ld   h, e                                        ; $61f8: $63
	ld   d, d                                        ; $61f9: $52
	sbc  a                                           ; $61fa: $9f
	dec  c                                           ; $61fb: $0d
	nop                                              ; $61fc: $00
	ld   a, [bc]                                     ; $61fd: $0a
	nop                                              ; $61fe: $00
	rrca                                             ; $61ff: $0f
	nop                                              ; $6200: $00
	ld   bc, $6701                                   ; $6201: $01 $01 $67
	adc  l                                           ; $6204: $8d
	adc  h                                           ; $6205: $8c
	ld   l, c                                        ; $6206: $69
	and  c                                           ; $6207: $a1
	sbc  a                                           ; $6208: $9f
	dec  c                                           ; $6209: $0d
	ld   [bc], a                                     ; $620a: $02
	and  l                                           ; $620b: $a5
	ld   a, l                                        ; $620c: $7d
	sbc  [hl]                                        ; $620d: $9e
	ld   [bc], a                                     ; $620e: $02
	sub  l                                           ; $620f: $95
	ld   [bc], a                                     ; $6210: $02
	sub  e                                           ; $6211: $93
	sbc  b                                           ; $6212: $98
	inc  b                                           ; $6213: $04
	dec  bc                                          ; $6214: $0b
	ld   a, b                                        ; $6215: $78
	sub  b                                           ; $6216: $90
	ld   a, h                                        ; $6217: $7c
	ld   [hl], l                                     ; $6218: $75
	sbc  a                                           ; $6219: $9f
	dec  c                                           ; $621a: $0d
	nop                                              ; $621b: $00
	ld   a, [bc]                                     ; $621c: $0a
	inc  e                                           ; $621d: $1c
	dec  b                                           ; $621e: $05
	ld   [bc], a                                     ; $621f: $02
	ld   [bc], a                                     ; $6220: $02
	dec  e                                           ; $6221: $1d
	ld   b, b                                        ; $6222: $40
	dec  d                                           ; $6223: $15
	inc  bc                                          ; $6224: $03
	dec  d                                           ; $6225: $15
	ld   bc, $2902                                   ; $6226: $01 $02 $29
	nop                                              ; $6229: $00
	ld   bc, $a178                                   ; $622a: $01 $78 $a1
	sub  d                                           ; $622d: $92
	rst  $38                                         ; $622e: $ff
	rst  $38                                         ; $622f: $ff
	dec  c                                           ; $6230: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6231: $cf
	db   $ec                                         ; $6232: $ec
	ld   a, h                                        ; $6233: $7c
	ld   [bc], a                                     ; $6234: $02
	jr   z, jr_052_6289                              ; $6235: $28 $52

	sub  d                                           ; $6237: $92
	ld   [hl], c                                     ; $6238: $71
	ld   l, a                                        ; $6239: $6f
	sub  c                                           ; $623a: $91
	ld   a, b                                        ; $623b: $78
	db   $fc                                         ; $623c: $fc
	sbc  a                                           ; $623d: $9f
	dec  c                                           ; $623e: $0d
	nop                                              ; $623f: $00
	ld   a, [bc]                                     ; $6240: $0a
	nop                                              ; $6241: $00
	inc  e                                           ; $6242: $1c
	dec  b                                           ; $6243: $05
	ld   [bc], a                                     ; $6244: $02
	ld   [bc], a                                     ; $6245: $02
	ld   bc, $a178                                   ; $6246: $01 $78 $a1
	sub  d                                           ; $6249: $92
	sbc  [hl]                                        ; $624a: $9e
	ld   [bc], a                                     ; $624b: $02
	sbc  b                                           ; $624c: $98
	ld   [bc], a                                     ; $624d: $02
	ld   sp, hl                                      ; $624e: $f9
	ld   h, l                                        ; $624f: $65
	sub  a                                           ; $6250: $97
	and  c                                           ; $6251: $a1
	ld   a, h                                        ; $6252: $7c
	ld   e, c                                        ; $6253: $59
	ld   d, d                                        ; $6254: $52
	ld   a, b                                        ; $6255: $78
	sbc  a                                           ; $6256: $9f
	dec  c                                           ; $6257: $0d
	adc  c                                           ; $6258: $89
	ld   a, b                                        ; $6259: $78
	sbc  [hl]                                        ; $625a: $9e
	ld   [bc], a                                     ; $625b: $02
	sub  l                                           ; $625c: $95
	ld   [bc], a                                     ; $625d: $02
	sub  e                                           ; $625e: $93
	sbc  b                                           ; $625f: $98
	ld   e, d                                        ; $6260: $5a
	and  c                                           ; $6261: $a1
	ld   a, [hl]                                     ; $6262: $7e
	sbc  b                                           ; $6263: $98
	sub  d                                           ; $6264: $92
	sbc  a                                           ; $6265: $9f
	dec  c                                           ; $6266: $0d
	nop                                              ; $6267: $00
	ld   a, [bc]                                     ; $6268: $0a
	nop                                              ; $6269: $00
	rrca                                             ; $626a: $0f
	nop                                              ; $626b: $00
	ld   bc, $0401                                   ; $626c: $01 $01 $04
	rst  $10                                         ; $626f: $d7
	inc  b                                           ; $6270: $04
	ld   hl, $0b04                                   ; $6271: $21 $04 $0b
	inc  bc                                          ; $6274: $03
	ld   h, h                                        ; $6275: $64
	ld   [hl], c                                     ; $6276: $71
	ld   [hl], h                                     ; $6277: $74
	sbc  [hl]                                        ; $6278: $9e
	ld   [bc], a                                     ; $6279: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $627a: $cf
	dec  b                                           ; $627b: $05
	ld   a, [de]                                     ; $627c: $1a
	ld   h, e                                        ; $627d: $63
	and  c                                           ; $627e: $a1
	ld   e, c                                        ; $627f: $59
	sub  a                                           ; $6280: $97
	dec  c                                           ; $6281: $0d
	ld   [bc], a                                     ; $6282: $02
	sub  l                                           ; $6283: $95
	ld   [hl], h                                     ; $6284: $74
	sbc  [hl]                                        ; $6285: $9e
	ld   [hl], a                                     ; $6286: $77
	and  c                                           ; $6287: $a1
	ld   a, b                                        ; $6288: $78

jr_052_6289:
	inc  b                                           ; $6289: $04
	ld   a, b                                        ; $628a: $78
	ld   [hl], l                                     ; $628b: $75
	ld   h, a                                        ; $628c: $67
	ld   e, c                                        ; $628d: $59
	ld   sp, hl                                      ; $628e: $f9
	dec  c                                           ; $628f: $0d
	nop                                              ; $6290: $00
	ld   a, [bc]                                     ; $6291: $0a
	rrca                                             ; $6292: $0f
	dec  b                                           ; $6293: $05
	nop                                              ; $6294: $00
	ld   bc, $d704                                   ; $6295: $01 $04 $d7
	inc  b                                           ; $6298: $04
	ld   hl, $a17d                                   ; $6299: $21 $7d $a1
	rst  $38                                         ; $629c: $ff
	rst  $38                                         ; $629d: $ff
	ld   sp, hl                                      ; $629e: $f9
	dec  c                                           ; $629f: $0d
	ld   l, c                                        ; $62a0: $69
	sub  d                                           ; $62a1: $92
	ld   a, b                                        ; $62a2: $78
	sbc  [hl]                                        ; $62a3: $9e
	and  a                                           ; $62a4: $a7
	jp   nz, Jump_052_7679                           ; $62a5: $c2 $79 $76

	ld   [hl], c                                     ; $62a8: $71
	ld   [hl], h                                     ; $62a9: $74
	ld   a, l                                        ; $62aa: $7d
	dec  c                                           ; $62ab: $0d
	ld   e, b                                        ; $62ac: $58
	inc  b                                           ; $62ad: $04
	ld   l, $7d                                      ; $62ae: $2e $7d
	and  c                                           ; $62b0: $a1
	sbc  [hl]                                        ; $62b1: $9e
	adc  l                                           ; $62b2: $8d
	ld   l, l                                        ; $62b3: $6d
	ld   d, d                                        ; $62b4: $52
	ld   a, b                                        ; $62b5: $78
	sub  b                                           ; $62b6: $90
	and  c                                           ; $62b7: $a1
	sub  d                                           ; $62b8: $92
	ld   a, b                                        ; $62b9: $78
	sbc  a                                           ; $62ba: $9f
	dec  c                                           ; $62bb: $0d
	nop                                              ; $62bc: $00
	ld   a, [bc]                                     ; $62bd: $0a
	ld   bc, $7252                                   ; $62be: $01 $52 $72
	ld   [hl], l                                     ; $62c1: $75
	sub  b                                           ; $62c2: $90
	and  a                                           ; $62c3: $a7
	jp   nz, Jump_052_7c97                           ; $62c4: $c2 $97 $7c

	ld   h, c                                        ; $62c7: $61
	halt                                             ; $62c8: $76
	and  b                                           ; $62c9: $a0
	dec  c                                           ; $62ca: $0d
	ld   l, a                                        ; $62cb: $6f
	sub  c                                           ; $62cc: $91
	and  c                                           ; $62cd: $a1
	halt                                             ; $62ce: $76
	ld   [bc], a                                     ; $62cf: $02
	sub  l                                           ; $62d0: $95
	ld   [hl], h                                     ; $62d1: $74
	ld   [hl], h                                     ; $62d2: $74
	ld   e, l                                        ; $62d3: $5d
	sbc  d                                           ; $62d4: $9a
	sbc  c                                           ; $62d5: $99
	dec  c                                           ; $62d6: $0d
	ld   l, l                                        ; $62d7: $6d
	sub  [hl]                                        ; $62d8: $96
	sbc  b                                           ; $62d9: $98
	ld   a, c                                        ; $62da: $79
	ld   a, b                                        ; $62db: $78
	sbc  c                                           ; $62dc: $99
	inc  bc                                          ; $62dd: $03
	add  d                                           ; $62de: $82
	sub  d                                           ; $62df: $92
	ld   [hl], l                                     ; $62e0: $75
	sbc  a                                           ; $62e1: $9f
	dec  c                                           ; $62e2: $0d
	nop                                              ; $62e3: $00
	ld   a, [bc]                                     ; $62e4: $0a
	inc  e                                           ; $62e5: $1c
	dec  b                                           ; $62e6: $05
	ld   bc, $0101                                   ; $62e7: $01 $01 $01
	adc  h                                           ; $62ea: $8c
	sbc  [hl]                                        ; $62eb: $9e
	ld   e, b                                        ; $62ec: $58
	inc  bc                                          ; $62ed: $03
	jr   nz, @+$7b                                   ; $62ee: $20 $79

	ld   l, [hl]                                     ; $62f0: $6e
	sub  a                                           ; $62f1: $97
	ld   h, l                                        ; $62f2: $65
	ld   a, b                                        ; $62f3: $78
	ld   d, d                                        ; $62f4: $52
	ld   a, h                                        ; $62f5: $7c
	ld   e, d                                        ; $62f6: $5a
	sbc  [hl]                                        ; $62f7: $9e
	dec  c                                           ; $62f8: $0d
	inc  b                                           ; $62f9: $04
	ld   bc, $ae79                                   ; $62fa: $01 $79 $ae
	cp   e                                           ; $62fd: $bb
	sub  d                                           ; $62fe: $92
	ld   e, a                                        ; $62ff: $5f
	ld   [hl], a                                     ; $6300: $77
	ld   a, b                                        ; $6301: $78
	sbc  a                                           ; $6302: $9f
	dec  c                                           ; $6303: $0d
	nop                                              ; $6304: $00
	ld   a, [bc]                                     ; $6305: $0a
	ld   bc, $7889                                   ; $6306: $01 $89 $78
	sbc  [hl]                                        ; $6309: $9e
	ld   [bc], a                                     ; $630a: $02
	sub  l                                           ; $630b: $95
	ld   [bc], a                                     ; $630c: $02
	sub  e                                           ; $630d: $93
	sbc  b                                           ; $630e: $98
	ld   e, d                                        ; $630f: $5a
	and  c                                           ; $6310: $a1
	ld   a, [hl]                                     ; $6311: $7e
	sbc  b                                           ; $6312: $98
	sub  d                                           ; $6313: $92
	sbc  a                                           ; $6314: $9f
	dec  c                                           ; $6315: $0d
	nop                                              ; $6316: $00
	ld   a, [bc]                                     ; $6317: $0a
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	rrca                                             ; $631a: $0f
	nop                                              ; $631b: $00
	ld   bc, $020d                                   ; $631c: $01 $0d $02
	nop                                              ; $631f: $00
	ld   [bc], a                                     ; $6320: $02
	dec  b                                           ; $6321: $05
	add  b                                           ; $6322: $80
	xor  e                                           ; $6323: $ab
	ld   bc, $0001                                   ; $6324: $01 $01 $00
	ld   bc, $8d67                                   ; $6327: $01 $67 $8d
	sbc  d                                           ; $632a: $9a
	ld   h, e                                        ; $632b: $63
	and  c                                           ; $632c: $a1
	sbc  a                                           ; $632d: $9f
	ld   e, b                                        ; $632e: $58
	inc  b                                           ; $632f: $04
	ld   a, e                                        ; $6330: $7b
	sbc  d                                           ; $6331: $9a
	ld   h, e                                        ; $6332: $63
	adc  h                                           ; $6333: $8c
	ld   [hl], l                                     ; $6334: $75
	ld   h, a                                        ; $6335: $67
	sbc  a                                           ; $6336: $9f
	dec  c                                           ; $6337: $0d
	nop                                              ; $6338: $00
	ld   a, [bc]                                     ; $6339: $0a
	rlca                                             ; $633a: $07
	ld   c, d                                        ; $633b: $4a
	nop                                              ; $633c: $00
	inc  bc                                          ; $633d: $03
	ld   [de], a                                     ; $633e: $12
	ld   bc, $2278                                   ; $633f: $01 $78 $22
	nop                                              ; $6342: $00
	inc  e                                           ; $6343: $1c
	ld   [bc], a                                     ; $6344: $02
	ld   bc, $0101                                   ; $6345: $01 $01 $01
	ld   d, b                                        ; $6348: $50
	sub  a                                           ; $6349: $97
	sbc  [hl]                                        ; $634a: $9e
	ld   [$6300], sp                                 ; $634b: $08 $00 $63
	and  c                                           ; $634e: $a1
	sbc  a                                           ; $634f: $9f
	dec  c                                           ; $6350: $0d
	ld   [bc], a                                     ; $6351: $02
	sub  l                                           ; $6352: $95
	ld   [bc], a                                     ; $6353: $02
	sub  e                                           ; $6354: $93
	sbc  b                                           ; $6355: $98
	ld   h, d                                        ; $6356: $62
	ld   [bc], a                                     ; $6357: $02
	sub  h                                           ; $6358: $94
	dec  b                                           ; $6359: $05
	rrca                                             ; $635a: $0f
	ld   h, e                                        ; $635b: $63
	adc  h                                           ; $635c: $8c
	sbc  a                                           ; $635d: $9f
	dec  c                                           ; $635e: $0d
	nop                                              ; $635f: $00
	ld   a, [bc]                                     ; $6360: $0a
	ld   b, $5a                                      ; $6361: $06 $5a
	nop                                              ; $6363: $00
	inc  e                                           ; $6364: $1c
	ld   [bc], a                                     ; $6365: $02
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	ld   bc, $9750                                   ; $6368: $01 $50 $97
	sbc  [hl]                                        ; $636b: $9e
	ld   [$6300], sp                                 ; $636c: $08 $00 $63
	and  c                                           ; $636f: $a1
	sbc  a                                           ; $6370: $9f
	dec  c                                           ; $6371: $0d
	nop                                              ; $6372: $00
	ld   a, [bc]                                     ; $6373: $0a
	rrca                                             ; $6374: $0f
	nop                                              ; $6375: $00
	ld   bc, $6701                                   ; $6376: $01 $01 $67
	adc  l                                           ; $6379: $8d
	sbc  d                                           ; $637a: $9a
	ld   h, e                                        ; $637b: $63
	and  c                                           ; $637c: $a1
	sbc  [hl]                                        ; $637d: $9e
	dec  c                                           ; $637e: $0d
	ld   [bc], a                                     ; $637f: $02
	and  l                                           ; $6380: $a5
	ld   l, a                                        ; $6381: $6f
	sub  l                                           ; $6382: $95
	ld   [hl], c                                     ; $6383: $71
	halt                                             ; $6384: $76
	ld   d, d                                        ; $6385: $52
	ld   d, d                                        ; $6386: $52
	ld   [hl], l                                     ; $6387: $75
	ld   h, a                                        ; $6388: $67
	ld   e, c                                        ; $6389: $59
	ld   sp, hl                                      ; $638a: $f9
	dec  c                                           ; $638b: $0d
	nop                                              ; $638c: $00
	ld   a, [bc]                                     ; $638d: $0a
	inc  e                                           ; $638e: $1c
	ld   [bc], a                                     ; $638f: $02
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	ld   bc, $a178                                   ; $6392: $01 $78 $a1
	ld   [hl], l                                     ; $6395: $75
	ld   h, a                                        ; $6396: $67
	ld   a, h                                        ; $6397: $7c
	ld   sp, hl                                      ; $6398: $f9
	dec  c                                           ; $6399: $0d
	nop                                              ; $639a: $00
	ld   a, [bc]                                     ; $639b: $0a
	add  hl, de                                      ; $639c: $19
	dec  b                                           ; $639d: $05
	inc  bc                                          ; $639e: $03
	dec  b                                           ; $639f: $05
	dec  bc                                          ; $63a0: $0b
	inc  bc                                          ; $63a1: $03
	add  d                                           ; $63a2: $82
	ld   a, c                                        ; $63a3: $79
	ld   [hl], d                                     ; $63a4: $72
	ld   d, d                                        ; $63a5: $52
	ld   [hl], h                                     ; $63a6: $74
	ld   [bc], a                                     ; $63a7: $02
	jp   nz, $005d                                   ; $63a8: $c2 $5d $00

	nop                                              ; $63ab: $00
	ret  c                                           ; $63ac: $d8

	xor  $bd                                         ; $63ad: $ee $bd
	push af                                          ; $63af: $f5
	ret                                              ; $63b0: $c9


	and  b                                           ; $63b1: $a0
	inc  bc                                          ; $63b2: $03
	ld   [$0067], a                                  ; $63b3: $ea $67 $00
	ld   bc, $cf02                                   ; $63b6: $01 $02 $cf
	dec  b                                           ; $63b9: $05
	ld   a, [de]                                     ; $63ba: $1a
	ld   a, c                                        ; $63bb: $79
	ld   [hl], d                                     ; $63bc: $72
	ld   d, d                                        ; $63bd: $52
	ld   [hl], h                                     ; $63be: $74
	ld   [bc], a                                     ; $63bf: $02
	jp   nz, $005d                                   ; $63c0: $c2 $5d $00

	ld   [bc], a                                     ; $63c3: $02
	rlca                                             ; $63c4: $07
	dec  b                                           ; $63c5: $05
	ld   bc, $0302                                   ; $63c6: $01 $02 $03
	ld   bc, $2000                                   ; $63c9: $01 $00 $20
	nop                                              ; $63cc: $00
	rlca                                             ; $63cd: $07
	ld   [hl], l                                     ; $63ce: $75
	ld   [bc], a                                     ; $63cf: $02
	ld   [bc], a                                     ; $63d0: $02
	inc  bc                                          ; $63d1: $03
	ld   bc, $2001                                   ; $63d2: $01 $01 $20
	nop                                              ; $63d5: $00
	rlca                                             ; $63d6: $07
	inc  l                                           ; $63d7: $2c
	inc  b                                           ; $63d8: $04
	ld   [bc], a                                     ; $63d9: $02
	inc  bc                                          ; $63da: $03
	ld   bc, $2002                                   ; $63db: $01 $02 $20
	nop                                              ; $63de: $00
	ld   b, $c8                                      ; $63df: $06 $c8
	nop                                              ; $63e1: $00
	inc  e                                           ; $63e2: $1c
	ld   [bc], a                                     ; $63e3: $02
	rlca                                             ; $63e4: $07
	rlca                                             ; $63e5: $07
	dec  e                                           ; $63e6: $1d
	ld   b, b                                        ; $63e7: $40
	ld   [de], a                                     ; $63e8: $12
	inc  bc                                          ; $63e9: $03
	ld   [de], a                                     ; $63ea: $12
	ld   bc, $2901                                   ; $63eb: $01 $01 $29
	nop                                              ; $63ee: $00
	ld   bc, $a178                                   ; $63ef: $01 $78 $a1
	ld   [hl], l                                     ; $63f2: $75
	ld   h, a                                        ; $63f3: $67
	ld   sp, hl                                      ; $63f4: $f9
	dec  c                                           ; $63f5: $0d
	inc  b                                           ; $63f6: $04
	di                                               ; $63f7: $f3
	ld   e, d                                        ; $63f8: $5a
	ld   a, b                                        ; $63f9: $78
	ld   d, d                                        ; $63fa: $52
	ld   a, h                                        ; $63fb: $7c
	ld   a, b                                        ; $63fc: $78
	sub  a                                           ; $63fd: $97
	sbc  [hl]                                        ; $63fe: $9e
	sbc  l                                           ; $63ff: $9d
	ld   l, l                                        ; $6400: $6d
	ld   e, l                                        ; $6401: $5d
	ld   h, l                                        ; $6402: $65
	dec  c                                           ; $6403: $0d
	inc  bc                                          ; $6404: $03
	add  e                                           ; $6405: $83
	dec  b                                           ; $6406: $05
	dec  c                                           ; $6407: $0d
	ld   h, e                                        ; $6408: $63
	ld   l, c                                        ; $6409: $69
	ld   [hl], h                                     ; $640a: $74
	ld   d, d                                        ; $640b: $52
	ld   l, l                                        ; $640c: $6d
	ld   l, [hl]                                     ; $640d: $6e
	ld   e, e                                        ; $640e: $5b
	adc  h                                           ; $640f: $8c
	ld   h, a                                        ; $6410: $67
	sbc  l                                           ; $6411: $9d
	sbc  a                                           ; $6412: $9f
	dec  c                                           ; $6413: $0d
	nop                                              ; $6414: $00
	ld   a, [bc]                                     ; $6415: $0a
	dec  c                                           ; $6416: $0d
	nop                                              ; $6417: $00
	nop                                              ; $6418: $00
	rrca                                             ; $6419: $0f
	nop                                              ; $641a: $00
	ld   bc, $1e09                                   ; $641b: $01 $09 $1e
	nop                                              ; $641e: $00
	rrca                                             ; $641f: $0f
	nop                                              ; $6420: $00
	ld   bc, $6701                                   ; $6421: $01 $01 $67
	adc  l                                           ; $6424: $8d
	sbc  d                                           ; $6425: $9a
	ld   h, e                                        ; $6426: $63
	and  c                                           ; $6427: $a1
	ld   [hl], c                                     ; $6428: $71
	ld   [hl], h                                     ; $6429: $74
	dec  c                                           ; $642a: $0d
	dec  b                                           ; $642b: $05
	dec  bc                                          ; $642c: $0b
	inc  bc                                          ; $642d: $03
	add  d                                           ; $642e: $82
	ld   a, l                                        ; $642f: $7d
	ld   d, d                                        ; $6430: $52
	sbc  c                                           ; $6431: $99
	and  c                                           ; $6432: $a1
	ld   [hl], l                                     ; $6433: $75
	ld   h, a                                        ; $6434: $67
	ld   e, c                                        ; $6435: $59
	ld   sp, hl                                      ; $6436: $f9
	dec  c                                           ; $6437: $0d
	nop                                              ; $6438: $00
	ld   a, [bc]                                     ; $6439: $0a
	rrca                                             ; $643a: $0f
	ld   [bc], a                                     ; $643b: $02
	nop                                              ; $643c: $00
	ld   bc, $6d9d                                   ; $643d: $01 $9d $6d
	ld   e, l                                        ; $6440: $5d
	ld   h, l                                        ; $6441: $65
	ld   a, h                                        ; $6442: $7c
	dec  b                                           ; $6443: $05
	dec  bc                                          ; $6444: $0b
	inc  bc                                          ; $6445: $03
	add  d                                           ; $6446: $82
	ld   a, c                                        ; $6447: $79
	ld   a, b                                        ; $6448: $78
	sbc  b                                           ; $6449: $98
	ld   l, l                                        ; $644a: $6d
	ld   d, d                                        ; $644b: $52
	dec  c                                           ; $644c: $0d
	inc  b                                           ; $644d: $04
	ld   [hl], $04                                   ; $644e: $36 $04
	ld   a, b                                        ; $6450: $78
	ld   [hl], l                                     ; $6451: $75
	ld   h, l                                        ; $6452: $65
	ld   l, l                                        ; $6453: $6d
	sub  a                                           ; $6454: $97
	inc  bc                                          ; $6455: $03
	ld   d, e                                        ; $6456: $53
	ld   a, h                                        ; $6457: $7c
	inc  bc                                          ; $6458: $03
	pop  bc                                          ; $6459: $c1
	adc  c                                           ; $645a: $89
	ld   [hl], a                                     ; $645b: $77
	dec  c                                           ; $645c: $0d
	ld   d, d                                        ; $645d: $52
	sub  a                                           ; $645e: $97
	ld   [hl], c                                     ; $645f: $71
	ld   h, l                                        ; $6460: $65
	sub  c                                           ; $6461: $91
	ld   d, d                                        ; $6462: $52
	adc  h                                           ; $6463: $8c
	ld   h, a                                        ; $6464: $67
	sbc  l                                           ; $6465: $9d
	sbc  a                                           ; $6466: $9f
	dec  c                                           ; $6467: $0d
	nop                                              ; $6468: $00
	ld   a, [bc]                                     ; $6469: $0a
	add  hl, de                                      ; $646a: $19
	dec  b                                           ; $646b: $05
	ld   [bc], a                                     ; $646c: $02
	inc  b                                           ; $646d: $04
	adc  a                                           ; $646e: $8f
	inc  b                                           ; $646f: $04
	jr   jr_052_64e7                                 ; $6470: $18 $75

	ld   h, a                                        ; $6472: $67
	ld   e, c                                        ; $6473: $59
	ld   sp, hl                                      ; $6474: $f9
	nop                                              ; $6475: $00
	nop                                              ; $6476: $00
	inc  b                                           ; $6477: $04
	ld   l, l                                        ; $6478: $6d
	sub  b                                           ; $6479: $90
	ld   l, e                                        ; $647a: $6b
	ld   a, h                                        ; $647b: $7c
	inc  b                                           ; $647c: $04
	dec  bc                                          ; $647d: $0b
	ld   a, h                                        ; $647e: $7c
	add  b                                           ; $647f: $80
	halt                                             ; $6480: $76
	sbc  b                                           ; $6481: $98
	ld   [hl], l                                     ; $6482: $75
	ld   h, a                                        ; $6483: $67
	nop                                              ; $6484: $00
	ld   bc, $8107                                   ; $6485: $01 $07 $81
	ld   bc, $0302                                   ; $6488: $01 $02 $03
	ld   bc, $2000                                   ; $648b: $01 $00 $20
	nop                                              ; $648e: $00
	rlca                                             ; $648f: $07
	ldh  [rSB], a                                    ; $6490: $e0 $01
	ld   [bc], a                                     ; $6492: $02
	inc  bc                                          ; $6493: $03
	ld   bc, $2001                                   ; $6494: $01 $01 $20
	nop                                              ; $6497: $00
	ld   b, $4c                                      ; $6498: $06 $4c
	ld   [bc], a                                     ; $649a: $02
	rrca                                             ; $649b: $0f
	nop                                              ; $649c: $00
	ld   bc, $0401                                   ; $649d: $01 $01 $04
	adc  a                                           ; $64a0: $8f
	inc  b                                           ; $64a1: $04
	jr   jr_052_6519                                 ; $64a2: $18 $75

	ld   h, a                                        ; $64a4: $67
	ld   e, c                                        ; $64a5: $59
	ld   sp, hl                                      ; $64a6: $f9
	dec  c                                           ; $64a7: $0d
	inc  bc                                          ; $64a8: $03
	ld   d, e                                        ; $64a9: $53
	ld   a, h                                        ; $64aa: $7c
	inc  bc                                          ; $64ab: $03
	pop  bc                                          ; $64ac: $c1
	ld   a, l                                        ; $64ad: $7d
	ld   [bc], a                                     ; $64ae: $02
	sbc  l                                           ; $64af: $9d
	ld   d, d                                        ; $64b0: $52
	ld   h, a                                        ; $64b1: $67
	ld   e, h                                        ; $64b2: $5c
	ld   a, b                                        ; $64b3: $78
	and  c                                           ; $64b4: $a1
	ld   h, [hl]                                     ; $64b5: $66
	sub  c                                           ; $64b6: $91
	dec  c                                           ; $64b7: $0d
	ld   a, b                                        ; $64b8: $78
	ld   d, d                                        ; $64b9: $52
	ld   [hl], l                                     ; $64ba: $75
	ld   h, a                                        ; $64bb: $67
	ld   e, c                                        ; $64bc: $59
	ld   sp, hl                                      ; $64bd: $f9
	dec  c                                           ; $64be: $0d
	nop                                              ; $64bf: $00
	ld   a, [bc]                                     ; $64c0: $0a
	inc  e                                           ; $64c1: $1c
	ld   [bc], a                                     ; $64c2: $02
	ld   [bc], a                                     ; $64c3: $02
	ld   [bc], a                                     ; $64c4: $02
	dec  e                                           ; $64c5: $1d
	ld   b, b                                        ; $64c6: $40
	ld   [de], a                                     ; $64c7: $12
	inc  bc                                          ; $64c8: $03
	ld   [de], a                                     ; $64c9: $12
	ld   bc, $2902                                   ; $64ca: $01 $02 $29
	nop                                              ; $64cd: $00
	ld   bc, $6d54                                   ; $64ce: $01 $54 $6d
	ld   e, d                                        ; $64d1: $5a
	ld   [hl], c                                     ; $64d2: $71
	ld   [hl], h                                     ; $64d3: $74
	sub  a                                           ; $64d4: $97
	ld   [hl], c                                     ; $64d5: $71
	ld   h, l                                        ; $64d6: $65
	sub  c                                           ; $64d7: $91
	sbc  c                                           ; $64d8: $99
	ld   a, h                                        ; $64d9: $7c
	ld   sp, hl                                      ; $64da: $f9
	dec  c                                           ; $64db: $0d
	inc  bc                                          ; $64dc: $03
	add  e                                           ; $64dd: $83
	dec  b                                           ; $64de: $05
	dec  c                                           ; $64df: $0d
	ld   [hl], l                                     ; $64e0: $75
	ld   h, a                                        ; $64e1: $67
	sbc  l                                           ; $64e2: $9d
	ld   a, e                                        ; $64e3: $7b
	sbc  a                                           ; $64e4: $9f
	dec  c                                           ; $64e5: $0d
	inc  bc                                          ; $64e6: $03

jr_052_64e7:
	ld   [hl], b                                     ; $64e7: $70
	ld   e, l                                        ; $64e8: $5d
	ld   [bc], a                                     ; $64e9: $02
	sub  l                                           ; $64ea: $95
	ld   [bc], a                                     ; $64eb: $02
	sub  e                                           ; $64ec: $93
	sbc  b                                           ; $64ed: $98
	ld   a, c                                        ; $64ee: $79
	sub  b                                           ; $64ef: $90
	ld   [hl], a                                     ; $64f0: $77
	sbc  b                                           ; $64f1: $98
	ld   a, b                                        ; $64f2: $78
	ld   h, e                                        ; $64f3: $63
	ld   d, d                                        ; $64f4: $52
	ld   a, [$000d]                                  ; $64f5: $fa $0d $00
	ld   a, [bc]                                     ; $64f8: $0a
	nop                                              ; $64f9: $00
	rrca                                             ; $64fa: $0f
	nop                                              ; $64fb: $00
	ld   bc, $0401                                   ; $64fc: $01 $01 $04
	ld   l, l                                        ; $64ff: $6d
	sub  b                                           ; $6500: $90
	ld   l, e                                        ; $6501: $6b
	ld   a, h                                        ; $6502: $7c
	inc  b                                           ; $6503: $04
	dec  bc                                          ; $6504: $0b
	ld   a, h                                        ; $6505: $7c
	add  b                                           ; $6506: $80
	halt                                             ; $6507: $76
	sbc  b                                           ; $6508: $98
	dec  c                                           ; $6509: $0d
	ld   a, b                                        ; $650a: $78
	and  c                                           ; $650b: $a1
	ld   [hl], l                                     ; $650c: $75
	ld   h, a                                        ; $650d: $67
	sub  [hl]                                        ; $650e: $96
	sbc  a                                           ; $650f: $9f
	ld   h, a                                        ; $6510: $67
	adc  l                                           ; $6511: $8d
	sbc  d                                           ; $6512: $9a
	ld   h, e                                        ; $6513: $63
	and  c                                           ; $6514: $a1
	sbc  a                                           ; $6515: $9f
	dec  c                                           ; $6516: $0d
	nop                                              ; $6517: $00
	ld   a, [bc]                                     ; $6518: $0a

jr_052_6519:
	inc  e                                           ; $6519: $1c
	ld   [bc], a                                     ; $651a: $02
	ld   bc, $1d01                                   ; $651b: $01 $01 $1d
	ld   b, b                                        ; $651e: $40
	ld   [de], a                                     ; $651f: $12
	inc  bc                                          ; $6520: $03
	ld   [de], a                                     ; $6521: $12
	ld   bc, $2802                                   ; $6522: $01 $02 $28
	nop                                              ; $6525: $00
	ld   bc, $9750                                   ; $6526: $01 $50 $97
	sbc  [hl]                                        ; $6529: $9e
	ld   l, b                                        ; $652a: $68
	ld   d, d                                        ; $652b: $52
	add  h                                           ; $652c: $84
	and  c                                           ; $652d: $a1
	halt                                             ; $652e: $76
	inc  bc                                          ; $652f: $03
	ld   c, d                                        ; $6530: $4a
	inc  bc                                          ; $6531: $03
	jp   c, $0d78                                    ; $6532: $da $78 $0d

	ld   e, b                                        ; $6535: $58
	inc  bc                                          ; $6536: $03
	add  d                                           ; $6537: $82
	ld   [hl], l                                     ; $6538: $75
	ld   h, a                                        ; $6539: $67
	ld   h, c                                        ; $653a: $61
	halt                                             ; $653b: $76
	rst  $38                                         ; $653c: $ff
	rst  $38                                         ; $653d: $ff
	dec  c                                           ; $653e: $0d
	nop                                              ; $653f: $00
	ld   a, [bc]                                     ; $6540: $0a
	ld   bc, $7d75                                   ; $6541: $01 $75 $7d
	sbc  [hl]                                        ; $6544: $9e
	inc  b                                           ; $6545: $04
	rst  $28                                         ; $6546: $ef
	sub  b                                           ; $6547: $90
	ld   e, b                                        ; $6548: $58
	ld   l, e                                        ; $6549: $6b
	ld   d, d                                        ; $654a: $52
	ld   [hl], l                                     ; $654b: $75
	ld   h, a                                        ; $654c: $67
	ld   h, l                                        ; $654d: $65
	dec  c                                           ; $654e: $0d
	inc  bc                                          ; $654f: $03
	add  e                                           ; $6550: $83
	dec  b                                           ; $6551: $05
	dec  c                                           ; $6552: $0d
	ld   d, d                                        ; $6553: $52
	ld   l, l                                        ; $6554: $6d
	ld   h, l                                        ; $6555: $65
	adc  h                                           ; $6556: $8c
	ld   h, a                                        ; $6557: $67
	sbc  l                                           ; $6558: $9d
	sbc  a                                           ; $6559: $9f
	dec  c                                           ; $655a: $0d
	nop                                              ; $655b: $00
	ld   a, [bc]                                     ; $655c: $0a
	dec  c                                           ; $655d: $0d
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	rrca                                             ; $6560: $0f
	nop                                              ; $6561: $00
	ld   bc, $1e09                                   ; $6562: $01 $09 $1e
	nop                                              ; $6565: $00
	inc  e                                           ; $6566: $1c
	ld   [bc], a                                     ; $6567: $02
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	ld   bc, $7d75                                   ; $656a: $01 $75 $7d
	sbc  [hl]                                        ; $656d: $9e
	inc  b                                           ; $656e: $04
	rst  $28                                         ; $656f: $ef
	sub  b                                           ; $6570: $90
	ld   e, b                                        ; $6571: $58
	ld   l, e                                        ; $6572: $6b
	ld   d, d                                        ; $6573: $52
	ld   [hl], l                                     ; $6574: $75
	ld   h, a                                        ; $6575: $67
	ld   h, l                                        ; $6576: $65
	dec  c                                           ; $6577: $0d
	inc  bc                                          ; $6578: $03
	add  e                                           ; $6579: $83
	dec  b                                           ; $657a: $05
	dec  c                                           ; $657b: $0d
	ld   d, d                                        ; $657c: $52
	ld   l, l                                        ; $657d: $6d
	ld   h, l                                        ; $657e: $65
	adc  h                                           ; $657f: $8c
	ld   h, a                                        ; $6580: $67
	sbc  l                                           ; $6581: $9d
	sbc  a                                           ; $6582: $9f
	dec  c                                           ; $6583: $0d
	nop                                              ; $6584: $00
	ld   a, [bc]                                     ; $6585: $0a
	dec  c                                           ; $6586: $0d
	nop                                              ; $6587: $00
	nop                                              ; $6588: $00
	rrca                                             ; $6589: $0f
	nop                                              ; $658a: $00
	ld   bc, $1e09                                   ; $658b: $01 $09 $1e
	nop                                              ; $658e: $00
	rrca                                             ; $658f: $0f
	nop                                              ; $6590: $00
	ld   bc, $6701                                   ; $6591: $01 $01 $67
	adc  l                                           ; $6594: $8d
	sbc  d                                           ; $6595: $9a
	ld   h, e                                        ; $6596: $63
	and  c                                           ; $6597: $a1
	sbc  a                                           ; $6598: $9f
	ld   h, c                                        ; $6599: $61
	sbc  d                                           ; $659a: $9a
	inc  b                                           ; $659b: $04
	ld   hl, $bc03                                   ; $659c: $21 $03 $bc
	ld   e, c                                        ; $659f: $59
	sub  a                                           ; $65a0: $97
	dec  c                                           ; $65a1: $0d
	inc  bc                                          ; $65a2: $03
	sbc  a                                           ; $65a3: $9f
	ld   [hl], c                                     ; $65a4: $71
	ld   [hl], h                                     ; $65a5: $74
	ld   e, e                                        ; $65a6: $5b
	ld   l, l                                        ; $65a7: $6d
	and  c                                           ; $65a8: $a1
	ld   [hl], l                                     ; $65a9: $75
	ld   h, a                                        ; $65aa: $67
	ld   e, a                                        ; $65ab: $5f
	ld   [hl], a                                     ; $65ac: $77
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	dec  c                                           ; $65af: $0d
	nop                                              ; $65b0: $00
	ld   a, [bc]                                     ; $65b1: $0a
	inc  e                                           ; $65b2: $1c
	ld   [bc], a                                     ; $65b3: $02
	nop                                              ; $65b4: $00
	nop                                              ; $65b5: $00
	ld   bc, $f956                                   ; $65b6: $01 $56 $f9
	dec  c                                           ; $65b9: $0d
	sbc  l                                           ; $65ba: $9d
	ld   l, l                                        ; $65bb: $6d
	ld   e, l                                        ; $65bc: $5d
	ld   h, l                                        ; $65bd: $65
	ld   a, c                                        ; $65be: $79
	ld   [hl], l                                     ; $65bf: $75
	ld   h, a                                        ; $65c0: $67
	ld   a, h                                        ; $65c1: $7c
	rst  $38                                         ; $65c2: $ff
	rst  $38                                         ; $65c3: $ff
	ld   sp, hl                                      ; $65c4: $f9
	dec  c                                           ; $65c5: $0d
	nop                                              ; $65c6: $00
	ld   a, [bc]                                     ; $65c7: $0a
	rrca                                             ; $65c8: $0f
	nop                                              ; $65c9: $00
	ld   bc, $0101                                   ; $65ca: $01 $01 $01
	inc  bc                                          ; $65cd: $03
	ld   h, e                                        ; $65ce: $63
	ld   d, b                                        ; $65cf: $50
	sbc  [hl]                                        ; $65d0: $9e
	ld   [hl], a                                     ; $65d1: $77
	sbc  d                                           ; $65d2: $9a
	and  b                                           ; $65d3: $a0
	inc  bc                                          ; $65d4: $03
	ld   [$546b], a                                  ; $65d5: $ea $6b $54
	ld   e, c                                        ; $65d8: $59
	ld   a, b                                        ; $65d9: $78
	ld   sp, hl                                      ; $65da: $f9
	ld   bc, $0d04                                   ; $65db: $01 $04 $0d
	nop                                              ; $65de: $00
	ld   a, [bc]                                     ; $65df: $0a
	jr   jr_052_65e5                                 ; $65e0: $18 $03

	nop                                              ; $65e2: $00
	ld   [bc], a                                     ; $65e3: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65e4: $cf

jr_052_65e5:
	inc  bc                                          ; $65e5: $03
	jp   $0000                                      ; $65e6: $c3 $00 $00


	inc  b                                           ; $65e9: $04
	or   c                                           ; $65ea: $b1
	ld   e, e                                        ; $65eb: $5b
	dec  b                                           ; $65ec: $05
	inc  e                                           ; $65ed: $1c
	nop                                              ; $65ee: $00
	ld   bc, $3804                                   ; $65ef: $01 $04 $38
	and  e                                           ; $65f2: $a3
	xor  $a5                                         ; $65f3: $ee $a5
	nop                                              ; $65f5: $00
	ld   [bc], a                                     ; $65f6: $02
	rlca                                             ; $65f7: $07
	ld   hl, sp+$02                                  ; $65f8: $f8 $02
	ld   [bc], a                                     ; $65fa: $02
	ld   [bc], a                                     ; $65fb: $02
	ld   bc, $2000                                   ; $65fc: $01 $00 $20
	nop                                              ; $65ff: $00
	rlca                                             ; $6600: $07
	ld   c, e                                        ; $6601: $4b
	inc  bc                                          ; $6602: $03
	ld   [bc], a                                     ; $6603: $02
	ld   [bc], a                                     ; $6604: $02
	ld   bc, $2001                                   ; $6605: $01 $01 $20
	nop                                              ; $6608: $00
	rlca                                             ; $6609: $07
	or   c                                           ; $660a: $b1
	inc  bc                                          ; $660b: $03
	ld   [bc], a                                     ; $660c: $02
	ld   [bc], a                                     ; $660d: $02
	ld   bc, $2002                                   ; $660e: $01 $02 $20
	nop                                              ; $6611: $00
	rrca                                             ; $6612: $0f
	nop                                              ; $6613: $00
	ld   bc, $0e10                                   ; $6614: $01 $10 $0e
	nop                                              ; $6617: $00
	ld   bc, $cf02                                   ; $6618: $01 $02 $cf
	inc  bc                                          ; $661b: $03
	jp   $a178                                       ; $661c: $c3 $78 $a1


	ld   [hl], l                                     ; $661f: $75
	ld   h, a                                        ; $6620: $67
	ld   e, d                                        ; $6621: $5a
	dec  c                                           ; $6622: $0d
	ld   d, d                                        ; $6623: $52
	ld   e, c                                        ; $6624: $59
	ld   e, d                                        ; $6625: $5a
	ld   [hl], l                                     ; $6626: $75
	ld   h, a                                        ; $6627: $67
	ld   e, c                                        ; $6628: $59
	ld   sp, hl                                      ; $6629: $f9
	dec  c                                           ; $662a: $0d
	nop                                              ; $662b: $00
	ld   a, [bc]                                     ; $662c: $0a
	inc  e                                           ; $662d: $1c
	ld   [bc], a                                     ; $662e: $02
	ld   bc, $1d01                                   ; $662f: $01 $01 $1d
	ld   b, b                                        ; $6632: $40
	ld   [de], a                                     ; $6633: $12
	inc  bc                                          ; $6634: $03
	ld   [de], a                                     ; $6635: $12
	ld   bc, $2802                                   ; $6636: $01 $02 $28
	nop                                              ; $6639: $00
	ld   bc, $ffff                                   ; $663a: $01 $ff $ff
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	dec  c                                           ; $6641: $0d
	adc  h                                           ; $6642: $8c
	ld   d, b                                        ; $6643: $50
	sbc  [hl]                                        ; $6644: $9e
	ld   l, l                                        ; $6645: $6d
	adc  h                                           ; $6646: $8c
	ld   a, c                                        ; $6647: $79
	ld   a, l                                        ; $6648: $7d
	inc  bc                                          ; $6649: $03
	call nz, $de04                                   ; $664a: $c4 $04 $de
	ld   a, h                                        ; $664d: $7c
	inc  b                                           ; $664e: $04
	ld   a, b                                        ; $664f: $78
	ld   e, d                                        ; $6650: $5a
	dec  c                                           ; $6651: $0d
	ld   [bc], a                                     ; $6652: $02
	rlca                                             ; $6653: $07
	adc  [hl]                                        ; $6654: $8e
	sub  b                                           ; $6655: $90
	ld   a, h                                        ; $6656: $7c
	sub  b                                           ; $6657: $90
	ld   d, d                                        ; $6658: $52
	ld   d, d                                        ; $6659: $52
	ld   [hl], l                                     ; $665a: $75
	ld   h, a                                        ; $665b: $67
	sbc  l                                           ; $665c: $9d
	ld   a, e                                        ; $665d: $7b
	sbc  a                                           ; $665e: $9f
	dec  c                                           ; $665f: $0d
	nop                                              ; $6660: $00
	ld   a, [bc]                                     ; $6661: $0a
	ld   b, $ff                                      ; $6662: $06 $ff
	inc  bc                                          ; $6664: $03
	rrca                                             ; $6665: $0f
	nop                                              ; $6666: $00
	ld   bc, $0f10                                   ; $6667: $01 $10 $0f
	nop                                              ; $666a: $00
	ld   bc, $5903                                   ; $666b: $01 $03 $59
	ld   [bc], a                                     ; $666e: $02
	ld   [hl-], a                                    ; $666f: $32
	ld   [bc], a                                     ; $6670: $02
	sbc  d                                           ; $6671: $9a
	ld   e, e                                        ; $6672: $5b
	ld   a, h                                        ; $6673: $7c
	ld   h, a                                        ; $6674: $67
	adc  l                                           ; $6675: $8d
	sbc  d                                           ; $6676: $9a
	ld   h, e                                        ; $6677: $63
	and  c                                           ; $6678: $a1
	ld   a, c                                        ; $6679: $79
	ld   a, l                                        ; $667a: $7d
	dec  c                                           ; $667b: $0d
	inc  b                                           ; $667c: $04
	or   c                                           ; $667d: $b1
	ld   e, e                                        ; $667e: $5b
	dec  b                                           ; $667f: $05
	inc  e                                           ; $6680: $1c
	ld   a, b                                        ; $6681: $78
	and  c                                           ; $6682: $a1
	ld   e, c                                        ; $6683: $59
	ld   d, d                                        ; $6684: $52
	ld   e, c                                        ; $6685: $59
	ld   e, d                                        ; $6686: $5a
	ld   [hl], l                                     ; $6687: $75
	dec  c                                           ; $6688: $0d
	ld   h, l                                        ; $6689: $65
	sub  l                                           ; $668a: $95
	ld   d, h                                        ; $668b: $54
	ld   e, c                                        ; $668c: $59
	ld   sp, hl                                      ; $668d: $f9
	dec  c                                           ; $668e: $0d
	nop                                              ; $668f: $00
	ld   a, [bc]                                     ; $6690: $0a
	inc  e                                           ; $6691: $1c
	ld   [bc], a                                     ; $6692: $02
	rlca                                             ; $6693: $07
	rlca                                             ; $6694: $07
	dec  e                                           ; $6695: $1d
	ld   b, b                                        ; $6696: $40
	ld   [de], a                                     ; $6697: $12
	inc  bc                                          ; $6698: $03
	ld   [de], a                                     ; $6699: $12
	ld   bc, $2902                                   ; $669a: $01 $02 $29
	nop                                              ; $669d: $00
	ld   bc, $b104                                   ; $669e: $01 $04 $b1
	ld   e, e                                        ; $66a1: $5b
	dec  b                                           ; $66a2: $05
	inc  e                                           ; $66a3: $1c
	ld   sp, hl                                      ; $66a4: $f9
	db   $10                                         ; $66a5: $10
	and  e                                           ; $66a6: $a3
	and  l                                           ; $66a7: $a5
	db   $ec                                         ; $66a8: $ec
	cp   d                                           ; $66a9: $ba
	ld   h, [hl]                                     ; $66aa: $66
	sub  c                                           ; $66ab: $91
	ld   d, b                                        ; $66ac: $50
	sbc  c                                           ; $66ad: $99
	dec  c                                           ; $66ae: $0d
	adc  h                                           ; $66af: $8c
	ld   d, d                                        ; $66b0: $52
	ld   h, l                                        ; $66b1: $65
	sbc  [hl]                                        ; $66b2: $9e
	sbc  l                                           ; $66b3: $9d
	ld   l, l                                        ; $66b4: $6d
	ld   e, l                                        ; $66b5: $5d
	ld   h, l                                        ; $66b6: $65
	ld   a, c                                        ; $66b7: $79
	ld   a, l                                        ; $66b8: $7d
	inc  b                                           ; $66b9: $04
	adc  d                                           ; $66ba: $8a
	inc  b                                           ; $66bb: $04
	rst  JumpTable                                         ; $66bc: $df
	dec  c                                           ; $66bd: $0d
	ld   d, b                                        ; $66be: $50
	sbc  b                                           ; $66bf: $98
	adc  h                                           ; $66c0: $8c
	ld   l, c                                        ; $66c1: $69
	and  c                                           ; $66c2: $a1
	sbc  l                                           ; $66c3: $9d
	sbc  a                                           ; $66c4: $9f
	dec  c                                           ; $66c5: $0d
	nop                                              ; $66c6: $00
	ld   a, [bc]                                     ; $66c7: $0a
	ld   b, $ff                                      ; $66c8: $06 $ff
	inc  bc                                          ; $66ca: $03
	rrca                                             ; $66cb: $0f
	nop                                              ; $66cc: $00
	ld   bc, $1010                                   ; $66cd: $01 $10 $10
	nop                                              ; $66d0: $00
	ld   bc, $3804                                   ; $66d1: $01 $04 $38
	and  e                                           ; $66d4: $a3
	xor  $a5                                         ; $66d5: $ee $a5
	ld   [hl], l                                     ; $66d7: $75
	ld   h, a                                        ; $66d8: $67
	sbc  a                                           ; $66d9: $9f
	dec  c                                           ; $66da: $0d
	ld   d, d                                        ; $66db: $52
	ld   e, c                                        ; $66dc: $59
	ld   e, d                                        ; $66dd: $5a
	ld   [hl], l                                     ; $66de: $75
	ld   h, a                                        ; $66df: $67
	ld   e, c                                        ; $66e0: $59
	ld   sp, hl                                      ; $66e1: $f9
	dec  c                                           ; $66e2: $0d
	nop                                              ; $66e3: $00
	ld   a, [bc]                                     ; $66e4: $0a
	inc  e                                           ; $66e5: $1c
	ld   [bc], a                                     ; $66e6: $02
	ld   [bc], a                                     ; $66e7: $02
	ld   [bc], a                                     ; $66e8: $02
	dec  e                                           ; $66e9: $1d
	ld   b, b                                        ; $66ea: $40
	ld   [de], a                                     ; $66eb: $12
	inc  bc                                          ; $66ec: $03
	ld   [de], a                                     ; $66ed: $12
	ld   bc, $2902                                   ; $66ee: $01 $02 $29
	nop                                              ; $66f1: $00
	ld   bc, $3804                                   ; $66f2: $01 $04 $38
	and  e                                           ; $66f5: $a3
	xor  $a5                                         ; $66f6: $ee $a5
	ld   sp, hl                                      ; $66f8: $f9
	dec  c                                           ; $66f9: $0d
	xor  h                                           ; $66fa: $ac
	push af                                          ; $66fb: $f5
	bit  4, e                                        ; $66fc: $cb $63
	and  c                                           ; $66fe: $a1
	halt                                             ; $66ff: $76
	adc  h                                           ; $6700: $8c
	ld   l, a                                        ; $6701: $6f
	ld   e, d                                        ; $6702: $5a
	ld   d, [hl]                                     ; $6703: $56
	ld   [hl], h                                     ; $6704: $74
	dec  c                                           ; $6705: $0d
	ld   d, d                                        ; $6706: $52
	adc  h                                           ; $6707: $8c
	ld   l, c                                        ; $6708: $69
	and  c                                           ; $6709: $a1
	ld   h, c                                        ; $670a: $61
	halt                                             ; $670b: $76
	sbc  a                                           ; $670c: $9f
	ld   d, d                                        ; $670d: $52
	sbc  b                                           ; $670e: $98
	adc  h                                           ; $670f: $8c
	ld   l, c                                        ; $6710: $69
	and  c                                           ; $6711: $a1
	sbc  a                                           ; $6712: $9f
	dec  c                                           ; $6713: $0d
	nop                                              ; $6714: $00
	ld   a, [bc]                                     ; $6715: $0a
	ld   b, $ff                                      ; $6716: $06 $ff
	inc  bc                                          ; $6718: $03
	ld   bc, $5063                                   ; $6719: $01 $63 $50
	sbc  [hl]                                        ; $671c: $9e
	ld   h, e                                        ; $671d: $63
	ld   [hl], c                                     ; $671e: $71
	ld   h, e                                        ; $671f: $63
	halt                                             ; $6720: $76
	ld   [bc], a                                     ; $6721: $02
	sub  l                                           ; $6722: $95
	ld   [bc], a                                     ; $6723: $02
	sub  e                                           ; $6724: $93
	sbc  b                                           ; $6725: $98
	and  b                                           ; $6726: $a0
	dec  c                                           ; $6727: $0d
	ld   h, a                                        ; $6728: $67
	adc  h                                           ; $6729: $8c
	ld   l, c                                        ; $672a: $69
	ld   [hl], h                                     ; $672b: $74
	sbc  [hl]                                        ; $672c: $9e
	inc  b                                           ; $672d: $04
	ld   b, d                                        ; $672e: $42
	ld   a, b                                        ; $672f: $78
	ld   h, e                                        ; $6730: $63
	ld   d, d                                        ; $6731: $52
	sbc  a                                           ; $6732: $9f
	dec  c                                           ; $6733: $0d
	inc  b                                           ; $6734: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6735: $cf
	inc  b                                           ; $6736: $04
	xor  d                                           ; $6737: $aa
	sub  b                                           ; $6738: $90
	inc  bc                                          ; $6739: $03
	ld   [hl], b                                     ; $673a: $70
	ld   d, d                                        ; $673b: $52
	ld   a, h                                        ; $673c: $7c
	ld   [hl], l                                     ; $673d: $75
	ld   h, a                                        ; $673e: $67
	ld   e, c                                        ; $673f: $59
	sub  a                                           ; $6740: $97
	sbc  a                                           ; $6741: $9f
	dec  c                                           ; $6742: $0d
	nop                                              ; $6743: $00
	ld   a, [bc]                                     ; $6744: $0a
	nop                                              ; $6745: $00
	rrca                                             ; $6746: $0f
	nop                                              ; $6747: $00
	ld   bc, $0201                                   ; $6748: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $674b: $cf
	dec  b                                           ; $674c: $05
	ld   a, [de]                                     ; $674d: $1a
	ld   h, e                                        ; $674e: $63
	and  c                                           ; $674f: $a1
	ld   [hl], h                                     ; $6750: $74
	sbc  [hl]                                        ; $6751: $9e
	ld   h, a                                        ; $6752: $67
	adc  l                                           ; $6753: $8d
	sbc  d                                           ; $6754: $9a
	ld   h, e                                        ; $6755: $63
	and  c                                           ; $6756: $a1
	ld   e, c                                        ; $6757: $59
	sub  a                                           ; $6758: $97
	dec  c                                           ; $6759: $0d
	ld   [bc], a                                     ; $675a: $02
	sub  l                                           ; $675b: $95
	ld   [hl], h                                     ; $675c: $74
	sbc  [hl]                                        ; $675d: $9e
	ld   [hl], a                                     ; $675e: $77
	and  c                                           ; $675f: $a1
	ld   a, b                                        ; $6760: $78
	inc  b                                           ; $6761: $04
	ld   a, b                                        ; $6762: $78
	ld   [hl], l                                     ; $6763: $75
	ld   h, a                                        ; $6764: $67
	ld   e, c                                        ; $6765: $59
	ld   sp, hl                                      ; $6766: $f9
	dec  c                                           ; $6767: $0d
	nop                                              ; $6768: $00
	ld   a, [bc]                                     ; $6769: $0a
	inc  e                                           ; $676a: $1c
	ld   [bc], a                                     ; $676b: $02
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	ld   bc, $cf02                                   ; $676e: $01 $02 $cf
	dec  b                                           ; $6771: $05
	ld   a, [de]                                     ; $6772: $1a
	ld   [hl], l                                     ; $6773: $75
	ld   h, a                                        ; $6774: $67

Jump_052_6775:
	ld   e, c                                        ; $6775: $59
	ld   sp, hl                                      ; $6776: $f9
	dec  c                                           ; $6777: $0d
	halt                                             ; $6778: $76
	ld   [hl], h                                     ; $6779: $74
	sub  b                                           ; $677a: $90
	inc  b                                           ; $677b: $04
	adc  h                                           ; $677c: $8c
	sbc  l                                           ; $677d: $9d
	ld   [hl], c                                     ; $677e: $71
	ld   l, l                                        ; $677f: $6d
	inc  b                                           ; $6780: $04
	ld   a, b                                        ; $6781: $78
	ld   [hl], l                                     ; $6782: $75
	ld   h, a                                        ; $6783: $67
	sbc  l                                           ; $6784: $9d
	sbc  a                                           ; $6785: $9f
	dec  c                                           ; $6786: $0d
	nop                                              ; $6787: $00
	ld   a, [bc]                                     ; $6788: $0a
	ld   bc, $5e04                                   ; $6789: $01 $04 $5e
	inc  b                                           ; $678c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $678d: $cf
	halt                                             ; $678e: $76
	ld   e, c                                        ; $678f: $59
	ld   [bc], a                                     ; $6790: $02
	sbc  l                                           ; $6791: $9d
	ld   [hl], c                                     ; $6792: $71
	ld   [hl], h                                     ; $6793: $74
	dec  c                                           ; $6794: $0d
	ld   d, d                                        ; $6795: $52
	ld   [hl], d                                     ; $6796: $72
	sub  b                                           ; $6797: $90
	ld   [bc], a                                     ; $6798: $02
	ld   h, h                                        ; $6799: $64
	ld   h, l                                        ; $679a: $65
	ld   h, b                                        ; $679b: $60
	ld   a, b                                        ; $679c: $78
	sub  b                                           ; $679d: $90
	ld   a, h                                        ; $679e: $7c
	and  b                                           ; $679f: $a0
	dec  c                                           ; $67a0: $0d
	inc  bc                                          ; $67a1: $03
	xor  h                                           ; $67a2: $ac
	ld   [hl], c                                     ; $67a3: $71
	ld   [hl], h                                     ; $67a4: $74
	ld   e, b                                        ; $67a5: $58
	sbc  b                                           ; $67a6: $98
	adc  h                                           ; $67a7: $8c
	ld   h, a                                        ; $67a8: $67
	ld   a, h                                        ; $67a9: $7c
	sub  [hl]                                        ; $67aa: $96
	sbc  a                                           ; $67ab: $9f
	dec  c                                           ; $67ac: $0d
	nop                                              ; $67ad: $00
	ld   a, [bc]                                     ; $67ae: $0a
	ld   bc, $9075                                   ; $67af: $01 $75 $90
	sbc  [hl]                                        ; $67b2: $9e
	inc  b                                           ; $67b3: $04
	db   $ec                                         ; $67b4: $ec
	ld   a, c                                        ; $67b5: $79
	dec  b                                           ; $67b6: $05
	ld   d, $72                                      ; $67b7: $16 $72
	sub  b                                           ; $67b9: $90
	ld   a, h                                        ; $67ba: $7c
	and  b                                           ; $67bb: $a0
	dec  c                                           ; $67bc: $0d
	inc  bc                                          ; $67bd: $03
	xor  h                                           ; $67be: $ac
	ld   [hl], c                                     ; $67bf: $71
	ld   l, l                                        ; $67c0: $6d
	halt                                             ; $67c1: $76
	ld   d, d                                        ; $67c2: $52
	ld   d, h                                        ; $67c3: $54
	ld   [bc], a                                     ; $67c4: $02
	sub  a                                           ; $67c5: $97
	dec  b                                           ; $67c6: $05
	inc  hl                                          ; $67c7: $23
	ld   a, l                                        ; $67c8: $7d
	dec  c                                           ; $67c9: $0d
	ld   d, b                                        ; $67ca: $50
	sbc  b                                           ; $67cb: $98
	adc  h                                           ; $67cc: $8c
	ld   l, c                                        ; $67cd: $69
	and  c                                           ; $67ce: $a1
	sbc  l                                           ; $67cf: $9d
	ld   a, e                                        ; $67d0: $7b
	sbc  a                                           ; $67d1: $9f
	dec  c                                           ; $67d2: $0d
	nop                                              ; $67d3: $00
	ld   a, [bc]                                     ; $67d4: $0a
	ld   bc, $7d75                                   ; $67d5: $01 $75 $7d
	sbc  [hl]                                        ; $67d8: $9e
	sbc  l                                           ; $67d9: $9d
	ld   l, l                                        ; $67da: $6d
	ld   e, l                                        ; $67db: $5d
	ld   h, l                                        ; $67dc: $65
	ld   a, l                                        ; $67dd: $7d
	dec  c                                           ; $67de: $0d
	ld   h, c                                        ; $67df: $61
	sbc  d                                           ; $67e0: $9a
	ld   [hl], l                                     ; $67e1: $75
	inc  bc                                          ; $67e2: $03
	add  e                                           ; $67e3: $83
	dec  b                                           ; $67e4: $05
	dec  c                                           ; $67e5: $0d
	ld   d, d                                        ; $67e6: $52
	ld   l, l                                        ; $67e7: $6d
	ld   h, l                                        ; $67e8: $65
	adc  h                                           ; $67e9: $8c
	ld   h, a                                        ; $67ea: $67
	sbc  l                                           ; $67eb: $9d
	sbc  a                                           ; $67ec: $9f
	dec  c                                           ; $67ed: $0d
	nop                                              ; $67ee: $00
	ld   a, [bc]                                     ; $67ef: $0a
	dec  c                                           ; $67f0: $0d
	nop                                              ; $67f1: $00
	nop                                              ; $67f2: $00
	rrca                                             ; $67f3: $0f
	nop                                              ; $67f4: $00
	ld   bc, $1e09                                   ; $67f5: $01 $09 $1e
	nop                                              ; $67f8: $00
	nop                                              ; $67f9: $00
	rrca                                             ; $67fa: $0f
	nop                                              ; $67fb: $00
	ld   bc, $010d                                   ; $67fc: $01 $0d $01
	nop                                              ; $67ff: $00
	ld   [bc], a                                     ; $6800: $02
	ld   bc, $5d63                                   ; $6801: $01 $63 $5d
	sub  a                                           ; $6804: $97
	ld   h, e                                        ; $6805: $63
	and  c                                           ; $6806: $a1
	dec  c                                           ; $6807: $0d
	ld   e, b                                        ; $6808: $58
	inc  b                                           ; $6809: $04
	ld   a, e                                        ; $680a: $7b
	sbc  d                                           ; $680b: $9a
	ld   h, e                                        ; $680c: $63
	adc  h                                           ; $680d: $8c
	ld   [hl], l                                     ; $680e: $75
	ld   h, a                                        ; $680f: $67
	sbc  a                                           ; $6810: $9f
	dec  c                                           ; $6811: $0d
	nop                                              ; $6812: $00
	ld   a, [bc]                                     ; $6813: $0a
	inc  e                                           ; $6814: $1c
	ld   bc, $0000                                   ; $6815: $01 $00 $00
	ld   bc, $9750                                   ; $6818: $01 $50 $97
	sbc  [hl]                                        ; $681b: $9e
	ld   [$6300], sp                                 ; $681c: $08 $00 $63
	and  c                                           ; $681f: $a1
	sbc  a                                           ; $6820: $9f
	dec  c                                           ; $6821: $0d
	ld   [bc], a                                     ; $6822: $02
	sub  l                                           ; $6823: $95
	ld   [bc], a                                     ; $6824: $02
	sub  e                                           ; $6825: $93
	sbc  b                                           ; $6826: $98
	ld   h, d                                        ; $6827: $62
	ld   e, l                                        ; $6828: $5d
	sbc  e                                           ; $6829: $9b
	ld   d, h                                        ; $682a: $54
	ld   h, e                                        ; $682b: $63
	adc  h                                           ; $682c: $8c
	ld   [hl], l                                     ; $682d: $75
	ld   h, a                                        ; $682e: $67
	sbc  a                                           ; $682f: $9f
	dec  c                                           ; $6830: $0d
	nop                                              ; $6831: $00
	ld   a, [bc]                                     ; $6832: $0a
	rrca                                             ; $6833: $0f
	nop                                              ; $6834: $00
	ld   bc, $0101                                   ; $6835: $01 $01 $01
	inc  bc                                          ; $6838: $03
	ld   l, e                                        ; $6839: $6b
	ld   d, h                                        ; $683a: $54
	ld   l, [hl]                                     ; $683b: $6e
	sbc  [hl]                                        ; $683c: $9e
	ld   l, a                                        ; $683d: $6f
	sub  l                                           ; $683e: $95
	ld   [hl], c                                     ; $683f: $71
	halt                                             ; $6840: $76
	dec  c                                           ; $6841: $0d
	db   $10                                         ; $6842: $10
	inc  bc                                          ; $6843: $03
	ld   l, l                                        ; $6844: $6d
	dec  b                                           ; $6845: $05
	add  hl, de                                      ; $6846: $19
	ld   a, h                                        ; $6847: $7c
	ld   h, c                                        ; $6848: $61
	halt                                             ; $6849: $76
	and  b                                           ; $684a: $a0
	ld   [bc], a                                     ; $684b: $02
	jp   nz, Jump_052_7452                           ; $684c: $c2 $52 $74

	dec  c                                           ; $684f: $0d
	db   $10                                         ; $6850: $10
	adc  l                                           ; $6851: $8d
	sub  [hl]                                        ; $6852: $96
	ld   d, h                                        ; $6853: $54
	ld   bc, $0d04                                   ; $6854: $01 $04 $0d
	nop                                              ; $6857: $00
	ld   a, [bc]                                     ; $6858: $0a
	add  hl, de                                      ; $6859: $19
	dec  b                                           ; $685a: $05
	ld   [bc], a                                     ; $685b: $02
	ld   [bc], a                                     ; $685c: $02
	dec  h                                           ; $685d: $25
	ld   [bc], a                                     ; $685e: $02
	ld   a, e                                        ; $685f: $7b
	ld   d, d                                        ; $6860: $52
	ld   a, c                                        ; $6861: $79
	ld   [hl], d                                     ; $6862: $72
	ld   d, d                                        ; $6863: $52
	ld   [hl], h                                     ; $6864: $74
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	inc  bc                                          ; $6867: $03
	ld   l, l                                        ; $6868: $6d
	dec  b                                           ; $6869: $05
	add  hl, de                                      ; $686a: $19
	ld   a, h                                        ; $686b: $7c
	ld   l, c                                        ; $686c: $69
	ld   d, d                                        ; $686d: $52
	ld   e, c                                        ; $686e: $59
	ld   a, c                                        ; $686f: $79
	ld   [hl], d                                     ; $6870: $72
	ld   d, d                                        ; $6871: $52
	ld   [hl], h                                     ; $6872: $74
	nop                                              ; $6873: $00
	ld   bc, $b607                                   ; $6874: $01 $07 $b6
	nop                                              ; $6877: $00
	ld   [bc], a                                     ; $6878: $02
	inc  bc                                          ; $6879: $03
	ld   bc, $2000                                   ; $687a: $01 $00 $20
	nop                                              ; $687d: $00
	rlca                                             ; $687e: $07
	pop  bc                                          ; $687f: $c1
	ld   bc, $0302                                   ; $6880: $01 $02 $03
	ld   bc, $2001                                   ; $6883: $01 $01 $20
	nop                                              ; $6886: $00
	ld   b, $90                                      ; $6887: $06 $90
	nop                                              ; $6889: $00
	inc  e                                           ; $688a: $1c
	ld   bc, $0000                                   ; $688b: $01 $00 $00
	ld   bc, $9166                                   ; $688e: $01 $66 $91
	sbc  [hl]                                        ; $6891: $9e
	ld   d, b                                        ; $6892: $50
	ld   l, l                                        ; $6893: $6d
	ld   h, l                                        ; $6894: $65
	ld   a, l                                        ; $6895: $7d
	dec  c                                           ; $6896: $0d
	inc  b                                           ; $6897: $04
	sub  l                                           ; $6898: $95
	ld   [bc], a                                     ; $6899: $02
	ld   hl, $0486                                   ; $689a: $21 $86 $04
	jp   $8c98                                       ; $689d: $c3 $98 $8c


	ld   h, a                                        ; $68a0: $67
	ld   a, h                                        ; $68a1: $7c
	ld   [hl], l                                     ; $68a2: $75
	sbc  a                                           ; $68a3: $9f
	dec  c                                           ; $68a4: $0d
	nop                                              ; $68a5: $00
	ld   a, [bc]                                     ; $68a6: $0a
	dec  c                                           ; $68a7: $0d
	nop                                              ; $68a8: $00
	nop                                              ; $68a9: $00
	rrca                                             ; $68aa: $0f
	nop                                              ; $68ab: $00
	ld   bc, $1e09                                   ; $68ac: $01 $09 $1e
	nop                                              ; $68af: $00
	rrca                                             ; $68b0: $0f
	nop                                              ; $68b1: $00
	ld   bc, $0301                                   ; $68b2: $01 $01 $03
	ld   l, l                                        ; $68b5: $6d
	dec  b                                           ; $68b6: $05
	add  hl, de                                      ; $68b7: $19
	ld   a, h                                        ; $68b8: $7c
	ld   h, c                                        ; $68b9: $61
	halt                                             ; $68ba: $76
	and  b                                           ; $68bb: $a0
	dec  c                                           ; $68bc: $0d
	ld   [bc], a                                     ; $68bd: $02
	jp   nz, Jump_052_6d5b                           ; $68be: $c2 $5b $6d

	ld   d, d                                        ; $68c1: $52
	ld   a, h                                        ; $68c2: $7c
	ld   [hl], l                                     ; $68c3: $75
	ld   h, a                                        ; $68c4: $67
	ld   e, d                                        ; $68c5: $5a
	rst  $38                                         ; $68c6: $ff
	rst  $38                                         ; $68c7: $ff
	dec  c                                           ; $68c8: $0d
	nop                                              ; $68c9: $00
	ld   a, [bc]                                     ; $68ca: $0a
	ld   bc, $906b                                   ; $68cb: $01 $6b $90
	ld   l, e                                        ; $68ce: $6b
	sub  b                                           ; $68cf: $90
	sbc  [hl]                                        ; $68d0: $9e
	ld   [bc], a                                     ; $68d1: $02
	dec  h                                           ; $68d2: $25
	ld   [bc], a                                     ; $68d3: $02
	ld   a, e                                        ; $68d4: $7b
	ld   d, d                                        ; $68d5: $52
	ld   [hl], c                                     ; $68d6: $71
	ld   [hl], h                                     ; $68d7: $74
	dec  c                                           ; $68d8: $0d
	inc  b                                           ; $68d9: $04
	ld   c, c                                        ; $68da: $49
	ld   a, b                                        ; $68db: $78
	ld   a, h                                        ; $68dc: $7c
	ld   [hl], l                                     ; $68dd: $75
	ld   h, a                                        ; $68de: $67
	ld   e, c                                        ; $68df: $59
	ld   sp, hl                                      ; $68e0: $f9
	dec  c                                           ; $68e1: $0d
	nop                                              ; $68e2: $00
	ld   a, [bc]                                     ; $68e3: $0a
	inc  e                                           ; $68e4: $1c
	ld   bc, $0000                                   ; $68e5: $01 $00 $00
	ld   bc, $2502                                   ; $68e8: $01 $02 $25
	ld   [bc], a                                     ; $68eb: $02
	ld   a, e                                        ; $68ec: $7b
	ld   d, d                                        ; $68ed: $52
	ld   [hl], l                                     ; $68ee: $75
	ld   h, a                                        ; $68ef: $67
	ld   e, c                                        ; $68f0: $59
	sbc  a                                           ; $68f1: $9f
	dec  c                                           ; $68f2: $0d
	dec  b                                           ; $68f3: $05
	ldh  [$03], a                                    ; $68f4: $e0 $03
	sub  b                                           ; $68f6: $90
	and  b                                           ; $68f7: $a0
	inc  bc                                          ; $68f8: $03
	ld   h, d                                        ; $68f9: $62
	inc  b                                           ; $68fa: $04
	dec  bc                                          ; $68fb: $0b
	ld   h, l                                        ; $68fc: $65
	sbc  [hl]                                        ; $68fd: $9e
	ld   l, e                                        ; $68fe: $6b
	ld   a, h                                        ; $68ff: $7c
	dec  b                                           ; $6900: $05
	ld   a, [bc]                                     ; $6901: $0a
	and  b                                           ; $6902: $a0
	dec  c                                           ; $6903: $0d
	inc  bc                                          ; $6904: $03
	ld   l, c                                        ; $6905: $69
	inc  b                                           ; $6906: $04
	ld   c, $02                                      ; $6907: $0e $02
	ldh  [$8c], a                                    ; $6909: $e0 $8c
	ld   [hl], l                                     ; $690b: $75
	ld   [bc], a                                     ; $690c: $02
	cp   [hl]                                        ; $690d: $be
	adc  a                                           ; $690e: $8f
	ld   [hl], h                                     ; $690f: $74
	dec  c                                           ; $6910: $0d
	nop                                              ; $6911: $00
	ld   a, [bc]                                     ; $6912: $0a
	ld   bc, $7152                                   ; $6913: $01 $52 $71
	ld   h, l                                        ; $6916: $65
	sub  e                                           ; $6917: $93
	and  c                                           ; $6918: $a1
	ld   a, h                                        ; $6919: $7c
	inc  b                                           ; $691a: $04
	inc  hl                                          ; $691b: $23
	inc  b                                           ; $691c: $04
	inc  l                                           ; $691d: $2c
	ld   [hl], l                                     ; $691e: $75
	dec  c                                           ; $691f: $0d
	inc  b                                           ; $6920: $04
	call nc, $1f06                                   ; $6921: $d4 $06 $1f
	and  b                                           ; $6924: $a0
	ld   [bc], a                                     ; $6925: $02
	jr   nz, jr_052_692c                             ; $6926: $20 $04

	inc  l                                           ; $6928: $2c
	ld   b, $3a                                      ; $6929: $06 $3a
	inc  b                                           ; $692b: $04

jr_052_692c:
	inc  h                                           ; $692c: $24
	ld   a, c                                        ; $692d: $79
	ld   h, a                                        ; $692e: $67
	sbc  c                                           ; $692f: $99
	dec  c                                           ; $6930: $0d
	ld   [bc], a                                     ; $6931: $02
	adc  h                                           ; $6932: $8c
	ld   [hl], l                                     ; $6933: $75
	ld   h, a                                        ; $6934: $67
	sub  [hl]                                        ; $6935: $96
	sbc  a                                           ; $6936: $9f
	dec  c                                           ; $6937: $0d
	nop                                              ; $6938: $00
	ld   a, [bc]                                     ; $6939: $0a
	ld   bc, $6775                                   ; $693a: $01 $75 $67
	ld   e, c                                        ; $693d: $59
	sub  a                                           ; $693e: $97
	sbc  [hl]                                        ; $693f: $9e
	ld   [bc], a                                     ; $6940: $02
	jr   nz, jr_052_6947                             ; $6941: $20 $04

	ld   a, c                                        ; $6943: $79
	inc  b                                           ; $6944: $04
	ld   c, $03                                      ; $6945: $0e $03

jr_052_6947:
	dec  de                                          ; $6947: $1b
	ld   a, b                                        ; $6948: $78
	ld   a, h                                        ; $6949: $7c
	ld   a, l                                        ; $694a: $7d
	dec  c                                           ; $694b: $0d
	dec  b                                           ; $694c: $05
	ldh  [$03], a                                    ; $694d: $e0 $03
	sub  b                                           ; $694f: $90
	dec  b                                           ; $6950: $05
	ld   a, [bc]                                     ; $6951: $0a
	ld   a, b                                        ; $6952: $78
	ld   a, h                                        ; $6953: $7c
	ld   [hl], l                                     ; $6954: $75
	ld   h, a                                        ; $6955: $67
	sbc  a                                           ; $6956: $9f
	dec  c                                           ; $6957: $0d
	nop                                              ; $6958: $00
	ld   a, [bc]                                     ; $6959: $0a
	inc  e                                           ; $695a: $1c
	ld   bc, $0101                                   ; $695b: $01 $01 $01
	ld   bc, $6d50                                   ; $695e: $01 $50 $6d
	ld   h, l                                        ; $6961: $65
	ld   a, h                                        ; $6962: $7c
	inc  bc                                          ; $6963: $03
	ld   l, l                                        ; $6964: $6d
	dec  b                                           ; $6965: $05
	add  hl, de                                      ; $6966: $19
	ld   a, l                                        ; $6967: $7d
	sbc  [hl]                                        ; $6968: $9e
	ld   l, e                                        ; $6969: $6b
	ld   a, h                                        ; $696a: $7c
	dec  c                                           ; $696b: $0d
	dec  b                                           ; $696c: $05
	ldh  [$03], a                                    ; $696d: $e0 $03
	sub  b                                           ; $696f: $90
	dec  b                                           ; $6970: $05
	ld   a, [bc]                                     ; $6971: $0a
	and  b                                           ; $6972: $a0
	ld   [bc], a                                     ; $6973: $02
	cp   [hl]                                        ; $6974: $be
	adc  a                                           ; $6975: $8f
	sbc  c                                           ; $6976: $99
	ld   l, l                                        ; $6977: $6d
	adc  a                                           ; $6978: $8f
	ld   a, c                                        ; $6979: $79
	dec  c                                           ; $697a: $0d
	ld   [bc], a                                     ; $697b: $02
	ld   a, a                                        ; $697c: $7f
	ld   [hl], c                                     ; $697d: $71
	ld   [hl], h                                     ; $697e: $74
	ld   d, d                                        ; $697f: $52
	sbc  c                                           ; $6980: $99
	ld   a, h                                        ; $6981: $7c
	ld   [hl], l                                     ; $6982: $75
	ld   h, a                                        ; $6983: $67
	sbc  a                                           ; $6984: $9f
	dec  c                                           ; $6985: $0d
	nop                                              ; $6986: $00
	ld   a, [bc]                                     ; $6987: $0a
	ld   bc, $5063                                   ; $6988: $01 $63 $50
	sbc  [hl]                                        ; $698b: $9e
	inc  b                                           ; $698c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $698d: $cf
	inc  b                                           ; $698e: $04
	xor  d                                           ; $698f: $aa
	sub  b                                           ; $6990: $90
	inc  bc                                          ; $6991: $03
	ld   [hl], b                                     ; $6992: $70
	ld   d, d                                        ; $6993: $52
	ld   [hl], l                                     ; $6994: $75
	ld   h, a                                        ; $6995: $67
	ld   e, c                                        ; $6996: $59
	sub  a                                           ; $6997: $97
	dec  c                                           ; $6998: $0d
	inc  bc                                          ; $6999: $03
	ld   [hl], b                                     ; $699a: $70
	ld   e, l                                        ; $699b: $5d
	ld   [bc], a                                     ; $699c: $02
	sub  l                                           ; $699d: $95
	ld   [bc], a                                     ; $699e: $02
	sub  e                                           ; $699f: $93
	sbc  b                                           ; $69a0: $98
	ld   h, a                                        ; $69a1: $67
	adc  h                                           ; $69a2: $8c
	ld   l, c                                        ; $69a3: $69
	ld   l, l                                        ; $69a4: $6d
	inc  b                                           ; $69a5: $04
	ld   a, b                                        ; $69a6: $78
	ld   e, d                                        ; $69a7: $5a
	dec  c                                           ; $69a8: $0d
	ld   d, d                                        ; $69a9: $52
	ld   d, d                                        ; $69aa: $52
	ld   [hl], l                                     ; $69ab: $75
	ld   h, a                                        ; $69ac: $67
	sub  [hl]                                        ; $69ad: $96
	sbc  a                                           ; $69ae: $9f
	dec  c                                           ; $69af: $0d
	nop                                              ; $69b0: $00
	ld   a, [bc]                                     ; $69b1: $0a
	dec  c                                           ; $69b2: $0d
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	rrca                                             ; $69b5: $0f
	nop                                              ; $69b6: $00
	ld   bc, $1e09                                   ; $69b7: $01 $09 $1e
	nop                                              ; $69ba: $00
	rrca                                             ; $69bb: $0f
	nop                                              ; $69bc: $00
	ld   bc, $0401                                   ; $69bd: $01 $01 $04
	ld   l, l                                        ; $69c0: $6d
	ld   a, h                                        ; $69c1: $7c
	inc  bc                                          ; $69c2: $03
	ld   l, l                                        ; $69c3: $6d
	dec  b                                           ; $69c4: $05
	add  hl, de                                      ; $69c5: $19
	ld   a, h                                        ; $69c6: $7c
	ld   l, c                                        ; $69c7: $69
	ld   d, d                                        ; $69c8: $52
	ld   e, c                                        ; $69c9: $59
	ld   a, l                                        ; $69ca: $7d
	dec  c                                           ; $69cb: $0d
	ld   [hl], a                                     ; $69cc: $77
	and  c                                           ; $69cd: $a1
	ld   a, b                                        ; $69ce: $78
	sub  b                                           ; $69cf: $90
	ld   a, h                                        ; $69d0: $7c
	ld   [hl], l                                     ; $69d1: $75
	ld   h, a                                        ; $69d2: $67
	ld   e, c                                        ; $69d3: $59
	ld   sp, hl                                      ; $69d4: $f9
	dec  c                                           ; $69d5: $0d
	nop                                              ; $69d6: $00
	ld   a, [bc]                                     ; $69d7: $0a
	rlca                                             ; $69d8: $07
	rst  $38                                         ; $69d9: $ff
	ld   bc, $2503                                   ; $69da: $01 $03 $25
	ld   bc, $2566                                   ; $69dd: $01 $66 $25
	inc  bc                                          ; $69e0: $03
	inc  h                                           ; $69e1: $24
	ld   bc, $2566                                   ; $69e2: $01 $66 $25
	inc  e                                           ; $69e5: $1c
	nop                                              ; $69e6: $00
	rlca                                             ; $69e7: $07
	ld   a, b                                        ; $69e8: $78
	ld   [bc], a                                     ; $69e9: $02
	inc  bc                                          ; $69ea: $03
	dec  h                                           ; $69eb: $25
	ld   bc, $2556                                   ; $69ec: $01 $56 $25
	inc  bc                                          ; $69ef: $03
	inc  h                                           ; $69f0: $24
	ld   bc, $2556                                   ; $69f1: $01 $56 $25
	inc  e                                           ; $69f4: $1c
	nop                                              ; $69f5: $00
	ld   b, $ef                                      ; $69f6: $06 $ef
	ld   [bc], a                                     ; $69f8: $02
	inc  e                                           ; $69f9: $1c
	ld   bc, $0101                                   ; $69fa: $01 $01 $01
	dec  e                                           ; $69fd: $1d
	ld   b, b                                        ; $69fe: $40
	ld   de, $1103                                   ; $69ff: $11 $03 $11
	ld   bc, $2802                                   ; $6a02: $01 $02 $28
	nop                                              ; $6a05: $00
	ld   bc, $0008                                   ; $6a06: $01 $08 $00
	ld   h, e                                        ; $6a09: $63
	and  c                                           ; $6a0a: $a1
	ld   a, l                                        ; $6a0b: $7d
	dec  c                                           ; $6a0c: $0d
	ld   a, b                                        ; $6a0d: $78
	ld   e, c                                        ; $6a0e: $59
	ld   a, b                                        ; $6a0f: $78
	ld   e, c                                        ; $6a10: $59
	ld   [bc], a                                     ; $6a11: $02
	ld   l, e                                        ; $6a12: $6b
	ld   e, d                                        ; $6a13: $5a
	ld   d, d                                        ; $6a14: $52
	ld   d, d                                        ; $6a15: $52
	ld   [hl], l                                     ; $6a16: $75
	ld   h, a                                        ; $6a17: $67
	sub  [hl]                                        ; $6a18: $96
	sbc  a                                           ; $6a19: $9f
	dec  c                                           ; $6a1a: $0d
	nop                                              ; $6a1b: $00
	ld   a, [bc]                                     ; $6a1c: $0a
	ld   bc, $6202                                   ; $6a1d: $01 $02 $62
	dec  b                                           ; $6a20: $05
	pop  hl                                          ; $6a21: $e1
	ld   a, c                                        ; $6a22: $79
	ld   e, b                                        ; $6a23: $58
	ld   h, d                                        ; $6a24: $62
	sub  a                                           ; $6a25: $97
	ld   l, b                                        ; $6a26: $68
	ld   a, c                                        ; $6a27: $79
	dec  c                                           ; $6a28: $0d
	inc  bc                                          ; $6a29: $03
	ld   l, l                                        ; $6a2a: $6d
	dec  b                                           ; $6a2b: $05
	add  hl, de                                      ; $6a2c: $19
	ld   a, c                                        ; $6a2d: $79
	ld   a, l                                        ; $6a2e: $7d
	ld   h, b                                        ; $6a2f: $60
	adc  a                                           ; $6a30: $8f
	ld   a, [hl]                                     ; $6a31: $7e
	dec  c                                           ; $6a32: $0d
	ld   d, d                                        ; $6a33: $52
	ld   d, d                                        ; $6a34: $52
	halt                                             ; $6a35: $76
	dec  b                                           ; $6a36: $05
	pop  de                                          ; $6a37: $d1
	ld   d, d                                        ; $6a38: $52
	adc  h                                           ; $6a39: $8c
	ld   h, a                                        ; $6a3a: $67
	sbc  a                                           ; $6a3b: $9f
	dec  c                                           ; $6a3c: $0d
	nop                                              ; $6a3d: $00
	ld   a, [bc]                                     ; $6a3e: $0a
	ld   bc, $5063                                   ; $6a3f: $01 $63 $50
	sbc  [hl]                                        ; $6a42: $9e
	inc  b                                           ; $6a43: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a44: $cf
	inc  b                                           ; $6a45: $04
	xor  d                                           ; $6a46: $aa
	sub  b                                           ; $6a47: $90
	inc  bc                                          ; $6a48: $03
	ld   [hl], b                                     ; $6a49: $70
	ld   d, d                                        ; $6a4a: $52
	ld   [hl], l                                     ; $6a4b: $75
	ld   h, a                                        ; $6a4c: $67
	ld   e, c                                        ; $6a4d: $59
	sub  a                                           ; $6a4e: $97
	dec  c                                           ; $6a4f: $0d
	inc  bc                                          ; $6a50: $03
	ld   [hl], b                                     ; $6a51: $70
	ld   e, l                                        ; $6a52: $5d
	ld   [bc], a                                     ; $6a53: $02
	sub  l                                           ; $6a54: $95
	ld   [bc], a                                     ; $6a55: $02
	sub  e                                           ; $6a56: $93
	sbc  b                                           ; $6a57: $98
	ld   h, a                                        ; $6a58: $67
	adc  h                                           ; $6a59: $8c
	ld   l, c                                        ; $6a5a: $69
	ld   l, l                                        ; $6a5b: $6d
	inc  b                                           ; $6a5c: $04
	ld   a, b                                        ; $6a5d: $78
	ld   e, d                                        ; $6a5e: $5a
	dec  c                                           ; $6a5f: $0d
	ld   d, d                                        ; $6a60: $52
	ld   d, d                                        ; $6a61: $52
	ld   [hl], l                                     ; $6a62: $75
	ld   h, a                                        ; $6a63: $67
	sub  [hl]                                        ; $6a64: $96
	sbc  a                                           ; $6a65: $9f
	dec  c                                           ; $6a66: $0d
	nop                                              ; $6a67: $00
	ld   a, [bc]                                     ; $6a68: $0a
	dec  c                                           ; $6a69: $0d
	nop                                              ; $6a6a: $00
	nop                                              ; $6a6b: $00
	rrca                                             ; $6a6c: $0f
	nop                                              ; $6a6d: $00
	ld   bc, $1e09                                   ; $6a6e: $01 $09 $1e
	nop                                              ; $6a71: $00
	inc  e                                           ; $6a72: $1c
	ld   bc, $0000                                   ; $6a73: $01 $00 $00
	ld   bc, $0008                                   ; $6a76: $01 $08 $00
	ld   h, e                                        ; $6a79: $63
	and  c                                           ; $6a7a: $a1
	ld   a, l                                        ; $6a7b: $7d
	dec  c                                           ; $6a7c: $0d
	adc  h                                           ; $6a7d: $8c
	ld   l, b                                        ; $6a7e: $68
	adc  h                                           ; $6a7f: $8c
	ld   l, b                                        ; $6a80: $68
	halt                                             ; $6a81: $76
	ld   [bc], a                                     ; $6a82: $02
	sbc  l                                           ; $6a83: $9d
	ld   [hl], c                                     ; $6a84: $71
	ld   l, l                                        ; $6a85: $6d
	halt                                             ; $6a86: $76
	ld   h, c                                        ; $6a87: $61
	sbc  e                                           ; $6a88: $9b
	dec  c                                           ; $6a89: $0d
	ld   [hl], l                                     ; $6a8a: $75
	ld   h, l                                        ; $6a8b: $65
	sub  l                                           ; $6a8c: $95
	ld   d, h                                        ; $6a8d: $54
	ld   e, c                                        ; $6a8e: $59
	sbc  a                                           ; $6a8f: $9f
	dec  c                                           ; $6a90: $0d
	nop                                              ; $6a91: $00
	ld   a, [bc]                                     ; $6a92: $0a
	ld   bc, $7c61                                   ; $6a93: $01 $61 $7c
	adc  h                                           ; $6a96: $8c
	adc  h                                           ; $6a97: $8c
	sbc  [hl]                                        ; $6a98: $9e
	adc  h                                           ; $6a99: $8c
	ld   h, [hl]                                     ; $6a9a: $66
	adc  a                                           ; $6a9b: $8f
	ld   a, c                                        ; $6a9c: $79
	dec  c                                           ; $6a9d: $0d
	inc  bc                                          ; $6a9e: $03
	ld   l, l                                        ; $6a9f: $6d
	dec  b                                           ; $6aa0: $05
	add  hl, de                                      ; $6aa1: $19
	and  b                                           ; $6aa2: $a0
	ld   [bc], a                                     ; $6aa3: $02
	ei                                               ; $6aa4: $fb
	ld   e, a                                        ; $6aa5: $5f
	sbc  d                                           ; $6aa6: $9a
	ld   a, [hl]                                     ; $6aa7: $7e
	dec  c                                           ; $6aa8: $0d
	ld   d, d                                        ; $6aa9: $52
	ld   d, d                                        ; $6aaa: $52
	halt                                             ; $6aab: $76
	dec  b                                           ; $6aac: $05
	pop  de                                          ; $6aad: $d1
	ld   d, d                                        ; $6aae: $52
	adc  h                                           ; $6aaf: $8c
	ld   h, a                                        ; $6ab0: $67
	sub  [hl]                                        ; $6ab1: $96
	sbc  a                                           ; $6ab2: $9f
	dec  c                                           ; $6ab3: $0d
	nop                                              ; $6ab4: $00
	ld   a, [bc]                                     ; $6ab5: $0a
	ld   bc, $5063                                   ; $6ab6: $01 $63 $50
	sbc  [hl]                                        ; $6ab9: $9e
	inc  b                                           ; $6aba: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6abb: $cf
	inc  b                                           ; $6abc: $04
	xor  d                                           ; $6abd: $aa
	sub  b                                           ; $6abe: $90
	inc  bc                                          ; $6abf: $03
	ld   [hl], b                                     ; $6ac0: $70
	ld   d, d                                        ; $6ac1: $52
	ld   [hl], l                                     ; $6ac2: $75
	ld   h, a                                        ; $6ac3: $67
	ld   e, c                                        ; $6ac4: $59
	sub  a                                           ; $6ac5: $97
	dec  c                                           ; $6ac6: $0d
	inc  bc                                          ; $6ac7: $03
	ld   [hl], b                                     ; $6ac8: $70
	ld   e, l                                        ; $6ac9: $5d
	ld   [bc], a                                     ; $6aca: $02
	sub  l                                           ; $6acb: $95
	ld   [bc], a                                     ; $6acc: $02
	sub  e                                           ; $6acd: $93
	sbc  b                                           ; $6ace: $98
	ld   h, a                                        ; $6acf: $67
	adc  h                                           ; $6ad0: $8c
	ld   l, c                                        ; $6ad1: $69
	ld   l, l                                        ; $6ad2: $6d
	inc  b                                           ; $6ad3: $04
	ld   a, b                                        ; $6ad4: $78
	ld   e, d                                        ; $6ad5: $5a
	dec  c                                           ; $6ad6: $0d
	ld   d, d                                        ; $6ad7: $52
	ld   d, d                                        ; $6ad8: $52
	ld   [hl], l                                     ; $6ad9: $75
	ld   h, a                                        ; $6ada: $67
	sub  [hl]                                        ; $6adb: $96
	sbc  a                                           ; $6adc: $9f
	dec  c                                           ; $6add: $0d
	nop                                              ; $6ade: $00
	ld   a, [bc]                                     ; $6adf: $0a
	dec  c                                           ; $6ae0: $0d
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	rrca                                             ; $6ae3: $0f
	nop                                              ; $6ae4: $00
	ld   bc, $1e09                                   ; $6ae5: $01 $09 $1e
	nop                                              ; $6ae8: $00
	inc  e                                           ; $6ae9: $1c
	ld   bc, $0404                                   ; $6aea: $01 $04 $04
	ld   bc, $fc54                                   ; $6aed: $01 $54 $fc
	and  c                                           ; $6af0: $a1
	rst  $38                                         ; $6af1: $ff
	rst  $38                                         ; $6af2: $ff
	dec  c                                           ; $6af3: $0d
	ld   [hl], a                                     ; $6af4: $77
	ld   d, h                                        ; $6af5: $54
	ld   h, l                                        ; $6af6: $65
	ld   [hl], h                                     ; $6af7: $74
	sbc  [hl]                                        ; $6af8: $9e
	ld   h, c                                        ; $6af9: $61
	and  c                                           ; $6afa: $a1
	ld   a, b                                        ; $6afb: $78
	ld   a, c                                        ; $6afc: $79
	dec  c                                           ; $6afd: $0d
	ld   [bc], a                                     ; $6afe: $02
	jr   z, jr_052_6b53                              ; $6aff: $28 $52

	and  c                                           ; $6b01: $a1
	ld   [hl], l                                     ; $6b02: $75
	ld   h, l                                        ; $6b03: $65
	sub  l                                           ; $6b04: $95
	ld   d, h                                        ; $6b05: $54
	ld   a, e                                        ; $6b06: $7b
	rst  $38                                         ; $6b07: $ff
	rst  $38                                         ; $6b08: $ff
	dec  c                                           ; $6b09: $0d
	nop                                              ; $6b0a: $00
	ld   a, [bc]                                     ; $6b0b: $0a
	ld   bc, $5490                                   ; $6b0c: $01 $90 $54
	inc  bc                                          ; $6b0f: $03
	ld   l, h                                        ; $6b10: $6c
	ld   h, l                                        ; $6b11: $65
	sbc  [hl]                                        ; $6b12: $9e
	inc  bc                                          ; $6b13: $03
	ld   l, l                                        ; $6b14: $6d
	dec  b                                           ; $6b15: $05
	add  hl, de                                      ; $6b16: $19
	ld   a, c                                        ; $6b17: $79
	dec  c                                           ; $6b18: $0d
	inc  bc                                          ; $6b19: $03
	ld   l, a                                        ; $6b1a: $6f
	ld   [bc], a                                     ; $6b1b: $02
	xor  c                                           ; $6b1c: $a9
	and  b                                           ; $6b1d: $a0
	ld   h, e                                        ; $6b1e: $63
	ld   e, c                                        ; $6b1f: $59
	ld   a, b                                        ; $6b20: $78
	ld   d, d                                        ; $6b21: $52
	halt                                             ; $6b22: $76
	dec  c                                           ; $6b23: $0d
	ld   d, d                                        ; $6b24: $52
	ld   e, a                                        ; $6b25: $5f
	ld   a, b                                        ; $6b26: $78
	ld   d, d                                        ; $6b27: $52
	sub  [hl]                                        ; $6b28: $96
	ld   d, h                                        ; $6b29: $54
	ld   [hl], l                                     ; $6b2a: $75
	ld   h, a                                        ; $6b2b: $67
	ld   a, e                                        ; $6b2c: $7b
	sbc  a                                           ; $6b2d: $9f
	dec  c                                           ; $6b2e: $0d
	nop                                              ; $6b2f: $00
	ld   a, [bc]                                     ; $6b30: $0a
	inc  e                                           ; $6b31: $1c
	ld   bc, $0000                                   ; $6b32: $01 $00 $00
	ld   bc, $5063                                   ; $6b35: $01 $63 $50
	sbc  [hl]                                        ; $6b38: $9e
	inc  b                                           ; $6b39: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b3a: $cf
	inc  b                                           ; $6b3b: $04
	xor  d                                           ; $6b3c: $aa
	sub  b                                           ; $6b3d: $90
	inc  bc                                          ; $6b3e: $03
	ld   [hl], b                                     ; $6b3f: $70
	ld   d, d                                        ; $6b40: $52
	ld   [hl], l                                     ; $6b41: $75
	ld   h, a                                        ; $6b42: $67
	ld   e, c                                        ; $6b43: $59
	sub  a                                           ; $6b44: $97
	dec  c                                           ; $6b45: $0d
	inc  bc                                          ; $6b46: $03
	ld   [hl], b                                     ; $6b47: $70
	ld   e, l                                        ; $6b48: $5d
	ld   [bc], a                                     ; $6b49: $02
	sub  l                                           ; $6b4a: $95
	ld   [bc], a                                     ; $6b4b: $02
	sub  e                                           ; $6b4c: $93
	sbc  b                                           ; $6b4d: $98
	ld   h, a                                        ; $6b4e: $67
	adc  h                                           ; $6b4f: $8c
	ld   l, c                                        ; $6b50: $69
	ld   l, l                                        ; $6b51: $6d
	inc  b                                           ; $6b52: $04

jr_052_6b53:
	ld   a, b                                        ; $6b53: $78
	ld   e, d                                        ; $6b54: $5a
	dec  c                                           ; $6b55: $0d
	ld   d, d                                        ; $6b56: $52
	ld   d, d                                        ; $6b57: $52
	ld   [hl], l                                     ; $6b58: $75
	ld   h, a                                        ; $6b59: $67
	sub  [hl]                                        ; $6b5a: $96
	sbc  a                                           ; $6b5b: $9f
	dec  c                                           ; $6b5c: $0d
	nop                                              ; $6b5d: $00
	ld   a, [bc]                                     ; $6b5e: $0a
	dec  c                                           ; $6b5f: $0d
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	rrca                                             ; $6b62: $0f
	nop                                              ; $6b63: $00
	ld   bc, $1e09                                   ; $6b64: $01 $09 $1e
	nop                                              ; $6b67: $00
	nop                                              ; $6b68: $00
	ld   [bc], a                                     ; $6b69: $02
	rlca                                             ; $6b6a: $07
	ld   [hl+], a                                    ; $6b6b: $22
	nop                                              ; $6b6c: $00
	inc  bc                                          ; $6b6d: $03
	inc  de                                          ; $6b6e: $13
	ld   bc, $2265                                   ; $6b6f: $01 $65 $22
	nop                                              ; $6b72: $00
	rlca                                             ; $6b73: $07
	ld   d, e                                        ; $6b74: $53
	nop                                              ; $6b75: $00
	inc  bc                                          ; $6b76: $03
	inc  de                                          ; $6b77: $13
	ld   bc, $2566                                   ; $6b78: $01 $66 $25
	inc  bc                                          ; $6b7b: $03
	inc  de                                          ; $6b7c: $13
	ld   bc, $2287                                   ; $6b7d: $01 $87 $22
	inc  e                                           ; $6b80: $1c
	nop                                              ; $6b81: $00
	rlca                                             ; $6b82: $07
	sbc  c                                           ; $6b83: $99
	nop                                              ; $6b84: $00
	inc  bc                                          ; $6b85: $03
	inc  de                                          ; $6b86: $13
	ld   bc, $2587                                   ; $6b87: $01 $87 $25
	nop                                              ; $6b8a: $00
	rrca                                             ; $6b8b: $0f
	nop                                              ; $6b8c: $00
	ld   bc, $df01                                   ; $6b8d: $01 $01 $df
	db   $ec                                         ; $6b90: $ec
	and  e                                           ; $6b91: $a3
	ld   h, e                                        ; $6b92: $63
	and  c                                           ; $6b93: $a1
	sbc  a                                           ; $6b94: $9f
	dec  c                                           ; $6b95: $0d
	nop                                              ; $6b96: $00
	ld   a, [bc]                                     ; $6b97: $0a
	inc  e                                           ; $6b98: $1c
	inc  bc                                          ; $6b99: $03
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	ld   bc, $8c52                                   ; $6b9c: $01 $52 $8c
	dec  b                                           ; $6b9f: $05
	jr   z, jr_052_6bf4                              ; $6ba0: $28 $52

	ld   [hl], l                                     ; $6ba2: $75
	sbc  c                                           ; $6ba3: $99
	ld   a, h                                        ; $6ba4: $7c
	sbc  a                                           ; $6ba5: $9f
	dec  c                                           ; $6ba6: $0d
	adc  h                                           ; $6ba7: $8c
	ld   l, l                                        ; $6ba8: $6d
	sbc  [hl]                                        ; $6ba9: $9e
	inc  b                                           ; $6baa: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bab: $cf
	inc  b                                           ; $6bac: $04
	xor  d                                           ; $6bad: $aa
	ld   a, e                                        ; $6bae: $7b
	sbc  a                                           ; $6baf: $9f
	dec  c                                           ; $6bb0: $0d
	nop                                              ; $6bb1: $00
	ld   a, [bc]                                     ; $6bb2: $0a
	dec  c                                           ; $6bb3: $0d
	nop                                              ; $6bb4: $00
	nop                                              ; $6bb5: $00
	rrca                                             ; $6bb6: $0f
	nop                                              ; $6bb7: $00
	ld   bc, $1e09                                   ; $6bb8: $01 $09 $1e
	nop                                              ; $6bbb: $00
	inc  e                                           ; $6bbc: $1c
	inc  bc                                          ; $6bbd: $03
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	ld   bc, $0008                                   ; $6bc0: $01 $08 $00
	ld   e, l                                        ; $6bc3: $5d
	and  c                                           ; $6bc4: $a1
	sbc  a                                           ; $6bc5: $9f
	dec  c                                           ; $6bc6: $0d
	nop                                              ; $6bc7: $00
	ld   a, [bc]                                     ; $6bc8: $0a
	rrca                                             ; $6bc9: $0f
	nop                                              ; $6bca: $00
	ld   bc, $df01                                   ; $6bcb: $01 $01 $df
	db   $ec                                         ; $6bce: $ec
	and  e                                           ; $6bcf: $a3
	ld   h, e                                        ; $6bd0: $63
	and  c                                           ; $6bd1: $a1
	sbc  a                                           ; $6bd2: $9f
	dec  c                                           ; $6bd3: $0d
	ld   e, b                                        ; $6bd4: $58
	inc  b                                           ; $6bd5: $04
	ld   a, e                                        ; $6bd6: $7b
	sbc  d                                           ; $6bd7: $9a
	ld   h, e                                        ; $6bd8: $63
	adc  h                                           ; $6bd9: $8c
	ld   [hl], l                                     ; $6bda: $75
	ld   h, a                                        ; $6bdb: $67
	sbc  a                                           ; $6bdc: $9f
	dec  c                                           ; $6bdd: $0d
	nop                                              ; $6bde: $00
	ld   a, [bc]                                     ; $6bdf: $0a
	rrca                                             ; $6be0: $0f
	inc  bc                                          ; $6be1: $03
	nop                                              ; $6be2: $00
	ld   bc, $9502                                   ; $6be3: $01 $02 $95
	ld   [bc], a                                     ; $6be6: $02
	sub  e                                           ; $6be7: $93
	sbc  b                                           ; $6be8: $98
	ld   e, d                                        ; $6be9: $5a
	and  c                                           ; $6bea: $a1
	ld   a, [hl]                                     ; $6beb: $7e
	sbc  c                                           ; $6bec: $99
	ld   a, h                                        ; $6bed: $7c
	sub  [hl]                                        ; $6bee: $96
	sbc  a                                           ; $6bef: $9f
	dec  c                                           ; $6bf0: $0d
	ld   h, [hl]                                     ; $6bf1: $66
	sub  c                                           ; $6bf2: $91
	ld   d, b                                        ; $6bf3: $50

jr_052_6bf4:
	ld   a, e                                        ; $6bf4: $7b
	sbc  a                                           ; $6bf5: $9f
	dec  c                                           ; $6bf6: $0d
	nop                                              ; $6bf7: $00
	ld   a, [bc]                                     ; $6bf8: $0a
	dec  c                                           ; $6bf9: $0d
	nop                                              ; $6bfa: $00
	nop                                              ; $6bfb: $00
	rrca                                             ; $6bfc: $0f
	nop                                              ; $6bfd: $00
	ld   bc, $1e09                                   ; $6bfe: $01 $09 $1e
	nop                                              ; $6c01: $00
	inc  e                                           ; $6c02: $1c
	inc  bc                                          ; $6c03: $03
	nop                                              ; $6c04: $00
	nop                                              ; $6c05: $00
	ld   bc, $9750                                   ; $6c06: $01 $50 $97
	sbc  [hl]                                        ; $6c09: $9e
	ld   [$5d00], sp                                 ; $6c0a: $08 $00 $5d
	and  c                                           ; $6c0d: $a1
	sbc  a                                           ; $6c0e: $9f
	dec  c                                           ; $6c0f: $0d
	ld   [bc], a                                     ; $6c10: $02
	sub  l                                           ; $6c11: $95
	ld   [bc], a                                     ; $6c12: $02
	sub  e                                           ; $6c13: $93
	sbc  b                                           ; $6c14: $98
	ld   h, d                                        ; $6c15: $62
	ld   e, l                                        ; $6c16: $5d
	sbc  e                                           ; $6c17: $9b
	ld   d, h                                        ; $6c18: $54
	ld   h, e                                        ; $6c19: $63
	adc  h                                           ; $6c1a: $8c
	sbc  a                                           ; $6c1b: $9f
	dec  c                                           ; $6c1c: $0d
	nop                                              ; $6c1d: $00
	ld   a, [bc]                                     ; $6c1e: $0a
	rrca                                             ; $6c1f: $0f
	nop                                              ; $6c20: $00
	ld   bc, $df01                                   ; $6c21: $01 $01 $df
	db   $ec                                         ; $6c24: $ec
	and  e                                           ; $6c25: $a3
	ld   h, e                                        ; $6c26: $63
	and  c                                           ; $6c27: $a1
	sbc  a                                           ; $6c28: $9f
	dec  c                                           ; $6c29: $0d
	ld   h, c                                        ; $6c2a: $61
	and  c                                           ; $6c2b: $a1
	ld   a, b                                        ; $6c2c: $78
	sbc  [hl]                                        ; $6c2d: $9e
	inc  b                                           ; $6c2e: $04
	rst  $28                                         ; $6c2f: $ef
	ld   e, b                                        ; $6c30: $58
	ld   l, e                                        ; $6c31: $6b
	ld   e, l                                        ; $6c32: $5d
	ld   a, c                                        ; $6c33: $79
	dec  c                                           ; $6c34: $0d
	ld   [hl], a                                     ; $6c35: $77
	ld   d, h                                        ; $6c36: $54
	ld   h, l                                        ; $6c37: $65
	ld   l, l                                        ; $6c38: $6d
	and  c                                           ; $6c39: $a1
	ld   [hl], l                                     ; $6c3a: $75
	ld   h, a                                        ; $6c3b: $67
	ld   e, c                                        ; $6c3c: $59
	ld   sp, hl                                      ; $6c3d: $f9
	dec  c                                           ; $6c3e: $0d
	nop                                              ; $6c3f: $00
	ld   a, [bc]                                     ; $6c40: $0a
	inc  e                                           ; $6c41: $1c
	inc  bc                                          ; $6c42: $03
	ld   bc, $0101                                   ; $6c43: $01 $01 $01
	inc  b                                           ; $6c46: $04
	adc  $9a                                         ; $6c47: $ce $9a
	ld   a, b                                        ; $6c49: $78
	ld   e, l                                        ; $6c4a: $5d
	ld   [hl], h                                     ; $6c4b: $74
	rst  $38                                         ; $6c4c: $ff
	rst  $38                                         ; $6c4d: $ff
	dec  c                                           ; $6c4e: $0d
	inc  bc                                          ; $6c4f: $03
	ld   d, e                                        ; $6c50: $53
	and  b                                           ; $6c51: $a0
	ld   [bc], a                                     ; $6c52: $02
	sub  l                                           ; $6c53: $95
	ld   [hl], h                                     ; $6c54: $74
	ld   d, d                                        ; $6c55: $52
	ld   l, l                                        ; $6c56: $6d
	ld   a, h                                        ; $6c57: $7c
	sub  [hl]                                        ; $6c58: $96
	sbc  a                                           ; $6c59: $9f
	dec  c                                           ; $6c5a: $0d
	nop                                              ; $6c5b: $00
	inc  e                                           ; $6c5c: $1c
	inc  bc                                          ; $6c5d: $03
	inc  bc                                          ; $6c5e: $03
	inc  bc                                          ; $6c5f: $03
	ld   bc, $9a6b                                   ; $6c60: $01 $6b $9a
	ld   h, [hl]                                     ; $6c63: $66
	sub  c                                           ; $6c64: $91
	sbc  [hl]                                        ; $6c65: $9e
	ld   e, b                                        ; $6c66: $58
	sub  d                                           ; $6c67: $92
	ld   h, a                                        ; $6c68: $67
	adc  l                                           ; $6c69: $8d
	sbc  a                                           ; $6c6a: $9f
	dec  c                                           ; $6c6b: $0d
	nop                                              ; $6c6c: $00
	ld   a, [bc]                                     ; $6c6d: $0a
	dec  c                                           ; $6c6e: $0d
	nop                                              ; $6c6f: $00
	nop                                              ; $6c70: $00
	rrca                                             ; $6c71: $0f
	nop                                              ; $6c72: $00
	ld   bc, $1e09                                   ; $6c73: $01 $09 $1e
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	ld   [bc], a                                     ; $6c78: $02
	rlca                                             ; $6c79: $07
	ld   [hl+], a                                    ; $6c7a: $22
	nop                                              ; $6c7b: $00
	inc  bc                                          ; $6c7c: $03
	ld   [de], a                                     ; $6c7d: $12
	ld   bc, $2265                                   ; $6c7e: $01 $65 $22
	nop                                              ; $6c81: $00
	rlca                                             ; $6c82: $07
	ld   e, d                                        ; $6c83: $5a
	nop                                              ; $6c84: $00
	inc  bc                                          ; $6c85: $03
	ld   [de], a                                     ; $6c86: $12
	ld   bc, $2565                                   ; $6c87: $01 $65 $25
	inc  bc                                          ; $6c8a: $03
	ld   [de], a                                     ; $6c8b: $12
	ld   bc, $2287                                   ; $6c8c: $01 $87 $22
	inc  e                                           ; $6c8f: $1c
	nop                                              ; $6c90: $00
	rlca                                             ; $6c91: $07
	and  [hl]                                        ; $6c92: $a6
	nop                                              ; $6c93: $00
	inc  bc                                          ; $6c94: $03
	ld   [de], a                                     ; $6c95: $12
	ld   bc, $2587                                   ; $6c96: $01 $87 $25
	nop                                              ; $6c99: $00
	rrca                                             ; $6c9a: $0f
	nop                                              ; $6c9b: $00
	ld   bc, $6701                                   ; $6c9c: $01 $01 $67
	adc  l                                           ; $6c9f: $8d
	sbc  d                                           ; $6ca0: $9a
	ld   h, e                                        ; $6ca1: $63
	and  c                                           ; $6ca2: $a1
	sbc  a                                           ; $6ca3: $9f
	dec  c                                           ; $6ca4: $0d
	nop                                              ; $6ca5: $00
	ld   a, [bc]                                     ; $6ca6: $0a
	inc  e                                           ; $6ca7: $1c
	ld   [bc], a                                     ; $6ca8: $02
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	ld   bc, $8c52                                   ; $6cab: $01 $52 $8c
	sbc  [hl]                                        ; $6cae: $9e
	inc  bc                                          ; $6caf: $03
	ld   l, e                                        ; $6cb0: $6b
	ld   e, d                                        ; $6cb1: $5a
	inc  b                                           ; $6cb2: $04
	sbc  c                                           ; $6cb3: $99
	ld   l, c                                        ; $6cb4: $69
	adc  h                                           ; $6cb5: $8c
	ld   l, c                                        ; $6cb6: $69
	and  c                                           ; $6cb7: $a1
	ld   a, h                                        ; $6cb8: $7c
	sbc  a                                           ; $6cb9: $9f
	dec  c                                           ; $6cba: $0d
	ld   d, b                                        ; $6cbb: $50
	halt                                             ; $6cbc: $76
	ld   a, c                                        ; $6cbd: $79
	ld   h, l                                        ; $6cbe: $65
	ld   [hl], h                                     ; $6cbf: $74
	ld   e, l                                        ; $6cc0: $5d
	ld   l, [hl]                                     ; $6cc1: $6e
	ld   h, e                                        ; $6cc2: $63
	ld   d, d                                        ; $6cc3: $52
	ld   a, b                                        ; $6cc4: $78
	sbc  a                                           ; $6cc5: $9f
	dec  c                                           ; $6cc6: $0d
	nop                                              ; $6cc7: $00
	ld   a, [bc]                                     ; $6cc8: $0a
	dec  c                                           ; $6cc9: $0d
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	rrca                                             ; $6ccc: $0f
	nop                                              ; $6ccd: $00
	ld   bc, $1e09                                   ; $6cce: $01 $09 $1e
	nop                                              ; $6cd1: $00
	inc  e                                           ; $6cd2: $1c
	ld   [bc], a                                     ; $6cd3: $02
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	ld   bc, $9750                                   ; $6cd6: $01 $50 $97
	sbc  [hl]                                        ; $6cd9: $9e
	ld   [$6300], sp                                 ; $6cda: $08 $00 $63
	and  c                                           ; $6cdd: $a1
	dec  c                                           ; $6cde: $0d
	nop                                              ; $6cdf: $00
	ld   a, [bc]                                     ; $6ce0: $0a
	rrca                                             ; $6ce1: $0f
	nop                                              ; $6ce2: $00
	ld   bc, $6701                                   ; $6ce3: $01 $01 $67
	adc  l                                           ; $6ce6: $8d
	sbc  d                                           ; $6ce7: $9a
	ld   h, e                                        ; $6ce8: $63
	and  c                                           ; $6ce9: $a1
	sbc  a                                           ; $6cea: $9f
	dec  c                                           ; $6ceb: $0d
	ld   e, b                                        ; $6cec: $58
	inc  b                                           ; $6ced: $04
	ld   a, e                                        ; $6cee: $7b
	sbc  d                                           ; $6cef: $9a
	ld   h, e                                        ; $6cf0: $63
	adc  h                                           ; $6cf1: $8c
	ld   [hl], l                                     ; $6cf2: $75
	ld   h, a                                        ; $6cf3: $67
	sbc  a                                           ; $6cf4: $9f
	dec  c                                           ; $6cf5: $0d
	nop                                              ; $6cf6: $00
	ld   a, [bc]                                     ; $6cf7: $0a
	rrca                                             ; $6cf8: $0f
	ld   [bc], a                                     ; $6cf9: $02
	nop                                              ; $6cfa: $00
	ld   bc, $9502                                   ; $6cfb: $01 $02 $95
	ld   [bc], a                                     ; $6cfe: $02
	sub  e                                           ; $6cff: $93
	sbc  b                                           ; $6d00: $98
	ld   e, d                                        ; $6d01: $5a
	and  c                                           ; $6d02: $a1
	ld   a, [hl]                                     ; $6d03: $7e
	sbc  b                                           ; $6d04: $98
	ld   a, b                                        ; $6d05: $78
	ld   h, e                                        ; $6d06: $63
	ld   d, d                                        ; $6d07: $52
	sbc  a                                           ; $6d08: $9f
	dec  c                                           ; $6d09: $0d
	ld   [hl], l                                     ; $6d0a: $75
	ld   a, l                                        ; $6d0b: $7d
	inc  bc                                          ; $6d0c: $03
	add  e                                           ; $6d0d: $83
	dec  b                                           ; $6d0e: $05
	dec  c                                           ; $6d0f: $0d
	rst  $38                                         ; $6d10: $ff
	rst  $38                                         ; $6d11: $ff
	dec  c                                           ; $6d12: $0d
	nop                                              ; $6d13: $00
	ld   a, [bc]                                     ; $6d14: $0a
	dec  c                                           ; $6d15: $0d
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	rrca                                             ; $6d18: $0f
	nop                                              ; $6d19: $00
	ld   bc, $1e09                                   ; $6d1a: $01 $09 $1e
	nop                                              ; $6d1d: $00
	inc  e                                           ; $6d1e: $1c
	ld   [bc], a                                     ; $6d1f: $02
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	ld   bc, $9750                                   ; $6d22: $01 $50 $97
	sbc  [hl]                                        ; $6d25: $9e
	ld   [$6300], sp                                 ; $6d26: $08 $00 $63
	and  c                                           ; $6d29: $a1
	sbc  a                                           ; $6d2a: $9f
	dec  c                                           ; $6d2b: $0d
	ld   [bc], a                                     ; $6d2c: $02
	sub  l                                           ; $6d2d: $95
	ld   [bc], a                                     ; $6d2e: $02
	sub  e                                           ; $6d2f: $93
	sbc  b                                           ; $6d30: $98
	ld   h, d                                        ; $6d31: $62
	ld   e, l                                        ; $6d32: $5d
	sbc  e                                           ; $6d33: $9b
	ld   d, h                                        ; $6d34: $54
	ld   h, e                                        ; $6d35: $63
	adc  h                                           ; $6d36: $8c
	sbc  a                                           ; $6d37: $9f
	dec  c                                           ; $6d38: $0d
	nop                                              ; $6d39: $00
	ld   a, [bc]                                     ; $6d3a: $0a
	rrca                                             ; $6d3b: $0f
	nop                                              ; $6d3c: $00
	ld   bc, $6701                                   ; $6d3d: $01 $01 $67
	adc  l                                           ; $6d40: $8d
	sbc  d                                           ; $6d41: $9a
	ld   h, e                                        ; $6d42: $63
	and  c                                           ; $6d43: $a1
	sbc  a                                           ; $6d44: $9f
	dec  c                                           ; $6d45: $0d
	ld   h, c                                        ; $6d46: $61
	and  c                                           ; $6d47: $a1
	ld   a, b                                        ; $6d48: $78
	sbc  [hl]                                        ; $6d49: $9e
	inc  b                                           ; $6d4a: $04
	rst  $28                                         ; $6d4b: $ef
	ld   e, b                                        ; $6d4c: $58
	ld   l, e                                        ; $6d4d: $6b
	ld   e, l                                        ; $6d4e: $5d
	ld   a, c                                        ; $6d4f: $79
	dec  c                                           ; $6d50: $0d
	ld   [hl], a                                     ; $6d51: $77
	ld   d, h                                        ; $6d52: $54
	ld   h, l                                        ; $6d53: $65
	ld   l, l                                        ; $6d54: $6d
	and  c                                           ; $6d55: $a1
	ld   [hl], l                                     ; $6d56: $75
	ld   h, a                                        ; $6d57: $67
	ld   e, c                                        ; $6d58: $59
	ld   sp, hl                                      ; $6d59: $f9
	dec  c                                           ; $6d5a: $0d

Jump_052_6d5b:
	nop                                              ; $6d5b: $00
	ld   a, [bc]                                     ; $6d5c: $0a
	inc  e                                           ; $6d5d: $1c
	ld   [bc], a                                     ; $6d5e: $02
	inc  b                                           ; $6d5f: $04
	inc  b                                           ; $6d60: $04
	ld   bc, $ce04                                   ; $6d61: $01 $04 $ce
	sbc  d                                           ; $6d64: $9a
	ld   a, b                                        ; $6d65: $78
	ld   e, l                                        ; $6d66: $5d
	ld   [hl], h                                     ; $6d67: $74
	rst  $38                                         ; $6d68: $ff
	rst  $38                                         ; $6d69: $ff
	dec  c                                           ; $6d6a: $0d
	inc  bc                                          ; $6d6b: $03
	ld   l, h                                        ; $6d6c: $6c
	ld   h, l                                        ; $6d6d: $65
	ld   [bc], a                                     ; $6d6e: $02
	ld   [hl-], a                                    ; $6d6f: $32
	ld   d, d                                        ; $6d70: $52
	ld   [hl], l                                     ; $6d71: $75
	ld   d, d                                        ; $6d72: $52
	adc  h                                           ; $6d73: $8c
	ld   h, l                                        ; $6d74: $65
	ld   l, l                                        ; $6d75: $6d
	ld   a, h                                        ; $6d76: $7c
	sbc  a                                           ; $6d77: $9f
	dec  c                                           ; $6d78: $0d
	nop                                              ; $6d79: $00
	inc  e                                           ; $6d7a: $1c
	ld   [bc], a                                     ; $6d7b: $02
	ld   bc, $0101                                   ; $6d7c: $01 $01 $01
	ld   l, e                                        ; $6d7f: $6b
	sbc  d                                           ; $6d80: $9a
	ld   h, [hl]                                     ; $6d81: $66
	sub  c                                           ; $6d82: $91
	sbc  [hl]                                        ; $6d83: $9e
	ld   e, b                                        ; $6d84: $58
	sub  d                                           ; $6d85: $92
	ld   h, a                                        ; $6d86: $67
	adc  l                                           ; $6d87: $8d
	ld   a, b                                        ; $6d88: $78
	ld   h, e                                        ; $6d89: $63
	ld   d, d                                        ; $6d8a: $52
	sbc  a                                           ; $6d8b: $9f
	dec  c                                           ; $6d8c: $0d
	nop                                              ; $6d8d: $00
	ld   a, [bc]                                     ; $6d8e: $0a
	dec  c                                           ; $6d8f: $0d
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	rrca                                             ; $6d92: $0f
	nop                                              ; $6d93: $00
	ld   bc, $1e09                                   ; $6d94: $01 $09 $1e
	nop                                              ; $6d97: $00
	nop                                              ; $6d98: $00
	ld   [bc], a                                     ; $6d99: $02
	rlca                                             ; $6d9a: $07
	ld   [hl+], a                                    ; $6d9b: $22
	nop                                              ; $6d9c: $00
	inc  bc                                          ; $6d9d: $03
	ld   de, $6501                                   ; $6d9e: $11 $01 $65
	ld   [hl+], a                                    ; $6da1: $22
	nop                                              ; $6da2: $00
	rlca                                             ; $6da3: $07
	ld   d, e                                        ; $6da4: $53
	nop                                              ; $6da5: $00
	inc  bc                                          ; $6da6: $03
	ld   de, $6501                                   ; $6da7: $11 $01 $65
	dec  h                                           ; $6daa: $25
	inc  bc                                          ; $6dab: $03
	ld   de, $8701                                   ; $6dac: $11 $01 $87
	ld   [hl+], a                                    ; $6daf: $22
	inc  e                                           ; $6db0: $1c
	nop                                              ; $6db1: $00
	rlca                                             ; $6db2: $07
	sbc  l                                           ; $6db3: $9d
	nop                                              ; $6db4: $00
	inc  bc                                          ; $6db5: $03
	ld   de, $8701                                   ; $6db6: $11 $01 $87
	dec  h                                           ; $6db9: $25
	nop                                              ; $6dba: $00
	rrca                                             ; $6dbb: $0f
	nop                                              ; $6dbc: $00
	ld   bc, $6301                                   ; $6dbd: $01 $01 $63
	ld   e, l                                        ; $6dc0: $5d
	sub  a                                           ; $6dc1: $97
	ld   h, e                                        ; $6dc2: $63
	and  c                                           ; $6dc3: $a1
	sbc  a                                           ; $6dc4: $9f
	dec  c                                           ; $6dc5: $0d
	nop                                              ; $6dc6: $00
	ld   a, [bc]                                     ; $6dc7: $0a
	inc  e                                           ; $6dc8: $1c
	ld   bc, $0000                                   ; $6dc9: $01 $00 $00
	ld   bc, $8f62                                   ; $6dcc: $01 $62 $8f
	and  c                                           ; $6dcf: $a1
	ld   a, b                                        ; $6dd0: $78
	ld   h, e                                        ; $6dd1: $63
	ld   d, d                                        ; $6dd2: $52
	sbc  a                                           ; $6dd3: $9f
	dec  c                                           ; $6dd4: $0d
	ld   d, d                                        ; $6dd5: $52
	adc  h                                           ; $6dd6: $8c
	dec  b                                           ; $6dd7: $05
	jr   z, jr_052_6e2c                              ; $6dd8: $28 $52

	ld   [hl], l                                     ; $6dda: $75
	sbc  c                                           ; $6ddb: $99
	and  c                                           ; $6ddc: $a1
	ld   [hl], l                                     ; $6ddd: $75
	ld   h, a                                        ; $6dde: $67
	sbc  a                                           ; $6ddf: $9f
	dec  c                                           ; $6de0: $0d
	nop                                              ; $6de1: $00
	ld   a, [bc]                                     ; $6de2: $0a
	dec  c                                           ; $6de3: $0d
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	rrca                                             ; $6de6: $0f
	nop                                              ; $6de7: $00
	ld   bc, $1e09                                   ; $6de8: $01 $09 $1e
	nop                                              ; $6deb: $00
	inc  e                                           ; $6dec: $1c
	ld   bc, $0000                                   ; $6ded: $01 $00 $00
	ld   bc, $9750                                   ; $6df0: $01 $50 $97
	sbc  [hl]                                        ; $6df3: $9e
	ld   [$6300], sp                                 ; $6df4: $08 $00 $63
	and  c                                           ; $6df7: $a1
	dec  c                                           ; $6df8: $0d
	nop                                              ; $6df9: $00
	ld   a, [bc]                                     ; $6dfa: $0a
	rrca                                             ; $6dfb: $0f
	nop                                              ; $6dfc: $00
	ld   bc, $6301                                   ; $6dfd: $01 $01 $63
	ld   e, l                                        ; $6e00: $5d
	sub  a                                           ; $6e01: $97
	ld   h, e                                        ; $6e02: $63
	and  c                                           ; $6e03: $a1
	sbc  a                                           ; $6e04: $9f
	dec  c                                           ; $6e05: $0d
	ld   e, b                                        ; $6e06: $58
	inc  b                                           ; $6e07: $04
	ld   a, e                                        ; $6e08: $7b
	sbc  d                                           ; $6e09: $9a
	ld   h, e                                        ; $6e0a: $63
	adc  h                                           ; $6e0b: $8c
	ld   [hl], l                                     ; $6e0c: $75
	ld   h, a                                        ; $6e0d: $67
	sbc  a                                           ; $6e0e: $9f
	dec  c                                           ; $6e0f: $0d
	nop                                              ; $6e10: $00
	ld   a, [bc]                                     ; $6e11: $0a
	rrca                                             ; $6e12: $0f
	ld   bc, $0100                                   ; $6e13: $01 $00 $01
	ld   [bc], a                                     ; $6e16: $02
	sub  l                                           ; $6e17: $95
	ld   [bc], a                                     ; $6e18: $02
	sub  e                                           ; $6e19: $93
	sbc  b                                           ; $6e1a: $98
	ld   h, d                                        ; $6e1b: $62
	ld   e, l                                        ; $6e1c: $5d
	sbc  e                                           ; $6e1d: $9b
	ld   d, h                                        ; $6e1e: $54
	ld   h, e                                        ; $6e1f: $63
	adc  h                                           ; $6e20: $8c
	ld   [hl], l                                     ; $6e21: $75
	ld   h, a                                        ; $6e22: $67
	sbc  a                                           ; $6e23: $9f
	dec  c                                           ; $6e24: $0d
	ld   l, e                                        ; $6e25: $6b
	sbc  d                                           ; $6e26: $9a
	ld   [hl], l                                     ; $6e27: $75
	ld   a, l                                        ; $6e28: $7d
	sbc  a                                           ; $6e29: $9f
	dec  c                                           ; $6e2a: $0d
	nop                                              ; $6e2b: $00

jr_052_6e2c:
	ld   a, [bc]                                     ; $6e2c: $0a
	dec  c                                           ; $6e2d: $0d
	nop                                              ; $6e2e: $00
	nop                                              ; $6e2f: $00
	rrca                                             ; $6e30: $0f
	nop                                              ; $6e31: $00
	ld   bc, $1e09                                   ; $6e32: $01 $09 $1e
	nop                                              ; $6e35: $00
	inc  e                                           ; $6e36: $1c
	ld   bc, $0000                                   ; $6e37: $01 $00 $00
	ld   bc, $9750                                   ; $6e3a: $01 $50 $97
	sbc  [hl]                                        ; $6e3d: $9e
	ld   [$6300], sp                                 ; $6e3e: $08 $00 $63
	and  c                                           ; $6e41: $a1
	sbc  a                                           ; $6e42: $9f
	dec  c                                           ; $6e43: $0d
	ld   [bc], a                                     ; $6e44: $02
	sub  l                                           ; $6e45: $95
	ld   [bc], a                                     ; $6e46: $02
	sub  e                                           ; $6e47: $93
	sbc  b                                           ; $6e48: $98
	ld   h, d                                        ; $6e49: $62
	ld   e, l                                        ; $6e4a: $5d
	sbc  e                                           ; $6e4b: $9b
	ld   d, h                                        ; $6e4c: $54
	ld   h, e                                        ; $6e4d: $63
	adc  h                                           ; $6e4e: $8c
	ld   [hl], l                                     ; $6e4f: $75
	ld   h, a                                        ; $6e50: $67
	sbc  a                                           ; $6e51: $9f
	dec  c                                           ; $6e52: $0d
	nop                                              ; $6e53: $00
	ld   a, [bc]                                     ; $6e54: $0a
	rrca                                             ; $6e55: $0f
	nop                                              ; $6e56: $00
	ld   bc, $6301                                   ; $6e57: $01 $01 $63
	ld   e, l                                        ; $6e5a: $5d
	sub  a                                           ; $6e5b: $97
	ld   h, e                                        ; $6e5c: $63
	and  c                                           ; $6e5d: $a1
	sbc  a                                           ; $6e5e: $9f
	dec  c                                           ; $6e5f: $0d
	ld   h, c                                        ; $6e60: $61
	and  c                                           ; $6e61: $a1
	ld   a, b                                        ; $6e62: $78
	sbc  [hl]                                        ; $6e63: $9e
	inc  b                                           ; $6e64: $04
	rst  $28                                         ; $6e65: $ef
	ld   e, b                                        ; $6e66: $58
	ld   l, e                                        ; $6e67: $6b
	ld   e, l                                        ; $6e68: $5d
	ld   a, c                                        ; $6e69: $79
	dec  c                                           ; $6e6a: $0d
	ld   [hl], a                                     ; $6e6b: $77
	ld   d, h                                        ; $6e6c: $54
	ld   h, l                                        ; $6e6d: $65
	ld   l, l                                        ; $6e6e: $6d
	and  c                                           ; $6e6f: $a1
	ld   [hl], l                                     ; $6e70: $75
	ld   h, a                                        ; $6e71: $67
	ld   e, c                                        ; $6e72: $59
	ld   sp, hl                                      ; $6e73: $f9
	dec  c                                           ; $6e74: $0d
	nop                                              ; $6e75: $00
	ld   a, [bc]                                     ; $6e76: $0a
	inc  e                                           ; $6e77: $1c
	ld   bc, $0505                                   ; $6e78: $01 $05 $05
	ld   bc, $ce04                                   ; $6e7b: $01 $04 $ce
	sbc  d                                           ; $6e7e: $9a
	ld   a, b                                        ; $6e7f: $78
	ld   e, l                                        ; $6e80: $5d
	ld   [hl], h                                     ; $6e81: $74
	rst  $38                                         ; $6e82: $ff
	rst  $38                                         ; $6e83: $ff
	dec  c                                           ; $6e84: $0d
	ld   e, b                                        ; $6e85: $58
	inc  bc                                          ; $6e86: $03
	sub  [hl]                                        ; $6e87: $96
	inc  b                                           ; $6e88: $04
	sbc  a                                           ; $6e89: $9f
	ld   h, l                                        ; $6e8a: $65
	ld   [hl], h                                     ; $6e8b: $74
	ld   l, l                                        ; $6e8c: $6d
	and  c                                           ; $6e8d: $a1
	ld   [hl], l                                     ; $6e8e: $75
	ld   h, a                                        ; $6e8f: $67
	sub  [hl]                                        ; $6e90: $96
	sbc  a                                           ; $6e91: $9f
	dec  c                                           ; $6e92: $0d
	nop                                              ; $6e93: $00
	inc  e                                           ; $6e94: $1c
	ld   bc, $0101                                   ; $6e95: $01 $01 $01
	ld   bc, $9a6b                                   ; $6e98: $01 $6b $9a
	ld   h, [hl]                                     ; $6e9b: $66
	sub  c                                           ; $6e9c: $91
	sbc  [hl]                                        ; $6e9d: $9e
	ld   e, b                                        ; $6e9e: $58
	sub  d                                           ; $6e9f: $92
	ld   h, a                                        ; $6ea0: $67
	adc  l                                           ; $6ea1: $8d
	ld   a, b                                        ; $6ea2: $78
	ld   h, e                                        ; $6ea3: $63
	ld   d, d                                        ; $6ea4: $52
	sbc  a                                           ; $6ea5: $9f
	dec  c                                           ; $6ea6: $0d
	nop                                              ; $6ea7: $00
	ld   a, [bc]                                     ; $6ea8: $0a
	dec  c                                           ; $6ea9: $0d
	nop                                              ; $6eaa: $00
	nop                                              ; $6eab: $00
	rrca                                             ; $6eac: $0f
	nop                                              ; $6ead: $00
	ld   bc, $1e09                                   ; $6eae: $01 $09 $1e
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	ld   [bc], a                                     ; $6eb3: $02
	rlca                                             ; $6eb4: $07
	ld   [hl+], a                                    ; $6eb5: $22
	nop                                              ; $6eb6: $00
	inc  bc                                          ; $6eb7: $03
	ld   d, $01                                      ; $6eb8: $16 $01
	ld   h, l                                        ; $6eba: $65
	ld   [hl+], a                                    ; $6ebb: $22
	nop                                              ; $6ebc: $00
	rlca                                             ; $6ebd: $07
	ld   e, [hl]                                     ; $6ebe: $5e
	nop                                              ; $6ebf: $00
	inc  bc                                          ; $6ec0: $03
	ld   d, $01                                      ; $6ec1: $16 $01
	ld   h, [hl]                                     ; $6ec3: $66
	dec  h                                           ; $6ec4: $25
	inc  bc                                          ; $6ec5: $03
	ld   d, $01                                      ; $6ec6: $16 $01
	add  a                                           ; $6ec8: $87
	ld   [hl+], a                                    ; $6ec9: $22
	inc  e                                           ; $6eca: $1c
	nop                                              ; $6ecb: $00
	rlca                                             ; $6ecc: $07
	and  l                                           ; $6ecd: $a5
	nop                                              ; $6ece: $00
	inc  bc                                          ; $6ecf: $03
	ld   d, $01                                      ; $6ed0: $16 $01
	add  a                                           ; $6ed2: $87
	dec  h                                           ; $6ed3: $25
	nop                                              ; $6ed4: $00
	rrca                                             ; $6ed5: $0f
	nop                                              ; $6ed6: $00
	ld   bc, $ac01                                   ; $6ed7: $01 $01 $ac
	push af                                          ; $6eda: $f5
	bit  4, e                                        ; $6edb: $cb $63
	and  c                                           ; $6edd: $a1
	sbc  a                                           ; $6ede: $9f
	dec  c                                           ; $6edf: $0d
	nop                                              ; $6ee0: $00
	ld   a, [bc]                                     ; $6ee1: $0a
	inc  e                                           ; $6ee2: $1c
	ld   b, $00                                      ; $6ee3: $06 $00
	nop                                              ; $6ee5: $00
	ld   bc, $999d                                   ; $6ee6: $01 $9d $99
	ld   d, d                                        ; $6ee9: $52
	sbc  a                                           ; $6eea: $9f
	ld   l, a                                        ; $6eeb: $6f
	sub  l                                           ; $6eec: $95
	ld   d, d                                        ; $6eed: $52
	halt                                             ; $6eee: $76
	dec  b                                           ; $6eef: $05
	jr   z, jr_052_6f4e                              ; $6ef0: $28 $5c

	ld   a, h                                        ; $6ef2: $7c
	dec  c                                           ; $6ef3: $0d
	inc  b                                           ; $6ef4: $04
	di                                               ; $6ef5: $f3
	ld   e, d                                        ; $6ef6: $5a
	ld   d, b                                        ; $6ef7: $50
	sbc  c                                           ; $6ef8: $99
	and  c                                           ; $6ef9: $a1
	ld   l, [hl]                                     ; $6efa: $6e
	sbc  a                                           ; $6efb: $9f
	dec  c                                           ; $6efc: $0d
	adc  h                                           ; $6efd: $8c
	ld   l, l                                        ; $6efe: $6d
	inc  b                                           ; $6eff: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f00: $cf
	inc  b                                           ; $6f01: $04
	xor  d                                           ; $6f02: $aa
	ld   a, b                                        ; $6f03: $78
	sbc  a                                           ; $6f04: $9f
	dec  c                                           ; $6f05: $0d
	nop                                              ; $6f06: $00
	ld   a, [bc]                                     ; $6f07: $0a
	dec  c                                           ; $6f08: $0d
	nop                                              ; $6f09: $00
	nop                                              ; $6f0a: $00
	rrca                                             ; $6f0b: $0f
	nop                                              ; $6f0c: $00
	ld   bc, $1e09                                   ; $6f0d: $01 $09 $1e
	nop                                              ; $6f10: $00
	inc  e                                           ; $6f11: $1c
	ld   b, $00                                      ; $6f12: $06 $00
	nop                                              ; $6f14: $00
	ld   bc, $5496                                   ; $6f15: $01 $96 $54
	sbc  [hl]                                        ; $6f18: $9e
	ld   [$9f00], sp                                 ; $6f19: $08 $00 $9f
	dec  c                                           ; $6f1c: $0d
	nop                                              ; $6f1d: $00
	ld   a, [bc]                                     ; $6f1e: $0a
	rrca                                             ; $6f1f: $0f
	nop                                              ; $6f20: $00
	ld   bc, $ac01                                   ; $6f21: $01 $01 $ac
	push af                                          ; $6f24: $f5
	bit  4, e                                        ; $6f25: $cb $63
	and  c                                           ; $6f27: $a1
	sbc  a                                           ; $6f28: $9f
	dec  c                                           ; $6f29: $0d
	ld   e, b                                        ; $6f2a: $58
	inc  b                                           ; $6f2b: $04
	ld   a, e                                        ; $6f2c: $7b
	sbc  d                                           ; $6f2d: $9a
	ld   h, e                                        ; $6f2e: $63
	adc  h                                           ; $6f2f: $8c
	ld   [hl], l                                     ; $6f30: $75
	ld   h, a                                        ; $6f31: $67
	sbc  a                                           ; $6f32: $9f
	dec  c                                           ; $6f33: $0d
	nop                                              ; $6f34: $00
	ld   a, [bc]                                     ; $6f35: $0a
	rrca                                             ; $6f36: $0f
	ld   b, $00                                      ; $6f37: $06 $00
	ld   bc, $9502                                   ; $6f39: $01 $02 $95
	ld   [bc], a                                     ; $6f3c: $02
	sub  e                                           ; $6f3d: $93
	sbc  b                                           ; $6f3e: $98
	sbc  [hl]                                        ; $6f3f: $9e
	ld   e, d                                        ; $6f40: $5a
	and  c                                           ; $6f41: $a1
	ld   a, [hl]                                     ; $6f42: $7e
	sbc  d                                           ; $6f43: $9a
	sub  [hl]                                        ; $6f44: $96
	sbc  a                                           ; $6f45: $9f
	dec  c                                           ; $6f46: $0d
	ld   h, [hl]                                     ; $6f47: $66
	sub  c                                           ; $6f48: $91
	ld   d, b                                        ; $6f49: $50
	ld   a, b                                        ; $6f4a: $78
	sbc  a                                           ; $6f4b: $9f
	dec  c                                           ; $6f4c: $0d
	nop                                              ; $6f4d: $00

jr_052_6f4e:
	ld   a, [bc]                                     ; $6f4e: $0a
	dec  c                                           ; $6f4f: $0d
	nop                                              ; $6f50: $00
	nop                                              ; $6f51: $00
	rrca                                             ; $6f52: $0f
	nop                                              ; $6f53: $00
	ld   bc, $1e09                                   ; $6f54: $01 $09 $1e
	nop                                              ; $6f57: $00
	inc  e                                           ; $6f58: $1c
	ld   b, $00                                      ; $6f59: $06 $00
	nop                                              ; $6f5b: $00
	ld   bc, $5896                                   ; $6f5c: $01 $96 $58
	sbc  [hl]                                        ; $6f5f: $9e
	ld   [$9f00], sp                                 ; $6f60: $08 $00 $9f
	dec  c                                           ; $6f63: $0d
	ld   [bc], a                                     ; $6f64: $02
	sub  l                                           ; $6f65: $95
	ld   [bc], a                                     ; $6f66: $02
	sub  e                                           ; $6f67: $93
	sbc  b                                           ; $6f68: $98
	ld   h, d                                        ; $6f69: $62
	ld   e, l                                        ; $6f6a: $5d
	sbc  e                                           ; $6f6b: $9b
	ld   d, h                                        ; $6f6c: $54
	ld   h, e                                        ; $6f6d: $63
	and  c                                           ; $6f6e: $a1
	sbc  a                                           ; $6f6f: $9f
	dec  c                                           ; $6f70: $0d
	nop                                              ; $6f71: $00
	ld   a, [bc]                                     ; $6f72: $0a
	rrca                                             ; $6f73: $0f
	nop                                              ; $6f74: $00
	ld   bc, $ac01                                   ; $6f75: $01 $01 $ac
	push af                                          ; $6f78: $f5
	bit  4, e                                        ; $6f79: $cb $63
	and  c                                           ; $6f7b: $a1
	sbc  a                                           ; $6f7c: $9f
	dec  c                                           ; $6f7d: $0d
	ld   h, c                                        ; $6f7e: $61
	and  c                                           ; $6f7f: $a1
	ld   a, b                                        ; $6f80: $78
	sbc  [hl]                                        ; $6f81: $9e
	inc  b                                           ; $6f82: $04
	rst  $28                                         ; $6f83: $ef
	ld   e, b                                        ; $6f84: $58
	ld   l, e                                        ; $6f85: $6b
	ld   e, l                                        ; $6f86: $5d
	ld   a, c                                        ; $6f87: $79
	dec  c                                           ; $6f88: $0d
	ld   [hl], a                                     ; $6f89: $77
	ld   d, h                                        ; $6f8a: $54
	ld   h, l                                        ; $6f8b: $65
	ld   l, l                                        ; $6f8c: $6d
	and  c                                           ; $6f8d: $a1
	ld   [hl], l                                     ; $6f8e: $75
	ld   h, a                                        ; $6f8f: $67
	ld   e, c                                        ; $6f90: $59
	ld   sp, hl                                      ; $6f91: $f9
	dec  c                                           ; $6f92: $0d
	nop                                              ; $6f93: $00
	ld   a, [bc]                                     ; $6f94: $0a
	inc  e                                           ; $6f95: $1c
	ld   b, $04                                      ; $6f96: $06 $04
	inc  b                                           ; $6f98: $04
	ld   bc, $ce04                                   ; $6f99: $01 $04 $ce
	sbc  d                                           ; $6f9c: $9a
	ld   a, b                                        ; $6f9d: $78
	ld   e, l                                        ; $6f9e: $5d
	ld   [hl], h                                     ; $6f9f: $74
	ld   h, e                                        ; $6fa0: $63
	rst  $38                                         ; $6fa1: $ff
	rst  $38                                         ; $6fa2: $ff
	dec  c                                           ; $6fa3: $0d
	inc  b                                           ; $6fa4: $04
	rst  $28                                         ; $6fa5: $ef
	inc  bc                                          ; $6fa6: $03
	ld   l, d                                        ; $6fa7: $6a
	and  b                                           ; $6fa8: $a0
	ld   l, a                                        ; $6fa9: $6f
	sub  l                                           ; $6faa: $95
	ld   d, d                                        ; $6fab: $52
	halt                                             ; $6fac: $76
	ld   a, e                                        ; $6fad: $7b
	sbc  a                                           ; $6fae: $9f
	dec  c                                           ; $6faf: $0d
	nop                                              ; $6fb0: $00
	inc  e                                           ; $6fb1: $1c
	ld   b, $01                                      ; $6fb2: $06 $01
	ld   bc, $6b01                                   ; $6fb4: $01 $01 $6b
	sbc  d                                           ; $6fb7: $9a
	ld   h, [hl]                                     ; $6fb8: $66
	sub  c                                           ; $6fb9: $91
	sbc  [hl]                                        ; $6fba: $9e
	ld   e, b                                        ; $6fbb: $58
	sub  d                                           ; $6fbc: $92
	ld   h, a                                        ; $6fbd: $67
	adc  l                                           ; $6fbe: $8d
	sbc  a                                           ; $6fbf: $9f
	dec  c                                           ; $6fc0: $0d
	nop                                              ; $6fc1: $00
	ld   a, [bc]                                     ; $6fc2: $0a
	dec  c                                           ; $6fc3: $0d
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	rrca                                             ; $6fc6: $0f
	nop                                              ; $6fc7: $00
	ld   bc, $1e09                                   ; $6fc8: $01 $09 $1e
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	ld   [bc], a                                     ; $6fcd: $02
	rlca                                             ; $6fce: $07
	ld   [hl+], a                                    ; $6fcf: $22
	nop                                              ; $6fd0: $00
	inc  bc                                          ; $6fd1: $03
	inc  d                                           ; $6fd2: $14
	ld   bc, $2265                                   ; $6fd3: $01 $65 $22
	nop                                              ; $6fd6: $00
	rlca                                             ; $6fd7: $07
	ld   d, [hl]                                     ; $6fd8: $56
	nop                                              ; $6fd9: $00
	inc  bc                                          ; $6fda: $03
	inc  d                                           ; $6fdb: $14
	ld   bc, $2566                                   ; $6fdc: $01 $66 $25
	inc  bc                                          ; $6fdf: $03
	inc  d                                           ; $6fe0: $14
	ld   bc, $2287                                   ; $6fe1: $01 $87 $22
	inc  e                                           ; $6fe4: $1c
	nop                                              ; $6fe5: $00
	rlca                                             ; $6fe6: $07
	sbc  e                                           ; $6fe7: $9b
	nop                                              ; $6fe8: $00
	inc  bc                                          ; $6fe9: $03
	inc  d                                           ; $6fea: $14
	ld   bc, $2587                                   ; $6feb: $01 $87 $25
	nop                                              ; $6fee: $00
	rrca                                             ; $6fef: $0f
	nop                                              ; $6ff0: $00
	ld   bc, $9201                                   ; $6ff1: $01 $01 $92
	ld   d, b                                        ; $6ff4: $50
	sbc  [hl]                                        ; $6ff5: $9e
	and  e                                           ; $6ff6: $a3
	and  l                                           ; $6ff7: $a5
	db   $ec                                         ; $6ff8: $ec
	cp   d                                           ; $6ff9: $ba
	sbc  a                                           ; $6ffa: $9f
	dec  c                                           ; $6ffb: $0d
	nop                                              ; $6ffc: $00
	ld   a, [bc]                                     ; $6ffd: $0a
	inc  e                                           ; $6ffe: $1c
	inc  b                                           ; $6fff: $04
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	ld   bc, $a5a3                                   ; $7002: $01 $a3 $a5
	db   $ec                                         ; $7005: $ec
	cp   d                                           ; $7006: $ba
	sbc  [hl]                                        ; $7007: $9e
	ld   d, d                                        ; $7008: $52
	ld   l, e                                        ; $7009: $6b
	ld   e, d                                        ; $700a: $5a
	ld   h, l                                        ; $700b: $65
	ld   d, d                                        ; $700c: $52
	ld   a, h                                        ; $700d: $7c
	sbc  a                                           ; $700e: $9f
	dec  c                                           ; $700f: $0d
	adc  h                                           ; $7010: $8c
	ld   l, l                                        ; $7011: $6d
	ld   d, b                                        ; $7012: $50
	ld   h, l                                        ; $7013: $65
	ld   l, l                                        ; $7014: $6d
	ld   a, e                                        ; $7015: $7b
	sbc  a                                           ; $7016: $9f
	dec  c                                           ; $7017: $0d
	nop                                              ; $7018: $00
	ld   a, [bc]                                     ; $7019: $0a
	dec  c                                           ; $701a: $0d
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	rrca                                             ; $701d: $0f
	nop                                              ; $701e: $00
	ld   bc, $1e09                                   ; $701f: $01 $09 $1e
	nop                                              ; $7022: $00
	inc  e                                           ; $7023: $1c
	inc  b                                           ; $7024: $04
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	ld   bc, $9e50                                   ; $7027: $01 $50 $9e
	ld   l, a                                        ; $702a: $6f
	ld   d, d                                        ; $702b: $52
	ld   [bc], a                                     ; $702c: $02
	inc  de                                          ; $702d: $13
	ld   l, a                                        ; $702e: $6f
	sub  c                                           ; $702f: $91
	and  c                                           ; $7030: $a1
	sbc  a                                           ; $7031: $9f
	dec  c                                           ; $7032: $0d
	nop                                              ; $7033: $00
	ld   a, [bc]                                     ; $7034: $0a
	rrca                                             ; $7035: $0f
	nop                                              ; $7036: $00
	ld   bc, $9201                                   ; $7037: $01 $01 $92
	ld   d, b                                        ; $703a: $50
	sbc  [hl]                                        ; $703b: $9e
	and  e                                           ; $703c: $a3
	and  l                                           ; $703d: $a5
	db   $ec                                         ; $703e: $ec
	cp   d                                           ; $703f: $ba
	sbc  a                                           ; $7040: $9f
	dec  c                                           ; $7041: $0d
	nop                                              ; $7042: $00
	ld   a, [bc]                                     ; $7043: $0a
	rrca                                             ; $7044: $0f
	inc  b                                           ; $7045: $04
	nop                                              ; $7046: $00
	ld   bc, $8c8d                                   ; $7047: $01 $8d $8c
	sbc  l                                           ; $704a: $9d
	sbc  b                                           ; $704b: $98
	sbc  [hl]                                        ; $704c: $9e
	ld   e, d                                        ; $704d: $5a
	and  c                                           ; $704e: $a1
	ld   a, [hl]                                     ; $704f: $7e
	ld   [hl], c                                     ; $7050: $71
	ld   [hl], h                                     ; $7051: $74
	ld   a, e                                        ; $7052: $7b
	sbc  a                                           ; $7053: $9f
	dec  c                                           ; $7054: $0d
	adc  h                                           ; $7055: $8c
	ld   l, l                                        ; $7056: $6d
	ld   d, b                                        ; $7057: $50
	ld   h, l                                        ; $7058: $65
	ld   l, l                                        ; $7059: $6d
	ld   a, e                                        ; $705a: $7b
	sbc  a                                           ; $705b: $9f
	dec  c                                           ; $705c: $0d
	nop                                              ; $705d: $00
	ld   a, [bc]                                     ; $705e: $0a
	dec  c                                           ; $705f: $0d
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	rrca                                             ; $7062: $0f
	nop                                              ; $7063: $00
	ld   bc, $1e09                                   ; $7064: $01 $09 $1e
	nop                                              ; $7067: $00
	inc  e                                           ; $7068: $1c
	inc  b                                           ; $7069: $04
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	ld   bc, $9e50                                   ; $706c: $01 $50 $9e
	ld   l, a                                        ; $706f: $6f
	ld   d, d                                        ; $7070: $52
	ld   [bc], a                                     ; $7071: $02
	inc  de                                          ; $7072: $13
	ld   l, a                                        ; $7073: $6f
	sub  c                                           ; $7074: $91
	and  c                                           ; $7075: $a1
	sbc  a                                           ; $7076: $9f
	dec  c                                           ; $7077: $0d
	adc  l                                           ; $7078: $8d
	adc  h                                           ; $7079: $8c
	sbc  l                                           ; $707a: $9d
	sbc  b                                           ; $707b: $98
	ld   h, d                                        ; $707c: $62
	ld   e, l                                        ; $707d: $5d
	sbc  e                                           ; $707e: $9b
	ld   d, h                                        ; $707f: $54
	ld   h, e                                        ; $7080: $63
	adc  h                                           ; $7081: $8c
	sbc  a                                           ; $7082: $9f
	dec  c                                           ; $7083: $0d
	nop                                              ; $7084: $00
	ld   a, [bc]                                     ; $7085: $0a
	rrca                                             ; $7086: $0f
	nop                                              ; $7087: $00
	ld   bc, $9201                                   ; $7088: $01 $01 $92
	ld   d, b                                        ; $708b: $50
	sbc  [hl]                                        ; $708c: $9e
	and  e                                           ; $708d: $a3
	and  l                                           ; $708e: $a5
	db   $ec                                         ; $708f: $ec
	cp   d                                           ; $7090: $ba
	sbc  a                                           ; $7091: $9f
	dec  c                                           ; $7092: $0d
	ld   [hl], a                                     ; $7093: $77
	ld   d, h                                        ; $7094: $54
	ld   h, l                                        ; $7095: $65
	ld   l, l                                        ; $7096: $6d
	ld   a, h                                        ; $7097: $7c
	ld   sp, hl                                      ; $7098: $f9
	db   $10                                         ; $7099: $10
	ld   h, c                                        ; $709a: $61
	and  c                                           ; $709b: $a1
	ld   a, b                                        ; $709c: $78
	inc  bc                                          ; $709d: $03
	ld   l, a                                        ; $709e: $6f
	ld   [bc], a                                     ; $709f: $02
	xor  c                                           ; $70a0: $a9
	ld   a, c                                        ; $70a1: $79
	sbc  a                                           ; $70a2: $9f
	dec  c                                           ; $70a3: $0d
	nop                                              ; $70a4: $00
	ld   a, [bc]                                     ; $70a5: $0a
	inc  e                                           ; $70a6: $1c
	inc  b                                           ; $70a7: $04
	dec  b                                           ; $70a8: $05
	dec  b                                           ; $70a9: $05
	ld   bc, $8e7b                                   ; $70aa: $01 $7b $8e
	sbc  d                                           ; $70ad: $9a
	ld   a, b                                        ; $70ae: $78
	ld   e, l                                        ; $70af: $5d
	ld   [hl], h                                     ; $70b0: $74
	rst  $38                                         ; $70b1: $ff
	rst  $38                                         ; $70b2: $ff
	dec  c                                           ; $70b3: $0d
	nop                                              ; $70b4: $00
	inc  e                                           ; $70b5: $1c
	inc  b                                           ; $70b6: $04
	ld   bc, $0101                                   ; $70b7: $01 $01 $01
	cp   c                                           ; $70ba: $b9
	push hl                                          ; $70bb: $e5
	push af                                          ; $70bc: $f5
	sbc  $fb                                         ; $70bd: $de $fb
	db   $ed                                         ; $70bf: $ed
	halt                                             ; $70c0: $76
	ld   d, b                                        ; $70c1: $50
	ld   l, e                                        ; $70c2: $6b
	and  c                                           ; $70c3: $a1
	ld   [hl], l                                     ; $70c4: $75
	ld   l, l                                        ; $70c5: $6d
	ld   a, h                                        ; $70c6: $7c
	sbc  a                                           ; $70c7: $9f
	dec  c                                           ; $70c8: $0d
	ld   l, e                                        ; $70c9: $6b
	sbc  d                                           ; $70ca: $9a
	ld   h, [hl]                                     ; $70cb: $66
	sub  c                                           ; $70cc: $91
	sbc  [hl]                                        ; $70cd: $9e
	ld   e, b                                        ; $70ce: $58
	sub  d                                           ; $70cf: $92
	ld   h, a                                        ; $70d0: $67
	adc  l                                           ; $70d1: $8d
	ld   a, b                                        ; $70d2: $78
	ld   h, e                                        ; $70d3: $63
	ld   d, d                                        ; $70d4: $52
	sbc  a                                           ; $70d5: $9f
	dec  c                                           ; $70d6: $0d
	nop                                              ; $70d7: $00
	ld   a, [bc]                                     ; $70d8: $0a
	dec  c                                           ; $70d9: $0d
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	rrca                                             ; $70dc: $0f
	nop                                              ; $70dd: $00
	ld   bc, $1e09                                   ; $70de: $01 $09 $1e
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	ld   [bc], a                                     ; $70e3: $02
	rlca                                             ; $70e4: $07
	ld   [hl+], a                                    ; $70e5: $22
	nop                                              ; $70e6: $00
	inc  bc                                          ; $70e7: $03
	dec  d                                           ; $70e8: $15
	ld   bc, $2265                                   ; $70e9: $01 $65 $22
	nop                                              ; $70ec: $00
	rlca                                             ; $70ed: $07
	ld   e, d                                        ; $70ee: $5a
	nop                                              ; $70ef: $00
	inc  bc                                          ; $70f0: $03
	dec  d                                           ; $70f1: $15
	ld   bc, $2566                                   ; $70f2: $01 $66 $25
	inc  bc                                          ; $70f5: $03
	dec  d                                           ; $70f6: $15
	ld   bc, $2287                                   ; $70f7: $01 $87 $22
	inc  e                                           ; $70fa: $1c
	nop                                              ; $70fb: $00
	rlca                                             ; $70fc: $07
	and  c                                           ; $70fd: $a1
	nop                                              ; $70fe: $00
	inc  bc                                          ; $70ff: $03
	dec  d                                           ; $7100: $15
	ld   bc, $2587                                   ; $7101: $01 $87 $25
	nop                                              ; $7104: $00
	rrca                                             ; $7105: $0f
	nop                                              ; $7106: $00
	ld   bc, $0201                                   ; $7107: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $710a: $cf
	dec  b                                           ; $710b: $05
	ld   a, [de]                                     ; $710c: $1a
	ld   h, e                                        ; $710d: $63
	and  c                                           ; $710e: $a1
	sbc  a                                           ; $710f: $9f
	dec  c                                           ; $7110: $0d
	nop                                              ; $7111: $00
	ld   a, [bc]                                     ; $7112: $0a
	inc  e                                           ; $7113: $1c
	dec  b                                           ; $7114: $05
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	ld   bc, $a502                                   ; $7117: $01 $02 $a5
	ld   l, a                                        ; $711a: $6f
	sub  l                                           ; $711b: $95
	ld   [hl], c                                     ; $711c: $71
	halt                                             ; $711d: $76
	sbc  [hl]                                        ; $711e: $9e
	inc  b                                           ; $711f: $04
	ld   c, $04                                      ; $7120: $0e $04
	adc  h                                           ; $7122: $8c
	ld   a, b                                        ; $7123: $78
	and  c                                           ; $7124: $a1
	sub  d                                           ; $7125: $92
	sbc  a                                           ; $7126: $9f
	dec  c                                           ; $7127: $0d
	ld   h, a                                        ; $7128: $67
	adc  h                                           ; $7129: $8c
	and  c                                           ; $712a: $a1
	ld   a, b                                        ; $712b: $78
	db   $fc                                         ; $712c: $fc
	sbc  a                                           ; $712d: $9f
	adc  c                                           ; $712e: $89
	ld   a, b                                        ; $712f: $78
	sbc  a                                           ; $7130: $9f
	dec  c                                           ; $7131: $0d
	nop                                              ; $7132: $00
	ld   a, [bc]                                     ; $7133: $0a
	dec  c                                           ; $7134: $0d
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	rrca                                             ; $7137: $0f
	nop                                              ; $7138: $00
	ld   bc, $1e09                                   ; $7139: $01 $09 $1e
	nop                                              ; $713c: $00
	inc  e                                           ; $713d: $1c
	dec  b                                           ; $713e: $05
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	ld   bc, $7196                                   ; $7141: $01 $96 $71
	sbc  [hl]                                        ; $7144: $9e
	ld   [$7d00], sp                                 ; $7145: $08 $00 $7d
	and  c                                           ; $7148: $a1
	sbc  a                                           ; $7149: $9f
	dec  c                                           ; $714a: $0d
	nop                                              ; $714b: $00
	ld   a, [bc]                                     ; $714c: $0a
	rrca                                             ; $714d: $0f
	nop                                              ; $714e: $00
	ld   bc, $0201                                   ; $714f: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7152: $cf
	dec  b                                           ; $7153: $05
	ld   a, [de]                                     ; $7154: $1a
	ld   h, e                                        ; $7155: $63
	and  c                                           ; $7156: $a1
	sbc  a                                           ; $7157: $9f
	dec  c                                           ; $7158: $0d
	ld   e, b                                        ; $7159: $58
	inc  b                                           ; $715a: $04
	ld   a, e                                        ; $715b: $7b
	sbc  d                                           ; $715c: $9a
	ld   h, e                                        ; $715d: $63
	adc  h                                           ; $715e: $8c
	ld   [hl], l                                     ; $715f: $75
	ld   h, a                                        ; $7160: $67
	sbc  a                                           ; $7161: $9f
	dec  c                                           ; $7162: $0d
	nop                                              ; $7163: $00
	ld   a, [bc]                                     ; $7164: $0a
	rrca                                             ; $7165: $0f
	dec  b                                           ; $7166: $05
	nop                                              ; $7167: $00
	ld   bc, $9502                                   ; $7168: $01 $02 $95
	ld   [bc], a                                     ; $716b: $02
	sub  e                                           ; $716c: $93
	sbc  b                                           ; $716d: $98
	ld   e, d                                        ; $716e: $5a
	and  c                                           ; $716f: $a1
	ld   a, [hl]                                     ; $7170: $7e
	sbc  b                                           ; $7171: $98
	sub  d                                           ; $7172: $92
	sbc  a                                           ; $7173: $9f
	dec  c                                           ; $7174: $0d
	adc  c                                           ; $7175: $89
	ld   a, b                                        ; $7176: $78
	sbc  a                                           ; $7177: $9f
	dec  c                                           ; $7178: $0d
	nop                                              ; $7179: $00
	ld   a, [bc]                                     ; $717a: $0a
	dec  c                                           ; $717b: $0d
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	rrca                                             ; $717e: $0f
	nop                                              ; $717f: $00
	ld   bc, $1e09                                   ; $7180: $01 $09 $1e
	nop                                              ; $7183: $00
	inc  e                                           ; $7184: $1c
	dec  b                                           ; $7185: $05
	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	ld   bc, $7196                                   ; $7188: $01 $96 $71
	sbc  [hl]                                        ; $718b: $9e
	ld   [$7d00], sp                                 ; $718c: $08 $00 $7d
	and  c                                           ; $718f: $a1
	sbc  a                                           ; $7190: $9f
	dec  c                                           ; $7191: $0d
	ld   [bc], a                                     ; $7192: $02
	sub  l                                           ; $7193: $95
	ld   [bc], a                                     ; $7194: $02
	sub  e                                           ; $7195: $93
	sbc  b                                           ; $7196: $98
	ld   h, d                                        ; $7197: $62
	ld   e, l                                        ; $7198: $5d
	sbc  e                                           ; $7199: $9b
	ld   d, h                                        ; $719a: $54
	ld   h, e                                        ; $719b: $63
	and  c                                           ; $719c: $a1
	sbc  a                                           ; $719d: $9f
	dec  c                                           ; $719e: $0d
	nop                                              ; $719f: $00
	ld   a, [bc]                                     ; $71a0: $0a
	rrca                                             ; $71a1: $0f
	nop                                              ; $71a2: $00
	ld   bc, $0201                                   ; $71a3: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71a6: $cf
	dec  b                                           ; $71a7: $05
	ld   a, [de]                                     ; $71a8: $1a
	ld   h, e                                        ; $71a9: $63
	and  c                                           ; $71aa: $a1
	sbc  a                                           ; $71ab: $9f
	dec  c                                           ; $71ac: $0d
	ld   h, c                                        ; $71ad: $61
	and  c                                           ; $71ae: $a1
	ld   a, b                                        ; $71af: $78
	sbc  [hl]                                        ; $71b0: $9e
	inc  b                                           ; $71b1: $04
	rst  $28                                         ; $71b2: $ef
	ld   e, b                                        ; $71b3: $58
	ld   l, e                                        ; $71b4: $6b
	ld   e, l                                        ; $71b5: $5d
	ld   a, c                                        ; $71b6: $79
	dec  c                                           ; $71b7: $0d
	ld   [hl], a                                     ; $71b8: $77
	ld   d, h                                        ; $71b9: $54
	ld   h, l                                        ; $71ba: $65
	ld   l, l                                        ; $71bb: $6d
	and  c                                           ; $71bc: $a1
	ld   [hl], l                                     ; $71bd: $75
	ld   h, a                                        ; $71be: $67
	ld   e, c                                        ; $71bf: $59
	ld   sp, hl                                      ; $71c0: $f9
	dec  c                                           ; $71c1: $0d
	nop                                              ; $71c2: $00
	ld   a, [bc]                                     ; $71c3: $0a
	inc  e                                           ; $71c4: $1c
	dec  b                                           ; $71c5: $05
	inc  b                                           ; $71c6: $04
	inc  b                                           ; $71c7: $04
	ld   bc, $ce04                                   ; $71c8: $01 $04 $ce
	sub  a                                           ; $71cb: $97
	sbc  d                                           ; $71cc: $9a
	add  [hl]                                        ; $71cd: $86
	and  c                                           ; $71ce: $a1
	ld   e, c                                        ; $71cf: $59
	ld   [hl], c                                     ; $71d0: $71
	ld   [hl], h                                     ; $71d1: $74
	rst  $38                                         ; $71d2: $ff
	rst  $38                                         ; $71d3: $ff
	dec  c                                           ; $71d4: $0d
	ld   [bc], a                                     ; $71d5: $02
	jr   c, jr_052_71dc                              ; $71d6: $38 $04

	ld   d, d                                        ; $71d8: $52
	ld   a, h                                        ; $71d9: $7c
	inc  bc                                          ; $71da: $03
	ld   a, h                                        ; $71db: $7c

jr_052_71dc:
	inc  b                                           ; $71dc: $04
	ld   d, e                                        ; $71dd: $53
	ld   h, l                                        ; $71de: $65
	ld   [hl], h                                     ; $71df: $74
	ld   l, l                                        ; $71e0: $6d
	and  c                                           ; $71e1: $a1
	sub  d                                           ; $71e2: $92
	sbc  a                                           ; $71e3: $9f
	dec  c                                           ; $71e4: $0d
	nop                                              ; $71e5: $00
	inc  e                                           ; $71e6: $1c
	dec  b                                           ; $71e7: $05
	ld   bc, $0101                                   ; $71e8: $01 $01 $01
	adc  c                                           ; $71eb: $89
	ld   a, b                                        ; $71ec: $78
	sbc  [hl]                                        ; $71ed: $9e
	ld   e, b                                        ; $71ee: $58
	sub  d                                           ; $71ef: $92
	ld   h, a                                        ; $71f0: $67
	adc  l                                           ; $71f1: $8d
	sbc  a                                           ; $71f2: $9f
	dec  c                                           ; $71f3: $0d
	nop                                              ; $71f4: $00
	ld   a, [bc]                                     ; $71f5: $0a
	dec  c                                           ; $71f6: $0d
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	rrca                                             ; $71f9: $0f
	nop                                              ; $71fa: $00
	ld   bc, $1e09                                   ; $71fb: $01 $09 $1e
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	ld   [bc], a                                     ; $7200: $02
	rlca                                             ; $7201: $07
	ld   l, $00                                      ; $7202: $2e $00
	inc  bc                                          ; $7204: $03
	ld   [de], a                                     ; $7205: $12
	ld   bc, $2265                                   ; $7206: $01 $65 $22
	nop                                              ; $7209: $00
	rlca                                             ; $720a: $07
	ld   l, b                                        ; $720b: $68
	nop                                              ; $720c: $00
	inc  bc                                          ; $720d: $03
	ld   [de], a                                     ; $720e: $12
	ld   bc, $2565                                   ; $720f: $01 $65 $25
	inc  bc                                          ; $7212: $03
	ld   [de], a                                     ; $7213: $12
	ld   bc, $2287                                   ; $7214: $01 $87 $22
	inc  e                                           ; $7217: $1c
	nop                                              ; $7218: $00
	rlca                                             ; $7219: $07
	or   h                                           ; $721a: $b4
	nop                                              ; $721b: $00
	inc  bc                                          ; $721c: $03
	ld   [de], a                                     ; $721d: $12
	ld   bc, $2587                                   ; $721e: $01 $87 $25
	ld   [bc], a                                     ; $7221: $02
	nop                                              ; $7222: $00
	ld   bc, $2c02                                   ; $7223: $01 $02 $2c
	ld   bc, $2001                                   ; $7226: $01 $01 $20
	inc  e                                           ; $7229: $1c
	nop                                              ; $722a: $00
	ld   b, $0d                                      ; $722b: $06 $0d
	ld   bc, $000f                                   ; $722d: $01 $0f $00
	ld   bc, $6701                                   ; $7230: $01 $01 $67
	adc  l                                           ; $7233: $8d
	sbc  d                                           ; $7234: $9a
	ld   h, e                                        ; $7235: $63
	and  c                                           ; $7236: $a1
	sbc  a                                           ; $7237: $9f
	dec  c                                           ; $7238: $0d
	nop                                              ; $7239: $00
	ld   a, [bc]                                     ; $723a: $0a
	inc  e                                           ; $723b: $1c
	ld   [bc], a                                     ; $723c: $02
	nop                                              ; $723d: $00
	nop                                              ; $723e: $00
	ld   bc, $8c52                                   ; $723f: $01 $52 $8c
	sbc  [hl]                                        ; $7242: $9e
	inc  bc                                          ; $7243: $03
	ld   l, e                                        ; $7244: $6b
	ld   e, d                                        ; $7245: $5a
	inc  b                                           ; $7246: $04
	sbc  c                                           ; $7247: $99
	ld   l, c                                        ; $7248: $69
	adc  h                                           ; $7249: $8c
	ld   l, c                                        ; $724a: $69
	and  c                                           ; $724b: $a1
	ld   a, h                                        ; $724c: $7c
	sbc  a                                           ; $724d: $9f
	dec  c                                           ; $724e: $0d
	inc  b                                           ; $724f: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7250: $cf
	inc  b                                           ; $7251: $04
	xor  d                                           ; $7252: $aa
	ld   a, c                                        ; $7253: $79
	ld   h, l                                        ; $7254: $65
	ld   [hl], h                                     ; $7255: $74
	ld   e, l                                        ; $7256: $5d
	ld   l, [hl]                                     ; $7257: $6e
	ld   h, e                                        ; $7258: $63
	ld   d, d                                        ; $7259: $52
	ld   a, b                                        ; $725a: $78
	sbc  a                                           ; $725b: $9f
	dec  c                                           ; $725c: $0d
	nop                                              ; $725d: $00
	ld   a, [bc]                                     ; $725e: $0a
	dec  c                                           ; $725f: $0d
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	rrca                                             ; $7262: $0f
	nop                                              ; $7263: $00
	ld   bc, $1e09                                   ; $7264: $01 $09 $1e
	nop                                              ; $7267: $00
	inc  e                                           ; $7268: $1c
	ld   [bc], a                                     ; $7269: $02
	nop                                              ; $726a: $00
	nop                                              ; $726b: $00
	ld   bc, $9750                                   ; $726c: $01 $50 $97
	sbc  [hl]                                        ; $726f: $9e
	ld   [$6300], sp                                 ; $7270: $08 $00 $63
	and  c                                           ; $7273: $a1
	dec  c                                           ; $7274: $0d
	nop                                              ; $7275: $00
	ld   a, [bc]                                     ; $7276: $0a
	rrca                                             ; $7277: $0f
	nop                                              ; $7278: $00
	ld   bc, $6701                                   ; $7279: $01 $01 $67
	adc  l                                           ; $727c: $8d
	sbc  d                                           ; $727d: $9a
	ld   h, e                                        ; $727e: $63
	and  c                                           ; $727f: $a1
	sbc  a                                           ; $7280: $9f
	dec  c                                           ; $7281: $0d
	ld   e, b                                        ; $7282: $58
	inc  b                                           ; $7283: $04
	ld   a, e                                        ; $7284: $7b
	sbc  d                                           ; $7285: $9a
	ld   h, e                                        ; $7286: $63
	adc  h                                           ; $7287: $8c
	ld   [hl], l                                     ; $7288: $75
	ld   h, a                                        ; $7289: $67
	sbc  a                                           ; $728a: $9f
	dec  c                                           ; $728b: $0d
	nop                                              ; $728c: $00
	ld   a, [bc]                                     ; $728d: $0a
	rrca                                             ; $728e: $0f
	ld   [bc], a                                     ; $728f: $02
	nop                                              ; $7290: $00
	ld   bc, $9502                                   ; $7291: $01 $02 $95
	ld   [bc], a                                     ; $7294: $02
	sub  e                                           ; $7295: $93
	sbc  b                                           ; $7296: $98
	ld   e, d                                        ; $7297: $5a
	and  c                                           ; $7298: $a1
	ld   a, [hl]                                     ; $7299: $7e
	sbc  b                                           ; $729a: $98
	ld   a, b                                        ; $729b: $78
	ld   h, e                                        ; $729c: $63
	ld   d, d                                        ; $729d: $52
	sbc  a                                           ; $729e: $9f
	dec  c                                           ; $729f: $0d
	ld   [hl], l                                     ; $72a0: $75
	ld   a, l                                        ; $72a1: $7d
	inc  bc                                          ; $72a2: $03
	add  e                                           ; $72a3: $83
	dec  b                                           ; $72a4: $05
	dec  c                                           ; $72a5: $0d
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	dec  c                                           ; $72a8: $0d
	nop                                              ; $72a9: $00
	ld   a, [bc]                                     ; $72aa: $0a
	dec  c                                           ; $72ab: $0d
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	rrca                                             ; $72ae: $0f
	nop                                              ; $72af: $00
	ld   bc, $1e09                                   ; $72b0: $01 $09 $1e
	nop                                              ; $72b3: $00
	inc  e                                           ; $72b4: $1c
	ld   [bc], a                                     ; $72b5: $02
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	ld   bc, $9750                                   ; $72b8: $01 $50 $97
	sbc  [hl]                                        ; $72bb: $9e
	ld   [bc], a                                     ; $72bc: $02
	sub  l                                           ; $72bd: $95
	ld   [bc], a                                     ; $72be: $02
	sub  e                                           ; $72bf: $93
	sbc  b                                           ; $72c0: $98
	ld   h, d                                        ; $72c1: $62
	ld   e, l                                        ; $72c2: $5d
	sbc  e                                           ; $72c3: $9b
	ld   d, h                                        ; $72c4: $54
	ld   h, e                                        ; $72c5: $63
	adc  h                                           ; $72c6: $8c
	sbc  a                                           ; $72c7: $9f
	dec  c                                           ; $72c8: $0d
	nop                                              ; $72c9: $00
	ld   a, [bc]                                     ; $72ca: $0a
	rrca                                             ; $72cb: $0f
	nop                                              ; $72cc: $00
	ld   bc, $5801                                   ; $72cd: $01 $01 $58
	inc  b                                           ; $72d0: $04
	ld   a, e                                        ; $72d1: $7b
	sbc  d                                           ; $72d2: $9a
	ld   h, e                                        ; $72d3: $63
	adc  h                                           ; $72d4: $8c
	ld   [hl], l                                     ; $72d5: $75
	ld   h, a                                        ; $72d6: $67
	sbc  a                                           ; $72d7: $9f
	ld   h, a                                        ; $72d8: $67
	adc  l                                           ; $72d9: $8d
	sbc  d                                           ; $72da: $9a
	ld   h, e                                        ; $72db: $63
	and  c                                           ; $72dc: $a1
	sbc  a                                           ; $72dd: $9f
	dec  c                                           ; $72de: $0d
	nop                                              ; $72df: $00
	ld   a, [bc]                                     ; $72e0: $0a
	inc  e                                           ; $72e1: $1c
	ld   [bc], a                                     ; $72e2: $02
	ld   bc, $0101                                   ; $72e3: $01 $01 $01
	inc  b                                           ; $72e6: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72e7: $cf
	inc  b                                           ; $72e8: $04
	xor  d                                           ; $72e9: $aa
	sub  b                                           ; $72ea: $90
	ld   e, d                                        ; $72eb: $5a
	and  c                                           ; $72ec: $a1
	ld   a, [hl]                                     ; $72ed: $7e
	sbc  b                                           ; $72ee: $98
	ld   a, b                                        ; $72ef: $78
	ld   h, e                                        ; $72f0: $63
	ld   d, d                                        ; $72f1: $52
	sbc  a                                           ; $72f2: $9f
	dec  c                                           ; $72f3: $0d
	ld   [$6300], sp                                 ; $72f4: $08 $00 $63
	and  c                                           ; $72f7: $a1
	sbc  a                                           ; $72f8: $9f
	dec  c                                           ; $72f9: $0d
	ld   [hl], l                                     ; $72fa: $75
	ld   a, l                                        ; $72fb: $7d
	inc  bc                                          ; $72fc: $03
	add  e                                           ; $72fd: $83
	dec  b                                           ; $72fe: $05
	dec  c                                           ; $72ff: $0d
	sbc  a                                           ; $7300: $9f
	dec  c                                           ; $7301: $0d
	nop                                              ; $7302: $00
	ld   a, [bc]                                     ; $7303: $0a
	dec  c                                           ; $7304: $0d
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	rrca                                             ; $7307: $0f
	nop                                              ; $7308: $00
	ld   bc, $1e09                                   ; $7309: $01 $09 $1e
	nop                                              ; $730c: $00
	inc  e                                           ; $730d: $1c
	ld   [bc], a                                     ; $730e: $02
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	ld   bc, $9750                                   ; $7311: $01 $50 $97
	sbc  [hl]                                        ; $7314: $9e
	ld   [$6300], sp                                 ; $7315: $08 $00 $63
	and  c                                           ; $7318: $a1
	sbc  a                                           ; $7319: $9f
	dec  c                                           ; $731a: $0d
	ld   e, b                                        ; $731b: $58
	sub  d                                           ; $731c: $92
	ld   h, a                                        ; $731d: $67
	adc  l                                           ; $731e: $8d
	ld   a, b                                        ; $731f: $78
	ld   h, e                                        ; $7320: $63
	ld   d, d                                        ; $7321: $52
	sbc  a                                           ; $7322: $9f
	dec  c                                           ; $7323: $0d
	nop                                              ; $7324: $00
	ld   a, [bc]                                     ; $7325: $0a
	rrca                                             ; $7326: $0f
	nop                                              ; $7327: $00
	ld   bc, $5601                                   ; $7328: $01 $01 $56
	ld   [hl], c                                     ; $732b: $71
	sbc  [hl]                                        ; $732c: $9e
	ld   [bc], a                                     ; $732d: $02
	and  l                                           ; $732e: $a5
	inc  b                                           ; $732f: $04
	xor  d                                           ; $7330: $aa
	ld   a, l                                        ; $7331: $7d
	sub  b                                           ; $7332: $90
	ld   d, h                                        ; $7333: $54
	sbc  [hl]                                        ; $7334: $9e
	dec  c                                           ; $7335: $0d
	ld   e, b                                        ; $7336: $58
	inc  bc                                          ; $7337: $03
	and  a                                           ; $7338: $a7
	adc  l                                           ; $7339: $8d
	ld   [hl], l                                     ; $733a: $75
	ld   h, a                                        ; $733b: $67
	ld   e, c                                        ; $733c: $59
	ld   sp, hl                                      ; $733d: $f9
	dec  c                                           ; $733e: $0d
	nop                                              ; $733f: $00
	ld   a, [bc]                                     ; $7340: $0a
	rrca                                             ; $7341: $0f
	ld   [bc], a                                     ; $7342: $02
	nop                                              ; $7343: $00
	ld   bc, $cf04                                   ; $7344: $01 $04 $cf
	inc  b                                           ; $7347: $04
	xor  d                                           ; $7348: $aa
	ld   a, l                                        ; $7349: $7d
	inc  bc                                          ; $734a: $03
	ld   d, $5f                                      ; $734b: $16 $5f
	ld   d, d                                        ; $734d: $52
	ld   h, c                                        ; $734e: $61
	ld   a, b                                        ; $734f: $78
	and  c                                           ; $7350: $a1
	ld   [hl], l                                     ; $7351: $75
	ld   h, a                                        ; $7352: $67
	ld   a, h                                        ; $7353: $7c
	sub  [hl]                                        ; $7354: $96
	sbc  a                                           ; $7355: $9f
	dec  c                                           ; $7356: $0d
	ld   l, e                                        ; $7357: $6b
	sbc  d                                           ; $7358: $9a
	ld   [hl], l                                     ; $7359: $75
	ld   a, l                                        ; $735a: $7d
	sbc  [hl]                                        ; $735b: $9e
	ld   [bc], a                                     ; $735c: $02
	sub  l                                           ; $735d: $95
	ld   [bc], a                                     ; $735e: $02
	sub  e                                           ; $735f: $93
	sbc  b                                           ; $7360: $98
	dec  c                                           ; $7361: $0d
	ld   e, d                                        ; $7362: $5a
	and  c                                           ; $7363: $a1
	ld   a, [hl]                                     ; $7364: $7e
	sbc  b                                           ; $7365: $98
	ld   a, b                                        ; $7366: $78
	ld   h, e                                        ; $7367: $63
	ld   d, d                                        ; $7368: $52
	ld   a, b                                        ; $7369: $78
	sbc  a                                           ; $736a: $9f
	dec  c                                           ; $736b: $0d
	nop                                              ; $736c: $00
	ld   a, [bc]                                     ; $736d: $0a
	dec  c                                           ; $736e: $0d
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	rrca                                             ; $7371: $0f
	nop                                              ; $7372: $00
	ld   bc, $1e09                                   ; $7373: $01 $09 $1e
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	ld   [bc], a                                     ; $7378: $02
	rlca                                             ; $7379: $07
	ld   l, $00                                      ; $737a: $2e $00
	inc  bc                                          ; $737c: $03
	ld   de, $6501                                   ; $737d: $11 $01 $65
	ld   [hl+], a                                    ; $7380: $22
	nop                                              ; $7381: $00
	rlca                                             ; $7382: $07
	ld   e, a                                        ; $7383: $5f
	nop                                              ; $7384: $00
	inc  bc                                          ; $7385: $03
	ld   de, $6501                                   ; $7386: $11 $01 $65
	dec  h                                           ; $7389: $25
	inc  bc                                          ; $738a: $03
	ld   de, $8701                                   ; $738b: $11 $01 $87
	ld   [hl+], a                                    ; $738e: $22
	inc  e                                           ; $738f: $1c
	nop                                              ; $7390: $00
	rlca                                             ; $7391: $07
	xor  c                                           ; $7392: $a9
	nop                                              ; $7393: $00
	inc  bc                                          ; $7394: $03
	ld   de, $8701                                   ; $7395: $11 $01 $87
	dec  h                                           ; $7398: $25
	ld   [bc], a                                     ; $7399: $02
	nop                                              ; $739a: $00
	ld   bc, $2c02                                   ; $739b: $01 $02 $2c
	ld   bc, $2001                                   ; $739e: $01 $01 $20
	inc  e                                           ; $73a1: $1c
	nop                                              ; $73a2: $00
	ld   b, $0d                                      ; $73a3: $06 $0d
	ld   bc, $000f                                   ; $73a5: $01 $0f $00
	ld   bc, $6301                                   ; $73a8: $01 $01 $63
	ld   e, l                                        ; $73ab: $5d
	sub  a                                           ; $73ac: $97
	ld   h, e                                        ; $73ad: $63
	and  c                                           ; $73ae: $a1
	sbc  a                                           ; $73af: $9f
	dec  c                                           ; $73b0: $0d
	nop                                              ; $73b1: $00
	ld   a, [bc]                                     ; $73b2: $0a
	inc  e                                           ; $73b3: $1c
	ld   bc, $0000                                   ; $73b4: $01 $00 $00
	ld   bc, $8f62                                   ; $73b7: $01 $62 $8f
	and  c                                           ; $73ba: $a1
	ld   a, b                                        ; $73bb: $78
	ld   h, e                                        ; $73bc: $63
	ld   d, d                                        ; $73bd: $52
	sbc  a                                           ; $73be: $9f
	dec  c                                           ; $73bf: $0d
	ld   d, d                                        ; $73c0: $52
	adc  h                                           ; $73c1: $8c
	dec  b                                           ; $73c2: $05
	jr   z, jr_052_7417                              ; $73c3: $28 $52

	ld   [hl], l                                     ; $73c5: $75
	sbc  c                                           ; $73c6: $99
	and  c                                           ; $73c7: $a1
	ld   [hl], l                                     ; $73c8: $75
	ld   h, a                                        ; $73c9: $67
	sbc  a                                           ; $73ca: $9f
	dec  c                                           ; $73cb: $0d
	nop                                              ; $73cc: $00
	ld   a, [bc]                                     ; $73cd: $0a
	dec  c                                           ; $73ce: $0d
	nop                                              ; $73cf: $00
	nop                                              ; $73d0: $00
	rrca                                             ; $73d1: $0f
	nop                                              ; $73d2: $00
	ld   bc, $1e09                                   ; $73d3: $01 $09 $1e
	nop                                              ; $73d6: $00
	inc  e                                           ; $73d7: $1c
	ld   bc, $0000                                   ; $73d8: $01 $00 $00
	ld   bc, $9750                                   ; $73db: $01 $50 $97
	sbc  [hl]                                        ; $73de: $9e
	ld   [$6300], sp                                 ; $73df: $08 $00 $63
	and  c                                           ; $73e2: $a1
	dec  c                                           ; $73e3: $0d
	nop                                              ; $73e4: $00
	ld   a, [bc]                                     ; $73e5: $0a
	rrca                                             ; $73e6: $0f
	nop                                              ; $73e7: $00
	ld   bc, $6301                                   ; $73e8: $01 $01 $63
	ld   e, l                                        ; $73eb: $5d
	sub  a                                           ; $73ec: $97
	ld   h, e                                        ; $73ed: $63
	and  c                                           ; $73ee: $a1
	sbc  a                                           ; $73ef: $9f
	dec  c                                           ; $73f0: $0d
	ld   e, b                                        ; $73f1: $58
	inc  b                                           ; $73f2: $04
	ld   a, e                                        ; $73f3: $7b
	sbc  d                                           ; $73f4: $9a
	ld   h, e                                        ; $73f5: $63
	adc  h                                           ; $73f6: $8c
	ld   [hl], l                                     ; $73f7: $75
	ld   h, a                                        ; $73f8: $67
	sbc  a                                           ; $73f9: $9f
	dec  c                                           ; $73fa: $0d
	nop                                              ; $73fb: $00
	ld   a, [bc]                                     ; $73fc: $0a
	rrca                                             ; $73fd: $0f
	ld   bc, $0100                                   ; $73fe: $01 $00 $01
	ld   [bc], a                                     ; $7401: $02
	sub  l                                           ; $7402: $95
	ld   [bc], a                                     ; $7403: $02
	sub  e                                           ; $7404: $93
	sbc  b                                           ; $7405: $98
	ld   h, d                                        ; $7406: $62
	ld   e, l                                        ; $7407: $5d
	sbc  e                                           ; $7408: $9b
	ld   d, h                                        ; $7409: $54
	ld   h, e                                        ; $740a: $63
	adc  h                                           ; $740b: $8c
	ld   [hl], l                                     ; $740c: $75
	ld   h, a                                        ; $740d: $67
	sbc  a                                           ; $740e: $9f
	dec  c                                           ; $740f: $0d
	ld   l, e                                        ; $7410: $6b
	sbc  d                                           ; $7411: $9a
	ld   [hl], l                                     ; $7412: $75
	ld   a, l                                        ; $7413: $7d
	sbc  a                                           ; $7414: $9f
	dec  c                                           ; $7415: $0d
	nop                                              ; $7416: $00

jr_052_7417:
	ld   a, [bc]                                     ; $7417: $0a
	dec  c                                           ; $7418: $0d
	nop                                              ; $7419: $00
	nop                                              ; $741a: $00
	rrca                                             ; $741b: $0f
	nop                                              ; $741c: $00
	ld   bc, $1e09                                   ; $741d: $01 $09 $1e
	nop                                              ; $7420: $00
	inc  e                                           ; $7421: $1c
	ld   bc, $0000                                   ; $7422: $01 $00 $00
	ld   bc, $9750                                   ; $7425: $01 $50 $97
	sbc  [hl]                                        ; $7428: $9e
	ld   [$6300], sp                                 ; $7429: $08 $00 $63
	and  c                                           ; $742c: $a1
	sbc  a                                           ; $742d: $9f
	dec  c                                           ; $742e: $0d
	ld   [bc], a                                     ; $742f: $02
	sub  l                                           ; $7430: $95
	ld   [bc], a                                     ; $7431: $02
	sub  e                                           ; $7432: $93
	sbc  b                                           ; $7433: $98
	ld   h, d                                        ; $7434: $62
	ld   e, l                                        ; $7435: $5d
	sbc  e                                           ; $7436: $9b
	ld   d, h                                        ; $7437: $54
	ld   h, e                                        ; $7438: $63
	adc  h                                           ; $7439: $8c
	ld   [hl], l                                     ; $743a: $75
	ld   h, a                                        ; $743b: $67
	sbc  a                                           ; $743c: $9f
	dec  c                                           ; $743d: $0d
	nop                                              ; $743e: $00
	ld   a, [bc]                                     ; $743f: $0a
	rrca                                             ; $7440: $0f
	nop                                              ; $7441: $00
	ld   bc, $5801                                   ; $7442: $01 $01 $58
	inc  b                                           ; $7445: $04
	ld   a, e                                        ; $7446: $7b
	sbc  d                                           ; $7447: $9a
	ld   h, e                                        ; $7448: $63
	adc  h                                           ; $7449: $8c
	ld   [hl], l                                     ; $744a: $75
	ld   h, a                                        ; $744b: $67
	sbc  a                                           ; $744c: $9f
	ld   h, e                                        ; $744d: $63
	ld   e, l                                        ; $744e: $5d
	sub  a                                           ; $744f: $97
	ld   h, e                                        ; $7450: $63
	and  c                                           ; $7451: $a1

Jump_052_7452:
	sbc  a                                           ; $7452: $9f
	dec  c                                           ; $7453: $0d
	nop                                              ; $7454: $00
	ld   a, [bc]                                     ; $7455: $0a
	inc  e                                           ; $7456: $1c
	ld   bc, $0101                                   ; $7457: $01 $01 $01
	ld   bc, $cf04                                   ; $745a: $01 $04 $cf
	inc  b                                           ; $745d: $04
	xor  d                                           ; $745e: $aa
	sub  b                                           ; $745f: $90
	ld   e, d                                        ; $7460: $5a
	and  c                                           ; $7461: $a1
	ld   a, [hl]                                     ; $7462: $7e
	ld   [hl], c                                     ; $7463: $71
	ld   [hl], h                                     ; $7464: $74

Jump_052_7465:
	dec  c                                           ; $7465: $0d
	ld   d, d                                        ; $7466: $52
	ld   e, e                                        ; $7467: $5b
	adc  h                                           ; $7468: $8c
	ld   h, l                                        ; $7469: $65
	sub  l                                           ; $746a: $95
	ld   d, h                                        ; $746b: $54
	ld   a, e                                        ; $746c: $7b
	sbc  a                                           ; $746d: $9f
	dec  c                                           ; $746e: $0d
	ld   [$6300], sp                                 ; $746f: $08 $00 $63
	and  c                                           ; $7472: $a1
	sbc  a                                           ; $7473: $9f
	ld   l, e                                        ; $7474: $6b
	sbc  d                                           ; $7475: $9a
	ld   [hl], l                                     ; $7476: $75
	ld   a, l                                        ; $7477: $7d
	sbc  a                                           ; $7478: $9f
	dec  c                                           ; $7479: $0d
	nop                                              ; $747a: $00
	ld   a, [bc]                                     ; $747b: $0a
	dec  c                                           ; $747c: $0d
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	rrca                                             ; $747f: $0f
	nop                                              ; $7480: $00
	ld   bc, $1e09                                   ; $7481: $01 $09 $1e
	nop                                              ; $7484: $00
	inc  e                                           ; $7485: $1c
	ld   bc, $0101                                   ; $7486: $01 $01 $01
	ld   bc, $9750                                   ; $7489: $01 $50 $97
	sbc  [hl]                                        ; $748c: $9e
	ld   [$6300], sp                                 ; $748d: $08 $00 $63
	and  c                                           ; $7490: $a1
	sbc  a                                           ; $7491: $9f
	dec  c                                           ; $7492: $0d
	ld   e, b                                        ; $7493: $58
	sub  d                                           ; $7494: $92
	ld   h, a                                        ; $7495: $67
	adc  l                                           ; $7496: $8d
	ld   a, b                                        ; $7497: $78
	ld   h, e                                        ; $7498: $63
	ld   d, d                                        ; $7499: $52
	sbc  a                                           ; $749a: $9f
	dec  c                                           ; $749b: $0d
	nop                                              ; $749c: $00
	ld   a, [bc]                                     ; $749d: $0a
	rrca                                             ; $749e: $0f
	nop                                              ; $749f: $00
	ld   bc, $5601                                   ; $74a0: $01 $01 $56
	ld   [hl], c                                     ; $74a3: $71
	sbc  [hl]                                        ; $74a4: $9e
	ld   [bc], a                                     ; $74a5: $02
	and  l                                           ; $74a6: $a5
	inc  b                                           ; $74a7: $04
	xor  d                                           ; $74a8: $aa
	ld   a, l                                        ; $74a9: $7d
	sub  b                                           ; $74aa: $90
	ld   d, h                                        ; $74ab: $54
	sbc  [hl]                                        ; $74ac: $9e
	dec  c                                           ; $74ad: $0d
	ld   e, b                                        ; $74ae: $58
	inc  bc                                          ; $74af: $03
	and  a                                           ; $74b0: $a7
	adc  l                                           ; $74b1: $8d
	ld   [hl], l                                     ; $74b2: $75
	ld   h, a                                        ; $74b3: $67
	ld   e, c                                        ; $74b4: $59
	ld   sp, hl                                      ; $74b5: $f9
	dec  c                                           ; $74b6: $0d
	nop                                              ; $74b7: $00
	ld   a, [bc]                                     ; $74b8: $0a
	rrca                                             ; $74b9: $0f
	ld   bc, $0101                                   ; $74ba: $01 $01 $01
	ld   d, [hl]                                     ; $74bd: $56
	ld   d, [hl]                                     ; $74be: $56
	sbc  [hl]                                        ; $74bf: $9e
	inc  b                                           ; $74c0: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74c1: $cf
	inc  b                                           ; $74c2: $04
	xor  d                                           ; $74c3: $aa
	inc  bc                                          ; $74c4: $03
	ld   d, $5f                                      ; $74c5: $16 $5f
	ld   d, d                                        ; $74c7: $52
	ld   h, c                                        ; $74c8: $61
	ld   a, b                                        ; $74c9: $78
	and  c                                           ; $74ca: $a1
	ld   [hl], l                                     ; $74cb: $75
	ld   h, a                                        ; $74cc: $67
	sbc  a                                           ; $74cd: $9f
	dec  c                                           ; $74ce: $0d
	ld   h, [hl]                                     ; $74cf: $66
	sub  c                                           ; $74d0: $91
	sbc  [hl]                                        ; $74d1: $9e
	ld   [bc], a                                     ; $74d2: $02
	sub  l                                           ; $74d3: $95
	ld   [bc], a                                     ; $74d4: $02
	sub  e                                           ; $74d5: $93
	sbc  b                                           ; $74d6: $98
	sbc  [hl]                                        ; $74d7: $9e
	ld   h, l                                        ; $74d8: $65
	ld   [hl], c                                     ; $74d9: $71
	ld   e, c                                        ; $74da: $59
	sbc  b                                           ; $74db: $98
	halt                                             ; $74dc: $76
	dec  c                                           ; $74dd: $0d
	ld   e, b                                        ; $74de: $58
	ld   [bc], a                                     ; $74df: $02
	add  b                                           ; $74e0: $80
	ld   d, d                                        ; $74e1: $52
	ld   h, l                                        ; $74e2: $65
	adc  h                                           ; $74e3: $8c
	ld   h, a                                        ; $74e4: $67
	ld   a, e                                        ; $74e5: $7b
	sbc  a                                           ; $74e6: $9f
	ld   [hl], l                                     ; $74e7: $75
	ld   a, l                                        ; $74e8: $7d
	sbc  a                                           ; $74e9: $9f
	dec  c                                           ; $74ea: $0d
	nop                                              ; $74eb: $00
	ld   a, [bc]                                     ; $74ec: $0a
	dec  c                                           ; $74ed: $0d
	nop                                              ; $74ee: $00
	nop                                              ; $74ef: $00
	rrca                                             ; $74f0: $0f
	nop                                              ; $74f1: $00
	ld   bc, $1e09                                   ; $74f2: $01 $09 $1e
	nop                                              ; $74f5: $00
	nop                                              ; $74f6: $00
	ld   [bc], a                                     ; $74f7: $02
	rlca                                             ; $74f8: $07
	ld   l, $00                                      ; $74f9: $2e $00
	inc  bc                                          ; $74fb: $03
	inc  de                                          ; $74fc: $13
	ld   bc, $2265                                   ; $74fd: $01 $65 $22
	nop                                              ; $7500: $00
	rlca                                             ; $7501: $07
	ld   e, a                                        ; $7502: $5f
	nop                                              ; $7503: $00
	inc  bc                                          ; $7504: $03
	inc  de                                          ; $7505: $13
	ld   bc, $2566                                   ; $7506: $01 $66 $25
	inc  bc                                          ; $7509: $03
	inc  de                                          ; $750a: $13
	ld   bc, $2287                                   ; $750b: $01 $87 $22
	inc  e                                           ; $750e: $1c
	nop                                              ; $750f: $00
	rlca                                             ; $7510: $07
	and  l                                           ; $7511: $a5
	nop                                              ; $7512: $00
	inc  bc                                          ; $7513: $03
	inc  de                                          ; $7514: $13
	ld   bc, $2587                                   ; $7515: $01 $87 $25
	ld   [bc], a                                     ; $7518: $02
	nop                                              ; $7519: $00
	ld   bc, $2c02                                   ; $751a: $01 $02 $2c
	ld   bc, $2001                                   ; $751d: $01 $01 $20
	inc  e                                           ; $7520: $1c
	nop                                              ; $7521: $00
	ld   b, $01                                      ; $7522: $06 $01
	ld   bc, $000f                                   ; $7524: $01 $0f $00
	ld   bc, $df01                                   ; $7527: $01 $01 $df
	db   $ec                                         ; $752a: $ec
	and  e                                           ; $752b: $a3
	ld   h, e                                        ; $752c: $63
	and  c                                           ; $752d: $a1
	sbc  a                                           ; $752e: $9f
	dec  c                                           ; $752f: $0d
	nop                                              ; $7530: $00
	ld   a, [bc]                                     ; $7531: $0a
	inc  e                                           ; $7532: $1c
	inc  bc                                          ; $7533: $03
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	ld   bc, $8c52                                   ; $7536: $01 $52 $8c
	dec  b                                           ; $7539: $05
	jr   z, jr_052_758e                              ; $753a: $28 $52

	ld   [hl], l                                     ; $753c: $75
	sbc  c                                           ; $753d: $99
	ld   a, h                                        ; $753e: $7c
	sbc  a                                           ; $753f: $9f
	dec  c                                           ; $7540: $0d
	adc  h                                           ; $7541: $8c
	ld   l, l                                        ; $7542: $6d
	sbc  [hl]                                        ; $7543: $9e
	inc  b                                           ; $7544: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7545: $cf
	inc  b                                           ; $7546: $04
	xor  d                                           ; $7547: $aa
	ld   a, e                                        ; $7548: $7b
	sbc  a                                           ; $7549: $9f
	dec  c                                           ; $754a: $0d
	nop                                              ; $754b: $00
	ld   a, [bc]                                     ; $754c: $0a
	dec  c                                           ; $754d: $0d
	nop                                              ; $754e: $00
	nop                                              ; $754f: $00
	rrca                                             ; $7550: $0f
	nop                                              ; $7551: $00
	ld   bc, $1e09                                   ; $7552: $01 $09 $1e
	nop                                              ; $7555: $00
	inc  e                                           ; $7556: $1c
	inc  bc                                          ; $7557: $03
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00
	ld   bc, $0008                                   ; $755a: $01 $08 $00
	ld   e, l                                        ; $755d: $5d
	and  c                                           ; $755e: $a1
	sbc  a                                           ; $755f: $9f
	dec  c                                           ; $7560: $0d
	nop                                              ; $7561: $00
	ld   a, [bc]                                     ; $7562: $0a
	rrca                                             ; $7563: $0f
	nop                                              ; $7564: $00
	ld   bc, $df01                                   ; $7565: $01 $01 $df
	db   $ec                                         ; $7568: $ec
	and  e                                           ; $7569: $a3
	ld   h, e                                        ; $756a: $63
	and  c                                           ; $756b: $a1
	sbc  a                                           ; $756c: $9f
	dec  c                                           ; $756d: $0d
	ld   e, b                                        ; $756e: $58
	inc  b                                           ; $756f: $04
	ld   a, e                                        ; $7570: $7b
	sbc  d                                           ; $7571: $9a
	ld   h, e                                        ; $7572: $63
	adc  h                                           ; $7573: $8c
	ld   [hl], l                                     ; $7574: $75
	ld   h, a                                        ; $7575: $67
	sbc  a                                           ; $7576: $9f
	dec  c                                           ; $7577: $0d
	nop                                              ; $7578: $00
	ld   a, [bc]                                     ; $7579: $0a
	rrca                                             ; $757a: $0f
	inc  bc                                          ; $757b: $03
	nop                                              ; $757c: $00
	ld   bc, $9502                                   ; $757d: $01 $02 $95
	ld   [bc], a                                     ; $7580: $02
	sub  e                                           ; $7581: $93
	sbc  b                                           ; $7582: $98
	ld   e, d                                        ; $7583: $5a
	and  c                                           ; $7584: $a1
	ld   a, [hl]                                     ; $7585: $7e
	sbc  c                                           ; $7586: $99
	ld   a, h                                        ; $7587: $7c
	sub  [hl]                                        ; $7588: $96
	sbc  a                                           ; $7589: $9f
	dec  c                                           ; $758a: $0d
	ld   h, [hl]                                     ; $758b: $66
	sub  c                                           ; $758c: $91
	ld   d, b                                        ; $758d: $50

jr_052_758e:
	ld   a, e                                        ; $758e: $7b
	sbc  a                                           ; $758f: $9f
	dec  c                                           ; $7590: $0d
	nop                                              ; $7591: $00
	ld   a, [bc]                                     ; $7592: $0a
	dec  c                                           ; $7593: $0d
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
	rrca                                             ; $7596: $0f
	nop                                              ; $7597: $00
	ld   bc, $1e09                                   ; $7598: $01 $09 $1e
	nop                                              ; $759b: $00
	inc  e                                           ; $759c: $1c
	inc  bc                                          ; $759d: $03
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	ld   bc, $9750                                   ; $75a0: $01 $50 $97
	sbc  [hl]                                        ; $75a3: $9e
	ld   [$5d00], sp                                 ; $75a4: $08 $00 $5d
	and  c                                           ; $75a7: $a1
	sbc  a                                           ; $75a8: $9f
	dec  c                                           ; $75a9: $0d
	ld   [bc], a                                     ; $75aa: $02
	sub  l                                           ; $75ab: $95
	ld   [bc], a                                     ; $75ac: $02
	sub  e                                           ; $75ad: $93
	sbc  b                                           ; $75ae: $98
	ld   h, d                                        ; $75af: $62
	ld   e, l                                        ; $75b0: $5d
	sbc  e                                           ; $75b1: $9b
	ld   d, h                                        ; $75b2: $54
	ld   h, e                                        ; $75b3: $63
	adc  h                                           ; $75b4: $8c
	sbc  a                                           ; $75b5: $9f
	dec  c                                           ; $75b6: $0d
	nop                                              ; $75b7: $00
	ld   a, [bc]                                     ; $75b8: $0a
	rrca                                             ; $75b9: $0f
	nop                                              ; $75ba: $00
	ld   bc, $5801                                   ; $75bb: $01 $01 $58
	inc  b                                           ; $75be: $04
	ld   a, e                                        ; $75bf: $7b
	sbc  d                                           ; $75c0: $9a
	ld   h, e                                        ; $75c1: $63
	adc  h                                           ; $75c2: $8c
	ld   [hl], l                                     ; $75c3: $75
	ld   h, a                                        ; $75c4: $67
	sbc  a                                           ; $75c5: $9f
	rst  JumpTable                                         ; $75c6: $df
	db   $ec                                         ; $75c7: $ec
	and  e                                           ; $75c8: $a3
	ld   h, e                                        ; $75c9: $63
	and  c                                           ; $75ca: $a1
	sbc  a                                           ; $75cb: $9f
	dec  c                                           ; $75cc: $0d
	nop                                              ; $75cd: $00
	ld   a, [bc]                                     ; $75ce: $0a
	inc  e                                           ; $75cf: $1c
	inc  bc                                          ; $75d0: $03
	inc  bc                                          ; $75d1: $03
	inc  bc                                          ; $75d2: $03
	ld   bc, $cf04                                   ; $75d3: $01 $04 $cf
	inc  b                                           ; $75d6: $04
	xor  d                                           ; $75d7: $aa
	sub  b                                           ; $75d8: $90
	ld   e, d                                        ; $75d9: $5a
	and  c                                           ; $75da: $a1
	ld   a, [hl]                                     ; $75db: $7e
	sbc  c                                           ; $75dc: $99
	ld   a, h                                        ; $75dd: $7c
	sub  [hl]                                        ; $75de: $96
	sbc  a                                           ; $75df: $9f
	dec  c                                           ; $75e0: $0d
	ld   [$5d00], sp                                 ; $75e1: $08 $00 $5d
	and  c                                           ; $75e4: $a1
	sbc  a                                           ; $75e5: $9f
	dec  c                                           ; $75e6: $0d
	ld   h, [hl]                                     ; $75e7: $66
	sub  c                                           ; $75e8: $91
	ld   d, b                                        ; $75e9: $50
	ld   a, e                                        ; $75ea: $7b
	sbc  a                                           ; $75eb: $9f
	dec  c                                           ; $75ec: $0d
	nop                                              ; $75ed: $00
	ld   a, [bc]                                     ; $75ee: $0a
	dec  c                                           ; $75ef: $0d
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	rrca                                             ; $75f2: $0f
	nop                                              ; $75f3: $00
	ld   bc, $1e09                                   ; $75f4: $01 $09 $1e
	nop                                              ; $75f7: $00
	inc  e                                           ; $75f8: $1c
	inc  bc                                          ; $75f9: $03
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	ld   bc, $9258                                   ; $75fc: $01 $58 $92
	ld   h, a                                        ; $75ff: $67
	adc  l                                           ; $7600: $8d
	ld   a, b                                        ; $7601: $78
	ld   h, e                                        ; $7602: $63
	ld   d, d                                        ; $7603: $52
	sbc  a                                           ; $7604: $9f
	dec  c                                           ; $7605: $0d
	ld   [$5d00], sp                                 ; $7606: $08 $00 $5d
	and  c                                           ; $7609: $a1
	sbc  a                                           ; $760a: $9f
	dec  c                                           ; $760b: $0d
	nop                                              ; $760c: $00
	ld   a, [bc]                                     ; $760d: $0a
	rrca                                             ; $760e: $0f
	nop                                              ; $760f: $00
	ld   bc, $5601                                   ; $7610: $01 $01 $56
	ld   [hl], c                                     ; $7613: $71
	sbc  [hl]                                        ; $7614: $9e
	ld   [bc], a                                     ; $7615: $02
	and  l                                           ; $7616: $a5
	inc  b                                           ; $7617: $04
	xor  d                                           ; $7618: $aa
	ld   a, l                                        ; $7619: $7d
	sub  b                                           ; $761a: $90
	ld   d, h                                        ; $761b: $54
	sbc  [hl]                                        ; $761c: $9e
	dec  c                                           ; $761d: $0d
	ld   e, b                                        ; $761e: $58
	inc  bc                                          ; $761f: $03
	and  a                                           ; $7620: $a7
	adc  l                                           ; $7621: $8d
	ld   [hl], l                                     ; $7622: $75
	ld   h, a                                        ; $7623: $67
	ld   e, c                                        ; $7624: $59
	ld   sp, hl                                      ; $7625: $f9
	dec  c                                           ; $7626: $0d
	nop                                              ; $7627: $00
	ld   a, [bc]                                     ; $7628: $0a
	rrca                                             ; $7629: $0f
	inc  bc                                          ; $762a: $03
	nop                                              ; $762b: $00
	ld   bc, $5656                                   ; $762c: $01 $56 $56
	sbc  [hl]                                        ; $762f: $9e
	inc  b                                           ; $7630: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7631: $cf
	inc  b                                           ; $7632: $04
	xor  d                                           ; $7633: $aa
	sbc  [hl]                                        ; $7634: $9e
	inc  bc                                          ; $7635: $03
	ld   d, $5f                                      ; $7636: $16 $5f
	ld   d, d                                        ; $7638: $52
	ld   h, c                                        ; $7639: $61
	ld   a, b                                        ; $763a: $78
	ld   a, h                                        ; $763b: $7c
	sub  [hl]                                        ; $763c: $96
	sbc  a                                           ; $763d: $9f
	dec  c                                           ; $763e: $0d
	ld   h, [hl]                                     ; $763f: $66
	sub  c                                           ; $7640: $91
	sbc  [hl]                                        ; $7641: $9e
	ld   [bc], a                                     ; $7642: $02
	sub  l                                           ; $7643: $95
	ld   [bc], a                                     ; $7644: $02
	sub  e                                           ; $7645: $93
	sbc  b                                           ; $7646: $98
	ld   e, d                                        ; $7647: $5a
	and  c                                           ; $7648: $a1
	ld   a, [hl]                                     ; $7649: $7e
	ld   [hl], c                                     ; $764a: $71
	ld   [hl], h                                     ; $764b: $74
	ld   a, e                                        ; $764c: $7b
	sbc  a                                           ; $764d: $9f
	dec  c                                           ; $764e: $0d
	ld   h, [hl]                                     ; $764f: $66
	sub  c                                           ; $7650: $91
	ld   d, b                                        ; $7651: $50
	ld   a, e                                        ; $7652: $7b
	sbc  a                                           ; $7653: $9f
	dec  c                                           ; $7654: $0d
	nop                                              ; $7655: $00
	ld   a, [bc]                                     ; $7656: $0a
	dec  c                                           ; $7657: $0d
	nop                                              ; $7658: $00
	nop                                              ; $7659: $00
	rrca                                             ; $765a: $0f
	nop                                              ; $765b: $00
	ld   bc, $1e09                                   ; $765c: $01 $09 $1e
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	ld   [bc], a                                     ; $7661: $02
	rlca                                             ; $7662: $07
	ld   l, $00                                      ; $7663: $2e $00
	inc  bc                                          ; $7665: $03
	inc  d                                           ; $7666: $14
	ld   bc, $2265                                   ; $7667: $01 $65 $22
	nop                                              ; $766a: $00
	rlca                                             ; $766b: $07
	ld   h, d                                        ; $766c: $62
	nop                                              ; $766d: $00
	inc  bc                                          ; $766e: $03
	inc  d                                           ; $766f: $14
	ld   bc, $2566                                   ; $7670: $01 $66 $25
	inc  bc                                          ; $7673: $03
	inc  d                                           ; $7674: $14
	ld   bc, $2287                                   ; $7675: $01 $87 $22
	inc  e                                           ; $7678: $1c

Jump_052_7679:
	nop                                              ; $7679: $00
	rlca                                             ; $767a: $07
	and  l                                           ; $767b: $a5
	nop                                              ; $767c: $00
	inc  bc                                          ; $767d: $03
	inc  d                                           ; $767e: $14
	ld   bc, $2587                                   ; $767f: $01 $87 $25
	ld   [bc], a                                     ; $7682: $02
	nop                                              ; $7683: $00
	ld   bc, $2c02                                   ; $7684: $01 $02 $2c
	ld   bc, $2001                                   ; $7687: $01 $01 $20
	inc  e                                           ; $768a: $1c
	nop                                              ; $768b: $00
	ld   b, $fb                                      ; $768c: $06 $fb
	nop                                              ; $768e: $00
	rrca                                             ; $768f: $0f
	nop                                              ; $7690: $00
	ld   bc, $9201                                   ; $7691: $01 $01 $92
	ld   d, b                                        ; $7694: $50
	sbc  [hl]                                        ; $7695: $9e
	and  e                                           ; $7696: $a3
	and  l                                           ; $7697: $a5
	db   $ec                                         ; $7698: $ec
	cp   d                                           ; $7699: $ba
	sbc  a                                           ; $769a: $9f
	dec  c                                           ; $769b: $0d
	nop                                              ; $769c: $00
	ld   a, [bc]                                     ; $769d: $0a
	inc  e                                           ; $769e: $1c
	inc  b                                           ; $769f: $04
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	ld   bc, $a5a3                                   ; $76a2: $01 $a3 $a5
	db   $ec                                         ; $76a5: $ec
	cp   d                                           ; $76a6: $ba
	sbc  [hl]                                        ; $76a7: $9e
	ld   d, d                                        ; $76a8: $52
	ld   l, e                                        ; $76a9: $6b
	ld   e, d                                        ; $76aa: $5a
	ld   h, l                                        ; $76ab: $65
	ld   d, d                                        ; $76ac: $52
	ld   a, h                                        ; $76ad: $7c
	sbc  a                                           ; $76ae: $9f
	dec  c                                           ; $76af: $0d
	adc  h                                           ; $76b0: $8c
	ld   l, l                                        ; $76b1: $6d
	ld   d, b                                        ; $76b2: $50
	ld   h, l                                        ; $76b3: $65
	ld   l, l                                        ; $76b4: $6d
	ld   a, e                                        ; $76b5: $7b
	sbc  a                                           ; $76b6: $9f
	dec  c                                           ; $76b7: $0d
	nop                                              ; $76b8: $00
	ld   a, [bc]                                     ; $76b9: $0a
	dec  c                                           ; $76ba: $0d
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	rrca                                             ; $76bd: $0f
	nop                                              ; $76be: $00
	ld   bc, $1e09                                   ; $76bf: $01 $09 $1e
	nop                                              ; $76c2: $00
	inc  e                                           ; $76c3: $1c
	inc  b                                           ; $76c4: $04
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	ld   bc, $9e50                                   ; $76c7: $01 $50 $9e
	ld   l, a                                        ; $76ca: $6f
	ld   d, d                                        ; $76cb: $52
	ld   [bc], a                                     ; $76cc: $02
	inc  de                                          ; $76cd: $13
	ld   l, a                                        ; $76ce: $6f
	sub  c                                           ; $76cf: $91
	and  c                                           ; $76d0: $a1
	sbc  a                                           ; $76d1: $9f
	dec  c                                           ; $76d2: $0d
	nop                                              ; $76d3: $00
	ld   a, [bc]                                     ; $76d4: $0a
	rrca                                             ; $76d5: $0f
	nop                                              ; $76d6: $00
	ld   bc, $9201                                   ; $76d7: $01 $01 $92
	ld   d, b                                        ; $76da: $50
	sbc  [hl]                                        ; $76db: $9e
	and  e                                           ; $76dc: $a3
	and  l                                           ; $76dd: $a5
	db   $ec                                         ; $76de: $ec
	cp   d                                           ; $76df: $ba
	sbc  a                                           ; $76e0: $9f
	dec  c                                           ; $76e1: $0d
	nop                                              ; $76e2: $00
	ld   a, [bc]                                     ; $76e3: $0a
	rrca                                             ; $76e4: $0f
	inc  b                                           ; $76e5: $04
	nop                                              ; $76e6: $00
	ld   bc, $8c8d                                   ; $76e7: $01 $8d $8c
	sbc  l                                           ; $76ea: $9d
	sbc  b                                           ; $76eb: $98
	sbc  [hl]                                        ; $76ec: $9e
	ld   e, d                                        ; $76ed: $5a
	and  c                                           ; $76ee: $a1
	ld   a, [hl]                                     ; $76ef: $7e
	ld   [hl], c                                     ; $76f0: $71
	ld   [hl], h                                     ; $76f1: $74
	ld   a, e                                        ; $76f2: $7b
	sbc  a                                           ; $76f3: $9f
	dec  c                                           ; $76f4: $0d
	ld   h, [hl]                                     ; $76f5: $66
	sub  c                                           ; $76f6: $91
	ld   d, b                                        ; $76f7: $50
	ld   a, e                                        ; $76f8: $7b
	sbc  a                                           ; $76f9: $9f
	dec  c                                           ; $76fa: $0d
	nop                                              ; $76fb: $00
	ld   a, [bc]                                     ; $76fc: $0a
	dec  c                                           ; $76fd: $0d
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	rrca                                             ; $7700: $0f
	nop                                              ; $7701: $00
	ld   bc, $1e09                                   ; $7702: $01 $09 $1e
	nop                                              ; $7705: $00
	inc  e                                           ; $7706: $1c
	inc  b                                           ; $7707: $04
	nop                                              ; $7708: $00
	nop                                              ; $7709: $00
	ld   bc, $526f                                   ; $770a: $01 $6f $52
	ld   [bc], a                                     ; $770d: $02
	inc  de                                          ; $770e: $13
	ld   l, a                                        ; $770f: $6f
	sub  c                                           ; $7710: $91
	and  c                                           ; $7711: $a1
	sbc  a                                           ; $7712: $9f
	dec  c                                           ; $7713: $0d
	adc  l                                           ; $7714: $8d
	adc  h                                           ; $7715: $8c
	sbc  l                                           ; $7716: $9d
	sbc  b                                           ; $7717: $98
	ld   h, d                                        ; $7718: $62
	ld   e, l                                        ; $7719: $5d
	sbc  e                                           ; $771a: $9b
	ld   d, h                                        ; $771b: $54
	ld   h, e                                        ; $771c: $63
	adc  h                                           ; $771d: $8c
	sbc  a                                           ; $771e: $9f
	dec  c                                           ; $771f: $0d
	nop                                              ; $7720: $00
	ld   a, [bc]                                     ; $7721: $0a
	rrca                                             ; $7722: $0f
	nop                                              ; $7723: $00
	ld   bc, $9201                                   ; $7724: $01 $01 $92
	ld   d, b                                        ; $7727: $50
	sbc  [hl]                                        ; $7728: $9e
	and  e                                           ; $7729: $a3
	and  l                                           ; $772a: $a5
	db   $ec                                         ; $772b: $ec
	cp   d                                           ; $772c: $ba
	sbc  a                                           ; $772d: $9f
	dec  c                                           ; $772e: $0d
	nop                                              ; $772f: $00
	ld   a, [bc]                                     ; $7730: $0a
	inc  e                                           ; $7731: $1c
	inc  b                                           ; $7732: $04
	ld   bc, $0101                                   ; $7733: $01 $01 $01
	ld   d, b                                        ; $7736: $50
	ld   h, l                                        ; $7737: $65
	ld   l, l                                        ; $7738: $6d
	sub  b                                           ; $7739: $90
	ld   e, d                                        ; $773a: $5a
	and  c                                           ; $773b: $a1
	ld   a, [hl]                                     ; $773c: $7e
	sbc  e                                           ; $773d: $9b
	ld   d, h                                        ; $773e: $54
	ld   a, e                                        ; $773f: $7b
	sbc  a                                           ; $7740: $9f
	dec  c                                           ; $7741: $0d
	ld   l, a                                        ; $7742: $6f
	ld   d, d                                        ; $7743: $52
	ld   [bc], a                                     ; $7744: $02
	inc  de                                          ; $7745: $13
	ld   l, a                                        ; $7746: $6f
	sub  c                                           ; $7747: $91
	and  c                                           ; $7748: $a1
	sbc  a                                           ; $7749: $9f
	dec  c                                           ; $774a: $0d
	ld   h, [hl]                                     ; $774b: $66
	sub  c                                           ; $774c: $91
	ld   d, b                                        ; $774d: $50
	ld   a, e                                        ; $774e: $7b
	sbc  a                                           ; $774f: $9f
	dec  c                                           ; $7750: $0d
	nop                                              ; $7751: $00
	ld   a, [bc]                                     ; $7752: $0a
	dec  c                                           ; $7753: $0d
	nop                                              ; $7754: $00
	nop                                              ; $7755: $00
	rrca                                             ; $7756: $0f
	nop                                              ; $7757: $00
	ld   bc, $1e09                                   ; $7758: $01 $09 $1e
	nop                                              ; $775b: $00
	inc  e                                           ; $775c: $1c
	inc  b                                           ; $775d: $04
	nop                                              ; $775e: $00
	nop                                              ; $775f: $00
	ld   bc, $9e50                                   ; $7760: $01 $50 $9e
	ld   l, a                                        ; $7763: $6f
	ld   d, d                                        ; $7764: $52
	ld   [bc], a                                     ; $7765: $02
	inc  de                                          ; $7766: $13
	ld   l, a                                        ; $7767: $6f
	sub  c                                           ; $7768: $91
	and  c                                           ; $7769: $a1
	sbc  a                                           ; $776a: $9f
	dec  c                                           ; $776b: $0d
	ld   e, b                                        ; $776c: $58
	sub  d                                           ; $776d: $92
	ld   h, a                                        ; $776e: $67
	adc  l                                           ; $776f: $8d
	ld   a, b                                        ; $7770: $78
	ld   h, e                                        ; $7771: $63
	ld   d, d                                        ; $7772: $52
	sbc  a                                           ; $7773: $9f
	dec  c                                           ; $7774: $0d
	nop                                              ; $7775: $00
	ld   a, [bc]                                     ; $7776: $0a
	rrca                                             ; $7777: $0f
	nop                                              ; $7778: $00
	ld   bc, $a301                                   ; $7779: $01 $01 $a3
	and  l                                           ; $777c: $a5
	db   $ec                                         ; $777d: $ec
	cp   d                                           ; $777e: $ba
	sbc  [hl]                                        ; $777f: $9e
	dec  c                                           ; $7780: $0d
	ld   [bc], a                                     ; $7781: $02
	and  l                                           ; $7782: $a5
	inc  b                                           ; $7783: $04
	xor  d                                           ; $7784: $aa
	ld   a, l                                        ; $7785: $7d
	sbc  [hl]                                        ; $7786: $9e
	sub  b                                           ; $7787: $90
	ld   d, h                                        ; $7788: $54
	inc  b                                           ; $7789: $04
	ld   b, d                                        ; $778a: $42
	ld   l, a                                        ; $778b: $6f
	sub  c                                           ; $778c: $91
	ld   d, h                                        ; $778d: $54
	ld   a, h                                        ; $778e: $7c
	ld   sp, hl                                      ; $778f: $f9
	dec  c                                           ; $7790: $0d
	nop                                              ; $7791: $00
	ld   a, [bc]                                     ; $7792: $0a
	inc  e                                           ; $7793: $1c
	inc  b                                           ; $7794: $04
	inc  bc                                          ; $7795: $03
	inc  bc                                          ; $7796: $03
	ld   bc, $a154                                   ; $7797: $01 $54 $a1
	sbc  [hl]                                        ; $779a: $9e
	ld   d, b                                        ; $779b: $50
	ld   h, l                                        ; $779c: $65
	ld   l, l                                        ; $779d: $6d
	ld   a, l                                        ; $779e: $7d
	dec  c                                           ; $779f: $0d
	ld   d, b                                        ; $77a0: $50
	ld   h, e                                        ; $77a1: $63
	ld   e, a                                        ; $77a2: $5f
	ld   d, d                                        ; $77a3: $52
	ld   h, c                                        ; $77a4: $61
	ld   a, b                                        ; $77a5: $78
	ld   a, h                                        ; $77a6: $7c
	sbc  a                                           ; $77a7: $9f
	dec  c                                           ; $77a8: $0d
	nop                                              ; $77a9: $00
	inc  e                                           ; $77aa: $1c
	inc  b                                           ; $77ab: $04
	ld   bc, $0101                                   ; $77ac: $01 $01 $01
	ld   h, [hl]                                     ; $77af: $66
	sub  c                                           ; $77b0: $91
	ld   d, b                                        ; $77b1: $50
	ld   a, e                                        ; $77b2: $7b
	sbc  a                                           ; $77b3: $9f
	dec  c                                           ; $77b4: $0d
	nop                                              ; $77b5: $00
	ld   a, [bc]                                     ; $77b6: $0a
	dec  c                                           ; $77b7: $0d
	nop                                              ; $77b8: $00
	nop                                              ; $77b9: $00
	rrca                                             ; $77ba: $0f
	nop                                              ; $77bb: $00
	ld   bc, $1e09                                   ; $77bc: $01 $09 $1e
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	ld   [bc], a                                     ; $77c1: $02
	rlca                                             ; $77c2: $07
	ld   l, $00                                      ; $77c3: $2e $00
	inc  bc                                          ; $77c5: $03
	ld   d, $01                                      ; $77c6: $16 $01
	ld   h, l                                        ; $77c8: $65
	ld   [hl+], a                                    ; $77c9: $22
	nop                                              ; $77ca: $00
	rlca                                             ; $77cb: $07
	ld   l, d                                        ; $77cc: $6a
	nop                                              ; $77cd: $00
	inc  bc                                          ; $77ce: $03
	ld   d, $01                                      ; $77cf: $16 $01
	ld   h, [hl]                                     ; $77d1: $66
	dec  h                                           ; $77d2: $25
	inc  bc                                          ; $77d3: $03
	ld   d, $01                                      ; $77d4: $16 $01
	add  a                                           ; $77d6: $87
	ld   [hl+], a                                    ; $77d7: $22
	inc  e                                           ; $77d8: $1c
	nop                                              ; $77d9: $00
	rlca                                             ; $77da: $07
	or   c                                           ; $77db: $b1
	nop                                              ; $77dc: $00
	inc  bc                                          ; $77dd: $03
	ld   d, $01                                      ; $77de: $16 $01
	add  a                                           ; $77e0: $87
	dec  h                                           ; $77e1: $25
	ld   [bc], a                                     ; $77e2: $02
	nop                                              ; $77e3: $00
	ld   bc, $2c02                                   ; $77e4: $01 $02 $2c
	ld   bc, $2001                                   ; $77e7: $01 $01 $20
	inc  e                                           ; $77ea: $1c
	nop                                              ; $77eb: $00
	ld   b, $06                                      ; $77ec: $06 $06
	ld   bc, $000f                                   ; $77ee: $01 $0f $00
	ld   bc, $ac01                                   ; $77f1: $01 $01 $ac
	push af                                          ; $77f4: $f5
	bit  4, e                                        ; $77f5: $cb $63
	and  c                                           ; $77f7: $a1
	sbc  a                                           ; $77f8: $9f
	dec  c                                           ; $77f9: $0d
	nop                                              ; $77fa: $00
	ld   a, [bc]                                     ; $77fb: $0a
	inc  e                                           ; $77fc: $1c
	ld   b, $00                                      ; $77fd: $06 $00
	nop                                              ; $77ff: $00
	ld   bc, $999d                                   ; $7800: $01 $9d $99
	ld   d, d                                        ; $7803: $52
	sbc  a                                           ; $7804: $9f
	ld   l, a                                        ; $7805: $6f
	sub  l                                           ; $7806: $95
	ld   d, d                                        ; $7807: $52
	halt                                             ; $7808: $76
	dec  b                                           ; $7809: $05
	jr   z, jr_052_7868                              ; $780a: $28 $5c

	ld   a, h                                        ; $780c: $7c
	dec  c                                           ; $780d: $0d
	inc  b                                           ; $780e: $04
	di                                               ; $780f: $f3
	ld   e, d                                        ; $7810: $5a
	ld   d, b                                        ; $7811: $50
	sbc  c                                           ; $7812: $99
	and  c                                           ; $7813: $a1
	ld   l, [hl]                                     ; $7814: $6e
	sbc  a                                           ; $7815: $9f
	dec  c                                           ; $7816: $0d
	adc  h                                           ; $7817: $8c
	ld   l, l                                        ; $7818: $6d
	inc  b                                           ; $7819: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $781a: $cf
	inc  b                                           ; $781b: $04
	xor  d                                           ; $781c: $aa
	ld   a, b                                        ; $781d: $78
	sbc  a                                           ; $781e: $9f
	dec  c                                           ; $781f: $0d
	nop                                              ; $7820: $00
	ld   a, [bc]                                     ; $7821: $0a
	dec  c                                           ; $7822: $0d
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	rrca                                             ; $7825: $0f
	nop                                              ; $7826: $00
	ld   bc, $1e09                                   ; $7827: $01 $09 $1e
	nop                                              ; $782a: $00
	inc  e                                           ; $782b: $1c
	ld   b, $00                                      ; $782c: $06 $00
	nop                                              ; $782e: $00
	ld   bc, $5496                                   ; $782f: $01 $96 $54
	sbc  [hl]                                        ; $7832: $9e
	ld   [$9f00], sp                                 ; $7833: $08 $00 $9f
	dec  c                                           ; $7836: $0d
	nop                                              ; $7837: $00
	ld   a, [bc]                                     ; $7838: $0a
	rrca                                             ; $7839: $0f
	nop                                              ; $783a: $00
	ld   bc, $ac01                                   ; $783b: $01 $01 $ac
	push af                                          ; $783e: $f5
	bit  4, e                                        ; $783f: $cb $63
	and  c                                           ; $7841: $a1
	sbc  a                                           ; $7842: $9f
	dec  c                                           ; $7843: $0d
	ld   e, b                                        ; $7844: $58
	inc  b                                           ; $7845: $04
	ld   a, e                                        ; $7846: $7b
	sbc  d                                           ; $7847: $9a
	ld   h, e                                        ; $7848: $63
	adc  h                                           ; $7849: $8c
	ld   [hl], l                                     ; $784a: $75
	ld   h, a                                        ; $784b: $67
	sbc  a                                           ; $784c: $9f
	dec  c                                           ; $784d: $0d
	nop                                              ; $784e: $00
	ld   a, [bc]                                     ; $784f: $0a
	rrca                                             ; $7850: $0f
	ld   b, $00                                      ; $7851: $06 $00
	ld   bc, $9502                                   ; $7853: $01 $02 $95
	ld   [bc], a                                     ; $7856: $02
	sub  e                                           ; $7857: $93
	sbc  b                                           ; $7858: $98
	sbc  [hl]                                        ; $7859: $9e
	ld   e, d                                        ; $785a: $5a
	and  c                                           ; $785b: $a1
	ld   a, [hl]                                     ; $785c: $7e
	sbc  d                                           ; $785d: $9a
	sub  [hl]                                        ; $785e: $96
	sbc  a                                           ; $785f: $9f
	dec  c                                           ; $7860: $0d
	ld   h, [hl]                                     ; $7861: $66
	sub  c                                           ; $7862: $91
	ld   d, b                                        ; $7863: $50
	ld   a, b                                        ; $7864: $78
	sbc  a                                           ; $7865: $9f
	dec  c                                           ; $7866: $0d
	nop                                              ; $7867: $00

jr_052_7868:
	ld   a, [bc]                                     ; $7868: $0a
	dec  c                                           ; $7869: $0d
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	rrca                                             ; $786c: $0f
	nop                                              ; $786d: $00
	ld   bc, $1e09                                   ; $786e: $01 $09 $1e
	nop                                              ; $7871: $00
	inc  e                                           ; $7872: $1c
	ld   b, $00                                      ; $7873: $06 $00
	nop                                              ; $7875: $00
	ld   bc, $5496                                   ; $7876: $01 $96 $54
	sbc  a                                           ; $7879: $9f
	dec  c                                           ; $787a: $0d
	ld   [bc], a                                     ; $787b: $02
	sub  l                                           ; $787c: $95
	ld   [bc], a                                     ; $787d: $02
	sub  e                                           ; $787e: $93
	sbc  b                                           ; $787f: $98
	ld   h, d                                        ; $7880: $62
	ld   e, l                                        ; $7881: $5d
	sbc  e                                           ; $7882: $9b
	ld   d, h                                        ; $7883: $54
	ld   h, e                                        ; $7884: $63
	and  c                                           ; $7885: $a1
	sbc  a                                           ; $7886: $9f
	dec  c                                           ; $7887: $0d
	nop                                              ; $7888: $00
	ld   a, [bc]                                     ; $7889: $0a
	rrca                                             ; $788a: $0f
	nop                                              ; $788b: $00
	ld   bc, $5801                                   ; $788c: $01 $01 $58
	inc  b                                           ; $788f: $04
	ld   a, e                                        ; $7890: $7b
	sbc  d                                           ; $7891: $9a
	ld   h, e                                        ; $7892: $63
	adc  h                                           ; $7893: $8c
	ld   [hl], l                                     ; $7894: $75
	ld   h, a                                        ; $7895: $67
	sbc  a                                           ; $7896: $9f
	xor  h                                           ; $7897: $ac

Jump_052_7898:
	push af                                          ; $7898: $f5
	bit  4, e                                        ; $7899: $cb $63
	and  c                                           ; $789b: $a1
	sbc  a                                           ; $789c: $9f
	dec  c                                           ; $789d: $0d
	nop                                              ; $789e: $00
	ld   a, [bc]                                     ; $789f: $0a
	inc  e                                           ; $78a0: $1c
	ld   b, $01                                      ; $78a1: $06 $01
	ld   bc, $0401                                   ; $78a3: $01 $01 $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78a6: $cf
	inc  b                                           ; $78a7: $04
	xor  d                                           ; $78a8: $aa
	sub  b                                           ; $78a9: $90
	ld   e, d                                        ; $78aa: $5a
	and  c                                           ; $78ab: $a1
	ld   a, [hl]                                     ; $78ac: $7e
	sbc  e                                           ; $78ad: $9b
	ld   d, h                                        ; $78ae: $54
	ld   l, d                                        ; $78af: $6a
	sbc  a                                           ; $78b0: $9f
	dec  c                                           ; $78b1: $0d
	ld   [$fa00], sp                                 ; $78b2: $08 $00 $fa
	dec  c                                           ; $78b5: $0d
	ld   h, [hl]                                     ; $78b6: $66
	sub  c                                           ; $78b7: $91
	ld   d, b                                        ; $78b8: $50
	ld   a, b                                        ; $78b9: $78
	sbc  a                                           ; $78ba: $9f
	dec  c                                           ; $78bb: $0d
	nop                                              ; $78bc: $00
	ld   a, [bc]                                     ; $78bd: $0a
	dec  c                                           ; $78be: $0d
	nop                                              ; $78bf: $00
	nop                                              ; $78c0: $00
	rrca                                             ; $78c1: $0f
	nop                                              ; $78c2: $00
	ld   bc, $1e09                                   ; $78c3: $01 $09 $1e
	nop                                              ; $78c6: $00
	inc  e                                           ; $78c7: $1c
	ld   b, $00                                      ; $78c8: $06 $00
	nop                                              ; $78ca: $00
	ld   bc, $9258                                   ; $78cb: $01 $58 $92
	ld   h, a                                        ; $78ce: $67
	adc  l                                           ; $78cf: $8d
	sbc  [hl]                                        ; $78d0: $9e
	ld   [$9f00], sp                                 ; $78d1: $08 $00 $9f
	dec  c                                           ; $78d4: $0d
	nop                                              ; $78d5: $00
	ld   a, [bc]                                     ; $78d6: $0a
	rrca                                             ; $78d7: $0f
	nop                                              ; $78d8: $00
	ld   bc, $5601                                   ; $78d9: $01 $01 $56
	ld   [hl], c                                     ; $78dc: $71
	sbc  [hl]                                        ; $78dd: $9e
	ld   [bc], a                                     ; $78de: $02
	and  l                                           ; $78df: $a5
	inc  b                                           ; $78e0: $04
	xor  d                                           ; $78e1: $aa
	ld   a, l                                        ; $78e2: $7d
	sub  b                                           ; $78e3: $90
	ld   d, h                                        ; $78e4: $54
	sbc  [hl]                                        ; $78e5: $9e
	dec  c                                           ; $78e6: $0d
	ld   e, b                                        ; $78e7: $58
	inc  bc                                          ; $78e8: $03
	and  a                                           ; $78e9: $a7
	adc  l                                           ; $78ea: $8d
	ld   [hl], l                                     ; $78eb: $75
	ld   h, a                                        ; $78ec: $67
	ld   e, c                                        ; $78ed: $59
	ld   sp, hl                                      ; $78ee: $f9
	dec  c                                           ; $78ef: $0d
	nop                                              ; $78f0: $00
	ld   a, [bc]                                     ; $78f1: $0a
	rrca                                             ; $78f2: $0f
	ld   b, $00                                      ; $78f3: $06 $00
	ld   bc, $5050                                   ; $78f5: $01 $50 $50
	sbc  [hl]                                        ; $78f8: $9e
	inc  b                                           ; $78f9: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78fa: $cf
	inc  b                                           ; $78fb: $04
	xor  d                                           ; $78fc: $aa
	sbc  [hl]                                        ; $78fd: $9e
	inc  bc                                          ; $78fe: $03
	ld   d, $5f                                      ; $78ff: $16 $5f
	ld   d, d                                        ; $7901: $52
	ld   h, c                                        ; $7902: $61
	ld   a, b                                        ; $7903: $78
	and  c                                           ; $7904: $a1
	ld   l, [hl]                                     ; $7905: $6e
	sbc  a                                           ; $7906: $9f
	dec  c                                           ; $7907: $0d
	ld   h, [hl]                                     ; $7908: $66
	sub  c                                           ; $7909: $91
	sbc  [hl]                                        ; $790a: $9e
	ld   [bc], a                                     ; $790b: $02
	sub  l                                           ; $790c: $95
	ld   [bc], a                                     ; $790d: $02
	sub  e                                           ; $790e: $93
	sbc  b                                           ; $790f: $98
	sbc  [hl]                                        ; $7910: $9e
	ld   e, d                                        ; $7911: $5a
	and  c                                           ; $7912: $a1
	ld   a, [hl]                                     ; $7913: $7e
	sbc  d                                           ; $7914: $9a
	sub  [hl]                                        ; $7915: $96
	ld   a, b                                        ; $7916: $78
	sbc  a                                           ; $7917: $9f
	dec  c                                           ; $7918: $0d
	nop                                              ; $7919: $00
	ld   a, [bc]                                     ; $791a: $0a
	dec  c                                           ; $791b: $0d
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	rrca                                             ; $791e: $0f
	nop                                              ; $791f: $00
	ld   bc, $1e09                                   ; $7920: $01 $09 $1e
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	ld   [bc], a                                     ; $7925: $02
	rlca                                             ; $7926: $07
	ld   l, $00                                      ; $7927: $2e $00
	inc  bc                                          ; $7929: $03
	dec  d                                           ; $792a: $15
	ld   bc, $2265                                   ; $792b: $01 $65 $22
	nop                                              ; $792e: $00
	rlca                                             ; $792f: $07
	ld   h, [hl]                                     ; $7930: $66
	nop                                              ; $7931: $00
	inc  bc                                          ; $7932: $03
	dec  d                                           ; $7933: $15
	ld   bc, $2566                                   ; $7934: $01 $66 $25
	inc  bc                                          ; $7937: $03
	dec  d                                           ; $7938: $15
	ld   bc, $2287                                   ; $7939: $01 $87 $22
	inc  e                                           ; $793c: $1c
	nop                                              ; $793d: $00
	rlca                                             ; $793e: $07
	xor  l                                           ; $793f: $ad
	nop                                              ; $7940: $00
	inc  bc                                          ; $7941: $03
	dec  d                                           ; $7942: $15
	ld   bc, $2587                                   ; $7943: $01 $87 $25
	ld   [bc], a                                     ; $7946: $02
	nop                                              ; $7947: $00
	ld   bc, $2c02                                   ; $7948: $01 $02 $2c
	ld   bc, $2001                                   ; $794b: $01 $01 $20
	inc  e                                           ; $794e: $1c
	nop                                              ; $794f: $00
	ld   b, $04                                      ; $7950: $06 $04
	ld   bc, $000f                                   ; $7952: $01 $0f $00
	ld   bc, $0201                                   ; $7955: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7958: $cf
	dec  b                                           ; $7959: $05
	ld   a, [de]                                     ; $795a: $1a
	ld   h, e                                        ; $795b: $63
	and  c                                           ; $795c: $a1
	sbc  a                                           ; $795d: $9f
	dec  c                                           ; $795e: $0d
	nop                                              ; $795f: $00
	ld   a, [bc]                                     ; $7960: $0a
	inc  e                                           ; $7961: $1c
	dec  b                                           ; $7962: $05
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	ld   bc, $a502                                   ; $7965: $01 $02 $a5
	ld   l, a                                        ; $7968: $6f
	sub  l                                           ; $7969: $95
	ld   [hl], c                                     ; $796a: $71
	halt                                             ; $796b: $76
	sbc  [hl]                                        ; $796c: $9e
	inc  b                                           ; $796d: $04
	ld   c, $04                                      ; $796e: $0e $04
	adc  h                                           ; $7970: $8c
	ld   a, b                                        ; $7971: $78
	and  c                                           ; $7972: $a1
	sub  d                                           ; $7973: $92
	sbc  a                                           ; $7974: $9f
	dec  c                                           ; $7975: $0d
	ld   h, a                                        ; $7976: $67
	adc  h                                           ; $7977: $8c
	and  c                                           ; $7978: $a1
	ld   a, b                                        ; $7979: $78
	db   $fc                                         ; $797a: $fc
	sbc  a                                           ; $797b: $9f
	adc  c                                           ; $797c: $89
	ld   a, b                                        ; $797d: $78
	sbc  a                                           ; $797e: $9f
	dec  c                                           ; $797f: $0d
	nop                                              ; $7980: $00
	ld   a, [bc]                                     ; $7981: $0a
	dec  c                                           ; $7982: $0d
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	rrca                                             ; $7985: $0f
	nop                                              ; $7986: $00
	ld   bc, $1e09                                   ; $7987: $01 $09 $1e
	nop                                              ; $798a: $00
	inc  e                                           ; $798b: $1c
	dec  b                                           ; $798c: $05
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	ld   bc, $7196                                   ; $798f: $01 $96 $71
	sbc  [hl]                                        ; $7992: $9e
	ld   [$7d00], sp                                 ; $7993: $08 $00 $7d
	and  c                                           ; $7996: $a1
	sbc  a                                           ; $7997: $9f
	dec  c                                           ; $7998: $0d
	nop                                              ; $7999: $00
	ld   a, [bc]                                     ; $799a: $0a
	rrca                                             ; $799b: $0f
	nop                                              ; $799c: $00
	ld   bc, $0201                                   ; $799d: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79a0: $cf
	dec  b                                           ; $79a1: $05
	ld   a, [de]                                     ; $79a2: $1a
	ld   h, e                                        ; $79a3: $63
	and  c                                           ; $79a4: $a1
	sbc  a                                           ; $79a5: $9f
	dec  c                                           ; $79a6: $0d
	ld   e, b                                        ; $79a7: $58
	inc  b                                           ; $79a8: $04
	ld   a, e                                        ; $79a9: $7b
	sbc  d                                           ; $79aa: $9a
	ld   h, e                                        ; $79ab: $63
	adc  h                                           ; $79ac: $8c
	ld   [hl], l                                     ; $79ad: $75
	ld   h, a                                        ; $79ae: $67
	sbc  a                                           ; $79af: $9f
	dec  c                                           ; $79b0: $0d
	nop                                              ; $79b1: $00
	ld   a, [bc]                                     ; $79b2: $0a
	rrca                                             ; $79b3: $0f
	dec  b                                           ; $79b4: $05
	nop                                              ; $79b5: $00
	ld   bc, $9502                                   ; $79b6: $01 $02 $95
	ld   [bc], a                                     ; $79b9: $02
	sub  e                                           ; $79ba: $93
	sbc  b                                           ; $79bb: $98
	ld   e, d                                        ; $79bc: $5a
	and  c                                           ; $79bd: $a1
	ld   a, [hl]                                     ; $79be: $7e
	sbc  b                                           ; $79bf: $98
	sub  d                                           ; $79c0: $92
	sbc  a                                           ; $79c1: $9f
	dec  c                                           ; $79c2: $0d
	adc  c                                           ; $79c3: $89
	ld   a, b                                        ; $79c4: $78
	sbc  a                                           ; $79c5: $9f
	dec  c                                           ; $79c6: $0d
	nop                                              ; $79c7: $00
	ld   a, [bc]                                     ; $79c8: $0a
	dec  c                                           ; $79c9: $0d
	nop                                              ; $79ca: $00
	nop                                              ; $79cb: $00
	rrca                                             ; $79cc: $0f
	nop                                              ; $79cd: $00
	ld   bc, $1e09                                   ; $79ce: $01 $09 $1e
	nop                                              ; $79d1: $00
	inc  e                                           ; $79d2: $1c
	dec  b                                           ; $79d3: $05
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	ld   bc, $7196                                   ; $79d6: $01 $96 $71
	sbc  [hl]                                        ; $79d9: $9e
	ld   [bc], a                                     ; $79da: $02
	sub  l                                           ; $79db: $95
	ld   [bc], a                                     ; $79dc: $02
	sub  e                                           ; $79dd: $93
	sbc  b                                           ; $79de: $98
	ld   h, d                                        ; $79df: $62
	ld   e, l                                        ; $79e0: $5d
	sbc  e                                           ; $79e1: $9b
	ld   d, h                                        ; $79e2: $54
	ld   h, e                                        ; $79e3: $63
	and  c                                           ; $79e4: $a1
	sbc  a                                           ; $79e5: $9f
	dec  c                                           ; $79e6: $0d
	nop                                              ; $79e7: $00
	ld   a, [bc]                                     ; $79e8: $0a
	rrca                                             ; $79e9: $0f
	nop                                              ; $79ea: $00
	ld   bc, $5801                                   ; $79eb: $01 $01 $58
	inc  b                                           ; $79ee: $04
	ld   a, e                                        ; $79ef: $7b
	sbc  d                                           ; $79f0: $9a
	ld   h, e                                        ; $79f1: $63
	adc  h                                           ; $79f2: $8c
	ld   [hl], l                                     ; $79f3: $75
	ld   h, a                                        ; $79f4: $67
	sbc  a                                           ; $79f5: $9f
	ld   [bc], a                                     ; $79f6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f7: $cf
	dec  b                                           ; $79f8: $05
	ld   a, [de]                                     ; $79f9: $1a
	ld   h, e                                        ; $79fa: $63
	and  c                                           ; $79fb: $a1
	sbc  a                                           ; $79fc: $9f
	dec  c                                           ; $79fd: $0d
	nop                                              ; $79fe: $00
	ld   a, [bc]                                     ; $79ff: $0a
	inc  e                                           ; $7a00: $1c
	dec  b                                           ; $7a01: $05
	ld   bc, $0101                                   ; $7a02: $01 $01 $01
	inc  b                                           ; $7a05: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a06: $cf
	inc  b                                           ; $7a07: $04
	xor  d                                           ; $7a08: $aa
	sub  b                                           ; $7a09: $90
	ld   e, d                                        ; $7a0a: $5a
	and  c                                           ; $7a0b: $a1
	ld   a, [hl]                                     ; $7a0c: $7e
	ld   [hl], c                                     ; $7a0d: $71
	ld   [hl], h                                     ; $7a0e: $74
	ld   d, d                                        ; $7a0f: $52
	ld   h, c                                        ; $7a10: $61
	ld   a, b                                        ; $7a11: $78
	sbc  a                                           ; $7a12: $9f
	dec  c                                           ; $7a13: $0d
	ld   [$7d00], sp                                 ; $7a14: $08 $00 $7d
	and  c                                           ; $7a17: $a1
	sbc  a                                           ; $7a18: $9f
	dec  c                                           ; $7a19: $0d
	adc  c                                           ; $7a1a: $89
	ld   a, b                                        ; $7a1b: $78
	sbc  a                                           ; $7a1c: $9f
	dec  c                                           ; $7a1d: $0d
	nop                                              ; $7a1e: $00
	ld   a, [bc]                                     ; $7a1f: $0a
	dec  c                                           ; $7a20: $0d
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	rrca                                             ; $7a23: $0f
	nop                                              ; $7a24: $00
	ld   bc, $1e09                                   ; $7a25: $01 $09 $1e
	nop                                              ; $7a28: $00
	inc  e                                           ; $7a29: $1c
	dec  b                                           ; $7a2a: $05
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	ld   bc, $0008                                   ; $7a2d: $01 $08 $00
	ld   a, l                                        ; $7a30: $7d
	and  c                                           ; $7a31: $a1
	sbc  a                                           ; $7a32: $9f
	ld   e, b                                        ; $7a33: $58
	sub  d                                           ; $7a34: $92
	ld   h, a                                        ; $7a35: $67
	adc  l                                           ; $7a36: $8d
	sbc  a                                           ; $7a37: $9f
	dec  c                                           ; $7a38: $0d
	nop                                              ; $7a39: $00
	ld   a, [bc]                                     ; $7a3a: $0a
	rrca                                             ; $7a3b: $0f
	nop                                              ; $7a3c: $00
	ld   bc, $5601                                   ; $7a3d: $01 $01 $56
	ld   [hl], c                                     ; $7a40: $71
	sbc  [hl]                                        ; $7a41: $9e
	ld   [bc], a                                     ; $7a42: $02
	and  l                                           ; $7a43: $a5
	inc  b                                           ; $7a44: $04
	xor  d                                           ; $7a45: $aa
	ld   a, l                                        ; $7a46: $7d
	sub  b                                           ; $7a47: $90
	ld   d, h                                        ; $7a48: $54
	sbc  [hl]                                        ; $7a49: $9e
	dec  c                                           ; $7a4a: $0d
	ld   e, b                                        ; $7a4b: $58
	inc  bc                                          ; $7a4c: $03
	and  a                                           ; $7a4d: $a7
	adc  l                                           ; $7a4e: $8d
	ld   [hl], l                                     ; $7a4f: $75
	ld   h, a                                        ; $7a50: $67
	ld   e, c                                        ; $7a51: $59
	ld   sp, hl                                      ; $7a52: $f9
	dec  c                                           ; $7a53: $0d
	nop                                              ; $7a54: $00
	ld   a, [bc]                                     ; $7a55: $0a
	rrca                                             ; $7a56: $0f
	dec  b                                           ; $7a57: $05
	nop                                              ; $7a58: $00
	ld   bc, $cf04                                   ; $7a59: $01 $04 $cf
	inc  b                                           ; $7a5c: $04
	xor  d                                           ; $7a5d: $aa
	sbc  [hl]                                        ; $7a5e: $9e
	inc  bc                                          ; $7a5f: $03
	ld   d, $5f                                      ; $7a60: $16 $5f
	ld   d, d                                        ; $7a62: $52
	ld   h, c                                        ; $7a63: $61
	ld   a, b                                        ; $7a64: $78
	and  c                                           ; $7a65: $a1
	sub  d                                           ; $7a66: $92
	sbc  a                                           ; $7a67: $9f
	dec  c                                           ; $7a68: $0d
	ld   h, [hl]                                     ; $7a69: $66
	sub  c                                           ; $7a6a: $91
	sbc  [hl]                                        ; $7a6b: $9e
	ld   [bc], a                                     ; $7a6c: $02
	sub  l                                           ; $7a6d: $95
	ld   [bc], a                                     ; $7a6e: $02
	sub  e                                           ; $7a6f: $93
	sbc  b                                           ; $7a70: $98
	ld   e, d                                        ; $7a71: $5a
	and  c                                           ; $7a72: $a1
	ld   a, [hl]                                     ; $7a73: $7e
	ld   [hl], c                                     ; $7a74: $71
	ld   [hl], h                                     ; $7a75: $74
	sub  d                                           ; $7a76: $92
	sbc  a                                           ; $7a77: $9f
	dec  c                                           ; $7a78: $0d
	adc  c                                           ; $7a79: $89
	ld   a, b                                        ; $7a7a: $78
	sbc  a                                           ; $7a7b: $9f
	dec  c                                           ; $7a7c: $0d
	nop                                              ; $7a7d: $00
	ld   a, [bc]                                     ; $7a7e: $0a
	dec  c                                           ; $7a7f: $0d
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	rrca                                             ; $7a82: $0f
	nop                                              ; $7a83: $00
	ld   bc, $1e09                                   ; $7a84: $01 $09 $1e
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	inc  b                                           ; $7a89: $04
	add  b                                           ; $7a8a: $80
	dec  a                                           ; $7a8b: $3d
	ld   bc, $20ff                                   ; $7a8c: $01 $ff $20
	inc  b                                           ; $7a8f: $04
	add  b                                           ; $7a90: $80
	ld   a, $01                                      ; $7a91: $3e $01
	rst  $38                                         ; $7a93: $ff
	jr   nz, jr_052_7ab1                             ; $7a94: $20 $1b

	inc  b                                           ; $7a96: $04
	add  b                                           ; $7a97: $80
	ccf                                              ; $7a98: $3f
	ld   bc, $20ff                                   ; $7a99: $01 $ff $20
	dec  de                                          ; $7a9c: $1b
	nop                                              ; $7a9d: $00
	ld   c, $02                                      ; $7a9e: $0e $02
	rrca                                             ; $7aa0: $0f
	nop                                              ; $7aa1: $00
	ld   bc, $1402                                   ; $7aa2: $01 $02 $14
	ld   b, $01                                      ; $7aa5: $06 $01
	rrca                                             ; $7aa7: $0f
	inc  b                                           ; $7aa8: $04
	jr   jr_052_7aac                                 ; $7aa9: $18 $01

	ld   l, a                                        ; $7aab: $6f

jr_052_7aac:
	ld   d, d                                        ; $7aac: $52
	ld   [bc], a                                     ; $7aad: $02
	inc  de                                          ; $7aae: $13
	ld   l, a                                        ; $7aaf: $6f
	sub  c                                           ; $7ab0: $91

jr_052_7ab1:
	and  c                                           ; $7ab1: $a1
	sbc  [hl]                                        ; $7ab2: $9e
	dec  c                                           ; $7ab3: $0d
	ld   e, b                                        ; $7ab4: $58
	ld   e, e                                        ; $7ab5: $5b
	ld   [hl], h                                     ; $7ab6: $74
	sbc  c                                           ; $7ab7: $99
	rst  $38                                         ; $7ab8: $ff
	rst  $38                                         ; $7ab9: $ff
	ld   sp, hl                                      ; $7aba: $f9
	dec  c                                           ; $7abb: $0d
	nop                                              ; $7abc: $00
	ld   a, [bc]                                     ; $7abd: $0a
	rrca                                             ; $7abe: $0f
	nop                                              ; $7abf: $00
	ld   bc, $a301                                   ; $7ac0: $01 $01 $a3
	and  l                                           ; $7ac3: $a5
	db   $ec                                         ; $7ac4: $ec
	cp   d                                           ; $7ac5: $ba
	ld   sp, hl                                      ; $7ac6: $f9
	dec  c                                           ; $7ac7: $0d
	adc  h                                           ; $7ac8: $8c
	ld   l, [hl]                                     ; $7ac9: $6e
	ld   e, b                                        ; $7aca: $58
	ld   e, e                                        ; $7acb: $5b
	ld   [hl], h                                     ; $7acc: $74
	ld   l, l                                        ; $7acd: $6d
	ld   a, h                                        ; $7ace: $7c
	ld   e, c                                        ; $7acf: $59
	ld   d, d                                        ; $7ad0: $52
	ld   sp, hl                                      ; $7ad1: $f9
	dec  c                                           ; $7ad2: $0d
	nop                                              ; $7ad3: $00
	ld   a, [bc]                                     ; $7ad4: $0a
	inc  d                                           ; $7ad5: $14
	ld   a, [bc]                                     ; $7ad6: $0a
	ld   bc, $041c                                   ; $7ad7: $01 $1c $04
	ld   b, e                                        ; $7ada: $43
	dec  de                                          ; $7adb: $1b
	ld   bc, $a154                                   ; $7adc: $01 $54 $a1
	rst  $38                                         ; $7adf: $ff
	rst  $38                                         ; $7ae0: $ff
	ld   d, b                                        ; $7ae1: $50
	ld   a, h                                        ; $7ae2: $7c
	ld   a, e                                        ; $7ae3: $7b
	sbc  [hl]                                        ; $7ae4: $9e
	dec  c                                           ; $7ae5: $0d
	ld   a, e                                        ; $7ae6: $7b
	sbc  c                                           ; $7ae7: $99
	adc  h                                           ; $7ae8: $8c
	ld   d, [hl]                                     ; $7ae9: $56
	ld   a, c                                        ; $7aea: $79
	sbc  [hl]                                        ; $7aeb: $9e
	ld   a, c                                        ; $7aec: $79
	ld   [hl], c                                     ; $7aed: $71
	ld   e, e                                        ; $7aee: $5b
	and  b                                           ; $7aef: $a0
	dec  c                                           ; $7af0: $0d
	ld   [hl], d                                     ; $7af1: $72
	ld   e, a                                        ; $7af2: $5f
	sub  [hl]                                        ; $7af3: $96
	ld   d, h                                        ; $7af4: $54
	halt                                             ; $7af5: $76
	ld   h, l                                        ; $7af6: $65
	ld   l, l                                        ; $7af7: $6d
	sub  a                                           ; $7af8: $97
	ld   a, e                                        ; $7af9: $7b
	rst  $38                                         ; $7afa: $ff
	rst  $38                                         ; $7afb: $ff
	dec  c                                           ; $7afc: $0d
	nop                                              ; $7afd: $00
	ld   a, [bc]                                     ; $7afe: $0a
	ld   bc, $7179                                   ; $7aff: $01 $79 $71
	ld   e, e                                        ; $7b02: $5b
	ld   e, d                                        ; $7b03: $5a
	ld   a, b                                        ; $7b04: $78
	ld   e, l                                        ; $7b05: $5d
	ld   a, b                                        ; $7b06: $78
	ld   [hl], c                                     ; $7b07: $71
	ld   [hl], h                                     ; $7b08: $74
	ld   l, l                                        ; $7b09: $6d
	ld   a, h                                        ; $7b0a: $7c
	rst  $38                                         ; $7b0b: $ff
	rst  $38                                         ; $7b0c: $ff
	dec  c                                           ; $7b0d: $0d
	ld   l, a                                        ; $7b0e: $6f
	ld   d, d                                        ; $7b0f: $52
	ld   [bc], a                                     ; $7b10: $02
	inc  de                                          ; $7b11: $13
	ld   l, a                                        ; $7b12: $6f
	sub  c                                           ; $7b13: $91
	and  c                                           ; $7b14: $a1
	rst  $38                                         ; $7b15: $ff
	rst  $38                                         ; $7b16: $ff
	dec  c                                           ; $7b17: $0d
	and  e                                           ; $7b18: $a3
	and  l                                           ; $7b19: $a5
	db   $ec                                         ; $7b1a: $ec
	cp   d                                           ; $7b1b: $ba
	ld   a, h                                        ; $7b1c: $7c
	ld   a, c                                        ; $7b1d: $79
	ld   [hl], c                                     ; $7b1e: $71
	ld   e, e                                        ; $7b1f: $5b
	adc  l                                           ; $7b20: $8d
	ld   a, b                                        ; $7b21: $78
	ld   e, c                                        ; $7b22: $59
	ld   [hl], c                                     ; $7b23: $71
	ld   l, l                                        ; $7b24: $6d
	ld   sp, hl                                      ; $7b25: $f9
	dec  c                                           ; $7b26: $0d
	nop                                              ; $7b27: $00
	ld   a, [bc]                                     ; $7b28: $0a
	rlca                                             ; $7b29: $07
	xor  [hl]                                        ; $7b2a: $ae
	ld   bc, $8004                                   ; $7b2b: $01 $04 $80
	ccf                                              ; $7b2e: $3f
	ld   bc, $20ff                                   ; $7b2f: $01 $ff $20
	nop                                              ; $7b32: $00
	rrca                                             ; $7b33: $0f
	nop                                              ; $7b34: $00
	ld   bc, $2510                                   ; $7b35: $01 $10 $25
	nop                                              ; $7b38: $00
	ld   bc, $6590                                   ; $7b39: $01 $90 $65
	ld   e, c                                        ; $7b3c: $59
	ld   h, l                                        ; $7b3d: $65
	ld   [hl], h                                     ; $7b3e: $74
	sbc  [hl]                                        ; $7b3f: $9e
	ld   h, c                                        ; $7b40: $61
	sbc  d                                           ; $7b41: $9a
	ld   sp, hl                                      ; $7b42: $f9
	dec  c                                           ; $7b43: $0d
	nop                                              ; $7b44: $00
	ld   a, [bc]                                     ; $7b45: $0a
	inc  e                                           ; $7b46: $1c
	inc  b                                           ; $7b47: $04
	ld   b, c                                        ; $7b48: $41
	add  hl, de                                      ; $7b49: $19
	ld   bc, $9e50                                   ; $7b4a: $01 $50 $9e
	ld   l, e                                        ; $7b4d: $6b
	sbc  d                                           ; $7b4e: $9a
	ld   a, [$500d]                                  ; $7b4f: $fa $0d $50
	sbc  b                                           ; $7b52: $98
	ld   e, d                                        ; $7b53: $5a
	halt                                             ; $7b54: $76
	ld   d, h                                        ; $7b55: $54
	sbc  [hl]                                        ; $7b56: $9e
	ld   l, a                                        ; $7b57: $6f
	ld   d, d                                        ; $7b58: $52
	ld   [bc], a                                     ; $7b59: $02
	inc  de                                          ; $7b5a: $13
	ld   l, a                                        ; $7b5b: $6f
	sub  c                                           ; $7b5c: $91
	and  c                                           ; $7b5d: $a1
	dec  c                                           ; $7b5e: $0d
	add  b                                           ; $7b5f: $80
	sbc  e                                           ; $7b60: $9b
	ld   [hl], c                                     ; $7b61: $71
	ld   [hl], h                                     ; $7b62: $74
	ld   e, l                                        ; $7b63: $5d
	sbc  d                                           ; $7b64: $9a
	ld   l, l                                        ; $7b65: $6d
	and  c                                           ; $7b66: $a1
	ld   l, [hl]                                     ; $7b67: $6e
	ld   c, a                                        ; $7b68: $4f
	ld   sp, hl                                      ; $7b69: $f9
	dec  c                                           ; $7b6a: $0d
	nop                                              ; $7b6b: $00
	ld   a, [bc]                                     ; $7b6c: $0a
	inc  e                                           ; $7b6d: $1c
	inc  b                                           ; $7b6e: $04
	ld   b, e                                        ; $7b6f: $43
	dec  de                                          ; $7b70: $1b
	ld   bc, $6176                                   ; $7b71: $01 $76 $61
	sbc  e                                           ; $7b74: $9b
	ld   [hl], l                                     ; $7b75: $75
	sbc  [hl]                                        ; $7b76: $9e
	ld   a, b                                        ; $7b77: $78
	ld   e, c                                        ; $7b78: $59
	and  b                                           ; $7b79: $a0
	sub  [hl]                                        ; $7b7a: $96
	and  c                                           ; $7b7b: $a1
	ld   l, [hl]                                     ; $7b7c: $6e
	ld   sp, hl                                      ; $7b7d: $f9
	dec  c                                           ; $7b7e: $0d
	nop                                              ; $7b7f: $00
	ld   a, [bc]                                     ; $7b80: $0a
	rlca                                             ; $7b81: $07
	ld   c, l                                        ; $7b82: $4d
	ld   bc, $8004                                   ; $7b83: $01 $04 $80
	dec  a                                           ; $7b86: $3d
	ld   bc, $20ff                                   ; $7b87: $01 $ff $20
	nop                                              ; $7b8a: $00
	rrca                                             ; $7b8b: $0f
	nop                                              ; $7b8c: $00
	ld   bc, $0401                                   ; $7b8d: $01 $01 $04
	ld   de, $75a1                                   ; $7b90: $11 $a1 $75
	ld   a, b                                        ; $7b93: $78
	ld   d, d                                        ; $7b94: $52
	sub  [hl]                                        ; $7b95: $96
	sbc  a                                           ; $7b96: $9f
	dec  c                                           ; $7b97: $0d
	inc  b                                           ; $7b98: $04
	ld   e, $03                                      ; $7b99: $1e $03
	add  d                                           ; $7b9b: $82
	ld   a, h                                        ; $7b9c: $7c
	add  b                                           ; $7b9d: $80
	adc  l                                           ; $7b9e: $8d
	ld   [hl], d                                     ; $7b9f: $72
	ld   l, [hl]                                     ; $7ba0: $6e
	ld   h, l                                        ; $7ba1: $65
	sbc  a                                           ; $7ba2: $9f
	dec  c                                           ; $7ba3: $0d
	nop                                              ; $7ba4: $00
	ld   a, [bc]                                     ; $7ba5: $0a
	inc  e                                           ; $7ba6: $1c
	inc  b                                           ; $7ba7: $04
	ld   b, l                                        ; $7ba8: $45
	dec  e                                           ; $7ba9: $1d
	dec  e                                           ; $7baa: $1d
	ld   b, b                                        ; $7bab: $40
	inc  d                                           ; $7bac: $14
	inc  bc                                          ; $7bad: $03
	inc  d                                           ; $7bae: $14
	ld   bc, $2803                                   ; $7baf: $01 $03 $28
	nop                                              ; $7bb2: $00
	ld   bc, $6763                                   ; $7bb3: $01 $63 $67
	ld   e, d                                        ; $7bb6: $5a
	sbc  [hl]                                        ; $7bb7: $9e
	ld   l, a                                        ; $7bb8: $6f
	ld   d, d                                        ; $7bb9: $52
	ld   [bc], a                                     ; $7bba: $02
	inc  de                                          ; $7bbb: $13
	ld   l, a                                        ; $7bbc: $6f
	sub  c                                           ; $7bbd: $91
	and  c                                           ; $7bbe: $a1
	ld   a, [$650d]                                  ; $7bbf: $fa $0d $65
	and  c                                           ; $7bc2: $a1
	ld   h, l                                        ; $7bc3: $65
	ld   a, b                                        ; $7bc4: $78
	and  c                                           ; $7bc5: $a1
	ld   l, [hl]                                     ; $7bc6: $6e
	ld   a, e                                        ; $7bc7: $7b
	ei                                               ; $7bc8: $fb
	sbc  a                                           ; $7bc9: $9f
	dec  c                                           ; $7bca: $0d
	nop                                              ; $7bcb: $00
	ld   a, [bc]                                     ; $7bcc: $0a
	ld   bc, $a189                                   ; $7bcd: $01 $89 $a1
	halt                                             ; $7bd0: $76
	ld   d, h                                        ; $7bd1: $54
	ld   a, c                                        ; $7bd2: $79
	sbc  [hl]                                        ; $7bd3: $9e
	dec  c                                           ; $7bd4: $0d
	ld   [hl], a                                     ; $7bd5: $77
	ld   d, h                                        ; $7bd6: $54
	sub  b                                           ; $7bd7: $90
	ld   d, b                                        ; $7bd8: $50
	sbc  b                                           ; $7bd9: $98
	ld   e, d                                        ; $7bda: $5a
	halt                                             ; $7bdb: $76
	ld   d, h                                        ; $7bdc: $54
	sbc  [hl]                                        ; $7bdd: $9e
	dec  c                                           ; $7bde: $0d
	ld   l, a                                        ; $7bdf: $6f
	ld   d, d                                        ; $7be0: $52
	ld   [bc], a                                     ; $7be1: $02
	inc  de                                          ; $7be2: $13
	ld   l, a                                        ; $7be3: $6f
	sub  c                                           ; $7be4: $91
	and  c                                           ; $7be5: $a1
	sbc  a                                           ; $7be6: $9f
	dec  c                                           ; $7be7: $0d
	nop                                              ; $7be8: $00
	ld   a, [bc]                                     ; $7be9: $0a
	nop                                              ; $7bea: $00
	rrca                                             ; $7beb: $0f
	nop                                              ; $7bec: $00
	ld   bc, $0301                                   ; $7bed: $01 $01 $03
	adc  e                                           ; $7bf0: $8b
	ld   a, l                                        ; $7bf1: $7d
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	dec  c                                           ; $7bf4: $0d
	ld   l, a                                        ; $7bf5: $6f
	sub  l                                           ; $7bf6: $95
	ld   [hl], c                                     ; $7bf7: $71
	halt                                             ; $7bf8: $76
	inc  b                                           ; $7bf9: $04
	ld   de, $66a1                                   ; $7bfa: $11 $a1 $66
	sub  c                                           ; $7bfd: $91
	ld   [hl], c                                     ; $7bfe: $71
	ld   l, l                                        ; $7bff: $6d
	and  c                                           ; $7c00: $a1
	ld   l, [hl]                                     ; $7c01: $6e
	sbc  a                                           ; $7c02: $9f
	dec  c                                           ; $7c03: $0d
	nop                                              ; $7c04: $00
	ld   a, [bc]                                     ; $7c05: $0a
	inc  e                                           ; $7c06: $1c
	inc  b                                           ; $7c07: $04
	ld   b, e                                        ; $7c08: $43
	dec  de                                          ; $7c09: $1b
	dec  e                                           ; $7c0a: $1d
	ld   b, b                                        ; $7c0b: $40
	inc  d                                           ; $7c0c: $14
	inc  bc                                          ; $7c0d: $03
	inc  d                                           ; $7c0e: $14
	ld   bc, $2901                                   ; $7c0f: $01 $01 $29
	nop                                              ; $7c12: $00
	ld   bc, $5484                                   ; $7c13: $01 $84 $54
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	dec  c                                           ; $7c18: $0d
	xor  c                                           ; $7c19: $a9
	jp   nz, $c4b2                                   ; $7c1a: $c2 $b2 $c4

	ret                                              ; $7c1d: $c9


	ld   d, d                                        ; $7c1e: $52
	ld   a, l                                        ; $7c1f: $7d
	and  c                                           ; $7c20: $a1
	ld   l, [hl]                                     ; $7c21: $6e
	sub  [hl]                                        ; $7c22: $96
	sbc  a                                           ; $7c23: $9f
	dec  c                                           ; $7c24: $0d
	nop                                              ; $7c25: $00
	ld   a, [bc]                                     ; $7c26: $0a
	inc  e                                           ; $7c27: $1c
	inc  b                                           ; $7c28: $04
	ld   b, b                                        ; $7c29: $40
	jr   jr_052_7c2d                                 ; $7c2a: $18 $01

	ld   [hl], l                                     ; $7c2c: $75

jr_052_7c2d:
	sub  b                                           ; $7c2d: $90
	sbc  [hl]                                        ; $7c2e: $9e
	ld   l, a                                        ; $7c2f: $6f
	ld   d, d                                        ; $7c30: $52
	ld   [bc], a                                     ; $7c31: $02
	inc  de                                          ; $7c32: $13
	ld   l, a                                        ; $7c33: $6f
	sub  c                                           ; $7c34: $91
	and  c                                           ; $7c35: $a1
	ld   a, b                                        ; $7c36: $78
	sub  a                                           ; $7c37: $97
	dec  c                                           ; $7c38: $0d
	ld   d, d                                        ; $7c39: $52
	ld   d, d                                        ; $7c3a: $52
	sub  d                                           ; $7c3b: $92
	sbc  a                                           ; $7c3c: $9f
	dec  c                                           ; $7c3d: $0d
	ld   h, [hl]                                     ; $7c3e: $66
	sub  c                                           ; $7c3f: $91
	ld   d, b                                        ; $7c40: $50
	ld   a, e                                        ; $7c41: $7b
	sbc  [hl]                                        ; $7c42: $9e
	pop  de                                          ; $7c43: $d1
	and  l                                           ; $7c44: $a5
	pop  de                                          ; $7c45: $d1
	and  l                                           ; $7c46: $a5
	sbc  a                                           ; $7c47: $9f
	dec  c                                           ; $7c48: $0d
	nop                                              ; $7c49: $00
	ld   a, [bc]                                     ; $7c4a: $0a
	nop                                              ; $7c4b: $00
	rrca                                             ; $7c4c: $0f
	nop                                              ; $7c4d: $00
	ld   bc, $8901                                   ; $7c4e: $01 $01 $89
	ld   [hl], c                                     ; $7c51: $71
	ld   l, l                                        ; $7c52: $6d
	sub  a                                           ; $7c53: $97
	ld   e, c                                        ; $7c54: $59
	ld   h, l                                        ; $7c55: $65
	ld   l, [hl]                                     ; $7c56: $6e
	ld   [hl], c                                     ; $7c57: $71
	ld   l, l                                        ; $7c58: $6d
	ld   e, c                                        ; $7c59: $59
	sub  a                                           ; $7c5a: $97
	dec  c                                           ; $7c5b: $0d
	ld   d, d                                        ; $7c5c: $52
	sub  a                                           ; $7c5d: $97
	ld   a, b                                        ; $7c5e: $78
	ld   d, d                                        ; $7c5f: $52
	ld   a, h                                        ; $7c60: $7c
	ld   e, c                                        ; $7c61: $59
	halt                                             ; $7c62: $76
	dec  b                                           ; $7c63: $05
	pop  de                                          ; $7c64: $d1
	ld   [hl], c                                     ; $7c65: $71
	ld   [hl], h                                     ; $7c66: $74
	dec  c                                           ; $7c67: $0d
	or   l                                           ; $7c68: $b5
	ldh  [rDIV], a                                   ; $7c69: $e0 $04
	add  a                                           ; $7c6b: $87
	ld   a, c                                        ; $7c6c: $79
	ld   h, a                                        ; $7c6d: $67
	ld   [hl], h                                     ; $7c6e: $74
	ld   l, a                                        ; $7c6f: $6f
	sub  c                                           ; $7c70: $91
	ld   [hl], c                                     ; $7c71: $71
	ld   l, l                                        ; $7c72: $6d
	sub  [hl]                                        ; $7c73: $96
	sbc  a                                           ; $7c74: $9f
	dec  c                                           ; $7c75: $0d
	nop                                              ; $7c76: $00
	ld   a, [bc]                                     ; $7c77: $0a
	inc  e                                           ; $7c78: $1c
	inc  b                                           ; $7c79: $04
	ld   b, [hl]                                     ; $7c7a: $46
	ld   e, $01                                      ; $7c7b: $1e $01
	ld   d, [hl]                                     ; $7c7d: $56
	ld   sp, hl                                      ; $7c7e: $f9
	db   $10                                         ; $7c7f: $10
	ld   d, h                                        ; $7c80: $54
	ld   l, e                                        ; $7c81: $6b
	ld   sp, hl                                      ; $7c82: $f9
	dec  c                                           ; $7c83: $0d
	nop                                              ; $7c84: $00
	inc  e                                           ; $7c85: $1c
	inc  b                                           ; $7c86: $04
	ld   b, a                                        ; $7c87: $47
	rra                                              ; $7c88: $1f
	ld   bc, $7780                                   ; $7c89: $01 $80 $77
	ei                                               ; $7c8c: $fb
	ld   d, d                                        ; $7c8d: $52
	ld   a, [$8010]                                  ; $7c8e: $fa $10 $80
	ld   [hl], a                                     ; $7c91: $77
	ei                                               ; $7c92: $fb
	ld   d, d                                        ; $7c93: $52
	ld   a, [$000d]                                  ; $7c94: $fa $0d $00

Jump_052_7c97:
	ld   a, [bc]                                     ; $7c97: $0a
	dec  e                                           ; $7c98: $1d
	ld   b, b                                        ; $7c99: $40
	inc  d                                           ; $7c9a: $14
	inc  bc                                          ; $7c9b: $03
	inc  d                                           ; $7c9c: $14
	ld   bc, $2903                                   ; $7c9d: $01 $03 $29
	nop                                              ; $7ca0: $00
	ld   bc, $526f                                   ; $7ca1: $01 $6f $52
	ld   [bc], a                                     ; $7ca4: $02
	inc  de                                          ; $7ca5: $13
	ld   l, a                                        ; $7ca6: $6f
	sub  c                                           ; $7ca7: $91
	and  c                                           ; $7ca8: $a1
	ld   a, h                                        ; $7ca9: $7c
	pop  de                                          ; $7caa: $d1
	xor  h                                           ; $7cab: $ac
	ld   c, a                                        ; $7cac: $4f
	ld   a, [$000d]                                  ; $7cad: $fa $0d $00
	ld   a, [bc]                                     ; $7cb0: $0a
	dec  b                                           ; $7cb1: $05
	ld   b, b                                        ; $7cb2: $40
	ld   c, e                                        ; $7cb3: $4b
	ld   [bc], a                                     ; $7cb4: $02
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	dec  b                                           ; $7cb7: $05
	ld   b, b                                        ; $7cb8: $40
	ld   d, c                                        ; $7cb9: $51
	ld   bc, $0002                                   ; $7cba: $01 $02 $00
	dec  c                                           ; $7cbd: $0d
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	rrca                                             ; $7cc0: $0f
	nop                                              ; $7cc1: $00
	ld   bc, $1e09                                   ; $7cc2: $01 $09 $1e
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	inc  bc                                          ; $7cc7: $03
	ld   de, $8c01                                   ; $7cc8: $11 $01 $8c
	dec  h                                           ; $7ccb: $25
	inc  bc                                          ; $7ccc: $03
	ld   c, [hl]                                     ; $7ccd: $4e
	ld   [bc], a                                     ; $7cce: $02
	nop                                              ; $7ccf: $00
	inc  bc                                          ; $7cd0: $03
	ld   c, b                                        ; $7cd1: $48
	add  hl, hl                                      ; $7cd2: $29
	add  hl, hl                                      ; $7cd3: $29
	ld   bc, $2201                                   ; $7cd4: $01 $01 $22
	inc  e                                           ; $7cd7: $1c
	nop                                              ; $7cd8: $00
	ld   c, $02                                      ; $7cd9: $0e $02
	rrca                                             ; $7cdb: $0f
	nop                                              ; $7cdc: $00
	ld   bc, $0102                                   ; $7cdd: $01 $02 $01
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	and  c                                           ; $7ce2: $a1
	ld   sp, hl                                      ; $7ce3: $f9
	db   $10                                         ; $7ce4: $10
	sub  b                                           ; $7ce5: $90
	ld   d, h                                        ; $7ce6: $54
	ld   h, c                                        ; $7ce7: $61
	and  c                                           ; $7ce8: $a1
	ld   a, b                                        ; $7ce9: $78
	inc  bc                                          ; $7cea: $03
	ld   l, a                                        ; $7ceb: $6f
	ld   [bc], a                                     ; $7cec: $02
	xor  c                                           ; $7ced: $a9
	ld   e, c                                        ; $7cee: $59
	rst  $38                                         ; $7cef: $ff
	dec  c                                           ; $7cf0: $0d
	inc  b                                           ; $7cf1: $04
	xor  d                                           ; $7cf2: $aa
	ld   [bc], a                                     ; $7cf3: $02
	sub  a                                           ; $7cf4: $97
	and  b                                           ; $7cf5: $a0
	inc  bc                                          ; $7cf6: $03
	ld   d, l                                        ; $7cf7: $55
	ld   d, d                                        ; $7cf8: $52
	ld   [hl], h                                     ; $7cf9: $74
	inc  b                                           ; $7cfa: $04
	ld   b, d                                        ; $7cfb: $42
	sbc  c                                           ; $7cfc: $99
	ld   l, h                                        ; $7cfd: $6c
	ld   a, [$000d]                                  ; $7cfe: $fa $0d $00
	ld   a, [bc]                                     ; $7d01: $0a
	inc  d                                           ; $7d02: $14
	ld   b, $01                                      ; $7d03: $06 $01
	rrca                                             ; $7d05: $0f
	ld   bc, $0100                                   ; $7d06: $01 $00 $01
	ld   [$6300], sp                                 ; $7d09: $08 $00 $63
	and  c                                           ; $7d0c: $a1
	rst  $38                                         ; $7d0d: $ff
	rst  $38                                         ; $7d0e: $ff
	dec  c                                           ; $7d0f: $0d
	adc  h                                           ; $7d10: $8c
	ld   l, [hl]                                     ; $7d11: $6e
	ld   [bc], a                                     ; $7d12: $02
	ld   e, d                                        ; $7d13: $5a
	ld   e, e                                        ; $7d14: $5b
	ld   [hl], h                                     ; $7d15: $74
	adc  h                                           ; $7d16: $8c
	ld   h, a                                        ; $7d17: $67
	ld   sp, hl                                      ; $7d18: $f9
	dec  c                                           ; $7d19: $0d
	nop                                              ; $7d1a: $00
	ld   a, [bc]                                     ; $7d1b: $0a
	rrca                                             ; $7d1c: $0f
	nop                                              ; $7d1d: $00
	ld   bc, $7d01                                   ; $7d1e: $01 $01 $7d
	ld   d, d                                        ; $7d21: $52
	sbc  [hl]                                        ; $7d22: $9e
	ld   [hl], a                                     ; $7d23: $77
	ld   d, h                                        ; $7d24: $54
	ld   l, h                                        ; $7d25: $6c
	sbc  a                                           ; $7d26: $9f
	dec  c                                           ; $7d27: $0d
	nop                                              ; $7d28: $00
	ld   a, [bc]                                     ; $7d29: $0a
	inc  d                                           ; $7d2a: $14
	ld   a, [bc]                                     ; $7d2b: $0a
	ld   bc, $011c                                   ; $7d2c: $01 $1c $01
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	ld   bc, $8d67                                   ; $7d31: $01 $67 $8d
	adc  h                                           ; $7d34: $8c
	ld   l, c                                        ; $7d35: $69
	and  c                                           ; $7d36: $a1
	sbc  [hl]                                        ; $7d37: $9e
	ld   h, c                                        ; $7d38: $61
	and  c                                           ; $7d39: $a1
	ld   a, b                                        ; $7d3a: $78
	inc  bc                                          ; $7d3b: $03
	ld   l, a                                        ; $7d3c: $6f
	ld   [bc], a                                     ; $7d3d: $02
	xor  c                                           ; $7d3e: $a9
	ld   a, c                                        ; $7d3f: $79
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	dec  c                                           ; $7d42: $0d
	nop                                              ; $7d43: $00
	ld   a, [bc]                                     ; $7d44: $0a
	inc  e                                           ; $7d45: $1c
	ld   bc, $0505                                   ; $7d46: $01 $05 $05
	ld   bc, $7c50                                   ; $7d49: $01 $50 $7c
	rst  $38                                         ; $7d4c: $ff
	rst  $38                                         ; $7d4d: $ff
	ld   e, b                                        ; $7d4e: $58
	inc  b                                           ; $7d4f: $04
	rst  $28                                         ; $7d50: $ef
	inc  bc                                          ; $7d51: $03
	ld   l, d                                        ; $7d52: $6a
	ld   a, c                                        ; $7d53: $79
	dec  c                                           ; $7d54: $0d
	ld   e, b                                        ; $7d55: $58
	ld   a, c                                        ; $7d56: $79
	ld   e, h                                        ; $7d57: $5c
	sbc  b                                           ; $7d58: $98
	and  b                                           ; $7d59: $a0
	inc  bc                                          ; $7d5a: $03
	xor  h                                           ; $7d5b: $ac
	ld   [hl], c                                     ; $7d5c: $71
	ld   l, l                                        ; $7d5d: $6d
	and  c                                           ; $7d5e: $a1
	ld   [hl], l                                     ; $7d5f: $75
	ld   h, a                                        ; $7d60: $67
	ld   e, a                                        ; $7d61: $5f
	ld   [hl], a                                     ; $7d62: $77
	dec  c                                           ; $7d63: $0d
	ld   d, d                                        ; $7d64: $52
	ld   e, c                                        ; $7d65: $59
	ld   e, d                                        ; $7d66: $5a
	ld   [hl], l                                     ; $7d67: $75
	ld   h, a                                        ; $7d68: $67
	ld   e, c                                        ; $7d69: $59
	ld   sp, hl                                      ; $7d6a: $f9
	dec  c                                           ; $7d6b: $0d
	nop                                              ; $7d6c: $00
	ld   a, [bc]                                     ; $7d6d: $0a
	db   $10                                         ; $7d6e: $10
	ld   b, $00                                      ; $7d6f: $06 $00
	add  hl, de                                      ; $7d71: $19
	dec  b                                           ; $7d72: $05
	inc  bc                                          ; $7d73: $03
	ld   e, b                                        ; $7d74: $58
	ld   d, d                                        ; $7d75: $52
	ld   h, l                                        ; $7d76: $65
	ld   l, e                                        ; $7d77: $6b
	ld   d, h                                        ; $7d78: $54
	ld   [hl], l                                     ; $7d79: $75
	ld   h, a                                        ; $7d7a: $67
	ld   a, e                                        ; $7d7b: $7b
	nop                                              ; $7d7c: $00
	nop                                              ; $7d7d: $00
	inc  b                                           ; $7d7e: $04
	dec  bc                                          ; $7d7f: $0b
	inc  b                                           ; $7d80: $04
	pop  de                                          ; $7d81: $d1
	ld   a, l                                        ; $7d82: $7d
	inc  b                                           ; $7d83: $04
	ld   c, c                                        ; $7d84: $49
	ld   [hl], l                                     ; $7d85: $75
	ld   h, a                                        ; $7d86: $67
	ld   e, c                                        ; $7d87: $59
	ld   sp, hl                                      ; $7d88: $f9
	nop                                              ; $7d89: $00
	ld   bc, $0458                                   ; $7d8a: $01 $58 $04
	adc  c                                           ; $7d8d: $89
	ld   d, d                                        ; $7d8e: $52
	ld   [hl], c                                     ; $7d8f: $71
	ld   a, a                                        ; $7d90: $7f
	ld   d, d                                        ; $7d91: $52
	ld   a, b                                        ; $7d92: $78
	and  c                                           ; $7d93: $a1
	ld   [hl], l                                     ; $7d94: $75
	ld   h, a                                        ; $7d95: $67
	nop                                              ; $7d96: $00
	ld   [bc], a                                     ; $7d97: $02
	rlca                                             ; $7d98: $07
	inc  e                                           ; $7d99: $1c
	ld   bc, $0302                                   ; $7d9a: $01 $02 $03
	ld   bc, $2000                                   ; $7d9d: $01 $00 $20
	nop                                              ; $7da0: $00
	rlca                                             ; $7da1: $07
	add  l                                           ; $7da2: $85
	ld   bc, $0302                                   ; $7da3: $01 $02 $03
	ld   bc, $2001                                   ; $7da6: $01 $01 $20
	nop                                              ; $7da9: $00
	rlca                                             ; $7daa: $07
	daa                                              ; $7dab: $27
	inc  bc                                          ; $7dac: $03
	ld   [bc], a                                     ; $7dad: $02
	inc  bc                                          ; $7dae: $03
	ld   bc, $2002                                   ; $7daf: $01 $02 $20
	nop                                              ; $7db2: $00
	ld   b, $dd                                      ; $7db3: $06 $dd
	nop                                              ; $7db5: $00
	inc  e                                           ; $7db6: $1c
	ld   bc, $0000                                   ; $7db7: $01 $00 $00
	ld   bc, $9e50                                   ; $7dba: $01 $50 $9e
	ld   h, c                                        ; $7dbd: $61
	ld   h, c                                        ; $7dbe: $61
	ld   a, c                                        ; $7dbf: $79
	ld   e, b                                        ; $7dc0: $58
	ld   d, d                                        ; $7dc1: $52
	ld   [hl], h                                     ; $7dc2: $74
	ld   e, b                                        ; $7dc3: $58
	ld   e, e                                        ; $7dc4: $5b
	adc  h                                           ; $7dc5: $8c
	ld   h, a                                        ; $7dc6: $67
	ld   e, c                                        ; $7dc7: $59
	sub  a                                           ; $7dc8: $97
	dec  c                                           ; $7dc9: $0d
	sub  [hl]                                        ; $7dca: $96
	ld   e, c                                        ; $7dcb: $59
	ld   [hl], c                                     ; $7dcc: $71
	ld   l, l                                        ; $7dcd: $6d
	sub  a                                           ; $7dce: $97
	inc  bc                                          ; $7dcf: $03
	ld   l, d                                        ; $7dd0: $6a
	add  a                                           ; $7dd1: $87
	ld   [hl], h                                     ; $7dd2: $74
	ld   [bc], a                                     ; $7dd3: $02
	inc  [hl]                                        ; $7dd4: $34
	ld   h, e                                        ; $7dd5: $63
	ld   d, d                                        ; $7dd6: $52
	rst  $38                                         ; $7dd7: $ff
	rst  $38                                         ; $7dd8: $ff
	dec  c                                           ; $7dd9: $0d
	nop                                              ; $7dda: $00
	ld   a, [bc]                                     ; $7ddb: $0a
	ld   bc, $9166                                   ; $7ddc: $01 $66 $91
	sbc  [hl]                                        ; $7ddf: $9e
	ld   e, b                                        ; $7de0: $58
	sub  d                                           ; $7de1: $92
	ld   h, a                                        ; $7de2: $67
	adc  l                                           ; $7de3: $8d
	ld   a, b                                        ; $7de4: $78
	ld   h, e                                        ; $7de5: $63
	ld   d, d                                        ; $7de6: $52
	rst  $38                                         ; $7de7: $ff
	rst  $38                                         ; $7de8: $ff
	dec  c                                           ; $7de9: $0d
	nop                                              ; $7dea: $00
	ld   a, [bc]                                     ; $7deb: $0a
	dec  c                                           ; $7dec: $0d
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	rrca                                             ; $7def: $0f
	nop                                              ; $7df0: $00
	ld   bc, $1e09                                   ; $7df1: $01 $09 $1e
	nop                                              ; $7df4: $00
	rrca                                             ; $7df5: $0f
	nop                                              ; $7df6: $00
	ld   bc, $5801                                   ; $7df7: $01 $01 $58
	ld   d, d                                        ; $7dfa: $52
	ld   h, l                                        ; $7dfb: $65
	ld   l, e                                        ; $7dfc: $6b
	ld   d, h                                        ; $7dfd: $54
	ld   [hl], l                                     ; $7dfe: $75
	ld   h, a                                        ; $7dff: $67
	ld   a, e                                        ; $7e00: $7b
	sbc  a                                           ; $7e01: $9f
	dec  c                                           ; $7e02: $0d
	sub  [hl]                                        ; $7e03: $96
	sbc  e                                           ; $7e04: $9b
	ld   h, c                                        ; $7e05: $61
	and  c                                           ; $7e06: $a1
	ld   [hl], l                                     ; $7e07: $75
	ld   d, d                                        ; $7e08: $52
	ld   l, l                                        ; $7e09: $6d
	ld   l, [hl]                                     ; $7e0a: $6e
	ld   e, e                                        ; $7e0b: $5b
	adc  h                                           ; $7e0c: $8c
	ld   h, a                                        ; $7e0d: $67
	sbc  a                                           ; $7e0e: $9f
	dec  c                                           ; $7e0f: $0d
	nop                                              ; $7e10: $00
	ld   a, [bc]                                     ; $7e11: $0a
	inc  e                                           ; $7e12: $1c
	ld   bc, $0505                                   ; $7e13: $01 $05 $05
	dec  e                                           ; $7e16: $1d
	ld   b, b                                        ; $7e17: $40
	ld   de, $1103                                   ; $7e18: $11 $03 $11
	ld   bc, $2803                                   ; $7e1b: $01 $03 $28
	nop                                              ; $7e1e: $00
	ld   bc, $6e92                                   ; $7e1f: $01 $92 $6e
	rst  $38                                         ; $7e22: $ff
	rst  $38                                         ; $7e23: $ff
	dec  c                                           ; $7e24: $0d
	ld   l, l                                        ; $7e25: $6d
	ld   l, [hl]                                     ; $7e26: $6e
	ld   a, h                                        ; $7e27: $7c
	ld   e, b                                        ; $7e28: $58
	ld   a, c                                        ; $7e29: $79
	ld   e, h                                        ; $7e2a: $5c
	sbc  b                                           ; $7e2b: $98
	ld   [hl], l                                     ; $7e2c: $75
	ld   h, a                                        ; $7e2d: $67
	sub  [hl]                                        ; $7e2e: $96
	sbc  a                                           ; $7e2f: $9f
	dec  c                                           ; $7e30: $0d
	nop                                              ; $7e31: $00
	ld   a, [bc]                                     ; $7e32: $0a
	inc  e                                           ; $7e33: $1c
	ld   bc, $0101                                   ; $7e34: $01 $01 $01
	ld   bc, $9166                                   ; $7e37: $01 $66 $91
	sbc  [hl]                                        ; $7e3a: $9e
	inc  bc                                          ; $7e3b: $03
	ld   [hl], b                                     ; $7e3c: $70
	adc  a                                           ; $7e3d: $8f
	ld   a, c                                        ; $7e3e: $79
	inc  bc                                          ; $7e3f: $03
	ld   l, d                                        ; $7e40: $6a
	add  a                                           ; $7e41: $87
	ld   [hl], h                                     ; $7e42: $74
	ld   [bc], a                                     ; $7e43: $02
	inc  [hl]                                        ; $7e44: $34
	ld   h, e                                        ; $7e45: $63
	ld   d, d                                        ; $7e46: $52
	ld   a, e                                        ; $7e47: $7b
	sbc  a                                           ; $7e48: $9f
	dec  c                                           ; $7e49: $0d
	ld   e, b                                        ; $7e4a: $58
	sub  d                                           ; $7e4b: $92
	ld   h, a                                        ; $7e4c: $67
	adc  l                                           ; $7e4d: $8d
	ld   a, b                                        ; $7e4e: $78
	ld   h, e                                        ; $7e4f: $63
	ld   d, d                                        ; $7e50: $52
	sbc  a                                           ; $7e51: $9f
	dec  c                                           ; $7e52: $0d
	nop                                              ; $7e53: $00
	ld   a, [bc]                                     ; $7e54: $0a
	dec  c                                           ; $7e55: $0d
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	rrca                                             ; $7e58: $0f
	nop                                              ; $7e59: $00
	ld   bc, $1e09                                   ; $7e5a: $01 $09 $1e
	nop                                              ; $7e5d: $00
	rrca                                             ; $7e5e: $0f
	nop                                              ; $7e5f: $00
	ld   bc, $0401                                   ; $7e60: $01 $01 $04
	dec  bc                                          ; $7e63: $0b
	inc  b                                           ; $7e64: $04
	pop  de                                          ; $7e65: $d1
	ld   a, l                                        ; $7e66: $7d
	inc  b                                           ; $7e67: $04
	ld   c, c                                        ; $7e68: $49
	ld   [hl], l                                     ; $7e69: $75
	ld   h, a                                        ; $7e6a: $67
	ld   e, c                                        ; $7e6b: $59
	ld   sp, hl                                      ; $7e6c: $f9
	dec  c                                           ; $7e6d: $0d
	nop                                              ; $7e6e: $00
	ld   a, [bc]                                     ; $7e6f: $0a
	inc  e                                           ; $7e70: $1c
	ld   bc, $0101                                   ; $7e71: $01 $01 $01
	ld   bc, $7958                                   ; $7e74: $01 $58 $79
	ld   e, h                                        ; $7e77: $5c
	sbc  b                                           ; $7e78: $98
	halt                                             ; $7e79: $76
	ld   d, d                                        ; $7e7a: $52
	ld   d, [hl]                                     ; $7e7b: $56
	ld   a, [hl]                                     ; $7e7c: $7e
	dec  c                                           ; $7e7d: $0d
	ld   b, $20                                      ; $7e7e: $06 $20
	ld   [bc], a                                     ; $7e80: $02
	ld   b, [hl]                                     ; $7e81: $46
	ld   h, l                                        ; $7e82: $65
	ld   [hl], l                                     ; $7e83: $75
	ld   h, a                                        ; $7e84: $67
	sub  [hl]                                        ; $7e85: $96
	sbc  a                                           ; $7e86: $9f
	dec  c                                           ; $7e87: $0d
	nop                                              ; $7e88: $00
	ld   a, [bc]                                     ; $7e89: $0a
	add  hl, de                                      ; $7e8a: $19
	dec  b                                           ; $7e8b: $05
	inc  bc                                          ; $7e8c: $03
	ld   l, e                                        ; $7e8d: $6b
	sbc  d                                           ; $7e8e: $9a
	ld   a, l                                        ; $7e8f: $7d
	ld   d, h                                        ; $7e90: $54
	sbc  d                                           ; $7e91: $9a
	ld   h, l                                        ; $7e92: $65
	ld   d, d                                        ; $7e93: $52
	ld   [hl], l                                     ; $7e94: $75
	ld   h, a                                        ; $7e95: $67
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	cp   b                                           ; $7e98: $b8
	push hl                                          ; $7e99: $e5
	or   d                                           ; $7e9a: $b2
	ld   h, [hl]                                     ; $7e9b: $66
	sub  c                                           ; $7e9c: $91
	ld   a, b                                        ; $7e9d: $78
	ld   d, d                                        ; $7e9e: $52
	and  c                                           ; $7e9f: $a1
	ld   [hl], l                                     ; $7ea0: $75
	ld   h, a                                        ; $7ea1: $67
	ld   e, c                                        ; $7ea2: $59
	ld   sp, hl                                      ; $7ea3: $f9
	nop                                              ; $7ea4: $00
	ld   bc, $2006                                   ; $7ea5: $01 $06 $20
	ld   [bc], a                                     ; $7ea8: $02
	ld   b, [hl]                                     ; $7ea9: $46
	ld   h, l                                        ; $7eaa: $65
	ld   a, l                                        ; $7eab: $7d
	ld   [bc], a                                     ; $7eac: $02
	sub  h                                           ; $7ead: $94
	inc  bc                                          ; $7eae: $03
	ld   l, e                                        ; $7eaf: $6b
	ld   a, b                                        ; $7eb0: $78
	and  c                                           ; $7eb1: $a1
	ld   [hl], l                                     ; $7eb2: $75
	ld   h, a                                        ; $7eb3: $67
	nop                                              ; $7eb4: $00
	ld   [bc], a                                     ; $7eb5: $02
	rlca                                             ; $7eb6: $07
	ei                                               ; $7eb7: $fb
	ld   bc, $0302                                   ; $7eb8: $01 $02 $03
	ld   bc, $2000                                   ; $7ebb: $01 $00 $20
	nop                                              ; $7ebe: $00
	rlca                                             ; $7ebf: $07
	ld   c, b                                        ; $7ec0: $48
	ld   [bc], a                                     ; $7ec1: $02
	ld   [bc], a                                     ; $7ec2: $02
	inc  bc                                          ; $7ec3: $03
	ld   bc, $2001                                   ; $7ec4: $01 $01 $20
	nop                                              ; $7ec7: $00
	rlca                                             ; $7ec8: $07
	or   [hl]                                        ; $7ec9: $b6
	ld   [bc], a                                     ; $7eca: $02
	ld   [bc], a                                     ; $7ecb: $02
	inc  bc                                          ; $7ecc: $03
	ld   bc, $2002                                   ; $7ecd: $01 $02 $20
	nop                                              ; $7ed0: $00
	ld   b, $8b                                      ; $7ed1: $06 $8b
	ld   [bc], a                                     ; $7ed3: $02
	rrca                                             ; $7ed4: $0f
	nop                                              ; $7ed5: $00
	ld   bc, $6b01                                   ; $7ed6: $01 $01 $6b
	sbc  d                                           ; $7ed9: $9a
	ld   a, l                                        ; $7eda: $7d
	ld   d, h                                        ; $7edb: $54
	sbc  d                                           ; $7edc: $9a
	ld   h, l                                        ; $7edd: $65
	ld   d, d                                        ; $7ede: $52
	ld   [hl], l                                     ; $7edf: $75
	ld   h, a                                        ; $7ee0: $67
	rst  $38                                         ; $7ee1: $ff
	rst  $38                                         ; $7ee2: $ff
	dec  c                                           ; $7ee3: $0d
	sub  d                                           ; $7ee4: $92
	ld   [hl], c                                     ; $7ee5: $71
	ld   a, a                                        ; $7ee6: $7f
	sbc  b                                           ; $7ee7: $98
	ld   e, b                                        ; $7ee8: $58
	ld   a, c                                        ; $7ee9: $79
	ld   e, h                                        ; $7eea: $5c
	sbc  b                                           ; $7eeb: $98
	ld   a, l                                        ; $7eec: $7d
	dec  c                                           ; $7eed: $0d
	ld   b, $20                                      ; $7eee: $06 $20
	ld   [bc], a                                     ; $7ef0: $02
	ld   b, [hl]                                     ; $7ef1: $46
	ld   h, l                                        ; $7ef2: $65
	ld   [hl], l                                     ; $7ef3: $75
	ld   h, a                                        ; $7ef4: $67
	sub  [hl]                                        ; $7ef5: $96
	ld   a, e                                        ; $7ef6: $7b
	sbc  a                                           ; $7ef7: $9f
	dec  c                                           ; $7ef8: $0d
	nop                                              ; $7ef9: $00
	ld   a, [bc]                                     ; $7efa: $0a
	inc  e                                           ; $7efb: $1c
	ld   bc, $0101                                   ; $7efc: $01 $01 $01
	dec  e                                           ; $7eff: $1d
	ld   b, b                                        ; $7f00: $40
	ld   de, $1103                                   ; $7f01: $11 $03 $11
	ld   bc, $2802                                   ; $7f04: $01 $02 $28
	nop                                              ; $7f07: $00
	ld   bc, $546b                                   ; $7f08: $01 $6b $54
	ld   d, d                                        ; $7f0b: $52
	ld   [hl], c                                     ; $7f0c: $71
	ld   [hl], h                                     ; $7f0d: $74
	sub  b                                           ; $7f0e: $90
	sub  a                                           ; $7f0f: $97
	ld   d, [hl]                                     ; $7f10: $56
	sbc  c                                           ; $7f11: $99
	halt                                             ; $7f12: $76
	dec  c                                           ; $7f13: $0d
	ld   d, h                                        ; $7f14: $54
	sbc  d                                           ; $7f15: $9a
	ld   h, l                                        ; $7f16: $65
	ld   d, d                                        ; $7f17: $52
	ld   [hl], l                                     ; $7f18: $75
	ld   h, a                                        ; $7f19: $67
	sbc  a                                           ; $7f1a: $9f
	dec  c                                           ; $7f1b: $0d
	nop                                              ; $7f1c: $00
	ld   a, [bc]                                     ; $7f1d: $0a
	ld   b, $8b                                      ; $7f1e: $06 $8b
	ld   [bc], a                                     ; $7f20: $02
	rrca                                             ; $7f21: $0f
	nop                                              ; $7f22: $00
	ld   bc, $b801                                   ; $7f23: $01 $01 $b8
	push hl                                          ; $7f26: $e5
	or   d                                           ; $7f27: $b2
	ld   h, [hl]                                     ; $7f28: $66
	sub  c                                           ; $7f29: $91
	ld   a, b                                        ; $7f2a: $78
	ld   d, d                                        ; $7f2b: $52
	and  c                                           ; $7f2c: $a1
	ld   [hl], l                                     ; $7f2d: $75
	ld   h, a                                        ; $7f2e: $67
	ld   e, c                                        ; $7f2f: $59
	ld   sp, hl                                      ; $7f30: $f9
	dec  c                                           ; $7f31: $0d
	ld   e, b                                        ; $7f32: $58
	ld   a, c                                        ; $7f33: $79
	ld   e, h                                        ; $7f34: $5c
	sbc  b                                           ; $7f35: $98
	halt                                             ; $7f36: $76
	ld   [bc], a                                     ; $7f37: $02
	sbc  l                                           ; $7f38: $9d
	ld   d, [hl]                                     ; $7f39: $56
	ld   a, [hl]                                     ; $7f3a: $7e
	dec  c                                           ; $7f3b: $0d
	cp   b                                           ; $7f3c: $b8
	push hl                                          ; $7f3d: $e5
	or   d                                           ; $7f3e: $b2
	ld   [hl], l                                     ; $7f3f: $75
	ld   h, l                                        ; $7f40: $65
	sub  l                                           ; $7f41: $95
	ld   d, h                                        ; $7f42: $54
	rst  $38                                         ; $7f43: $ff
	rst  $38                                         ; $7f44: $ff
	dec  c                                           ; $7f45: $0d
	nop                                              ; $7f46: $00
	ld   a, [bc]                                     ; $7f47: $0a
	inc  e                                           ; $7f48: $1c
	ld   bc, $0404                                   ; $7f49: $01 $04 $04
	dec  e                                           ; $7f4c: $1d
	ld   b, b                                        ; $7f4d: $40
	ld   de, $1103                                   ; $7f4e: $11 $03 $11
	ld   bc, $2901                                   ; $7f51: $01 $01 $29
	nop                                              ; $7f54: $00
	ld   bc, $546b                                   ; $7f55: $01 $6b $54
	ld   [hl], l                                     ; $7f58: $75
	ld   h, a                                        ; $7f59: $67
	ld   e, c                                        ; $7f5a: $59
	rst  $38                                         ; $7f5b: $ff
	rst  $38                                         ; $7f5c: $ff
	ld   sp, hl                                      ; $7f5d: $f9
	dec  c                                           ; $7f5e: $0d
	nop                                              ; $7f5f: $00
	ld   a, [bc]                                     ; $7f60: $0a
	ld   b, $8b                                      ; $7f61: $06 $8b
	ld   [bc], a                                     ; $7f63: $02
	inc  e                                           ; $7f64: $1c
	ld   bc, $0000                                   ; $7f65: $01 $00 $00
	ld   bc, $9166                                   ; $7f68: $01 $66 $91
	sbc  [hl]                                        ; $7f6b: $9e
	inc  bc                                          ; $7f6c: $03
	ld   [hl], b                                     ; $7f6d: $70
	adc  a                                           ; $7f6e: $8f
	ld   a, c                                        ; $7f6f: $79
	inc  bc                                          ; $7f70: $03
	ld   l, d                                        ; $7f71: $6a
	add  a                                           ; $7f72: $87
	ld   [hl], h                                     ; $7f73: $74
	ld   [bc], a                                     ; $7f74: $02
	inc  [hl]                                        ; $7f75: $34
	ld   h, e                                        ; $7f76: $63
	ld   d, d                                        ; $7f77: $52
	ld   a, e                                        ; $7f78: $7b
	sbc  a                                           ; $7f79: $9f
	dec  c                                           ; $7f7a: $0d
	ld   e, b                                        ; $7f7b: $58
	sub  d                                           ; $7f7c: $92
	ld   h, a                                        ; $7f7d: $67
	adc  l                                           ; $7f7e: $8d
	ld   a, b                                        ; $7f7f: $78
	ld   h, e                                        ; $7f80: $63
	ld   d, d                                        ; $7f81: $52
	sbc  a                                           ; $7f82: $9f
	dec  c                                           ; $7f83: $0d
	nop                                              ; $7f84: $00
	ld   a, [bc]                                     ; $7f85: $0a
	dec  c                                           ; $7f86: $0d
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	rrca                                             ; $7f89: $0f
	nop                                              ; $7f8a: $00
	ld   bc, $1e09                                   ; $7f8b: $01 $09 $1e
	nop                                              ; $7f8e: $00
	rrca                                             ; $7f8f: $0f
	nop                                              ; $7f90: $00
	ld   bc, $0601                                   ; $7f91: $01 $01 $06
	jr   nz, jr_052_7f98                             ; $7f94: $20 $02

	ld   b, [hl]                                     ; $7f96: $46
	ld   h, l                                        ; $7f97: $65

jr_052_7f98:
	ld   a, l                                        ; $7f98: $7d
	ld   [bc], a                                     ; $7f99: $02
	sub  h                                           ; $7f9a: $94
	inc  bc                                          ; $7f9b: $03
	ld   l, e                                        ; $7f9c: $6b
	ld   a, b                                        ; $7f9d: $78
	and  c                                           ; $7f9e: $a1
	ld   [hl], l                                     ; $7f9f: $75
	ld   h, a                                        ; $7fa0: $67
	rst  $38                                         ; $7fa1: $ff
	rst  $38                                         ; $7fa2: $ff
	dec  c                                           ; $7fa3: $0d
	nop                                              ; $7fa4: $00
	ld   a, [bc]                                     ; $7fa5: $0a
	inc  e                                           ; $7fa6: $1c
	ld   bc, $0404                                   ; $7fa7: $01 $04 $04
	dec  e                                           ; $7faa: $1d
	ld   b, b                                        ; $7fab: $40
	ld   de, $1103                                   ; $7fac: $11 $03 $11
	ld   bc, $2902                                   ; $7faf: $01 $02 $29
	nop                                              ; $7fb2: $00
	ld   bc, $546b                                   ; $7fb3: $01 $6b $54
	ld   a, b                                        ; $7fb6: $78
	and  c                                           ; $7fb7: $a1
	ld   [hl], l                                     ; $7fb8: $75
	ld   h, a                                        ; $7fb9: $67
	ld   e, c                                        ; $7fba: $59
	rst  $38                                         ; $7fbb: $ff
	rst  $38                                         ; $7fbc: $ff
	dec  c                                           ; $7fbd: $0d
	ld   h, d                                        ; $7fbe: $62
	adc  a                                           ; $7fbf: $8f
	and  c                                           ; $7fc0: $a1
	ld   a, b                                        ; $7fc1: $78
	ld   h, e                                        ; $7fc2: $63
	ld   d, d                                        ; $7fc3: $52
	rst  $38                                         ; $7fc4: $ff
	rst  $38                                         ; $7fc5: $ff
	dec  c                                           ; $7fc6: $0d
	nop                                              ; $7fc7: $00
	ld   a, [bc]                                     ; $7fc8: $0a
	ld   bc, $9166                                   ; $7fc9: $01 $66 $91
	sbc  [hl]                                        ; $7fcc: $9e
	ld   h, c                                        ; $7fcd: $61
	sbc  d                                           ; $7fce: $9a
	rst  $38                                         ; $7fcf: $ff
	rst  $38                                         ; $7fd0: $ff
	dec  c                                           ; $7fd1: $0d
	xor  h                                           ; $7fd2: $ac
	push af                                          ; $7fd3: $f5
	bit  4, e                                        ; $7fd4: $cb $63
	and  c                                           ; $7fd6: $a1
	ld   a, c                                        ; $7fd7: $79
	dec  c                                           ; $7fd8: $0d
	inc  bc                                          ; $7fd9: $03
	and  b                                           ; $7fda: $a0
	ld   [hl], c                                     ; $7fdb: $71
	ld   [hl], h                                     ; $7fdc: $74
	ld   d, d                                        ; $7fdd: $52
	ld   e, e                                        ; $7fde: $5b
	adc  h                                           ; $7fdf: $8c
	ld   h, a                                        ; $7fe0: $67
	ld   a, e                                        ; $7fe1: $7b
	sbc  a                                           ; $7fe2: $9f
	dec  c                                           ; $7fe3: $0d
	nop                                              ; $7fe4: $00
	ld   a, [bc]                                     ; $7fe5: $0a
	inc  e                                           ; $7fe6: $1c
	ld   bc, $0606                                   ; $7fe7: $01 $06 $06
	ld   bc, $9258                                   ; $7fea: $01 $58 $92
	ld   h, a                                        ; $7fed: $67
	adc  l                                           ; $7fee: $8d
	ld   a, b                                        ; $7fef: $78
	ld   h, e                                        ; $7ff0: $63
	ld   d, d                                        ; $7ff1: $52
	rst  $38                                         ; $7ff2: $ff
	rst  $38                                         ; $7ff3: $ff
	dec  c                                           ; $7ff4: $0d
	nop                                              ; $7ff5: $00
	ld   a, [bc]                                     ; $7ff6: $0a
	dec  c                                           ; $7ff7: $0d
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	rrca                                             ; $7ffa: $0f
	nop                                              ; $7ffb: $00
	ld   bc, $1e09                                   ; $7ffc: $01 $09 $1e
	nop                                              ; $7fff: $00
