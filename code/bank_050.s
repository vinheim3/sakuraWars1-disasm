; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

	inc  e                                           ; $4000: $1c
	inc  c                                           ; $4001: $0c
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	ld   [bc], a                                     ; $4004: $02
	ld   bc, $0008                                   ; $4005: $01 $08 $00
	ld   h, e                                        ; $4008: $63
	and  c                                           ; $4009: $a1
	sbc  a                                           ; $400a: $9f
	dec  c                                           ; $400b: $0d
	nop                                              ; $400c: $00
	ld   a, [bc]                                     ; $400d: $0a
	inc  e                                           ; $400e: $1c
	inc  c                                           ; $400f: $0c
	ld   bc, $0101                                   ; $4010: $01 $01 $01
	ld   d, d                                        ; $4013: $52
	ld   d, d                                        ; $4014: $52
	ld   h, c                                        ; $4015: $61
	halt                                             ; $4016: $76
	and  b                                           ; $4017: $a0
	ld   [bc], a                                     ; $4018: $02
	ret  nc                                          ; $4019: $d0

	ld   d, [hl]                                     ; $401a: $56
	ld   [hl], h                                     ; $401b: $74
	ld   d, b                                        ; $401c: $50
	ld   h, b                                        ; $401d: $60
	adc  h                                           ; $401e: $8c
	ld   h, a                                        ; $401f: $67
	sbc  a                                           ; $4020: $9f
	dec  c                                           ; $4021: $0d
	nop                                              ; $4022: $00
	ld   a, [bc]                                     ; $4023: $0a
	ld   bc, $8d67                                   ; $4024: $01 $67 $8d
	sbc  d                                           ; $4027: $9a
	ld   h, e                                        ; $4028: $63
	and  c                                           ; $4029: $a1
	ld   a, l                                        ; $402a: $7d
	sbc  [hl]                                        ; $402b: $9e
	ld   [bc], a                                     ; $402c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $402d: $cf
	inc  bc                                          ; $402e: $03
	jp   $0d5a                                       ; $402f: $c3 $5a $0d


	inc  b                                           ; $4032: $04
	ld   c, $02                                      ; $4033: $0e $02
	sbc  d                                           ; $4035: $9a
	ld   e, e                                        ; $4036: $5b
	ld   a, b                                        ; $4037: $78
	and  c                                           ; $4038: $a1
	ld   [hl], l                                     ; $4039: $75
	ld   h, a                                        ; $403a: $67
	sub  [hl]                                        ; $403b: $96
	sbc  a                                           ; $403c: $9f
	dec  c                                           ; $403d: $0d
	nop                                              ; $403e: $00
	ld   a, [bc]                                     ; $403f: $0a
	ld   bc, $8a58                                   ; $4040: $01 $58 $8a
	ld   d, [hl]                                     ; $4043: $56
	ld   [hl], h                                     ; $4044: $74
	ld   e, b                                        ; $4045: $58
	ld   e, l                                        ; $4046: $5d
	halt                                             ; $4047: $76
	ld   d, d                                        ; $4048: $52
	ld   d, d                                        ; $4049: $52
	ld   e, c                                        ; $404a: $59
	sub  b                                           ; $404b: $90
	dec  c                                           ; $404c: $0d
	ld   h, l                                        ; $404d: $65
	sbc  d                                           ; $404e: $9a
	adc  h                                           ; $404f: $8c
	ld   l, c                                        ; $4050: $69
	and  c                                           ; $4051: $a1
	sub  [hl]                                        ; $4052: $96
	sbc  a                                           ; $4053: $9f
	dec  c                                           ; $4054: $0d
	ld   l, e                                        ; $4055: $6b
	sbc  d                                           ; $4056: $9a
	ld   h, [hl]                                     ; $4057: $66
	sub  c                                           ; $4058: $91
	sbc  [hl]                                        ; $4059: $9e
	inc  bc                                          ; $405a: $03
	add  e                                           ; $405b: $83
	dec  b                                           ; $405c: $05
	dec  c                                           ; $405d: $0d
	ld   h, l                                        ; $405e: $65
	adc  h                                           ; $405f: $8c
	ld   h, a                                        ; $4060: $67
	sbc  a                                           ; $4061: $9f
	dec  c                                           ; $4062: $0d
	nop                                              ; $4063: $00
	ld   a, [bc]                                     ; $4064: $0a
	nop                                              ; $4065: $00
	nop                                              ; $4066: $00
	ld   c, $2f                                      ; $4067: $0e $2f
	ld   [bc], a                                     ; $4069: $02
	inc  e                                           ; $406a: $1c
	inc  c                                           ; $406b: $0c
	ld   bc, $0101                                   ; $406c: $01 $01 $01
	ld   d, b                                        ; $406f: $50
	sub  a                                           ; $4070: $97
	sbc  [hl]                                        ; $4071: $9e
	ld   [$6300], sp                                 ; $4072: $08 $00 $63
	and  c                                           ; $4075: $a1
	sbc  a                                           ; $4076: $9f
	dec  c                                           ; $4077: $0d
	ld   d, d                                        ; $4078: $52
	ld   d, d                                        ; $4079: $52
	halt                                             ; $407a: $76
	ld   h, c                                        ; $407b: $61
	sbc  e                                           ; $407c: $9b
	ld   a, c                                        ; $407d: $79
	rst  $38                                         ; $407e: $ff
	rst  $38                                         ; $407f: $ff
	ld   h, a                                        ; $4080: $67
	adc  l                                           ; $4081: $8d
	adc  h                                           ; $4082: $8c
	ld   l, c                                        ; $4083: $69
	and  c                                           ; $4084: $a1
	ld   e, d                                        ; $4085: $5a
	dec  c                                           ; $4086: $0d
	ld   l, a                                        ; $4087: $6f
	sub  l                                           ; $4088: $95
	ld   [hl], c                                     ; $4089: $71
	halt                                             ; $408a: $76
	inc  bc                                          ; $408b: $03
	ld   l, e                                        ; $408c: $6b
	inc  b                                           ; $408d: $04
	ld   [de], a                                     ; $408e: $12
	ld   [hl], c                                     ; $408f: $71
	ld   [hl], h                                     ; $4090: $74
	ld   e, l                                        ; $4091: $5d
	sbc  d                                           ; $4092: $9a
	adc  h                                           ; $4093: $8c
	ld   l, c                                        ; $4094: $69
	and  c                                           ; $4095: $a1
	ld   sp, hl                                      ; $4096: $f9
	dec  c                                           ; $4097: $0d
	nop                                              ; $4098: $00
	ld   a, [bc]                                     ; $4099: $0a
	add  hl, de                                      ; $409a: $19
	dec  b                                           ; $409b: $05
	ld   [bc], a                                     ; $409c: $02
	ld   a, l                                        ; $409d: $7d
	ld   d, d                                        ; $409e: $52
	nop                                              ; $409f: $00
	nop                                              ; $40a0: $00
	ld   d, d                                        ; $40a1: $52
	ld   d, d                                        ; $40a2: $52
	ld   d, [hl]                                     ; $40a3: $56
	nop                                              ; $40a4: $00
	ld   bc, $b607                                   ; $40a5: $01 $07 $b6
	nop                                              ; $40a8: $00
	ld   [bc], a                                     ; $40a9: $02
	inc  bc                                          ; $40aa: $03
	ld   bc, $2000                                   ; $40ab: $01 $00 $20
	nop                                              ; $40ae: $00
	rlca                                             ; $40af: $07
	ld   d, h                                        ; $40b0: $54
	nop                                              ; $40b1: $00
	ld   [bc], a                                     ; $40b2: $02
	inc  bc                                          ; $40b3: $03
	ld   bc, $2001                                   ; $40b4: $01 $01 $20
	nop                                              ; $40b7: $00
	ld   b, $89                                      ; $40b8: $06 $89
	nop                                              ; $40ba: $00
	rrca                                             ; $40bb: $0f
	nop                                              ; $40bc: $00
	ld   bc, $6701                                   ; $40bd: $01 $01 $67
	adc  l                                           ; $40c0: $8d
	adc  h                                           ; $40c1: $8c
	ld   l, c                                        ; $40c2: $69
	and  c                                           ; $40c3: $a1
	sbc  a                                           ; $40c4: $9f
	dec  c                                           ; $40c5: $0d
	ld   [bc], a                                     ; $40c6: $02
	and  l                                           ; $40c7: $a5
	ld   l, a                                        ; $40c8: $6f
	sub  l                                           ; $40c9: $95
	ld   [hl], c                                     ; $40ca: $71
	halt                                             ; $40cb: $76
	ld   d, d                                        ; $40cc: $52
	ld   l, e                                        ; $40cd: $6b
	ld   e, d                                        ; $40ce: $5a
	ld   h, l                                        ; $40cf: $65
	ld   d, d                                        ; $40d0: $52
	ld   a, h                                        ; $40d1: $7c
	ld   [hl], l                                     ; $40d2: $75
	rst  $38                                         ; $40d3: $ff
	rst  $38                                         ; $40d4: $ff
	dec  c                                           ; $40d5: $0d
	nop                                              ; $40d6: $00
	ld   a, [bc]                                     ; $40d7: $0a
	inc  e                                           ; $40d8: $1c
	inc  c                                           ; $40d9: $0c
	nop                                              ; $40da: $00
	nop                                              ; $40db: $00
	ld   bc, $546b                                   ; $40dc: $01 $6b $54
	ld   [hl], l                                     ; $40df: $75
	ld   h, a                                        ; $40e0: $67
	ld   e, c                                        ; $40e1: $59
	rst  $38                                         ; $40e2: $ff
	rst  $38                                         ; $40e3: $ff
	dec  c                                           ; $40e4: $0d
	ld   [hl], l                                     ; $40e5: $75
	ld   a, l                                        ; $40e6: $7d
	sbc  [hl]                                        ; $40e7: $9e
	adc  h                                           ; $40e8: $8c
	ld   l, l                                        ; $40e9: $6d
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	dec  c                                           ; $40ec: $0d
	nop                                              ; $40ed: $00
	ld   a, [bc]                                     ; $40ee: $0a
	nop                                              ; $40ef: $00
	rrca                                             ; $40f0: $0f
	inc  c                                           ; $40f1: $0c
	ld   bc, $0401                                   ; $40f2: $01 $01 $04
	ld   c, c                                        ; $40f5: $49
	ld   e, c                                        ; $40f6: $59
	inc  b                                           ; $40f7: $04
	di                                               ; $40f8: $f3
	ld   [bc], a                                     ; $40f9: $02
	jp   $505a                                       ; $40fa: $c3 $5a $50


	sbc  c                                           ; $40fd: $99
	ld   a, h                                        ; $40fe: $7c
	ld   [hl], l                                     ; $40ff: $75
	ld   h, a                                        ; $4100: $67
	ld   a, e                                        ; $4101: $7b
	sbc  a                                           ; $4102: $9f
	dec  c                                           ; $4103: $0d
	ld   [hl], l                                     ; $4104: $75
	ld   h, l                                        ; $4105: $65
	ld   l, l                                        ; $4106: $6d
	sub  a                                           ; $4107: $97
	sbc  [hl]                                        ; $4108: $9e
	ld   e, a                                        ; $4109: $5f
	ld   [hl], c                                     ; $410a: $71
	ld   h, c                                        ; $410b: $61
	ld   d, h                                        ; $410c: $54
	ld   [hl], l                                     ; $410d: $75
	ld   h, a                                        ; $410e: $67
	sub  [hl]                                        ; $410f: $96
	sbc  a                                           ; $4110: $9f
	dec  c                                           ; $4111: $0d
	ld   [hl], l                                     ; $4112: $75
	ld   a, l                                        ; $4113: $7d
	sbc  [hl]                                        ; $4114: $9e
	adc  h                                           ; $4115: $8c
	ld   l, l                                        ; $4116: $6d
	rst  $38                                         ; $4117: $ff
	rst  $38                                         ; $4118: $ff
	dec  c                                           ; $4119: $0d
	nop                                              ; $411a: $00
	ld   a, [bc]                                     ; $411b: $0a
	nop                                              ; $411c: $00
	rrca                                             ; $411d: $0f
	nop                                              ; $411e: $00
	ld   bc, $7d01                                   ; $411f: $01 $01 $7d
	ld   d, d                                        ; $4122: $52
	sbc  [hl]                                        ; $4123: $9e
	ld   d, d                                        ; $4124: $52
	ld   d, d                                        ; $4125: $52
	ld   [hl], l                                     ; $4126: $75
	ld   h, a                                        ; $4127: $67
	sub  [hl]                                        ; $4128: $96
	sbc  a                                           ; $4129: $9f
	dec  c                                           ; $412a: $0d
	nop                                              ; $412b: $00
	ld   a, [bc]                                     ; $412c: $0a
	inc  e                                           ; $412d: $1c
	inc  c                                           ; $412e: $0c
	ld   bc, $0101                                   ; $412f: $01 $01 $01
	sub  [hl]                                        ; $4132: $96
	ld   e, c                                        ; $4133: $59
	ld   [hl], c                                     ; $4134: $71
	ld   l, l                                        ; $4135: $6d
	sbc  a                                           ; $4136: $9f
	dec  c                                           ; $4137: $0d
	jp   nz, $c4b2                                   ; $4138: $c2 $b2 $c4

	ret                                              ; $413b: $c9


	ld   a, h                                        ; $413c: $7c
	inc  bc                                          ; $413d: $03
	ld   h, d                                        ; $413e: $62
	ld   [bc], a                                     ; $413f: $02
	ccf                                              ; $4140: $3f
	ld   a, b                                        ; $4141: $78
	and  c                                           ; $4142: $a1
	ld   [hl], l                                     ; $4143: $75
	ld   h, a                                        ; $4144: $67
	ld   e, a                                        ; $4145: $5f
	ld   [hl], a                                     ; $4146: $77
	dec  c                                           ; $4147: $0d
	sub  [hl]                                        ; $4148: $96
	sbc  e                                           ; $4149: $9b
	ld   h, l                                        ; $414a: $65
	ld   e, l                                        ; $414b: $5d
	ld   e, b                                        ; $414c: $58
	ld   [bc], a                                     ; $414d: $02
	add  b                                           ; $414e: $80
	ld   d, d                                        ; $414f: $52
	ld   h, l                                        ; $4150: $65
	adc  h                                           ; $4151: $8c
	ld   h, a                                        ; $4152: $67
	sbc  a                                           ; $4153: $9f
	dec  c                                           ; $4154: $0d
	nop                                              ; $4155: $00
	ld   a, [bc]                                     ; $4156: $0a
	ld   bc, $6d9d                                   ; $4157: $01 $9d $6d
	ld   h, l                                        ; $415a: $65
	ld   e, d                                        ; $415b: $5a
	inc  b                                           ; $415c: $04
	ld   de, $038d                                   ; $415d: $11 $8d $03
	ld   h, l                                        ; $4160: $65
	ld   h, b                                        ; $4161: $60
	sbc  c                                           ; $4162: $99
	inc  bc                                          ; $4163: $03
	pop  bc                                          ; $4164: $c1
	inc  bc                                          ; $4165: $03
	sbc  h                                           ; $4166: $9c
	and  b                                           ; $4167: $a0
	dec  c                                           ; $4168: $0d
	inc  bc                                          ; $4169: $03
	ld   a, l                                        ; $416a: $7d
	ld   h, l                                        ; $416b: $65
	ld   [hl], h                                     ; $416c: $74
	ld   d, d                                        ; $416d: $52
	ld   [hl], c                                     ; $416e: $71
	ld   [hl], h                                     ; $416f: $74
	ld   [bc], a                                     ; $4170: $02
	inc  [hl]                                        ; $4171: $34
	ld   h, e                                        ; $4172: $63
	ld   d, d                                        ; $4173: $52
	sbc  a                                           ; $4174: $9f
	dec  c                                           ; $4175: $0d
	ld   [hl], l                                     ; $4176: $75
	ld   a, l                                        ; $4177: $7d
	sbc  [hl]                                        ; $4178: $9e
	ld   d, d                                        ; $4179: $52
	ld   e, e                                        ; $417a: $5b
	adc  h                                           ; $417b: $8c
	ld   h, a                                        ; $417c: $67
	sub  [hl]                                        ; $417d: $96
	sbc  a                                           ; $417e: $9f
	dec  c                                           ; $417f: $0d
	nop                                              ; $4180: $00
	ld   a, [bc]                                     ; $4181: $0a
	ld   bc, $0e04                                   ; $4182: $01 $04 $0e
	inc  bc                                          ; $4185: $03
	add  d                                           ; $4186: $82
	ld   [bc], a                                     ; $4187: $02
	dec  d                                           ; $4188: $15
	ld   [bc], a                                     ; $4189: $02
	db   $fc                                         ; $418a: $fc
	ld   d, $03                                      ; $418b: $16 $03
	add  d                                           ; $418d: $82
	sbc  [hl]                                        ; $418e: $9e
	ld   [bc], a                                     ; $418f: $02
	dec  d                                           ; $4190: $15
	ld   a, h                                        ; $4191: $7c
	inc  bc                                          ; $4192: $03
	add  [hl]                                        ; $4193: $86
	jr   jr_050_4199                                 ; $4194: $18 $03

	add  d                                           ; $4196: $82
	dec  c                                           ; $4197: $0d
	ld   e, b                                        ; $4198: $58

jr_050_4199:
	ld   h, [hl]                                     ; $4199: $66
	ld   d, d                                        ; $419a: $52
	ld   h, e                                        ; $419b: $63
	and  c                                           ; $419c: $a1
	add  hl, de                                      ; $419d: $19
	inc  bc                                          ; $419e: $03
	add  d                                           ; $419f: $82
	ld   a, h                                        ; $41a0: $7c
	ld   [bc], a                                     ; $41a1: $02
	ld   a, e                                        ; $41a2: $7b
	ld   [bc], a                                     ; $41a3: $02
	ccf                                              ; $41a4: $3f
	ld   a, l                                        ; $41a5: $7d
	sbc  a                                           ; $41a6: $9f
	dec  c                                           ; $41a7: $0d
	nop                                              ; $41a8: $00
	ld   a, [bc]                                     ; $41a9: $0a
	add  hl, de                                      ; $41aa: $19
	dec  b                                           ; $41ab: $05
	inc  bc                                          ; $41ac: $03
	inc  de                                          ; $41ad: $13
	ld   de, $8203                                   ; $41ae: $11 $03 $82
	nop                                              ; $41b1: $00
	nop                                              ; $41b2: $00
	ld   [de], a                                     ; $41b3: $12
	add  hl, de                                      ; $41b4: $19
	inc  bc                                          ; $41b5: $03
	add  d                                           ; $41b6: $82
	nop                                              ; $41b7: $00
	ld   bc, $1213                                   ; $41b8: $01 $13 $12
	inc  bc                                          ; $41bb: $03
	add  d                                           ; $41bc: $82
	nop                                              ; $41bd: $00
	ld   [bc], a                                     ; $41be: $02
	rlca                                             ; $41bf: $07
	halt                                             ; $41c0: $76
	ld   bc, $0302                                   ; $41c1: $01 $02 $03
	ld   bc, $2000                                   ; $41c4: $01 $00 $20
	nop                                              ; $41c7: $00
	rlca                                             ; $41c8: $07
	sub  b                                           ; $41c9: $90
	ld   bc, $0302                                   ; $41ca: $01 $02 $03
	ld   bc, $2001                                   ; $41cd: $01 $01 $20
	nop                                              ; $41d0: $00
	rlca                                             ; $41d1: $07
	and  d                                           ; $41d2: $a2
	ld   bc, $0302                                   ; $41d3: $01 $02 $03
	ld   bc, $2002                                   ; $41d6: $01 $02 $20
	nop                                              ; $41d9: $00
	ld   b, $b4                                      ; $41da: $06 $b4
	ld   bc, $000f                                   ; $41dc: $01 $0f $00
	ld   bc, $1301                                   ; $41df: $01 $01 $13
	ld   de, $8203                                   ; $41e2: $11 $03 $82
	ld   [hl], l                                     ; $41e5: $75
	ld   h, a                                        ; $41e6: $67
	sbc  a                                           ; $41e7: $9f
	dec  c                                           ; $41e8: $0d
	nop                                              ; $41e9: $00
	ld   a, [bc]                                     ; $41ea: $0a
	dec  b                                           ; $41eb: $05
	ld   b, b                                        ; $41ec: $40
	rst  $38                                         ; $41ed: $ff
	inc  bc                                          ; $41ee: $03
	rst  $38                                         ; $41ef: $ff
	ld   bc, $2801                                   ; $41f0: $01 $01 $28
	nop                                              ; $41f3: $00
	ld   b, $e4                                      ; $41f4: $06 $e4
	ld   bc, $000f                                   ; $41f6: $01 $0f $00
	ld   bc, $1201                                   ; $41f9: $01 $01 $12
	add  hl, de                                      ; $41fc: $19
	inc  bc                                          ; $41fd: $03
	add  d                                           ; $41fe: $82
	ld   e, c                                        ; $41ff: $59
	ld   a, b                                        ; $4200: $78
	rst  $38                                         ; $4201: $ff
	rst  $38                                         ; $4202: $ff
	dec  c                                           ; $4203: $0d
	nop                                              ; $4204: $00
	ld   a, [bc]                                     ; $4205: $0a
	ld   b, $e4                                      ; $4206: $06 $e4
	ld   bc, $000f                                   ; $4208: $01 $0f $00
	ld   bc, $1301                                   ; $420b: $01 $01 $13
	ld   [de], a                                     ; $420e: $12
	inc  bc                                          ; $420f: $03
	add  d                                           ; $4210: $82
	ld   e, c                                        ; $4211: $59
	ld   a, b                                        ; $4212: $78
	rst  $38                                         ; $4213: $ff
	rst  $38                                         ; $4214: $ff
	dec  c                                           ; $4215: $0d
	nop                                              ; $4216: $00
	ld   a, [bc]                                     ; $4217: $0a
	ld   b, $e4                                      ; $4218: $06 $e4
	ld   bc, $0c1c                                   ; $421a: $01 $1c $0c
	nop                                              ; $421d: $00
	nop                                              ; $421e: $00
	ld   bc, $5477                                   ; $421f: $01 $77 $54
	ld   h, l                                        ; $4222: $65
	adc  h                                           ; $4223: $8c
	ld   h, l                                        ; $4224: $65
	ld   l, l                                        ; $4225: $6d
	ld   sp, hl                                      ; $4226: $f9
	db   $10                                         ; $4227: $10
	dec  c                                           ; $4228: $0d
	ld   [bc], a                                     ; $4229: $02
	ccf                                              ; $422a: $3f
	inc  bc                                          ; $422b: $03
	rla                                              ; $422c: $17
	ld   [hl], l                                     ; $422d: $75
	ld   e, e                                        ; $422e: $5b
	adc  h                                           ; $422f: $8c
	ld   l, c                                        ; $4230: $69
	and  c                                           ; $4231: $a1
	ld   e, c                                        ; $4232: $59
	ld   sp, hl                                      ; $4233: $f9
	dec  c                                           ; $4234: $0d
	ld   h, [hl]                                     ; $4235: $66
	sub  c                                           ; $4236: $91
	sbc  [hl]                                        ; $4237: $9e
	sub  b                                           ; $4238: $90
	ld   d, h                                        ; $4239: $54
	ld   [bc], a                                     ; $423a: $02
	jr   nz, jr_050_423f                             ; $423b: $20 $02

	sub  e                                           ; $423d: $93
	ld   [bc], a                                     ; $423e: $02

jr_050_423f:
	sbc  l                                           ; $423f: $9d
	ld   d, d                                        ; $4240: $52
	adc  h                                           ; $4241: $8c
	ld   h, a                                        ; $4242: $67
	ld   a, e                                        ; $4243: $7b
	sbc  a                                           ; $4244: $9f
	dec  c                                           ; $4245: $0d
	nop                                              ; $4246: $00
	ld   a, [bc]                                     ; $4247: $0a
	ld   b, $1b                                      ; $4248: $06 $1b
	ld   bc, $0c1c                                   ; $424a: $01 $1c $0c
	ld   bc, $0101                                   ; $424d: $01 $01 $01
	ld   h, [hl]                                     ; $4250: $66
	sub  c                                           ; $4251: $91
	sbc  [hl]                                        ; $4252: $9e
	inc  bc                                          ; $4253: $03
	ld   l, b                                        ; $4254: $68
	ld   d, d                                        ; $4255: $52
	ld   e, e                                        ; $4256: $5b
	adc  h                                           ; $4257: $8c
	ld   h, a                                        ; $4258: $67
	sub  [hl]                                        ; $4259: $96
	sbc  a                                           ; $425a: $9f
	dec  c                                           ; $425b: $0d
	inc  b                                           ; $425c: $04
	ld   c, $03                                      ; $425d: $0e $03
	add  d                                           ; $425f: $82
	inc  bc                                          ; $4260: $03
	ld   l, [hl]                                     ; $4261: $6e
	ld   [bc], a                                     ; $4262: $02
	db   $fc                                         ; $4263: $fc
	ld   [de], a                                     ; $4264: $12
	ld   de, $8203                                   ; $4265: $11 $03 $82
	sbc  [hl]                                        ; $4268: $9e
	inc  bc                                          ; $4269: $03
	ld   l, [hl]                                     ; $426a: $6e
	ld   a, h                                        ; $426b: $7c
	inc  bc                                          ; $426c: $03
	add  [hl]                                        ; $426d: $86
	ld   [de], a                                     ; $426e: $12
	dec  d                                           ; $426f: $15
	inc  bc                                          ; $4270: $03
	add  d                                           ; $4271: $82
	dec  c                                           ; $4272: $0d
	ld   e, b                                        ; $4273: $58
	ld   a, [hl]                                     ; $4274: $7e
	ld   d, b                                        ; $4275: $50
	ld   h, e                                        ; $4276: $63
	and  c                                           ; $4277: $a1
	inc  de                                          ; $4278: $13
	inc  de                                          ; $4279: $13
	inc  bc                                          ; $427a: $03
	add  d                                           ; $427b: $82
	ld   a, h                                        ; $427c: $7c
	ld   [bc], a                                     ; $427d: $02
	ld   a, e                                        ; $427e: $7b
	ld   [bc], a                                     ; $427f: $02
	ccf                                              ; $4280: $3f
	ld   a, l                                        ; $4281: $7d
	sbc  a                                           ; $4282: $9f
	dec  c                                           ; $4283: $0d
	nop                                              ; $4284: $00
	ld   a, [bc]                                     ; $4285: $0a
	add  hl, de                                      ; $4286: $19
	dec  b                                           ; $4287: $05
	inc  bc                                          ; $4288: $03
	dec  d                                           ; $4289: $15
	rla                                              ; $428a: $17
	inc  bc                                          ; $428b: $03
	add  d                                           ; $428c: $82
	nop                                              ; $428d: $00
	nop                                              ; $428e: $00
	inc  d                                           ; $428f: $14
	rla                                              ; $4290: $17
	inc  bc                                          ; $4291: $03
	add  d                                           ; $4292: $82
	nop                                              ; $4293: $00
	ld   bc, $1515                                   ; $4294: $01 $15 $15
	inc  bc                                          ; $4297: $03
	add  d                                           ; $4298: $82
	nop                                              ; $4299: $00
	ld   [bc], a                                     ; $429a: $02
	rlca                                             ; $429b: $07
	ld   d, d                                        ; $429c: $52
	ld   [bc], a                                     ; $429d: $02
	ld   [bc], a                                     ; $429e: $02
	inc  bc                                          ; $429f: $03
	ld   bc, $2000                                   ; $42a0: $01 $00 $20
	nop                                              ; $42a3: $00
	rlca                                             ; $42a4: $07
	ld   l, h                                        ; $42a5: $6c
	ld   [bc], a                                     ; $42a6: $02
	ld   [bc], a                                     ; $42a7: $02
	inc  bc                                          ; $42a8: $03
	ld   bc, $2001                                   ; $42a9: $01 $01 $20
	nop                                              ; $42ac: $00
	rlca                                             ; $42ad: $07
	ld   a, [hl]                                     ; $42ae: $7e
	ld   [bc], a                                     ; $42af: $02
	ld   [bc], a                                     ; $42b0: $02
	inc  bc                                          ; $42b1: $03
	ld   bc, $2002                                   ; $42b2: $01 $02 $20
	nop                                              ; $42b5: $00
	ld   b, $90                                      ; $42b6: $06 $90
	ld   [bc], a                                     ; $42b8: $02
	rrca                                             ; $42b9: $0f
	nop                                              ; $42ba: $00
	ld   bc, $1501                                   ; $42bb: $01 $01 $15
	rla                                              ; $42be: $17
	inc  bc                                          ; $42bf: $03
	add  d                                           ; $42c0: $82
	ld   [hl], l                                     ; $42c1: $75
	ld   h, a                                        ; $42c2: $67
	sbc  a                                           ; $42c3: $9f
	dec  c                                           ; $42c4: $0d
	nop                                              ; $42c5: $00
	ld   a, [bc]                                     ; $42c6: $0a
	dec  b                                           ; $42c7: $05
	ld   b, b                                        ; $42c8: $40
	rst  $38                                         ; $42c9: $ff
	inc  bc                                          ; $42ca: $03
	rst  $38                                         ; $42cb: $ff
	ld   bc, $2801                                   ; $42cc: $01 $01 $28
	nop                                              ; $42cf: $00
	ld   b, $bf                                      ; $42d0: $06 $bf
	ld   [bc], a                                     ; $42d2: $02
	rrca                                             ; $42d3: $0f
	nop                                              ; $42d4: $00
	ld   bc, $1401                                   ; $42d5: $01 $01 $14
	rla                                              ; $42d8: $17
	inc  bc                                          ; $42d9: $03
	add  d                                           ; $42da: $82
	ld   e, c                                        ; $42db: $59
	ld   a, b                                        ; $42dc: $78
	rst  $38                                         ; $42dd: $ff
	rst  $38                                         ; $42de: $ff
	dec  c                                           ; $42df: $0d
	nop                                              ; $42e0: $00
	ld   a, [bc]                                     ; $42e1: $0a
	ld   b, $bf                                      ; $42e2: $06 $bf
	ld   [bc], a                                     ; $42e4: $02
	rrca                                             ; $42e5: $0f
	nop                                              ; $42e6: $00
	ld   bc, $1501                                   ; $42e7: $01 $01 $15
	dec  d                                           ; $42ea: $15
	inc  bc                                          ; $42eb: $03
	add  d                                           ; $42ec: $82
	ld   e, c                                        ; $42ed: $59
	ld   a, b                                        ; $42ee: $78
	rst  $38                                         ; $42ef: $ff
	rst  $38                                         ; $42f0: $ff
	dec  c                                           ; $42f1: $0d
	nop                                              ; $42f2: $00
	ld   a, [bc]                                     ; $42f3: $0a
	ld   b, $bf                                      ; $42f4: $06 $bf
	ld   [bc], a                                     ; $42f6: $02
	inc  e                                           ; $42f7: $1c
	inc  c                                           ; $42f8: $0c
	nop                                              ; $42f9: $00
	nop                                              ; $42fa: $00
	ld   bc, $5477                                   ; $42fb: $01 $77 $54
	ld   h, l                                        ; $42fe: $65
	adc  h                                           ; $42ff: $8c
	ld   h, l                                        ; $4300: $65
	ld   l, l                                        ; $4301: $6d
	ld   sp, hl                                      ; $4302: $f9
	dec  c                                           ; $4303: $0d
	ld   [bc], a                                     ; $4304: $02
	ccf                                              ; $4305: $3f
	inc  bc                                          ; $4306: $03
	rla                                              ; $4307: $17
	ld   [hl], l                                     ; $4308: $75
	ld   e, e                                        ; $4309: $5b
	adc  h                                           ; $430a: $8c
	ld   l, c                                        ; $430b: $69
	and  c                                           ; $430c: $a1
	ld   e, c                                        ; $430d: $59
	ld   sp, hl                                      ; $430e: $f9
	dec  c                                           ; $430f: $0d
	ld   h, [hl]                                     ; $4310: $66
	sub  c                                           ; $4311: $91
	sbc  [hl]                                        ; $4312: $9e
	sub  b                                           ; $4313: $90
	ld   d, h                                        ; $4314: $54
	ld   [bc], a                                     ; $4315: $02
	jr   nz, jr_050_431a                             ; $4316: $20 $02

	sub  e                                           ; $4318: $93
	ld   [bc], a                                     ; $4319: $02

jr_050_431a:
	sbc  l                                           ; $431a: $9d
	ld   d, d                                        ; $431b: $52
	adc  h                                           ; $431c: $8c
	ld   h, a                                        ; $431d: $67
	ld   a, e                                        ; $431e: $7b
	sbc  a                                           ; $431f: $9f
	dec  c                                           ; $4320: $0d
	nop                                              ; $4321: $00
	ld   a, [bc]                                     ; $4322: $0a
	ld   b, $e4                                      ; $4323: $06 $e4
	ld   bc, $0c1c                                   ; $4325: $01 $1c $0c
	ld   bc, $0101                                   ; $4328: $01 $01 $01
	ld   h, [hl]                                     ; $432b: $66
	sub  c                                           ; $432c: $91
	sbc  [hl]                                        ; $432d: $9e
	inc  bc                                          ; $432e: $03
	ld   l, c                                        ; $432f: $69
	ld   [bc], a                                     ; $4330: $02
	xor  d                                           ; $4331: $aa
	ld   [hl], l                                     ; $4332: $75
	ld   h, a                                        ; $4333: $67
	sub  [hl]                                        ; $4334: $96
	sbc  a                                           ; $4335: $9f
	dec  c                                           ; $4336: $0d
	inc  b                                           ; $4337: $04
	ld   c, $03                                      ; $4338: $0e $03
	add  d                                           ; $433a: $82
	ld   [bc], a                                     ; $433b: $02
	dec  d                                           ; $433c: $15
	ld   [bc], a                                     ; $433d: $02
	db   $fc                                         ; $433e: $fc
	ld   [de], a                                     ; $433f: $12
	ld   de, $8203                                   ; $4340: $11 $03 $82
	sbc  [hl]                                        ; $4343: $9e
	ld   [bc], a                                     ; $4344: $02
	dec  d                                           ; $4345: $15
	ld   a, h                                        ; $4346: $7c
	inc  bc                                          ; $4347: $03
	add  [hl]                                        ; $4348: $86
	inc  de                                          ; $4349: $13
	ld   d, $03                                      ; $434a: $16 $03
	add  d                                           ; $434c: $82
	dec  c                                           ; $434d: $0d
	ld   e, b                                        ; $434e: $58
	ld   h, [hl]                                     ; $434f: $66
	ld   d, d                                        ; $4350: $52
	ld   h, e                                        ; $4351: $63
	and  c                                           ; $4352: $a1
	inc  d                                           ; $4353: $14
	ld   d, $03                                      ; $4354: $16 $03
	add  d                                           ; $4356: $82
	halt                                             ; $4357: $76
	rst  $38                                         ; $4358: $ff
	rst  $38                                         ; $4359: $ff
	dec  c                                           ; $435a: $0d
	nop                                              ; $435b: $00
	ld   a, [bc]                                     ; $435c: $0a
	ld   bc, $0e04                                   ; $435d: $01 $04 $0e
	inc  bc                                          ; $4360: $03
	add  d                                           ; $4361: $82
	inc  bc                                          ; $4362: $03
	ld   l, [hl]                                     ; $4363: $6e
	ld   [bc], a                                     ; $4364: $02
	db   $fc                                         ; $4365: $fc
	ld   [de], a                                     ; $4366: $12
	ld   d, $03                                      ; $4367: $16 $03
	add  d                                           ; $4369: $82
	sbc  [hl]                                        ; $436a: $9e
	inc  bc                                          ; $436b: $03
	ld   l, [hl]                                     ; $436c: $6e
	ld   a, h                                        ; $436d: $7c
	inc  bc                                          ; $436e: $03
	add  [hl]                                        ; $436f: $86
	inc  de                                          ; $4370: $13
	ld   de, $8203                                   ; $4371: $11 $03 $82
	dec  c                                           ; $4374: $0d
	ld   e, b                                        ; $4375: $58
	ld   a, [hl]                                     ; $4376: $7e
	ld   d, b                                        ; $4377: $50
	ld   h, e                                        ; $4378: $63
	and  c                                           ; $4379: $a1
	inc  d                                           ; $437a: $14
	ld   d, $03                                      ; $437b: $16 $03
	add  d                                           ; $437d: $82
	ld   a, h                                        ; $437e: $7c
	ld   [bc], a                                     ; $437f: $02
	ld   a, e                                        ; $4380: $7b
	ld   [bc], a                                     ; $4381: $02
	ccf                                              ; $4382: $3f
	ld   a, l                                        ; $4383: $7d
	sbc  a                                           ; $4384: $9f
	dec  c                                           ; $4385: $0d
	nop                                              ; $4386: $00
	ld   a, [bc]                                     ; $4387: $0a
	add  hl, de                                      ; $4388: $19
	dec  b                                           ; $4389: $05
	inc  bc                                          ; $438a: $03
	ld   [de], a                                     ; $438b: $12
	dec  d                                           ; $438c: $15
	ld   de, $8203                                   ; $438d: $11 $03 $82
	nop                                              ; $4390: $00
	nop                                              ; $4391: $00
	ld   [de], a                                     ; $4392: $12
	inc  d                                           ; $4393: $14
	ld   de, $8203                                   ; $4394: $11 $03 $82
	nop                                              ; $4397: $00
	ld   bc, $1612                                   ; $4398: $01 $12 $16
	ld   de, $8203                                   ; $439b: $11 $03 $82
	nop                                              ; $439e: $00
	ld   [bc], a                                     ; $439f: $02
	rlca                                             ; $43a0: $07
	ld   d, a                                        ; $43a1: $57
	inc  bc                                          ; $43a2: $03
	ld   [bc], a                                     ; $43a3: $02
	inc  bc                                          ; $43a4: $03
	ld   bc, $2000                                   ; $43a5: $01 $00 $20
	nop                                              ; $43a8: $00
	rlca                                             ; $43a9: $07
	ld   [hl], d                                     ; $43aa: $72
	inc  bc                                          ; $43ab: $03
	ld   [bc], a                                     ; $43ac: $02
	inc  bc                                          ; $43ad: $03
	ld   bc, $2001                                   ; $43ae: $01 $01 $20
	nop                                              ; $43b1: $00
	rlca                                             ; $43b2: $07
	add  l                                           ; $43b3: $85
	inc  bc                                          ; $43b4: $03
	ld   [bc], a                                     ; $43b5: $02
	inc  bc                                          ; $43b6: $03
	ld   bc, $2002                                   ; $43b7: $01 $02 $20
	nop                                              ; $43ba: $00
	ld   b, $98                                      ; $43bb: $06 $98
	inc  bc                                          ; $43bd: $03
	rrca                                             ; $43be: $0f
	nop                                              ; $43bf: $00
	ld   bc, $1201                                   ; $43c0: $01 $01 $12
	dec  d                                           ; $43c3: $15
	ld   de, $8203                                   ; $43c4: $11 $03 $82
	ld   [hl], l                                     ; $43c7: $75
	ld   h, a                                        ; $43c8: $67
	sbc  a                                           ; $43c9: $9f
	dec  c                                           ; $43ca: $0d
	nop                                              ; $43cb: $00
	ld   a, [bc]                                     ; $43cc: $0a
	dec  b                                           ; $43cd: $05
	ld   b, b                                        ; $43ce: $40
	rst  $38                                         ; $43cf: $ff
	inc  bc                                          ; $43d0: $03
	rst  $38                                         ; $43d1: $ff
	ld   bc, $2801                                   ; $43d2: $01 $01 $28
	nop                                              ; $43d5: $00
	ld   b, $c6                                      ; $43d6: $06 $c6
	inc  bc                                          ; $43d8: $03
	rrca                                             ; $43d9: $0f
	nop                                              ; $43da: $00
	ld   bc, $1201                                   ; $43db: $01 $01 $12
	inc  d                                           ; $43de: $14
	ld   de, $8203                                   ; $43df: $11 $03 $82
	ld   e, c                                        ; $43e2: $59
	ld   a, b                                        ; $43e3: $78
	rst  $38                                         ; $43e4: $ff
	rst  $38                                         ; $43e5: $ff
	dec  c                                           ; $43e6: $0d
	nop                                              ; $43e7: $00
	ld   a, [bc]                                     ; $43e8: $0a
	ld   b, $c6                                      ; $43e9: $06 $c6
	inc  bc                                          ; $43eb: $03
	rrca                                             ; $43ec: $0f
	nop                                              ; $43ed: $00
	ld   bc, $1201                                   ; $43ee: $01 $01 $12
	ld   d, $11                                      ; $43f1: $16 $11
	inc  bc                                          ; $43f3: $03
	add  d                                           ; $43f4: $82
	ld   e, c                                        ; $43f5: $59
	ld   a, b                                        ; $43f6: $78
	rst  $38                                         ; $43f7: $ff
	rst  $38                                         ; $43f8: $ff
	dec  c                                           ; $43f9: $0d
	nop                                              ; $43fa: $00
	ld   a, [bc]                                     ; $43fb: $0a
	ld   b, $c6                                      ; $43fc: $06 $c6
	inc  bc                                          ; $43fe: $03
	inc  e                                           ; $43ff: $1c
	inc  c                                           ; $4400: $0c
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	ld   bc, $5477                                   ; $4403: $01 $77 $54
	ld   h, l                                        ; $4406: $65
	adc  h                                           ; $4407: $8c
	ld   h, l                                        ; $4408: $65
	ld   l, l                                        ; $4409: $6d
	ld   sp, hl                                      ; $440a: $f9
	dec  c                                           ; $440b: $0d
	ld   [bc], a                                     ; $440c: $02
	ccf                                              ; $440d: $3f
	inc  bc                                          ; $440e: $03
	rla                                              ; $440f: $17
	ld   [hl], l                                     ; $4410: $75
	ld   e, e                                        ; $4411: $5b
	adc  h                                           ; $4412: $8c
	ld   l, c                                        ; $4413: $69
	and  c                                           ; $4414: $a1
	ld   e, c                                        ; $4415: $59
	ld   sp, hl                                      ; $4416: $f9
	dec  c                                           ; $4417: $0d
	ld   h, [hl]                                     ; $4418: $66
	sub  c                                           ; $4419: $91
	sbc  [hl]                                        ; $441a: $9e
	sub  b                                           ; $441b: $90
	ld   d, h                                        ; $441c: $54
	ld   [bc], a                                     ; $441d: $02
	jr   nz, jr_050_4422                             ; $441e: $20 $02

	sub  e                                           ; $4420: $93
	ld   d, d                                        ; $4421: $52

jr_050_4422:
	ld   d, d                                        ; $4422: $52
	adc  h                                           ; $4423: $8c
	ld   h, a                                        ; $4424: $67
	ld   a, e                                        ; $4425: $7b
	sbc  a                                           ; $4426: $9f
	dec  c                                           ; $4427: $0d
	nop                                              ; $4428: $00
	ld   a, [bc]                                     ; $4429: $0a
	ld   b, $bf                                      ; $442a: $06 $bf
	ld   [bc], a                                     ; $442c: $02
	inc  e                                           ; $442d: $1c
	inc  c                                           ; $442e: $0c
	ld   bc, $0101                                   ; $442f: $01 $01 $01
	ld   h, d                                        ; $4432: $62
	ld   [bc], a                                     ; $4433: $02
	sub  h                                           ; $4434: $94
	dec  b                                           ; $4435: $05
	rrca                                             ; $4436: $0f
	ld   h, e                                        ; $4437: $63
	adc  h                                           ; $4438: $8c
	ld   [hl], l                                     ; $4439: $75
	ld   h, l                                        ; $443a: $65
	ld   l, l                                        ; $443b: $6d
	sbc  a                                           ; $443c: $9f
	dec  c                                           ; $443d: $0d
	ld   l, e                                        ; $443e: $6b
	sbc  d                                           ; $443f: $9a
	ld   h, [hl]                                     ; $4440: $66
	sub  c                                           ; $4441: $91
	sbc  [hl]                                        ; $4442: $9e
	ld   [bc], a                                     ; $4443: $02
	sbc  a                                           ; $4444: $9f
	inc  b                                           ; $4445: $04
	dec  sp                                          ; $4446: $3b
	ld   h, l                                        ; $4447: $65
	adc  h                                           ; $4448: $8c
	ld   h, a                                        ; $4449: $67
	ld   a, e                                        ; $444a: $7b
	sbc  a                                           ; $444b: $9f
	dec  c                                           ; $444c: $0d
	nop                                              ; $444d: $00
	ld   a, [bc]                                     ; $444e: $0a
	inc  e                                           ; $444f: $1c
	inc  c                                           ; $4450: $0c
	nop                                              ; $4451: $00
	nop                                              ; $4452: $00
	ld   bc, $7c61                                   ; $4453: $01 $61 $7c
	inc  bc                                          ; $4456: $03
	ld   h, d                                        ; $4457: $62
	ld   [bc], a                                     ; $4458: $02
	ccf                                              ; $4459: $3f
	ld   a, l                                        ; $445a: $7d
	sbc  [hl]                                        ; $445b: $9e
	ld   [bc], a                                     ; $445c: $02
	xor  c                                           ; $445d: $a9
	ld   [bc], a                                     ; $445e: $02
	inc  d                                           ; $445f: $14
	ld   d, d                                        ; $4460: $52
	ld   e, d                                        ; $4461: $5a
	ld   d, b                                        ; $4462: $50
	sbc  c                                           ; $4463: $99
	halt                                             ; $4464: $76
	dec  c                                           ; $4465: $0d
	ld   d, d                                        ; $4466: $52
	ld   e, a                                        ; $4467: $5f
	ld   a, b                                        ; $4468: $78
	ld   d, d                                        ; $4469: $52
	ld   a, h                                        ; $446a: $7c
	ld   [hl], l                                     ; $446b: $75
	sbc  [hl]                                        ; $446c: $9e
	ld   b, $09                                      ; $446d: $06 $09
	inc  bc                                          ; $446f: $03
	add  d                                           ; $4470: $82
	ld   [hl], l                                     ; $4471: $75
	dec  c                                           ; $4472: $0d
	ld   [bc], a                                     ; $4473: $02
	ccf                                              ; $4474: $3f
	inc  bc                                          ; $4475: $03
	rla                                              ; $4476: $17
	and  b                                           ; $4477: $a0
	ld   h, l                                        ; $4478: $65
	ld   [hl], h                                     ; $4479: $74
	sbc  c                                           ; $447a: $99
	and  c                                           ; $447b: $a1
	ld   [hl], l                                     ; $447c: $75
	ld   h, a                                        ; $447d: $67
	sub  [hl]                                        ; $447e: $96
	sbc  a                                           ; $447f: $9f
	dec  c                                           ; $4480: $0d
	nop                                              ; $4481: $00
	ld   a, [bc]                                     ; $4482: $0a
	dec  c                                           ; $4483: $0d
	nop                                              ; $4484: $00
	nop                                              ; $4485: $00
	rrca                                             ; $4486: $0f
	nop                                              ; $4487: $00
	ld   bc, $0b0c                                   ; $4488: $01 $0c $0b
	rlca                                             ; $448b: $07
	ccf                                              ; $448c: $3f
	inc  b                                           ; $448d: $04
	inc  bc                                          ; $448e: $03
	rst  $38                                         ; $448f: $ff
	ld   bc, $2003                                   ; $4490: $01 $03 $20
	nop                                              ; $4493: $00
	rlca                                             ; $4494: $07
	sub  c                                           ; $4495: $91
	inc  b                                           ; $4496: $04
	inc  bc                                          ; $4497: $03
	rst  $38                                         ; $4498: $ff
	ld   bc, $2002                                   ; $4499: $01 $02 $20
	nop                                              ; $449c: $00
	rlca                                             ; $449d: $07
	db   $eb                                         ; $449e: $eb
	inc  b                                           ; $449f: $04
	inc  bc                                          ; $44a0: $03
	rst  $38                                         ; $44a1: $ff
	ld   bc, $2301                                   ; $44a2: $01 $01 $23
	nop                                              ; $44a5: $00
	inc  e                                           ; $44a6: $1c
	inc  c                                           ; $44a7: $0c
	ld   bc, $0101                                   ; $44a8: $01 $01 $01
	ld   h, e                                        ; $44ab: $63
	ld   h, a                                        ; $44ac: $67
	ld   e, d                                        ; $44ad: $5a
	ld   a, l                                        ; $44ae: $7d
	sbc  [hl]                                        ; $44af: $9e
	ld   [$6300], sp                                 ; $44b0: $08 $00 $63
	and  c                                           ; $44b3: $a1
	sbc  a                                           ; $44b4: $9f
	dec  c                                           ; $44b5: $0d
	inc  bc                                          ; $44b6: $03
	ld   d, a                                        ; $44b7: $57
	inc  b                                           ; $44b8: $04
	sub  l                                           ; $44b9: $95
	ld   d, b                                        ; $44ba: $50
	ld   [hl], c                                     ; $44bb: $71
	ld   [hl], h                                     ; $44bc: $74
	adc  h                                           ; $44bd: $8c
	ld   h, a                                        ; $44be: $67
	sub  [hl]                                        ; $44bf: $96
	sbc  a                                           ; $44c0: $9f
	dec  c                                           ; $44c1: $0d
	nop                                              ; $44c2: $00
	ld   a, [bc]                                     ; $44c3: $0a
	ld   bc, $6d8c                                   ; $44c4: $01 $8c $6d
	ld   [bc], a                                     ; $44c7: $02
	and  l                                           ; $44c8: $a5
	inc  b                                           ; $44c9: $04
	add  hl, hl                                      ; $44ca: $29
	sbc  [hl]                                        ; $44cb: $9e
	ld   a, b                                        ; $44cc: $78
	ld   a, c                                        ; $44cd: $79
	ld   e, c                                        ; $44ce: $59
	ld   d, b                                        ; $44cf: $50
	ld   [hl], c                                     ; $44d0: $71
	ld   l, l                                        ; $44d1: $6d
	sub  a                                           ; $44d2: $97
	dec  c                                           ; $44d3: $0d
	ld   e, b                                        ; $44d4: $58
	inc  bc                                          ; $44d5: $03
	ld   l, e                                        ; $44d6: $6b
	inc  b                                           ; $44d7: $04
	ld   [de], a                                     ; $44d8: $12
	ld   d, d                                        ; $44d9: $52
	ld   e, b                                        ; $44da: $58
	ld   [bc], a                                     ; $44db: $02
	add  b                                           ; $44dc: $80
	ld   d, d                                        ; $44dd: $52
	ld   h, l                                        ; $44de: $65
	adc  h                                           ; $44df: $8c
	ld   h, a                                        ; $44e0: $67
	ld   a, e                                        ; $44e1: $7b
	sbc  a                                           ; $44e2: $9f
	dec  c                                           ; $44e3: $0d
	ld   e, b                                        ; $44e4: $58
	inc  b                                           ; $44e5: $04
	ld   a, e                                        ; $44e6: $7b
	sbc  d                                           ; $44e7: $9a
	ld   h, e                                        ; $44e8: $63
	adc  h                                           ; $44e9: $8c
	ld   [hl], l                                     ; $44ea: $75
	ld   h, l                                        ; $44eb: $65
	ld   l, l                                        ; $44ec: $6d
	sbc  a                                           ; $44ed: $9f
	dec  c                                           ; $44ee: $0d
	nop                                              ; $44ef: $00
	ld   a, [bc]                                     ; $44f0: $0a
	dec  b                                           ; $44f1: $05
	add  b                                           ; $44f2: $80
	and  a                                           ; $44f3: $a7
	ld   bc, $0001                                   ; $44f4: $01 $01 $00
	nop                                              ; $44f7: $00
	inc  e                                           ; $44f8: $1c
	inc  c                                           ; $44f9: $0c
	nop                                              ; $44fa: $00
	nop                                              ; $44fb: $00
	ld   bc, $9750                                   ; $44fc: $01 $50 $97
	sbc  [hl]                                        ; $44ff: $9e
	ld   h, h                                        ; $4500: $64
	and  c                                           ; $4501: $a1
	ld   a, e                                        ; $4502: $7b
	and  c                                           ; $4503: $a1
	rst  $38                                         ; $4504: $ff
	rst  $38                                         ; $4505: $ff
	dec  c                                           ; $4506: $0d
	add  b                                           ; $4507: $80
	halt                                             ; $4508: $76
	ld   [hl], d                                     ; $4509: $72
	sbc  [hl]                                        ; $450a: $9e
	adc  h                                           ; $450b: $8c
	ld   l, a                                        ; $450c: $6f
	ld   e, d                                        ; $450d: $5a
	ld   [hl], c                                     ; $450e: $71
	ld   [hl], h                                     ; $450f: $74
	dec  c                                           ; $4510: $0d
	ld   d, d                                        ; $4511: $52
	adc  h                                           ; $4512: $8c
	ld   h, l                                        ; $4513: $65
	ld   l, l                                        ; $4514: $6d
	sub  [hl]                                        ; $4515: $96
	sbc  a                                           ; $4516: $9f
	dec  c                                           ; $4517: $0d
	nop                                              ; $4518: $00
	ld   a, [bc]                                     ; $4519: $0a
	inc  e                                           ; $451a: $1c
	inc  c                                           ; $451b: $0c
	nop                                              ; $451c: $00
	nop                                              ; $451d: $00
	ld   bc, $6d8c                                   ; $451e: $01 $8c $6d
	ld   [bc], a                                     ; $4521: $02
	and  l                                           ; $4522: $a5
	inc  b                                           ; $4523: $04
	add  hl, hl                                      ; $4524: $29
	sbc  [hl]                                        ; $4525: $9e
	ld   a, b                                        ; $4526: $78
	ld   a, c                                        ; $4527: $79
	ld   e, c                                        ; $4528: $59
	ld   d, b                                        ; $4529: $50
	ld   [hl], c                                     ; $452a: $71
	ld   l, l                                        ; $452b: $6d
	sub  a                                           ; $452c: $97
	dec  c                                           ; $452d: $0d
	ld   e, b                                        ; $452e: $58
	inc  bc                                          ; $452f: $03
	ld   l, e                                        ; $4530: $6b
	inc  b                                           ; $4531: $04
	ld   [de], a                                     ; $4532: $12
	ld   d, d                                        ; $4533: $52
	ld   e, b                                        ; $4534: $58
	ld   [bc], a                                     ; $4535: $02
	add  b                                           ; $4536: $80
	ld   d, d                                        ; $4537: $52
	ld   h, l                                        ; $4538: $65
	adc  h                                           ; $4539: $8c
	ld   h, a                                        ; $453a: $67
	ld   a, e                                        ; $453b: $7b
	sbc  a                                           ; $453c: $9f
	dec  c                                           ; $453d: $0d
	ld   e, b                                        ; $453e: $58
	inc  b                                           ; $453f: $04
	ld   a, e                                        ; $4540: $7b
	sbc  d                                           ; $4541: $9a
	ld   h, e                                        ; $4542: $63
	adc  h                                           ; $4543: $8c
	ld   [hl], l                                     ; $4544: $75
	ld   h, l                                        ; $4545: $65
	ld   l, l                                        ; $4546: $6d
	sbc  a                                           ; $4547: $9f
	dec  c                                           ; $4548: $0d
	nop                                              ; $4549: $00
	ld   a, [bc]                                     ; $454a: $0a
	dec  b                                           ; $454b: $05
	add  b                                           ; $454c: $80
	and  a                                           ; $454d: $a7
	ld   bc, $0001                                   ; $454e: $01 $01 $00
	nop                                              ; $4551: $00
	inc  e                                           ; $4552: $1c
	inc  c                                           ; $4553: $0c
	inc  bc                                          ; $4554: $03
	inc  bc                                          ; $4555: $03
	ld   bc, $9750                                   ; $4556: $01 $50 $97
	sbc  [hl]                                        ; $4559: $9e
	adc  h                                           ; $455a: $8c
	ld   l, a                                        ; $455b: $6f
	ld   e, d                                        ; $455c: $5a
	ld   d, d                                        ; $455d: $52
	ld   l, [hl]                                     ; $455e: $6e
	sub  a                                           ; $455f: $97
	ld   e, a                                        ; $4560: $5f
	ld   [hl], l                                     ; $4561: $75
	ld   h, a                                        ; $4562: $67
	ld   a, e                                        ; $4563: $7b
	sbc  a                                           ; $4564: $9f
	dec  c                                           ; $4565: $0d
	sub  b                                           ; $4566: $90
	ld   d, h                                        ; $4567: $54
	ld   [bc], a                                     ; $4568: $02
	jr   nz, jr_050_456f                             ; $4569: $20 $04

	add  hl, hl                                      ; $456b: $29
	sbc  [hl]                                        ; $456c: $9e
	ld   [bc], a                                     ; $456d: $02
	ccf                                              ; $456e: $3f

jr_050_456f:
	inc  bc                                          ; $456f: $03
	rla                                              ; $4570: $17
	ld   a, h                                        ; $4571: $7c
	sub  d                                           ; $4572: $92
	sbc  b                                           ; $4573: $98
	inc  bc                                          ; $4574: $03
	jp   c, $0d65                                    ; $4575: $da $65 $0d

	ld   [hl], l                                     ; $4578: $75
	ld   h, a                                        ; $4579: $67
	ld   a, e                                        ; $457a: $7b
	sbc  a                                           ; $457b: $9f
	dec  c                                           ; $457c: $0d
	nop                                              ; $457d: $00
	ld   a, [bc]                                     ; $457e: $0a
	ld   bc, $9e50                                   ; $457f: $01 $50 $9e
	ld   [$6300], sp                                 ; $4582: $08 $00 $63
	and  c                                           ; $4585: $a1
	sbc  a                                           ; $4586: $9f
	dec  c                                           ; $4587: $0d
	sub  b                                           ; $4588: $90
	ld   d, h                                        ; $4589: $54
	ld   d, d                                        ; $458a: $52
	ld   d, d                                        ; $458b: $52
	ld   [hl], l                                     ; $458c: $75
	ld   h, a                                        ; $458d: $67
	sub  [hl]                                        ; $458e: $96
	sbc  a                                           ; $458f: $9f
	dec  c                                           ; $4590: $0d
	ld   h, d                                        ; $4591: $62
	ld   [bc], a                                     ; $4592: $02
	sub  h                                           ; $4593: $94
	dec  b                                           ; $4594: $05
	rrca                                             ; $4595: $0f
	ld   h, e                                        ; $4596: $63
	adc  h                                           ; $4597: $8c
	ld   [hl], l                                     ; $4598: $75
	ld   h, l                                        ; $4599: $65
	ld   l, l                                        ; $459a: $6d
	sbc  a                                           ; $459b: $9f
	dec  c                                           ; $459c: $0d
	nop                                              ; $459d: $00
	ld   a, [bc]                                     ; $459e: $0a
	ld   bc, $7650                                   ; $459f: $01 $50 $76
	ld   a, l                                        ; $45a2: $7d
	sbc  [hl]                                        ; $45a3: $9e
	sbc  l                                           ; $45a4: $9d
	ld   l, l                                        ; $45a5: $6d
	ld   h, l                                        ; $45a6: $65
	ld   e, d                                        ; $45a7: $5a
	sub  d                                           ; $45a8: $92
	ld   [hl], c                                     ; $45a9: $71
	ld   [hl], h                                     ; $45aa: $74
	ld   e, b                                        ; $45ab: $58
	ld   e, e                                        ; $45ac: $5b
	dec  c                                           ; $45ad: $0d
	adc  h                                           ; $45ae: $8c
	ld   h, a                                        ; $45af: $67
	ld   e, c                                        ; $45b0: $59
	sub  a                                           ; $45b1: $97
	sbc  a                                           ; $45b2: $9f
	dec  c                                           ; $45b3: $0d
	ld   e, b                                        ; $45b4: $58
	inc  b                                           ; $45b5: $04
	ld   a, e                                        ; $45b6: $7b
	sbc  d                                           ; $45b7: $9a
	ld   h, e                                        ; $45b8: $63
	adc  h                                           ; $45b9: $8c
	ld   [hl], l                                     ; $45ba: $75
	ld   h, l                                        ; $45bb: $65
	ld   l, l                                        ; $45bc: $6d
	sbc  a                                           ; $45bd: $9f
	dec  c                                           ; $45be: $0d
	nop                                              ; $45bf: $00
	ld   a, [bc]                                     ; $45c0: $0a
	dec  b                                           ; $45c1: $05
	add  b                                           ; $45c2: $80
	and  a                                           ; $45c3: $a7
	ld   bc, $0001                                   ; $45c4: $01 $01 $00
	nop                                              ; $45c7: $00
	nop                                              ; $45c8: $00
	ld   c, $6e                                      ; $45c9: $0e $6e
	inc  e                                           ; $45cb: $1c
	ld   b, $00                                      ; $45cc: $06 $00
	nop                                              ; $45ce: $00
	ld   [bc], a                                     ; $45cf: $02
	ld   bc, $9e58                                   ; $45d0: $01 $58 $9e
	ld   [$9f00], sp                                 ; $45d3: $08 $00 $9f
	dec  c                                           ; $45d6: $0d
	ld   l, a                                        ; $45d7: $6f
	sub  l                                           ; $45d8: $95
	ld   d, h                                        ; $45d9: $54
	ld   [hl], a                                     ; $45da: $77
	ld   d, d                                        ; $45db: $52
	ld   d, d                                        ; $45dc: $52
	halt                                             ; $45dd: $76
	ld   h, c                                        ; $45de: $61
	sbc  e                                           ; $45df: $9b
	ld   a, c                                        ; $45e0: $79
	dec  b                                           ; $45e1: $05
	db   $10                                         ; $45e2: $10
	ld   l, l                                        ; $45e3: $6d
	ld   a, b                                        ; $45e4: $78
	sbc  a                                           ; $45e5: $9f
	dec  c                                           ; $45e6: $0d
	ld   e, e                                        ; $45e7: $5b
	ld   l, l                                        ; $45e8: $6d
	ld   d, [hl]                                     ; $45e9: $56
	ld   [hl], h                                     ; $45ea: $74
	sub  d                                           ; $45eb: $92
	sbc  c                                           ; $45ec: $99
	ld   l, d                                        ; $45ed: $6a
	sbc  a                                           ; $45ee: $9f
	dec  c                                           ; $45ef: $0d
	nop                                              ; $45f0: $00
	ld   a, [bc]                                     ; $45f1: $0a
	ld   a, [de]                                     ; $45f2: $1a
	ld   b, $07                                      ; $45f3: $06 $07
	ld   b, b                                        ; $45f5: $40
	nop                                              ; $45f6: $00
	ld   [bc], a                                     ; $45f7: $02
	inc  b                                           ; $45f8: $04
	ld   bc, $2002                                   ; $45f9: $01 $02 $20
	nop                                              ; $45fc: $00
	rlca                                             ; $45fd: $07
	ld   l, c                                        ; $45fe: $69
	nop                                              ; $45ff: $00
	ld   [bc], a                                     ; $4600: $02
	inc  b                                           ; $4601: $04
	ld   bc, $2001                                   ; $4602: $01 $01 $20
	nop                                              ; $4605: $00
	ld   b, $8a                                      ; $4606: $06 $8a
	nop                                              ; $4608: $00
	inc  e                                           ; $4609: $1c
	ld   b, $01                                      ; $460a: $06 $01
	ld   bc, $401d                                   ; $460c: $01 $1d $40
	ld   d, $03                                      ; $460f: $16 $03
	ld   d, $01                                      ; $4611: $16 $01
	inc  bc                                          ; $4613: $03
	jr   z, jr_050_4616                              ; $4614: $28 $00

jr_050_4616:
	ld   bc, $6267                                   ; $4616: $01 $67 $62
	ld   d, d                                        ; $4619: $52
	ld   l, d                                        ; $461a: $6a
	sbc  [hl]                                        ; $461b: $9e
	ld   [$9f00], sp                                 ; $461c: $08 $00 $9f
	dec  c                                           ; $461f: $0d
	ld   e, b                                        ; $4620: $58
	inc  bc                                          ; $4621: $03
	ld   c, a                                        ; $4622: $4f
	ld   e, a                                        ; $4623: $5f
	ld   [hl], c                                     ; $4624: $71
	ld   h, c                                        ; $4625: $61
	ld   d, h                                        ; $4626: $54
	sub  d                                           ; $4627: $92
	sbc  c                                           ; $4628: $99
	ld   a, b                                        ; $4629: $78
	ld   c, a                                        ; $462a: $4f
	sbc  a                                           ; $462b: $9f
	dec  c                                           ; $462c: $0d
	nop                                              ; $462d: $00
	ld   a, [bc]                                     ; $462e: $0a
	ld   b, $ab                                      ; $462f: $06 $ab
	nop                                              ; $4631: $00
	inc  e                                           ; $4632: $1c
	ld   b, $00                                      ; $4633: $06 $00
	nop                                              ; $4635: $00
	dec  e                                           ; $4636: $1d
	ld   b, b                                        ; $4637: $40
	ld   d, $03                                      ; $4638: $16 $03
	ld   d, $01                                      ; $463a: $16 $01
	ld   bc, $0028                                   ; $463c: $01 $28 $00
	ld   bc, $508c                                   ; $463f: $01 $8c $50
	sbc  [hl]                                        ; $4642: $9e
	ld   h, c                                        ; $4643: $61
	and  c                                           ; $4644: $a1
	ld   a, b                                        ; $4645: $78
	sub  b                                           ; $4646: $90
	and  c                                           ; $4647: $a1
	ld   l, [hl]                                     ; $4648: $6e
	sbc  e                                           ; $4649: $9b
	ld   d, h                                        ; $464a: $54
	ld   a, b                                        ; $464b: $78
	sbc  a                                           ; $464c: $9f
	dec  c                                           ; $464d: $0d
	nop                                              ; $464e: $00
	ld   a, [bc]                                     ; $464f: $0a
	ld   b, $ab                                      ; $4650: $06 $ab
	nop                                              ; $4652: $00
	inc  e                                           ; $4653: $1c
	ld   b, $05                                      ; $4654: $06 $05
	dec  b                                           ; $4656: $05
	dec  e                                           ; $4657: $1d
	ld   b, b                                        ; $4658: $40
	ld   d, $03                                      ; $4659: $16 $03
	ld   d, $01                                      ; $465b: $16 $01
	ld   [bc], a                                     ; $465d: $02
	add  hl, hl                                      ; $465e: $29
	nop                                              ; $465f: $00
	ld   bc, $5258                                   ; $4660: $01 $58 $52
	ld   e, b                                        ; $4663: $58
	ld   d, d                                        ; $4664: $52
	rst  $38                                         ; $4665: $ff
	rst  $38                                         ; $4666: $ff
	dec  c                                           ; $4667: $0d
	ld   h, l                                        ; $4668: $65
	ld   [hl], c                                     ; $4669: $71
	ld   e, c                                        ; $466a: $59
	sbc  b                                           ; $466b: $98
	sub  d                                           ; $466c: $92
	sbc  d                                           ; $466d: $9a
	sub  [hl]                                        ; $466e: $96
	rst  $38                                         ; $466f: $ff
	rst  $38                                         ; $4670: $ff
	dec  c                                           ; $4671: $0d
	nop                                              ; $4672: $00
	ld   a, [bc]                                     ; $4673: $0a
	inc  e                                           ; $4674: $1c
	ld   b, $00                                      ; $4675: $06 $00
	nop                                              ; $4677: $00
	ld   bc, $0458                                   ; $4678: $01 $58 $04
	ld   a, e                                        ; $467b: $7b
	sbc  d                                           ; $467c: $9a
	sbc  a                                           ; $467d: $9f
	dec  c                                           ; $467e: $0d
	ld   h, [hl]                                     ; $467f: $66
	sub  c                                           ; $4680: $91
	ld   d, b                                        ; $4681: $50
	sbc  [hl]                                        ; $4682: $9e
	adc  h                                           ; $4683: $8c
	ld   l, l                                        ; $4684: $6d
	ld   a, b                                        ; $4685: $78
	sbc  a                                           ; $4686: $9f
	dec  c                                           ; $4687: $0d
	nop                                              ; $4688: $00
	ld   a, [bc]                                     ; $4689: $0a
	dec  c                                           ; $468a: $0d
	nop                                              ; $468b: $00
	nop                                              ; $468c: $00
	rrca                                             ; $468d: $0f
	nop                                              ; $468e: $00
	ld   bc, $1e09                                   ; $468f: $01 $09 $1e
	nop                                              ; $4692: $00
	nop                                              ; $4693: $00
	dec  c                                           ; $4694: $0d
	inc  bc                                          ; $4695: $03
	nop                                              ; $4696: $00
	rrca                                             ; $4697: $0f
	nop                                              ; $4698: $00
	ld   bc, $0502                                   ; $4699: $01 $02 $05
	add  b                                           ; $469c: $80
	ld   [hl], e                                     ; $469d: $73
	ld   bc, $0001                                   ; $469e: $01 $01 $00
	ld   bc, $ecdf                                   ; $46a1: $01 $df $ec
	and  e                                           ; $46a4: $a3
	ld   h, e                                        ; $46a5: $63
	and  c                                           ; $46a6: $a1
	sbc  [hl]                                        ; $46a7: $9e
	dec  c                                           ; $46a8: $0d
	ld   l, a                                        ; $46a9: $6f
	sub  l                                           ; $46aa: $95
	ld   [hl], c                                     ; $46ab: $71
	halt                                             ; $46ac: $76
	ld   d, d                                        ; $46ad: $52
	ld   d, d                                        ; $46ae: $52
	ld   [hl], l                                     ; $46af: $75
	ld   h, a                                        ; $46b0: $67
	ld   e, c                                        ; $46b1: $59
	ld   sp, hl                                      ; $46b2: $f9
	dec  c                                           ; $46b3: $0d
	nop                                              ; $46b4: $00
	ld   a, [bc]                                     ; $46b5: $0a
	inc  e                                           ; $46b6: $1c
	inc  bc                                          ; $46b7: $03
	nop                                              ; $46b8: $00
	nop                                              ; $46b9: $00
	ld   bc, $4904                                   ; $46ba: $01 $04 $49
	ld   e, c                                        ; $46bd: $59
	ld   h, l                                        ; $46be: $65
	sub  a                                           ; $46bf: $97
	ld   sp, hl                                      ; $46c0: $f9
	dec  c                                           ; $46c1: $0d
	nop                                              ; $46c2: $00
	ld   a, [bc]                                     ; $46c3: $0a
	add  hl, de                                      ; $46c4: $19
	dec  b                                           ; $46c5: $05
	inc  bc                                          ; $46c6: $03
	inc  bc                                          ; $46c7: $03
	ld   l, l                                        ; $46c8: $6d
	dec  b                                           ; $46c9: $05
	add  hl, de                                      ; $46ca: $19
	ld   a, c                                        ; $46cb: $79
	ld   [hl], d                                     ; $46cc: $72
	ld   d, d                                        ; $46cd: $52
	ld   [hl], h                                     ; $46ce: $74
	ld   [bc], a                                     ; $46cf: $02
	jp   nz, $005d                                   ; $46d0: $c2 $5d $00

	nop                                              ; $46d3: $00
	dec  b                                           ; $46d4: $05
	dec  bc                                          ; $46d5: $0b
	inc  bc                                          ; $46d6: $03
	add  d                                           ; $46d7: $82
	ld   a, c                                        ; $46d8: $79
	ld   [hl], d                                     ; $46d9: $72
	ld   d, d                                        ; $46da: $52
	ld   [hl], h                                     ; $46db: $74
	ld   [bc], a                                     ; $46dc: $02
	jp   nz, $005d                                   ; $46dd: $c2 $5d $00

	ld   bc, $eed8                                   ; $46e0: $01 $d8 $ee
	cp   l                                           ; $46e3: $bd
	push af                                          ; $46e4: $f5
	ret                                              ; $46e5: $c9


	and  b                                           ; $46e6: $a0
	inc  bc                                          ; $46e7: $03
	ld   [$0067], a                                  ; $46e8: $ea $67 $00
	ld   [bc], a                                     ; $46eb: $02
	rlca                                             ; $46ec: $07
	sub  h                                           ; $46ed: $94
	nop                                              ; $46ee: $00
	ld   [bc], a                                     ; $46ef: $02
	inc  bc                                          ; $46f0: $03
	ld   bc, $2000                                   ; $46f1: $01 $00 $20
	nop                                              ; $46f4: $00
	rlca                                             ; $46f5: $07
	ld   [hl], d                                     ; $46f6: $72
	ld   bc, $0302                                   ; $46f7: $01 $02 $03
	ld   bc, $2001                                   ; $46fa: $01 $01 $20
	nop                                              ; $46fd: $00
	rlca                                             ; $46fe: $07
	ld   [hl], l                                     ; $46ff: $75
	ld   [bc], a                                     ; $4700: $02
	ld   [bc], a                                     ; $4701: $02
	inc  bc                                          ; $4702: $03
	ld   bc, $2002                                   ; $4703: $01 $02 $20
	nop                                              ; $4706: $00
	ld   b, $76                                      ; $4707: $06 $76
	nop                                              ; $4709: $00
	rrca                                             ; $470a: $0f
	inc  bc                                          ; $470b: $03
	nop                                              ; $470c: $00
	ld   bc, $f304                                   ; $470d: $01 $04 $f3
	ld   e, d                                        ; $4710: $5a
	ld   a, b                                        ; $4711: $78
	ld   d, d                                        ; $4712: $52
	ld   a, h                                        ; $4713: $7c
	ld   a, b                                        ; $4714: $78
	sub  a                                           ; $4715: $97
	ld   [bc], a                                     ; $4716: $02
	ld   a, a                                        ; $4717: $7f
	ld   e, l                                        ; $4718: $5d
	sbc  l                                           ; $4719: $9d
	sub  [hl]                                        ; $471a: $96
	sbc  a                                           ; $471b: $9f
	dec  c                                           ; $471c: $0d
	nop                                              ; $471d: $00
	ld   a, [bc]                                     ; $471e: $0a
	dec  c                                           ; $471f: $0d
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	rrca                                             ; $4722: $0f
	nop                                              ; $4723: $00
	ld   bc, $1e09                                   ; $4724: $01 $09 $1e
	nop                                              ; $4727: $00
	rrca                                             ; $4728: $0f
	nop                                              ; $4729: $00
	ld   bc, $0401                                   ; $472a: $01 $01 $04
	ld   l, l                                        ; $472d: $6d
	ld   a, h                                        ; $472e: $7c
	inc  bc                                          ; $472f: $03
	ld   l, l                                        ; $4730: $6d
	dec  b                                           ; $4731: $05
	add  hl, de                                      ; $4732: $19
	inc  bc                                          ; $4733: $03
	ld   [de], a                                     ; $4734: $12
	ld   [bc], a                                     ; $4735: $02
	ld   h, e                                        ; $4736: $63
	ld   a, l                                        ; $4737: $7d
	dec  c                                           ; $4738: $0d
	ld   [hl], a                                     ; $4739: $77
	and  c                                           ; $473a: $a1
	ld   a, b                                        ; $473b: $78
	sub  b                                           ; $473c: $90
	ld   a, h                                        ; $473d: $7c
	ld   [hl], l                                     ; $473e: $75
	ld   h, l                                        ; $473f: $65
	sub  l                                           ; $4740: $95
	ld   d, h                                        ; $4741: $54
	ld   e, c                                        ; $4742: $59
	ld   sp, hl                                      ; $4743: $f9
	dec  c                                           ; $4744: $0d
	nop                                              ; $4745: $00
	ld   a, [bc]                                     ; $4746: $0a
	rlca                                             ; $4747: $07
	push af                                          ; $4748: $f5
	nop                                              ; $4749: $00
	inc  bc                                          ; $474a: $03
	dec  h                                           ; $474b: $25
	ld   bc, $253c                                   ; $474c: $01 $3c $25
	inc  bc                                          ; $474f: $03
	dec  h                                           ; $4750: $25
	ld   bc, $225a                                   ; $4751: $01 $5a $22
	inc  e                                           ; $4754: $1c
	nop                                              ; $4755: $00
	rlca                                             ; $4756: $07
	ld   [hl-], a                                    ; $4757: $32
	ld   bc, $2503                                   ; $4758: $01 $03 $25
	ld   bc, $223c                                   ; $475b: $01 $3c $22
	nop                                              ; $475e: $00
	inc  e                                           ; $475f: $1c
	inc  bc                                          ; $4760: $03
	inc  bc                                          ; $4761: $03
	inc  bc                                          ; $4762: $03
	ld   bc, $7859                                   ; $4763: $01 $59 $78
	sbc  b                                           ; $4766: $98
	ld   d, d                                        ; $4767: $52
	ld   d, d                                        ; $4768: $52
	ld   e, c                                        ; $4769: $59
	and  c                                           ; $476a: $a1
	ld   h, [hl]                                     ; $476b: $66
	ld   l, [hl]                                     ; $476c: $6e
	sbc  l                                           ; $476d: $9d
	sbc  a                                           ; $476e: $9f
	dec  c                                           ; $476f: $0d
	ld   h, c                                        ; $4770: $61
	sbc  d                                           ; $4771: $9a
	ld   e, c                                        ; $4772: $59
	sub  a                                           ; $4773: $97
	sub  b                                           ; $4774: $90
	ld   e, d                                        ; $4775: $5a
	and  c                                           ; $4776: $a1
	ld   a, [hl]                                     ; $4777: $7e
	sbc  b                                           ; $4778: $98
	ld   a, b                                        ; $4779: $78
	ld   h, e                                        ; $477a: $63
	ld   d, d                                        ; $477b: $52
	sbc  a                                           ; $477c: $9f
	dec  c                                           ; $477d: $0d
	nop                                              ; $477e: $00
	ld   a, [bc]                                     ; $477f: $0a
	dec  c                                           ; $4780: $0d
	nop                                              ; $4781: $00
	nop                                              ; $4782: $00
	rrca                                             ; $4783: $0f
	nop                                              ; $4784: $00
	ld   bc, $1e09                                   ; $4785: $01 $09 $1e
	nop                                              ; $4788: $00
	inc  e                                           ; $4789: $1c
	inc  bc                                          ; $478a: $03
	nop                                              ; $478b: $00
	nop                                              ; $478c: $00
	ld   bc, $9876                                   ; $478d: $01 $76 $98
	ld   l, l                                        ; $4790: $6d
	ld   [hl], h                                     ; $4791: $74
	ld   [hl], h                                     ; $4792: $74
	inc  b                                           ; $4793: $04
	cp   a                                           ; $4794: $bf
	inc  b                                           ; $4795: $04
	dec  d                                           ; $4796: $15
	ld   a, l                                        ; $4797: $7d
	ld   a, b                                        ; $4798: $78
	ld   d, d                                        ; $4799: $52
	sbc  l                                           ; $479a: $9d
	sbc  a                                           ; $479b: $9f
	dec  c                                           ; $479c: $0d
	ld   l, l                                        ; $479d: $6d
	ld   l, [hl]                                     ; $479e: $6e
	sbc  [hl]                                        ; $479f: $9e
	sub  b                                           ; $47a0: $90
	ld   [hl], c                                     ; $47a1: $71
	halt                                             ; $47a2: $76
	inc  bc                                          ; $47a3: $03
	ld   h, l                                        ; $47a4: $65
	and  b                                           ; $47a5: $a0
	ld   a, e                                        ; $47a6: $7b
	sub  a                                           ; $47a7: $97
	ld   [hl], c                                     ; $47a8: $71
	ld   l, l                                        ; $47a9: $6d
	inc  b                                           ; $47aa: $04
	ld   a, b                                        ; $47ab: $78
	ld   e, d                                        ; $47ac: $5a
	dec  c                                           ; $47ad: $0d
	ld   d, d                                        ; $47ae: $52
	ld   d, d                                        ; $47af: $52
	and  c                                           ; $47b0: $a1
	ld   h, [hl]                                     ; $47b1: $66
	sub  c                                           ; $47b2: $91
	ld   a, b                                        ; $47b3: $78
	ld   d, d                                        ; $47b4: $52
	ld   e, c                                        ; $47b5: $59
	ld   d, d                                        ; $47b6: $52
	ld   h, l                                        ; $47b7: $65
	sub  a                                           ; $47b8: $97
	ld   sp, hl                                      ; $47b9: $f9
	dec  c                                           ; $47ba: $0d
	nop                                              ; $47bb: $00
	ld   a, [bc]                                     ; $47bc: $0a
	dec  c                                           ; $47bd: $0d
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	rrca                                             ; $47c0: $0f
	nop                                              ; $47c1: $00
	ld   bc, $1e09                                   ; $47c2: $01 $09 $1e
	nop                                              ; $47c5: $00
	inc  e                                           ; $47c6: $1c
	inc  bc                                          ; $47c7: $03
	inc  b                                           ; $47c8: $04
	inc  b                                           ; $47c9: $04
	ld   bc, $5490                                   ; $47ca: $01 $90 $54
	inc  bc                                          ; $47cd: $03
	ld   l, h                                        ; $47ce: $6c
	ld   h, l                                        ; $47cf: $65
	inc  bc                                          ; $47d0: $03
	db   $d3                                         ; $47d1: $d3
	dec  b                                           ; $47d2: $05
	ld   a, [bc]                                     ; $47d3: $0a
	ld   e, d                                        ; $47d4: $5a
	inc  b                                           ; $47d5: $04
	adc  d                                           ; $47d6: $8a
	inc  b                                           ; $47d7: $04
	rst  JumpTable                                         ; $47d8: $df
	ld   a, e                                        ; $47d9: $7b
	rst  $38                                         ; $47da: $ff
	rst  $38                                         ; $47db: $ff
	dec  c                                           ; $47dc: $0d
	inc  bc                                          ; $47dd: $03
	ld   l, l                                        ; $47de: $6d
	dec  b                                           ; $47df: $05
	add  hl, de                                      ; $47e0: $19
	ld   a, c                                        ; $47e1: $79
	inc  bc                                          ; $47e2: $03
	xor  [hl]                                        ; $47e3: $ae
	ld   d, h                                        ; $47e4: $54
	inc  bc                                          ; $47e5: $03
	ld   l, a                                        ; $47e6: $6f
	ld   [bc], a                                     ; $47e7: $02
	xor  c                                           ; $47e8: $a9
	and  b                                           ; $47e9: $a0
	add  e                                           ; $47ea: $83
	sub  d                                           ; $47eb: $92
	ld   h, l                                        ; $47ec: $65
	ld   [hl], h                                     ; $47ed: $74
	dec  c                                           ; $47ee: $0d
	sub  b                                           ; $47ef: $90
	ld   [hl], c                                     ; $47f0: $71
	halt                                             ; $47f1: $76
	ld   e, d                                        ; $47f2: $5a
	and  c                                           ; $47f3: $a1
	ld   a, [hl]                                     ; $47f4: $7e
	sbc  b                                           ; $47f5: $98
	ld   a, b                                        ; $47f6: $78
	ld   h, e                                        ; $47f7: $63
	ld   d, d                                        ; $47f8: $52
	sbc  a                                           ; $47f9: $9f
	dec  c                                           ; $47fa: $0d
	nop                                              ; $47fb: $00
	ld   a, [bc]                                     ; $47fc: $0a
	dec  c                                           ; $47fd: $0d
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	rrca                                             ; $4800: $0f
	nop                                              ; $4801: $00
	ld   bc, $1e09                                   ; $4802: $01 $09 $1e
	nop                                              ; $4805: $00
	rrca                                             ; $4806: $0f
	nop                                              ; $4807: $00
	ld   bc, $df01                                   ; $4808: $01 $01 $df
	db   $ec                                         ; $480b: $ec
	and  e                                           ; $480c: $a3
	ld   h, e                                        ; $480d: $63
	and  c                                           ; $480e: $a1
	ld   [hl], h                                     ; $480f: $74
	dec  b                                           ; $4810: $05
	dec  bc                                          ; $4811: $0b
	inc  bc                                          ; $4812: $03
	add  d                                           ; $4813: $82
	halt                                             ; $4814: $76
	ld   e, c                                        ; $4815: $59
	dec  c                                           ; $4816: $0d
	ld   d, d                                        ; $4817: $52
	sub  a                                           ; $4818: $97
	ld   [hl], c                                     ; $4819: $71
	ld   h, l                                        ; $481a: $65
	sub  c                                           ; $481b: $91
	sbc  c                                           ; $481c: $99
	and  c                                           ; $481d: $a1
	ld   [hl], l                                     ; $481e: $75
	ld   h, a                                        ; $481f: $67
	ld   e, c                                        ; $4820: $59
	ld   sp, hl                                      ; $4821: $f9
	dec  c                                           ; $4822: $0d
	nop                                              ; $4823: $00
	ld   a, [bc]                                     ; $4824: $0a
	rlca                                             ; $4825: $07
	rst  JumpTable                                         ; $4826: $df
	ld   bc, $1303                                   ; $4827: $01 $03 $13
	ld   bc, $228c                                   ; $482a: $01 $8c $22
	nop                                              ; $482d: $00
	inc  e                                           ; $482e: $1c
	inc  bc                                          ; $482f: $03
	inc  b                                           ; $4830: $04
	inc  b                                           ; $4831: $04
	ld   bc, $7259                                   ; $4832: $01 $59 $72
	ld   [hl], h                                     ; $4835: $74
	ld   a, l                                        ; $4836: $7d
	ld   d, d                                        ; $4837: $52
	ld   l, l                                        ; $4838: $6d
	sbc  l                                           ; $4839: $9d
	rst  $38                                         ; $483a: $ff
	rst  $38                                         ; $483b: $ff
	dec  c                                           ; $483c: $0d
	ld   [hl], l                                     ; $483d: $75
	sub  b                                           ; $483e: $90
	ld   [bc], a                                     ; $483f: $02
	and  l                                           ; $4840: $a5
	ld   a, l                                        ; $4841: $7d
	rst  $38                                         ; $4842: $ff
	rst  $38                                         ; $4843: $ff
	dec  c                                           ; $4844: $0d
	nop                                              ; $4845: $00
	ld   a, [bc]                                     ; $4846: $0a
	ld   bc, $8c50                                   ; $4847: $01 $50 $8c
	sbc  b                                           ; $484a: $98
	ld   h, c                                        ; $484b: $61
	ld   d, h                                        ; $484c: $54
	ld   d, d                                        ; $484d: $52
	ld   d, h                                        ; $484e: $54
	dec  b                                           ; $484f: $05
	jr   nz, jr_050_48cf                             ; $4850: $20 $7d

	dec  c                                           ; $4852: $0d
	ld   [bc], a                                     ; $4853: $02
	sbc  d                                           ; $4854: $9a
	ld   e, e                                        ; $4855: $5b
	ld   h, [hl]                                     ; $4856: $66
	sub  c                                           ; $4857: $91
	ld   a, b                                        ; $4858: $78
	ld   d, d                                        ; $4859: $52
	sbc  l                                           ; $485a: $9d
	rst  $38                                         ; $485b: $ff
	rst  $38                                         ; $485c: $ff
	dec  c                                           ; $485d: $0d
	sub  b                                           ; $485e: $90
	ld   d, h                                        ; $485f: $54
	sub  d                                           ; $4860: $92
	adc  a                                           ; $4861: $8f
	adc  h                                           ; $4862: $8c
	ld   h, l                                        ; $4863: $65
	sub  l                                           ; $4864: $95
	ld   d, h                                        ; $4865: $54
	sbc  a                                           ; $4866: $9f
	dec  c                                           ; $4867: $0d
	nop                                              ; $4868: $00
	ld   a, [bc]                                     ; $4869: $0a
	dec  c                                           ; $486a: $0d
	nop                                              ; $486b: $00
	nop                                              ; $486c: $00
	rrca                                             ; $486d: $0f
	nop                                              ; $486e: $00
	ld   bc, $1e09                                   ; $486f: $01 $09 $1e
	nop                                              ; $4872: $00
	inc  e                                           ; $4873: $1c
	inc  bc                                          ; $4874: $03
	ld   [bc], a                                     ; $4875: $02
	ld   [bc], a                                     ; $4876: $02
	dec  e                                           ; $4877: $1d
	ld   b, b                                        ; $4878: $40
	inc  de                                          ; $4879: $13
	inc  bc                                          ; $487a: $03
	inc  de                                          ; $487b: $13
	ld   bc, $2902                                   ; $487c: $01 $02 $29
	nop                                              ; $487f: $00
	ld   bc, $928e                                   ; $4880: $01 $8e $92
	adc  l                                           ; $4883: $8d
	ld   a, c                                        ; $4884: $79
	ld   l, e                                        ; $4885: $6b
	ld   d, h                                        ; $4886: $54
	ld   d, d                                        ; $4887: $52
	ld   d, h                                        ; $4888: $54
	ld   [bc], a                                     ; $4889: $02
	jp   $0da0                                       ; $488a: $c3 $a0 $0d


	add  b                                           ; $488d: $80
	halt                                             ; $488e: $76
	ld   a, c                                        ; $488f: $79
	ld   l, l                                        ; $4890: $6d
	ld   l, b                                        ; $4891: $68
	ld   a, e                                        ; $4892: $7b
	sbc  c                                           ; $4893: $99
	sub  b                                           ; $4894: $90
	ld   a, h                                        ; $4895: $7c
	ld   h, [hl]                                     ; $4896: $66
	sub  c                                           ; $4897: $91
	dec  c                                           ; $4898: $0d
	ld   a, b                                        ; $4899: $78
	ld   d, d                                        ; $489a: $52
	sbc  l                                           ; $489b: $9d
	rst  $38                                         ; $489c: $ff
	rst  $38                                         ; $489d: $ff
	dec  c                                           ; $489e: $0d
	nop                                              ; $489f: $00
	ld   a, [bc]                                     ; $48a0: $0a
	ld   bc, $7850                                   ; $48a1: $01 $50 $78
	ld   l, l                                        ; $48a4: $6d
	ld   a, l                                        ; $48a5: $7d
	inc  bc                                          ; $48a6: $03
	ld   l, h                                        ; $48a7: $6c
	ld   h, l                                        ; $48a8: $65
	sbc  [hl]                                        ; $48a9: $9e
	dec  c                                           ; $48aa: $0d
	inc  bc                                          ; $48ab: $03
	sub  h                                           ; $48ac: $94
	inc  b                                           ; $48ad: $04
	sbc  [hl]                                        ; $48ae: $9e
	ld   a, h                                        ; $48af: $7c
	dec  b                                           ; $48b0: $05
	ld   d, $04                                      ; $48b1: $16 $04
	ld   a, d                                        ; $48b3: $7a
	and  b                                           ; $48b4: $a0
	ld   e, c                                        ; $48b5: $59
	and  c                                           ; $48b6: $a1
	ld   l, a                                        ; $48b7: $6f
	ld   e, d                                        ; $48b8: $5a
	ld   d, d                                        ; $48b9: $52
	dec  c                                           ; $48ba: $0d
	ld   h, l                                        ; $48bb: $65
	ld   [hl], h                                     ; $48bc: $74
	sbc  c                                           ; $48bd: $99
	sub  [hl]                                        ; $48be: $96
	ld   d, h                                        ; $48bf: $54
	ld   a, e                                        ; $48c0: $7b
	sbc  a                                           ; $48c1: $9f
	dec  c                                           ; $48c2: $0d
	nop                                              ; $48c3: $00
	ld   a, [bc]                                     ; $48c4: $0a
	ld   bc, $a502                                   ; $48c5: $01 $02 $a5
	inc  b                                           ; $48c8: $04
	rst  $28                                         ; $48c9: $ef
	sbc  [hl]                                        ; $48ca: $9e
	dec  b                                           ; $48cb: $05
	jr   nz, jr_050_4928                             ; $48cc: $20 $5a

	ld   d, b                                        ; $48ce: $50

jr_050_48cf:
	sbc  c                                           ; $48cf: $99
	sbc  l                                           ; $48d0: $9d
	rst  $38                                         ; $48d1: $ff
	rst  $38                                         ; $48d2: $ff
	dec  c                                           ; $48d3: $0d
	nop                                              ; $48d4: $00
	dec  b                                           ; $48d5: $05
	add  b                                           ; $48d6: $80
	ld   h, a                                        ; $48d7: $67
	ld   bc, $0001                                   ; $48d8: $01 $01 $00
	dec  b                                           ; $48db: $05
	ld   b, b                                        ; $48dc: $40
	ld   c, d                                        ; $48dd: $4a
	ld   [bc], a                                     ; $48de: $02
	nop                                              ; $48df: $00
	nop                                              ; $48e0: $00
	ld   bc, $9403                                   ; $48e1: $01 $03 $94
	inc  bc                                          ; $48e4: $03
	ld   c, l                                        ; $48e5: $4d
	ld   [hl], l                                     ; $48e6: $75
	inc  b                                           ; $48e7: $04
	rla                                              ; $48e8: $17
	ld   [bc], a                                     ; $48e9: $02
	ld   e, b                                        ; $48ea: $58
	ld   h, l                                        ; $48eb: $65
	ld   [hl], h                                     ; $48ec: $74
	ld   a, b                                        ; $48ed: $78
	ld   h, e                                        ; $48ee: $63
	ld   d, d                                        ; $48ef: $52
	sbc  a                                           ; $48f0: $9f
	dec  c                                           ; $48f1: $0d
	nop                                              ; $48f2: $00
	ld   a, [bc]                                     ; $48f3: $0a
	dec  b                                           ; $48f4: $05
	ld   b, b                                        ; $48f5: $40
	ld   l, l                                        ; $48f6: $6d
	ld   [bc], a                                     ; $48f7: $02
	nop                                              ; $48f8: $00
	nop                                              ; $48f9: $00
	dec  b                                           ; $48fa: $05
	ld   b, b                                        ; $48fb: $40
	ld   d, b                                        ; $48fc: $50
	ld   bc, $0001                                   ; $48fd: $01 $01 $00
	dec  c                                           ; $4900: $0d
	nop                                              ; $4901: $00
	nop                                              ; $4902: $00
	rrca                                             ; $4903: $0f
	nop                                              ; $4904: $00
	ld   bc, $1e09                                   ; $4905: $01 $09 $1e
	nop                                              ; $4908: $00
	rrca                                             ; $4909: $0f
	nop                                              ; $490a: $00
	ld   bc, $df01                                   ; $490b: $01 $01 $df
	db   $ec                                         ; $490e: $ec
	and  e                                           ; $490f: $a3
	ld   h, e                                        ; $4910: $63
	and  c                                           ; $4911: $a1
	sbc  a                                           ; $4912: $9f
	dec  c                                           ; $4913: $0d
	ld   h, c                                        ; $4914: $61
	sbc  d                                           ; $4915: $9a
	sbc  [hl]                                        ; $4916: $9e
	inc  b                                           ; $4917: $04
	ld   hl, $bc03                                   ; $4918: $21 $03 $bc
	ld   e, c                                        ; $491b: $59
	sub  a                                           ; $491c: $97
	inc  bc                                          ; $491d: $03
	sbc  a                                           ; $491e: $9f
	ld   [hl], c                                     ; $491f: $71
	ld   [hl], h                                     ; $4920: $74
	dec  c                                           ; $4921: $0d
	ld   e, e                                        ; $4922: $5b
	ld   l, l                                        ; $4923: $6d
	and  c                                           ; $4924: $a1
	ld   [hl], l                                     ; $4925: $75
	ld   h, a                                        ; $4926: $67
	ld   e, a                                        ; $4927: $5f

jr_050_4928:
	ld   [hl], a                                     ; $4928: $77
	rst  $38                                         ; $4929: $ff
	rst  $38                                         ; $492a: $ff
	dec  c                                           ; $492b: $0d
	nop                                              ; $492c: $00
	ld   a, [bc]                                     ; $492d: $0a
	inc  e                                           ; $492e: $1c
	inc  bc                                          ; $492f: $03
	rlca                                             ; $4930: $07
	rlca                                             ; $4931: $07
	ld   bc, $f956                                   ; $4932: $01 $56 $f9
	dec  c                                           ; $4935: $0d
	inc  bc                                          ; $4936: $03
	ret  z                                           ; $4937: $c8

	ld   a, c                                        ; $4938: $79
	rst  $38                                         ; $4939: $ff
	rst  $38                                         ; $493a: $ff
	ld   sp, hl                                      ; $493b: $f9
	dec  c                                           ; $493c: $0d
	nop                                              ; $493d: $00
	ld   a, [bc]                                     ; $493e: $0a
	rrca                                             ; $493f: $0f
	nop                                              ; $4940: $00
	ld   bc, $0101                                   ; $4941: $01 $01 $01
	inc  bc                                          ; $4944: $03
	ld   [hl], a                                     ; $4945: $77
	sbc  d                                           ; $4946: $9a
	and  b                                           ; $4947: $a0
	inc  bc                                          ; $4948: $03
	ld   [$546b], a                                  ; $4949: $ea $6b $54
	ld   e, c                                        ; $494c: $59
	ld   a, b                                        ; $494d: $78
	ld   sp, hl                                      ; $494e: $f9
	ld   bc, $0d04                                   ; $494f: $01 $04 $0d
	nop                                              ; $4952: $00
	ld   a, [bc]                                     ; $4953: $0a
	jr   jr_050_4959                                 ; $4954: $18 $03

	nop                                              ; $4956: $00
	sub  b                                           ; $4957: $90
	ld   a, b                                        ; $4958: $78

jr_050_4959:
	ld   e, c                                        ; $4959: $59
	nop                                              ; $495a: $00
	nop                                              ; $495b: $00
	call z, $b9f5                                    ; $495c: $cc $f5 $b9
	push af                                          ; $495f: $f5
	nop                                              ; $4960: $00
	ld   bc, $6504                                   ; $4961: $01 $04 $65
	inc  b                                           ; $4964: $04
	rrca                                             ; $4965: $0f
	inc  bc                                          ; $4966: $03
	add  d                                           ; $4967: $82
	ld   [bc], a                                     ; $4968: $02
	ld   a, $00                                      ; $4969: $3e $00
	ld   [bc], a                                     ; $496b: $02
	rlca                                             ; $496c: $07
	di                                               ; $496d: $f3
	ld   [bc], a                                     ; $496e: $02
	ld   [bc], a                                     ; $496f: $02
	ld   [bc], a                                     ; $4970: $02
	ld   bc, $2000                                   ; $4971: $01 $00 $20
	nop                                              ; $4974: $00
	rlca                                             ; $4975: $07
	scf                                              ; $4976: $37
	inc  bc                                          ; $4977: $03
	ld   [bc], a                                     ; $4978: $02
	ld   [bc], a                                     ; $4979: $02
	ld   bc, $2001                                   ; $497a: $01 $01 $20
	nop                                              ; $497d: $00
	rlca                                             ; $497e: $07
	sub  e                                           ; $497f: $93
	inc  bc                                          ; $4980: $03
	ld   [bc], a                                     ; $4981: $02
	ld   [bc], a                                     ; $4982: $02
	ld   bc, $2002                                   ; $4983: $01 $02 $20
	nop                                              ; $4986: $00
	rrca                                             ; $4987: $0f
	nop                                              ; $4988: $00
	ld   bc, $9001                                   ; $4989: $01 $01 $90
	ld   a, b                                        ; $498c: $78
	ld   e, c                                        ; $498d: $59
	ld   a, b                                        ; $498e: $78
	and  c                                           ; $498f: $a1
	ld   [hl], l                                     ; $4990: $75
	ld   h, a                                        ; $4991: $67
	ld   e, d                                        ; $4992: $5a
	dec  c                                           ; $4993: $0d
	ld   d, d                                        ; $4994: $52
	ld   e, c                                        ; $4995: $59
	ld   e, d                                        ; $4996: $5a
	ld   [hl], l                                     ; $4997: $75
	ld   h, a                                        ; $4998: $67
	ld   e, c                                        ; $4999: $59
	ld   sp, hl                                      ; $499a: $f9
	dec  c                                           ; $499b: $0d
	nop                                              ; $499c: $00
	ld   a, [bc]                                     ; $499d: $0a
	dec  c                                           ; $499e: $0d
	nop                                              ; $499f: $00
	nop                                              ; $49a0: $00
	db   $10                                         ; $49a1: $10
	ld   a, [de]                                     ; $49a2: $1a
	nop                                              ; $49a3: $00
	inc  e                                           ; $49a4: $1c
	inc  bc                                          ; $49a5: $03
	inc  bc                                          ; $49a6: $03
	inc  bc                                          ; $49a7: $03
	dec  e                                           ; $49a8: $1d
	ld   b, b                                        ; $49a9: $40
	inc  de                                          ; $49aa: $13
	inc  bc                                          ; $49ab: $03
	inc  de                                          ; $49ac: $13
	ld   bc, $2801                                   ; $49ad: $01 $01 $28
	nop                                              ; $49b0: $00
	ld   bc, $9750                                   ; $49b1: $01 $50 $97
	sbc  [hl]                                        ; $49b4: $9e
	ld   d, b                                        ; $49b5: $50
	sbc  b                                           ; $49b6: $98
	ld   e, d                                        ; $49b7: $5a
	halt                                             ; $49b8: $76
	ld   d, h                                        ; $49b9: $54
	sbc  a                                           ; $49ba: $9f
	dec  c                                           ; $49bb: $0d
	ld   [bc], a                                     ; $49bc: $02
	xor  d                                           ; $49bd: $aa
	ld   [hl], l                                     ; $49be: $75
	ld   d, d                                        ; $49bf: $52
	ld   l, l                                        ; $49c0: $6d
	ld   l, [hl]                                     ; $49c1: $6e
	ld   e, l                                        ; $49c2: $5d
	sbc  l                                           ; $49c3: $9d
	sbc  a                                           ; $49c4: $9f
	dec  c                                           ; $49c5: $0d
	nop                                              ; $49c6: $00
	ld   a, [bc]                                     ; $49c7: $0a
	ld   b, $d2                                      ; $49c8: $06 $d2
	inc  bc                                          ; $49ca: $03
	rrca                                             ; $49cb: $0f
	nop                                              ; $49cc: $00
	ld   bc, $cc01                                   ; $49cd: $01 $01 $cc
	push af                                          ; $49d0: $f5
	cp   c                                           ; $49d1: $b9
	push af                                          ; $49d2: $f5
	ld   a, b                                        ; $49d3: $78
	and  c                                           ; $49d4: $a1
	ld   [hl], l                                     ; $49d5: $75
	ld   h, a                                        ; $49d6: $67
	ld   e, d                                        ; $49d7: $5a
	dec  c                                           ; $49d8: $0d
	ld   d, d                                        ; $49d9: $52
	ld   e, c                                        ; $49da: $59
	ld   e, d                                        ; $49db: $5a
	ld   [hl], l                                     ; $49dc: $75
	ld   h, a                                        ; $49dd: $67
	ld   e, c                                        ; $49de: $59
	ld   sp, hl                                      ; $49df: $f9
	dec  c                                           ; $49e0: $0d
	nop                                              ; $49e1: $00
	ld   a, [bc]                                     ; $49e2: $0a
	dec  c                                           ; $49e3: $0d
	nop                                              ; $49e4: $00
	nop                                              ; $49e5: $00
	db   $10                                         ; $49e6: $10
	dec  de                                          ; $49e7: $1b
	nop                                              ; $49e8: $00
	inc  e                                           ; $49e9: $1c
	inc  bc                                          ; $49ea: $03
	inc  bc                                          ; $49eb: $03
	inc  bc                                          ; $49ec: $03
	dec  e                                           ; $49ed: $1d
	ld   b, b                                        ; $49ee: $40
	inc  de                                          ; $49ef: $13
	inc  bc                                          ; $49f0: $03
	inc  de                                          ; $49f1: $13
	ld   bc, $2803                                   ; $49f2: $01 $03 $28
	nop                                              ; $49f5: $00
	ld   bc, $5b03                                   ; $49f6: $01 $03 $5b
	ld   e, c                                        ; $49f9: $59
	sbc  c                                           ; $49fa: $99
	sbc  l                                           ; $49fb: $9d
	rst  $38                                         ; $49fc: $ff
	rst  $38                                         ; $49fd: $ff
	dec  c                                           ; $49fe: $0d
	db   $dd                                         ; $49ff: $dd
	db   $ed                                         ; $4a00: $ed
	cp   b                                           ; $4a01: $b8
	jp   nz, $037c                                   ; $4a02: $c2 $7c $03

	jr   nc, jr_050_4a0c                             ; $4a05: $30 $05

	ld   [bc], a                                     ; $4a07: $02
	ld   a, c                                        ; $4a08: $79
	dec  c                                           ; $4a09: $0d
	adc  c                                           ; $4a0a: $89
	ld   h, l                                        ; $4a0b: $65

jr_050_4a0c:
	ld   e, c                                        ; $4a0c: $59
	ld   [hl], c                                     ; $4a0d: $71
	ld   l, l                                        ; $4a0e: $6d
	ld   a, h                                        ; $4a0f: $7c
	sub  [hl]                                        ; $4a10: $96
	sbc  a                                           ; $4a11: $9f
	dec  c                                           ; $4a12: $0d
	nop                                              ; $4a13: $00
	ld   a, [bc]                                     ; $4a14: $0a
	ld   bc, $9850                                   ; $4a15: $01 $50 $98
	ld   e, d                                        ; $4a18: $5a
	halt                                             ; $4a19: $76
	ld   d, h                                        ; $4a1a: $54
	sbc  [hl]                                        ; $4a1b: $9e
	ld   [$5d00], sp                                 ; $4a1c: $08 $00 $5d
	and  c                                           ; $4a1f: $a1
	sbc  a                                           ; $4a20: $9f
	dec  c                                           ; $4a21: $0d
	nop                                              ; $4a22: $00
	ld   a, [bc]                                     ; $4a23: $0a
	ld   b, $d2                                      ; $4a24: $06 $d2
	inc  bc                                          ; $4a26: $03
	rrca                                             ; $4a27: $0f
	nop                                              ; $4a28: $00
	ld   bc, $0401                                   ; $4a29: $01 $01 $04
	ld   h, l                                        ; $4a2c: $65
	inc  b                                           ; $4a2d: $04
	rrca                                             ; $4a2e: $0f
	inc  bc                                          ; $4a2f: $03
	add  d                                           ; $4a30: $82
	ld   [bc], a                                     ; $4a31: $02
	ld   a, $78                                      ; $4a32: $3e $78
	and  c                                           ; $4a34: $a1
	ld   [hl], l                                     ; $4a35: $75
	ld   h, a                                        ; $4a36: $67
	ld   e, d                                        ; $4a37: $5a
	dec  c                                           ; $4a38: $0d
	ld   d, d                                        ; $4a39: $52
	ld   e, c                                        ; $4a3a: $59
	ld   e, d                                        ; $4a3b: $5a
	ld   [hl], l                                     ; $4a3c: $75
	ld   h, a                                        ; $4a3d: $67
	ld   e, c                                        ; $4a3e: $59
	ld   sp, hl                                      ; $4a3f: $f9
	dec  c                                           ; $4a40: $0d
	nop                                              ; $4a41: $00
	ld   a, [bc]                                     ; $4a42: $0a
	dec  c                                           ; $4a43: $0d
	nop                                              ; $4a44: $00
	nop                                              ; $4a45: $00
	db   $10                                         ; $4a46: $10
	inc  e                                           ; $4a47: $1c
	nop                                              ; $4a48: $00
	inc  e                                           ; $4a49: $1c
	inc  bc                                          ; $4a4a: $03
	inc  b                                           ; $4a4b: $04
	inc  b                                           ; $4a4c: $04
	dec  e                                           ; $4a4d: $1d
	ld   b, b                                        ; $4a4e: $40
	inc  de                                          ; $4a4f: $13
	inc  bc                                          ; $4a50: $03
	inc  de                                          ; $4a51: $13
	ld   bc, $2901                                   ; $4a52: $01 $01 $29
	nop                                              ; $4a55: $00
	ld   bc, $9e50                                   ; $4a56: $01 $50 $9e
	ld   d, b                                        ; $4a59: $50
	sbc  b                                           ; $4a5a: $98
	ld   e, d                                        ; $4a5b: $5a
	halt                                             ; $4a5c: $76
	ld   d, h                                        ; $4a5d: $54
	rst  $38                                         ; $4a5e: $ff
	rst  $38                                         ; $4a5f: $ff
	dec  c                                           ; $4a60: $0d
	nop                                              ; $4a61: $00
	ld   a, [bc]                                     ; $4a62: $0a
	ld   b, $d2                                      ; $4a63: $06 $d2
	inc  bc                                          ; $4a65: $03
	inc  e                                           ; $4a66: $1c
	inc  bc                                          ; $4a67: $03
	nop                                              ; $4a68: $00
	nop                                              ; $4a69: $00
	ld   bc, $7463                                   ; $4a6a: $01 $63 $74
	halt                                             ; $4a6d: $76
	rst  $38                                         ; $4a6e: $ff
	rst  $38                                         ; $4a6f: $ff
	dec  c                                           ; $4a70: $0d
	ld   l, e                                        ; $4a71: $6b
	sbc  e                                           ; $4a72: $9b
	ld   l, e                                        ; $4a73: $6b
	sbc  e                                           ; $4a74: $9b
	inc  bc                                          ; $4a75: $03
	and  b                                           ; $4a76: $a0
	ld   l, a                                        ; $4a77: $6f
	inc  b                                           ; $4a78: $04
	ld   a, d                                        ; $4a79: $7a
	ld   a, c                                        ; $4a7a: $79
	dec  c                                           ; $4a7b: $0d
	sub  b                                           ; $4a7c: $90
	ld   [hl], a                                     ; $4a7d: $77
	sbc  b                                           ; $4a7e: $98
	ld   a, b                                        ; $4a7f: $78
	ld   h, e                                        ; $4a80: $63
	ld   d, d                                        ; $4a81: $52
	sbc  a                                           ; $4a82: $9f
	dec  c                                           ; $4a83: $0d
	nop                                              ; $4a84: $00
	ld   a, [bc]                                     ; $4a85: $0a
	dec  c                                           ; $4a86: $0d
	nop                                              ; $4a87: $00
	nop                                              ; $4a88: $00
	rrca                                             ; $4a89: $0f
	nop                                              ; $4a8a: $00
	ld   bc, $1e09                                   ; $4a8b: $01 $09 $1e
	nop                                              ; $4a8e: $00
	nop                                              ; $4a8f: $00
	inc  b                                           ; $4a90: $04
	add  b                                           ; $4a91: $80
	ld   b, b                                        ; $4a92: $40
	ld   bc, $2000                                   ; $4a93: $01 $00 $20
	inc  bc                                          ; $4a96: $03
	ld   l, d                                        ; $4a97: $6a
	ld   [bc], a                                     ; $4a98: $02
	nop                                              ; $4a99: $00
	ld   hl, $001c                                   ; $4a9a: $21 $1c $00
	ld   c, $56                                      ; $4a9d: $0e $56
	inc  e                                           ; $4a9f: $1c
	inc  b                                           ; $4aa0: $04
	ld   bc, $0201                                   ; $4aa1: $01 $01 $02
	ld   bc, $9752                                   ; $4aa4: $01 $52 $97
	ld   [hl], c                                     ; $4aa7: $71
	ld   h, l                                        ; $4aa8: $65
	sub  c                                           ; $4aa9: $91
	ei                                               ; $4aaa: $fb
	ld   d, d                                        ; $4aab: $52
	sbc  a                                           ; $4aac: $9f
	dec  c                                           ; $4aad: $0d
	nop                                              ; $4aae: $00
	ld   a, [bc]                                     ; $4aaf: $0a
	ld   bc, $9166                                   ; $4ab0: $01 $66 $91
	ei                                               ; $4ab3: $fb
	and  c                                           ; $4ab4: $a1
	ld   a, [$7610]                                  ; $4ab5: $fa $10 $76
	ld   [hl], d                                     ; $4ab8: $72
	ld   l, d                                        ; $4ab9: $6a
	and  c                                           ; $4aba: $a1
	ld   l, [hl]                                     ; $4abb: $6e
	ld   e, a                                        ; $4abc: $5f
	ld   [hl], a                                     ; $4abd: $77
	sbc  [hl]                                        ; $4abe: $9e
	dec  c                                           ; $4abf: $0d
	ld   l, a                                        ; $4ac0: $6f
	ld   d, d                                        ; $4ac1: $52
	ld   [bc], a                                     ; $4ac2: $02
	inc  de                                          ; $4ac3: $13
	ld   l, a                                        ; $4ac4: $6f
	sub  c                                           ; $4ac5: $91
	and  c                                           ; $4ac6: $a1
	ld   a, h                                        ; $4ac7: $7c
	sbc  d                                           ; $4ac8: $9a
	ld   d, d                                        ; $4ac9: $52
	sbc  b                                           ; $4aca: $98
	sub  l                                           ; $4acb: $95
	ld   e, l                                        ; $4acc: $5d
	and  b                                           ; $4acd: $a0
	dec  c                                           ; $4ace: $0d
	add  e                                           ; $4acf: $83
	sub  d                                           ; $4ad0: $92
	ld   h, a                                        ; $4ad1: $67
	halt                                             ; $4ad2: $76
	ld   [hl], c                                     ; $4ad3: $71
	ld   e, l                                        ; $4ad4: $5d
	and  c                                           ; $4ad5: $a1
	and  b                                           ; $4ad6: $a0
	ld   h, l                                        ; $4ad7: $65
	adc  h                                           ; $4ad8: $8c
	ei                                               ; $4ad9: $fb
	ld   h, a                                        ; $4ada: $67
	sbc  a                                           ; $4adb: $9f
	dec  c                                           ; $4adc: $0d
	nop                                              ; $4add: $00
	ld   a, [bc]                                     ; $4ade: $0a
	add  hl, de                                      ; $4adf: $19
	dec  b                                           ; $4ae0: $05
	ld   [bc], a                                     ; $4ae1: $02
	sub  d                                           ; $4ae2: $92
	sbc  c                                           ; $4ae3: $99
	nop                                              ; $4ae4: $00
	nop                                              ; $4ae5: $00
	sub  d                                           ; $4ae6: $92
	sub  a                                           ; $4ae7: $97
	ld   a, b                                        ; $4ae8: $78
	ld   d, d                                        ; $4ae9: $52
	nop                                              ; $4aea: $00
	ld   bc, $c307                                   ; $4aeb: $01 $07 $c3
	nop                                              ; $4aee: $00
	ld   [bc], a                                     ; $4aef: $02
	inc  bc                                          ; $4af0: $03
	ld   bc, $2000                                   ; $4af1: $01 $00 $20
	nop                                              ; $4af4: $00
	rlca                                             ; $4af5: $07
	ld   h, h                                        ; $4af6: $64
	nop                                              ; $4af7: $00
	ld   [bc], a                                     ; $4af8: $02
	inc  bc                                          ; $4af9: $03
	ld   bc, $2001                                   ; $4afa: $01 $01 $20
	nop                                              ; $4afd: $00
	ld   b, $9a                                      ; $4afe: $06 $9a
	nop                                              ; $4b00: $00
	rrca                                             ; $4b01: $0f
	nop                                              ; $4b02: $00
	ld   bc, $0201                                   ; $4b03: $01 $01 $02
	jr   z, jr_050_4b5a                              ; $4b06: $28 $52

	ld   e, a                                        ; $4b08: $5f
	ld   [hl], a                                     ; $4b09: $77
	sbc  [hl]                                        ; $4b0a: $9e
	jp   nc, $9fba                                   ; $4b0b: $d2 $ba $9f

	dec  c                                           ; $4b0e: $0d
	nop                                              ; $4b0f: $00
	ld   a, [bc]                                     ; $4b10: $0a
	inc  e                                           ; $4b11: $1c
	inc  b                                           ; $4b12: $04
	rlca                                             ; $4b13: $07
	rlca                                             ; $4b14: $07
	dec  e                                           ; $4b15: $1d
	ld   b, b                                        ; $4b16: $40
	inc  d                                           ; $4b17: $14
	inc  bc                                          ; $4b18: $03
	inc  d                                           ; $4b19: $14
	ld   bc, $2901                                   ; $4b1a: $01 $01 $29
	nop                                              ; $4b1d: $00
	ld   bc, $5484                                   ; $4b1e: $01 $84 $54
	rst  $38                                         ; $4b21: $ff
	rst  $38                                         ; $4b22: $ff
	ld   [hl], d                                     ; $4b23: $72
	adc  h                                           ; $4b24: $8c
	and  c                                           ; $4b25: $a1
	ld   a, b                                        ; $4b26: $78
	ld   d, d                                        ; $4b27: $52
	ld   a, h                                        ; $4b28: $7c
	sbc  a                                           ; $4b29: $9f
	dec  c                                           ; $4b2a: $0d
	ld   h, [hl]                                     ; $4b2b: $66
	sub  c                                           ; $4b2c: $91
	sbc  [hl]                                        ; $4b2d: $9e
	pop  de                                          ; $4b2e: $d1
	and  l                                           ; $4b2f: $a5
	pop  de                                          ; $4b30: $d1
	and  l                                           ; $4b31: $a5
	sbc  a                                           ; $4b32: $9f
	dec  c                                           ; $4b33: $0d
	nop                                              ; $4b34: $00
	ld   a, [bc]                                     ; $4b35: $0a
	nop                                              ; $4b36: $00
	inc  e                                           ; $4b37: $1c
	inc  b                                           ; $4b38: $04
	rlca                                             ; $4b39: $07
	rlca                                             ; $4b3a: $07
	dec  e                                           ; $4b3b: $1d
	ld   b, b                                        ; $4b3c: $40
	inc  d                                           ; $4b3d: $14
	inc  bc                                          ; $4b3e: $03
	inc  d                                           ; $4b3f: $14
	ld   bc, $2901                                   ; $4b40: $01 $01 $29
	nop                                              ; $4b43: $00
	ld   bc, $9e50                                   ; $4b44: $01 $50 $9e
	and  l                                           ; $4b47: $a5
	and  $6b                                         ; $4b48: $e6 $6b
	ld   d, h                                        ; $4b4a: $54
	ld   a, b                                        ; $4b4b: $78
	ld   e, c                                        ; $4b4c: $59
	ld   e, b                                        ; $4b4d: $58
	ld   h, l                                        ; $4b4e: $65
	ld   [hl], h                                     ; $4b4f: $74
	sbc  c                                           ; $4b50: $99
	rst  $38                                         ; $4b51: $ff
	rst  $38                                         ; $4b52: $ff
	dec  c                                           ; $4b53: $0d
	ld   h, [hl]                                     ; $4b54: $66
	sub  c                                           ; $4b55: $91
	sbc  [hl]                                        ; $4b56: $9e
	pop  de                                          ; $4b57: $d1
	and  l                                           ; $4b58: $a5
	pop  de                                          ; $4b59: $d1

jr_050_4b5a:
	and  l                                           ; $4b5a: $a5
	sbc  a                                           ; $4b5b: $9f
	dec  c                                           ; $4b5c: $0d
	nop                                              ; $4b5d: $00
	ld   a, [bc]                                     ; $4b5e: $0a
	nop                                              ; $4b5f: $00
	rrca                                             ; $4b60: $0f
	nop                                              ; $4b61: $00
	ld   bc, $9201                                   ; $4b62: $01 $01 $92
	ld   [hl], c                                     ; $4b65: $71
	ld   [hl], h                                     ; $4b66: $74
	adc  l                                           ; $4b67: $8d
	sub  [hl]                                        ; $4b68: $96
	ld   d, h                                        ; $4b69: $54
	ld   e, c                                        ; $4b6a: $59
	ld   a, b                                        ; $4b6b: $78
	sbc  a                                           ; $4b6c: $9f
	dec  c                                           ; $4b6d: $0d
	nop                                              ; $4b6e: $00
	ld   a, [bc]                                     ; $4b6f: $0a
	inc  e                                           ; $4b70: $1c
	inc  b                                           ; $4b71: $04
	ld   bc, $0101                                   ; $4b72: $01 $01 $01
	ld   d, h                                        ; $4b75: $54
	and  c                                           ; $4b76: $a1
	sbc  a                                           ; $4b77: $9f
	dec  c                                           ; $4b78: $0d
	ld   h, [hl]                                     ; $4b79: $66
	sub  c                                           ; $4b7a: $91
	ld   d, b                                        ; $4b7b: $50
	sbc  [hl]                                        ; $4b7c: $9e
	ld   a, l                                        ; $4b7d: $7d
	ld   h, [hl]                                     ; $4b7e: $66
	adc  a                                           ; $4b7f: $8f
	sbc  c                                           ; $4b80: $99
	sub  [hl]                                        ; $4b81: $96
	ei                                               ; $4b82: $fb
	ld   a, [$000d]                                  ; $4b83: $fa $0d $00
	ld   a, [bc]                                     ; $4b86: $0a
	ld   a, [de]                                     ; $4b87: $1a
	inc  b                                           ; $4b88: $04
	rlca                                             ; $4b89: $07
	dec  hl                                          ; $4b8a: $2b
	ld   bc, $0402                                   ; $4b8b: $01 $02 $04
	ld   bc, $2002                                   ; $4b8e: $01 $02 $20
	nop                                              ; $4b91: $00
	rlca                                             ; $4b92: $07
	dec  hl                                          ; $4b93: $2b
	ld   bc, $0402                                   ; $4b94: $01 $02 $04
	ld   bc, $2001                                   ; $4b97: $01 $01 $20
	nop                                              ; $4b9a: $00
	inc  e                                           ; $4b9b: $1c
	inc  b                                           ; $4b9c: $04
	inc  bc                                          ; $4b9d: $03
	inc  bc                                          ; $4b9e: $03
	dec  e                                           ; $4b9f: $1d
	ld   b, b                                        ; $4ba0: $40
	inc  d                                           ; $4ba1: $14
	inc  bc                                          ; $4ba2: $03
	inc  d                                           ; $4ba3: $14
	ld   bc, $2901                                   ; $4ba4: $01 $01 $29
	nop                                              ; $4ba7: $00
	ld   bc, $526f                                   ; $4ba8: $01 $6f $52
	ld   [bc], a                                     ; $4bab: $02
	inc  de                                          ; $4bac: $13
	ld   l, a                                        ; $4bad: $6f
	sub  c                                           ; $4bae: $91
	and  c                                           ; $4baf: $a1
	dec  c                                           ; $4bb0: $0d
	sub  b                                           ; $4bb1: $90
	ld   d, h                                        ; $4bb2: $54
	ld   h, a                                        ; $4bb3: $67
	ld   h, c                                        ; $4bb4: $61
	ld   h, l                                        ; $4bb5: $65
	sbc  [hl]                                        ; $4bb6: $9e
	ld   e, d                                        ; $4bb7: $5a
	and  c                                           ; $4bb8: $a1
	ld   a, [hl]                                     ; $4bb9: $7e
	sub  a                                           ; $4bba: $97
	ld   a, b                                        ; $4bbb: $78
	ld   d, d                                        ; $4bbc: $52
	halt                                             ; $4bbd: $76
	dec  c                                           ; $4bbe: $0d
	pop  bc                                          ; $4bbf: $c1
	db   $e3                                         ; $4bc0: $e3
	ld   l, [hl]                                     ; $4bc1: $6e
	sub  [hl]                                        ; $4bc2: $96
	sbc  a                                           ; $4bc3: $9f
	dec  c                                           ; $4bc4: $0d
	nop                                              ; $4bc5: $00
	ld   a, [bc]                                     ; $4bc6: $0a
	nop                                              ; $4bc7: $00
	inc  e                                           ; $4bc8: $1c
	inc  b                                           ; $4bc9: $04
	ld   bc, $1d01                                   ; $4bca: $01 $01 $1d
	ld   b, b                                        ; $4bcd: $40
	inc  d                                           ; $4bce: $14
	inc  bc                                          ; $4bcf: $03
	inc  d                                           ; $4bd0: $14
	ld   bc, $2803                                   ; $4bd1: $01 $03 $28
	nop                                              ; $4bd4: $00
	ld   bc, $526f                                   ; $4bd5: $01 $6f $52
	ld   [bc], a                                     ; $4bd8: $02
	inc  de                                          ; $4bd9: $13
	ld   l, a                                        ; $4bda: $6f
	sub  c                                           ; $4bdb: $91
	and  c                                           ; $4bdc: $a1
	dec  c                                           ; $4bdd: $0d
	cp   d                                           ; $4bde: $ba
	or   l                                           ; $4bdf: $b5
	and  l                                           ; $4be0: $a5
	sbc  [hl]                                        ; $4be1: $9e
	cp   d                                           ; $4be2: $ba
	or   l                                           ; $4be3: $b5
	and  l                                           ; $4be4: $a5
	ld   a, [$000d]                                  ; $4be5: $fa $0d $00
	ld   a, [bc]                                     ; $4be8: $0a
	ld   bc, $546b                                   ; $4be9: $01 $6b $54
	ld   l, [hl]                                     ; $4bec: $6e
	sbc  [hl]                                        ; $4bed: $9e
	ld   h, c                                        ; $4bee: $61
	and  c                                           ; $4bef: $a1
	sub  d                                           ; $4bf0: $92
	dec  c                                           ; $4bf1: $0d
	and  e                                           ; $4bf2: $a3
	and  l                                           ; $4bf3: $a5
	db   $ec                                         ; $4bf4: $ec
	cp   d                                           ; $4bf5: $ba
	ld   a, h                                        ; $4bf6: $7c
	add  [hl]                                        ; $4bf7: $86
	sub  d                                           ; $4bf8: $92
	ld   a, c                                        ; $4bf9: $79
	ld   e, e                                        ; $4bfa: $5b
	ld   [hl], h                                     ; $4bfb: $74
	sub  [hl]                                        ; $4bfc: $96
	sbc  a                                           ; $4bfd: $9f
	dec  c                                           ; $4bfe: $0d
	nop                                              ; $4bff: $00
	ld   a, [bc]                                     ; $4c00: $0a
	ld   bc, $8962                                   ; $4c01: $01 $62 $89
	ld   d, h                                        ; $4c04: $54
	add  c                                           ; $4c05: $81
	ld   a, c                                        ; $4c06: $79
	sbc  [hl]                                        ; $4c07: $9e
	ld   d, d                                        ; $4c08: $52
	ld   d, d                                        ; $4c09: $52
	sub  b                                           ; $4c0a: $90
	ld   a, h                                        ; $4c0b: $7c
	dec  c                                           ; $4c0c: $0d
	adc  l                                           ; $4c0d: $8d
	ld   l, c                                        ; $4c0e: $69
	ld   [hl], h                                     ; $4c0f: $74
	ld   d, b                                        ; $4c10: $50
	ld   h, b                                        ; $4c11: $60
	sbc  c                                           ; $4c12: $99
	ld   e, c                                        ; $4c13: $59
	sub  a                                           ; $4c14: $97
	sbc  a                                           ; $4c15: $9f
	dec  c                                           ; $4c16: $0d
	ld   a, e                                        ; $4c17: $7b
	sbc  a                                           ; $4c18: $9f
	dec  c                                           ; $4c19: $0d
	nop                                              ; $4c1a: $00
	ld   a, [bc]                                     ; $4c1b: $0a
	add  hl, de                                      ; $4c1c: $19
	dec  b                                           ; $4c1d: $05
	ld   [bc], a                                     ; $4c1e: $02
	ld   [bc], a                                     ; $4c1f: $02
	ld   a, a                                        ; $4c20: $7f
	ld   e, l                                        ; $4c21: $5d
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	ld   [bc], a                                     ; $4c24: $02
	ld   a, a                                        ; $4c25: $7f
	ld   e, c                                        ; $4c26: $59
	ld   a, b                                        ; $4c27: $78
	ld   d, d                                        ; $4c28: $52
	nop                                              ; $4c29: $00
	ld   bc, $a307                                   ; $4c2a: $01 $07 $a3
	ld   bc, $0302                                   ; $4c2d: $01 $02 $03
	ld   bc, $2000                                   ; $4c30: $01 $00 $20
	nop                                              ; $4c33: $00
	rlca                                             ; $4c34: $07
	db   $eb                                         ; $4c35: $eb
	ld   bc, $0302                                   ; $4c36: $01 $02 $03
	ld   bc, $2001                                   ; $4c39: $01 $01 $20
	nop                                              ; $4c3c: $00
	ld   b, $2d                                      ; $4c3d: $06 $2d
	ld   [bc], a                                     ; $4c3f: $02
	rrca                                             ; $4c40: $0f
	nop                                              ; $4c41: $00
	ld   bc, $5401                                   ; $4c42: $01 $01 $54
	and  c                                           ; $4c45: $a1
	sbc  [hl]                                        ; $4c46: $9e
	ld   h, [hl]                                     ; $4c47: $66
	sub  c                                           ; $4c48: $91
	ld   d, b                                        ; $4c49: $50
	ld   [bc], a                                     ; $4c4a: $02
	ld   a, a                                        ; $4c4b: $7f
	ld   e, l                                        ; $4c4c: $5d
	sub  [hl]                                        ; $4c4d: $96
	sbc  a                                           ; $4c4e: $9f
	dec  c                                           ; $4c4f: $0d
	ld   [bc], a                                     ; $4c50: $02
	and  l                                           ; $4c51: $a5
	inc  b                                           ; $4c52: $04
	rst  $28                                         ; $4c53: $ef
	ld   l, [hl]                                     ; $4c54: $6e
	ld   a, e                                        ; $4c55: $7b
	sbc  a                                           ; $4c56: $9f
	dec  c                                           ; $4c57: $0d
	nop                                              ; $4c58: $00
	ld   a, [bc]                                     ; $4c59: $0a
	inc  e                                           ; $4c5a: $1c
	inc  b                                           ; $4c5b: $04
	ld   bc, $0101                                   ; $4c5c: $01 $01 $01
	ld   l, e                                        ; $4c5f: $6b
	ld   d, h                                        ; $4c60: $54
	ld   l, [hl]                                     ; $4c61: $6e
	sub  [hl]                                        ; $4c62: $96
	sbc  a                                           ; $4c63: $9f
	dec  c                                           ; $4c64: $0d
	ld   h, [hl]                                     ; $4c65: $66
	sub  c                                           ; $4c66: $91
	ld   d, b                                        ; $4c67: $50
	sbc  [hl]                                        ; $4c68: $9e
	and  e                                           ; $4c69: $a3
	and  l                                           ; $4c6a: $a5
	db   $ec                                         ; $4c6b: $ec
	cp   d                                           ; $4c6c: $ba
	dec  c                                           ; $4c6d: $0d
	nop                                              ; $4c6e: $00
	dec  b                                           ; $4c6f: $05
	add  b                                           ; $4c70: $80
	ld   b, b                                        ; $4c71: $40
	ld   bc, $0001                                   ; $4c72: $01 $01 $00
	ld   bc, $718c                                   ; $4c75: $01 $8c $71
	ld   [hl], h                                     ; $4c78: $74
	sbc  c                                           ; $4c79: $99
	ld   e, c                                        ; $4c7a: $59
	sub  a                                           ; $4c7b: $97
	ld   a, e                                        ; $4c7c: $7b
	sbc  a                                           ; $4c7d: $9f
	dec  c                                           ; $4c7e: $0d
	nop                                              ; $4c7f: $00
	ld   a, [bc]                                     ; $4c80: $0a
	dec  b                                           ; $4c81: $05
	ld   b, b                                        ; $4c82: $40
	ld   h, h                                        ; $4c83: $64
	ld   [bc], a                                     ; $4c84: $02
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	rrca                                             ; $4c88: $0f
	nop                                              ; $4c89: $00
	ld   bc, $6201                                   ; $4c8a: $01 $01 $62
	adc  a                                           ; $4c8d: $8f
	and  c                                           ; $4c8e: $a1
	ld   a, e                                        ; $4c8f: $7b
	sbc  [hl]                                        ; $4c90: $9e
	and  e                                           ; $4c91: $a3
	and  l                                           ; $4c92: $a5
	db   $ec                                         ; $4c93: $ec
	cp   d                                           ; $4c94: $ba
	sbc  a                                           ; $4c95: $9f
	dec  c                                           ; $4c96: $0d
	ld   [bc], a                                     ; $4c97: $02
	and  l                                           ; $4c98: $a5
	inc  b                                           ; $4c99: $04
	rst  $28                                         ; $4c9a: $ef
	ld   a, l                                        ; $4c9b: $7d
	ld   l, a                                        ; $4c9c: $6f
	sub  l                                           ; $4c9d: $95
	ld   [hl], c                                     ; $4c9e: $71
	halt                                             ; $4c9f: $76
	inc  b                                           ; $4ca0: $04
	di                                               ; $4ca1: $f3
	ld   [bc], a                                     ; $4ca2: $02
	jp   $0d5a                                       ; $4ca3: $c3 $5a $0d


	ld   d, b                                        ; $4ca6: $50
	sbc  c                                           ; $4ca7: $99
	and  c                                           ; $4ca8: $a1
	ld   l, [hl]                                     ; $4ca9: $6e
	sub  [hl]                                        ; $4caa: $96
	sbc  a                                           ; $4cab: $9f
	dec  c                                           ; $4cac: $0d
	nop                                              ; $4cad: $00
	ld   a, [bc]                                     ; $4cae: $0a
	inc  e                                           ; $4caf: $1c
	inc  b                                           ; $4cb0: $04
	nop                                              ; $4cb1: $00
	nop                                              ; $4cb2: $00
	ld   bc, $fc83                                   ; $4cb3: $01 $83 $fc
	and  c                                           ; $4cb6: $a1
	sbc  a                                           ; $4cb7: $9f
	dec  c                                           ; $4cb8: $0d
	ld   h, [hl]                                     ; $4cb9: $66
	sub  c                                           ; $4cba: $91
	ld   d, b                                        ; $4cbb: $50
	sbc  [hl]                                        ; $4cbc: $9e
	ld   h, l                                        ; $4cbd: $65
	sub  l                                           ; $4cbe: $95
	ld   d, h                                        ; $4cbf: $54
	ld   e, d                                        ; $4cc0: $5a
	ld   a, b                                        ; $4cc1: $78
	ld   d, d                                        ; $4cc2: $52
	ld   a, e                                        ; $4cc3: $7b
	rst  $38                                         ; $4cc4: $ff
	rst  $38                                         ; $4cc5: $ff
	dec  c                                           ; $4cc6: $0d
	nop                                              ; $4cc7: $00
	ld   a, [bc]                                     ; $4cc8: $0a
	nop                                              ; $4cc9: $00
	inc  e                                           ; $4cca: $1c
	inc  b                                           ; $4ccb: $04
	inc  bc                                          ; $4ccc: $03
	inc  bc                                          ; $4ccd: $03
	dec  e                                           ; $4cce: $1d
	ld   b, b                                        ; $4ccf: $40
	inc  d                                           ; $4cd0: $14
	inc  bc                                          ; $4cd1: $03
	inc  d                                           ; $4cd2: $14
	ld   bc, $2901                                   ; $4cd3: $01 $01 $29
	nop                                              ; $4cd6: $00
	ld   bc, $9e50                                   ; $4cd7: $01 $50 $9e
	and  l                                           ; $4cda: $a5
	and  $6b                                         ; $4cdb: $e6 $6b
	ld   d, h                                        ; $4cdd: $54
	ld   a, b                                        ; $4cde: $78
	ld   e, c                                        ; $4cdf: $59
	ld   e, b                                        ; $4ce0: $58
	ld   h, l                                        ; $4ce1: $65
	ld   [hl], h                                     ; $4ce2: $74
	sbc  c                                           ; $4ce3: $99
	rst  $38                                         ; $4ce4: $ff
	rst  $38                                         ; $4ce5: $ff
	dec  c                                           ; $4ce6: $0d
	ld   h, [hl]                                     ; $4ce7: $66
	sub  c                                           ; $4ce8: $91
	sbc  [hl]                                        ; $4ce9: $9e
	ld   d, d                                        ; $4cea: $52
	ld   d, d                                        ; $4ceb: $52
	sub  [hl]                                        ; $4cec: $96
	sbc  a                                           ; $4ced: $9f
	dec  c                                           ; $4cee: $0d
	pop  de                                          ; $4cef: $d1
	and  l                                           ; $4cf0: $a5
	pop  de                                          ; $4cf1: $d1
	and  l                                           ; $4cf2: $a5
	sbc  a                                           ; $4cf3: $9f
	dec  c                                           ; $4cf4: $0d
	nop                                              ; $4cf5: $00
	ld   a, [bc]                                     ; $4cf6: $0a
	nop                                              ; $4cf7: $00
	nop                                              ; $4cf8: $00
	inc  bc                                          ; $4cf9: $03
	ld   l, d                                        ; $4cfa: $6a
	ld   [bc], a                                     ; $4cfb: $02
	nop                                              ; $4cfc: $00
	ld   hl, $0f00                                   ; $4cfd: $21 $00 $0f
	nop                                              ; $4d00: $00
	ld   bc, $9d0e                                   ; $4d01: $01 $0e $9d
	dec  c                                           ; $4d04: $0d
	dec  b                                           ; $4d05: $05
	ld   [bc], a                                     ; $4d06: $02
	ld   [bc], a                                     ; $4d07: $02
	ld   bc, $0301                                   ; $4d08: $01 $01 $03
	ld   d, b                                        ; $4d0b: $50
	sbc  [hl]                                        ; $4d0c: $9e
	ld   [bc], a                                     ; $4d0d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d0e: $cf
	dec  b                                           ; $4d0f: $05
	ld   a, [de]                                     ; $4d10: $1a
	ld   h, e                                        ; $4d11: $63
	and  c                                           ; $4d12: $a1
	ld   l, [hl]                                     ; $4d13: $6e
	sbc  a                                           ; $4d14: $9f
	dec  c                                           ; $4d15: $0d
	db   $10                                         ; $4d16: $10
	inc  b                                           ; $4d17: $04
	ld   c, c                                        ; $4d18: $49
	adc  d                                           ; $4d19: $8a
	and  c                                           ; $4d1a: $a1
	sub  d                                           ; $4d1b: $92
	sbc  b                                           ; $4d1c: $98
	ld   h, l                                        ; $4d1d: $65
	ld   [hl], h                                     ; $4d1e: $74
	sbc  c                                           ; $4d1f: $99
	ld   a, h                                        ; $4d20: $7c
	dec  c                                           ; $4d21: $0d
	db   $10                                         ; $4d22: $10
	ld   e, c                                        ; $4d23: $59
	ld   a, b                                        ; $4d24: $78
	rst  $38                                         ; $4d25: $ff
	rst  $38                                         ; $4d26: $ff
	ld   bc, $0d04                                   ; $4d27: $01 $04 $0d
	nop                                              ; $4d2a: $00
	ld   a, [bc]                                     ; $4d2b: $0a
	add  hl, de                                      ; $4d2c: $19
	dec  b                                           ; $4d2d: $05
	inc  bc                                          ; $4d2e: $03
	ld   b, $04                                      ; $4d2f: $06 $04
	ld   e, l                                        ; $4d31: $5d
	ld   l, c                                        ; $4d32: $69
	adc  h                                           ; $4d33: $8c
	ld   [hl], c                                     ; $4d34: $71
	ld   [hl], h                                     ; $4d35: $74
	adc  l                                           ; $4d36: $8d
	sbc  c                                           ; $4d37: $99
	nop                                              ; $4d38: $00
	nop                                              ; $4d39: $00
	sbc  l                                           ; $4d3a: $9d
	ld   e, d                                        ; $4d3b: $5a
	adc  h                                           ; $4d3c: $8c
	adc  h                                           ; $4d3d: $8c
	and  b                                           ; $4d3e: $a0
	ld   [bc], a                                     ; $4d3f: $02
	sbc  l                                           ; $4d40: $9d
	ld   [hl], c                                     ; $4d41: $71
	ld   [hl], h                                     ; $4d42: $74
	adc  l                                           ; $4d43: $8d
	sbc  c                                           ; $4d44: $99
	nop                                              ; $4d45: $00
	ld   bc, $4904                                   ; $4d46: $01 $04 $49
	ld   h, l                                        ; $4d49: $65
	ld   [hl], h                                     ; $4d4a: $74
	sbc  c                                           ; $4d4b: $99
	ld   a, h                                        ; $4d4c: $7c
	ld   e, c                                        ; $4d4d: $59
	ld   [bc], a                                     ; $4d4e: $02
	jp   nz, $005d                                   ; $4d4f: $c2 $5d $00

	ld   [bc], a                                     ; $4d52: $02
	rlca                                             ; $4d53: $07
	ld   [hl], d                                     ; $4d54: $72
	nop                                              ; $4d55: $00
	ld   [bc], a                                     ; $4d56: $02
	inc  bc                                          ; $4d57: $03
	ld   bc, $2000                                   ; $4d58: $01 $00 $20
	nop                                              ; $4d5b: $00
	rlca                                             ; $4d5c: $07
	inc  bc                                          ; $4d5d: $03
	ld   bc, $0302                                   ; $4d5e: $01 $02 $03
	ld   bc, $2001                                   ; $4d61: $01 $01 $20
	nop                                              ; $4d64: $00
	rlca                                             ; $4d65: $07
	rst  JumpTable                                         ; $4d66: $df
	ld   [bc], a                                     ; $4d67: $02
	ld   [bc], a                                     ; $4d68: $02
	inc  bc                                          ; $4d69: $03
	ld   bc, $2002                                   ; $4d6a: $01 $02 $20
	nop                                              ; $4d6d: $00
	ld   b, $23                                      ; $4d6e: $06 $23
	inc  b                                           ; $4d70: $04
	dec  c                                           ; $4d71: $0d
	dec  b                                           ; $4d72: $05
	nop                                              ; $4d73: $00
	rrca                                             ; $4d74: $0f
	nop                                              ; $4d75: $00
	ld   bc, $0201                                   ; $4d76: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d79: $cf
	dec  b                                           ; $4d7a: $05
	ld   a, [de]                                     ; $4d7b: $1a
	ld   h, e                                        ; $4d7c: $63
	and  c                                           ; $4d7d: $a1
	sbc  [hl]                                        ; $4d7e: $9e
	inc  b                                           ; $4d7f: $04
	ld   l, l                                        ; $4d80: $6d
	halt                                             ; $4d81: $76
	dec  b                                           ; $4d82: $05
	dec  bc                                          ; $4d83: $0b
	ld   a, h                                        ; $4d84: $7c
	inc  bc                                          ; $4d85: $03
	adc  e                                           ; $4d86: $8b
	ld   [bc], a                                     ; $4d87: $02
	sub  [hl]                                        ; $4d88: $96
	and  b                                           ; $4d89: $a0
	dec  c                                           ; $4d8a: $0d
	ld   h, l                                        ; $4d8b: $65
	ld   [hl], h                                     ; $4d8c: $74
	adc  l                                           ; $4d8d: $8d
	adc  h                                           ; $4d8e: $8c
	ld   l, c                                        ; $4d8f: $69
	and  c                                           ; $4d90: $a1
	ld   e, c                                        ; $4d91: $59
	ld   sp, hl                                      ; $4d92: $f9
	dec  c                                           ; $4d93: $0d
	nop                                              ; $4d94: $00
	ld   a, [bc]                                     ; $4d95: $0a
	inc  e                                           ; $4d96: $1c
	dec  b                                           ; $4d97: $05
	inc  b                                           ; $4d98: $04
	inc  b                                           ; $4d99: $04
	dec  e                                           ; $4d9a: $1d
	ld   b, b                                        ; $4d9b: $40
	dec  d                                           ; $4d9c: $15
	inc  bc                                          ; $4d9d: $03
	dec  d                                           ; $4d9e: $15
	ld   bc, $2802                                   ; $4d9f: $01 $02 $28
	nop                                              ; $4da2: $00
	ld   bc, $9ea3                                   ; $4da3: $01 $a3 $9e
	and  e                                           ; $4da6: $a3
	call c, $9f59                                    ; $4da7: $dc $59 $9f
	dec  c                                           ; $4daa: $0d
	ld   a, b                                        ; $4dab: $78
	sbc  [hl]                                        ; $4dac: $9e
	ld   a, b                                        ; $4dad: $78
	ld   a, c                                        ; $4dae: $79
	ld   h, l                                        ; $4daf: $65
	sub  l                                           ; $4db0: $95
	ei                                               ; $4db1: $fb
	sub  b                                           ; $4db2: $90
	ld   a, b                                        ; $4db3: $78
	ld   d, d                                        ; $4db4: $52
	ld   h, c                                        ; $4db5: $61
	halt                                             ; $4db6: $76
	dec  c                                           ; $4db7: $0d
	ld   [bc], a                                     ; $4db8: $02
	sbc  l                                           ; $4db9: $9d
	ld   d, h                                        ; $4dba: $54
	ld   [hl], h                                     ; $4dbb: $74
	and  c                                           ; $4dbc: $a1
	ld   a, h                                        ; $4dbd: $7c
	sbc  a                                           ; $4dbe: $9f
	dec  c                                           ; $4dbf: $0d
	nop                                              ; $4dc0: $00
	ld   a, [bc]                                     ; $4dc1: $0a
	ld   bc, $a16b                                   ; $4dc2: $01 $6b $a1
	ld   a, b                                        ; $4dc5: $78
	ld   h, c                                        ; $4dc6: $61
	halt                                             ; $4dc7: $76
	ld   [bc], a                                     ; $4dc8: $02
	sbc  l                                           ; $4dc9: $9d
	ld   d, h                                        ; $4dca: $54
	halt                                             ; $4dcb: $76
	ld   [hl], c                                     ; $4dcc: $71
	ld   l, l                                        ; $4dcd: $6d
	sub  a                                           ; $4dce: $97
	dec  c                                           ; $4dcf: $0d
	rst  JumpTable                                         ; $4dd0: $df
	db   $ec                                         ; $4dd1: $ec
	and  e                                           ; $4dd2: $a3
	ld   a, l                                        ; $4dd3: $7d
	and  c                                           ; $4dd4: $a1
	ld   a, c                                        ; $4dd5: $79
	inc  bc                                          ; $4dd6: $03
	ld   hl, sp-$69                                  ; $4dd7: $f8 $97
	sbc  d                                           ; $4dd9: $9a
	sbc  c                                           ; $4dda: $99
	ld   [hl], l                                     ; $4ddb: $75
	sbc  a                                           ; $4ddc: $9f
	dec  c                                           ; $4ddd: $0d
	nop                                              ; $4dde: $00
	ld   a, [bc]                                     ; $4ddf: $0a
	ld   bc, $5063                                   ; $4de0: $01 $63 $50
	sbc  [hl]                                        ; $4de3: $9e
	ld   [bc], a                                     ; $4de4: $02
	ld   h, l                                        ; $4de5: $65
	ld   d, [hl]                                     ; $4de6: $56
	ld   [bc], a                                     ; $4de7: $02
	jp   Jump_050_667c                               ; $4de8: $c3 $7c $66


	sub  c                                           ; $4deb: $91
	adc  h                                           ; $4dec: $8c
	sub  d                                           ; $4ded: $92
	ld   e, c                                        ; $4dee: $59
	sub  a                                           ; $4def: $97
	dec  c                                           ; $4df0: $0d
	ld   d, b                                        ; $4df1: $50
	ld   [hl], c                                     ; $4df2: $71
	ld   l, a                                        ; $4df3: $6f
	add  [hl]                                        ; $4df4: $86
	ld   d, d                                        ; $4df5: $52
	ld   [hl], c                                     ; $4df6: $71
	ld   [hl], h                                     ; $4df7: $74
	ld   e, l                                        ; $4df8: $5d
	sbc  d                                           ; $4df9: $9a
	add  [hl]                                        ; $4dfa: $86
	and  c                                           ; $4dfb: $a1
	ld   e, c                                        ; $4dfc: $59
	sbc  a                                           ; $4dfd: $9f
	dec  c                                           ; $4dfe: $0d
	nop                                              ; $4dff: $00
	ld   a, [bc]                                     ; $4e00: $0a
	nop                                              ; $4e01: $00
	dec  c                                           ; $4e02: $0d
	dec  b                                           ; $4e03: $05
	nop                                              ; $4e04: $00
	rrca                                             ; $4e05: $0f
	nop                                              ; $4e06: $00
	ld   bc, $0201                                   ; $4e07: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e0a: $cf
	dec  b                                           ; $4e0b: $05
	ld   a, [de]                                     ; $4e0c: $1a
	ld   h, e                                        ; $4e0d: $63
	and  c                                           ; $4e0e: $a1
	sbc  a                                           ; $4e0f: $9f
	ld   e, b                                        ; $4e10: $58
	ld   [bc], a                                     ; $4e11: $02
	add  b                                           ; $4e12: $80
	ld   d, d                                        ; $4e13: $52
	ld   e, d                                        ; $4e14: $5a
	ld   d, b                                        ; $4e15: $50
	sbc  b                                           ; $4e16: $98
	adc  h                                           ; $4e17: $8c
	ld   h, a                                        ; $4e18: $67
	sbc  a                                           ; $4e19: $9f
	dec  c                                           ; $4e1a: $0d
	inc  b                                           ; $4e1b: $04
	ld   l, l                                        ; $4e1c: $6d
	inc  bc                                          ; $4e1d: $03
	inc  b                                           ; $4e1e: $04
	inc  b                                           ; $4e1f: $04
	di                                               ; $4e20: $f3
	ld   a, h                                        ; $4e21: $7c
	ld   [bc], a                                     ; $4e22: $02
	jr   c, jr_050_4e29                              ; $4e23: $38 $04

	ld   d, d                                        ; $4e25: $52
	ld   e, d                                        ; $4e26: $5a
	inc  b                                           ; $4e27: $04
	db   $e3                                         ; $4e28: $e3

jr_050_4e29:
	ld   h, l                                        ; $4e29: $65
	ld   d, d                                        ; $4e2a: $52
	and  c                                           ; $4e2b: $a1
	dec  c                                           ; $4e2c: $0d
	ld   [hl], l                                     ; $4e2d: $75
	ld   h, a                                        ; $4e2e: $67
	ld   e, a                                        ; $4e2f: $5f
	ld   [hl], a                                     ; $4e30: $77
	sbc  a                                           ; $4e31: $9f
	ld   [hl], l                                     ; $4e32: $75
	ld   e, e                                        ; $4e33: $5b
	sbc  d                                           ; $4e34: $9a
	ld   a, [hl]                                     ; $4e35: $7e
	rst  $38                                         ; $4e36: $ff
	rst  $38                                         ; $4e37: $ff
	dec  c                                           ; $4e38: $0d
	nop                                              ; $4e39: $00
	ld   a, [bc]                                     ; $4e3a: $0a
	add  hl, de                                      ; $4e3b: $19
	dec  b                                           ; $4e3c: $05
	inc  bc                                          ; $4e3d: $03
	inc  bc                                          ; $4e3e: $03
	ld   e, c                                        ; $4e3f: $59
	inc  bc                                          ; $4e40: $03
	dec  bc                                          ; $4e41: $0b
	ld   [hl], l                                     ; $4e42: $75
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	ld   [bc], a                                     ; $4e45: $02
	ld   b, c                                        ; $4e46: $41
	inc  bc                                          ; $4e47: $03
	dec  bc                                          ; $4e48: $0b
	ld   [hl], l                                     ; $4e49: $75

jr_050_4e4a:
	nop                                              ; $4e4a: $00
	ld   bc, $bd04                                   ; $4e4b: $01 $04 $bd
	ld   b, $4a                                      ; $4e4e: $06 $4a
	inc  bc                                          ; $4e50: $03
	dec  bc                                          ; $4e51: $0b
	ld   [hl], l                                     ; $4e52: $75
	nop                                              ; $4e53: $00
	ld   [bc], a                                     ; $4e54: $02
	rlca                                             ; $4e55: $07
	ld   [hl], h                                     ; $4e56: $74
	ld   bc, $0302                                   ; $4e57: $01 $02 $03
	ld   bc, $2000                                   ; $4e5a: $01 $00 $20
	nop                                              ; $4e5d: $00
	rlca                                             ; $4e5e: $07
	pop  bc                                          ; $4e5f: $c1
	ld   bc, $0302                                   ; $4e60: $01 $02 $03
	ld   bc, $2001                                   ; $4e63: $01 $01 $20
	nop                                              ; $4e66: $00
	rlca                                             ; $4e67: $07
	ld   c, $02                                      ; $4e68: $0e $02
	ld   [bc], a                                     ; $4e6a: $02
	inc  bc                                          ; $4e6b: $03
	ld   bc, $2002                                   ; $4e6c: $01 $02 $20
	nop                                              ; $4e6f: $00
	ld   b, $63                                      ; $4e70: $06 $63
	ld   [bc], a                                     ; $4e72: $02
	rrca                                             ; $4e73: $0f
	nop                                              ; $4e74: $00
	ld   bc, $0301                                   ; $4e75: $01 $01 $03
	ld   e, c                                        ; $4e78: $59
	inc  bc                                          ; $4e79: $03
	dec  bc                                          ; $4e7a: $0b
	ld   [hl], l                                     ; $4e7b: $75
	ld   e, b                                        ; $4e7c: $58
	ld   [bc], a                                     ; $4e7d: $02
	add  b                                           ; $4e7e: $80
	ld   d, d                                        ; $4e7f: $52
	ld   h, l                                        ; $4e80: $65
	adc  h                                           ; $4e81: $8c
	ld   h, a                                        ; $4e82: $67
	sbc  a                                           ; $4e83: $9f
	dec  c                                           ; $4e84: $0d
	nop                                              ; $4e85: $00
	ld   a, [bc]                                     ; $4e86: $0a
	inc  e                                           ; $4e87: $1c
	dec  b                                           ; $4e88: $05
	inc  bc                                          ; $4e89: $03
	inc  bc                                          ; $4e8a: $03
	ld   bc, $ff8d                                   ; $4e8b: $01 $8d $ff
	rst  $38                                         ; $4e8e: $ff
	inc  bc                                          ; $4e8f: $03
	ld   e, c                                        ; $4e90: $59
	inc  bc                                          ; $4e91: $03
	dec  bc                                          ; $4e92: $0b
	rst  $38                                         ; $4e93: $ff
	rst  $38                                         ; $4e94: $ff
	dec  c                                           ; $4e95: $0d
	nop                                              ; $4e96: $00

jr_050_4e97:
	inc  e                                           ; $4e97: $1c
	dec  b                                           ; $4e98: $05
	ld   [bc], a                                     ; $4e99: $02
	ld   [bc], a                                     ; $4e9a: $02
	ld   bc, $a102                                   ; $4e9b: $01 $02 $a1
	inc  bc                                          ; $4e9e: $03
	and  b                                           ; $4e9f: $a0
	ld   l, a                                        ; $4ea0: $6f
	ld   a, l                                        ; $4ea1: $7d
	inc  b                                           ; $4ea2: $04
	sbc  [hl]                                        ; $4ea3: $9e
	ld   e, c                                        ; $4ea4: $59
	sbc  c                                           ; $4ea5: $99
	ld   e, a                                        ; $4ea6: $5f
	ld   [hl], a                                     ; $4ea7: $77
	rst  $38                                         ; $4ea8: $ff
	rst  $38                                         ; $4ea9: $ff
	dec  c                                           ; $4eaa: $0d
	ld   l, e                                        ; $4eab: $6b
	sbc  d                                           ; $4eac: $9a
	ld   a, l                                        ; $4ead: $7d
	ld   l, a                                        ; $4eae: $6f
	sub  l                                           ; $4eaf: $95
	ld   [hl], c                                     ; $4eb0: $71
	halt                                             ; $4eb1: $76
	ldh  [c], a                                      ; $4eb2: $e2
	db   $ec                                         ; $4eb3: $ec
	ld   a, b                                        ; $4eb4: $78
	dec  b                                           ; $4eb5: $05
	jr   nz, jr_050_4e4a                             ; $4eb6: $20 $92

	ld   a, b                                        ; $4eb8: $78
	sbc  a                                           ; $4eb9: $9f
	dec  c                                           ; $4eba: $0d
	nop                                              ; $4ebb: $00
	ld   a, [bc]                                     ; $4ebc: $0a
	ld   b, $b0                                      ; $4ebd: $06 $b0
	ld   [bc], a                                     ; $4ebf: $02
	rrca                                             ; $4ec0: $0f
	nop                                              ; $4ec1: $00
	ld   bc, $0201                                   ; $4ec2: $01 $01 $02
	ld   b, c                                        ; $4ec5: $41
	inc  bc                                          ; $4ec6: $03
	dec  bc                                          ; $4ec7: $0b
	ld   [hl], l                                     ; $4ec8: $75
	ld   e, b                                        ; $4ec9: $58
	ld   [bc], a                                     ; $4eca: $02
	add  b                                           ; $4ecb: $80
	ld   d, d                                        ; $4ecc: $52
	ld   h, l                                        ; $4ecd: $65
	adc  h                                           ; $4ece: $8c
	ld   h, a                                        ; $4ecf: $67
	sbc  a                                           ; $4ed0: $9f
	dec  c                                           ; $4ed1: $0d
	nop                                              ; $4ed2: $00
	ld   a, [bc]                                     ; $4ed3: $0a
	inc  e                                           ; $4ed4: $1c
	dec  b                                           ; $4ed5: $05
	inc  bc                                          ; $4ed6: $03
	inc  bc                                          ; $4ed7: $03
	ld   bc, $ff79                                   ; $4ed8: $01 $79 $ff
	rst  $38                                         ; $4edb: $ff
	ld   [bc], a                                     ; $4edc: $02
	ld   b, c                                        ; $4edd: $41
	inc  bc                                          ; $4ede: $03
	dec  bc                                          ; $4edf: $0b
	rst  $38                                         ; $4ee0: $ff
	rst  $38                                         ; $4ee1: $ff
	dec  c                                           ; $4ee2: $0d
	nop                                              ; $4ee3: $00
	inc  e                                           ; $4ee4: $1c
	dec  b                                           ; $4ee5: $05
	ld   [bc], a                                     ; $4ee6: $02
	ld   [bc], a                                     ; $4ee7: $02
	ld   bc, $a102                                   ; $4ee8: $01 $02 $a1
	inc  bc                                          ; $4eeb: $03

jr_050_4eec:
	and  b                                           ; $4eec: $a0
	ld   l, a                                        ; $4eed: $6f
	ld   a, l                                        ; $4eee: $7d
	inc  b                                           ; $4eef: $04
	sbc  [hl]                                        ; $4ef0: $9e
	ld   e, c                                        ; $4ef1: $59
	sbc  c                                           ; $4ef2: $99
	ld   e, a                                        ; $4ef3: $5f
	ld   [hl], a                                     ; $4ef4: $77
	rst  $38                                         ; $4ef5: $ff
	rst  $38                                         ; $4ef6: $ff
	dec  c                                           ; $4ef7: $0d
	ld   l, e                                        ; $4ef8: $6b
	sbc  d                                           ; $4ef9: $9a
	ld   a, l                                        ; $4efa: $7d
	ld   l, a                                        ; $4efb: $6f
	sub  l                                           ; $4efc: $95
	ld   [hl], c                                     ; $4efd: $71
	halt                                             ; $4efe: $76
	ldh  [c], a                                      ; $4eff: $e2
	db   $ec                                         ; $4f00: $ec
	ld   a, b                                        ; $4f01: $78
	dec  b                                           ; $4f02: $05
	jr   nz, jr_050_4e97                             ; $4f03: $20 $92

	ld   a, b                                        ; $4f05: $78
	sbc  a                                           ; $4f06: $9f
	dec  c                                           ; $4f07: $0d
	nop                                              ; $4f08: $00
	ld   a, [bc]                                     ; $4f09: $0a
	ld   b, $b0                                      ; $4f0a: $06 $b0
	ld   [bc], a                                     ; $4f0c: $02
	rrca                                             ; $4f0d: $0f
	nop                                              ; $4f0e: $00
	ld   bc, $0401                                   ; $4f0f: $01 $01 $04
	cp   l                                           ; $4f12: $bd
	ld   b, $4a                                      ; $4f13: $06 $4a
	inc  bc                                          ; $4f15: $03
	dec  bc                                          ; $4f16: $0b
	ld   [hl], l                                     ; $4f17: $75
	ld   e, b                                        ; $4f18: $58
	ld   [bc], a                                     ; $4f19: $02
	add  b                                           ; $4f1a: $80
	ld   d, d                                        ; $4f1b: $52
	ld   h, l                                        ; $4f1c: $65
	adc  h                                           ; $4f1d: $8c
	ld   h, a                                        ; $4f1e: $67
	sbc  a                                           ; $4f1f: $9f
	dec  c                                           ; $4f20: $0d
	nop                                              ; $4f21: $00
	ld   a, [bc]                                     ; $4f22: $0a
	inc  e                                           ; $4f23: $1c
	dec  b                                           ; $4f24: $05
	ld   [bc], a                                     ; $4f25: $02
	ld   [bc], a                                     ; $4f26: $02
	inc  e                                           ; $4f27: $1c
	dec  b                                           ; $4f28: $05
	inc  bc                                          ; $4f29: $03
	inc  bc                                          ; $4f2a: $03
	ld   bc, $ff8f                                   ; $4f2b: $01 $8f $ff
	rst  $38                                         ; $4f2e: $ff
	inc  b                                           ; $4f2f: $04
	cp   l                                           ; $4f30: $bd
	ld   b, $4a                                      ; $4f31: $06 $4a
	inc  bc                                          ; $4f33: $03
	dec  bc                                          ; $4f34: $0b
	rst  $38                                         ; $4f35: $ff
	rst  $38                                         ; $4f36: $ff
	dec  c                                           ; $4f37: $0d
	nop                                              ; $4f38: $00
	inc  e                                           ; $4f39: $1c
	dec  b                                           ; $4f3a: $05
	ld   [bc], a                                     ; $4f3b: $02
	ld   [bc], a                                     ; $4f3c: $02
	ld   bc, $a102                                   ; $4f3d: $01 $02 $a1
	inc  bc                                          ; $4f40: $03
	and  b                                           ; $4f41: $a0
	ld   l, a                                        ; $4f42: $6f
	ld   a, l                                        ; $4f43: $7d
	inc  b                                           ; $4f44: $04
	sbc  [hl]                                        ; $4f45: $9e
	ld   e, c                                        ; $4f46: $59
	sbc  c                                           ; $4f47: $99
	ld   e, a                                        ; $4f48: $5f
	ld   [hl], a                                     ; $4f49: $77
	rst  $38                                         ; $4f4a: $ff
	rst  $38                                         ; $4f4b: $ff
	dec  c                                           ; $4f4c: $0d
	ld   l, e                                        ; $4f4d: $6b
	sbc  d                                           ; $4f4e: $9a
	ld   a, l                                        ; $4f4f: $7d
	ld   l, a                                        ; $4f50: $6f
	sub  l                                           ; $4f51: $95
	ld   [hl], c                                     ; $4f52: $71
	halt                                             ; $4f53: $76
	ldh  [c], a                                      ; $4f54: $e2
	db   $ec                                         ; $4f55: $ec
	ld   a, b                                        ; $4f56: $78
	dec  b                                           ; $4f57: $05
	jr   nz, jr_050_4eec                             ; $4f58: $20 $92

	ld   a, b                                        ; $4f5a: $78
	sbc  a                                           ; $4f5b: $9f
	dec  c                                           ; $4f5c: $0d
	nop                                              ; $4f5d: $00
	ld   a, [bc]                                     ; $4f5e: $0a
	ld   b, $b0                                      ; $4f5f: $06 $b0
	ld   [bc], a                                     ; $4f61: $02
	inc  e                                           ; $4f62: $1c
	dec  b                                           ; $4f63: $05
	ld   [bc], a                                     ; $4f64: $02
	ld   [bc], a                                     ; $4f65: $02
	ld   bc, $5b75                                   ; $4f66: $01 $75 $5b
	sbc  d                                           ; $4f69: $9a
	ld   a, [hl]                                     ; $4f6a: $7e
	rst  $38                                         ; $4f6b: $ff
	rst  $38                                         ; $4f6c: $ff
	ld   a, b                                        ; $4f6d: $78
	and  c                                           ; $4f6e: $a1
	sub  d                                           ; $4f6f: $92
	ld   sp, hl                                      ; $4f70: $f9
	dec  c                                           ; $4f71: $0d
	inc  b                                           ; $4f72: $04
	di                                               ; $4f73: $f3
	ld   e, d                                        ; $4f74: $5a
	inc  b                                           ; $4f75: $04
	sub  $52                                         ; $4f76: $d6 $52
	and  c                                           ; $4f78: $a1
	sub  d                                           ; $4f79: $92
	ld   [hl], c                                     ; $4f7a: $71
	ld   l, l                                        ; $4f7b: $6d
	sub  a                                           ; $4f7c: $97
	dec  c                                           ; $4f7d: $0d
	sub  b                                           ; $4f7e: $90
	ld   d, h                                        ; $4f7f: $54
	ld   d, d                                        ; $4f80: $52
	ld   e, l                                        ; $4f81: $5d
	ld   [hl], l                                     ; $4f82: $75
	sbc  a                                           ; $4f83: $9f
	dec  c                                           ; $4f84: $0d
	nop                                              ; $4f85: $00
	ld   a, [bc]                                     ; $4f86: $0a
	ld   bc, $a502                                   ; $4f87: $01 $02 $a5
	ld   l, a                                        ; $4f8a: $6f
	sub  l                                           ; $4f8b: $95
	ld   [hl], c                                     ; $4f8c: $71
	halt                                             ; $4f8d: $76
	ld   [bc], a                                     ; $4f8e: $02
	ld   h, l                                        ; $4f8f: $65
	ld   d, [hl]                                     ; $4f90: $56
	ld   h, d                                        ; $4f91: $62
	halt                                             ; $4f92: $76
	dec  c                                           ; $4f93: $0d
	ld   h, l                                        ; $4f94: $65
	halt                                             ; $4f95: $76
	sbc  c                                           ; $4f96: $99
	and  c                                           ; $4f97: $a1
	sub  d                                           ; $4f98: $92
	rst  $38                                         ; $4f99: $ff
	rst  $38                                         ; $4f9a: $ff
	dec  c                                           ; $4f9b: $0d
	adc  c                                           ; $4f9c: $89
	ld   a, b                                        ; $4f9d: $78
	sbc  [hl]                                        ; $4f9e: $9e
	adc  h                                           ; $4f9f: $8c
	ld   l, l                                        ; $4fa0: $6d
	ld   a, b                                        ; $4fa1: $78
	sbc  a                                           ; $4fa2: $9f
	dec  c                                           ; $4fa3: $0d
	nop                                              ; $4fa4: $00
	ld   a, [bc]                                     ; $4fa5: $0a
	dec  c                                           ; $4fa6: $0d
	nop                                              ; $4fa7: $00
	nop                                              ; $4fa8: $00
	rrca                                             ; $4fa9: $0f
	nop                                              ; $4faa: $00
	ld   bc, $c106                                   ; $4fab: $01 $06 $c1
	ld   [bc], a                                     ; $4fae: $02
	ld   bc, $7889                                   ; $4faf: $01 $89 $78
	sbc  [hl]                                        ; $4fb2: $9e
	adc  h                                           ; $4fb3: $8c
	ld   l, l                                        ; $4fb4: $6d
	ld   a, b                                        ; $4fb5: $78
	sbc  a                                           ; $4fb6: $9f
	dec  c                                           ; $4fb7: $0d
	nop                                              ; $4fb8: $00
	ld   a, [bc]                                     ; $4fb9: $0a
	dec  c                                           ; $4fba: $0d
	nop                                              ; $4fbb: $00
	nop                                              ; $4fbc: $00
	rrca                                             ; $4fbd: $0f
	nop                                              ; $4fbe: $00
	ld   bc, $0101                                   ; $4fbf: $01 $01 $01
	inc  bc                                          ; $4fc2: $03
	ld   d, b                                        ; $4fc3: $50
	rst  $38                                         ; $4fc4: $ff
	rst  $38                                         ; $4fc5: $ff
	sbc  [hl]                                        ; $4fc6: $9e
	ld   [bc], a                                     ; $4fc7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fc8: $cf
	dec  b                                           ; $4fc9: $05
	ld   a, [de]                                     ; $4fca: $1a
	ld   h, e                                        ; $4fcb: $63
	and  c                                           ; $4fcc: $a1
	dec  c                                           ; $4fcd: $0d
	db   $10                                         ; $4fce: $10
	ld   [bc], a                                     ; $4fcf: $02
	ld   a, a                                        ; $4fd0: $7f
	ld   [hl], c                                     ; $4fd1: $71
	ld   l, a                                        ; $4fd2: $6f
	sub  c                                           ; $4fd3: $91
	ld   [hl], c                                     ; $4fd4: $71
	ld   l, l                                        ; $4fd5: $6d
	rst  $38                                         ; $4fd6: $ff
	rst  $38                                         ; $4fd7: $ff
	ld   bc, $0d04                                   ; $4fd8: $01 $04 $0d
	nop                                              ; $4fdb: $00
	ld   a, [bc]                                     ; $4fdc: $0a
	nop                                              ; $4fdd: $00
	rrca                                             ; $4fde: $0f
	nop                                              ; $4fdf: $00
	ld   bc, $0401                                   ; $4fe0: $01 $01 $04
	ld   c, c                                        ; $4fe3: $49
	and  b                                           ; $4fe4: $a0
	ld   h, l                                        ; $4fe5: $65
	ld   [hl], h                                     ; $4fe6: $74
	sbc  c                                           ; $4fe7: $99
	and  c                                           ; $4fe8: $a1
	ld   [hl], l                                     ; $4fe9: $75
	ld   h, a                                        ; $4fea: $67
	ld   e, c                                        ; $4feb: $59
	ld   sp, hl                                      ; $4fec: $f9
	dec  c                                           ; $4fed: $0d
	ld   [bc], a                                     ; $4fee: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fef: $cf
	dec  b                                           ; $4ff0: $05
	ld   a, [de]                                     ; $4ff1: $1a
	ld   h, e                                        ; $4ff2: $63
	and  c                                           ; $4ff3: $a1
	sbc  a                                           ; $4ff4: $9f
	dec  c                                           ; $4ff5: $0d
	nop                                              ; $4ff6: $00
	ld   a, [bc]                                     ; $4ff7: $0a
	rlca                                             ; $4ff8: $07
	or   $03                                         ; $4ff9: $f6 $03
	inc  bc                                          ; $4ffb: $03
	dec  d                                           ; $4ffc: $15
	ld   bc, $2289                                   ; $4ffd: $01 $89 $22
	nop                                              ; $5000: $00
	inc  e                                           ; $5001: $1c
	dec  b                                           ; $5002: $05
	ld   bc, $0101                                   ; $5003: $01 $01 $01
	ld   [bc], a                                     ; $5006: $02
	or   [hl]                                        ; $5007: $b6
	sub  d                                           ; $5008: $92
	rst  $38                                         ; $5009: $ff
	rst  $38                                         ; $500a: $ff
	dec  c                                           ; $500b: $0d
	nop                                              ; $500c: $00
	ld   a, [bc]                                     ; $500d: $0a
	rrca                                             ; $500e: $0f
	nop                                              ; $500f: $00
	ld   bc, $5601                                   ; $5010: $01 $01 $56
	rst  $38                                         ; $5013: $ff
	rst  $38                                         ; $5014: $ff
	ld   sp, hl                                      ; $5015: $f9
	dec  c                                           ; $5016: $0d
	nop                                              ; $5017: $00
	ld   a, [bc]                                     ; $5018: $0a
	inc  e                                           ; $5019: $1c
	dec  b                                           ; $501a: $05
	dec  b                                           ; $501b: $05
	dec  b                                           ; $501c: $05
	ld   bc, $546b                                   ; $501d: $01 $6b $54
	sub  d                                           ; $5020: $92
	sbc  [hl]                                        ; $5021: $9e
	ld   [bc], a                                     ; $5022: $02
	and  l                                           ; $5023: $a5
	inc  b                                           ; $5024: $04
	rst  $28                                         ; $5025: $ef
	db   $d3                                         ; $5026: $d3
	rst  JumpTable                                         ; $5027: $df
	ld   e, c                                        ; $5028: $59
	ld   sp, hl                                      ; $5029: $f9
	dec  c                                           ; $502a: $0d
	ld   a, b                                        ; $502b: $78
	and  c                                           ; $502c: $a1
	sub  d                                           ; $502d: $92
	ld   [hl], c                                     ; $502e: $71
	ld   l, l                                        ; $502f: $6d
	sub  a                                           ; $5030: $97
	sbc  [hl]                                        ; $5031: $9e
	and  a                                           ; $5032: $a7
	jp   nz, $047c                                   ; $5033: $c2 $7c $04

	sub  l                                           ; $5036: $95
	ld   [bc], a                                     ; $5037: $02
	ld   hl, $0d79                                   ; $5038: $21 $79 $0d
	ld   e, e                                        ; $503b: $5b
	ei                                               ; $503c: $fb
	add  b                                           ; $503d: $80
	and  c                                           ; $503e: $a1
	ld   e, c                                        ; $503f: $59
	ld   sp, hl                                      ; $5040: $f9
	dec  c                                           ; $5041: $0d
	nop                                              ; $5042: $00
	ld   a, [bc]                                     ; $5043: $0a
	add  hl, de                                      ; $5044: $19
	dec  b                                           ; $5045: $05
	ld   [bc], a                                     ; $5046: $02
	ld   [bc], a                                     ; $5047: $02
	ld   a, a                                        ; $5048: $7f
	ld   e, l                                        ; $5049: $5d
	nop                                              ; $504a: $00
	nop                                              ; $504b: $00
	ld   d, [hl]                                     ; $504c: $56
	and  c                                           ; $504d: $a1
	sbc  b                                           ; $504e: $98
	sub  l                                           ; $504f: $95
	ld   h, a                                        ; $5050: $67
	sbc  c                                           ; $5051: $99
	nop                                              ; $5052: $00
	ld   bc, $6a07                                   ; $5053: $01 $07 $6a
	inc  bc                                          ; $5056: $03
	ld   [bc], a                                     ; $5057: $02
	inc  bc                                          ; $5058: $03
	ld   bc, $2000                                   ; $5059: $01 $00 $20
	nop                                              ; $505c: $00
	rlca                                             ; $505d: $07
	push bc                                          ; $505e: $c5
	inc  bc                                          ; $505f: $03
	ld   [bc], a                                     ; $5060: $02
	inc  bc                                          ; $5061: $03
	ld   bc, $2001                                   ; $5062: $01 $01 $20
	nop                                              ; $5065: $00
	ld   b, $c5                                      ; $5066: $06 $c5
	inc  bc                                          ; $5068: $03
	rrca                                             ; $5069: $0f
	nop                                              ; $506a: $00
	ld   bc, $0201                                   ; $506b: $01 $01 $02
	ld   a, a                                        ; $506e: $7f
	ld   e, e                                        ; $506f: $5b
	adc  h                                           ; $5070: $8c
	ld   h, a                                        ; $5071: $67
	sbc  a                                           ; $5072: $9f
	dec  c                                           ; $5073: $0d
	ld   l, d                                        ; $5074: $6a
	add  b                                           ; $5075: $80
	sbc  [hl]                                        ; $5076: $9e
	ld   [bc], a                                     ; $5077: $02
	ld   a, a                                        ; $5078: $7f
	ld   e, c                                        ; $5079: $59
	ld   l, c                                        ; $507a: $69
	ld   [hl], h                                     ; $507b: $74
	ld   d, d                                        ; $507c: $52
	ld   l, l                                        ; $507d: $6d
	ld   l, [hl]                                     ; $507e: $6e
	ld   e, e                                        ; $507f: $5b
	adc  h                                           ; $5080: $8c
	ld   h, a                                        ; $5081: $67
	sbc  a                                           ; $5082: $9f
	dec  c                                           ; $5083: $0d
	nop                                              ; $5084: $00
	ld   a, [bc]                                     ; $5085: $0a
	inc  e                                           ; $5086: $1c
	dec  b                                           ; $5087: $05
	ld   bc, $1d01                                   ; $5088: $01 $01 $1d
	ld   b, b                                        ; $508b: $40
	dec  d                                           ; $508c: $15
	inc  bc                                          ; $508d: $03
	dec  d                                           ; $508e: $15
	ld   bc, $2802                                   ; $508f: $01 $02 $28
	nop                                              ; $5092: $00
	ld   bc, $546b                                   ; $5093: $01 $6b $54
	ld   e, c                                        ; $5096: $59
	sbc  a                                           ; $5097: $9f
	dec  c                                           ; $5098: $0d
	adc  c                                           ; $5099: $89
	ld   a, b                                        ; $509a: $78
	sbc  [hl]                                        ; $509b: $9e
	ld   [bc], a                                     ; $509c: $02
	and  l                                           ; $509d: $a5
	inc  b                                           ; $509e: $04
	rst  $28                                         ; $509f: $ef
	sbc  [hl]                                        ; $50a0: $9e
	and  a                                           ; $50a1: $a7
	jp   nz, $047c                                   ; $50a2: $c2 $7c $04

	sub  l                                           ; $50a5: $95
	ld   [bc], a                                     ; $50a6: $02
	ld   hl, $0d75                                   ; $50a7: $21 $75 $0d
	nop                                              ; $50aa: $00
	dec  b                                           ; $50ab: $05
	add  b                                           ; $50ac: $80
	inc  h                                           ; $50ad: $24
	ld   bc, $0001                                   ; $50ae: $01 $01 $00
	ld   bc, $1704                                   ; $50b1: $01 $04 $17
	ld   [hl], c                                     ; $50b4: $71
	ld   [hl], h                                     ; $50b5: $74
	sbc  c                                           ; $50b6: $99
	ld   e, c                                        ; $50b7: $59
	sub  a                                           ; $50b8: $97
	sbc  a                                           ; $50b9: $9f
	dec  c                                           ; $50ba: $0d
	nop                                              ; $50bb: $00
	ld   a, [bc]                                     ; $50bc: $0a
	dec  b                                           ; $50bd: $05
	ld   b, b                                        ; $50be: $40
	ld   l, [hl]                                     ; $50bf: $6e
	ld   [bc], a                                     ; $50c0: $02
	nop                                              ; $50c1: $00
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	rrca                                             ; $50c4: $0f
	nop                                              ; $50c5: $00
	ld   bc, $6701                                   ; $50c6: $01 $01 $67
	adc  l                                           ; $50c9: $8d
	adc  h                                           ; $50ca: $8c
	ld   l, c                                        ; $50cb: $69
	and  c                                           ; $50cc: $a1
	sbc  a                                           ; $50cd: $9f
	dec  c                                           ; $50ce: $0d
	ld   [bc], a                                     ; $50cf: $02
	and  l                                           ; $50d0: $a5
	inc  b                                           ; $50d1: $04
	rst  $28                                         ; $50d2: $ef
	ld   a, l                                        ; $50d3: $7d
	ld   l, a                                        ; $50d4: $6f
	sub  l                                           ; $50d5: $95
	ld   [hl], c                                     ; $50d6: $71
	halt                                             ; $50d7: $76
	rst  $38                                         ; $50d8: $ff
	rst  $38                                         ; $50d9: $ff
	dec  c                                           ; $50da: $0d
	nop                                              ; $50db: $00
	ld   a, [bc]                                     ; $50dc: $0a
	inc  e                                           ; $50dd: $1c
	dec  b                                           ; $50de: $05
	ld   [bc], a                                     ; $50df: $02
	ld   [bc], a                                     ; $50e0: $02
	ld   bc, $546b                                   ; $50e1: $01 $6b $54
	ld   e, c                                        ; $50e4: $59
	sbc  a                                           ; $50e5: $9f
	dec  c                                           ; $50e6: $0d
	adc  h                                           ; $50e7: $8c
	ld   d, b                                        ; $50e8: $50
	sbc  [hl]                                        ; $50e9: $9e
	ld   h, l                                        ; $50ea: $65
	sub  c                                           ; $50eb: $91
	ei                                               ; $50ec: $fb
	ld   a, b                                        ; $50ed: $78
	ld   d, d                                        ; $50ee: $52
	ld   a, b                                        ; $50ef: $78
	sbc  a                                           ; $50f0: $9f
	dec  c                                           ; $50f1: $0d
	nop                                              ; $50f2: $00
	ld   a, [bc]                                     ; $50f3: $0a
	nop                                              ; $50f4: $00
	inc  e                                           ; $50f5: $1c
	dec  b                                           ; $50f6: $05
	nop                                              ; $50f7: $00
	nop                                              ; $50f8: $00
	ld   bc, $b602                                   ; $50f9: $01 $02 $b6
	sub  d                                           ; $50fc: $92
	rst  $38                                         ; $50fd: $ff
	rst  $38                                         ; $50fe: $ff
	dec  c                                           ; $50ff: $0d
	nop                                              ; $5100: $00
	ld   a, [bc]                                     ; $5101: $0a
	rrca                                             ; $5102: $0f
	nop                                              ; $5103: $00
	ld   bc, $7801                                   ; $5104: $01 $01 $78
	and  c                                           ; $5107: $a1
	ld   l, [hl]                                     ; $5108: $6e
	ld   e, c                                        ; $5109: $59
	sbc  l                                           ; $510a: $9d
	ld   e, a                                        ; $510b: $5f
	ld   d, b                                        ; $510c: $50
	sbc  b                                           ; $510d: $98
	adc  l                                           ; $510e: $8d
	ld   l, l                                        ; $510f: $6d
	ld   d, d                                        ; $5110: $52
	ld   l, [hl]                                     ; $5111: $6e
	ld   e, c                                        ; $5112: $59
	sub  a                                           ; $5113: $97
	dec  c                                           ; $5114: $0d
	ld   l, e                                        ; $5115: $6b
	ld   [hl], c                                     ; $5116: $71
	halt                                             ; $5117: $76
	ld   h, l                                        ; $5118: $65
	ld   [hl], h                                     ; $5119: $74
	ld   e, b                                        ; $511a: $58
	ld   h, c                                        ; $511b: $61
	ld   d, h                                        ; $511c: $54
	sbc  a                                           ; $511d: $9f
	dec  c                                           ; $511e: $0d
	nop                                              ; $511f: $00
	ld   a, [bc]                                     ; $5120: $0a
	nop                                              ; $5121: $00
	rrca                                             ; $5122: $0f
	nop                                              ; $5123: $00
	ld   bc, $401d                                   ; $5124: $01 $1d $40
	dec  d                                           ; $5127: $15
	inc  bc                                          ; $5128: $03
	dec  d                                           ; $5129: $15
	ld   bc, $2802                                   ; $512a: $01 $02 $28
	nop                                              ; $512d: $00
	ld   bc, $6502                                   ; $512e: $01 $02 $65
	ld   d, [hl]                                     ; $5131: $56
	ld   [bc], a                                     ; $5132: $02
	jp   $9075                                       ; $5133: $c3 $75 $90


	ld   h, l                                        ; $5136: $65
	ld   [hl], h                                     ; $5137: $74
	sbc  c                                           ; $5138: $99
	ld   a, h                                        ; $5139: $7c
	ld   e, c                                        ; $513a: $59
	ld   a, b                                        ; $513b: $78
	ld   sp, hl                                      ; $513c: $f9
	dec  c                                           ; $513d: $0d
	ld   l, e                                        ; $513e: $6b
	ld   [hl], c                                     ; $513f: $71
	halt                                             ; $5140: $76
	ld   h, l                                        ; $5141: $65
	ld   [hl], h                                     ; $5142: $74
	ld   e, b                                        ; $5143: $58
	ld   h, c                                        ; $5144: $61
	ld   d, h                                        ; $5145: $54
	sbc  a                                           ; $5146: $9f
	dec  c                                           ; $5147: $0d
	nop                                              ; $5148: $00
	ld   a, [bc]                                     ; $5149: $0a
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	inc  b                                           ; $514c: $04
	add  b                                           ; $514d: $80
	rlc  c                                           ; $514e: $cb $01
	nop                                              ; $5150: $00
	jr   nz, jr_050_5153                             ; $5151: $20 $00

jr_050_5153:
	ld   c, $33                                      ; $5153: $0e $33
	inc  e                                           ; $5155: $1c
	ld   b, $00                                      ; $5156: $06 $00
	nop                                              ; $5158: $00
	ld   [bc], a                                     ; $5159: $02
	dec  b                                           ; $515a: $05
	add  b                                           ; $515b: $80
	rlc  c                                           ; $515c: $cb $01
	ld   bc, $0100                                   ; $515e: $01 $00 $01
	sub  [hl]                                        ; $5161: $96
	ld   e, b                                        ; $5162: $58
	sbc  [hl]                                        ; $5163: $9e
	ld   [$9f00], sp                                 ; $5164: $08 $00 $9f
	dec  c                                           ; $5167: $0d
	ld   d, [hl]                                     ; $5168: $56
	ld   sp, hl                                      ; $5169: $f9
	db   $10                                         ; $516a: $10
	ld   h, c                                        ; $516b: $61
	ld   a, h                                        ; $516c: $7c
	inc  b                                           ; $516d: $04
	dec  bc                                          ; $516e: $0b
	add  [hl]                                        ; $516f: $86
	inc  b                                           ; $5170: $04
	ld   b, l                                        ; $5171: $45
	sbc  c                                           ; $5172: $99
	ld   a, h                                        ; $5173: $7c
	ld   e, c                                        ; $5174: $59
	sub  [hl]                                        ; $5175: $96
	sbc  a                                           ; $5176: $9f
	dec  c                                           ; $5177: $0d
	sub  [hl]                                        ; $5178: $96
	ld   h, l                                        ; $5179: $65
	halt                                             ; $517a: $76
	ld   d, d                                        ; $517b: $52
	ld   l, l                                        ; $517c: $6d
	adc  c                                           ; $517d: $89
	ld   d, h                                        ; $517e: $54
	ld   e, d                                        ; $517f: $5a
	ld   d, d                                        ; $5180: $52
	ld   d, d                                        ; $5181: $52
	ld   l, d                                        ; $5182: $6a
	sbc  a                                           ; $5183: $9f
	dec  c                                           ; $5184: $0d
	nop                                              ; $5185: $00
	ld   a, [bc]                                     ; $5186: $0a
	ld   bc, $0b04                                   ; $5187: $01 $04 $0b
	ld   a, c                                        ; $518a: $79
	ld   a, l                                        ; $518b: $7d
	sbc  [hl]                                        ; $518c: $9e
	ld   h, a                                        ; $518d: $67
	adc  l                                           ; $518e: $8d
	sbc  d                                           ; $518f: $9a
	ld   e, d                                        ; $5190: $5a
	ld   d, d                                        ; $5191: $52
	sbc  c                                           ; $5192: $99
	and  c                                           ; $5193: $a1
	ld   l, [hl]                                     ; $5194: $6e
	ld   e, a                                        ; $5195: $5f
	ld   [hl], a                                     ; $5196: $77
	dec  c                                           ; $5197: $0d
	inc  bc                                          ; $5198: $03
	adc  e                                           ; $5199: $8b
	ld   a, l                                        ; $519a: $7d
	ld   h, e                                        ; $519b: $63
	ld   [hl], c                                     ; $519c: $71
	ld   e, e                                        ; $519d: $5b
	sbc  [hl]                                        ; $519e: $9e
	ld   h, e                                        ; $519f: $63
	ld   e, l                                        ; $51a0: $5d
	sub  a                                           ; $51a1: $97
	halt                                             ; $51a2: $76
	or   d                                           ; $51a3: $b2
	push af                                          ; $51a4: $f5
	xor  h                                           ; $51a5: $ac
	dec  c                                           ; $51a6: $0d
	ld   h, l                                        ; $51a7: $65
	ld   l, l                                        ; $51a8: $6d
	adc  l                                           ; $51a9: $8d
	ld   l, l                                        ; $51aa: $6d
	ld   d, d                                        ; $51ab: $52
	ld   [hl], l                                     ; $51ac: $75
	ld   h, e                                        ; $51ad: $63
	ei                                               ; $51ae: $fb
	sbc  a                                           ; $51af: $9f
	dec  c                                           ; $51b0: $0d
	nop                                              ; $51b1: $00
	ld   a, [bc]                                     ; $51b2: $0a
	ld   bc, $a150                                   ; $51b3: $01 $50 $a1
	adc  h                                           ; $51b6: $8c
	ld   h, l                                        ; $51b7: $65
	sbc  [hl]                                        ; $51b8: $9e
	ld   e, e                                        ; $51b9: $5b
	ld   h, b                                        ; $51ba: $60
	and  c                                           ; $51bb: $a1
	ld   e, d                                        ; $51bc: $5a
	sub  [hl]                                        ; $51bd: $96
	ld   e, l                                        ; $51be: $5d
	ld   a, b                                        ; $51bf: $78
	ld   d, d                                        ; $51c0: $52
	dec  c                                           ; $51c1: $0d
	and  c                                           ; $51c2: $a1
	ld   l, [hl]                                     ; $51c3: $6e
	sub  [hl]                                        ; $51c4: $96
	db   $fc                                         ; $51c5: $fc
	sbc  a                                           ; $51c6: $9f
	dec  c                                           ; $51c7: $0d
	nop                                              ; $51c8: $00
	ld   a, [bc]                                     ; $51c9: $0a
	add  hl, de                                      ; $51ca: $19
	dec  b                                           ; $51cb: $05
	ld   [bc], a                                     ; $51cc: $02
	ld   l, e                                        ; $51cd: $6b
	sbc  d                                           ; $51ce: $9a
	ld   [hl], l                                     ; $51cf: $75
	sub  b                                           ; $51d0: $90
	ld   [bc], a                                     ; $51d1: $02
	add  [hl]                                        ; $51d2: $86
	ld   d, h                                        ; $51d3: $54
	nop                                              ; $51d4: $00
	nop                                              ; $51d5: $00
	ld   [bc], a                                     ; $51d6: $02
	add  [hl]                                        ; $51d7: $86
	ld   d, h                                        ; $51d8: $54
	ld   a, h                                        ; $51d9: $7c
	sub  d                                           ; $51da: $92
	adc  a                                           ; $51db: $8f
	sbc  c                                           ; $51dc: $99
	nop                                              ; $51dd: $00
	ld   bc, $f307                                   ; $51de: $01 $07 $f3
	nop                                              ; $51e1: $00
	ld   [bc], a                                     ; $51e2: $02
	inc  bc                                          ; $51e3: $03
	ld   bc, $2000                                   ; $51e4: $01 $00 $20
	nop                                              ; $51e7: $00
	rlca                                             ; $51e8: $07
	and  c                                           ; $51e9: $a1
	nop                                              ; $51ea: $00
	ld   [bc], a                                     ; $51eb: $02
	inc  bc                                          ; $51ec: $03
	ld   bc, $2001                                   ; $51ed: $01 $01 $20
	nop                                              ; $51f0: $00
	ld   b, $c3                                      ; $51f1: $06 $c3
	nop                                              ; $51f3: $00
	rrca                                             ; $51f4: $0f
	ld   b, $00                                      ; $51f5: $06 $00
	ld   bc, $546b                                   ; $51f7: $01 $6b $54
	ld   h, l                                        ; $51fa: $65
	ld   l, l                                        ; $51fb: $6d
	adc  c                                           ; $51fc: $89
	ld   d, h                                        ; $51fd: $54
	ld   e, d                                        ; $51fe: $5a
	ld   d, d                                        ; $51ff: $52
	ld   d, d                                        ; $5200: $52
	ld   [hl], c                                     ; $5201: $71
	ld   [hl], h                                     ; $5202: $74
	sbc  a                                           ; $5203: $9f
	dec  c                                           ; $5204: $0d
	ld   h, [hl]                                     ; $5205: $66
	sub  c                                           ; $5206: $91
	ld   d, b                                        ; $5207: $50
	ld   a, b                                        ; $5208: $78
	sbc  a                                           ; $5209: $9f
	dec  c                                           ; $520a: $0d
	nop                                              ; $520b: $00
	ld   a, [bc]                                     ; $520c: $0a
	dec  c                                           ; $520d: $0d
	nop                                              ; $520e: $00
	nop                                              ; $520f: $00
	rrca                                             ; $5210: $0f
	nop                                              ; $5211: $00
	ld   bc, $1e09                                   ; $5212: $01 $09 $1e
	nop                                              ; $5215: $00
	rrca                                             ; $5216: $0f
	ld   b, $00                                      ; $5217: $06 $00
	ld   bc, $2802                                   ; $5219: $01 $02 $28
	ld   d, d                                        ; $521c: $52
	ld   h, c                                        ; $521d: $61
	halt                                             ; $521e: $76
	ld   a, l                                        ; $521f: $7d
	ld   [bc], a                                     ; $5220: $02
	sbc  l                                           ; $5221: $9d
	sbc  l                                           ; $5222: $9d
	ld   a, b                                        ; $5223: $78
	ld   d, d                                        ; $5224: $52
	sbc  a                                           ; $5225: $9f
	dec  c                                           ; $5226: $0d
	sub  d                                           ; $5227: $92
	adc  a                                           ; $5228: $8f
	halt                                             ; $5229: $76
	ld   d, d                                        ; $522a: $52
	ld   l, l                                        ; $522b: $6d
	adc  c                                           ; $522c: $89
	ld   d, h                                        ; $522d: $54
	ld   e, d                                        ; $522e: $5a
	ld   d, d                                        ; $522f: $52
	ld   d, d                                        ; $5230: $52
	ld   [hl], c                                     ; $5231: $71
	ld   [hl], h                                     ; $5232: $74
	sbc  a                                           ; $5233: $9f
	dec  c                                           ; $5234: $0d
	ld   h, [hl]                                     ; $5235: $66
	sub  c                                           ; $5236: $91
	ld   d, b                                        ; $5237: $50
	ld   a, b                                        ; $5238: $78
	sbc  a                                           ; $5239: $9f
	dec  c                                           ; $523a: $0d
	nop                                              ; $523b: $00
	ld   a, [bc]                                     ; $523c: $0a
	dec  c                                           ; $523d: $0d
	nop                                              ; $523e: $00
	nop                                              ; $523f: $00
	rrca                                             ; $5240: $0f
	nop                                              ; $5241: $00
	ld   bc, $1e09                                   ; $5242: $01 $09 $1e
	nop                                              ; $5245: $00
	inc  e                                           ; $5246: $1c
	ld   b, $05                                      ; $5247: $06 $05
	dec  b                                           ; $5249: $05
	ld   bc, $546b                                   ; $524a: $01 $6b $54
	ld   e, c                                        ; $524d: $59
	ld   d, d                                        ; $524e: $52
	sbc  a                                           ; $524f: $9f
	dec  c                                           ; $5250: $0d
	ld   h, [hl]                                     ; $5251: $66
	sub  c                                           ; $5252: $91
	sbc  [hl]                                        ; $5253: $9e
	adc  h                                           ; $5254: $8c
	ld   d, b                                        ; $5255: $50
	sbc  [hl]                                        ; $5256: $9e
	ld   e, d                                        ; $5257: $5a
	and  c                                           ; $5258: $a1
	ld   a, [hl]                                     ; $5259: $7e
	sbc  b                                           ; $525a: $98
	ld   a, b                                        ; $525b: $78
	sbc  a                                           ; $525c: $9f
	dec  c                                           ; $525d: $0d
	nop                                              ; $525e: $00
	ld   a, [bc]                                     ; $525f: $0a
	dec  c                                           ; $5260: $0d
	nop                                              ; $5261: $00
	nop                                              ; $5262: $00
	rrca                                             ; $5263: $0f
	nop                                              ; $5264: $00
	ld   bc, $3623                                   ; $5265: $01 $23 $36
	inc  e                                           ; $5268: $1c
	ld   [bc], a                                     ; $5269: $02
	rlca                                             ; $526a: $07
	rlca                                             ; $526b: $07
	ld   bc, $9750                                   ; $526c: $01 $50 $97
	sbc  [hl]                                        ; $526f: $9e
	ld   [$6300], sp                                 ; $5270: $08 $00 $63
	and  c                                           ; $5273: $a1
	sbc  a                                           ; $5274: $9f
	dec  c                                           ; $5275: $0d
	ld   a, b                                        ; $5276: $78
	and  c                                           ; $5277: $a1
	ld   [hl], l                                     ; $5278: $75
	ld   h, a                                        ; $5279: $67
	ld   a, h                                        ; $527a: $7c
	ld   sp, hl                                      ; $527b: $f9
	dec  c                                           ; $527c: $0d
	nop                                              ; $527d: $00
	ld   a, [bc]                                     ; $527e: $0a
	rrca                                             ; $527f: $0f
	nop                                              ; $5280: $00
	ld   bc, $6301                                   ; $5281: $01 $01 $63
	ld   [hl], c                                     ; $5284: $71
	ld   e, e                                        ; $5285: $5b
	rst  $38                                         ; $5286: $ff
	rst  $38                                         ; $5287: $ff
	ld   h, e                                        ; $5288: $63
	ld   e, l                                        ; $5289: $5d
	sub  a                                           ; $528a: $97
	ld   h, e                                        ; $528b: $63
	and  c                                           ; $528c: $a1
	halt                                             ; $528d: $76
	dec  c                                           ; $528e: $0d
	or   d                                           ; $528f: $b2
	push af                                          ; $5290: $f5
	xor  h                                           ; $5291: $ac
	ld   h, e                                        ; $5292: $63
	sbc  d                                           ; $5293: $9a
	ld   l, l                                        ; $5294: $6d
	ld   l, e                                        ; $5295: $6b
	ld   d, h                                        ; $5296: $54
	ld   [hl], l                                     ; $5297: $75
	ld   h, a                                        ; $5298: $67
	ld   e, a                                        ; $5299: $5f
	ld   [hl], a                                     ; $529a: $77
	rst  $38                                         ; $529b: $ff
	rst  $38                                         ; $529c: $ff
	dec  c                                           ; $529d: $0d
	rst  $38                                         ; $529e: $ff
	rst  $38                                         ; $529f: $ff
	dec  c                                           ; $52a0: $0d
	nop                                              ; $52a1: $00
	ld   a, [bc]                                     ; $52a2: $0a
	add  hl, de                                      ; $52a3: $19
	dec  b                                           ; $52a4: $05
	inc  bc                                          ; $52a5: $03
	ld   e, b                                        ; $52a6: $58
	ld   h, c                                        ; $52a7: $61
	sbc  c                                           ; $52a8: $99
	halt                                             ; $52a9: $76
	inc  b                                           ; $52aa: $04
	cp   d                                           ; $52ab: $ba
	ld   a, c                                        ; $52ac: $79
	ld   [bc], a                                     ; $52ad: $02
	jr   z, jr_050_5302                              ; $52ae: $28 $52

	ld   [hl], l                                     ; $52b0: $75
	ld   h, a                                        ; $52b1: $67
	sub  [hl]                                        ; $52b2: $96
	nop                                              ; $52b3: $00
	nop                                              ; $52b4: $00
	ld   e, b                                        ; $52b5: $58
	ld   h, c                                        ; $52b6: $61
	ld   [hl], c                                     ; $52b7: $71
	ld   l, l                                        ; $52b8: $6d
	ld   [bc], a                                     ; $52b9: $02
	ld   [hl], d                                     ; $52ba: $72
	sub  b                                           ; $52bb: $90
	cp   d                                           ; $52bc: $ba
	rst  ToBoot                                         ; $52bd: $c7
	xor  [hl]                                        ; $52be: $ae
	ld   [hl], l                                     ; $52bf: $75
	ld   h, a                                        ; $52c0: $67
	sub  [hl]                                        ; $52c1: $96
	nop                                              ; $52c2: $00
	ld   bc, $8d67                                   ; $52c3: $01 $67 $8d
	sbc  d                                           ; $52c6: $9a
	ld   h, e                                        ; $52c7: $63
	and  c                                           ; $52c8: $a1
	ld   e, d                                        ; $52c9: $5a
	inc  bc                                          ; $52ca: $03
	ld   c, d                                        ; $52cb: $4a
	ld   h, l                                        ; $52cc: $65
	ld   d, d                                        ; $52cd: $52
	halt                                             ; $52ce: $76
	dec  b                                           ; $52cf: $05
	pop  de                                          ; $52d0: $d1
	ld   d, h                                        ; $52d1: $54
	nop                                              ; $52d2: $00
	ld   [bc], a                                     ; $52d3: $02
	rlca                                             ; $52d4: $07
	call nz, $0201                                   ; $52d5: $c4 $01 $02
	inc  bc                                          ; $52d8: $03
	ld   bc, $2000                                   ; $52d9: $01 $00 $20
	nop                                              ; $52dc: $00
	rlca                                             ; $52dd: $07
	rlca                                             ; $52de: $07
	ld   [bc], a                                     ; $52df: $02
	ld   [bc], a                                     ; $52e0: $02
	inc  bc                                          ; $52e1: $03
	ld   bc, $2001                                   ; $52e2: $01 $01 $20
	nop                                              ; $52e5: $00
	rlca                                             ; $52e6: $07
	add  e                                           ; $52e7: $83
	ld   [bc], a                                     ; $52e8: $02
	ld   [bc], a                                     ; $52e9: $02
	inc  bc                                          ; $52ea: $03
	ld   bc, $2002                                   ; $52eb: $01 $02 $20
	nop                                              ; $52ee: $00
	ld   b, $9f                                      ; $52ef: $06 $9f
	ld   bc, $020f                                   ; $52f1: $01 $0f $02
	rlca                                             ; $52f4: $07
	dec  e                                           ; $52f5: $1d
	ld   b, b                                        ; $52f6: $40
	ld   [de], a                                     ; $52f7: $12
	inc  bc                                          ; $52f8: $03
	ld   [de], a                                     ; $52f9: $12
	ld   bc, $2901                                   ; $52fa: $01 $01 $29
	nop                                              ; $52fd: $00
	ld   bc, $2802                                   ; $52fe: $01 $02 $28
	ld   d, d                                        ; $5301: $52

jr_050_5302:
	ld   e, a                                        ; $5302: $5f
	ld   [hl], a                                     ; $5303: $77
	sbc  [hl]                                        ; $5304: $9e
	add  b                                           ; $5305: $80
	halt                                             ; $5306: $76
	sbc  b                                           ; $5307: $98
	ld   a, c                                        ; $5308: $79
	ld   h, l                                        ; $5309: $65
	ld   [hl], h                                     ; $530a: $74
	dec  c                                           ; $530b: $0d
	ld   l, a                                        ; $530c: $6f
	sub  l                                           ; $530d: $95
	ld   d, h                                        ; $530e: $54
	ld   l, [hl]                                     ; $530f: $6e
	ld   d, d                                        ; $5310: $52
	rst  $38                                         ; $5311: $ff
	rst  $38                                         ; $5312: $ff
	dec  c                                           ; $5313: $0d
	nop                                              ; $5314: $00
	ld   a, [bc]                                     ; $5315: $0a
	nop                                              ; $5316: $00
	rrca                                             ; $5317: $0f
	nop                                              ; $5318: $00
	ld   bc, $5801                                   ; $5319: $01 $01 $58
	ld   h, c                                        ; $531c: $61
	sbc  c                                           ; $531d: $99
	halt                                             ; $531e: $76
	inc  b                                           ; $531f: $04
	cp   d                                           ; $5320: $ba
	ld   a, c                                        ; $5321: $79
	ld   [bc], a                                     ; $5322: $02
	jr   z, jr_050_5377                              ; $5323: $28 $52

	ld   [hl], l                                     ; $5325: $75
	ld   h, a                                        ; $5326: $67
	sub  [hl]                                        ; $5327: $96
	sbc  a                                           ; $5328: $9f
	dec  c                                           ; $5329: $0d
	nop                                              ; $532a: $00
	ld   a, [bc]                                     ; $532b: $0a
	inc  e                                           ; $532c: $1c
	ld   [bc], a                                     ; $532d: $02
	rlca                                             ; $532e: $07
	rlca                                             ; $532f: $07
	dec  e                                           ; $5330: $1d
	ld   b, b                                        ; $5331: $40
	ld   [de], a                                     ; $5332: $12
	inc  bc                                          ; $5333: $03
	ld   [de], a                                     ; $5334: $12
	ld   bc, $2902                                   ; $5335: $01 $02 $29
	nop                                              ; $5338: $00
	ld   bc, $a16b                                   ; $5339: $01 $6b $a1
	ld   a, b                                        ; $533c: $78
	ld   h, c                                        ; $533d: $61
	halt                                             ; $533e: $76
	sbc  [hl]                                        ; $533f: $9e
	sbc  l                                           ; $5340: $9d
	ld   e, c                                        ; $5341: $59
	ld   [hl], c                                     ; $5342: $71
	ld   [hl], h                                     ; $5343: $74
	dec  c                                           ; $5344: $0d
	ld   d, d                                        ; $5345: $52
	adc  h                                           ; $5346: $8c
	ld   h, a                                        ; $5347: $67
	sbc  l                                           ; $5348: $9d
	ld   a, [$890d]                                  ; $5349: $fa $0d $89
	ld   [hl], c                                     ; $534c: $71
	halt                                             ; $534d: $76
	ld   d, d                                        ; $534e: $52
	ld   [hl], h                                     ; $534f: $74
	ld   [bc], a                                     ; $5350: $02
	inc  [hl]                                        ; $5351: $34
	ld   h, e                                        ; $5352: $63
	ld   d, d                                        ; $5353: $52
	ld   a, b                                        ; $5354: $78
	sbc  a                                           ; $5355: $9f
	dec  c                                           ; $5356: $0d
	nop                                              ; $5357: $00
	ld   a, [bc]                                     ; $5358: $0a
	nop                                              ; $5359: $00
	rrca                                             ; $535a: $0f
	nop                                              ; $535b: $00
	ld   bc, $6701                                   ; $535c: $01 $01 $67
	adc  l                                           ; $535f: $8d
	sbc  d                                           ; $5360: $9a
	ld   h, e                                        ; $5361: $63
	and  c                                           ; $5362: $a1
	ld   [hl], c                                     ; $5363: $71
	ld   [hl], h                                     ; $5364: $74
	dec  c                                           ; $5365: $0d
	ld   e, b                                        ; $5366: $58
	ld   h, c                                        ; $5367: $61
	ld   [hl], c                                     ; $5368: $71
	ld   l, l                                        ; $5369: $6d
	ld   [bc], a                                     ; $536a: $02
	ld   [hl], d                                     ; $536b: $72
	sub  b                                           ; $536c: $90
	cp   d                                           ; $536d: $ba
	rst  ToBoot                                         ; $536e: $c7
	xor  [hl]                                        ; $536f: $ae
	ld   [hl], l                                     ; $5370: $75
	ld   h, a                                        ; $5371: $67
	ld   a, e                                        ; $5372: $7b
	sbc  a                                           ; $5373: $9f
	dec  c                                           ; $5374: $0d
	nop                                              ; $5375: $00
	ld   a, [bc]                                     ; $5376: $0a

jr_050_5377:
	inc  e                                           ; $5377: $1c
	ld   [bc], a                                     ; $5378: $02
	inc  b                                           ; $5379: $04
	inc  b                                           ; $537a: $04
	dec  e                                           ; $537b: $1d
	ld   b, b                                        ; $537c: $40
	ld   [de], a                                     ; $537d: $12
	inc  bc                                          ; $537e: $03
	ld   [de], a                                     ; $537f: $12
	ld   bc, $2801                                   ; $5380: $01 $01 $28
	nop                                              ; $5383: $00
	ld   bc, $9e78                                   ; $5384: $01 $78 $9e
	ld   a, b                                        ; $5387: $78
	ld   a, c                                        ; $5388: $79
	and  b                                           ; $5389: $a0
	rst  $38                                         ; $538a: $ff
	rst  $38                                         ; $538b: $ff
	dec  c                                           ; $538c: $0d
	sub  b                                           ; $538d: $90
	ld   l, a                                        ; $538e: $6f
	sbc  e                                           ; $538f: $9b
	and  c                                           ; $5390: $a1
	inc  bc                                          ; $5391: $03
	ld   l, [hl]                                     ; $5392: $6e
	inc  b                                           ; $5393: $04
	rst  $30                                         ; $5394: $f7
	ld   [hl], l                                     ; $5395: $75
	ld   h, a                                        ; $5396: $67
	ld   e, c                                        ; $5397: $59
	sub  a                                           ; $5398: $97
	dec  c                                           ; $5399: $0d
	inc  b                                           ; $539a: $04
	jr   jr_050_53a0                                 ; $539b: $18 $03

	sbc  c                                           ; $539d: $99
	ld   a, h                                        ; $539e: $7c
	ld   h, c                                        ; $539f: $61

jr_050_53a0:
	halt                                             ; $53a0: $76
	ld   [hl], l                                     ; $53a1: $75
	ld   h, a                                        ; $53a2: $67
	ld   e, a                                        ; $53a3: $5f
	ld   [hl], a                                     ; $53a4: $77
	rst  $38                                         ; $53a5: $ff
	rst  $38                                         ; $53a6: $ff
	dec  c                                           ; $53a7: $0d
	nop                                              ; $53a8: $00
	ld   a, [bc]                                     ; $53a9: $0a
	ld   bc, $5063                                   ; $53aa: $01 $63 $50
	sbc  [hl]                                        ; $53ad: $9e
	sbc  l                                           ; $53ae: $9d
	ld   l, l                                        ; $53af: $6d
	ld   e, l                                        ; $53b0: $5d
	ld   h, l                                        ; $53b1: $65
	ld   a, l                                        ; $53b2: $7d
	dec  c                                           ; $53b3: $0d
	inc  b                                           ; $53b4: $04
	adc  [hl]                                        ; $53b5: $8e
	inc  b                                           ; $53b6: $04
	inc  c                                           ; $53b7: $0c
	ld   a, h                                        ; $53b8: $7c
	ld   e, b                                        ; $53b9: $58
	ld   e, a                                        ; $53ba: $5f
	ld   d, d                                        ; $53bb: $52
	ld   h, c                                        ; $53bc: $61
	ld   e, d                                        ; $53bd: $5a
	ld   d, b                                        ; $53be: $50
	sbc  c                                           ; $53bf: $99
	ld   a, h                                        ; $53c0: $7c
	ld   [hl], l                                     ; $53c1: $75
	sbc  [hl]                                        ; $53c2: $9e
	dec  c                                           ; $53c3: $0d
	inc  bc                                          ; $53c4: $03
	add  e                                           ; $53c5: $83
	dec  b                                           ; $53c6: $05
	dec  c                                           ; $53c7: $0d
	rst  $38                                         ; $53c8: $ff
	rst  $38                                         ; $53c9: $ff
	dec  c                                           ; $53ca: $0d
	nop                                              ; $53cb: $00
	ld   a, [bc]                                     ; $53cc: $0a
	dec  c                                           ; $53cd: $0d
	nop                                              ; $53ce: $00
	nop                                              ; $53cf: $00
	rrca                                             ; $53d0: $0f
	nop                                              ; $53d1: $00
	ld   bc, $1e09                                   ; $53d2: $01 $09 $1e
	nop                                              ; $53d5: $00
	rrca                                             ; $53d6: $0f
	nop                                              ; $53d7: $00
	ld   bc, $0401                                   ; $53d8: $01 $01 $04
	ld   l, l                                        ; $53db: $6d
	ld   a, l                                        ; $53dc: $7d
	sbc  [hl]                                        ; $53dd: $9e
	ld   h, a                                        ; $53de: $67
	adc  l                                           ; $53df: $8d
	sbc  d                                           ; $53e0: $9a
	ld   h, e                                        ; $53e1: $63
	and  c                                           ; $53e2: $a1
	ld   e, d                                        ; $53e3: $5a
	inc  bc                                          ; $53e4: $03
	ld   c, d                                        ; $53e5: $4a
	ld   h, l                                        ; $53e6: $65
	ld   d, d                                        ; $53e7: $52
	halt                                             ; $53e8: $76
	dec  c                                           ; $53e9: $0d
	dec  b                                           ; $53ea: $05
	pop  de                                          ; $53eb: $d1
	ld   d, d                                        ; $53ec: $52
	adc  h                                           ; $53ed: $8c
	ld   h, a                                        ; $53ee: $67
	sub  [hl]                                        ; $53ef: $96
	sbc  a                                           ; $53f0: $9f
	dec  c                                           ; $53f1: $0d
	nop                                              ; $53f2: $00
	ld   a, [bc]                                     ; $53f3: $0a
	inc  e                                           ; $53f4: $1c
	ld   [bc], a                                     ; $53f5: $02
	ld   [bc], a                                     ; $53f6: $02
	ld   [bc], a                                     ; $53f7: $02
	ld   bc, $6d50                                   ; $53f8: $01 $50 $6d
	sbc  b                                           ; $53fb: $98
	adc  h                                           ; $53fc: $8c
	ld   d, [hl]                                     ; $53fd: $56
	ld   [hl], l                                     ; $53fe: $75
	ld   h, a                                        ; $53ff: $67
	sbc  l                                           ; $5400: $9d
	sbc  a                                           ; $5401: $9f
	dec  c                                           ; $5402: $0d
	ld   d, b                                        ; $5403: $50
	ld   a, h                                        ; $5404: $7c
	inc  b                                           ; $5405: $04
	ld   hl, $bc03                                   ; $5406: $21 $03 $bc
	ld   [bc], a                                     ; $5409: $02
	cp   b                                           ; $540a: $b8
	ld   [hl], c                                     ; $540b: $71
	ld   l, l                                        ; $540c: $6d
	sub  a                                           ; $540d: $97
	sbc  [hl]                                        ; $540e: $9e
	sbc  l                                           ; $540f: $9d
	ld   l, l                                        ; $5410: $6d
	ld   e, l                                        ; $5411: $5d
	ld   h, l                                        ; $5412: $65
	ld   a, h                                        ; $5413: $7c
	dec  c                                           ; $5414: $0d
	ld   [bc], a                                     ; $5415: $02
	rra                                              ; $5416: $1f
	ld   [bc], a                                     ; $5417: $02
	adc  h                                           ; $5418: $8c
	dec  b                                           ; $5419: $05
	ld   a, [bc]                                     ; $541a: $0a
	and  b                                           ; $541b: $a0
	ld   a, e                                        ; $541c: $7b
	ld   l, l                                        ; $541d: $6d
	and  c                                           ; $541e: $a1
	ld   [hl], l                                     ; $541f: $75
	rst  $38                                         ; $5420: $ff
	rst  $38                                         ; $5421: $ff
	dec  c                                           ; $5422: $0d
	nop                                              ; $5423: $00
	ld   a, [bc]                                     ; $5424: $0a
	ld   bc, $a150                                   ; $5425: $01 $50 $a1
	ld   a, b                                        ; $5428: $78
	ld   h, c                                        ; $5429: $61
	halt                                             ; $542a: $76
	sub  d                                           ; $542b: $92
	sbc  [hl]                                        ; $542c: $9e
	ld   h, c                                        ; $542d: $61
	and  c                                           ; $542e: $a1
	ld   a, b                                        ; $542f: $78
	ld   h, c                                        ; $5430: $61
	halt                                             ; $5431: $76
	and  b                                           ; $5432: $a0
	dec  c                                           ; $5433: $0d
	ld   h, a                                        ; $5434: $67
	sbc  c                                           ; $5435: $99
	and  c                                           ; $5436: $a1
	ld   [hl], l                                     ; $5437: $75
	ld   h, a                                        ; $5438: $67
	ld   a, h                                        ; $5439: $7c
	sbc  a                                           ; $543a: $9f
	sub  b                                           ; $543b: $90
	ei                                               ; $543c: $fb
	sbc  l                                           ; $543d: $9d
	ld   l, l                                        ; $543e: $6d
	ld   e, l                                        ; $543f: $5d
	ld   h, l                                        ; $5440: $65
	sbc  [hl]                                        ; $5441: $9e
	dec  c                                           ; $5442: $0d
	inc  b                                           ; $5443: $04
	adc  c                                           ; $5444: $89
	ld   e, d                                        ; $5445: $5a
	dec  b                                           ; $5446: $05
	ld   d, $71                                      ; $5447: $16 $71
	ld   [hl], h                                     ; $5449: $74
	sbc  [hl]                                        ; $544a: $9e
	inc  b                                           ; $544b: $04
	adc  c                                           ; $544c: $89
	ld   e, d                                        ; $544d: $5a
	dec  b                                           ; $544e: $05
	ld   d, $71                                      ; $544f: $16 $71
	ld   [hl], h                                     ; $5451: $74
	ld   a, [$000d]                                  ; $5452: $fa $0d $00
	ld   a, [bc]                                     ; $5455: $0a
	add  hl, de                                      ; $5456: $19
	ld   a, [bc]                                     ; $5457: $0a
	ld   bc, $c2b1                                   ; $5458: $01 $b1 $c2
	and  b                                           ; $545b: $a0
	ld   [bc], a                                     ; $545c: $02
	jp   nz, Jump_050_7c5d                           ; $545d: $c2 $5d $7c

	sub  d                                           ; $5460: $92
	adc  a                                           ; $5461: $8f
	sbc  c                                           ; $5462: $99
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	rlca                                             ; $5465: $07
	ld   e, $03                                      ; $5466: $1e $03
	ld   [bc], a                                     ; $5468: $02
	inc  bc                                          ; $5469: $03
	ld   bc, $2000                                   ; $546a: $01 $00 $20
	nop                                              ; $546d: $00
	ld   b, $86                                      ; $546e: $06 $86
	inc  bc                                          ; $5470: $03
	inc  e                                           ; $5471: $1c
	ld   [bc], a                                     ; $5472: $02
	inc  bc                                          ; $5473: $03
	inc  bc                                          ; $5474: $03
	ld   bc, $9750                                   ; $5475: $01 $50 $97
	sbc  [hl]                                        ; $5478: $9e
	ld   e, b                                        ; $5479: $58
	dec  b                                           ; $547a: $05
	jr   nz, jr_050_54fa                             ; $547b: $20 $7d

	adc  h                                           ; $547d: $8c
	ld   l, [hl]                                     ; $547e: $6e
	dec  c                                           ; $547f: $0d
	inc  bc                                          ; $5480: $03
	ld   a, [hl]                                     ; $5481: $7e
	sbc  l                                           ; $5482: $9d
	ld   [hl], c                                     ; $5483: $71
	ld   [hl], h                                     ; $5484: $74
	adc  h                                           ; $5485: $8c
	ld   l, c                                        ; $5486: $69
	and  c                                           ; $5487: $a1
	ld   h, c                                        ; $5488: $61
	halt                                             ; $5489: $76
	sub  [hl]                                        ; $548a: $96
	sbc  a                                           ; $548b: $9f
	dec  c                                           ; $548c: $0d
	nop                                              ; $548d: $00
	ld   a, [bc]                                     ; $548e: $0a
	inc  e                                           ; $548f: $1c
	ld   [bc], a                                     ; $5490: $02
	ld   [bc], a                                     ; $5491: $02
	ld   [bc], a                                     ; $5492: $02
	dec  e                                           ; $5493: $1d
	ld   b, b                                        ; $5494: $40
	ld   [de], a                                     ; $5495: $12
	inc  bc                                          ; $5496: $03
	ld   [de], a                                     ; $5497: $12
	ld   bc, $2903                                   ; $5498: $01 $03 $29
	nop                                              ; $549b: $00
	ld   bc, $7850                                   ; $549c: $01 $50 $78
	ld   l, l                                        ; $549f: $6d
	adc  h                                           ; $54a0: $8c
	ld   [hl], l                                     ; $54a1: $75
	sbc  [hl]                                        ; $54a2: $9e
	sbc  l                                           ; $54a3: $9d
	ld   l, l                                        ; $54a4: $6d
	ld   e, l                                        ; $54a5: $5d
	ld   h, l                                        ; $54a6: $65
	and  b                                           ; $54a7: $a0
	dec  c                                           ; $54a8: $0d
	nop                                              ; $54a9: $00
	dec  b                                           ; $54aa: $05
	ld   b, b                                        ; $54ab: $40
	ld   c, c                                        ; $54ac: $49
	ld   [bc], a                                     ; $54ad: $02
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
	ld   bc, $acd1                                   ; $54b0: $01 $d1 $ac
	ld   a, c                                        ; $54b3: $79
	ld   h, a                                        ; $54b4: $67
	sbc  c                                           ; $54b5: $99
	and  c                                           ; $54b6: $a1
	ld   [hl], l                                     ; $54b7: $75
	ld   h, a                                        ; $54b8: $67
	ld   a, h                                        ; $54b9: $7c
	ld   sp, hl                                      ; $54ba: $f9
	dec  c                                           ; $54bb: $0d
	nop                                              ; $54bc: $00
	dec  b                                           ; $54bd: $05
	ld   b, b                                        ; $54be: $40
	ld   c, a                                        ; $54bf: $4f
	ld   bc, $0001                                   ; $54c0: $01 $01 $00
	ld   bc, $5490                                   ; $54c3: $01 $90 $54
	sbc  [hl]                                        ; $54c6: $9e
	ld   d, d                                        ; $54c7: $52
	ld   d, d                                        ; $54c8: $52
	ld   [hl], l                                     ; $54c9: $75
	ld   h, a                                        ; $54ca: $67
	sbc  l                                           ; $54cb: $9d
	ld   a, [$000d]                                  ; $54cc: $fa $0d $00
	ld   a, [bc]                                     ; $54cf: $0a
	dec  c                                           ; $54d0: $0d
	nop                                              ; $54d1: $00
	nop                                              ; $54d2: $00
	rrca                                             ; $54d3: $0f
	nop                                              ; $54d4: $00
	ld   bc, $1e09                                   ; $54d5: $01 $09 $1e
	nop                                              ; $54d8: $00
	dec  c                                           ; $54d9: $0d
	nop                                              ; $54da: $00
	nop                                              ; $54db: $00
	inc  c                                           ; $54dc: $0c
	dec  bc                                          ; $54dd: $0b
	inc  e                                           ; $54de: $1c
	ld   [bc], a                                     ; $54df: $02
	ld   bc, $1d01                                   ; $54e0: $01 $01 $1d
	ld   b, b                                        ; $54e3: $40
	ld   [de], a                                     ; $54e4: $12
	inc  bc                                          ; $54e5: $03
	ld   [de], a                                     ; $54e6: $12
	ld   bc, $2803                                   ; $54e7: $01 $03 $28
	nop                                              ; $54ea: $00
	ld   bc, $ffff                                   ; $54eb: $01 $ff $ff
	halt                                             ; $54ee: $76
	ld   d, d                                        ; $54ef: $52
	ld   d, h                                        ; $54f0: $54
	ld   h, c                                        ; $54f1: $61
	halt                                             ; $54f2: $76
	ld   a, b                                        ; $54f3: $78
	and  c                                           ; $54f4: $a1
	ld   [hl], l                                     ; $54f5: $75
	ld   h, a                                        ; $54f6: $67
	ld   a, h                                        ; $54f7: $7c
	sbc  a                                           ; $54f8: $9f
	dec  c                                           ; $54f9: $0d

jr_050_54fa:
	ld   d, b                                        ; $54fa: $50
	ld   c, a                                        ; $54fb: $4f
	sbc  [hl]                                        ; $54fc: $9e
	ld   h, a                                        ; $54fd: $67
	ld   [hl], c                                     ; $54fe: $71
	ld   e, e                                        ; $54ff: $5b
	sbc  b                                           ; $5500: $98
	ld   h, l                                        ; $5501: $65
	adc  h                                           ; $5502: $8c
	ld   h, l                                        ; $5503: $65
	ld   l, l                                        ; $5504: $6d
	sbc  l                                           ; $5505: $9d
	sbc  a                                           ; $5506: $9f
	dec  c                                           ; $5507: $0d
	nop                                              ; $5508: $00
	ld   a, [bc]                                     ; $5509: $0a
	ld   bc, $7d75                                   ; $550a: $01 $75 $7d
	sbc  [hl]                                        ; $550d: $9e
	sbc  l                                           ; $550e: $9d
	ld   l, l                                        ; $550f: $6d
	ld   e, l                                        ; $5510: $5d
	ld   h, l                                        ; $5511: $65
	ld   a, l                                        ; $5512: $7d
	dec  c                                           ; $5513: $0d
	ld   h, c                                        ; $5514: $61
	sbc  d                                           ; $5515: $9a
	ld   [hl], l                                     ; $5516: $75
	inc  bc                                          ; $5517: $03
	add  e                                           ; $5518: $83
	dec  b                                           ; $5519: $05
	dec  c                                           ; $551a: $0d
	ld   h, l                                        ; $551b: $65
	adc  h                                           ; $551c: $8c
	ld   h, a                                        ; $551d: $67
	sbc  l                                           ; $551e: $9d
	sbc  a                                           ; $551f: $9f
	dec  c                                           ; $5520: $0d
	nop                                              ; $5521: $00
	ld   a, [bc]                                     ; $5522: $0a
	dec  c                                           ; $5523: $0d
	nop                                              ; $5524: $00
	nop                                              ; $5525: $00
	rrca                                             ; $5526: $0f
	nop                                              ; $5527: $00
	ld   bc, $1e09                                   ; $5528: $01 $09 $1e
	nop                                              ; $552b: $00
	nop                                              ; $552c: $00
	inc  b                                           ; $552d: $04
	add  b                                           ; $552e: $80
	rlc  c                                           ; $552f: $cb $01
	nop                                              ; $5531: $00
	jr   nz, jr_050_5537                             ; $5532: $20 $03

	ld   c, [hl]                                     ; $5534: $4e
	ld   [bc], a                                     ; $5535: $02
	nop                                              ; $5536: $00

jr_050_5537:
	inc  bc                                          ; $5537: $03
	ld   c, b                                        ; $5538: $48
	add  hl, hl                                      ; $5539: $29
	add  hl, hl                                      ; $553a: $29
	ld   bc, $2201                                   ; $553b: $01 $01 $22
	inc  e                                           ; $553e: $1c
	nop                                              ; $553f: $00
	inc  e                                           ; $5540: $1c
	ld   bc, $0606                                   ; $5541: $01 $06 $06
	ld   [bc], a                                     ; $5544: $02
	dec  b                                           ; $5545: $05
	add  b                                           ; $5546: $80
	rlc  c                                           ; $5547: $cb $01
	ld   bc, $0100                                   ; $5549: $01 $00 $01
	rst  $38                                         ; $554c: $ff
	rst  $38                                         ; $554d: $ff
	rst  $38                                         ; $554e: $ff
	rst  $38                                         ; $554f: $ff
	dec  c                                           ; $5550: $0d
	nop                                              ; $5551: $00
	ld   a, [bc]                                     ; $5552: $0a
	rrca                                             ; $5553: $0f
	nop                                              ; $5554: $00
	ld   bc, $7701                                   ; $5555: $01 $01 $77
	ld   d, h                                        ; $5558: $54
	ld   h, l                                        ; $5559: $65
	ld   l, l                                        ; $555a: $6d
	and  c                                           ; $555b: $a1
	ld   [hl], l                                     ; $555c: $75
	ld   h, a                                        ; $555d: $67
	ld   e, c                                        ; $555e: $59
	ld   sp, hl                                      ; $555f: $f9
	dec  c                                           ; $5560: $0d
	ld   [bc], a                                     ; $5561: $02
	xor  h                                           ; $5562: $ac
	ld   [bc], a                                     ; $5563: $02
	and  c                                           ; $5564: $a1
	ld   a, b                                        ; $5565: $78
	ld   d, d                                        ; $5566: $52
	ld   [hl], l                                     ; $5567: $75
	ld   h, a                                        ; $5568: $67
	ld   a, e                                        ; $5569: $7b
	rst  $38                                         ; $556a: $ff
	rst  $38                                         ; $556b: $ff
	dec  c                                           ; $556c: $0d
	nop                                              ; $556d: $00
	ld   a, [bc]                                     ; $556e: $0a
	inc  e                                           ; $556f: $1c
	ld   bc, $0404                                   ; $5570: $01 $04 $04
	ld   bc, $7163                                   ; $5573: $01 $63 $71
	ld   e, e                                        ; $5576: $5b
	rst  $38                                         ; $5577: $ff
	rst  $38                                         ; $5578: $ff
	ld   h, a                                        ; $5579: $67
	adc  l                                           ; $557a: $8d
	sbc  d                                           ; $557b: $9a
	ld   h, e                                        ; $557c: $63
	and  c                                           ; $557d: $a1
	halt                                             ; $557e: $76
	dec  c                                           ; $557f: $0d
	or   d                                           ; $5580: $b2
	push af                                          ; $5581: $f5
	xor  h                                           ; $5582: $ac
	ld   h, l                                        ; $5583: $65
	ld   l, a                                        ; $5584: $6f
	sub  c                                           ; $5585: $91
	ld   [hl], c                                     ; $5586: $71
	ld   [hl], h                                     ; $5587: $74
	rst  $38                                         ; $5588: $ff
	rst  $38                                         ; $5589: $ff
	dec  c                                           ; $558a: $0d
	nop                                              ; $558b: $00
	ld   a, [bc]                                     ; $558c: $0a
	add  hl, de                                      ; $558d: $19
	dec  b                                           ; $558e: $05
	inc  bc                                          ; $558f: $03
	ld   e, b                                        ; $5590: $58
	ld   [bc], a                                     ; $5591: $02
	ret                                              ; $5592: $c9


	ld   d, d                                        ; $5593: $52
	inc  bc                                          ; $5594: $03
	sbc  b                                           ; $5595: $98
	ld   [hl], l                                     ; $5596: $75
	ld   h, a                                        ; $5597: $67
	sub  [hl]                                        ; $5598: $96
	nop                                              ; $5599: $00
	nop                                              ; $559a: $00
	ld   h, a                                        ; $559b: $67
	adc  l                                           ; $559c: $8d
	sbc  d                                           ; $559d: $9a
	ld   h, e                                        ; $559e: $63
	and  c                                           ; $559f: $a1
	ld   e, d                                        ; $55a0: $5a
	ld   [bc], a                                     ; $55a1: $02
	jr   z, jr_050_55f6                              ; $55a2: $28 $52

	nop                                              ; $55a4: $00
	ld   bc, $5d63                                   ; $55a5: $01 $63 $5d
	sub  a                                           ; $55a8: $97
	ld   h, e                                        ; $55a9: $63
	and  c                                           ; $55aa: $a1
	ld   e, d                                        ; $55ab: $5a
	ld   [bc], a                                     ; $55ac: $02
	jr   z, jr_050_5601                              ; $55ad: $28 $52

	nop                                              ; $55af: $00
	ld   [bc], a                                     ; $55b0: $02
	rlca                                             ; $55b1: $07
	adc  a                                           ; $55b2: $8f
	nop                                              ; $55b3: $00
	ld   [bc], a                                     ; $55b4: $02
	inc  bc                                          ; $55b5: $03
	ld   bc, $2000                                   ; $55b6: $01 $00 $20
	nop                                              ; $55b9: $00
	rlca                                             ; $55ba: $07
	inc  h                                           ; $55bb: $24
	ld   bc, $0302                                   ; $55bc: $01 $02 $03
	ld   bc, $2001                                   ; $55bf: $01 $01 $20
	nop                                              ; $55c2: $00
	rlca                                             ; $55c3: $07
	or   d                                           ; $55c4: $b2
	ld   bc, $0302                                   ; $55c5: $01 $02 $03
	ld   bc, $2002                                   ; $55c8: $01 $02 $20
	nop                                              ; $55cb: $00
	ld   b, $29                                      ; $55cc: $06 $29
	ld   [bc], a                                     ; $55ce: $02
	rrca                                             ; $55cf: $0f
	nop                                              ; $55d0: $00
	ld   bc, $5801                                   ; $55d1: $01 $01 $58
	ld   [bc], a                                     ; $55d4: $02
	ret                                              ; $55d5: $c9


	ld   d, d                                        ; $55d6: $52
	inc  bc                                          ; $55d7: $03
	sbc  b                                           ; $55d8: $98
	ld   [hl], l                                     ; $55d9: $75
	ld   h, a                                        ; $55da: $67
	sub  [hl]                                        ; $55db: $96
	sbc  [hl]                                        ; $55dc: $9e
	or   d                                           ; $55dd: $b2
	push af                                          ; $55de: $f5
	xor  h                                           ; $55df: $ac
	ld   a, b                                        ; $55e0: $78
	and  c                                           ; $55e1: $a1
	ld   [hl], h                                     ; $55e2: $74
	dec  c                                           ; $55e3: $0d
	sub  b                                           ; $55e4: $90
	ld   a, h                                        ; $55e5: $7c
	ld   a, l                                        ; $55e6: $7d
	rst  $38                                         ; $55e7: $ff
	rst  $38                                         ; $55e8: $ff
	ld   l, l                                        ; $55e9: $6d
	ld   l, [hl]                                     ; $55ea: $6e
	ld   [bc], a                                     ; $55eb: $02
	jr   z, jr_050_5640                              ; $55ec: $28 $52

	halt                                             ; $55ee: $76
	dec  b                                           ; $55ef: $05
	pop  de                                          ; $55f0: $d1
	ld   [hl], c                                     ; $55f1: $71
	ld   l, l                                        ; $55f2: $6d
	sub  a                                           ; $55f3: $97
	dec  c                                           ; $55f4: $0d
	ld   d, b                                        ; $55f5: $50

jr_050_55f6:
	sub  d                                           ; $55f6: $92
	adc  h                                           ; $55f7: $8c
	ld   [hl], c                                     ; $55f8: $71
	ld   l, l                                        ; $55f9: $6d
	inc  b                                           ; $55fa: $04
	ld   a, b                                        ; $55fb: $78
	ld   e, d                                        ; $55fc: $5a
	ld   d, d                                        ; $55fd: $52
	ld   d, d                                        ; $55fe: $52
	ld   [hl], l                                     ; $55ff: $75
	ld   h, a                                        ; $5600: $67

jr_050_5601:
	ld   e, a                                        ; $5601: $5f
	ld   [hl], a                                     ; $5602: $77
	sbc  a                                           ; $5603: $9f
	dec  c                                           ; $5604: $0d
	nop                                              ; $5605: $00
	ld   a, [bc]                                     ; $5606: $0a
	inc  e                                           ; $5607: $1c
	ld   bc, $0404                                   ; $5608: $01 $04 $04
	ld   bc, $546b                                   ; $560b: $01 $6b $54
	ld   [hl], l                                     ; $560e: $75
	ld   h, a                                        ; $560f: $67
	sub  [hl]                                        ; $5610: $96
	ld   a, e                                        ; $5611: $7b
	rst  $38                                         ; $5612: $ff
	rst  $38                                         ; $5613: $ff
	dec  c                                           ; $5614: $0d
	ld   d, b                                        ; $5615: $50
	ld   l, l                                        ; $5616: $6d
	ld   h, l                                        ; $5617: $65
	sbc  [hl]                                        ; $5618: $9e
	ld   h, a                                        ; $5619: $67
	adc  l                                           ; $561a: $8d
	sbc  d                                           ; $561b: $9a
	ld   h, e                                        ; $561c: $63
	and  c                                           ; $561d: $a1
	ld   a, c                                        ; $561e: $79
	dec  c                                           ; $561f: $0d
	ld   d, b                                        ; $5620: $50
	sub  d                                           ; $5621: $92
	adc  h                                           ; $5622: $8c
	sub  a                                           ; $5623: $97
	ld   a, b                                        ; $5624: $78
	ld   e, e                                        ; $5625: $5b
	sub  c                                           ; $5626: $91
	rst  $38                                         ; $5627: $ff
	rst  $38                                         ; $5628: $ff
	dec  c                                           ; $5629: $0d
	nop                                              ; $562a: $00
	ld   a, [bc]                                     ; $562b: $0a
	inc  e                                           ; $562c: $1c
	ld   bc, $0101                                   ; $562d: $01 $01 $01
	dec  e                                           ; $5630: $1d
	ld   b, b                                        ; $5631: $40
	ld   de, $1103                                   ; $5632: $11 $03 $11
	ld   bc, $2802                                   ; $5635: $01 $02 $28
	nop                                              ; $5638: $00
	ld   bc, $9850                                   ; $5639: $01 $50 $98
	ld   e, d                                        ; $563c: $5a
	halt                                             ; $563d: $76
	ld   d, h                                        ; $563e: $54
	ld   h, d                                        ; $563f: $62

jr_050_5640:
	ld   h, h                                        ; $5640: $64
	ld   d, d                                        ; $5641: $52
	adc  h                                           ; $5642: $8c
	ld   h, a                                        ; $5643: $67
	sbc  a                                           ; $5644: $9f
	dec  c                                           ; $5645: $0d
	inc  bc                                          ; $5646: $03
	ld   l, h                                        ; $5647: $6c
	ld   h, l                                        ; $5648: $65
	ld   [bc], a                                     ; $5649: $02
	and  c                                           ; $564a: $a1
	inc  bc                                          ; $564b: $03
	and  b                                           ; $564c: $a0
	ld   l, a                                        ; $564d: $6f
	ld   e, d                                        ; $564e: $5a
	dec  b                                           ; $564f: $05
	inc  de                                          ; $5650: $13
	ld   a, c                                        ; $5651: $79
	ld   a, b                                        ; $5652: $78
	sbc  b                                           ; $5653: $98
	adc  h                                           ; $5654: $8c
	ld   h, l                                        ; $5655: $65
	ld   l, l                                        ; $5656: $6d
	sbc  a                                           ; $5657: $9f
	dec  c                                           ; $5658: $0d
	nop                                              ; $5659: $00
	ld   a, [bc]                                     ; $565a: $0a
	dec  c                                           ; $565b: $0d
	nop                                              ; $565c: $00
	nop                                              ; $565d: $00
	rrca                                             ; $565e: $0f
	nop                                              ; $565f: $00
	ld   bc, $1e09                                   ; $5660: $01 $09 $1e
	nop                                              ; $5663: $00
	rrca                                             ; $5664: $0f
	nop                                              ; $5665: $00
	ld   bc, $6701                                   ; $5666: $01 $01 $67
	adc  l                                           ; $5669: $8d
	sbc  d                                           ; $566a: $9a
	ld   h, e                                        ; $566b: $63
	and  c                                           ; $566c: $a1
	ld   e, d                                        ; $566d: $5a
	ld   [bc], a                                     ; $566e: $02
	jr   z, jr_050_56c3                              ; $566f: $28 $52

	rst  $38                                         ; $5671: $ff
	rst  $38                                         ; $5672: $ff
	dec  c                                           ; $5673: $0d
	ld   h, e                                        ; $5674: $63
	ld   e, l                                        ; $5675: $5d
	sub  a                                           ; $5676: $97
	ld   h, e                                        ; $5677: $63
	and  c                                           ; $5678: $a1
	and  b                                           ; $5679: $a0
	inc  b                                           ; $567a: $04
	ld   l, h                                        ; $567b: $6c
	ld   h, l                                        ; $567c: $65
	adc  h                                           ; $567d: $8c
	ld   l, c                                        ; $567e: $69
	sbc  c                                           ; $567f: $99
	dec  c                                           ; $5680: $0d
	ld   a, b                                        ; $5681: $78
	and  c                                           ; $5682: $a1
	ld   [hl], h                                     ; $5683: $74
	sbc  a                                           ; $5684: $9f
	dec  c                                           ; $5685: $0d
	nop                                              ; $5686: $00
	ld   a, [bc]                                     ; $5687: $0a
	inc  e                                           ; $5688: $1c
	ld   bc, $0404                                   ; $5689: $01 $04 $04
	dec  e                                           ; $568c: $1d
	ld   b, b                                        ; $568d: $40
	ld   de, $1103                                   ; $568e: $11 $03 $11
	ld   bc, $2902                                   ; $5691: $01 $02 $29
	nop                                              ; $5694: $00
	ld   bc, $a16b                                   ; $5695: $01 $6b $a1
	ld   a, b                                        ; $5698: $78
	rst  $38                                         ; $5699: $ff
	rst  $38                                         ; $569a: $ff
	dec  b                                           ; $569b: $05
	ld   de, $e104                                   ; $569c: $11 $04 $e1
	sub  b                                           ; $569f: $90
	ld   [bc], a                                     ; $56a0: $02
	jp   nz, Jump_050_7859                           ; $56a1: $c2 $59 $78

	ld   d, d                                        ; $56a4: $52
	ld   [hl], l                                     ; $56a5: $75
	dec  c                                           ; $56a6: $0d
	ld   [bc], a                                     ; $56a7: $02
	jr   z, jr_050_5707                              ; $56a8: $28 $5d

	ld   [bc], a                                     ; $56aa: $02
	add  e                                           ; $56ab: $83
	adc  a                                           ; $56ac: $8f
	ld   [hl], d                                     ; $56ad: $72
	ld   e, a                                        ; $56ae: $5f
	ld   a, b                                        ; $56af: $78
	ld   d, d                                        ; $56b0: $52
	ld   [hl], l                                     ; $56b1: $75
	ld   [bc], a                                     ; $56b2: $02
	inc  [hl]                                        ; $56b3: $34
	ld   h, e                                        ; $56b4: $63
	ld   d, d                                        ; $56b5: $52
	sbc  a                                           ; $56b6: $9f
	dec  c                                           ; $56b7: $0d
	ld   h, a                                        ; $56b8: $67
	adc  l                                           ; $56b9: $8d
	sbc  d                                           ; $56ba: $9a
	ld   h, e                                        ; $56bb: $63
	and  c                                           ; $56bc: $a1
	ld   e, d                                        ; $56bd: $5a
	ld   [bc], a                                     ; $56be: $02
	and  c                                           ; $56bf: $a1
	ld   a, h                                        ; $56c0: $7c
	dec  b                                           ; $56c1: $05
	db   $fd                                         ; $56c2: $fd

jr_050_56c3:
	ld   [hl], l                                     ; $56c3: $75
	ld   h, a                                        ; $56c4: $67
	rst  $38                                         ; $56c5: $ff
	rst  $38                                         ; $56c6: $ff
	dec  c                                           ; $56c7: $0d
	nop                                              ; $56c8: $00
	ld   a, [bc]                                     ; $56c9: $0a
	inc  e                                           ; $56ca: $1c
	ld   bc, $0606                                   ; $56cb: $01 $06 $06
	ld   bc, $6d50                                   ; $56ce: $01 $50 $6d
	ld   h, l                                        ; $56d1: $65
	rst  $38                                         ; $56d2: $ff
	rst  $38                                         ; $56d3: $ff
	dec  c                                           ; $56d4: $0d
	ld   h, a                                        ; $56d5: $67
	adc  l                                           ; $56d6: $8d
	sbc  d                                           ; $56d7: $9a
	ld   h, e                                        ; $56d8: $63
	and  c                                           ; $56d9: $a1
	ld   a, c                                        ; $56da: $79
	dec  c                                           ; $56db: $0d
	ld   d, b                                        ; $56dc: $50
	sub  d                                           ; $56dd: $92
	adc  h                                           ; $56de: $8c
	ld   [hl], c                                     ; $56df: $71
	ld   [hl], h                                     ; $56e0: $74
	ld   e, e                                        ; $56e1: $5b
	adc  h                                           ; $56e2: $8c
	ld   h, a                                        ; $56e3: $67
	rst  $38                                         ; $56e4: $ff
	rst  $38                                         ; $56e5: $ff
	dec  c                                           ; $56e6: $0d
	nop                                              ; $56e7: $00
	ld   a, [bc]                                     ; $56e8: $0a
	dec  c                                           ; $56e9: $0d
	nop                                              ; $56ea: $00
	nop                                              ; $56eb: $00
	rrca                                             ; $56ec: $0f
	nop                                              ; $56ed: $00
	ld   bc, $1e09                                   ; $56ee: $01 $09 $1e
	nop                                              ; $56f1: $00
	rrca                                             ; $56f2: $0f
	nop                                              ; $56f3: $00
	ld   bc, $6301                                   ; $56f4: $01 $01 $63
	ld   e, l                                        ; $56f7: $5d
	sub  a                                           ; $56f8: $97
	ld   h, e                                        ; $56f9: $63
	and  c                                           ; $56fa: $a1
	ld   e, d                                        ; $56fb: $5a
	ld   [bc], a                                     ; $56fc: $02
	jr   z, jr_050_5751                              ; $56fd: $28 $52

	rst  $38                                         ; $56ff: $ff
	rst  $38                                         ; $5700: $ff
	dec  c                                           ; $5701: $0d
	ld   [bc], a                                     ; $5702: $02
	ld   a, [de]                                     ; $5703: $1a
	inc  bc                                          ; $5704: $03
	ld   l, e                                        ; $5705: $6b
	ld   a, l                                        ; $5706: $7d

jr_050_5707:
	sbc  [hl]                                        ; $5707: $9e
	ld   h, a                                        ; $5708: $67
	adc  l                                           ; $5709: $8d
	sbc  d                                           ; $570a: $9a
	ld   h, e                                        ; $570b: $63
	and  c                                           ; $570c: $a1
	ld   [hl], l                                     ; $570d: $75
	ld   h, a                                        ; $570e: $67
	sub  [hl]                                        ; $570f: $96
	ld   sp, hl                                      ; $5710: $f9
	dec  c                                           ; $5711: $0d
	nop                                              ; $5712: $00
	ld   a, [bc]                                     ; $5713: $0a
	inc  e                                           ; $5714: $1c
	ld   bc, $0202                                   ; $5715: $01 $02 $02
	dec  e                                           ; $5718: $1d
	ld   b, b                                        ; $5719: $40
	ld   de, $1103                                   ; $571a: $11 $03 $11
	ld   bc, $2903                                   ; $571d: $01 $03 $29
	nop                                              ; $5720: $00
	ld   bc, $a16b                                   ; $5721: $01 $6b $a1
	ld   a, b                                        ; $5724: $78
	rst  $38                                         ; $5725: $ff
	rst  $38                                         ; $5726: $ff
	dec  b                                           ; $5727: $05
	ld   de, $e104                                   ; $5728: $11 $04 $e1
	sub  b                                           ; $572b: $90
	ld   [bc], a                                     ; $572c: $02
	jp   nz, Jump_050_7859                           ; $572d: $c2 $59 $78

	ld   d, d                                        ; $5730: $52
	ld   [hl], l                                     ; $5731: $75
	dec  c                                           ; $5732: $0d
	nop                                              ; $5733: $00
	dec  b                                           ; $5734: $05
	ld   b, b                                        ; $5735: $40
	ld   c, b                                        ; $5736: $48
	ld   [bc], a                                     ; $5737: $02
	nop                                              ; $5738: $00
	nop                                              ; $5739: $00
	ld   bc, $2802                                   ; $573a: $01 $02 $28
	ld   e, l                                        ; $573d: $5d
	ld   [bc], a                                     ; $573e: $02
	add  e                                           ; $573f: $83
	adc  a                                           ; $5740: $8f
	ld   [hl], d                                     ; $5741: $72
	ld   e, a                                        ; $5742: $5f
	ld   a, b                                        ; $5743: $78
	ld   d, d                                        ; $5744: $52
	ld   [hl], l                                     ; $5745: $75
	ld   [bc], a                                     ; $5746: $02
	inc  [hl]                                        ; $5747: $34
	ld   h, e                                        ; $5748: $63
	ld   d, d                                        ; $5749: $52
	sbc  a                                           ; $574a: $9f
	dec  c                                           ; $574b: $0d
	nop                                              ; $574c: $00
	ld   a, [bc]                                     ; $574d: $0a
	dec  b                                           ; $574e: $05
	ld   b, b                                        ; $574f: $40
	ld   c, [hl]                                     ; $5750: $4e

jr_050_5751:
	ld   bc, $0001                                   ; $5751: $01 $01 $00
	ld   bc, $8303                                   ; $5754: $01 $03 $83
	dec  b                                           ; $5757: $05
	dec  c                                           ; $5758: $0d
	ld   h, l                                        ; $5759: $65
	adc  h                                           ; $575a: $8c
	ld   h, a                                        ; $575b: $67
	ld   a, [$000d]                                  ; $575c: $fa $0d $00
	ld   a, [bc]                                     ; $575f: $0a
	dec  c                                           ; $5760: $0d
	nop                                              ; $5761: $00
	nop                                              ; $5762: $00
	rrca                                             ; $5763: $0f
	nop                                              ; $5764: $00
	ld   bc, $1e09                                   ; $5765: $01 $09 $1e
	nop                                              ; $5768: $00
	inc  e                                           ; $5769: $1c
	ld   bc, $0606                                   ; $576a: $01 $06 $06
	ld   bc, $8d67                                   ; $576d: $01 $67 $8d
	adc  h                                           ; $5770: $8c
	ld   l, c                                        ; $5771: $69
	and  c                                           ; $5772: $a1
	rst  $38                                         ; $5773: $ff
	rst  $38                                         ; $5774: $ff
	dec  c                                           ; $5775: $0d
	ld   h, l                                        ; $5776: $65
	ld   a, [hl]                                     ; $5777: $7e
	sub  a                                           ; $5778: $97
	ld   e, l                                        ; $5779: $5d
	add  b                                           ; $577a: $80
	halt                                             ; $577b: $76
	sbc  b                                           ; $577c: $98
	ld   a, c                                        ; $577d: $79
	ld   h, l                                        ; $577e: $65
	ld   [hl], h                                     ; $577f: $74
	dec  c                                           ; $5780: $0d
	ld   e, l                                        ; $5781: $5d
	ld   l, [hl]                                     ; $5782: $6e
	ld   h, e                                        ; $5783: $63
	ld   d, d                                        ; $5784: $52
	rst  $38                                         ; $5785: $ff
	rst  $38                                         ; $5786: $ff
	dec  c                                           ; $5787: $0d
	nop                                              ; $5788: $00
	ld   a, [bc]                                     ; $5789: $0a
	dec  c                                           ; $578a: $0d
	nop                                              ; $578b: $00
	nop                                              ; $578c: $00
	rrca                                             ; $578d: $0f
	nop                                              ; $578e: $00
	ld   bc, $1e09                                   ; $578f: $01 $09 $1e
	nop                                              ; $5792: $00
	nop                                              ; $5793: $00
	ld   [bc], a                                     ; $5794: $02
	rlca                                             ; $5795: $07
	rra                                              ; $5796: $1f
	nop                                              ; $5797: $00
	inc  bc                                          ; $5798: $03
	ld   [de], a                                     ; $5799: $12
	ld   bc, $2265                                   ; $579a: $01 $65 $22
	nop                                              ; $579d: $00
	rlca                                             ; $579e: $07
	sbc  a                                           ; $579f: $9f
	nop                                              ; $57a0: $00
	inc  bc                                          ; $57a1: $03
	ld   [de], a                                     ; $57a2: $12
	ld   bc, $2587                                   ; $57a3: $01 $87 $25
	ld   [bc], a                                     ; $57a6: $02
	nop                                              ; $57a7: $00
	ld   bc, $2c02                                   ; $57a8: $01 $02 $2c
	ld   bc, $2000                                   ; $57ab: $01 $00 $20
	inc  e                                           ; $57ae: $1c
	nop                                              ; $57af: $00
	ld   b, $57                                      ; $57b0: $06 $57
	nop                                              ; $57b2: $00
	rrca                                             ; $57b3: $0f
	nop                                              ; $57b4: $00
	ld   bc, $6701                                   ; $57b5: $01 $01 $67
	adc  l                                           ; $57b8: $8d
	sbc  d                                           ; $57b9: $9a
	ld   h, e                                        ; $57ba: $63
	and  c                                           ; $57bb: $a1
	sbc  a                                           ; $57bc: $9f
	dec  c                                           ; $57bd: $0d
	nop                                              ; $57be: $00
	ld   a, [bc]                                     ; $57bf: $0a
	inc  e                                           ; $57c0: $1c
	ld   [bc], a                                     ; $57c1: $02
	nop                                              ; $57c2: $00
	nop                                              ; $57c3: $00
	ld   bc, $8c52                                   ; $57c4: $01 $52 $8c
	sbc  [hl]                                        ; $57c7: $9e
	inc  bc                                          ; $57c8: $03
	ld   l, e                                        ; $57c9: $6b
	ld   e, d                                        ; $57ca: $5a
	inc  b                                           ; $57cb: $04
	sbc  c                                           ; $57cc: $99
	ld   l, c                                        ; $57cd: $69
	adc  h                                           ; $57ce: $8c
	ld   l, c                                        ; $57cf: $69
	and  c                                           ; $57d0: $a1
	ld   a, h                                        ; $57d1: $7c
	sbc  a                                           ; $57d2: $9f
	dec  c                                           ; $57d3: $0d
	ld   d, b                                        ; $57d4: $50
	halt                                             ; $57d5: $76
	ld   a, c                                        ; $57d6: $79
	ld   h, l                                        ; $57d7: $65
	ld   [hl], h                                     ; $57d8: $74
	ld   e, l                                        ; $57d9: $5d
	ld   l, [hl]                                     ; $57da: $6e
	ld   h, e                                        ; $57db: $63
	ld   d, d                                        ; $57dc: $52
	ld   a, b                                        ; $57dd: $78
	sbc  a                                           ; $57de: $9f
	dec  c                                           ; $57df: $0d
	nop                                              ; $57e0: $00
	ld   a, [bc]                                     ; $57e1: $0a
	dec  c                                           ; $57e2: $0d
	nop                                              ; $57e3: $00
	nop                                              ; $57e4: $00
	rrca                                             ; $57e5: $0f
	nop                                              ; $57e6: $00
	ld   bc, $1e09                                   ; $57e7: $01 $09 $1e
	nop                                              ; $57ea: $00
	inc  e                                           ; $57eb: $1c
	ld   [bc], a                                     ; $57ec: $02
	nop                                              ; $57ed: $00
	nop                                              ; $57ee: $00
	ld   bc, $9750                                   ; $57ef: $01 $50 $97
	sbc  [hl]                                        ; $57f2: $9e
	ld   [$6300], sp                                 ; $57f3: $08 $00 $63
	and  c                                           ; $57f6: $a1
	sbc  a                                           ; $57f7: $9f
	dec  c                                           ; $57f8: $0d
	nop                                              ; $57f9: $00
	ld   a, [bc]                                     ; $57fa: $0a
	rrca                                             ; $57fb: $0f
	nop                                              ; $57fc: $00
	ld   bc, $6701                                   ; $57fd: $01 $01 $67
	adc  l                                           ; $5800: $8d
	sbc  d                                           ; $5801: $9a
	ld   h, e                                        ; $5802: $63
	and  c                                           ; $5803: $a1
	sbc  a                                           ; $5804: $9f
	dec  c                                           ; $5805: $0d
	ld   e, b                                        ; $5806: $58
	inc  b                                           ; $5807: $04
	ld   a, e                                        ; $5808: $7b
	sbc  d                                           ; $5809: $9a
	ld   h, e                                        ; $580a: $63
	adc  h                                           ; $580b: $8c
	ld   [hl], l                                     ; $580c: $75
	ld   h, a                                        ; $580d: $67
	sbc  a                                           ; $580e: $9f
	dec  c                                           ; $580f: $0d
	nop                                              ; $5810: $00
	ld   a, [bc]                                     ; $5811: $0a
	inc  e                                           ; $5812: $1c
	ld   [bc], a                                     ; $5813: $02
	ld   bc, $0101                                   ; $5814: $01 $01 $01
	ld   e, b                                        ; $5817: $58
	inc  b                                           ; $5818: $04
	ld   a, e                                        ; $5819: $7b
	sbc  d                                           ; $581a: $9a
	ld   h, e                                        ; $581b: $63
	adc  h                                           ; $581c: $8c
	sbc  a                                           ; $581d: $9f
	dec  c                                           ; $581e: $0d
	ld   [hl], l                                     ; $581f: $75
	ld   a, l                                        ; $5820: $7d
	inc  bc                                          ; $5821: $03
	add  e                                           ; $5822: $83
	dec  b                                           ; $5823: $05
	dec  c                                           ; $5824: $0d
	rst  $38                                         ; $5825: $ff
	rst  $38                                         ; $5826: $ff
	dec  c                                           ; $5827: $0d
	nop                                              ; $5828: $00
	ld   a, [bc]                                     ; $5829: $0a
	dec  c                                           ; $582a: $0d
	nop                                              ; $582b: $00
	nop                                              ; $582c: $00
	rrca                                             ; $582d: $0f
	nop                                              ; $582e: $00
	ld   bc, $1e09                                   ; $582f: $01 $09 $1e
	nop                                              ; $5832: $00
	dec  c                                           ; $5833: $0d
	ld   [bc], a                                     ; $5834: $02
	nop                                              ; $5835: $00
	rrca                                             ; $5836: $0f
	nop                                              ; $5837: $00
	ld   bc, $5001                                   ; $5838: $01 $01 $50
	sbc  [hl]                                        ; $583b: $9e
	ld   h, a                                        ; $583c: $67
	adc  l                                           ; $583d: $8d
	sbc  d                                           ; $583e: $9a
	ld   h, e                                        ; $583f: $63
	and  c                                           ; $5840: $a1
	sbc  a                                           ; $5841: $9f
	dec  c                                           ; $5842: $0d
	nop                                              ; $5843: $00
	ld   a, [bc]                                     ; $5844: $0a
	rrca                                             ; $5845: $0f
	ld   [bc], a                                     ; $5846: $02
	nop                                              ; $5847: $00
	ld   bc, $9750                                   ; $5848: $01 $50 $97
	sbc  [hl]                                        ; $584b: $9e
	ld   [$6300], sp                                 ; $584c: $08 $00 $63
	and  c                                           ; $584f: $a1
	sbc  a                                           ; $5850: $9f
	dec  c                                           ; $5851: $0d
	nop                                              ; $5852: $00
	ld   a, [bc]                                     ; $5853: $0a
	rrca                                             ; $5854: $0f
	nop                                              ; $5855: $00
	ld   bc, $0201                                   ; $5856: $01 $01 $02
	and  l                                           ; $5859: $a5
	inc  b                                           ; $585a: $04
	xor  d                                           ; $585b: $aa
	ld   a, h                                        ; $585c: $7c
	ld   e, b                                        ; $585d: $58
	inc  b                                           ; $585e: $04
	xor  l                                           ; $585f: $ad
	ld   h, d                                        ; $5860: $62
	inc  b                                           ; $5861: $04
	sbc  h                                           ; $5862: $9c
	ld   a, l                                        ; $5863: $7d
	dec  c                                           ; $5864: $0d
	ld   e, b                                        ; $5865: $58
	ld   d, d                                        ; $5866: $52
	ld   h, l                                        ; $5867: $65
	ld   e, c                                        ; $5868: $59
	ld   [hl], c                                     ; $5869: $71
	ld   l, l                                        ; $586a: $6d
	ld   [hl], l                                     ; $586b: $75
	ld   h, a                                        ; $586c: $67
	ld   a, e                                        ; $586d: $7b
	sbc  a                                           ; $586e: $9f
	dec  c                                           ; $586f: $0d
	nop                                              ; $5870: $00
	ld   a, [bc]                                     ; $5871: $0a
	rlca                                             ; $5872: $07
	ldh  a, [rP1]                                    ; $5873: $f0 $00
	ld   [bc], a                                     ; $5875: $02
	nop                                              ; $5876: $00
	ld   bc, $200a                                   ; $5877: $01 $0a $20
	nop                                              ; $587a: $00
	rlca                                             ; $587b: $07
	rla                                              ; $587c: $17
	ld   bc, $0002                                   ; $587d: $01 $02 $00
	ld   bc, $200c                                   ; $5880: $01 $0c $20
	nop                                              ; $5883: $00
	inc  e                                           ; $5884: $1c
	ld   [bc], a                                     ; $5885: $02
	ld   bc, $0101                                   ; $5886: $01 $01 $01
	ld   d, [hl]                                     ; $5889: $56
	ld   d, [hl]                                     ; $588a: $56
	sbc  [hl]                                        ; $588b: $9e
	halt                                             ; $588c: $76
	ld   e, l                                        ; $588d: $5d
	ld   a, c                                        ; $588e: $79
	dec  c                                           ; $588f: $0d
	rst  $10                                         ; $5890: $d7
	db   $ec                                         ; $5891: $ec
	ld   a, h                                        ; $5892: $7c
	ld   [hl], h                                     ; $5893: $74
	sbc  b                                           ; $5894: $98
	sub  d                                           ; $5895: $92
	ld   e, e                                        ; $5896: $5b
	dec  c                                           ; $5897: $0d
	ld   e, d                                        ; $5898: $5a
	sbc  [hl]                                        ; $5899: $9e
	ld   e, b                                        ; $589a: $58
	ld   d, d                                        ; $589b: $52
	ld   h, l                                        ; $589c: $65
	ld   e, c                                        ; $589d: $59
	ld   [hl], c                                     ; $589e: $71
	ld   l, l                                        ; $589f: $6d
	ld   [hl], l                                     ; $58a0: $75
	ld   h, a                                        ; $58a1: $67
	sbc  l                                           ; $58a2: $9d
	ld   a, e                                        ; $58a3: $7b
	sbc  a                                           ; $58a4: $9f
	dec  c                                           ; $58a5: $0d
	nop                                              ; $58a6: $00
	ld   a, [bc]                                     ; $58a7: $0a
	ld   b, $3e                                      ; $58a8: $06 $3e
	ld   bc, $021c                                   ; $58aa: $01 $1c $02
	ld   bc, $0101                                   ; $58ad: $01 $01 $01
	ld   d, [hl]                                     ; $58b0: $56
	ld   d, [hl]                                     ; $58b1: $56
	sbc  [hl]                                        ; $58b2: $9e
	halt                                             ; $58b3: $76
	ld   e, l                                        ; $58b4: $5d
	ld   a, c                                        ; $58b5: $79
	dec  c                                           ; $58b6: $0d
	ld   e, b                                        ; $58b7: $58
	ld   [hl], l                                     ; $58b8: $75
	and  c                                           ; $58b9: $a1
	ld   a, h                                        ; $58ba: $7c
	xor  l                                           ; $58bb: $ad
	push af                                          ; $58bc: $f5
	db   $e4                                         ; $58bd: $e4
	dec  c                                           ; $58be: $0d
	ld   e, d                                        ; $58bf: $5a
	sbc  [hl]                                        ; $58c0: $9e
	ld   e, b                                        ; $58c1: $58
	ld   d, d                                        ; $58c2: $52
	ld   h, l                                        ; $58c3: $65
	ld   e, c                                        ; $58c4: $59
	ld   [hl], c                                     ; $58c5: $71
	ld   l, l                                        ; $58c6: $6d
	ld   [hl], l                                     ; $58c7: $75
	ld   h, a                                        ; $58c8: $67
	sbc  l                                           ; $58c9: $9d
	ld   a, e                                        ; $58ca: $7b
	sbc  a                                           ; $58cb: $9f
	dec  c                                           ; $58cc: $0d
	nop                                              ; $58cd: $00
	ld   a, [bc]                                     ; $58ce: $0a
	ld   b, $3e                                      ; $58cf: $06 $3e
	ld   bc, $021c                                   ; $58d1: $01 $1c $02
	nop                                              ; $58d4: $00
	nop                                              ; $58d5: $00
	ld   bc, $9a6b                                   ; $58d6: $01 $6b $9a
	ld   [hl], l                                     ; $58d9: $75
	ld   a, l                                        ; $58da: $7d
	sbc  [hl]                                        ; $58db: $9e
	inc  bc                                          ; $58dc: $03
	add  e                                           ; $58dd: $83
	dec  b                                           ; $58de: $05
	dec  c                                           ; $58df: $0d
	ld   h, l                                        ; $58e0: $65
	adc  h                                           ; $58e1: $8c
	ld   h, a                                        ; $58e2: $67
	sbc  l                                           ; $58e3: $9d
	sbc  a                                           ; $58e4: $9f
	dec  c                                           ; $58e5: $0d
	nop                                              ; $58e6: $00
	ld   a, [bc]                                     ; $58e7: $0a
	dec  c                                           ; $58e8: $0d
	nop                                              ; $58e9: $00
	nop                                              ; $58ea: $00
	rrca                                             ; $58eb: $0f
	nop                                              ; $58ec: $00
	ld   bc, $1e09                                   ; $58ed: $01 $09 $1e
	nop                                              ; $58f0: $00
	nop                                              ; $58f1: $00
	ld   [bc], a                                     ; $58f2: $02
	rlca                                             ; $58f3: $07
	rra                                              ; $58f4: $1f
	nop                                              ; $58f5: $00
	inc  bc                                          ; $58f6: $03
	ld   de, $6501                                   ; $58f7: $11 $01 $65
	ld   [hl+], a                                    ; $58fa: $22
	nop                                              ; $58fb: $00
	rlca                                             ; $58fc: $07
	sub  [hl]                                        ; $58fd: $96
	nop                                              ; $58fe: $00
	inc  bc                                          ; $58ff: $03
	ld   de, $8701                                   ; $5900: $11 $01 $87
	dec  h                                           ; $5903: $25
	ld   [bc], a                                     ; $5904: $02
	nop                                              ; $5905: $00
	ld   bc, $2c02                                   ; $5906: $01 $02 $2c
	ld   bc, $2000                                   ; $5909: $01 $00 $20
	inc  e                                           ; $590c: $1c
	nop                                              ; $590d: $00
	ld   b, $50                                      ; $590e: $06 $50
	nop                                              ; $5910: $00
	rrca                                             ; $5911: $0f
	nop                                              ; $5912: $00
	ld   bc, $6301                                   ; $5913: $01 $01 $63
	ld   e, l                                        ; $5916: $5d
	sub  a                                           ; $5917: $97
	ld   h, e                                        ; $5918: $63
	and  c                                           ; $5919: $a1
	sbc  a                                           ; $591a: $9f
	dec  c                                           ; $591b: $0d
	nop                                              ; $591c: $00
	ld   a, [bc]                                     ; $591d: $0a
	inc  e                                           ; $591e: $1c
	ld   bc, $0000                                   ; $591f: $01 $00 $00
	ld   bc, $8f62                                   ; $5922: $01 $62 $8f
	and  c                                           ; $5925: $a1
	ld   a, b                                        ; $5926: $78
	ld   h, e                                        ; $5927: $63
	ld   d, d                                        ; $5928: $52
	sbc  a                                           ; $5929: $9f
	dec  c                                           ; $592a: $0d
	ld   d, d                                        ; $592b: $52
	adc  h                                           ; $592c: $8c
	dec  b                                           ; $592d: $05
	jr   z, jr_050_5982                              ; $592e: $28 $52

	ld   [hl], l                                     ; $5930: $75
	sbc  c                                           ; $5931: $99
	and  c                                           ; $5932: $a1
	ld   [hl], l                                     ; $5933: $75
	ld   h, a                                        ; $5934: $67
	sbc  a                                           ; $5935: $9f
	dec  c                                           ; $5936: $0d
	nop                                              ; $5937: $00
	ld   a, [bc]                                     ; $5938: $0a
	dec  c                                           ; $5939: $0d
	nop                                              ; $593a: $00
	nop                                              ; $593b: $00
	rrca                                             ; $593c: $0f
	nop                                              ; $593d: $00
	ld   bc, $1e09                                   ; $593e: $01 $09 $1e
	nop                                              ; $5941: $00
	inc  e                                           ; $5942: $1c
	ld   bc, $0000                                   ; $5943: $01 $00 $00
	ld   bc, $9e50                                   ; $5946: $01 $50 $9e
	ld   [$6300], sp                                 ; $5949: $08 $00 $63
	and  c                                           ; $594c: $a1
	sbc  a                                           ; $594d: $9f
	dec  c                                           ; $594e: $0d
	nop                                              ; $594f: $00
	ld   a, [bc]                                     ; $5950: $0a
	rrca                                             ; $5951: $0f
	nop                                              ; $5952: $00
	ld   bc, $6301                                   ; $5953: $01 $01 $63
	ld   e, l                                        ; $5956: $5d
	sub  a                                           ; $5957: $97
	ld   h, e                                        ; $5958: $63
	and  c                                           ; $5959: $a1
	sbc  a                                           ; $595a: $9f
	dec  c                                           ; $595b: $0d
	ld   e, b                                        ; $595c: $58
	inc  b                                           ; $595d: $04
	ld   a, e                                        ; $595e: $7b
	sbc  d                                           ; $595f: $9a
	ld   h, e                                        ; $5960: $63
	adc  h                                           ; $5961: $8c
	ld   [hl], l                                     ; $5962: $75
	ld   h, a                                        ; $5963: $67
	sbc  a                                           ; $5964: $9f
	dec  c                                           ; $5965: $0d
	nop                                              ; $5966: $00
	ld   a, [bc]                                     ; $5967: $0a
	rrca                                             ; $5968: $0f
	ld   bc, $0100                                   ; $5969: $01 $00 $01
	ld   e, b                                        ; $596c: $58
	inc  b                                           ; $596d: $04
	ld   a, e                                        ; $596e: $7b
	sbc  d                                           ; $596f: $9a
	ld   h, e                                        ; $5970: $63
	adc  h                                           ; $5971: $8c
	ld   [hl], l                                     ; $5972: $75
	ld   h, a                                        ; $5973: $67
	sbc  a                                           ; $5974: $9f
	dec  c                                           ; $5975: $0d
	ld   l, e                                        ; $5976: $6b
	sbc  d                                           ; $5977: $9a
	ld   [hl], l                                     ; $5978: $75
	ld   a, l                                        ; $5979: $7d
	rst  $38                                         ; $597a: $ff
	rst  $38                                         ; $597b: $ff
	dec  c                                           ; $597c: $0d
	nop                                              ; $597d: $00
	ld   a, [bc]                                     ; $597e: $0a
	dec  c                                           ; $597f: $0d
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00

jr_050_5982:
	rrca                                             ; $5982: $0f
	nop                                              ; $5983: $00
	ld   bc, $1e09                                   ; $5984: $01 $09 $1e
	nop                                              ; $5987: $00
	rrca                                             ; $5988: $0f
	nop                                              ; $5989: $00
	ld   bc, $010d                                   ; $598a: $01 $0d $01
	nop                                              ; $598d: $00
	ld   bc, $5d63                                   ; $598e: $01 $63 $5d
	sub  a                                           ; $5991: $97
	ld   h, e                                        ; $5992: $63
	and  c                                           ; $5993: $a1
	sbc  a                                           ; $5994: $9f
	dec  c                                           ; $5995: $0d
	nop                                              ; $5996: $00
	ld   a, [bc]                                     ; $5997: $0a
	rrca                                             ; $5998: $0f
	ld   bc, $0100                                   ; $5999: $01 $00 $01
	ld   d, b                                        ; $599c: $50
	sub  a                                           ; $599d: $97
	sbc  [hl]                                        ; $599e: $9e
	ld   [$6300], sp                                 ; $599f: $08 $00 $63
	and  c                                           ; $59a2: $a1
	sbc  a                                           ; $59a3: $9f
	dec  c                                           ; $59a4: $0d
	nop                                              ; $59a5: $00
	ld   a, [bc]                                     ; $59a6: $0a
	rrca                                             ; $59a7: $0f
	nop                                              ; $59a8: $00
	ld   bc, $0201                                   ; $59a9: $01 $01 $02
	and  l                                           ; $59ac: $a5
	inc  b                                           ; $59ad: $04
	xor  d                                           ; $59ae: $aa
	ld   a, h                                        ; $59af: $7c
	ld   e, b                                        ; $59b0: $58
	inc  b                                           ; $59b1: $04
	xor  l                                           ; $59b2: $ad
	ld   h, d                                        ; $59b3: $62
	inc  b                                           ; $59b4: $04
	sbc  h                                           ; $59b5: $9c
	ld   a, l                                        ; $59b6: $7d
	dec  c                                           ; $59b7: $0d
	ld   e, b                                        ; $59b8: $58
	ld   d, d                                        ; $59b9: $52
	ld   h, l                                        ; $59ba: $65
	ld   e, c                                        ; $59bb: $59
	ld   [hl], c                                     ; $59bc: $71
	ld   l, l                                        ; $59bd: $6d
	ld   [hl], l                                     ; $59be: $75
	ld   h, a                                        ; $59bf: $67
	ld   a, e                                        ; $59c0: $7b
	sbc  a                                           ; $59c1: $9f
	dec  c                                           ; $59c2: $0d
	nop                                              ; $59c3: $00
	ld   a, [bc]                                     ; $59c4: $0a
	rlca                                             ; $59c5: $07
	push hl                                          ; $59c6: $e5
	nop                                              ; $59c7: $00
	ld   [bc], a                                     ; $59c8: $02
	nop                                              ; $59c9: $00
	ld   bc, $200a                                   ; $59ca: $01 $0a $20
	nop                                              ; $59cd: $00
	rlca                                             ; $59ce: $07
	dec  bc                                          ; $59cf: $0b
	ld   bc, $0002                                   ; $59d0: $01 $02 $00
	ld   bc, $200c                                   ; $59d3: $01 $0c $20
	nop                                              ; $59d6: $00
	inc  e                                           ; $59d7: $1c
	ld   bc, $0101                                   ; $59d8: $01 $01 $01
	ld   bc, $5656                                   ; $59db: $01 $56 $56
	sbc  [hl]                                        ; $59de: $9e
	halt                                             ; $59df: $76
	ld   e, l                                        ; $59e0: $5d
	ld   a, c                                        ; $59e1: $79
	dec  c                                           ; $59e2: $0d
	rst  $10                                         ; $59e3: $d7
	db   $ec                                         ; $59e4: $ec
	ld   a, h                                        ; $59e5: $7c
	ld   [hl], h                                     ; $59e6: $74
	sbc  b                                           ; $59e7: $98
	sub  d                                           ; $59e8: $92
	ld   e, e                                        ; $59e9: $5b
	dec  c                                           ; $59ea: $0d
	ld   e, d                                        ; $59eb: $5a
	sbc  [hl]                                        ; $59ec: $9e
	ld   e, b                                        ; $59ed: $58
	ld   d, d                                        ; $59ee: $52
	ld   h, l                                        ; $59ef: $65
	ld   e, c                                        ; $59f0: $59
	ld   [hl], c                                     ; $59f1: $71
	ld   l, l                                        ; $59f2: $6d
	ld   [hl], l                                     ; $59f3: $75
	ld   h, a                                        ; $59f4: $67
	ld   a, e                                        ; $59f5: $7b
	sbc  a                                           ; $59f6: $9f
	dec  c                                           ; $59f7: $0d
	nop                                              ; $59f8: $00
	ld   a, [bc]                                     ; $59f9: $0a
	ld   b, $31                                      ; $59fa: $06 $31
	ld   bc, $011c                                   ; $59fc: $01 $1c $01
	ld   bc, $0101                                   ; $59ff: $01 $01 $01
	ld   d, [hl]                                     ; $5a02: $56
	ld   d, [hl]                                     ; $5a03: $56
	sbc  [hl]                                        ; $5a04: $9e
	halt                                             ; $5a05: $76
	ld   e, l                                        ; $5a06: $5d
	ld   a, c                                        ; $5a07: $79
	dec  c                                           ; $5a08: $0d
	ld   e, b                                        ; $5a09: $58
	ld   [hl], l                                     ; $5a0a: $75
	and  c                                           ; $5a0b: $a1
	ld   a, h                                        ; $5a0c: $7c
	xor  l                                           ; $5a0d: $ad
	push af                                          ; $5a0e: $f5
	db   $e4                                         ; $5a0f: $e4
	dec  c                                           ; $5a10: $0d
	ld   e, d                                        ; $5a11: $5a
	sbc  [hl]                                        ; $5a12: $9e
	ld   e, b                                        ; $5a13: $58
	ld   d, d                                        ; $5a14: $52
	ld   h, l                                        ; $5a15: $65
	ld   e, c                                        ; $5a16: $59
	ld   [hl], c                                     ; $5a17: $71
	ld   l, l                                        ; $5a18: $6d
	ld   [hl], l                                     ; $5a19: $75
	ld   h, a                                        ; $5a1a: $67
	ld   a, e                                        ; $5a1b: $7b
	sbc  a                                           ; $5a1c: $9f
	dec  c                                           ; $5a1d: $0d
	nop                                              ; $5a1e: $00
	ld   a, [bc]                                     ; $5a1f: $0a
	ld   b, $31                                      ; $5a20: $06 $31
	ld   bc, $011c                                   ; $5a22: $01 $1c $01
	nop                                              ; $5a25: $00
	nop                                              ; $5a26: $00
	ld   bc, $9a6b                                   ; $5a27: $01 $6b $9a
	ld   [hl], l                                     ; $5a2a: $75
	ld   a, l                                        ; $5a2b: $7d
	adc  h                                           ; $5a2c: $8c
	ld   l, l                                        ; $5a2d: $6d
	sbc  a                                           ; $5a2e: $9f
	dec  c                                           ; $5a2f: $0d
	nop                                              ; $5a30: $00
	ld   a, [bc]                                     ; $5a31: $0a
	dec  c                                           ; $5a32: $0d
	nop                                              ; $5a33: $00
	nop                                              ; $5a34: $00
	rrca                                             ; $5a35: $0f
	nop                                              ; $5a36: $00
	ld   bc, $1e09                                   ; $5a37: $01 $09 $1e
	nop                                              ; $5a3a: $00
	nop                                              ; $5a3b: $00
	ld   [bc], a                                     ; $5a3c: $02
	rlca                                             ; $5a3d: $07
	rra                                              ; $5a3e: $1f
	nop                                              ; $5a3f: $00
	inc  bc                                          ; $5a40: $03
	inc  de                                          ; $5a41: $13
	ld   bc, $2265                                   ; $5a42: $01 $65 $22
	nop                                              ; $5a45: $00
	rlca                                             ; $5a46: $07
	sub  e                                           ; $5a47: $93
	nop                                              ; $5a48: $00
	inc  bc                                          ; $5a49: $03
	inc  de                                          ; $5a4a: $13
	ld   bc, $2587                                   ; $5a4b: $01 $87 $25
	ld   [bc], a                                     ; $5a4e: $02
	nop                                              ; $5a4f: $00
	ld   bc, $2c02                                   ; $5a50: $01 $02 $2c
	ld   bc, $2000                                   ; $5a53: $01 $00 $20
	inc  e                                           ; $5a56: $1c
	nop                                              ; $5a57: $00
	ld   b, $4f                                      ; $5a58: $06 $4f
	nop                                              ; $5a5a: $00
	rrca                                             ; $5a5b: $0f
	nop                                              ; $5a5c: $00
	ld   bc, $df01                                   ; $5a5d: $01 $01 $df
	db   $ec                                         ; $5a60: $ec
	and  e                                           ; $5a61: $a3
	ld   h, e                                        ; $5a62: $63
	and  c                                           ; $5a63: $a1
	sbc  a                                           ; $5a64: $9f
	dec  c                                           ; $5a65: $0d
	nop                                              ; $5a66: $00
	ld   a, [bc]                                     ; $5a67: $0a
	inc  e                                           ; $5a68: $1c
	inc  bc                                          ; $5a69: $03
	nop                                              ; $5a6a: $00
	nop                                              ; $5a6b: $00
	ld   bc, $8c52                                   ; $5a6c: $01 $52 $8c
	dec  b                                           ; $5a6f: $05
	jr   z, jr_050_5ac4                              ; $5a70: $28 $52

	ld   [hl], l                                     ; $5a72: $75
	sbc  c                                           ; $5a73: $99
	ld   a, h                                        ; $5a74: $7c
	sbc  a                                           ; $5a75: $9f
	dec  c                                           ; $5a76: $0d
	adc  h                                           ; $5a77: $8c
	ld   l, l                                        ; $5a78: $6d
	sbc  [hl]                                        ; $5a79: $9e
	ld   [bc], a                                     ; $5a7a: $02
	xor  d                                           ; $5a7b: $aa
	ld   [hl], l                                     ; $5a7c: $75
	ld   a, e                                        ; $5a7d: $7b
	sbc  a                                           ; $5a7e: $9f
	dec  c                                           ; $5a7f: $0d
	nop                                              ; $5a80: $00
	ld   a, [bc]                                     ; $5a81: $0a
	dec  c                                           ; $5a82: $0d
	nop                                              ; $5a83: $00
	nop                                              ; $5a84: $00
	rrca                                             ; $5a85: $0f
	nop                                              ; $5a86: $00
	ld   bc, $1e09                                   ; $5a87: $01 $09 $1e
	nop                                              ; $5a8a: $00
	inc  e                                           ; $5a8b: $1c
	inc  bc                                          ; $5a8c: $03
	nop                                              ; $5a8d: $00
	nop                                              ; $5a8e: $00
	ld   bc, $9750                                   ; $5a8f: $01 $50 $97
	sbc  [hl]                                        ; $5a92: $9e
	ld   [$5d00], sp                                 ; $5a93: $08 $00 $5d
	and  c                                           ; $5a96: $a1
	sbc  a                                           ; $5a97: $9f
	dec  c                                           ; $5a98: $0d
	nop                                              ; $5a99: $00
	ld   a, [bc]                                     ; $5a9a: $0a
	rrca                                             ; $5a9b: $0f
	nop                                              ; $5a9c: $00
	ld   bc, $df01                                   ; $5a9d: $01 $01 $df
	db   $ec                                         ; $5aa0: $ec
	and  e                                           ; $5aa1: $a3
	ld   h, e                                        ; $5aa2: $63
	and  c                                           ; $5aa3: $a1
	sbc  a                                           ; $5aa4: $9f
	dec  c                                           ; $5aa5: $0d
	ld   e, b                                        ; $5aa6: $58
	inc  b                                           ; $5aa7: $04
	ld   a, e                                        ; $5aa8: $7b
	sbc  d                                           ; $5aa9: $9a
	ld   h, e                                        ; $5aaa: $63
	adc  h                                           ; $5aab: $8c
	ld   [hl], l                                     ; $5aac: $75
	ld   h, a                                        ; $5aad: $67
	sbc  a                                           ; $5aae: $9f
	dec  c                                           ; $5aaf: $0d
	nop                                              ; $5ab0: $00
	ld   a, [bc]                                     ; $5ab1: $0a
	rrca                                             ; $5ab2: $0f
	inc  bc                                          ; $5ab3: $03
	nop                                              ; $5ab4: $00
	ld   bc, $0458                                   ; $5ab5: $01 $58 $04
	ld   a, e                                        ; $5ab8: $7b
	sbc  d                                           ; $5ab9: $9a
	ld   h, e                                        ; $5aba: $63
	adc  h                                           ; $5abb: $8c
	sbc  a                                           ; $5abc: $9f
	dec  c                                           ; $5abd: $0d
	ld   h, [hl]                                     ; $5abe: $66
	sub  c                                           ; $5abf: $91
	ld   d, b                                        ; $5ac0: $50
	ld   a, e                                        ; $5ac1: $7b
	sbc  a                                           ; $5ac2: $9f
	dec  c                                           ; $5ac3: $0d

jr_050_5ac4:
	nop                                              ; $5ac4: $00
	ld   a, [bc]                                     ; $5ac5: $0a
	dec  c                                           ; $5ac6: $0d
	nop                                              ; $5ac7: $00
	nop                                              ; $5ac8: $00
	rrca                                             ; $5ac9: $0f
	nop                                              ; $5aca: $00
	ld   bc, $1e09                                   ; $5acb: $01 $09 $1e
	nop                                              ; $5ace: $00
	dec  c                                           ; $5acf: $0d
	inc  bc                                          ; $5ad0: $03
	nop                                              ; $5ad1: $00
	rrca                                             ; $5ad2: $0f
	nop                                              ; $5ad3: $00
	ld   bc, $df01                                   ; $5ad4: $01 $01 $df
	db   $ec                                         ; $5ad7: $ec
	and  e                                           ; $5ad8: $a3
	ld   h, e                                        ; $5ad9: $63
	and  c                                           ; $5ada: $a1
	sbc  a                                           ; $5adb: $9f
	dec  c                                           ; $5adc: $0d
	nop                                              ; $5add: $00
	ld   a, [bc]                                     ; $5ade: $0a
	inc  e                                           ; $5adf: $1c
	inc  bc                                          ; $5ae0: $03
	nop                                              ; $5ae1: $00
	nop                                              ; $5ae2: $00
	ld   bc, $9750                                   ; $5ae3: $01 $50 $97
	sbc  [hl]                                        ; $5ae6: $9e
	ld   [$5d00], sp                                 ; $5ae7: $08 $00 $5d
	and  c                                           ; $5aea: $a1
	sbc  a                                           ; $5aeb: $9f
	dec  c                                           ; $5aec: $0d
	nop                                              ; $5aed: $00
	ld   a, [bc]                                     ; $5aee: $0a
	rrca                                             ; $5aef: $0f
	nop                                              ; $5af0: $00
	ld   bc, $0201                                   ; $5af1: $01 $01 $02
	and  l                                           ; $5af4: $a5
	inc  b                                           ; $5af5: $04
	xor  d                                           ; $5af6: $aa
	ld   a, h                                        ; $5af7: $7c
	ld   e, b                                        ; $5af8: $58
	inc  b                                           ; $5af9: $04
	xor  l                                           ; $5afa: $ad
	ld   h, d                                        ; $5afb: $62
	inc  b                                           ; $5afc: $04
	sbc  h                                           ; $5afd: $9c
	ld   a, l                                        ; $5afe: $7d
	dec  c                                           ; $5aff: $0d
	ld   e, b                                        ; $5b00: $58
	ld   d, d                                        ; $5b01: $52
	ld   h, l                                        ; $5b02: $65
	ld   e, c                                        ; $5b03: $59
	ld   [hl], c                                     ; $5b04: $71
	ld   l, l                                        ; $5b05: $6d
	ld   [hl], l                                     ; $5b06: $75
	ld   h, a                                        ; $5b07: $67
	ld   a, e                                        ; $5b08: $7b
	sbc  a                                           ; $5b09: $9f
	dec  c                                           ; $5b0a: $0d
	nop                                              ; $5b0b: $00
	ld   a, [bc]                                     ; $5b0c: $0a
	rlca                                             ; $5b0d: $07
	db   $e3                                         ; $5b0e: $e3
	nop                                              ; $5b0f: $00
	ld   [bc], a                                     ; $5b10: $02
	nop                                              ; $5b11: $00
	ld   bc, $200a                                   ; $5b12: $01 $0a $20
	nop                                              ; $5b15: $00
	rlca                                             ; $5b16: $07
	ld   [$0201], sp                                 ; $5b17: $08 $01 $02
	nop                                              ; $5b1a: $00
	ld   bc, $200c                                   ; $5b1b: $01 $0c $20
	nop                                              ; $5b1e: $00
	inc  e                                           ; $5b1f: $1c
	inc  bc                                          ; $5b20: $03
	inc  bc                                          ; $5b21: $03
	inc  bc                                          ; $5b22: $03
	ld   bc, $5656                                   ; $5b23: $01 $56 $56
	sbc  [hl]                                        ; $5b26: $9e
	halt                                             ; $5b27: $76
	ld   e, l                                        ; $5b28: $5d
	ld   a, c                                        ; $5b29: $79
	dec  c                                           ; $5b2a: $0d
	rst  $10                                         ; $5b2b: $d7
	db   $ec                                         ; $5b2c: $ec
	ld   a, h                                        ; $5b2d: $7c
	ld   [hl], h                                     ; $5b2e: $74
	sbc  b                                           ; $5b2f: $98
	sub  d                                           ; $5b30: $92
	ld   e, e                                        ; $5b31: $5b
	dec  c                                           ; $5b32: $0d
	ld   e, d                                        ; $5b33: $5a
	sbc  [hl]                                        ; $5b34: $9e
	ld   e, b                                        ; $5b35: $58
	ld   d, d                                        ; $5b36: $52
	ld   h, l                                        ; $5b37: $65
	ld   e, c                                        ; $5b38: $59
	ld   [hl], c                                     ; $5b39: $71
	ld   l, l                                        ; $5b3a: $6d
	sbc  l                                           ; $5b3b: $9d
	ld   a, e                                        ; $5b3c: $7b
	sbc  a                                           ; $5b3d: $9f
	dec  c                                           ; $5b3e: $0d
	nop                                              ; $5b3f: $00
	ld   a, [bc]                                     ; $5b40: $0a
	ld   b, $2d                                      ; $5b41: $06 $2d
	ld   bc, $031c                                   ; $5b43: $01 $1c $03
	inc  bc                                          ; $5b46: $03
	inc  bc                                          ; $5b47: $03
	ld   bc, $5656                                   ; $5b48: $01 $56 $56
	sbc  [hl]                                        ; $5b4b: $9e
	halt                                             ; $5b4c: $76
	ld   e, l                                        ; $5b4d: $5d
	ld   a, c                                        ; $5b4e: $79
	dec  c                                           ; $5b4f: $0d
	ld   e, b                                        ; $5b50: $58
	ld   [hl], l                                     ; $5b51: $75
	and  c                                           ; $5b52: $a1
	ld   a, h                                        ; $5b53: $7c
	xor  l                                           ; $5b54: $ad
	push af                                          ; $5b55: $f5
	db   $e4                                         ; $5b56: $e4
	dec  c                                           ; $5b57: $0d
	ld   e, d                                        ; $5b58: $5a
	sbc  [hl]                                        ; $5b59: $9e
	ld   e, b                                        ; $5b5a: $58
	ld   d, d                                        ; $5b5b: $52
	ld   h, l                                        ; $5b5c: $65
	ld   e, c                                        ; $5b5d: $59
	ld   [hl], c                                     ; $5b5e: $71
	ld   l, l                                        ; $5b5f: $6d
	sbc  l                                           ; $5b60: $9d
	ld   a, e                                        ; $5b61: $7b
	sbc  a                                           ; $5b62: $9f
	dec  c                                           ; $5b63: $0d
	nop                                              ; $5b64: $00
	ld   a, [bc]                                     ; $5b65: $0a
	ld   b, $2d                                      ; $5b66: $06 $2d
	ld   bc, $031c                                   ; $5b68: $01 $1c $03
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	ld   bc, $9b6b                                   ; $5b6d: $01 $6b $9b
	ld   l, e                                        ; $5b70: $6b
	sbc  e                                           ; $5b71: $9b
	inc  bc                                          ; $5b72: $03
	ld   l, l                                        ; $5b73: $6d
	dec  b                                           ; $5b74: $05
	add  hl, de                                      ; $5b75: $19
	ld   a, h                                        ; $5b76: $7c
	inc  bc                                          ; $5b77: $03
	ld   l, a                                        ; $5b78: $6f
	ld   [bc], a                                     ; $5b79: $02
	xor  c                                           ; $5b7a: $a9
	sub  [hl]                                        ; $5b7b: $96
	sbc  a                                           ; $5b7c: $9f
	dec  c                                           ; $5b7d: $0d
	ld   l, e                                        ; $5b7e: $6b
	sbc  d                                           ; $5b7f: $9a
	ld   h, [hl]                                     ; $5b80: $66
	sub  c                                           ; $5b81: $91
	sbc  a                                           ; $5b82: $9f
	dec  c                                           ; $5b83: $0d
	nop                                              ; $5b84: $00
	ld   a, [bc]                                     ; $5b85: $0a
	dec  c                                           ; $5b86: $0d
	nop                                              ; $5b87: $00
	nop                                              ; $5b88: $00
	rrca                                             ; $5b89: $0f
	nop                                              ; $5b8a: $00
	ld   bc, $1e09                                   ; $5b8b: $01 $09 $1e
	nop                                              ; $5b8e: $00
	nop                                              ; $5b8f: $00
	ld   [bc], a                                     ; $5b90: $02
	rlca                                             ; $5b91: $07
	rra                                              ; $5b92: $1f
	nop                                              ; $5b93: $00
	inc  bc                                          ; $5b94: $03
	inc  d                                           ; $5b95: $14
	ld   bc, $2265                                   ; $5b96: $01 $65 $22
	nop                                              ; $5b99: $00
	rlca                                             ; $5b9a: $07
	adc  [hl]                                        ; $5b9b: $8e
	nop                                              ; $5b9c: $00
	inc  bc                                          ; $5b9d: $03
	inc  d                                           ; $5b9e: $14
	ld   bc, $2587                                   ; $5b9f: $01 $87 $25
	ld   [bc], a                                     ; $5ba2: $02
	nop                                              ; $5ba3: $00
	ld   bc, $2c02                                   ; $5ba4: $01 $02 $2c
	ld   bc, $2000                                   ; $5ba7: $01 $00 $20
	inc  e                                           ; $5baa: $1c
	nop                                              ; $5bab: $00
	ld   b, $50                                      ; $5bac: $06 $50
	nop                                              ; $5bae: $00
	rrca                                             ; $5baf: $0f
	nop                                              ; $5bb0: $00
	ld   bc, $9201                                   ; $5bb1: $01 $01 $92
	ld   d, b                                        ; $5bb4: $50
	sbc  [hl]                                        ; $5bb5: $9e
	and  e                                           ; $5bb6: $a3
	and  l                                           ; $5bb7: $a5
	db   $ec                                         ; $5bb8: $ec
	cp   d                                           ; $5bb9: $ba
	sbc  a                                           ; $5bba: $9f
	dec  c                                           ; $5bbb: $0d
	nop                                              ; $5bbc: $00
	ld   a, [bc]                                     ; $5bbd: $0a
	inc  e                                           ; $5bbe: $1c
	inc  b                                           ; $5bbf: $04
	nop                                              ; $5bc0: $00
	nop                                              ; $5bc1: $00
	ld   bc, $a5a3                                   ; $5bc2: $01 $a3 $a5
	db   $ec                                         ; $5bc5: $ec
	cp   d                                           ; $5bc6: $ba
	sbc  [hl]                                        ; $5bc7: $9e
	ld   d, d                                        ; $5bc8: $52
	ld   l, e                                        ; $5bc9: $6b
	ld   e, d                                        ; $5bca: $5a
	ld   h, l                                        ; $5bcb: $65
	ld   d, d                                        ; $5bcc: $52
	ld   a, h                                        ; $5bcd: $7c
	sbc  a                                           ; $5bce: $9f
	dec  c                                           ; $5bcf: $0d
	adc  h                                           ; $5bd0: $8c
	ld   l, l                                        ; $5bd1: $6d
	ld   a, e                                        ; $5bd2: $7b
	sbc  a                                           ; $5bd3: $9f
	dec  c                                           ; $5bd4: $0d
	nop                                              ; $5bd5: $00
	ld   a, [bc]                                     ; $5bd6: $0a
	dec  c                                           ; $5bd7: $0d
	nop                                              ; $5bd8: $00
	nop                                              ; $5bd9: $00
	rrca                                             ; $5bda: $0f
	nop                                              ; $5bdb: $00
	ld   bc, $1e09                                   ; $5bdc: $01 $09 $1e
	nop                                              ; $5bdf: $00
	inc  e                                           ; $5be0: $1c
	inc  b                                           ; $5be1: $04
	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	ld   bc, $9e50                                   ; $5be4: $01 $50 $9e
	ld   l, a                                        ; $5be7: $6f
	ld   d, d                                        ; $5be8: $52
	ld   [bc], a                                     ; $5be9: $02
	inc  de                                          ; $5bea: $13
	ld   l, a                                        ; $5beb: $6f
	sub  c                                           ; $5bec: $91
	and  c                                           ; $5bed: $a1
	sbc  a                                           ; $5bee: $9f
	dec  c                                           ; $5bef: $0d
	nop                                              ; $5bf0: $00
	ld   a, [bc]                                     ; $5bf1: $0a
	rrca                                             ; $5bf2: $0f
	nop                                              ; $5bf3: $00
	ld   bc, $9201                                   ; $5bf4: $01 $01 $92
	ld   d, b                                        ; $5bf7: $50
	sbc  [hl]                                        ; $5bf8: $9e
	and  e                                           ; $5bf9: $a3
	and  l                                           ; $5bfa: $a5
	db   $ec                                         ; $5bfb: $ec
	cp   d                                           ; $5bfc: $ba
	sbc  a                                           ; $5bfd: $9f
	dec  c                                           ; $5bfe: $0d
	nop                                              ; $5bff: $00
	ld   a, [bc]                                     ; $5c00: $0a
	rrca                                             ; $5c01: $0f
	inc  b                                           ; $5c02: $04
	nop                                              ; $5c03: $00
	ld   bc, $9166                                   ; $5c04: $01 $66 $91
	ld   d, b                                        ; $5c07: $50
	ld   a, e                                        ; $5c08: $7b
	sbc  [hl]                                        ; $5c09: $9e
	ld   l, a                                        ; $5c0a: $6f
	ld   d, d                                        ; $5c0b: $52
	ld   [bc], a                                     ; $5c0c: $02
	inc  de                                          ; $5c0d: $13
	ld   l, a                                        ; $5c0e: $6f
	sub  c                                           ; $5c0f: $91
	and  c                                           ; $5c10: $a1
	sbc  a                                           ; $5c11: $9f
	dec  c                                           ; $5c12: $0d
	nop                                              ; $5c13: $00
	ld   a, [bc]                                     ; $5c14: $0a
	dec  c                                           ; $5c15: $0d
	nop                                              ; $5c16: $00
	nop                                              ; $5c17: $00
	rrca                                             ; $5c18: $0f
	nop                                              ; $5c19: $00
	ld   bc, $1e09                                   ; $5c1a: $01 $09 $1e
	nop                                              ; $5c1d: $00
	rrca                                             ; $5c1e: $0f
	nop                                              ; $5c1f: $00
	ld   bc, $040d                                   ; $5c20: $01 $0d $04
	nop                                              ; $5c23: $00
	ld   bc, $5092                                   ; $5c24: $01 $92 $50
	sbc  [hl]                                        ; $5c27: $9e
	and  e                                           ; $5c28: $a3
	and  l                                           ; $5c29: $a5
	db   $ec                                         ; $5c2a: $ec
	cp   d                                           ; $5c2b: $ba
	sbc  a                                           ; $5c2c: $9f
	dec  c                                           ; $5c2d: $0d
	nop                                              ; $5c2e: $00
	ld   a, [bc]                                     ; $5c2f: $0a
	inc  e                                           ; $5c30: $1c
	inc  b                                           ; $5c31: $04
	nop                                              ; $5c32: $00
	nop                                              ; $5c33: $00
	ld   bc, $9e50                                   ; $5c34: $01 $50 $9e
	ld   l, a                                        ; $5c37: $6f
	ld   d, d                                        ; $5c38: $52
	ld   [bc], a                                     ; $5c39: $02
	inc  de                                          ; $5c3a: $13
	ld   l, a                                        ; $5c3b: $6f
	sub  c                                           ; $5c3c: $91
	and  c                                           ; $5c3d: $a1
	sbc  a                                           ; $5c3e: $9f
	dec  c                                           ; $5c3f: $0d
	nop                                              ; $5c40: $00
	ld   a, [bc]                                     ; $5c41: $0a
	rrca                                             ; $5c42: $0f
	nop                                              ; $5c43: $00
	ld   bc, $0201                                   ; $5c44: $01 $01 $02
	and  l                                           ; $5c47: $a5
	inc  b                                           ; $5c48: $04
	xor  d                                           ; $5c49: $aa
	ld   a, h                                        ; $5c4a: $7c
	ld   e, b                                        ; $5c4b: $58
	inc  b                                           ; $5c4c: $04
	xor  l                                           ; $5c4d: $ad
	ld   h, d                                        ; $5c4e: $62
	inc  b                                           ; $5c4f: $04
	sbc  h                                           ; $5c50: $9c
	ld   a, l                                        ; $5c51: $7d
	dec  c                                           ; $5c52: $0d
	ld   e, b                                        ; $5c53: $58
	ld   d, d                                        ; $5c54: $52
	ld   h, l                                        ; $5c55: $65
	ld   e, c                                        ; $5c56: $59
	ld   [hl], c                                     ; $5c57: $71
	ld   l, l                                        ; $5c58: $6d
	ld   a, e                                        ; $5c59: $7b
	sbc  a                                           ; $5c5a: $9f
	dec  c                                           ; $5c5b: $0d
	nop                                              ; $5c5c: $00
	ld   a, [bc]                                     ; $5c5d: $0a
	rlca                                             ; $5c5e: $07
	ldh  [rP1], a                                    ; $5c5f: $e0 $00
	ld   [bc], a                                     ; $5c61: $02
	nop                                              ; $5c62: $00
	ld   bc, $200a                                   ; $5c63: $01 $0a $20
	nop                                              ; $5c66: $00
	rlca                                             ; $5c67: $07
	ld   b, $01                                      ; $5c68: $06 $01
	ld   [bc], a                                     ; $5c6a: $02
	nop                                              ; $5c6b: $00
	ld   bc, $200c                                   ; $5c6c: $01 $0c $20
	nop                                              ; $5c6f: $00
	inc  e                                           ; $5c70: $1c
	inc  b                                           ; $5c71: $04
	ld   bc, $0101                                   ; $5c72: $01 $01 $01
	ld   d, h                                        ; $5c75: $54
	and  c                                           ; $5c76: $a1
	sbc  a                                           ; $5c77: $9f
	and  e                                           ; $5c78: $a3
	and  l                                           ; $5c79: $a5
	db   $ec                                         ; $5c7a: $ec
	cp   d                                           ; $5c7b: $ba
	sbc  [hl]                                        ; $5c7c: $9e
	dec  c                                           ; $5c7d: $0d
	rst  $10                                         ; $5c7e: $d7
	db   $ec                                         ; $5c7f: $ec
	ld   a, h                                        ; $5c80: $7c
	ld   [hl], h                                     ; $5c81: $74
	sbc  b                                           ; $5c82: $98
	sub  d                                           ; $5c83: $92
	ld   e, e                                        ; $5c84: $5b
	dec  c                                           ; $5c85: $0d
	ld   e, d                                        ; $5c86: $5a
	sbc  [hl]                                        ; $5c87: $9e
	ld   e, b                                        ; $5c88: $58
	ld   d, d                                        ; $5c89: $52
	ld   h, l                                        ; $5c8a: $65
	ld   e, c                                        ; $5c8b: $59
	ld   [hl], c                                     ; $5c8c: $71
	ld   l, l                                        ; $5c8d: $6d
	sub  [hl]                                        ; $5c8e: $96
	sbc  a                                           ; $5c8f: $9f
	dec  c                                           ; $5c90: $0d
	nop                                              ; $5c91: $00
	ld   a, [bc]                                     ; $5c92: $0a
	ld   b, $2c                                      ; $5c93: $06 $2c
	ld   bc, $041c                                   ; $5c95: $01 $1c $04
	ld   bc, $0101                                   ; $5c98: $01 $01 $01
	ld   d, h                                        ; $5c9b: $54
	and  c                                           ; $5c9c: $a1
	sbc  [hl]                                        ; $5c9d: $9e
	and  e                                           ; $5c9e: $a3
	and  l                                           ; $5c9f: $a5
	db   $ec                                         ; $5ca0: $ec
	cp   d                                           ; $5ca1: $ba
	sbc  [hl]                                        ; $5ca2: $9e
	dec  c                                           ; $5ca3: $0d
	ld   e, b                                        ; $5ca4: $58
	ld   [hl], l                                     ; $5ca5: $75
	and  c                                           ; $5ca6: $a1
	ld   a, h                                        ; $5ca7: $7c
	xor  l                                           ; $5ca8: $ad
	push af                                          ; $5ca9: $f5
	db   $e4                                         ; $5caa: $e4
	dec  c                                           ; $5cab: $0d
	ld   e, d                                        ; $5cac: $5a
	sbc  [hl]                                        ; $5cad: $9e
	ld   e, b                                        ; $5cae: $58
	ld   d, d                                        ; $5caf: $52
	ld   h, l                                        ; $5cb0: $65
	ld   e, c                                        ; $5cb1: $59
	ld   [hl], c                                     ; $5cb2: $71
	ld   l, l                                        ; $5cb3: $6d
	sub  [hl]                                        ; $5cb4: $96
	sbc  a                                           ; $5cb5: $9f
	dec  c                                           ; $5cb6: $0d
	nop                                              ; $5cb7: $00
	ld   a, [bc]                                     ; $5cb8: $0a
	ld   b, $2c                                      ; $5cb9: $06 $2c
	ld   bc, $041c                                   ; $5cbb: $01 $1c $04
	nop                                              ; $5cbe: $00
	nop                                              ; $5cbf: $00
	ld   bc, $9166                                   ; $5cc0: $01 $66 $91
	ld   d, b                                        ; $5cc3: $50
	ld   a, e                                        ; $5cc4: $7b
	sbc  [hl]                                        ; $5cc5: $9e
	ld   l, a                                        ; $5cc6: $6f
	ld   d, d                                        ; $5cc7: $52
	ld   [bc], a                                     ; $5cc8: $02
	inc  de                                          ; $5cc9: $13
	ld   l, a                                        ; $5cca: $6f
	sub  c                                           ; $5ccb: $91
	and  c                                           ; $5ccc: $a1
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
	nop                                              ; $5cda: $00
	ld   [bc], a                                     ; $5cdb: $02
	rlca                                             ; $5cdc: $07
	ld   l, $00                                      ; $5cdd: $2e $00
	inc  bc                                          ; $5cdf: $03
	ld   d, $01                                      ; $5ce0: $16 $01
	ld   h, l                                        ; $5ce2: $65
	inc  hl                                          ; $5ce3: $23
	nop                                              ; $5ce4: $00
	rlca                                             ; $5ce5: $07
	ld   h, [hl]                                     ; $5ce6: $66
	nop                                              ; $5ce7: $00
	inc  bc                                          ; $5ce8: $03
	ld   d, $01                                      ; $5ce9: $16 $01
	ld   h, [hl]                                     ; $5ceb: $66
	dec  h                                           ; $5cec: $25
	inc  bc                                          ; $5ced: $03
	ld   d, $01                                      ; $5cee: $16 $01
	add  a                                           ; $5cf0: $87
	ld   [hl+], a                                    ; $5cf1: $22
	inc  e                                           ; $5cf2: $1c
	nop                                              ; $5cf3: $00
	rlca                                             ; $5cf4: $07
	xor  b                                           ; $5cf5: $a8
	nop                                              ; $5cf6: $00
	inc  bc                                          ; $5cf7: $03
	ld   d, $01                                      ; $5cf8: $16 $01
	add  a                                           ; $5cfa: $87
	dec  h                                           ; $5cfb: $25
	ld   [bc], a                                     ; $5cfc: $02
	nop                                              ; $5cfd: $00
	ld   bc, $2c02                                   ; $5cfe: $01 $02 $2c
	ld   bc, $2000                                   ; $5d01: $01 $00 $20
	inc  e                                           ; $5d04: $1c
	nop                                              ; $5d05: $00
	ld   b, $66                                      ; $5d06: $06 $66
	nop                                              ; $5d08: $00
	rrca                                             ; $5d09: $0f
	nop                                              ; $5d0a: $00
	ld   bc, $ac01                                   ; $5d0b: $01 $01 $ac
	push af                                          ; $5d0e: $f5
	bit  4, e                                        ; $5d0f: $cb $63
	and  c                                           ; $5d11: $a1
	sbc  a                                           ; $5d12: $9f
	dec  c                                           ; $5d13: $0d
	nop                                              ; $5d14: $00
	ld   a, [bc]                                     ; $5d15: $0a
	inc  e                                           ; $5d16: $1c
	ld   b, $00                                      ; $5d17: $06 $00
	nop                                              ; $5d19: $00
	ld   bc, $999d                                   ; $5d1a: $01 $9d $99
	ld   d, d                                        ; $5d1d: $52
	sbc  a                                           ; $5d1e: $9f
	ld   l, a                                        ; $5d1f: $6f
	sub  l                                           ; $5d20: $95
	ld   d, d                                        ; $5d21: $52
	halt                                             ; $5d22: $76
	dec  b                                           ; $5d23: $05
	jr   z, jr_050_5d82                              ; $5d24: $28 $5c

	ld   a, h                                        ; $5d26: $7c
	dec  c                                           ; $5d27: $0d
	inc  b                                           ; $5d28: $04
	di                                               ; $5d29: $f3
	ld   e, d                                        ; $5d2a: $5a
	ld   d, b                                        ; $5d2b: $50
	sbc  c                                           ; $5d2c: $99
	and  c                                           ; $5d2d: $a1
	ld   l, [hl]                                     ; $5d2e: $6e
	sbc  a                                           ; $5d2f: $9f
	dec  c                                           ; $5d30: $0d
	adc  h                                           ; $5d31: $8c
	ld   l, l                                        ; $5d32: $6d
	ld   a, b                                        ; $5d33: $78
	sbc  a                                           ; $5d34: $9f
	dec  c                                           ; $5d35: $0d
	nop                                              ; $5d36: $00
	ld   a, [bc]                                     ; $5d37: $0a
	dec  c                                           ; $5d38: $0d
	nop                                              ; $5d39: $00
	nop                                              ; $5d3a: $00
	rrca                                             ; $5d3b: $0f
	nop                                              ; $5d3c: $00
	ld   bc, $1e09                                   ; $5d3d: $01 $09 $1e
	nop                                              ; $5d40: $00
	inc  e                                           ; $5d41: $1c
	ld   b, $00                                      ; $5d42: $06 $00
	nop                                              ; $5d44: $00
	ld   bc, $5496                                   ; $5d45: $01 $96 $54
	sbc  [hl]                                        ; $5d48: $9e
	ld   [$9f00], sp                                 ; $5d49: $08 $00 $9f
	dec  c                                           ; $5d4c: $0d
	nop                                              ; $5d4d: $00
	ld   a, [bc]                                     ; $5d4e: $0a
	rrca                                             ; $5d4f: $0f
	nop                                              ; $5d50: $00
	ld   bc, $5801                                   ; $5d51: $01 $01 $58
	inc  b                                           ; $5d54: $04
	ld   a, e                                        ; $5d55: $7b
	sbc  d                                           ; $5d56: $9a
	ld   h, e                                        ; $5d57: $63
	adc  h                                           ; $5d58: $8c
	ld   [hl], l                                     ; $5d59: $75
	ld   h, a                                        ; $5d5a: $67
	sbc  a                                           ; $5d5b: $9f
	dec  c                                           ; $5d5c: $0d
	xor  h                                           ; $5d5d: $ac
	push af                                          ; $5d5e: $f5
	bit  4, e                                        ; $5d5f: $cb $63
	and  c                                           ; $5d61: $a1
	sbc  a                                           ; $5d62: $9f
	dec  c                                           ; $5d63: $0d
	nop                                              ; $5d64: $00
	ld   a, [bc]                                     ; $5d65: $0a
	rrca                                             ; $5d66: $0f
	ld   b, $00                                      ; $5d67: $06 $00
	ld   bc, $0458                                   ; $5d69: $01 $58 $04
	ld   a, e                                        ; $5d6c: $7b
	sbc  d                                           ; $5d6d: $9a
	ld   h, e                                        ; $5d6e: $63
	and  c                                           ; $5d6f: $a1
	sbc  a                                           ; $5d70: $9f
	dec  c                                           ; $5d71: $0d
	ld   h, [hl]                                     ; $5d72: $66
	sub  c                                           ; $5d73: $91
	ld   d, b                                        ; $5d74: $50
	ld   a, b                                        ; $5d75: $78
	sbc  a                                           ; $5d76: $9f
	dec  c                                           ; $5d77: $0d
	nop                                              ; $5d78: $00
	ld   a, [bc]                                     ; $5d79: $0a
	dec  c                                           ; $5d7a: $0d
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	rrca                                             ; $5d7d: $0f
	nop                                              ; $5d7e: $00
	ld   bc, $1e09                                   ; $5d7f: $01 $09 $1e

jr_050_5d82:
	nop                                              ; $5d82: $00
	rrca                                             ; $5d83: $0f
	nop                                              ; $5d84: $00
	ld   bc, $060d                                   ; $5d85: $01 $0d $06
	nop                                              ; $5d88: $00
	ld   bc, $f5ac                                   ; $5d89: $01 $ac $f5
	bit  4, e                                        ; $5d8c: $cb $63
	and  c                                           ; $5d8e: $a1
	sbc  a                                           ; $5d8f: $9f
	dec  c                                           ; $5d90: $0d
	nop                                              ; $5d91: $00
	ld   a, [bc]                                     ; $5d92: $0a
	inc  e                                           ; $5d93: $1c
	ld   b, $00                                      ; $5d94: $06 $00
	nop                                              ; $5d96: $00
	ld   bc, $5496                                   ; $5d97: $01 $96 $54
	sbc  [hl]                                        ; $5d9a: $9e
	ld   [$9f00], sp                                 ; $5d9b: $08 $00 $9f
	dec  c                                           ; $5d9e: $0d
	nop                                              ; $5d9f: $00
	ld   a, [bc]                                     ; $5da0: $0a
	rrca                                             ; $5da1: $0f
	nop                                              ; $5da2: $00
	ld   bc, $0201                                   ; $5da3: $01 $01 $02
	and  l                                           ; $5da6: $a5
	inc  b                                           ; $5da7: $04
	xor  d                                           ; $5da8: $aa
	ld   a, h                                        ; $5da9: $7c
	ld   e, b                                        ; $5daa: $58
	inc  b                                           ; $5dab: $04
	xor  l                                           ; $5dac: $ad
	ld   h, d                                        ; $5dad: $62
	inc  b                                           ; $5dae: $04
	sbc  h                                           ; $5daf: $9c
	ld   a, l                                        ; $5db0: $7d
	dec  c                                           ; $5db1: $0d
	ld   e, b                                        ; $5db2: $58
	ld   d, d                                        ; $5db3: $52
	ld   h, l                                        ; $5db4: $65
	ld   e, c                                        ; $5db5: $59
	ld   [hl], c                                     ; $5db6: $71
	ld   l, l                                        ; $5db7: $6d
	ld   [hl], l                                     ; $5db8: $75
	ld   h, a                                        ; $5db9: $67
	ld   a, e                                        ; $5dba: $7b
	sbc  a                                           ; $5dbb: $9f
	dec  c                                           ; $5dbc: $0d
	nop                                              ; $5dbd: $00
	ld   a, [bc]                                     ; $5dbe: $0a
	rlca                                             ; $5dbf: $07
	or   $00                                         ; $5dc0: $f6 $00
	ld   [bc], a                                     ; $5dc2: $02
	nop                                              ; $5dc3: $00
	ld   bc, $200a                                   ; $5dc4: $01 $0a $20
	nop                                              ; $5dc7: $00
	rlca                                             ; $5dc8: $07
	dec  e                                           ; $5dc9: $1d
	ld   bc, $0002                                   ; $5dca: $01 $02 $00
	ld   bc, $200c                                   ; $5dcd: $01 $0c $20
	nop                                              ; $5dd0: $00
	inc  e                                           ; $5dd1: $1c
	ld   b, $01                                      ; $5dd2: $06 $01
	ld   bc, $6b01                                   ; $5dd4: $01 $01 $6b
	ld   d, h                                        ; $5dd7: $54
	ld   l, e                                        ; $5dd8: $6b
	ld   d, h                                        ; $5dd9: $54
	sbc  [hl]                                        ; $5dda: $9e
	halt                                             ; $5ddb: $76
	ld   e, l                                        ; $5ddc: $5d
	ld   a, c                                        ; $5ddd: $79
	dec  c                                           ; $5dde: $0d
	rst  $10                                         ; $5ddf: $d7
	db   $ec                                         ; $5de0: $ec
	ld   a, h                                        ; $5de1: $7c
	ld   [hl], h                                     ; $5de2: $74
	sbc  b                                           ; $5de3: $98
	sub  d                                           ; $5de4: $92
	ld   e, e                                        ; $5de5: $5b
	dec  c                                           ; $5de6: $0d
	ld   e, d                                        ; $5de7: $5a
	sbc  [hl]                                        ; $5de8: $9e
	ld   d, h                                        ; $5de9: $54
	adc  h                                           ; $5dea: $8c
	ld   e, c                                        ; $5deb: $59
	ld   [hl], c                                     ; $5dec: $71
	ld   l, l                                        ; $5ded: $6d
	sub  [hl]                                        ; $5dee: $96
	ld   a, b                                        ; $5def: $78
	ld   d, b                                        ; $5df0: $50
	sbc  a                                           ; $5df1: $9f
	dec  c                                           ; $5df2: $0d
	nop                                              ; $5df3: $00
	ld   a, [bc]                                     ; $5df4: $0a
	ld   b, $44                                      ; $5df5: $06 $44
	ld   bc, $061c                                   ; $5df7: $01 $1c $06
	ld   bc, $0101                                   ; $5dfa: $01 $01 $01
	ld   l, e                                        ; $5dfd: $6b
	ld   d, h                                        ; $5dfe: $54
	ld   l, e                                        ; $5dff: $6b
	ld   d, h                                        ; $5e00: $54
	sbc  [hl]                                        ; $5e01: $9e
	halt                                             ; $5e02: $76
	ld   e, l                                        ; $5e03: $5d
	ld   a, c                                        ; $5e04: $79
	dec  c                                           ; $5e05: $0d
	ld   e, b                                        ; $5e06: $58
	ld   [hl], l                                     ; $5e07: $75
	and  c                                           ; $5e08: $a1
	ld   a, h                                        ; $5e09: $7c
	xor  l                                           ; $5e0a: $ad
	push af                                          ; $5e0b: $f5
	db   $e4                                         ; $5e0c: $e4
	dec  c                                           ; $5e0d: $0d
	ld   e, d                                        ; $5e0e: $5a
	sbc  [hl]                                        ; $5e0f: $9e
	ld   d, h                                        ; $5e10: $54
	adc  h                                           ; $5e11: $8c
	ld   e, c                                        ; $5e12: $59
	ld   [hl], c                                     ; $5e13: $71
	ld   l, l                                        ; $5e14: $6d
	sub  [hl]                                        ; $5e15: $96
	ld   a, b                                        ; $5e16: $78
	ld   d, b                                        ; $5e17: $50
	sbc  a                                           ; $5e18: $9f
	dec  c                                           ; $5e19: $0d
	nop                                              ; $5e1a: $00
	ld   a, [bc]                                     ; $5e1b: $0a
	ld   b, $44                                      ; $5e1c: $06 $44
	ld   bc, $061c                                   ; $5e1e: $01 $1c $06
	nop                                              ; $5e21: $00
	nop                                              ; $5e22: $00
	ld   bc, $9166                                   ; $5e23: $01 $66 $91
	ld   d, b                                        ; $5e26: $50
	ld   a, b                                        ; $5e27: $78
	sbc  a                                           ; $5e28: $9f
	dec  c                                           ; $5e29: $0d
	nop                                              ; $5e2a: $00
	ld   a, [bc]                                     ; $5e2b: $0a
	dec  c                                           ; $5e2c: $0d
	nop                                              ; $5e2d: $00
	nop                                              ; $5e2e: $00
	rrca                                             ; $5e2f: $0f
	nop                                              ; $5e30: $00
	ld   bc, $1e09                                   ; $5e31: $01 $09 $1e
	nop                                              ; $5e34: $00
	nop                                              ; $5e35: $00
	ld   [bc], a                                     ; $5e36: $02
	rlca                                             ; $5e37: $07
	rra                                              ; $5e38: $1f
	nop                                              ; $5e39: $00
	inc  bc                                          ; $5e3a: $03
	dec  d                                           ; $5e3b: $15
	ld   bc, $2265                                   ; $5e3c: $01 $65 $22
	nop                                              ; $5e3f: $00
	rlca                                             ; $5e40: $07
	sbc  d                                           ; $5e41: $9a
	nop                                              ; $5e42: $00
	inc  bc                                          ; $5e43: $03
	dec  d                                           ; $5e44: $15
	ld   bc, $2587                                   ; $5e45: $01 $87 $25
	ld   [bc], a                                     ; $5e48: $02
	nop                                              ; $5e49: $00
	ld   bc, $2c02                                   ; $5e4a: $01 $02 $2c
	ld   bc, $2000                                   ; $5e4d: $01 $00 $20
	inc  e                                           ; $5e50: $1c
	nop                                              ; $5e51: $00
	ld   b, $57                                      ; $5e52: $06 $57
	nop                                              ; $5e54: $00
	rrca                                             ; $5e55: $0f
	nop                                              ; $5e56: $00
	ld   bc, $0201                                   ; $5e57: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e5a: $cf
	dec  b                                           ; $5e5b: $05
	ld   a, [de]                                     ; $5e5c: $1a
	ld   h, e                                        ; $5e5d: $63
	and  c                                           ; $5e5e: $a1
	sbc  a                                           ; $5e5f: $9f
	dec  c                                           ; $5e60: $0d
	nop                                              ; $5e61: $00
	ld   a, [bc]                                     ; $5e62: $0a
	inc  e                                           ; $5e63: $1c
	dec  b                                           ; $5e64: $05
	nop                                              ; $5e65: $00
	nop                                              ; $5e66: $00
	ld   bc, $a502                                   ; $5e67: $01 $02 $a5
	ld   l, a                                        ; $5e6a: $6f
	sub  l                                           ; $5e6b: $95
	ld   [hl], c                                     ; $5e6c: $71
	halt                                             ; $5e6d: $76
	sbc  [hl]                                        ; $5e6e: $9e
	inc  b                                           ; $5e6f: $04
	ld   c, $04                                      ; $5e70: $0e $04
	adc  h                                           ; $5e72: $8c
	ld   a, b                                        ; $5e73: $78
	and  c                                           ; $5e74: $a1
	sub  d                                           ; $5e75: $92
	sbc  a                                           ; $5e76: $9f
	dec  c                                           ; $5e77: $0d
	ld   h, a                                        ; $5e78: $67
	adc  h                                           ; $5e79: $8c
	and  c                                           ; $5e7a: $a1
	ld   a, b                                        ; $5e7b: $78
	db   $fc                                         ; $5e7c: $fc
	sbc  a                                           ; $5e7d: $9f
	adc  c                                           ; $5e7e: $89
	ld   a, b                                        ; $5e7f: $78
	sbc  a                                           ; $5e80: $9f
	dec  c                                           ; $5e81: $0d
	nop                                              ; $5e82: $00
	ld   a, [bc]                                     ; $5e83: $0a
	dec  c                                           ; $5e84: $0d
	nop                                              ; $5e85: $00
	nop                                              ; $5e86: $00
	rrca                                             ; $5e87: $0f
	nop                                              ; $5e88: $00
	ld   bc, $1e09                                   ; $5e89: $01 $09 $1e
	nop                                              ; $5e8c: $00
	inc  e                                           ; $5e8d: $1c
	dec  b                                           ; $5e8e: $05
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	ld   bc, $7196                                   ; $5e91: $01 $96 $71
	sbc  [hl]                                        ; $5e94: $9e
	ld   [$7d00], sp                                 ; $5e95: $08 $00 $7d
	and  c                                           ; $5e98: $a1
	sbc  a                                           ; $5e99: $9f
	dec  c                                           ; $5e9a: $0d
	nop                                              ; $5e9b: $00
	ld   a, [bc]                                     ; $5e9c: $0a
	rrca                                             ; $5e9d: $0f
	nop                                              ; $5e9e: $00
	ld   bc, $0201                                   ; $5e9f: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea2: $cf
	dec  b                                           ; $5ea3: $05
	ld   a, [de]                                     ; $5ea4: $1a
	ld   h, e                                        ; $5ea5: $63
	and  c                                           ; $5ea6: $a1
	sbc  a                                           ; $5ea7: $9f
	dec  c                                           ; $5ea8: $0d
	ld   e, b                                        ; $5ea9: $58
	inc  b                                           ; $5eaa: $04
	ld   a, e                                        ; $5eab: $7b
	sbc  d                                           ; $5eac: $9a
	ld   h, e                                        ; $5ead: $63
	adc  h                                           ; $5eae: $8c
	ld   [hl], l                                     ; $5eaf: $75
	ld   h, a                                        ; $5eb0: $67
	sbc  a                                           ; $5eb1: $9f
	dec  c                                           ; $5eb2: $0d
	nop                                              ; $5eb3: $00
	ld   a, [bc]                                     ; $5eb4: $0a
	rrca                                             ; $5eb5: $0f
	dec  b                                           ; $5eb6: $05
	nop                                              ; $5eb7: $00
	ld   bc, $0458                                   ; $5eb8: $01 $58 $04
	ld   a, e                                        ; $5ebb: $7b
	sbc  d                                           ; $5ebc: $9a
	ld   h, e                                        ; $5ebd: $63
	and  c                                           ; $5ebe: $a1
	sbc  a                                           ; $5ebf: $9f
	dec  c                                           ; $5ec0: $0d
	adc  c                                           ; $5ec1: $89
	ld   a, b                                        ; $5ec2: $78
	sbc  a                                           ; $5ec3: $9f
	dec  c                                           ; $5ec4: $0d
	nop                                              ; $5ec5: $00
	ld   a, [bc]                                     ; $5ec6: $0a
	dec  c                                           ; $5ec7: $0d
	nop                                              ; $5ec8: $00
	nop                                              ; $5ec9: $00
	rrca                                             ; $5eca: $0f
	nop                                              ; $5ecb: $00
	ld   bc, $1e09                                   ; $5ecc: $01 $09 $1e
	nop                                              ; $5ecf: $00
	rrca                                             ; $5ed0: $0f
	nop                                              ; $5ed1: $00
	ld   bc, $050d                                   ; $5ed2: $01 $0d $05
	nop                                              ; $5ed5: $00
	ld   bc, $cf02                                   ; $5ed6: $01 $02 $cf
	dec  b                                           ; $5ed9: $05
	ld   a, [de]                                     ; $5eda: $1a
	ld   h, e                                        ; $5edb: $63
	and  c                                           ; $5edc: $a1
	sbc  a                                           ; $5edd: $9f
	dec  c                                           ; $5ede: $0d
	nop                                              ; $5edf: $00
	ld   a, [bc]                                     ; $5ee0: $0a
	inc  e                                           ; $5ee1: $1c
	dec  b                                           ; $5ee2: $05
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	ld   bc, $7196                                   ; $5ee5: $01 $96 $71
	sbc  [hl]                                        ; $5ee8: $9e
	ld   [$7d00], sp                                 ; $5ee9: $08 $00 $7d
	and  c                                           ; $5eec: $a1
	sbc  a                                           ; $5eed: $9f
	dec  c                                           ; $5eee: $0d
	nop                                              ; $5eef: $00
	ld   a, [bc]                                     ; $5ef0: $0a
	rrca                                             ; $5ef1: $0f
	nop                                              ; $5ef2: $00
	ld   bc, $0201                                   ; $5ef3: $01 $01 $02
	and  l                                           ; $5ef6: $a5
	inc  b                                           ; $5ef7: $04
	xor  d                                           ; $5ef8: $aa
	ld   a, h                                        ; $5ef9: $7c
	ld   e, b                                        ; $5efa: $58
	inc  b                                           ; $5efb: $04
	xor  l                                           ; $5efc: $ad
	ld   h, d                                        ; $5efd: $62
	inc  b                                           ; $5efe: $04
	sbc  h                                           ; $5eff: $9c
	ld   a, l                                        ; $5f00: $7d
	dec  c                                           ; $5f01: $0d
	ld   e, b                                        ; $5f02: $58
	ld   d, d                                        ; $5f03: $52
	ld   h, l                                        ; $5f04: $65
	ld   e, c                                        ; $5f05: $59
	ld   [hl], c                                     ; $5f06: $71
	ld   l, l                                        ; $5f07: $6d
	ld   [hl], l                                     ; $5f08: $75
	ld   h, a                                        ; $5f09: $67
	ld   a, e                                        ; $5f0a: $7b
	sbc  a                                           ; $5f0b: $9f
	dec  c                                           ; $5f0c: $0d
	nop                                              ; $5f0d: $00
	ld   a, [bc]                                     ; $5f0e: $0a
	rlca                                             ; $5f0f: $07
	db   $eb                                         ; $5f10: $eb
	nop                                              ; $5f11: $00
	ld   [bc], a                                     ; $5f12: $02
	nop                                              ; $5f13: $00
	ld   bc, $200a                                   ; $5f14: $01 $0a $20
	nop                                              ; $5f17: $00
	rlca                                             ; $5f18: $07
	rrca                                             ; $5f19: $0f
	ld   bc, $0002                                   ; $5f1a: $01 $02 $00
	ld   bc, $200c                                   ; $5f1d: $01 $0c $20
	nop                                              ; $5f20: $00
	inc  e                                           ; $5f21: $1c
	dec  b                                           ; $5f22: $05
	ld   bc, $0101                                   ; $5f23: $01 $01 $01
	ld   l, e                                        ; $5f26: $6b
	ld   l, e                                        ; $5f27: $6b
	sbc  [hl]                                        ; $5f28: $9e
	halt                                             ; $5f29: $76
	ld   e, l                                        ; $5f2a: $5d
	ld   a, c                                        ; $5f2b: $79
	dec  c                                           ; $5f2c: $0d
	rst  $10                                         ; $5f2d: $d7
	db   $ec                                         ; $5f2e: $ec
	ld   a, h                                        ; $5f2f: $7c
	ld   [hl], h                                     ; $5f30: $74
	sbc  b                                           ; $5f31: $98
	sub  d                                           ; $5f32: $92
	ld   e, e                                        ; $5f33: $5b
	dec  c                                           ; $5f34: $0d
	ld   e, d                                        ; $5f35: $5a
	sbc  [hl]                                        ; $5f36: $9e
	ld   d, h                                        ; $5f37: $54
	adc  h                                           ; $5f38: $8c
	ld   e, c                                        ; $5f39: $59
	ld   [hl], c                                     ; $5f3a: $71
	ld   l, l                                        ; $5f3b: $6d
	ld   a, b                                        ; $5f3c: $78
	ld   d, b                                        ; $5f3d: $50
	sbc  a                                           ; $5f3e: $9f
	dec  c                                           ; $5f3f: $0d
	nop                                              ; $5f40: $00
	ld   a, [bc]                                     ; $5f41: $0a
	ld   b, $33                                      ; $5f42: $06 $33
	ld   bc, $051c                                   ; $5f44: $01 $1c $05
	ld   bc, $0101                                   ; $5f47: $01 $01 $01
	ld   l, e                                        ; $5f4a: $6b
	ld   l, e                                        ; $5f4b: $6b
	sbc  [hl]                                        ; $5f4c: $9e
	halt                                             ; $5f4d: $76
	ld   e, l                                        ; $5f4e: $5d
	ld   a, c                                        ; $5f4f: $79
	dec  c                                           ; $5f50: $0d
	ld   e, b                                        ; $5f51: $58
	ld   [hl], l                                     ; $5f52: $75
	and  c                                           ; $5f53: $a1
	ld   a, h                                        ; $5f54: $7c
	xor  l                                           ; $5f55: $ad
	push af                                          ; $5f56: $f5
	db   $e4                                         ; $5f57: $e4
	dec  c                                           ; $5f58: $0d
	ld   e, d                                        ; $5f59: $5a
	sbc  [hl]                                        ; $5f5a: $9e
	ld   d, h                                        ; $5f5b: $54
	adc  h                                           ; $5f5c: $8c
	ld   e, c                                        ; $5f5d: $59
	ld   [hl], c                                     ; $5f5e: $71
	ld   l, l                                        ; $5f5f: $6d
	ld   a, b                                        ; $5f60: $78
	ld   d, b                                        ; $5f61: $50
	sbc  a                                           ; $5f62: $9f
	dec  c                                           ; $5f63: $0d
	nop                                              ; $5f64: $00
	ld   a, [bc]                                     ; $5f65: $0a
	ld   b, $33                                      ; $5f66: $06 $33
	ld   bc, $051c                                   ; $5f68: $01 $1c $05
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	ld   bc, $7889                                   ; $5f6d: $01 $89 $78
	sbc  a                                           ; $5f70: $9f
	dec  c                                           ; $5f71: $0d
	nop                                              ; $5f72: $00
	ld   a, [bc]                                     ; $5f73: $0a
	dec  c                                           ; $5f74: $0d
	nop                                              ; $5f75: $00
	nop                                              ; $5f76: $00
	rrca                                             ; $5f77: $0f
	nop                                              ; $5f78: $00
	ld   bc, $1e09                                   ; $5f79: $01 $09 $1e
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	ld   [bc], a                                     ; $5f7e: $02
	rlca                                             ; $5f7f: $07
	ld   [hl+], a                                    ; $5f80: $22
	nop                                              ; $5f81: $00
	inc  bc                                          ; $5f82: $03
	ld   [de], a                                     ; $5f83: $12
	ld   bc, $2265                                   ; $5f84: $01 $65 $22
	nop                                              ; $5f87: $00
	rlca                                             ; $5f88: $07
	ld   e, d                                        ; $5f89: $5a
	nop                                              ; $5f8a: $00
	inc  bc                                          ; $5f8b: $03
	ld   [de], a                                     ; $5f8c: $12
	ld   bc, $2565                                   ; $5f8d: $01 $65 $25
	inc  bc                                          ; $5f90: $03
	ld   [de], a                                     ; $5f91: $12
	ld   bc, $2287                                   ; $5f92: $01 $87 $22
	inc  e                                           ; $5f95: $1c
	nop                                              ; $5f96: $00
	rlca                                             ; $5f97: $07
	and  d                                           ; $5f98: $a2
	nop                                              ; $5f99: $00
	inc  bc                                          ; $5f9a: $03
	ld   [de], a                                     ; $5f9b: $12
	ld   bc, $2587                                   ; $5f9c: $01 $87 $25
	nop                                              ; $5f9f: $00
	rrca                                             ; $5fa0: $0f
	nop                                              ; $5fa1: $00
	ld   bc, $6701                                   ; $5fa2: $01 $01 $67
	adc  l                                           ; $5fa5: $8d
	sbc  d                                           ; $5fa6: $9a
	ld   h, e                                        ; $5fa7: $63
	and  c                                           ; $5fa8: $a1
	sbc  a                                           ; $5fa9: $9f
	dec  c                                           ; $5faa: $0d
	nop                                              ; $5fab: $00
	ld   a, [bc]                                     ; $5fac: $0a
	inc  e                                           ; $5fad: $1c
	ld   [bc], a                                     ; $5fae: $02
	nop                                              ; $5faf: $00
	nop                                              ; $5fb0: $00
	ld   bc, $8c52                                   ; $5fb1: $01 $52 $8c
	sbc  [hl]                                        ; $5fb4: $9e
	inc  bc                                          ; $5fb5: $03
	ld   l, e                                        ; $5fb6: $6b
	ld   e, d                                        ; $5fb7: $5a
	inc  b                                           ; $5fb8: $04
	sbc  c                                           ; $5fb9: $99
	ld   l, c                                        ; $5fba: $69
	adc  h                                           ; $5fbb: $8c
	ld   l, c                                        ; $5fbc: $69
	and  c                                           ; $5fbd: $a1
	ld   a, h                                        ; $5fbe: $7c
	sbc  a                                           ; $5fbf: $9f
	dec  c                                           ; $5fc0: $0d
	ld   d, b                                        ; $5fc1: $50
	halt                                             ; $5fc2: $76
	ld   a, c                                        ; $5fc3: $79
	ld   h, l                                        ; $5fc4: $65
	ld   [hl], h                                     ; $5fc5: $74
	ld   e, l                                        ; $5fc6: $5d
	ld   l, [hl]                                     ; $5fc7: $6e
	ld   h, e                                        ; $5fc8: $63
	ld   d, d                                        ; $5fc9: $52
	ld   a, b                                        ; $5fca: $78
	sbc  a                                           ; $5fcb: $9f
	dec  c                                           ; $5fcc: $0d
	nop                                              ; $5fcd: $00
	ld   a, [bc]                                     ; $5fce: $0a
	dec  c                                           ; $5fcf: $0d
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	rrca                                             ; $5fd2: $0f
	nop                                              ; $5fd3: $00
	ld   bc, $1e09                                   ; $5fd4: $01 $09 $1e
	nop                                              ; $5fd7: $00
	inc  e                                           ; $5fd8: $1c
	ld   [bc], a                                     ; $5fd9: $02
	nop                                              ; $5fda: $00
	nop                                              ; $5fdb: $00
	ld   bc, $9750                                   ; $5fdc: $01 $50 $97
	sbc  [hl]                                        ; $5fdf: $9e
	ld   [$6300], sp                                 ; $5fe0: $08 $00 $63
	and  c                                           ; $5fe3: $a1
	sbc  a                                           ; $5fe4: $9f
	dec  c                                           ; $5fe5: $0d
	nop                                              ; $5fe6: $00
	ld   a, [bc]                                     ; $5fe7: $0a
	rrca                                             ; $5fe8: $0f
	nop                                              ; $5fe9: $00
	ld   bc, $6701                                   ; $5fea: $01 $01 $67
	adc  l                                           ; $5fed: $8d
	sbc  d                                           ; $5fee: $9a
	ld   h, e                                        ; $5fef: $63
	and  c                                           ; $5ff0: $a1
	sbc  a                                           ; $5ff1: $9f
	dec  c                                           ; $5ff2: $0d
	ld   e, b                                        ; $5ff3: $58
	inc  b                                           ; $5ff4: $04
	ld   a, e                                        ; $5ff5: $7b
	sbc  d                                           ; $5ff6: $9a
	ld   h, e                                        ; $5ff7: $63
	adc  h                                           ; $5ff8: $8c
	ld   [hl], l                                     ; $5ff9: $75
	ld   h, a                                        ; $5ffa: $67
	sbc  a                                           ; $5ffb: $9f
	dec  c                                           ; $5ffc: $0d
	nop                                              ; $5ffd: $00
	ld   a, [bc]                                     ; $5ffe: $0a
	inc  e                                           ; $5fff: $1c
	ld   [bc], a                                     ; $6000: $02
	ld   bc, $0101                                   ; $6001: $01 $01 $01
	ld   e, b                                        ; $6004: $58
	inc  b                                           ; $6005: $04
	ld   a, e                                        ; $6006: $7b
	sbc  d                                           ; $6007: $9a
	ld   h, e                                        ; $6008: $63
	adc  h                                           ; $6009: $8c
	sbc  a                                           ; $600a: $9f
	dec  c                                           ; $600b: $0d
	ld   [hl], l                                     ; $600c: $75
	ld   a, l                                        ; $600d: $7d
	inc  bc                                          ; $600e: $03
	add  e                                           ; $600f: $83
	dec  b                                           ; $6010: $05
	dec  c                                           ; $6011: $0d
	rst  $38                                         ; $6012: $ff
	rst  $38                                         ; $6013: $ff
	dec  c                                           ; $6014: $0d
	nop                                              ; $6015: $00
	ld   a, [bc]                                     ; $6016: $0a
	dec  c                                           ; $6017: $0d
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	rrca                                             ; $601a: $0f
	nop                                              ; $601b: $00
	ld   bc, $1e09                                   ; $601c: $01 $09 $1e
	nop                                              ; $601f: $00
	dec  c                                           ; $6020: $0d
	ld   [bc], a                                     ; $6021: $02
	nop                                              ; $6022: $00
	rrca                                             ; $6023: $0f
	nop                                              ; $6024: $00
	ld   bc, $5001                                   ; $6025: $01 $01 $50
	sbc  [hl]                                        ; $6028: $9e
	ld   h, a                                        ; $6029: $67
	adc  l                                           ; $602a: $8d
	sbc  d                                           ; $602b: $9a
	ld   h, e                                        ; $602c: $63
	and  c                                           ; $602d: $a1
	sbc  a                                           ; $602e: $9f
	dec  c                                           ; $602f: $0d
	nop                                              ; $6030: $00
	ld   a, [bc]                                     ; $6031: $0a
	rrca                                             ; $6032: $0f
	ld   [bc], a                                     ; $6033: $02
	nop                                              ; $6034: $00
	ld   bc, $9750                                   ; $6035: $01 $50 $97
	sbc  [hl]                                        ; $6038: $9e
	ld   [$6300], sp                                 ; $6039: $08 $00 $63
	and  c                                           ; $603c: $a1
	sbc  a                                           ; $603d: $9f
	dec  c                                           ; $603e: $0d
	nop                                              ; $603f: $00
	ld   a, [bc]                                     ; $6040: $0a
	rrca                                             ; $6041: $0f
	nop                                              ; $6042: $00
	ld   bc, $0201                                   ; $6043: $01 $01 $02
	and  l                                           ; $6046: $a5
	inc  b                                           ; $6047: $04
	xor  d                                           ; $6048: $aa
	ld   a, h                                        ; $6049: $7c
	ld   e, b                                        ; $604a: $58
	inc  b                                           ; $604b: $04
	xor  l                                           ; $604c: $ad
	ld   h, d                                        ; $604d: $62
	inc  b                                           ; $604e: $04
	sbc  h                                           ; $604f: $9c
	ld   a, l                                        ; $6050: $7d
	dec  c                                           ; $6051: $0d
	ld   e, b                                        ; $6052: $58
	ld   d, d                                        ; $6053: $52
	ld   h, l                                        ; $6054: $65
	ld   e, c                                        ; $6055: $59
	ld   [hl], c                                     ; $6056: $71
	ld   l, l                                        ; $6057: $6d
	ld   [hl], l                                     ; $6058: $75
	ld   h, a                                        ; $6059: $67
	ld   a, e                                        ; $605a: $7b
	sbc  a                                           ; $605b: $9f
	dec  c                                           ; $605c: $0d
	nop                                              ; $605d: $00
	ld   a, [bc]                                     ; $605e: $0a
	inc  e                                           ; $605f: $1c
	ld   [bc], a                                     ; $6060: $02
	ld   bc, $0101                                   ; $6061: $01 $01 $01
	ld   d, [hl]                                     ; $6064: $56
	ld   d, [hl]                                     ; $6065: $56
	sbc  [hl]                                        ; $6066: $9e
	ld   e, b                                        ; $6067: $58
	ld   d, d                                        ; $6068: $52
	ld   h, l                                        ; $6069: $65
	ld   d, d                                        ; $606a: $52
	dec  c                                           ; $606b: $0d
	xor  e                                           ; $606c: $ab
	ldh  [c], a                                      ; $606d: $e2
	xor  $c5                                         ; $606e: $ee $c5
	ld   [hl], l                                     ; $6070: $75
	ld   h, l                                        ; $6071: $65
	ld   l, l                                        ; $6072: $6d
	sbc  l                                           ; $6073: $9d
	ld   a, e                                        ; $6074: $7b
	sbc  a                                           ; $6075: $9f
	dec  c                                           ; $6076: $0d
	nop                                              ; $6077: $00
	ld   a, [bc]                                     ; $6078: $0a
	inc  e                                           ; $6079: $1c
	ld   [bc], a                                     ; $607a: $02
	nop                                              ; $607b: $00
	nop                                              ; $607c: $00
	ld   bc, $9a6b                                   ; $607d: $01 $6b $9a
	ld   [hl], l                                     ; $6080: $75
	ld   a, l                                        ; $6081: $7d
	sbc  [hl]                                        ; $6082: $9e
	inc  bc                                          ; $6083: $03
	add  e                                           ; $6084: $83
	dec  b                                           ; $6085: $05
	dec  c                                           ; $6086: $0d
	ld   h, l                                        ; $6087: $65
	adc  h                                           ; $6088: $8c
	ld   h, a                                        ; $6089: $67
	sbc  l                                           ; $608a: $9d
	sbc  a                                           ; $608b: $9f
	dec  c                                           ; $608c: $0d
	nop                                              ; $608d: $00
	ld   a, [bc]                                     ; $608e: $0a
	dec  c                                           ; $608f: $0d
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	rrca                                             ; $6092: $0f
	nop                                              ; $6093: $00
	ld   bc, $1e09                                   ; $6094: $01 $09 $1e
	nop                                              ; $6097: $00
	nop                                              ; $6098: $00
	ld   [bc], a                                     ; $6099: $02
	rlca                                             ; $609a: $07
	ld   d, $00                                      ; $609b: $16 $00
	inc  bc                                          ; $609d: $03
	ld   de, $6501                                   ; $609e: $11 $01 $65
	ld   [hl+], a                                    ; $60a1: $22
	nop                                              ; $60a2: $00
	rlca                                             ; $60a3: $07
	sub  d                                           ; $60a4: $92
	nop                                              ; $60a5: $00
	inc  bc                                          ; $60a6: $03
	ld   de, $8701                                   ; $60a7: $11 $01 $87
	dec  h                                           ; $60aa: $25
	nop                                              ; $60ab: $00
	ld   b, $4d                                      ; $60ac: $06 $4d
	nop                                              ; $60ae: $00
	rrca                                             ; $60af: $0f
	nop                                              ; $60b0: $00
	ld   bc, $6301                                   ; $60b1: $01 $01 $63
	ld   e, l                                        ; $60b4: $5d
	sub  a                                           ; $60b5: $97
	ld   h, e                                        ; $60b6: $63
	and  c                                           ; $60b7: $a1
	sbc  a                                           ; $60b8: $9f
	dec  c                                           ; $60b9: $0d
	nop                                              ; $60ba: $00
	ld   a, [bc]                                     ; $60bb: $0a
	inc  e                                           ; $60bc: $1c
	ld   bc, $0000                                   ; $60bd: $01 $00 $00
	ld   bc, $8f62                                   ; $60c0: $01 $62 $8f
	and  c                                           ; $60c3: $a1
	ld   a, b                                        ; $60c4: $78
	ld   h, e                                        ; $60c5: $63
	ld   d, d                                        ; $60c6: $52
	sbc  a                                           ; $60c7: $9f
	dec  c                                           ; $60c8: $0d
	ld   d, d                                        ; $60c9: $52
	adc  h                                           ; $60ca: $8c
	dec  b                                           ; $60cb: $05
	jr   z, jr_050_6120                              ; $60cc: $28 $52

	ld   [hl], l                                     ; $60ce: $75
	sbc  c                                           ; $60cf: $99
	and  c                                           ; $60d0: $a1
	ld   [hl], l                                     ; $60d1: $75
	ld   h, a                                        ; $60d2: $67
	sbc  a                                           ; $60d3: $9f
	dec  c                                           ; $60d4: $0d
	ld   l, e                                        ; $60d5: $6b
	sbc  d                                           ; $60d6: $9a
	ld   [hl], l                                     ; $60d7: $75
	ld   a, l                                        ; $60d8: $7d
	sbc  a                                           ; $60d9: $9f
	dec  c                                           ; $60da: $0d
	nop                                              ; $60db: $00
	ld   a, [bc]                                     ; $60dc: $0a
	dec  c                                           ; $60dd: $0d
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	rrca                                             ; $60e0: $0f
	nop                                              ; $60e1: $00
	ld   bc, $1e09                                   ; $60e2: $01 $09 $1e
	nop                                              ; $60e5: $00
	inc  e                                           ; $60e6: $1c
	ld   bc, $0000                                   ; $60e7: $01 $00 $00
	ld   bc, $9e50                                   ; $60ea: $01 $50 $9e
	ld   [$6300], sp                                 ; $60ed: $08 $00 $63
	and  c                                           ; $60f0: $a1
	sbc  a                                           ; $60f1: $9f
	dec  c                                           ; $60f2: $0d
	nop                                              ; $60f3: $00
	ld   a, [bc]                                     ; $60f4: $0a
	rrca                                             ; $60f5: $0f
	nop                                              ; $60f6: $00
	ld   bc, $6301                                   ; $60f7: $01 $01 $63
	ld   e, l                                        ; $60fa: $5d
	sub  a                                           ; $60fb: $97
	ld   h, e                                        ; $60fc: $63
	and  c                                           ; $60fd: $a1
	sbc  a                                           ; $60fe: $9f
	dec  c                                           ; $60ff: $0d
	ld   e, b                                        ; $6100: $58
	inc  b                                           ; $6101: $04
	ld   a, e                                        ; $6102: $7b
	sbc  d                                           ; $6103: $9a
	ld   h, e                                        ; $6104: $63
	adc  h                                           ; $6105: $8c
	ld   [hl], l                                     ; $6106: $75
	ld   h, a                                        ; $6107: $67
	sbc  a                                           ; $6108: $9f
	dec  c                                           ; $6109: $0d
	nop                                              ; $610a: $00
	ld   a, [bc]                                     ; $610b: $0a
	rrca                                             ; $610c: $0f
	ld   bc, $0100                                   ; $610d: $01 $00 $01
	ld   e, b                                        ; $6110: $58
	inc  b                                           ; $6111: $04
	ld   a, e                                        ; $6112: $7b
	sbc  d                                           ; $6113: $9a
	ld   h, e                                        ; $6114: $63
	adc  h                                           ; $6115: $8c
	ld   [hl], l                                     ; $6116: $75
	ld   h, a                                        ; $6117: $67
	sbc  a                                           ; $6118: $9f
	dec  c                                           ; $6119: $0d
	ld   l, e                                        ; $611a: $6b
	sbc  d                                           ; $611b: $9a
	ld   [hl], l                                     ; $611c: $75
	ld   a, l                                        ; $611d: $7d
	sbc  a                                           ; $611e: $9f
	dec  c                                           ; $611f: $0d

jr_050_6120:
	nop                                              ; $6120: $00
	ld   a, [bc]                                     ; $6121: $0a
	dec  c                                           ; $6122: $0d
	nop                                              ; $6123: $00
	nop                                              ; $6124: $00
	rrca                                             ; $6125: $0f
	nop                                              ; $6126: $00
	ld   bc, $1e09                                   ; $6127: $01 $09 $1e
	nop                                              ; $612a: $00
	rrca                                             ; $612b: $0f
	nop                                              ; $612c: $00
	ld   bc, $010d                                   ; $612d: $01 $0d $01
	nop                                              ; $6130: $00
	ld   bc, $5d63                                   ; $6131: $01 $63 $5d
	sub  a                                           ; $6134: $97
	ld   h, e                                        ; $6135: $63
	and  c                                           ; $6136: $a1
	sbc  a                                           ; $6137: $9f
	dec  c                                           ; $6138: $0d
	nop                                              ; $6139: $00
	ld   a, [bc]                                     ; $613a: $0a
	inc  e                                           ; $613b: $1c
	ld   bc, $0000                                   ; $613c: $01 $00 $00
	ld   bc, $9750                                   ; $613f: $01 $50 $97
	sbc  [hl]                                        ; $6142: $9e
	ld   [$6300], sp                                 ; $6143: $08 $00 $63
	and  c                                           ; $6146: $a1
	sbc  a                                           ; $6147: $9f
	dec  c                                           ; $6148: $0d
	nop                                              ; $6149: $00
	ld   a, [bc]                                     ; $614a: $0a
	rrca                                             ; $614b: $0f
	nop                                              ; $614c: $00
	ld   bc, $0201                                   ; $614d: $01 $01 $02
	and  l                                           ; $6150: $a5
	inc  b                                           ; $6151: $04
	xor  d                                           ; $6152: $aa
	ld   a, h                                        ; $6153: $7c
	ld   e, b                                        ; $6154: $58
	inc  b                                           ; $6155: $04
	xor  l                                           ; $6156: $ad
	ld   h, d                                        ; $6157: $62
	inc  b                                           ; $6158: $04
	sbc  h                                           ; $6159: $9c
	ld   a, l                                        ; $615a: $7d
	dec  c                                           ; $615b: $0d
	ld   e, b                                        ; $615c: $58
	ld   d, d                                        ; $615d: $52
	ld   h, l                                        ; $615e: $65
	ld   e, c                                        ; $615f: $59
	ld   [hl], c                                     ; $6160: $71
	ld   l, l                                        ; $6161: $6d
	ld   [hl], l                                     ; $6162: $75
	ld   h, a                                        ; $6163: $67
	ld   a, e                                        ; $6164: $7b
	sbc  a                                           ; $6165: $9f
	dec  c                                           ; $6166: $0d
	nop                                              ; $6167: $00
	ld   a, [bc]                                     ; $6168: $0a
	inc  e                                           ; $6169: $1c
	ld   bc, $0101                                   ; $616a: $01 $01 $01
	ld   bc, $5656                                   ; $616d: $01 $56 $56
	sbc  [hl]                                        ; $6170: $9e
	ld   e, b                                        ; $6171: $58
	ld   d, d                                        ; $6172: $52
	ld   h, l                                        ; $6173: $65
	ld   d, d                                        ; $6174: $52
	dec  c                                           ; $6175: $0d
	xor  e                                           ; $6176: $ab
	ldh  [c], a                                      ; $6177: $e2
	xor  $c5                                         ; $6178: $ee $c5
	ld   [hl], l                                     ; $617a: $75
	ld   h, l                                        ; $617b: $65
	ld   l, l                                        ; $617c: $6d
	ld   a, e                                        ; $617d: $7b
	sbc  a                                           ; $617e: $9f
	dec  c                                           ; $617f: $0d
	nop                                              ; $6180: $00
	ld   a, [bc]                                     ; $6181: $0a
	inc  e                                           ; $6182: $1c
	ld   bc, $0000                                   ; $6183: $01 $00 $00
	ld   bc, $9a6b                                   ; $6186: $01 $6b $9a
	ld   [hl], l                                     ; $6189: $75
	ld   a, l                                        ; $618a: $7d
	adc  h                                           ; $618b: $8c
	ld   l, l                                        ; $618c: $6d
	sbc  a                                           ; $618d: $9f
	dec  c                                           ; $618e: $0d
	nop                                              ; $618f: $00
	ld   a, [bc]                                     ; $6190: $0a
	dec  c                                           ; $6191: $0d
	nop                                              ; $6192: $00
	nop                                              ; $6193: $00
	rrca                                             ; $6194: $0f
	nop                                              ; $6195: $00
	ld   bc, $1e09                                   ; $6196: $01 $09 $1e
	nop                                              ; $6199: $00
	nop                                              ; $619a: $00
	ld   [bc], a                                     ; $619b: $02
	rlca                                             ; $619c: $07
	ld   [hl+], a                                    ; $619d: $22
	nop                                              ; $619e: $00
	inc  bc                                          ; $619f: $03
	inc  de                                          ; $61a0: $13
	ld   bc, $2265                                   ; $61a1: $01 $65 $22
	nop                                              ; $61a4: $00
	rlca                                             ; $61a5: $07
	ld   d, d                                        ; $61a6: $52
	nop                                              ; $61a7: $00
	inc  bc                                          ; $61a8: $03
	inc  de                                          ; $61a9: $13
	ld   bc, $2566                                   ; $61aa: $01 $66 $25
	inc  bc                                          ; $61ad: $03
	inc  de                                          ; $61ae: $13
	ld   bc, $2287                                   ; $61af: $01 $87 $22
	inc  e                                           ; $61b2: $1c
	nop                                              ; $61b3: $00
	rlca                                             ; $61b4: $07
	sub  [hl]                                        ; $61b5: $96
	nop                                              ; $61b6: $00
	inc  bc                                          ; $61b7: $03
	inc  de                                          ; $61b8: $13
	ld   bc, $2587                                   ; $61b9: $01 $87 $25
	nop                                              ; $61bc: $00
	rrca                                             ; $61bd: $0f
	nop                                              ; $61be: $00
	ld   bc, $df01                                   ; $61bf: $01 $01 $df
	db   $ec                                         ; $61c2: $ec
	and  e                                           ; $61c3: $a3
	ld   h, e                                        ; $61c4: $63
	and  c                                           ; $61c5: $a1
	sbc  a                                           ; $61c6: $9f
	dec  c                                           ; $61c7: $0d
	nop                                              ; $61c8: $00
	ld   a, [bc]                                     ; $61c9: $0a
	inc  e                                           ; $61ca: $1c
	inc  bc                                          ; $61cb: $03
	nop                                              ; $61cc: $00
	nop                                              ; $61cd: $00
	ld   bc, $8c52                                   ; $61ce: $01 $52 $8c
	dec  b                                           ; $61d1: $05
	jr   z, jr_050_6226                              ; $61d2: $28 $52

	ld   [hl], l                                     ; $61d4: $75
	sbc  c                                           ; $61d5: $99
	ld   a, h                                        ; $61d6: $7c
	sbc  a                                           ; $61d7: $9f
	dec  c                                           ; $61d8: $0d
	adc  h                                           ; $61d9: $8c
	ld   l, l                                        ; $61da: $6d
	sbc  [hl]                                        ; $61db: $9e
	ld   [bc], a                                     ; $61dc: $02
	xor  d                                           ; $61dd: $aa
	ld   [hl], l                                     ; $61de: $75
	ld   a, e                                        ; $61df: $7b
	sbc  a                                           ; $61e0: $9f
	dec  c                                           ; $61e1: $0d
	nop                                              ; $61e2: $00
	ld   a, [bc]                                     ; $61e3: $0a
	dec  c                                           ; $61e4: $0d
	nop                                              ; $61e5: $00
	nop                                              ; $61e6: $00
	rrca                                             ; $61e7: $0f
	nop                                              ; $61e8: $00
	ld   bc, $1e09                                   ; $61e9: $01 $09 $1e
	nop                                              ; $61ec: $00
	inc  e                                           ; $61ed: $1c
	inc  bc                                          ; $61ee: $03
	nop                                              ; $61ef: $00
	nop                                              ; $61f0: $00
	ld   bc, $9750                                   ; $61f1: $01 $50 $97
	sbc  [hl]                                        ; $61f4: $9e
	ld   [$5d00], sp                                 ; $61f5: $08 $00 $5d
	and  c                                           ; $61f8: $a1
	sbc  a                                           ; $61f9: $9f
	dec  c                                           ; $61fa: $0d
	nop                                              ; $61fb: $00
	ld   a, [bc]                                     ; $61fc: $0a
	rrca                                             ; $61fd: $0f
	nop                                              ; $61fe: $00
	ld   bc, $df01                                   ; $61ff: $01 $01 $df
	db   $ec                                         ; $6202: $ec
	and  e                                           ; $6203: $a3
	ld   h, e                                        ; $6204: $63
	and  c                                           ; $6205: $a1
	sbc  a                                           ; $6206: $9f
	dec  c                                           ; $6207: $0d
	ld   e, b                                        ; $6208: $58
	inc  b                                           ; $6209: $04
	ld   a, e                                        ; $620a: $7b
	sbc  d                                           ; $620b: $9a
	ld   h, e                                        ; $620c: $63
	adc  h                                           ; $620d: $8c
	ld   [hl], l                                     ; $620e: $75
	ld   h, a                                        ; $620f: $67
	sbc  a                                           ; $6210: $9f
	dec  c                                           ; $6211: $0d
	nop                                              ; $6212: $00
	ld   a, [bc]                                     ; $6213: $0a
	rrca                                             ; $6214: $0f
	inc  bc                                          ; $6215: $03
	nop                                              ; $6216: $00
	ld   bc, $0458                                   ; $6217: $01 $58 $04
	ld   a, e                                        ; $621a: $7b
	sbc  d                                           ; $621b: $9a
	ld   h, e                                        ; $621c: $63
	adc  h                                           ; $621d: $8c
	sbc  a                                           ; $621e: $9f
	dec  c                                           ; $621f: $0d
	ld   h, [hl]                                     ; $6220: $66
	sub  c                                           ; $6221: $91
	ld   d, b                                        ; $6222: $50
	ld   a, e                                        ; $6223: $7b
	sbc  a                                           ; $6224: $9f
	dec  c                                           ; $6225: $0d

jr_050_6226:
	nop                                              ; $6226: $00
	ld   a, [bc]                                     ; $6227: $0a
	dec  c                                           ; $6228: $0d
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	rrca                                             ; $622b: $0f
	nop                                              ; $622c: $00
	ld   bc, $1e09                                   ; $622d: $01 $09 $1e
	nop                                              ; $6230: $00
	dec  c                                           ; $6231: $0d
	inc  bc                                          ; $6232: $03
	nop                                              ; $6233: $00
	rrca                                             ; $6234: $0f
	nop                                              ; $6235: $00
	ld   bc, $df01                                   ; $6236: $01 $01 $df
	db   $ec                                         ; $6239: $ec
	and  e                                           ; $623a: $a3
	ld   h, e                                        ; $623b: $63
	and  c                                           ; $623c: $a1
	sbc  a                                           ; $623d: $9f
	dec  c                                           ; $623e: $0d
	nop                                              ; $623f: $00
	ld   a, [bc]                                     ; $6240: $0a
	inc  e                                           ; $6241: $1c
	inc  bc                                          ; $6242: $03
	nop                                              ; $6243: $00
	nop                                              ; $6244: $00
	ld   bc, $9750                                   ; $6245: $01 $50 $97
	sbc  [hl]                                        ; $6248: $9e
	ld   [$5d00], sp                                 ; $6249: $08 $00 $5d
	and  c                                           ; $624c: $a1
	sbc  a                                           ; $624d: $9f
	dec  c                                           ; $624e: $0d
	nop                                              ; $624f: $00
	ld   a, [bc]                                     ; $6250: $0a
	rrca                                             ; $6251: $0f
	nop                                              ; $6252: $00
	ld   bc, $0201                                   ; $6253: $01 $01 $02
	and  l                                           ; $6256: $a5
	inc  b                                           ; $6257: $04
	xor  d                                           ; $6258: $aa
	ld   a, h                                        ; $6259: $7c
	ld   e, b                                        ; $625a: $58
	inc  b                                           ; $625b: $04
	xor  l                                           ; $625c: $ad
	ld   h, d                                        ; $625d: $62
	inc  b                                           ; $625e: $04
	sbc  h                                           ; $625f: $9c
	ld   a, l                                        ; $6260: $7d
	dec  c                                           ; $6261: $0d
	ld   e, b                                        ; $6262: $58
	ld   d, d                                        ; $6263: $52
	ld   h, l                                        ; $6264: $65
	ld   e, c                                        ; $6265: $59
	ld   [hl], c                                     ; $6266: $71
	ld   l, l                                        ; $6267: $6d
	ld   [hl], l                                     ; $6268: $75
	ld   h, a                                        ; $6269: $67
	ld   a, e                                        ; $626a: $7b
	sbc  a                                           ; $626b: $9f
	dec  c                                           ; $626c: $0d
	nop                                              ; $626d: $00
	ld   a, [bc]                                     ; $626e: $0a
	inc  e                                           ; $626f: $1c
	inc  bc                                          ; $6270: $03
	inc  bc                                          ; $6271: $03
	inc  bc                                          ; $6272: $03
	ld   bc, $5656                                   ; $6273: $01 $56 $56
	sbc  [hl]                                        ; $6276: $9e
	ld   e, b                                        ; $6277: $58
	ld   d, d                                        ; $6278: $52
	ld   h, l                                        ; $6279: $65
	ld   d, d                                        ; $627a: $52
	dec  c                                           ; $627b: $0d
	xor  e                                           ; $627c: $ab
	ldh  [c], a                                      ; $627d: $e2
	xor  $c5                                         ; $627e: $ee $c5
	ld   l, [hl]                                     ; $6280: $6e
	ld   [hl], c                                     ; $6281: $71
	ld   l, l                                        ; $6282: $6d
	sbc  l                                           ; $6283: $9d
	ld   a, e                                        ; $6284: $7b
	sbc  a                                           ; $6285: $9f
	dec  c                                           ; $6286: $0d
	nop                                              ; $6287: $00
	ld   a, [bc]                                     ; $6288: $0a
	inc  e                                           ; $6289: $1c
	inc  bc                                          ; $628a: $03
	nop                                              ; $628b: $00
	nop                                              ; $628c: $00
	ld   bc, $9a6b                                   ; $628d: $01 $6b $9a
	ld   h, [hl]                                     ; $6290: $66
	sub  c                                           ; $6291: $91
	sbc  a                                           ; $6292: $9f
	dec  c                                           ; $6293: $0d
	nop                                              ; $6294: $00
	ld   a, [bc]                                     ; $6295: $0a
	dec  c                                           ; $6296: $0d
	nop                                              ; $6297: $00
	nop                                              ; $6298: $00
	rrca                                             ; $6299: $0f
	nop                                              ; $629a: $00
	ld   bc, $1e09                                   ; $629b: $01 $09 $1e
	nop                                              ; $629e: $00
	nop                                              ; $629f: $00
	ld   [bc], a                                     ; $62a0: $02
	rlca                                             ; $62a1: $07
	ld   [hl+], a                                    ; $62a2: $22
	nop                                              ; $62a3: $00
	inc  bc                                          ; $62a4: $03
	inc  d                                           ; $62a5: $14
	ld   bc, $2265                                   ; $62a6: $01 $65 $22
	nop                                              ; $62a9: $00
	rlca                                             ; $62aa: $07
	ld   d, e                                        ; $62ab: $53
	nop                                              ; $62ac: $00
	inc  bc                                          ; $62ad: $03
	inc  d                                           ; $62ae: $14
	ld   bc, $2566                                   ; $62af: $01 $66 $25
	inc  bc                                          ; $62b2: $03
	inc  d                                           ; $62b3: $14
	ld   bc, $2287                                   ; $62b4: $01 $87 $22
	inc  e                                           ; $62b7: $1c
	nop                                              ; $62b8: $00
	rlca                                             ; $62b9: $07
	sub  c                                           ; $62ba: $91
	nop                                              ; $62bb: $00
	inc  bc                                          ; $62bc: $03
	inc  d                                           ; $62bd: $14
	ld   bc, $2587                                   ; $62be: $01 $87 $25
	nop                                              ; $62c1: $00
	rrca                                             ; $62c2: $0f
	nop                                              ; $62c3: $00
	ld   bc, $9201                                   ; $62c4: $01 $01 $92
	ld   d, b                                        ; $62c7: $50
	sbc  [hl]                                        ; $62c8: $9e
	and  e                                           ; $62c9: $a3
	and  l                                           ; $62ca: $a5
	db   $ec                                         ; $62cb: $ec
	cp   d                                           ; $62cc: $ba
	sbc  a                                           ; $62cd: $9f
	dec  c                                           ; $62ce: $0d
	nop                                              ; $62cf: $00
	ld   a, [bc]                                     ; $62d0: $0a
	inc  e                                           ; $62d1: $1c
	inc  b                                           ; $62d2: $04
	nop                                              ; $62d3: $00
	nop                                              ; $62d4: $00
	ld   bc, $a5a3                                   ; $62d5: $01 $a3 $a5
	db   $ec                                         ; $62d8: $ec
	cp   d                                           ; $62d9: $ba
	sbc  [hl]                                        ; $62da: $9e
	ld   d, d                                        ; $62db: $52
	ld   l, e                                        ; $62dc: $6b
	ld   e, d                                        ; $62dd: $5a
	ld   h, l                                        ; $62de: $65
	ld   d, d                                        ; $62df: $52
	ld   a, h                                        ; $62e0: $7c
	sbc  a                                           ; $62e1: $9f
	dec  c                                           ; $62e2: $0d
	adc  h                                           ; $62e3: $8c
	ld   l, l                                        ; $62e4: $6d
	ld   a, e                                        ; $62e5: $7b
	sbc  a                                           ; $62e6: $9f
	dec  c                                           ; $62e7: $0d
	nop                                              ; $62e8: $00
	ld   a, [bc]                                     ; $62e9: $0a
	dec  c                                           ; $62ea: $0d
	nop                                              ; $62eb: $00
	nop                                              ; $62ec: $00
	rrca                                             ; $62ed: $0f
	nop                                              ; $62ee: $00
	ld   bc, $1e09                                   ; $62ef: $01 $09 $1e
	nop                                              ; $62f2: $00
	inc  e                                           ; $62f3: $1c
	inc  b                                           ; $62f4: $04
	nop                                              ; $62f5: $00
	nop                                              ; $62f6: $00
	ld   bc, $9e50                                   ; $62f7: $01 $50 $9e
	ld   l, a                                        ; $62fa: $6f
	ld   d, d                                        ; $62fb: $52
	ld   [bc], a                                     ; $62fc: $02
	inc  de                                          ; $62fd: $13
	ld   l, a                                        ; $62fe: $6f
	sub  c                                           ; $62ff: $91
	and  c                                           ; $6300: $a1
	sbc  a                                           ; $6301: $9f
	dec  c                                           ; $6302: $0d
	nop                                              ; $6303: $00
	ld   a, [bc]                                     ; $6304: $0a
	rrca                                             ; $6305: $0f
	nop                                              ; $6306: $00
	ld   bc, $9201                                   ; $6307: $01 $01 $92
	ld   d, b                                        ; $630a: $50
	sbc  [hl]                                        ; $630b: $9e
	and  e                                           ; $630c: $a3
	and  l                                           ; $630d: $a5
	db   $ec                                         ; $630e: $ec
	cp   d                                           ; $630f: $ba
	sbc  a                                           ; $6310: $9f
	dec  c                                           ; $6311: $0d
	nop                                              ; $6312: $00
	ld   a, [bc]                                     ; $6313: $0a
	inc  e                                           ; $6314: $1c
	inc  b                                           ; $6315: $04
	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	ld   bc, $6d8c                                   ; $6318: $01 $8c $6d
	ld   a, e                                        ; $631b: $7b
	sbc  [hl]                                        ; $631c: $9e
	ld   l, a                                        ; $631d: $6f
	ld   d, d                                        ; $631e: $52
	ld   [bc], a                                     ; $631f: $02
	inc  de                                          ; $6320: $13
	ld   l, a                                        ; $6321: $6f
	sub  c                                           ; $6322: $91
	and  c                                           ; $6323: $a1
	sbc  a                                           ; $6324: $9f
	dec  c                                           ; $6325: $0d
	nop                                              ; $6326: $00
	ld   a, [bc]                                     ; $6327: $0a
	dec  c                                           ; $6328: $0d
	nop                                              ; $6329: $00
	nop                                              ; $632a: $00
	rrca                                             ; $632b: $0f
	nop                                              ; $632c: $00
	ld   bc, $1e09                                   ; $632d: $01 $09 $1e
	nop                                              ; $6330: $00
	rrca                                             ; $6331: $0f
	nop                                              ; $6332: $00
	ld   bc, $040d                                   ; $6333: $01 $0d $04
	nop                                              ; $6336: $00
	ld   bc, $5092                                   ; $6337: $01 $92 $50
	sbc  [hl]                                        ; $633a: $9e
	and  e                                           ; $633b: $a3
	and  l                                           ; $633c: $a5
	db   $ec                                         ; $633d: $ec
	cp   d                                           ; $633e: $ba
	sbc  a                                           ; $633f: $9f
	dec  c                                           ; $6340: $0d
	nop                                              ; $6341: $00
	ld   a, [bc]                                     ; $6342: $0a
	inc  e                                           ; $6343: $1c
	inc  b                                           ; $6344: $04
	nop                                              ; $6345: $00
	nop                                              ; $6346: $00
	ld   bc, $9e50                                   ; $6347: $01 $50 $9e
	ld   l, a                                        ; $634a: $6f
	ld   d, d                                        ; $634b: $52
	ld   [bc], a                                     ; $634c: $02
	inc  de                                          ; $634d: $13
	ld   l, a                                        ; $634e: $6f
	sub  c                                           ; $634f: $91
	and  c                                           ; $6350: $a1
	sbc  a                                           ; $6351: $9f
	dec  c                                           ; $6352: $0d
	nop                                              ; $6353: $00
	ld   a, [bc]                                     ; $6354: $0a
	rrca                                             ; $6355: $0f
	nop                                              ; $6356: $00
	ld   bc, $0201                                   ; $6357: $01 $01 $02
	and  l                                           ; $635a: $a5
	inc  b                                           ; $635b: $04
	xor  d                                           ; $635c: $aa
	ld   a, h                                        ; $635d: $7c
	ld   e, b                                        ; $635e: $58
	inc  b                                           ; $635f: $04
	xor  l                                           ; $6360: $ad
	ld   h, d                                        ; $6361: $62
	inc  b                                           ; $6362: $04
	sbc  h                                           ; $6363: $9c
	ld   a, l                                        ; $6364: $7d
	dec  c                                           ; $6365: $0d
	ld   e, b                                        ; $6366: $58
	ld   d, d                                        ; $6367: $52
	ld   h, l                                        ; $6368: $65
	ld   e, c                                        ; $6369: $59
	ld   [hl], c                                     ; $636a: $71
	ld   l, l                                        ; $636b: $6d
	ld   a, e                                        ; $636c: $7b
	sbc  a                                           ; $636d: $9f
	dec  c                                           ; $636e: $0d
	nop                                              ; $636f: $00
	ld   a, [bc]                                     ; $6370: $0a
	inc  e                                           ; $6371: $1c
	inc  b                                           ; $6372: $04
	ld   bc, $0101                                   ; $6373: $01 $01 $01
	ld   d, h                                        ; $6376: $54
	and  c                                           ; $6377: $a1
	sbc  [hl]                                        ; $6378: $9e
	ld   e, b                                        ; $6379: $58
	ld   d, d                                        ; $637a: $52
	ld   h, l                                        ; $637b: $65
	ld   d, d                                        ; $637c: $52
	dec  c                                           ; $637d: $0d
	xor  e                                           ; $637e: $ab
	ldh  [c], a                                      ; $637f: $e2
	xor  $c5                                         ; $6380: $ee $c5
	ld   l, [hl]                                     ; $6382: $6e
	ld   [hl], c                                     ; $6383: $71
	ld   l, l                                        ; $6384: $6d
	ld   a, e                                        ; $6385: $7b
	sbc  a                                           ; $6386: $9f
	dec  c                                           ; $6387: $0d
	nop                                              ; $6388: $00
	ld   a, [bc]                                     ; $6389: $0a
	inc  e                                           ; $638a: $1c
	inc  b                                           ; $638b: $04
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	ld   bc, $9166                                   ; $638e: $01 $66 $91
	ld   d, b                                        ; $6391: $50
	ld   a, e                                        ; $6392: $7b
	sbc  [hl]                                        ; $6393: $9e
	ld   l, a                                        ; $6394: $6f
	ld   d, d                                        ; $6395: $52
	ld   [bc], a                                     ; $6396: $02
	inc  de                                          ; $6397: $13
	ld   l, a                                        ; $6398: $6f
	sub  c                                           ; $6399: $91
	and  c                                           ; $639a: $a1
	sbc  a                                           ; $639b: $9f
	dec  c                                           ; $639c: $0d
	nop                                              ; $639d: $00
	ld   a, [bc]                                     ; $639e: $0a
	dec  c                                           ; $639f: $0d
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	rrca                                             ; $63a2: $0f
	nop                                              ; $63a3: $00
	ld   bc, $1e09                                   ; $63a4: $01 $09 $1e
	nop                                              ; $63a7: $00
	nop                                              ; $63a8: $00
	ld   [bc], a                                     ; $63a9: $02
	rlca                                             ; $63aa: $07
	ld   [hl+], a                                    ; $63ab: $22
	nop                                              ; $63ac: $00
	inc  bc                                          ; $63ad: $03
	ld   d, $01                                      ; $63ae: $16 $01
	ld   h, l                                        ; $63b0: $65
	ld   [hl+], a                                    ; $63b1: $22
	nop                                              ; $63b2: $00
	rlca                                             ; $63b3: $07
	ld   e, d                                        ; $63b4: $5a
	nop                                              ; $63b5: $00
	inc  bc                                          ; $63b6: $03
	ld   d, $01                                      ; $63b7: $16 $01
	ld   h, [hl]                                     ; $63b9: $66
	dec  h                                           ; $63ba: $25
	inc  bc                                          ; $63bb: $03
	ld   d, $01                                      ; $63bc: $16 $01
	add  a                                           ; $63be: $87
	ld   [hl+], a                                    ; $63bf: $22
	inc  e                                           ; $63c0: $1c
	nop                                              ; $63c1: $00
	rlca                                             ; $63c2: $07
	sbc  h                                           ; $63c3: $9c
	nop                                              ; $63c4: $00
	inc  bc                                          ; $63c5: $03
	ld   d, $01                                      ; $63c6: $16 $01
	add  a                                           ; $63c8: $87
	dec  h                                           ; $63c9: $25
	nop                                              ; $63ca: $00
	rrca                                             ; $63cb: $0f
	nop                                              ; $63cc: $00
	ld   bc, $ac01                                   ; $63cd: $01 $01 $ac
	push af                                          ; $63d0: $f5
	bit  4, e                                        ; $63d1: $cb $63
	and  c                                           ; $63d3: $a1
	sbc  a                                           ; $63d4: $9f
	dec  c                                           ; $63d5: $0d
	nop                                              ; $63d6: $00
	ld   a, [bc]                                     ; $63d7: $0a
	inc  e                                           ; $63d8: $1c
	ld   b, $00                                      ; $63d9: $06 $00
	nop                                              ; $63db: $00
	ld   bc, $999d                                   ; $63dc: $01 $9d $99
	ld   d, d                                        ; $63df: $52
	sbc  a                                           ; $63e0: $9f
	ld   l, a                                        ; $63e1: $6f
	sub  l                                           ; $63e2: $95
	ld   d, d                                        ; $63e3: $52
	halt                                             ; $63e4: $76
	dec  b                                           ; $63e5: $05
	jr   z, jr_050_6444                              ; $63e6: $28 $5c

	ld   a, h                                        ; $63e8: $7c
	dec  c                                           ; $63e9: $0d
	inc  b                                           ; $63ea: $04
	di                                               ; $63eb: $f3
	ld   e, d                                        ; $63ec: $5a
	ld   d, b                                        ; $63ed: $50
	sbc  c                                           ; $63ee: $99
	and  c                                           ; $63ef: $a1
	ld   l, [hl]                                     ; $63f0: $6e
	sbc  a                                           ; $63f1: $9f
	dec  c                                           ; $63f2: $0d
	adc  h                                           ; $63f3: $8c
	ld   l, l                                        ; $63f4: $6d
	ld   a, b                                        ; $63f5: $78
	sbc  a                                           ; $63f6: $9f
	dec  c                                           ; $63f7: $0d
	nop                                              ; $63f8: $00
	ld   a, [bc]                                     ; $63f9: $0a
	dec  c                                           ; $63fa: $0d
	nop                                              ; $63fb: $00
	nop                                              ; $63fc: $00
	rrca                                             ; $63fd: $0f
	nop                                              ; $63fe: $00
	ld   bc, $1e09                                   ; $63ff: $01 $09 $1e
	nop                                              ; $6402: $00
	inc  e                                           ; $6403: $1c
	ld   b, $00                                      ; $6404: $06 $00
	nop                                              ; $6406: $00
	ld   bc, $5496                                   ; $6407: $01 $96 $54
	sbc  [hl]                                        ; $640a: $9e
	ld   [$9f00], sp                                 ; $640b: $08 $00 $9f
	dec  c                                           ; $640e: $0d
	nop                                              ; $640f: $00
	ld   a, [bc]                                     ; $6410: $0a
	rrca                                             ; $6411: $0f
	nop                                              ; $6412: $00
	ld   bc, $5801                                   ; $6413: $01 $01 $58
	inc  b                                           ; $6416: $04
	ld   a, e                                        ; $6417: $7b
	sbc  d                                           ; $6418: $9a
	ld   h, e                                        ; $6419: $63
	adc  h                                           ; $641a: $8c
	ld   [hl], l                                     ; $641b: $75
	ld   h, a                                        ; $641c: $67
	sbc  a                                           ; $641d: $9f
	dec  c                                           ; $641e: $0d
	xor  h                                           ; $641f: $ac
	push af                                          ; $6420: $f5
	bit  4, e                                        ; $6421: $cb $63
	and  c                                           ; $6423: $a1
	sbc  a                                           ; $6424: $9f
	dec  c                                           ; $6425: $0d
	nop                                              ; $6426: $00
	ld   a, [bc]                                     ; $6427: $0a
	rrca                                             ; $6428: $0f
	ld   b, $00                                      ; $6429: $06 $00
	ld   bc, $0458                                   ; $642b: $01 $58 $04
	ld   a, e                                        ; $642e: $7b
	sbc  d                                           ; $642f: $9a
	ld   h, e                                        ; $6430: $63
	and  c                                           ; $6431: $a1
	sbc  a                                           ; $6432: $9f
	dec  c                                           ; $6433: $0d
	ld   h, [hl]                                     ; $6434: $66
	sub  c                                           ; $6435: $91
	ld   d, b                                        ; $6436: $50
	ld   a, b                                        ; $6437: $78
	sbc  a                                           ; $6438: $9f
	dec  c                                           ; $6439: $0d
	nop                                              ; $643a: $00
	ld   a, [bc]                                     ; $643b: $0a
	dec  c                                           ; $643c: $0d
	nop                                              ; $643d: $00
	nop                                              ; $643e: $00
	rrca                                             ; $643f: $0f
	nop                                              ; $6440: $00
	ld   bc, $1e09                                   ; $6441: $01 $09 $1e

jr_050_6444:
	nop                                              ; $6444: $00
	rrca                                             ; $6445: $0f
	nop                                              ; $6446: $00
	ld   bc, $060d                                   ; $6447: $01 $0d $06
	nop                                              ; $644a: $00
	ld   bc, $f5ac                                   ; $644b: $01 $ac $f5
	bit  4, e                                        ; $644e: $cb $63
	and  c                                           ; $6450: $a1
	sbc  a                                           ; $6451: $9f
	dec  c                                           ; $6452: $0d
	nop                                              ; $6453: $00
	ld   a, [bc]                                     ; $6454: $0a
	inc  e                                           ; $6455: $1c
	ld   b, $00                                      ; $6456: $06 $00
	nop                                              ; $6458: $00
	ld   bc, $5496                                   ; $6459: $01 $96 $54
	sbc  [hl]                                        ; $645c: $9e
	ld   [$9f00], sp                                 ; $645d: $08 $00 $9f
	dec  c                                           ; $6460: $0d
	nop                                              ; $6461: $00
	ld   a, [bc]                                     ; $6462: $0a
	rrca                                             ; $6463: $0f
	nop                                              ; $6464: $00
	ld   bc, $0201                                   ; $6465: $01 $01 $02
	and  l                                           ; $6468: $a5
	inc  b                                           ; $6469: $04
	xor  d                                           ; $646a: $aa
	ld   a, h                                        ; $646b: $7c
	ld   e, b                                        ; $646c: $58
	inc  b                                           ; $646d: $04
	xor  l                                           ; $646e: $ad
	ld   h, d                                        ; $646f: $62
	inc  b                                           ; $6470: $04
	sbc  h                                           ; $6471: $9c
	ld   a, l                                        ; $6472: $7d
	dec  c                                           ; $6473: $0d
	ld   e, b                                        ; $6474: $58
	ld   d, d                                        ; $6475: $52
	ld   h, l                                        ; $6476: $65
	ld   e, c                                        ; $6477: $59
	ld   [hl], c                                     ; $6478: $71
	ld   l, l                                        ; $6479: $6d
	ld   [hl], l                                     ; $647a: $75
	ld   h, a                                        ; $647b: $67
	ld   a, e                                        ; $647c: $7b
	sbc  a                                           ; $647d: $9f
	dec  c                                           ; $647e: $0d
	nop                                              ; $647f: $00
	ld   a, [bc]                                     ; $6480: $0a
	inc  e                                           ; $6481: $1c
	ld   b, $01                                      ; $6482: $06 $01
	ld   bc, $6b01                                   ; $6484: $01 $01 $6b
	ld   d, h                                        ; $6487: $54
	ld   l, e                                        ; $6488: $6b
	ld   d, h                                        ; $6489: $54
	sbc  [hl]                                        ; $648a: $9e
	ld   d, h                                        ; $648b: $54
	adc  h                                           ; $648c: $8c
	ld   d, d                                        ; $648d: $52
	dec  c                                           ; $648e: $0d
	xor  e                                           ; $648f: $ab
	ldh  [c], a                                      ; $6490: $e2
	xor  $c5                                         ; $6491: $ee $c5
	ld   l, [hl]                                     ; $6493: $6e
	ld   [hl], c                                     ; $6494: $71
	ld   l, l                                        ; $6495: $6d
	sub  [hl]                                        ; $6496: $96
	ld   a, b                                        ; $6497: $78
	sbc  a                                           ; $6498: $9f
	dec  c                                           ; $6499: $0d
	nop                                              ; $649a: $00
	ld   a, [bc]                                     ; $649b: $0a
	inc  e                                           ; $649c: $1c
	ld   b, $00                                      ; $649d: $06 $00
	nop                                              ; $649f: $00
	ld   bc, $9166                                   ; $64a0: $01 $66 $91
	ld   d, b                                        ; $64a3: $50
	ld   a, b                                        ; $64a4: $78
	sbc  a                                           ; $64a5: $9f
	dec  c                                           ; $64a6: $0d
	nop                                              ; $64a7: $00
	ld   a, [bc]                                     ; $64a8: $0a
	dec  c                                           ; $64a9: $0d
	nop                                              ; $64aa: $00
	nop                                              ; $64ab: $00
	rrca                                             ; $64ac: $0f
	nop                                              ; $64ad: $00
	ld   bc, $1e09                                   ; $64ae: $01 $09 $1e
	nop                                              ; $64b1: $00
	nop                                              ; $64b2: $00
	ld   [bc], a                                     ; $64b3: $02
	rlca                                             ; $64b4: $07
	ld   [hl+], a                                    ; $64b5: $22
	nop                                              ; $64b6: $00
	inc  bc                                          ; $64b7: $03
	dec  d                                           ; $64b8: $15
	ld   bc, $2265                                   ; $64b9: $01 $65 $22
	nop                                              ; $64bc: $00
	rlca                                             ; $64bd: $07
	ld   e, d                                        ; $64be: $5a
	nop                                              ; $64bf: $00
	inc  bc                                          ; $64c0: $03
	dec  d                                           ; $64c1: $15
	ld   bc, $2566                                   ; $64c2: $01 $66 $25
	inc  bc                                          ; $64c5: $03
	dec  d                                           ; $64c6: $15
	ld   bc, $2287                                   ; $64c7: $01 $87 $22
	inc  e                                           ; $64ca: $1c
	nop                                              ; $64cb: $00
	rlca                                             ; $64cc: $07
	sbc  l                                           ; $64cd: $9d
	nop                                              ; $64ce: $00
	inc  bc                                          ; $64cf: $03
	dec  d                                           ; $64d0: $15
	ld   bc, $2587                                   ; $64d1: $01 $87 $25
	nop                                              ; $64d4: $00
	rrca                                             ; $64d5: $0f
	nop                                              ; $64d6: $00
	ld   bc, $0201                                   ; $64d7: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64da: $cf
	dec  b                                           ; $64db: $05
	ld   a, [de]                                     ; $64dc: $1a
	ld   h, e                                        ; $64dd: $63
	and  c                                           ; $64de: $a1
	sbc  a                                           ; $64df: $9f
	dec  c                                           ; $64e0: $0d
	nop                                              ; $64e1: $00
	ld   a, [bc]                                     ; $64e2: $0a
	inc  e                                           ; $64e3: $1c
	dec  b                                           ; $64e4: $05
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	ld   bc, $a502                                   ; $64e7: $01 $02 $a5
	ld   l, a                                        ; $64ea: $6f
	sub  l                                           ; $64eb: $95
	ld   [hl], c                                     ; $64ec: $71
	halt                                             ; $64ed: $76
	sbc  [hl]                                        ; $64ee: $9e
	inc  b                                           ; $64ef: $04
	ld   c, $04                                      ; $64f0: $0e $04
	adc  h                                           ; $64f2: $8c
	ld   a, b                                        ; $64f3: $78
	and  c                                           ; $64f4: $a1
	sub  d                                           ; $64f5: $92
	sbc  a                                           ; $64f6: $9f
	dec  c                                           ; $64f7: $0d
	ld   h, a                                        ; $64f8: $67
	adc  h                                           ; $64f9: $8c
	and  c                                           ; $64fa: $a1
	ld   a, b                                        ; $64fb: $78
	db   $fc                                         ; $64fc: $fc
	sbc  a                                           ; $64fd: $9f
	adc  c                                           ; $64fe: $89
	ld   a, b                                        ; $64ff: $78
	sbc  a                                           ; $6500: $9f
	dec  c                                           ; $6501: $0d
	nop                                              ; $6502: $00
	ld   a, [bc]                                     ; $6503: $0a
	dec  c                                           ; $6504: $0d
	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	rrca                                             ; $6507: $0f
	nop                                              ; $6508: $00
	ld   bc, $1e09                                   ; $6509: $01 $09 $1e
	nop                                              ; $650c: $00
	inc  e                                           ; $650d: $1c
	dec  b                                           ; $650e: $05
	nop                                              ; $650f: $00
	nop                                              ; $6510: $00
	ld   bc, $7196                                   ; $6511: $01 $96 $71
	sbc  [hl]                                        ; $6514: $9e
	ld   [$7d00], sp                                 ; $6515: $08 $00 $7d
	and  c                                           ; $6518: $a1
	sbc  a                                           ; $6519: $9f
	dec  c                                           ; $651a: $0d
	nop                                              ; $651b: $00
	ld   a, [bc]                                     ; $651c: $0a
	rrca                                             ; $651d: $0f
	nop                                              ; $651e: $00
	ld   bc, $0201                                   ; $651f: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6522: $cf
	dec  b                                           ; $6523: $05
	ld   a, [de]                                     ; $6524: $1a
	ld   h, e                                        ; $6525: $63
	and  c                                           ; $6526: $a1
	sbc  a                                           ; $6527: $9f
	dec  c                                           ; $6528: $0d
	ld   e, b                                        ; $6529: $58
	inc  b                                           ; $652a: $04
	ld   a, e                                        ; $652b: $7b
	sbc  d                                           ; $652c: $9a
	ld   h, e                                        ; $652d: $63
	adc  h                                           ; $652e: $8c
	ld   [hl], l                                     ; $652f: $75
	ld   h, a                                        ; $6530: $67
	sbc  a                                           ; $6531: $9f
	dec  c                                           ; $6532: $0d
	nop                                              ; $6533: $00
	ld   a, [bc]                                     ; $6534: $0a
	rrca                                             ; $6535: $0f
	dec  b                                           ; $6536: $05
	nop                                              ; $6537: $00
	ld   bc, $0458                                   ; $6538: $01 $58 $04
	ld   a, e                                        ; $653b: $7b
	sbc  d                                           ; $653c: $9a
	ld   h, e                                        ; $653d: $63
	and  c                                           ; $653e: $a1
	sbc  a                                           ; $653f: $9f
	dec  c                                           ; $6540: $0d
	adc  c                                           ; $6541: $89
	ld   a, b                                        ; $6542: $78
	sbc  a                                           ; $6543: $9f
	dec  c                                           ; $6544: $0d
	nop                                              ; $6545: $00
	ld   a, [bc]                                     ; $6546: $0a
	dec  c                                           ; $6547: $0d
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	rrca                                             ; $654a: $0f
	nop                                              ; $654b: $00
	ld   bc, $1e09                                   ; $654c: $01 $09 $1e
	nop                                              ; $654f: $00
	rrca                                             ; $6550: $0f
	nop                                              ; $6551: $00
	ld   bc, $050d                                   ; $6552: $01 $0d $05
	nop                                              ; $6555: $00
	ld   bc, $cf02                                   ; $6556: $01 $02 $cf
	dec  b                                           ; $6559: $05
	ld   a, [de]                                     ; $655a: $1a
	ld   h, e                                        ; $655b: $63
	and  c                                           ; $655c: $a1
	sbc  a                                           ; $655d: $9f
	dec  c                                           ; $655e: $0d
	nop                                              ; $655f: $00
	ld   a, [bc]                                     ; $6560: $0a
	inc  e                                           ; $6561: $1c
	dec  b                                           ; $6562: $05
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	ld   bc, $7196                                   ; $6565: $01 $96 $71
	sbc  [hl]                                        ; $6568: $9e
	ld   [$7d00], sp                                 ; $6569: $08 $00 $7d
	and  c                                           ; $656c: $a1
	sbc  a                                           ; $656d: $9f
	dec  c                                           ; $656e: $0d
	nop                                              ; $656f: $00
	ld   a, [bc]                                     ; $6570: $0a
	rrca                                             ; $6571: $0f
	nop                                              ; $6572: $00
	ld   bc, $0201                                   ; $6573: $01 $01 $02
	and  l                                           ; $6576: $a5
	inc  b                                           ; $6577: $04
	xor  d                                           ; $6578: $aa
	ld   a, h                                        ; $6579: $7c
	ld   e, b                                        ; $657a: $58
	inc  b                                           ; $657b: $04
	xor  l                                           ; $657c: $ad
	ld   h, d                                        ; $657d: $62
	inc  b                                           ; $657e: $04
	sbc  h                                           ; $657f: $9c
	ld   a, l                                        ; $6580: $7d
	dec  c                                           ; $6581: $0d
	ld   e, b                                        ; $6582: $58
	ld   d, d                                        ; $6583: $52
	ld   h, l                                        ; $6584: $65
	ld   e, c                                        ; $6585: $59
	ld   [hl], c                                     ; $6586: $71
	ld   l, l                                        ; $6587: $6d
	ld   [hl], l                                     ; $6588: $75
	ld   h, a                                        ; $6589: $67
	ld   a, e                                        ; $658a: $7b
	sbc  a                                           ; $658b: $9f
	dec  c                                           ; $658c: $0d
	nop                                              ; $658d: $00
	ld   a, [bc]                                     ; $658e: $0a
	inc  e                                           ; $658f: $1c
	dec  b                                           ; $6590: $05
	ld   bc, $0101                                   ; $6591: $01 $01 $01
	ld   l, e                                        ; $6594: $6b
	ld   l, e                                        ; $6595: $6b
	sbc  [hl]                                        ; $6596: $9e
	ld   d, h                                        ; $6597: $54
	adc  h                                           ; $6598: $8c
	ld   d, d                                        ; $6599: $52
	dec  c                                           ; $659a: $0d
	xor  e                                           ; $659b: $ab
	ldh  [c], a                                      ; $659c: $e2
	xor  $c5                                         ; $659d: $ee $c5
	sub  d                                           ; $659f: $92

Jump_050_65a0:
	ld   [hl], c                                     ; $65a0: $71
	ld   l, l                                        ; $65a1: $6d
	ld   a, b                                        ; $65a2: $78
	ld   d, b                                        ; $65a3: $50
	sbc  a                                           ; $65a4: $9f
	dec  c                                           ; $65a5: $0d
	nop                                              ; $65a6: $00
	ld   a, [bc]                                     ; $65a7: $0a
	inc  e                                           ; $65a8: $1c
	dec  b                                           ; $65a9: $05
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	ld   bc, $7889                                   ; $65ac: $01 $89 $78
	sbc  a                                           ; $65af: $9f
	dec  c                                           ; $65b0: $0d
	nop                                              ; $65b1: $00
	ld   a, [bc]                                     ; $65b2: $0a
	dec  c                                           ; $65b3: $0d
	nop                                              ; $65b4: $00
	nop                                              ; $65b5: $00
	rrca                                             ; $65b6: $0f
	nop                                              ; $65b7: $00
	ld   bc, $1e09                                   ; $65b8: $01 $09 $1e
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	ld   [bc], a                                     ; $65bd: $02
	ld   b, $01                                      ; $65be: $06 $01
	add  hl, bc                                      ; $65c0: $09
	jr   nz, jr_050_65c3                             ; $65c1: $20 $00

jr_050_65c3:
	ld   c, $7b                                      ; $65c3: $0e $7b
	inc  e                                           ; $65c5: $1c
	add  hl, bc                                      ; $65c6: $09
	nop                                              ; $65c7: $00
	nop                                              ; $65c8: $00
	ld   [bc], a                                     ; $65c9: $02
	ld   bc, $5092                                   ; $65ca: $01 $92 $50
	sbc  [hl]                                        ; $65cd: $9e
	ld   [$5d00], sp                                 ; $65ce: $08 $00 $5d
	and  c                                           ; $65d1: $a1
	sbc  a                                           ; $65d2: $9f
	dec  c                                           ; $65d3: $0d
	ld   l, e                                        ; $65d4: $6b
	sbc  d                                           ; $65d5: $9a
	ld   h, [hl]                                     ; $65d6: $66
	sub  c                                           ; $65d7: $91
	sbc  [hl]                                        ; $65d8: $9e
	ld   h, e                                        ; $65d9: $63
	ld   [hl], c                                     ; $65da: $71
	ld   l, e                                        ; $65db: $6b
	ld   e, l                                        ; $65dc: $5d
	rst  ToBoot                                         ; $65dd: $c7
	cp   d                                           ; $65de: $ba
	ret                                              ; $65df: $c9


	and  b                                           ; $65e0: $a0
	dec  c                                           ; $65e1: $0d
	dec  b                                           ; $65e2: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65e3: $cf
	adc  a                                           ; $65e4: $8f
	sub  [hl]                                        ; $65e5: $96
	ld   d, h                                        ; $65e6: $54
	ld   e, c                                        ; $65e7: $59
	sbc  a                                           ; $65e8: $9f
	dec  c                                           ; $65e9: $0d
	nop                                              ; $65ea: $00
	ld   a, [bc]                                     ; $65eb: $0a
	ld   bc, $3802                                   ; $65ec: $01 $02 $38
	inc  b                                           ; $65ef: $04
	ld   d, d                                        ; $65f0: $52
	and  b                                           ; $65f1: $a0
	inc  bc                                          ; $65f2: $03
	ld   sp, $75a1                                   ; $65f3: $31 $a1 $75
	ld   e, l                                        ; $65f6: $5d
	sbc  d                                           ; $65f7: $9a
	sbc  a                                           ; $65f8: $9f
	dec  c                                           ; $65f9: $0d
	nop                                              ; $65fa: $00
	ld   a, [bc]                                     ; $65fb: $0a
	dec  c                                           ; $65fc: $0d
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	rrca                                             ; $65ff: $0f
	nop                                              ; $6600: $00
	ld   bc, $1c28                                   ; $6601: $01 $28 $1c
	add  hl, bc                                      ; $6604: $09
	ld   [bc], a                                     ; $6605: $02
	ld   [bc], a                                     ; $6606: $02
	ld   bc, $7c61                                   ; $6607: $01 $61 $7c
	ld   [bc], a                                     ; $660a: $02
	jr   c, jr_050_6611                              ; $660b: $38 $04

	ld   d, d                                        ; $660d: $52
	ld   [hl], l                                     ; $660e: $75
	ld   d, d                                        ; $660f: $52
	ld   d, d                                        ; $6610: $52

jr_050_6611:
	and  c                                           ; $6611: $a1
	ld   l, [hl]                                     ; $6612: $6e
	ld   a, b                                        ; $6613: $78
	ld   sp, hl                                      ; $6614: $f9
	dec  c                                           ; $6615: $0d
	nop                                              ; $6616: $00
	ld   a, [bc]                                     ; $6617: $0a
	jr   jr_050_661c                                 ; $6618: $18 $02

	nop                                              ; $661a: $00
	ld   a, l                                        ; $661b: $7d

jr_050_661c:
	ld   d, d                                        ; $661c: $52
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	ld   d, d                                        ; $661f: $52
	ld   d, d                                        ; $6620: $52
	ld   d, [hl]                                     ; $6621: $56
	nop                                              ; $6622: $00
	ld   bc, $7307                                   ; $6623: $01 $07 $73
	nop                                              ; $6626: $00
	ld   [bc], a                                     ; $6627: $02
	ld   [bc], a                                     ; $6628: $02
	ld   bc, $2000                                   ; $6629: $01 $00 $20
	nop                                              ; $662c: $00
	rlca                                             ; $662d: $07
	add  hl, sp                                      ; $662e: $39
	nop                                              ; $662f: $00
	ld   [bc], a                                     ; $6630: $02
	ld   [bc], a                                     ; $6631: $02
	ld   bc, $2001                                   ; $6632: $01 $01 $20
	nop                                              ; $6635: $00
	inc  e                                           ; $6636: $1c
	add  hl, bc                                      ; $6637: $09
	ld   [bc], a                                     ; $6638: $02
	ld   [bc], a                                     ; $6639: $02
	ld   bc, $6596                                   ; $663a: $01 $96 $65
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	dec  c                                           ; $663f: $0d
	ld   b, $a5                                      ; $6640: $06 $a5
	ld   b, $a6                                      ; $6642: $06 $a6
	inc  bc                                          ; $6644: $03
	xor  b                                           ; $6645: $a8
	dec  b                                           ; $6646: $05
	rst  $38                                         ; $6647: $ff
	ld   l, [hl]                                     ; $6648: $6e
	ld   e, c                                        ; $6649: $59
	sub  a                                           ; $664a: $97
	halt                                             ; $664b: $76
	ld   d, d                                        ; $664c: $52
	ld   [hl], c                                     ; $664d: $71
	ld   [hl], h                                     ; $664e: $74
	sbc  [hl]                                        ; $664f: $9e
	dec  c                                           ; $6650: $0d
	ld   [bc], a                                     ; $6651: $02
	and  c                                           ; $6652: $a1
	and  b                                           ; $6653: $a0
	inc  b                                           ; $6654: $04
	sub  h                                           ; $6655: $94
	ld   e, l                                        ; $6656: $5d
	and  c                                           ; $6657: $a1
	ld   h, [hl]                                     ; $6658: $66
	sub  c                                           ; $6659: $91
	ld   a, b                                        ; $665a: $78
	ld   d, d                                        ; $665b: $52
	ld   l, h                                        ; $665c: $6c
	sbc  a                                           ; $665d: $9f
	dec  c                                           ; $665e: $0d
	nop                                              ; $665f: $00
	ld   a, [bc]                                     ; $6660: $0a
	ld   bc, $7d75                                   ; $6661: $01 $75 $7d
	sbc  [hl]                                        ; $6664: $9e
	dec  b                                           ; $6665: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6666: $cf
	adc  a                                           ; $6667: $8f
	ld   a, [$000d]                                  ; $6668: $fa $0d $00
	ld   a, [bc]                                     ; $666b: $0a
	dec  c                                           ; $666c: $0d
	nop                                              ; $666d: $00
	nop                                              ; $666e: $00
	rrca                                             ; $666f: $0f
	nop                                              ; $6670: $00
	ld   bc, $0227                                   ; $6671: $01 $27 $02
	rlca                                             ; $6674: $07
	cp   d                                           ; $6675: $ba
	nop                                              ; $6676: $00
	ld   [bc], a                                     ; $6677: $02
	inc  b                                           ; $6678: $04
	nop                                              ; $6679: $00
	ld   b, $7b                                      ; $667a: $06 $7b

Jump_050_667c:
	ld   bc, $091c                                   ; $667c: $01 $1c $09
	ld   bc, $0501                                   ; $667f: $01 $01 $05
	ld   b, b                                        ; $6682: $40
	ld   d, l                                        ; $6683: $55
	inc  bc                                          ; $6684: $03
	ld   d, l                                        ; $6685: $55
	ld   bc, $2801                                   ; $6686: $01 $01 $28
	nop                                              ; $6689: $00
	ld   bc, $7192                                   ; $668a: $01 $92 $71
	ld   l, l                                        ; $668d: $6d
	ld   a, b                                        ; $668e: $78
	sbc  [hl]                                        ; $668f: $9e
	ld   [$5d00], sp                                 ; $6690: $08 $00 $5d
	and  c                                           ; $6693: $a1
	sbc  a                                           ; $6694: $9f
	dec  c                                           ; $6695: $0d
	ld   a, b                                        ; $6696: $78
	ld   e, c                                        ; $6697: $59
	ld   a, b                                        ; $6698: $78
	ld   e, c                                        ; $6699: $59
	ld   a, h                                        ; $669a: $7c
	inc  bc                                          ; $669b: $03
	xor  b                                           ; $669c: $a8
	ld   d, d                                        ; $669d: $52
	add  h                                           ; $669e: $84
	sbc  b                                           ; $669f: $98
	ld   l, [hl]                                     ; $66a0: $6e
	ld   [hl], c                                     ; $66a1: $71
	ld   l, l                                        ; $66a2: $6d
	ld   l, h                                        ; $66a3: $6c
	sbc  a                                           ; $66a4: $9f
	dec  c                                           ; $66a5: $0d
	nop                                              ; $66a6: $00
	ld   a, [bc]                                     ; $66a7: $0a
	ld   bc, $7c61                                   ; $66a8: $01 $61 $7c
	ld   [bc], a                                     ; $66ab: $02
	jp   $9e7d                                       ; $66ac: $c3 $7d $9e


	inc  b                                           ; $66af: $04
	rst  $10                                         ; $66b0: $d7
	inc  b                                           ; $66b1: $04
	ld   hl, $0b04                                   ; $66b2: $21 $04 $0b
	inc  bc                                          ; $66b5: $03
	ld   h, h                                        ; $66b6: $64
	ld   a, c                                        ; $66b7: $79
	sub  b                                           ; $66b8: $90
	dec  c                                           ; $66b9: $0d
	inc  b                                           ; $66ba: $04
	ld   l, a                                        ; $66bb: $6f
	ld   [bc], a                                     ; $66bc: $02
	ld   [hl], h                                     ; $66bd: $74
	ld   h, l                                        ; $66be: $65
	ld   [hl], h                                     ; $66bf: $74
	ld   e, b                                        ; $66c0: $58
	ld   e, l                                        ; $66c1: $5d
	sub  [hl]                                        ; $66c2: $96
	sbc  a                                           ; $66c3: $9f
	dec  c                                           ; $66c4: $0d
	nop                                              ; $66c5: $00
	ld   a, [bc]                                     ; $66c6: $0a
	rrca                                             ; $66c7: $0f
	nop                                              ; $66c8: $00
	ld   bc, $0401                                   ; $66c9: $01 $01 $04
	ld   c, $03                                      ; $66cc: $0e $03
	sub  b                                           ; $66ce: $90
	ld   h, e                                        ; $66cf: $63
	and  c                                           ; $66d0: $a1
	rst  $38                                         ; $66d1: $ff
	rst  $38                                         ; $66d2: $ff
	dec  c                                           ; $66d3: $0d
	ld   d, b                                        ; $66d4: $50
	sbc  b                                           ; $66d5: $98
	ld   e, d                                        ; $66d6: $5a
	halt                                             ; $66d7: $76
	ld   d, h                                        ; $66d8: $54
	ld   h, d                                        ; $66d9: $62
	ld   h, h                                        ; $66da: $64
	ld   d, d                                        ; $66db: $52
	adc  h                                           ; $66dc: $8c
	ld   h, l                                        ; $66dd: $65
	ld   l, l                                        ; $66de: $6d
	ld   a, [$0dfa]                                  ; $66df: $fa $fa $0d
	nop                                              ; $66e2: $00
	ld   a, [bc]                                     ; $66e3: $0a
	rrca                                             ; $66e4: $0f
	add  hl, bc                                      ; $66e5: $09
	ld   bc, $5401                                   ; $66e6: $01 $01 $54
	and  c                                           ; $66e9: $a1
	sbc  [hl]                                        ; $66ea: $9e
	ld   l, e                                        ; $66eb: $6b
	sbc  d                                           ; $66ec: $9a
	ld   h, [hl]                                     ; $66ed: $66
	sub  c                                           ; $66ee: $91
	sbc  [hl]                                        ; $66ef: $9e
	dec  c                                           ; $66f0: $0d
	dec  b                                           ; $66f1: $05
	db   $10                                         ; $66f2: $10
	inc  bc                                          ; $66f3: $03
	ld   a, c                                        ; $66f4: $79
	sub  b                                           ; $66f5: $90
	ld   e, d                                        ; $66f6: $5a
	and  c                                           ; $66f7: $a1
	ld   a, [hl]                                     ; $66f8: $7e
	ld   [hl], c                                     ; $66f9: $71
	ld   [hl], h                                     ; $66fa: $74
	ld   a, b                                        ; $66fb: $78
	sbc  a                                           ; $66fc: $9f
	dec  c                                           ; $66fd: $0d
	nop                                              ; $66fe: $00
	ld   a, [bc]                                     ; $66ff: $0a
	dec  c                                           ; $6700: $0d
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	rrca                                             ; $6703: $0f
	nop                                              ; $6704: $00
	ld   bc, $1e09                                   ; $6705: $01 $09 $1e
	rlca                                             ; $6708: $07
	db   $f4                                         ; $6709: $f4
	ld   bc, $0702                                   ; $670a: $01 $02 $07
	ld   bc, $2001                                   ; $670d: $01 $01 $20
	nop                                              ; $6710: $00
	rlca                                             ; $6711: $07
	sub  e                                           ; $6712: $93
	dec  b                                           ; $6713: $05
	ld   [bc], a                                     ; $6714: $02
	rlca                                             ; $6715: $07
	ld   bc, $2004                                   ; $6716: $01 $04 $20
	nop                                              ; $6719: $00
	rlca                                             ; $671a: $07
	ld   d, $03                                      ; $671b: $16 $03
	ld   [bc], a                                     ; $671d: $02
	rlca                                             ; $671e: $07
	ld   bc, $2002                                   ; $671f: $01 $02 $20
	nop                                              ; $6722: $00
	rlca                                             ; $6723: $07
	sbc  b                                           ; $6724: $98
	ld   b, $02                                      ; $6725: $06 $02
	rlca                                             ; $6727: $07
	ld   bc, $2005                                   ; $6728: $01 $05 $20
	nop                                              ; $672b: $00
	rlca                                             ; $672c: $07
	add  a                                           ; $672d: $87
	inc  b                                           ; $672e: $04
	ld   [bc], a                                     ; $672f: $02
	rlca                                             ; $6730: $07
	ld   bc, $2003                                   ; $6731: $01 $03 $20
	nop                                              ; $6734: $00
	rlca                                             ; $6735: $07
	pop  de                                          ; $6736: $d1
	rlca                                             ; $6737: $07
	ld   [bc], a                                     ; $6738: $02
	rlca                                             ; $6739: $07
	ld   bc, $2006                                   ; $673a: $01 $06 $20
	nop                                              ; $673d: $00
	rrca                                             ; $673e: $0f
	nop                                              ; $673f: $00
	ld   bc, $8c01                                   ; $6740: $01 $01 $8c
	rst  $38                                         ; $6743: $ff
	rst  $38                                         ; $6744: $ff
	inc  b                                           ; $6745: $04
	ld   a, l                                        ; $6746: $7d
	ld   e, a                                        ; $6747: $5f
	ld   l, l                                        ; $6748: $6d
	rst  $38                                         ; $6749: $ff
	rst  $38                                         ; $674a: $ff
	dec  c                                           ; $674b: $0d
	nop                                              ; $674c: $00
	ld   a, [bc]                                     ; $674d: $0a
	inc  e                                           ; $674e: $1c
	add  hl, bc                                      ; $674f: $09
	ld   [bc], a                                     ; $6750: $02
	ld   [bc], a                                     ; $6751: $02
	ld   bc, $2803                                   ; $6752: $01 $03 $28
	inc  b                                           ; $6755: $04
	ld   c, b                                        ; $6756: $48
	ld   l, [hl]                                     ; $6757: $6e
	ld   [hl], c                                     ; $6758: $71
	ld   l, l                                        ; $6759: $6d
	ld   a, b                                        ; $675a: $78
	sbc  [hl]                                        ; $675b: $9e
	dec  c                                           ; $675c: $0d
	ld   [$5d00], sp                                 ; $675d: $08 $00 $5d
	and  c                                           ; $6760: $a1
	sbc  a                                           ; $6761: $9f
	dec  c                                           ; $6762: $0d
	nop                                              ; $6763: $00
	ld   a, [bc]                                     ; $6764: $0a
	ld   bc, $3802                                   ; $6765: $01 $02 $38
	inc  b                                           ; $6768: $04
	ld   d, d                                        ; $6769: $52
	ld   [hl], l                                     ; $676a: $75
	ld   a, h                                        ; $676b: $7c
	inc  bc                                          ; $676c: $03
	xor  b                                           ; $676d: $a8
	dec  b                                           ; $676e: $05
	rst  $38                                         ; $676f: $ff
	ld   a, l                                        ; $6770: $7d
	sbc  [hl]                                        ; $6771: $9e
	dec  b                                           ; $6772: $05
	pop  de                                          ; $6773: $d1
	ld   [hl], c                                     ; $6774: $71
	ld   l, l                                        ; $6775: $6d
	sub  [hl]                                        ; $6776: $96
	sbc  b                                           ; $6777: $98
	dec  c                                           ; $6778: $0d
	adc  [hl]                                        ; $6779: $8e
	ld   l, b                                        ; $677a: $68
	ld   e, c                                        ; $677b: $59
	ld   h, l                                        ; $677c: $65
	ld   d, d                                        ; $677d: $52
	ld   l, [hl]                                     ; $677e: $6e
	sbc  e                                           ; $677f: $9b
	sbc  a                                           ; $6780: $9f
	dec  c                                           ; $6781: $0d
	nop                                              ; $6782: $00
	ld   a, [bc]                                     ; $6783: $0a
	ld   bc, $2403                                   ; $6784: $01 $03 $24
	ld   [bc], a                                     ; $6787: $02
	sub  [hl]                                        ; $6788: $96
	ld   a, l                                        ; $6789: $7d
	adc  h                                           ; $678a: $8c
	ld   l, [hl]                                     ; $678b: $6e
	dec  b                                           ; $678c: $05
	db   $10                                         ; $678d: $10
	inc  bc                                          ; $678e: $03
	ld   a, c                                        ; $678f: $79
	sub  b                                           ; $6790: $90
	ld   d, b                                        ; $6791: $50
	sbc  c                                           ; $6792: $99
	sbc  a                                           ; $6793: $9f
	dec  c                                           ; $6794: $0d
	ld   [bc], a                                     ; $6795: $02
	and  c                                           ; $6796: $a1
	and  b                                           ; $6797: $a0
	sub  h                                           ; $6798: $94
	sbc  c                                           ; $6799: $99
	adc  a                                           ; $679a: $8f
	ld   l, b                                        ; $679b: $68
	ld   a, c                                        ; $679c: $79
	inc  bc                                          ; $679d: $03
	ld   l, l                                        ; $679e: $6d
	dec  b                                           ; $679f: $05
	add  hl, de                                      ; $67a0: $19
	dec  c                                           ; $67a1: $0d
	ld   h, l                                        ; $67a2: $65
	ld   [hl], h                                     ; $67a3: $74
	ld   e, b                                        ; $67a4: $58
	ld   e, l                                        ; $67a5: $5d
	sub  [hl]                                        ; $67a6: $96
	ld   d, h                                        ; $67a7: $54
	ld   a, c                                        ; $67a8: $79
	ld   a, b                                        ; $67a9: $78
	sbc  a                                           ; $67aa: $9f
	dec  c                                           ; $67ab: $0d
	nop                                              ; $67ac: $00
	ld   a, [bc]                                     ; $67ad: $0a
	dec  c                                           ; $67ae: $0d
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	rrca                                             ; $67b1: $0f
	nop                                              ; $67b2: $00
	ld   bc, $1e09                                   ; $67b3: $01 $09 $1e
	nop                                              ; $67b6: $00
	inc  c                                           ; $67b7: $0c
	ld   [bc], a                                     ; $67b8: $02
	ld   c, $33                                      ; $67b9: $0e $33
	rrca                                             ; $67bb: $0f
	nop                                              ; $67bc: $00
	ld   bc, $ff01                                   ; $67bd: $01 $01 $ff
	rst  $38                                         ; $67c0: $ff
	add  e                                           ; $67c1: $83
	ld   d, h                                        ; $67c2: $54
	rst  $38                                         ; $67c3: $ff
	rst  $38                                         ; $67c4: $ff
	dec  c                                           ; $67c5: $0d
	ld   [bc], a                                     ; $67c6: $02
	and  l                                           ; $67c7: $a5
	inc  b                                           ; $67c8: $04
	xor  d                                           ; $67c9: $aa
	ld   a, h                                        ; $67ca: $7c
	rst  ToBoot                                         ; $67cb: $c7
	cp   d                                           ; $67cc: $ba
	ret                                              ; $67cd: $c9


	ld   a, l                                        ; $67ce: $7d
	dec  c                                           ; $67cf: $0d
	ld   e, e                                        ; $67d0: $5b
	and  c                                           ; $67d1: $a1
	ld   l, a                                        ; $67d2: $6f
	sub  l                                           ; $67d3: $95
	ld   d, h                                        ; $67d4: $54
	ld   h, l                                        ; $67d5: $65
	ld   l, l                                        ; $67d6: $6d
	ld   a, b                                        ; $67d7: $78
	ld   d, b                                        ; $67d8: $50
	rst  $38                                         ; $67d9: $ff
	rst  $38                                         ; $67da: $ff
	dec  c                                           ; $67db: $0d
	nop                                              ; $67dc: $00
	ld   a, [bc]                                     ; $67dd: $0a
	inc  e                                           ; $67de: $1c
	ld   bc, $0000                                   ; $67df: $01 $00 $00
	ld   bc, $0458                                   ; $67e2: $01 $58 $04
	ld   a, e                                        ; $67e5: $7b
	sbc  d                                           ; $67e6: $9a
	ld   h, e                                        ; $67e7: $63
	adc  h                                           ; $67e8: $8c
	ld   [hl], l                                     ; $67e9: $75
	ld   h, l                                        ; $67ea: $65
	ld   l, l                                        ; $67eb: $6d
	sbc  a                                           ; $67ec: $9f
	dec  c                                           ; $67ed: $0d
	ld   [$6300], sp                                 ; $67ee: $08 $00 $63
	and  c                                           ; $67f1: $a1
	sbc  a                                           ; $67f2: $9f
	dec  c                                           ; $67f3: $0d
	nop                                              ; $67f4: $00
	ld   a, [bc]                                     ; $67f5: $0a
	rrca                                             ; $67f6: $0f
	nop                                              ; $67f7: $00
	ld   bc, $5001                                   ; $67f8: $01 $01 $50
	ld   [hl], c                                     ; $67fb: $71
	sbc  [hl]                                        ; $67fc: $9e
	ld   h, e                                        ; $67fd: $63
	ld   e, l                                        ; $67fe: $5d
	sub  a                                           ; $67ff: $97
	ld   h, e                                        ; $6800: $63
	and  c                                           ; $6801: $a1
	rst  $38                                         ; $6802: $ff
	rst  $38                                         ; $6803: $ff
	dec  c                                           ; $6804: $0d
	nop                                              ; $6805: $00
	ld   a, [bc]                                     ; $6806: $0a
	inc  e                                           ; $6807: $1c
	ld   bc, $0101                                   ; $6808: $01 $01 $01
	ld   bc, $bac7                                   ; $680b: $01 $c7 $ba
	ret                                              ; $680e: $c9


	sbc  [hl]                                        ; $680f: $9e
	ld   d, d                                        ; $6810: $52
	ld   d, d                                        ; $6811: $52
	ld   [bc], a                                     ; $6812: $02
	reti                                             ; $6813: $d9


	ld   [bc], a                                     ; $6814: $02
	ld   h, e                                        ; $6815: $63
	ld   l, [hl]                                     ; $6816: $6e
	ld   [hl], c                                     ; $6817: $71
	ld   l, l                                        ; $6818: $6d
	dec  c                                           ; $6819: $0d
	adc  l                                           ; $681a: $8d
	ld   l, l                                        ; $681b: $6d
	ld   d, d                                        ; $681c: $52
	ld   [hl], l                                     ; $681d: $75
	ld   h, a                                        ; $681e: $67
	ld   a, e                                        ; $681f: $7b
	sbc  a                                           ; $6820: $9f
	dec  c                                           ; $6821: $0d
	nop                                              ; $6822: $00
	ld   a, [bc]                                     ; $6823: $0a
	ld   bc, $5965                                   ; $6824: $01 $65 $59
	sub  b                                           ; $6827: $90
	sbc  [hl]                                        ; $6828: $9e
	ld   d, b                                        ; $6829: $50
	ld   l, l                                        ; $682a: $6d
	ld   h, l                                        ; $682b: $65
	ld   a, h                                        ; $682c: $7c
	ld   [bc], a                                     ; $682d: $02
	jr   c, jr_050_6834                              ; $682e: $38 $04

	ld   d, d                                        ; $6830: $52
	ld   [hl], l                                     ; $6831: $75
	dec  c                                           ; $6832: $0d
	rst  ToBoot                                         ; $6833: $c7

jr_050_6834:
	cp   d                                           ; $6834: $ba
	ret                                              ; $6835: $c9


	ld   h, l                                        ; $6836: $65
	ld   l, l                                        ; $6837: $6d
	and  c                                           ; $6838: $a1
	ld   [hl], l                                     ; $6839: $75
	ld   h, a                                        ; $683a: $67
	ld   [hl], c                                     ; $683b: $71
	ld   [hl], h                                     ; $683c: $74
	ld   sp, hl                                      ; $683d: $f9
	dec  c                                           ; $683e: $0d
	inc  b                                           ; $683f: $04
	ld   c, $03                                      ; $6840: $0e $03
	sub  b                                           ; $6842: $90
	ld   h, e                                        ; $6843: $63
	and  c                                           ; $6844: $a1
	ld   a, c                                        ; $6845: $79
	ld   [bc], a                                     ; $6846: $02
	jp   nz, $8c5b                                   ; $6847: $c2 $5b $8c

	ld   h, l                                        ; $684a: $65
	ld   l, l                                        ; $684b: $6d
	sub  [hl]                                        ; $684c: $96
	sbc  a                                           ; $684d: $9f
	dec  c                                           ; $684e: $0d
	nop                                              ; $684f: $00
	ld   a, [bc]                                     ; $6850: $0a
	rrca                                             ; $6851: $0f
	nop                                              ; $6852: $00
	ld   bc, $7d01                                   ; $6853: $01 $01 $7d
	ld   d, d                                        ; $6856: $52
	sbc  [hl]                                        ; $6857: $9e
	ld   d, b                                        ; $6858: $50
	sbc  b                                           ; $6859: $98
	ld   e, d                                        ; $685a: $5a
	halt                                             ; $685b: $76
	ld   d, h                                        ; $685c: $54
	ld   h, d                                        ; $685d: $62
	ld   h, h                                        ; $685e: $64
	ld   d, d                                        ; $685f: $52
	adc  h                                           ; $6860: $8c
	ld   h, a                                        ; $6861: $67
	ld   a, [$610d]                                  ; $6862: $fa $0d $61
	sbc  d                                           ; $6865: $9a
	sub  b                                           ; $6866: $90
	sbc  [hl]                                        ; $6867: $9e
	ld   h, e                                        ; $6868: $63
	ld   e, l                                        ; $6869: $5d
	sub  a                                           ; $686a: $97
	ld   h, e                                        ; $686b: $63
	and  c                                           ; $686c: $a1
	ld   a, h                                        ; $686d: $7c
	inc  bc                                          ; $686e: $03
	ld   l, l                                        ; $686f: $6d
	dec  b                                           ; $6870: $05
	add  hl, de                                      ; $6871: $19
	ld   a, h                                        ; $6872: $7c
	dec  c                                           ; $6873: $0d
	ld   e, b                                        ; $6874: $58
	ld   e, c                                        ; $6875: $59
	ld   h, b                                        ; $6876: $60
	ld   [hl], l                                     ; $6877: $75
	ld   h, a                                        ; $6878: $67
	sub  [hl]                                        ; $6879: $96
	sbc  a                                           ; $687a: $9f
	dec  c                                           ; $687b: $0d
	nop                                              ; $687c: $00
	ld   a, [bc]                                     ; $687d: $0a
	inc  e                                           ; $687e: $1c
	ld   bc, $0101                                   ; $687f: $01 $01 $01
	dec  e                                           ; $6882: $1d
	ld   b, b                                        ; $6883: $40
	ld   de, $1103                                   ; $6884: $11 $03 $11
	ld   bc, $2803                                   ; $6887: $01 $03 $28
	nop                                              ; $688a: $00
	ld   bc, $d6d6                                   ; $688b: $01 $d6 $d6
	rst  $38                                         ; $688e: $ff
	rst  $38                                         ; $688f: $ff
	ld   [hl], l                                     ; $6890: $75
	sub  b                                           ; $6891: $90
	sbc  [hl]                                        ; $6892: $9e
	ld   [bc], a                                     ; $6893: $02
	reti                                             ; $6894: $d9


	ld   [bc], a                                     ; $6895: $02
	ld   h, e                                        ; $6896: $63
	and  b                                           ; $6897: $a0
	inc  bc                                          ; $6898: $03
	add  b                                           ; $6899: $80
	ld   l, c                                        ; $689a: $69
	ld   l, l                                        ; $689b: $6d
	dec  c                                           ; $689c: $0d
	ld   a, h                                        ; $689d: $7c
	ld   a, l                                        ; $689e: $7d
	sbc  [hl]                                        ; $689f: $9e
	ld   [$6300], sp                                 ; $68a0: $08 $00 $63
	and  c                                           ; $68a3: $a1
	ld   e, d                                        ; $68a4: $5a
	dec  c                                           ; $68a5: $0d
	ld   e, d                                        ; $68a6: $5a
	and  c                                           ; $68a7: $a1
	ld   a, [hl]                                     ; $68a8: $7e
	ld   [hl], c                                     ; $68a9: $71
	ld   l, l                                        ; $68aa: $6d
	ld   e, c                                        ; $68ab: $59
	sub  a                                           ; $68ac: $97
	ld   [hl], l                                     ; $68ad: $75
	ld   h, a                                        ; $68ae: $67
	sub  [hl]                                        ; $68af: $96
	sbc  a                                           ; $68b0: $9f
	dec  c                                           ; $68b1: $0d
	nop                                              ; $68b2: $00
	ld   a, [bc]                                     ; $68b3: $0a
	ld   bc, $9a61                                   ; $68b4: $01 $61 $9a
	ld   e, c                                        ; $68b7: $59
	sub  a                                           ; $68b8: $97
	sub  b                                           ; $68b9: $90
	sbc  [hl]                                        ; $68ba: $9e
	ld   h, c                                        ; $68bb: $61
	ld   a, h                                        ; $68bc: $7c
	inc  bc                                          ; $68bd: $03
	cp   $03                                         ; $68be: $fe $03
	add  [hl]                                        ; $68c0: $86
	ld   [hl], l                                     ; $68c1: $75
	dec  c                                           ; $68c2: $0d
	ld   e, d                                        ; $68c3: $5a
	and  c                                           ; $68c4: $a1
	ld   a, [hl]                                     ; $68c5: $7e
	ld   [hl], c                                     ; $68c6: $71
	ld   [hl], h                                     ; $68c7: $74
	ld   e, l                                        ; $68c8: $5d
	ld   l, [hl]                                     ; $68c9: $6e
	ld   h, e                                        ; $68ca: $63
	ld   d, d                                        ; $68cb: $52
	sbc  a                                           ; $68cc: $9f
	dec  c                                           ; $68cd: $0d
	nop                                              ; $68ce: $00
	ld   a, [bc]                                     ; $68cf: $0a
	dec  c                                           ; $68d0: $0d
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	rrca                                             ; $68d3: $0f
	nop                                              ; $68d4: $00
	ld   bc, $1e09                                   ; $68d5: $01 $09 $1e
	nop                                              ; $68d8: $00
	inc  c                                           ; $68d9: $0c
	ld   [bc], a                                     ; $68da: $02
	ld   c, $3f                                      ; $68db: $0e $3f
	rrca                                             ; $68dd: $0f
	nop                                              ; $68de: $00
	ld   bc, $ff01                                   ; $68df: $01 $01 $ff
	rst  $38                                         ; $68e2: $ff
	add  e                                           ; $68e3: $83
	ld   d, h                                        ; $68e4: $54
	rst  $38                                         ; $68e5: $ff
	rst  $38                                         ; $68e6: $ff
	dec  c                                           ; $68e7: $0d
	ld   [bc], a                                     ; $68e8: $02
	and  l                                           ; $68e9: $a5
	inc  b                                           ; $68ea: $04
	xor  d                                           ; $68eb: $aa
	ld   a, h                                        ; $68ec: $7c
	rst  ToBoot                                         ; $68ed: $c7
	cp   d                                           ; $68ee: $ba
	ret                                              ; $68ef: $c9


	ld   a, l                                        ; $68f0: $7d
	ld   e, e                                        ; $68f1: $5b
	and  c                                           ; $68f2: $a1
	ld   l, a                                        ; $68f3: $6f
	sub  l                                           ; $68f4: $95
	ld   d, h                                        ; $68f5: $54
	dec  c                                           ; $68f6: $0d
	ld   h, l                                        ; $68f7: $65
	ld   l, l                                        ; $68f8: $6d
	ld   a, b                                        ; $68f9: $78
	ld   d, b                                        ; $68fa: $50
	rst  $38                                         ; $68fb: $ff
	rst  $38                                         ; $68fc: $ff
	dec  c                                           ; $68fd: $0d
	nop                                              ; $68fe: $00
	ld   a, [bc]                                     ; $68ff: $0a
	inc  e                                           ; $6900: $1c
	ld   [bc], a                                     ; $6901: $02
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	ld   bc, $0458                                   ; $6904: $01 $58 $04
	ld   a, e                                        ; $6907: $7b
	sbc  d                                           ; $6908: $9a
	ld   h, e                                        ; $6909: $63
	adc  h                                           ; $690a: $8c
	ld   [hl], l                                     ; $690b: $75
	ld   h, l                                        ; $690c: $65
	ld   l, l                                        ; $690d: $6d
	sbc  a                                           ; $690e: $9f
	dec  c                                           ; $690f: $0d
	ld   [$6300], sp                                 ; $6910: $08 $00 $63
	and  c                                           ; $6913: $a1
	sbc  a                                           ; $6914: $9f
	dec  c                                           ; $6915: $0d
	nop                                              ; $6916: $00
	ld   a, [bc]                                     ; $6917: $0a
	rrca                                             ; $6918: $0f
	nop                                              ; $6919: $00
	ld   bc, $5001                                   ; $691a: $01 $01 $50
	ld   [hl], c                                     ; $691d: $71
	sbc  [hl]                                        ; $691e: $9e
	ld   h, a                                        ; $691f: $67
	adc  l                                           ; $6920: $8d
	sbc  d                                           ; $6921: $9a
	ld   h, e                                        ; $6922: $63
	and  c                                           ; $6923: $a1
	rst  $38                                         ; $6924: $ff
	rst  $38                                         ; $6925: $ff
	dec  c                                           ; $6926: $0d
	nop                                              ; $6927: $00
	ld   a, [bc]                                     ; $6928: $0a
	inc  e                                           ; $6929: $1c
	ld   [bc], a                                     ; $692a: $02
	ld   bc, $0101                                   ; $692b: $01 $01 $01
	rst  ToBoot                                         ; $692e: $c7
	cp   d                                           ; $692f: $ba
	ret                                              ; $6930: $c9


	sbc  [hl]                                        ; $6931: $9e
	ld   d, d                                        ; $6932: $52
	ld   d, d                                        ; $6933: $52
	ld   [bc], a                                     ; $6934: $02
	reti                                             ; $6935: $d9


	ld   [bc], a                                     ; $6936: $02
	ld   h, e                                        ; $6937: $63
	ld   l, [hl]                                     ; $6938: $6e
	ld   [hl], c                                     ; $6939: $71
	ld   l, l                                        ; $693a: $6d
	dec  c                                           ; $693b: $0d
	adc  l                                           ; $693c: $8d
	ld   l, l                                        ; $693d: $6d
	ld   d, d                                        ; $693e: $52
	ld   [hl], l                                     ; $693f: $75
	ld   h, a                                        ; $6940: $67
	sbc  l                                           ; $6941: $9d
	ld   a, e                                        ; $6942: $7b
	sbc  a                                           ; $6943: $9f
	dec  c                                           ; $6944: $0d
	nop                                              ; $6945: $00
	ld   a, [bc]                                     ; $6946: $0a
	ld   bc, $5965                                   ; $6947: $01 $65 $59
	sub  b                                           ; $694a: $90
	sbc  [hl]                                        ; $694b: $9e
	sbc  l                                           ; $694c: $9d
	ld   l, l                                        ; $694d: $6d
	ld   e, l                                        ; $694e: $5d
	ld   h, l                                        ; $694f: $65
	ld   a, h                                        ; $6950: $7c
	ld   [bc], a                                     ; $6951: $02
	jr   c, jr_050_6958                              ; $6952: $38 $04

	ld   d, d                                        ; $6954: $52
	ld   [hl], l                                     ; $6955: $75
	dec  c                                           ; $6956: $0d
	rst  ToBoot                                         ; $6957: $c7

jr_050_6958:
	cp   d                                           ; $6958: $ba
	ret                                              ; $6959: $c9


	ld   h, l                                        ; $695a: $65
	ld   l, l                                        ; $695b: $6d
	and  c                                           ; $695c: $a1
	ld   [hl], l                                     ; $695d: $75
	ld   h, a                                        ; $695e: $67
	ld   [hl], c                                     ; $695f: $71
	ld   [hl], h                                     ; $6960: $74
	ld   sp, hl                                      ; $6961: $f9
	dec  c                                           ; $6962: $0d
	inc  bc                                          ; $6963: $03
	ld   l, h                                        ; $6964: $6c
	dec  b                                           ; $6965: $05
	ld   h, $79                                      ; $6966: $26 $79
	ld   [bc], a                                     ; $6968: $02
	jp   nz, $8c5b                                   ; $6969: $c2 $5b $8c

	ld   h, l                                        ; $696c: $65
	ld   l, l                                        ; $696d: $6d
	sbc  l                                           ; $696e: $9d
	sbc  a                                           ; $696f: $9f
	dec  c                                           ; $6970: $0d
	nop                                              ; $6971: $00
	ld   a, [bc]                                     ; $6972: $0a
	rrca                                             ; $6973: $0f
	nop                                              ; $6974: $00
	ld   bc, $7d01                                   ; $6975: $01 $01 $7d
	ld   d, d                                        ; $6978: $52
	sbc  [hl]                                        ; $6979: $9e
	ld   d, b                                        ; $697a: $50
	sbc  b                                           ; $697b: $98
	ld   e, d                                        ; $697c: $5a
	halt                                             ; $697d: $76
	ld   d, h                                        ; $697e: $54
	ld   h, d                                        ; $697f: $62
	ld   h, h                                        ; $6980: $64
	ld   d, d                                        ; $6981: $52
	adc  h                                           ; $6982: $8c
	ld   h, a                                        ; $6983: $67
	ld   a, [$610d]                                  ; $6984: $fa $0d $61
	sbc  d                                           ; $6987: $9a
	sub  b                                           ; $6988: $90
	sbc  [hl]                                        ; $6989: $9e
	ld   h, a                                        ; $698a: $67
	adc  l                                           ; $698b: $8d
	sbc  d                                           ; $698c: $9a
	ld   h, e                                        ; $698d: $63
	and  c                                           ; $698e: $a1
	ld   a, h                                        ; $698f: $7c
	inc  bc                                          ; $6990: $03
	ld   l, l                                        ; $6991: $6d
	dec  b                                           ; $6992: $05
	add  hl, de                                      ; $6993: $19
	ld   a, h                                        ; $6994: $7c
	dec  c                                           ; $6995: $0d
	ld   e, b                                        ; $6996: $58
	ld   e, c                                        ; $6997: $59
	ld   h, b                                        ; $6998: $60
	ld   [hl], l                                     ; $6999: $75
	ld   h, a                                        ; $699a: $67
	sbc  a                                           ; $699b: $9f
	dec  c                                           ; $699c: $0d
	nop                                              ; $699d: $00
	ld   a, [bc]                                     ; $699e: $0a
	inc  e                                           ; $699f: $1c
	ld   [bc], a                                     ; $69a0: $02
	jr   nc, @+$1b                                   ; $69a1: $30 $19

	ld   bc, $fc58                                   ; $69a3: $01 $58 $fc
	ld   [hl], c                                     ; $69a6: $71
	adc  c                                           ; $69a7: $89
	ld   [hl], c                                     ; $69a8: $71
	adc  c                                           ; $69a9: $89
	ld   [hl], c                                     ; $69aa: $71
	adc  c                                           ; $69ab: $89
	sbc  a                                           ; $69ac: $9f
	dec  c                                           ; $69ad: $0d
	inc  b                                           ; $69ae: $04
	jr   jr_050_69b4                                 ; $69af: $18 $03

	sbc  c                                           ; $69b1: $99
	ld   [hl], l                                     ; $69b2: $75
	ld   h, a                                        ; $69b3: $67

jr_050_69b4:
	sbc  l                                           ; $69b4: $9d
	sbc  a                                           ; $69b5: $9f
	dec  c                                           ; $69b6: $0d
	nop                                              ; $69b7: $00
	ld   a, [bc]                                     ; $69b8: $0a
	inc  e                                           ; $69b9: $1c
	ld   [bc], a                                     ; $69ba: $02
	ld   bc, $1d01                                   ; $69bb: $01 $01 $1d
	ld   b, b                                        ; $69be: $40
	ld   [de], a                                     ; $69bf: $12
	inc  bc                                          ; $69c0: $03
	ld   [de], a                                     ; $69c1: $12
	ld   bc, $2803                                   ; $69c2: $01 $03 $28
	nop                                              ; $69c5: $00
	ld   bc, $7d76                                   ; $69c6: $01 $76 $7d
	ld   d, d                                        ; $69c9: $52
	ld   d, [hl]                                     ; $69ca: $56
	rst  $38                                         ; $69cb: $ff
	ld   d, b                                        ; $69cc: $50
	ld   a, b                                        ; $69cd: $78
	ld   l, l                                        ; $69ce: $6d
	ld   a, h                                        ; $69cf: $7c
	ld   e, d                                        ; $69d0: $5a
	and  c                                           ; $69d1: $a1
	ld   a, [hl]                                     ; $69d2: $7e
	sbc  b                                           ; $69d3: $98
	ld   e, d                                        ; $69d4: $5a
	dec  c                                           ; $69d5: $0d
	ld   d, b                                        ; $69d6: $50
	ld   [hl], c                                     ; $69d7: $71
	ld   l, l                                        ; $69d8: $6d
	ld   e, c                                        ; $69d9: $59
	sub  a                                           ; $69da: $97
	ld   h, c                                        ; $69db: $61
	ld   l, e                                        ; $69dc: $6b
	ld   [hl], l                                     ; $69dd: $75
	ld   h, a                                        ; $69de: $67
	sbc  l                                           ; $69df: $9d
	sbc  a                                           ; $69e0: $9f
	dec  c                                           ; $69e1: $0d
	nop                                              ; $69e2: $00
	ld   a, [bc]                                     ; $69e3: $0a
	ld   bc, $9a61                                   ; $69e4: $01 $61 $9a
	ld   e, c                                        ; $69e7: $59
	sub  a                                           ; $69e8: $97
	sub  b                                           ; $69e9: $90
	sbc  [hl]                                        ; $69ea: $9e
	ld   h, c                                        ; $69eb: $61
	ld   a, h                                        ; $69ec: $7c
	inc  bc                                          ; $69ed: $03
	cp   $03                                         ; $69ee: $fe $03
	add  [hl]                                        ; $69f0: $86
	ld   [hl], l                                     ; $69f1: $75
	dec  c                                           ; $69f2: $0d
	ld   e, d                                        ; $69f3: $5a
	and  c                                           ; $69f4: $a1
	ld   a, [hl]                                     ; $69f5: $7e
	ld   [hl], c                                     ; $69f6: $71
	ld   [hl], h                                     ; $69f7: $74
	ld   e, l                                        ; $69f8: $5d
	ld   l, [hl]                                     ; $69f9: $6e
	ld   h, e                                        ; $69fa: $63
	ld   d, d                                        ; $69fb: $52
	ld   a, b                                        ; $69fc: $78
	sbc  a                                           ; $69fd: $9f
	dec  c                                           ; $69fe: $0d
	nop                                              ; $69ff: $00
	ld   a, [bc]                                     ; $6a00: $0a
	ld   bc, $7190                                   ; $6a01: $01 $90 $71
	halt                                             ; $6a04: $76
	sub  b                                           ; $6a05: $90
	rst  $38                                         ; $6a06: $ff
	rst  $38                                         ; $6a07: $ff
	sbc  l                                           ; $6a08: $9d
	ld   l, l                                        ; $6a09: $6d
	ld   e, l                                        ; $6a0a: $5d
	ld   h, l                                        ; $6a0b: $65
	ld   a, h                                        ; $6a0c: $7c
	inc  bc                                          ; $6a0d: $03
	ld   l, l                                        ; $6a0e: $6d
	dec  b                                           ; $6a0f: $05
	add  hl, de                                      ; $6a10: $19
	and  b                                           ; $6a11: $a0
	dec  c                                           ; $6a12: $0d
	ld   d, h                                        ; $6a13: $54
	ld   e, a                                        ; $6a14: $5f
	ld   [hl], h                                     ; $6a15: $74
	sbc  [hl]                                        ; $6a16: $9e
	sbc  l                                           ; $6a17: $9d
	sbc  c                                           ; $6a18: $99
	ld   d, d                                        ; $6a19: $52
	ld   [bc], a                                     ; $6a1a: $02
	reti                                             ; $6a1b: $d9


	ld   [bc], a                                     ; $6a1c: $02
	ld   h, e                                        ; $6a1d: $63
	ld   a, c                                        ; $6a1e: $79
	ld   a, b                                        ; $6a1f: $78
	sbc  c                                           ; $6a20: $99
	dec  c                                           ; $6a21: $0d
	sbc  l                                           ; $6a22: $9d
	ld   e, a                                        ; $6a23: $5f
	ld   a, l                                        ; $6a24: $7d
	ld   h, d                                        ; $6a25: $62
	ld   h, h                                        ; $6a26: $64
	ld   d, d                                        ; $6a27: $52
	adc  h                                           ; $6a28: $8c
	ld   l, c                                        ; $6a29: $69
	and  c                                           ; $6a2a: $a1
	ld   e, a                                        ; $6a2b: $5f
	sbc  d                                           ; $6a2c: $9a
	ld   [hl], a                                     ; $6a2d: $77
	rst  $38                                         ; $6a2e: $ff
	rst  $38                                         ; $6a2f: $ff
	dec  c                                           ; $6a30: $0d
	nop                                              ; $6a31: $00
	ld   a, [bc]                                     ; $6a32: $0a
	ld   bc, $9a6b                                   ; $6a33: $01 $6b $9a
	ld   [hl], l                                     ; $6a36: $75
	ld   a, l                                        ; $6a37: $7d
	sbc  [hl]                                        ; $6a38: $9e
	inc  bc                                          ; $6a39: $03
	add  e                                           ; $6a3a: $83
	dec  b                                           ; $6a3b: $05
	dec  c                                           ; $6a3c: $0d
	sbc  a                                           ; $6a3d: $9f
	dec  c                                           ; $6a3e: $0d
	nop                                              ; $6a3f: $00
	ld   a, [bc]                                     ; $6a40: $0a
	dec  c                                           ; $6a41: $0d
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	rrca                                             ; $6a44: $0f
	nop                                              ; $6a45: $00
	ld   bc, $1e09                                   ; $6a46: $01 $09 $1e
	nop                                              ; $6a49: $00
	inc  c                                           ; $6a4a: $0c
	ld   [bc], a                                     ; $6a4b: $02
	ld   c, $33                                      ; $6a4c: $0e $33
	rrca                                             ; $6a4e: $0f
	nop                                              ; $6a4f: $00
	ld   bc, $ff01                                   ; $6a50: $01 $01 $ff
	rst  $38                                         ; $6a53: $ff
	add  e                                           ; $6a54: $83
	ld   d, h                                        ; $6a55: $54
	rst  $38                                         ; $6a56: $ff
	rst  $38                                         ; $6a57: $ff
	dec  c                                           ; $6a58: $0d
	ld   [bc], a                                     ; $6a59: $02
	and  l                                           ; $6a5a: $a5
	inc  b                                           ; $6a5b: $04
	xor  d                                           ; $6a5c: $aa
	ld   a, h                                        ; $6a5d: $7c
	rst  ToBoot                                         ; $6a5e: $c7
	cp   d                                           ; $6a5f: $ba
	ret                                              ; $6a60: $c9


	ld   a, l                                        ; $6a61: $7d
	dec  c                                           ; $6a62: $0d
	ld   e, e                                        ; $6a63: $5b
	and  c                                           ; $6a64: $a1
	ld   l, a                                        ; $6a65: $6f
	sub  l                                           ; $6a66: $95
	ld   d, h                                        ; $6a67: $54
	ld   h, l                                        ; $6a68: $65
	ld   l, l                                        ; $6a69: $6d
	ld   a, b                                        ; $6a6a: $78
	ld   d, b                                        ; $6a6b: $50
	rst  $38                                         ; $6a6c: $ff
	rst  $38                                         ; $6a6d: $ff
	dec  c                                           ; $6a6e: $0d
	nop                                              ; $6a6f: $00
	ld   a, [bc]                                     ; $6a70: $0a
	inc  e                                           ; $6a71: $1c
	inc  bc                                          ; $6a72: $03
	nop                                              ; $6a73: $00
	nop                                              ; $6a74: $00
	ld   bc, $0458                                   ; $6a75: $01 $58 $04
	ld   a, e                                        ; $6a78: $7b
	sbc  d                                           ; $6a79: $9a
	ld   h, e                                        ; $6a7a: $63
	adc  h                                           ; $6a7b: $8c
	sbc  a                                           ; $6a7c: $9f
	dec  c                                           ; $6a7d: $0d
	ld   [$5d00], sp                                 ; $6a7e: $08 $00 $5d
	and  c                                           ; $6a81: $a1
	sbc  a                                           ; $6a82: $9f
	dec  c                                           ; $6a83: $0d
	nop                                              ; $6a84: $00
	ld   a, [bc]                                     ; $6a85: $0a
	rrca                                             ; $6a86: $0f
	nop                                              ; $6a87: $00
	ld   bc, $5001                                   ; $6a88: $01 $01 $50
	ld   [hl], c                                     ; $6a8b: $71
	sbc  [hl]                                        ; $6a8c: $9e
	rst  JumpTable                                         ; $6a8d: $df
	db   $ec                                         ; $6a8e: $ec
	and  e                                           ; $6a8f: $a3
	ld   h, e                                        ; $6a90: $63
	and  c                                           ; $6a91: $a1
	rst  $38                                         ; $6a92: $ff
	rst  $38                                         ; $6a93: $ff
	dec  c                                           ; $6a94: $0d
	nop                                              ; $6a95: $00
	ld   a, [bc]                                     ; $6a96: $0a
	inc  e                                           ; $6a97: $1c
	inc  bc                                          ; $6a98: $03
	inc  bc                                          ; $6a99: $03
	inc  bc                                          ; $6a9a: $03
	ld   bc, $bac7                                   ; $6a9b: $01 $c7 $ba
	ret                                              ; $6a9e: $c9


	sbc  [hl]                                        ; $6a9f: $9e
	ld   d, d                                        ; $6aa0: $52
	ld   d, d                                        ; $6aa1: $52
	ld   [bc], a                                     ; $6aa2: $02
	reti                                             ; $6aa3: $d9


	ld   [bc], a                                     ; $6aa4: $02
	ld   h, e                                        ; $6aa5: $63
	ld   l, [hl]                                     ; $6aa6: $6e
	ld   [hl], c                                     ; $6aa7: $71
	ld   l, l                                        ; $6aa8: $6d
	dec  c                                           ; $6aa9: $0d
	adc  l                                           ; $6aaa: $8d
	ld   l, l                                        ; $6aab: $6d
	ld   d, d                                        ; $6aac: $52
	ld   a, e                                        ; $6aad: $7b
	sbc  a                                           ; $6aae: $9f
	dec  c                                           ; $6aaf: $0d
	nop                                              ; $6ab0: $00
	ld   a, [bc]                                     ; $6ab1: $0a
	ld   bc, $5965                                   ; $6ab2: $01 $65 $59
	sub  b                                           ; $6ab5: $90
	sbc  [hl]                                        ; $6ab6: $9e
	sbc  l                                           ; $6ab7: $9d
	ld   l, l                                        ; $6ab8: $6d
	ld   h, l                                        ; $6ab9: $65
	ld   a, h                                        ; $6aba: $7c
	ld   [bc], a                                     ; $6abb: $02
	jr   c, jr_050_6ac2                              ; $6abc: $38 $04

	ld   d, d                                        ; $6abe: $52
	ld   [hl], l                                     ; $6abf: $75
	dec  c                                           ; $6ac0: $0d
	rst  ToBoot                                         ; $6ac1: $c7

jr_050_6ac2:
	cp   d                                           ; $6ac2: $ba
	ret                                              ; $6ac3: $c9


	ld   h, l                                        ; $6ac4: $65
	ld   l, l                                        ; $6ac5: $6d
	and  c                                           ; $6ac6: $a1
	ld   [hl], l                                     ; $6ac7: $75
	ld   h, a                                        ; $6ac8: $67
	ld   [hl], c                                     ; $6ac9: $71
	ld   [hl], h                                     ; $6aca: $74
	ld   sp, hl                                      ; $6acb: $f9
	dec  c                                           ; $6acc: $0d
	inc  b                                           ; $6acd: $04
	ld   a, [bc]                                     ; $6ace: $0a
	inc  bc                                          ; $6acf: $03
	jp   nc, $0279                                   ; $6ad0: $d2 $79 $02

	jp   nz, $8c5b                                   ; $6ad3: $c2 $5b $8c

	ld   h, l                                        ; $6ad6: $65
	ld   l, l                                        ; $6ad7: $6d
	sub  [hl]                                        ; $6ad8: $96
	sbc  a                                           ; $6ad9: $9f
	dec  c                                           ; $6ada: $0d
	nop                                              ; $6adb: $00
	ld   a, [bc]                                     ; $6adc: $0a
	rrca                                             ; $6add: $0f
	nop                                              ; $6ade: $00
	ld   bc, $7d01                                   ; $6adf: $01 $01 $7d
	ld   d, d                                        ; $6ae2: $52
	sbc  [hl]                                        ; $6ae3: $9e
	ld   d, b                                        ; $6ae4: $50
	sbc  b                                           ; $6ae5: $98
	ld   e, d                                        ; $6ae6: $5a
	halt                                             ; $6ae7: $76
	ld   d, h                                        ; $6ae8: $54
	ld   h, d                                        ; $6ae9: $62
	ld   h, h                                        ; $6aea: $64
	ld   d, d                                        ; $6aeb: $52
	adc  h                                           ; $6aec: $8c
	ld   h, a                                        ; $6aed: $67
	ld   a, [$df0d]                                  ; $6aee: $fa $0d $df
	db   $ec                                         ; $6af1: $ec
	and  e                                           ; $6af2: $a3
	ld   h, e                                        ; $6af3: $63
	and  c                                           ; $6af4: $a1
	ld   a, h                                        ; $6af5: $7c
	inc  bc                                          ; $6af6: $03
	ld   l, l                                        ; $6af7: $6d
	dec  b                                           ; $6af8: $05
	add  hl, de                                      ; $6af9: $19
	ld   a, h                                        ; $6afa: $7c
	dec  c                                           ; $6afb: $0d
	ld   e, b                                        ; $6afc: $58
	ld   e, c                                        ; $6afd: $59
	ld   h, b                                        ; $6afe: $60
	ld   [hl], l                                     ; $6aff: $75
	ld   h, a                                        ; $6b00: $67
	sbc  a                                           ; $6b01: $9f
	dec  c                                           ; $6b02: $0d
	nop                                              ; $6b03: $00
	ld   a, [bc]                                     ; $6b04: $0a
	rrca                                             ; $6b05: $0f
	inc  bc                                          ; $6b06: $03
	inc  bc                                          ; $6b07: $03
	dec  e                                           ; $6b08: $1d
	ld   b, b                                        ; $6b09: $40
	inc  de                                          ; $6b0a: $13
	inc  bc                                          ; $6b0b: $03
	inc  de                                          ; $6b0c: $13
	ld   bc, $2803                                   ; $6b0d: $01 $03 $28
	nop                                              ; $6b10: $00
	ld   bc, $d6d6                                   ; $6b11: $01 $d6 $d6
	rst  $38                                         ; $6b14: $ff
	rst  $38                                         ; $6b15: $ff
	ld   [hl], l                                     ; $6b16: $75
	sub  b                                           ; $6b17: $90
	sbc  [hl]                                        ; $6b18: $9e
	ld   [bc], a                                     ; $6b19: $02
	reti                                             ; $6b1a: $d9


	ld   [bc], a                                     ; $6b1b: $02
	ld   h, e                                        ; $6b1c: $63
	and  b                                           ; $6b1d: $a0
	inc  bc                                          ; $6b1e: $03
	add  b                                           ; $6b1f: $80
	ld   l, c                                        ; $6b20: $69
	ld   l, l                                        ; $6b21: $6d
	dec  c                                           ; $6b22: $0d
	ld   a, h                                        ; $6b23: $7c
	ld   a, l                                        ; $6b24: $7d
	sbc  [hl]                                        ; $6b25: $9e
	ld   [$5d00], sp                                 ; $6b26: $08 $00 $5d
	and  c                                           ; $6b29: $a1
	ld   e, d                                        ; $6b2a: $5a
	dec  c                                           ; $6b2b: $0d
	ld   e, d                                        ; $6b2c: $5a
	and  c                                           ; $6b2d: $a1
	ld   a, [hl]                                     ; $6b2e: $7e
	ld   [hl], c                                     ; $6b2f: $71
	ld   l, l                                        ; $6b30: $6d
	ld   e, c                                        ; $6b31: $59
	sub  a                                           ; $6b32: $97
	sub  [hl]                                        ; $6b33: $96
	sbc  a                                           ; $6b34: $9f
	dec  c                                           ; $6b35: $0d
	nop                                              ; $6b36: $00
	ld   a, [bc]                                     ; $6b37: $0a
	ld   bc, $9403                                   ; $6b38: $01 $03 $94
	ld   [bc], a                                     ; $6b3b: $02
	ld   hl, sp-$60                                  ; $6b3c: $f8 $a0
	sub  b                                           ; $6b3e: $90
	ld   l, a                                        ; $6b3f: $6f
	ld   a, b                                        ; $6b40: $78
	ld   h, e                                        ; $6b41: $63
	ld   d, d                                        ; $6b42: $52
	sbc  a                                           ; $6b43: $9f
	dec  c                                           ; $6b44: $0d
	ld   l, e                                        ; $6b45: $6b
	sbc  d                                           ; $6b46: $9a
	ld   h, [hl]                                     ; $6b47: $66
	sub  c                                           ; $6b48: $91
	sbc  a                                           ; $6b49: $9f
	dec  c                                           ; $6b4a: $0d
	nop                                              ; $6b4b: $00
	ld   a, [bc]                                     ; $6b4c: $0a
	dec  c                                           ; $6b4d: $0d
	nop                                              ; $6b4e: $00
	nop                                              ; $6b4f: $00
	rrca                                             ; $6b50: $0f
	nop                                              ; $6b51: $00
	ld   bc, $1e09                                   ; $6b52: $01 $09 $1e
	nop                                              ; $6b55: $00
	inc  c                                           ; $6b56: $0c
	ld   [bc], a                                     ; $6b57: $02
	ld   c, $31                                      ; $6b58: $0e $31
	rrca                                             ; $6b5a: $0f
	nop                                              ; $6b5b: $00
	ld   bc, $ff01                                   ; $6b5c: $01 $01 $ff
	rst  $38                                         ; $6b5f: $ff
	add  e                                           ; $6b60: $83
	ld   d, h                                        ; $6b61: $54
	rst  $38                                         ; $6b62: $ff
	rst  $38                                         ; $6b63: $ff
	dec  c                                           ; $6b64: $0d
	ld   [bc], a                                     ; $6b65: $02
	and  l                                           ; $6b66: $a5
	inc  b                                           ; $6b67: $04
	xor  d                                           ; $6b68: $aa
	ld   a, h                                        ; $6b69: $7c
	rst  ToBoot                                         ; $6b6a: $c7
	cp   d                                           ; $6b6b: $ba
	ret                                              ; $6b6c: $c9


	ld   a, l                                        ; $6b6d: $7d
	dec  c                                           ; $6b6e: $0d
	ld   e, e                                        ; $6b6f: $5b
	and  c                                           ; $6b70: $a1
	ld   l, a                                        ; $6b71: $6f
	sub  l                                           ; $6b72: $95
	ld   d, h                                        ; $6b73: $54
	ld   h, l                                        ; $6b74: $65
	ld   l, l                                        ; $6b75: $6d
	ld   a, b                                        ; $6b76: $78
	ld   d, b                                        ; $6b77: $50
	rst  $38                                         ; $6b78: $ff
	rst  $38                                         ; $6b79: $ff
	dec  c                                           ; $6b7a: $0d
	nop                                              ; $6b7b: $00
	ld   a, [bc]                                     ; $6b7c: $0a
	inc  e                                           ; $6b7d: $1c
	inc  b                                           ; $6b7e: $04
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	ld   bc, $7258                                   ; $6b81: $01 $58 $72
	ld   e, c                                        ; $6b84: $59
	sbc  d                                           ; $6b85: $9a
	ld   h, e                                        ; $6b86: $63
	adc  h                                           ; $6b87: $8c
	ld   [hl], c                                     ; $6b88: $71
	ld   a, [$0dfa]                                  ; $6b89: $fa $fa $0d
	ld   l, a                                        ; $6b8c: $6f
	ld   d, d                                        ; $6b8d: $52
	ld   [bc], a                                     ; $6b8e: $02
	inc  de                                          ; $6b8f: $13
	ld   l, a                                        ; $6b90: $6f
	sub  c                                           ; $6b91: $91
	and  c                                           ; $6b92: $a1
	ld   a, [$0dfa]                                  ; $6b93: $fa $fa $0d
	nop                                              ; $6b96: $00
	ld   a, [bc]                                     ; $6b97: $0a
	rrca                                             ; $6b98: $0f
	nop                                              ; $6b99: $00
	ld   bc, $5001                                   ; $6b9a: $01 $01 $50
	ld   [hl], c                                     ; $6b9d: $71
	sbc  [hl]                                        ; $6b9e: $9e
	and  e                                           ; $6b9f: $a3
	and  l                                           ; $6ba0: $a5
	db   $ec                                         ; $6ba1: $ec
	cp   d                                           ; $6ba2: $ba
	rst  $38                                         ; $6ba3: $ff
	dec  c                                           ; $6ba4: $0d
	nop                                              ; $6ba5: $00
	ld   a, [bc]                                     ; $6ba6: $0a
	inc  e                                           ; $6ba7: $1c
	inc  b                                           ; $6ba8: $04
	ld   bc, $0101                                   ; $6ba9: $01 $01 $01
	rst  ToBoot                                         ; $6bac: $c7
	cp   d                                           ; $6bad: $ba
	ret                                              ; $6bae: $c9


	sbc  [hl]                                        ; $6baf: $9e
	ld   d, d                                        ; $6bb0: $52
	ld   d, d                                        ; $6bb1: $52
	ld   e, a                                        ; $6bb2: $5f
	ld   [hl], c                                     ; $6bb3: $71
	ld   e, c                                        ; $6bb4: $59
	ld   l, [hl]                                     ; $6bb5: $6e
	ld   [hl], c                                     ; $6bb6: $71
	ld   l, l                                        ; $6bb7: $6d
	dec  c                                           ; $6bb8: $0d
	adc  l                                           ; $6bb9: $8d
	ld   l, l                                        ; $6bba: $6d
	ld   d, d                                        ; $6bbb: $52
	ld   l, [hl]                                     ; $6bbc: $6e
	ld   a, e                                        ; $6bbd: $7b
	ei                                               ; $6bbe: $fb
	sbc  a                                           ; $6bbf: $9f
	dec  c                                           ; $6bc0: $0d
	nop                                              ; $6bc1: $00
	ld   a, [bc]                                     ; $6bc2: $0a
	ld   bc, $a15a                                   ; $6bc3: $01 $5a $a1
	ld   a, [hl]                                     ; $6bc6: $7e
	ld   [hl], c                                     ; $6bc7: $71
	ld   l, l                                        ; $6bc8: $6d
	and  c                                           ; $6bc9: $a1
	ld   l, [hl]                                     ; $6bca: $6e
	ld   a, e                                        ; $6bcb: $7b
	ld   a, [$0dfa]                                  ; $6bcc: $fa $fa $0d
	ld   l, a                                        ; $6bcf: $6f
	ld   d, d                                        ; $6bd0: $52
	ld   [bc], a                                     ; $6bd1: $02
	inc  de                                          ; $6bd2: $13
	ld   l, a                                        ; $6bd3: $6f
	sub  c                                           ; $6bd4: $91
	and  c                                           ; $6bd5: $a1
	ld   a, [$0dfa]                                  ; $6bd6: $fa $fa $0d
	nop                                              ; $6bd9: $00
	ld   a, [bc]                                     ; $6bda: $0a
	rrca                                             ; $6bdb: $0f
	nop                                              ; $6bdc: $00
	ld   bc, $5001                                   ; $6bdd: $01 $01 $50
	sbc  b                                           ; $6be0: $98
	ld   e, d                                        ; $6be1: $5a
	halt                                             ; $6be2: $76
	ld   d, h                                        ; $6be3: $54
	sbc  [hl]                                        ; $6be4: $9e
	and  e                                           ; $6be5: $a3
	and  l                                           ; $6be6: $a5
	db   $ec                                         ; $6be7: $ec
	cp   d                                           ; $6be8: $ba
	sbc  a                                           ; $6be9: $9f
	dec  c                                           ; $6bea: $0d
	ld   h, c                                        ; $6beb: $61
	sbc  d                                           ; $6bec: $9a
	sub  b                                           ; $6bed: $90
	sbc  [hl]                                        ; $6bee: $9e
	and  e                                           ; $6bef: $a3
	and  l                                           ; $6bf0: $a5
	db   $ec                                         ; $6bf1: $ec
	cp   d                                           ; $6bf2: $ba
	ld   a, h                                        ; $6bf3: $7c
	inc  bc                                          ; $6bf4: $03
	ld   l, l                                        ; $6bf5: $6d
	dec  b                                           ; $6bf6: $05
	add  hl, de                                      ; $6bf7: $19
	ld   a, h                                        ; $6bf8: $7c
	dec  c                                           ; $6bf9: $0d
	ld   e, b                                        ; $6bfa: $58
	ld   e, c                                        ; $6bfb: $59
	ld   h, b                                        ; $6bfc: $60
	ld   l, [hl]                                     ; $6bfd: $6e
	sub  [hl]                                        ; $6bfe: $96
	sbc  a                                           ; $6bff: $9f
	dec  c                                           ; $6c00: $0d
	nop                                              ; $6c01: $00
	ld   a, [bc]                                     ; $6c02: $0a
	inc  e                                           ; $6c03: $1c
	inc  b                                           ; $6c04: $04
	dec  b                                           ; $6c05: $05
	dec  b                                           ; $6c06: $05
	dec  e                                           ; $6c07: $1d
	ld   b, b                                        ; $6c08: $40
	inc  d                                           ; $6c09: $14
	inc  bc                                          ; $6c0a: $03
	inc  d                                           ; $6c0b: $14
	ld   bc, $2803                                   ; $6c0c: $01 $03 $28
	nop                                              ; $6c0f: $00
	ld   bc, $d9a9                                   ; $6c10: $01 $a9 $d9
	reti                                             ; $6c13: $d9


	rst  $38                                         ; $6c14: $ff
	rst  $38                                         ; $6c15: $ff
	dec  c                                           ; $6c16: $0d
	ld   l, a                                        ; $6c17: $6f
	ld   d, d                                        ; $6c18: $52
	ld   [bc], a                                     ; $6c19: $02
	inc  de                                          ; $6c1a: $13
	ld   l, a                                        ; $6c1b: $6f
	sub  c                                           ; $6c1c: $91
	and  c                                           ; $6c1d: $a1
	ld   e, d                                        ; $6c1e: $5a
	sbc  [hl]                                        ; $6c1f: $9e
	ld   e, d                                        ; $6c20: $5a
	and  c                                           ; $6c21: $a1
	ld   a, [hl]                                     ; $6c22: $7e
	ld   [hl], c                                     ; $6c23: $71
	ld   l, l                                        ; $6c24: $6d
	dec  c                                           ; $6c25: $0d
	ld   e, c                                        ; $6c26: $59
	sub  a                                           ; $6c27: $97
	ld   l, [hl]                                     ; $6c28: $6e
	sub  [hl]                                        ; $6c29: $96
	ld   d, a                                        ; $6c2a: $57
	db   $fc                                         ; $6c2b: $fc
	sbc  a                                           ; $6c2c: $9f
	dec  c                                           ; $6c2d: $0d
	nop                                              ; $6c2e: $00
	ld   a, [bc]                                     ; $6c2f: $0a
	ld   bc, $9a6b                                   ; $6c30: $01 $6b $9a
	ld   h, [hl]                                     ; $6c33: $66
	sub  c                                           ; $6c34: $91
	rst  $38                                         ; $6c35: $ff
	rst  $38                                         ; $6c36: $ff
	dec  c                                           ; $6c37: $0d
	ld   h, c                                        ; $6c38: $61
	sbc  d                                           ; $6c39: $9a
	ld   e, c                                        ; $6c3a: $59
	sub  a                                           ; $6c3b: $97
	sub  b                                           ; $6c3c: $90
	sbc  [hl]                                        ; $6c3d: $9e
	ld   e, d                                        ; $6c3e: $5a
	and  c                                           ; $6c3f: $a1
	ld   a, [hl]                                     ; $6c40: $7e
	ld   [hl], c                                     ; $6c41: $71
	ld   [hl], h                                     ; $6c42: $74
	ld   a, e                                        ; $6c43: $7b
	ld   a, [$6f0d]                                  ; $6c44: $fa $0d $6f
	ld   d, d                                        ; $6c47: $52
	ld   [bc], a                                     ; $6c48: $02
	inc  de                                          ; $6c49: $13
	ld   l, a                                        ; $6c4a: $6f
	sub  c                                           ; $6c4b: $91
	and  c                                           ; $6c4c: $a1
	ld   a, [$0dfa]                                  ; $6c4d: $fa $fa $0d
	nop                                              ; $6c50: $00
	ld   a, [bc]                                     ; $6c51: $0a
	dec  c                                           ; $6c52: $0d
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	rrca                                             ; $6c55: $0f
	nop                                              ; $6c56: $00
	ld   bc, $1e09                                   ; $6c57: $01 $09 $1e
	nop                                              ; $6c5a: $00
	inc  c                                           ; $6c5b: $0c
	ld   [bc], a                                     ; $6c5c: $02
	ld   c, $3f                                      ; $6c5d: $0e $3f
	rrca                                             ; $6c5f: $0f
	nop                                              ; $6c60: $00
	ld   bc, $ff01                                   ; $6c61: $01 $01 $ff
	rst  $38                                         ; $6c64: $ff
	add  e                                           ; $6c65: $83
	ld   d, h                                        ; $6c66: $54
	rst  $38                                         ; $6c67: $ff
	rst  $38                                         ; $6c68: $ff
	dec  c                                           ; $6c69: $0d
	ld   [bc], a                                     ; $6c6a: $02
	and  l                                           ; $6c6b: $a5
	inc  b                                           ; $6c6c: $04
	xor  d                                           ; $6c6d: $aa
	ld   a, h                                        ; $6c6e: $7c
	rst  ToBoot                                         ; $6c6f: $c7
	cp   d                                           ; $6c70: $ba
	ret                                              ; $6c71: $c9


	ld   a, l                                        ; $6c72: $7d
	dec  c                                           ; $6c73: $0d
	ld   e, e                                        ; $6c74: $5b
	and  c                                           ; $6c75: $a1
	ld   l, a                                        ; $6c76: $6f
	sub  l                                           ; $6c77: $95
	ld   d, h                                        ; $6c78: $54
	ld   h, l                                        ; $6c79: $65
	ld   l, l                                        ; $6c7a: $6d
	ld   a, b                                        ; $6c7b: $78
	ld   d, b                                        ; $6c7c: $50
	rst  $38                                         ; $6c7d: $ff
	rst  $38                                         ; $6c7e: $ff
	dec  c                                           ; $6c7f: $0d
	nop                                              ; $6c80: $00
	ld   a, [bc]                                     ; $6c81: $0a
	inc  e                                           ; $6c82: $1c
	dec  b                                           ; $6c83: $05
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	ld   bc, $0458                                   ; $6c86: $01 $58 $04
	ld   a, e                                        ; $6c89: $7b
	sbc  d                                           ; $6c8a: $9a
	ld   h, e                                        ; $6c8b: $63
	and  c                                           ; $6c8c: $a1
	ld   [hl], l                                     ; $6c8d: $75
	ld   h, l                                        ; $6c8e: $65
	ld   l, l                                        ; $6c8f: $6d
	sbc  a                                           ; $6c90: $9f
	dec  c                                           ; $6c91: $0d
	ld   [$7d00], sp                                 ; $6c92: $08 $00 $7d
	and  c                                           ; $6c95: $a1
	sbc  a                                           ; $6c96: $9f
	dec  c                                           ; $6c97: $0d
	nop                                              ; $6c98: $00
	ld   a, [bc]                                     ; $6c99: $0a
	rrca                                             ; $6c9a: $0f
	nop                                              ; $6c9b: $00
	ld   bc, $5001                                   ; $6c9c: $01 $01 $50
	ld   [hl], c                                     ; $6c9f: $71
	sbc  [hl]                                        ; $6ca0: $9e
	ld   [bc], a                                     ; $6ca1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ca2: $cf
	dec  b                                           ; $6ca3: $05
	ld   a, [de]                                     ; $6ca4: $1a
	ld   h, e                                        ; $6ca5: $63
	and  c                                           ; $6ca6: $a1
	rst  $38                                         ; $6ca7: $ff
	rst  $38                                         ; $6ca8: $ff
	dec  c                                           ; $6ca9: $0d
	nop                                              ; $6caa: $00
	ld   a, [bc]                                     ; $6cab: $0a
	inc  e                                           ; $6cac: $1c
	dec  b                                           ; $6cad: $05
	ld   bc, $0101                                   ; $6cae: $01 $01 $01
	rst  ToBoot                                         ; $6cb1: $c7
	cp   d                                           ; $6cb2: $ba
	ret                                              ; $6cb3: $c9


	sbc  [hl]                                        ; $6cb4: $9e
	ld   d, [hl]                                     ; $6cb5: $56
	ld   d, [hl]                                     ; $6cb6: $56
	ld   [bc], a                                     ; $6cb7: $02
	reti                                             ; $6cb8: $d9


	ld   [bc], a                                     ; $6cb9: $02
	ld   h, e                                        ; $6cba: $63
	sub  d                                           ; $6cbb: $92
	ld   [hl], c                                     ; $6cbc: $71
	ld   l, l                                        ; $6cbd: $6d
	dec  c                                           ; $6cbe: $0d
	adc  l                                           ; $6cbf: $8d
	ld   l, l                                        ; $6cc0: $6d
	ld   d, d                                        ; $6cc1: $52
	sub  d                                           ; $6cc2: $92
	ld   a, b                                        ; $6cc3: $78
	ei                                               ; $6cc4: $fb
	sbc  a                                           ; $6cc5: $9f
	dec  c                                           ; $6cc6: $0d
	nop                                              ; $6cc7: $00
	ld   a, [bc]                                     ; $6cc8: $0a
	ld   bc, $5965                                   ; $6cc9: $01 $65 $59
	sub  b                                           ; $6ccc: $90
	sbc  [hl]                                        ; $6ccd: $9e
	and  a                                           ; $6cce: $a7
	jp   nz, EnqueueHDMATransfer                                   ; $6ccf: $c2 $7c $02

	jr   c, jr_050_6cd8                              ; $6cd2: $38 $04

	ld   d, d                                        ; $6cd4: $52
	ld   [hl], l                                     ; $6cd5: $75
	dec  c                                           ; $6cd6: $0d
	rst  ToBoot                                         ; $6cd7: $c7

jr_050_6cd8:
	cp   d                                           ; $6cd8: $ba
	ret                                              ; $6cd9: $c9


	ld   h, l                                        ; $6cda: $65
	ld   l, l                                        ; $6cdb: $6d
	and  c                                           ; $6cdc: $a1
	sub  d                                           ; $6cdd: $92
	ld   [hl], h                                     ; $6cde: $74
	ld   sp, hl                                      ; $6cdf: $f9
	dec  c                                           ; $6ce0: $0d
	inc  b                                           ; $6ce1: $04
	ld   c, $03                                      ; $6ce2: $0e $03
	sub  b                                           ; $6ce4: $90
	ld   a, l                                        ; $6ce5: $7d
	and  c                                           ; $6ce6: $a1
	ld   a, c                                        ; $6ce7: $79
	ld   [bc], a                                     ; $6ce8: $02
	jp   nz, Jump_050_6d52                           ; $6ce9: $c2 $52 $6d

	ld   [hl], l                                     ; $6cec: $75
	db   $fc                                         ; $6ced: $fc
	sbc  a                                           ; $6cee: $9f
	dec  c                                           ; $6cef: $0d
	nop                                              ; $6cf0: $00
	ld   a, [bc]                                     ; $6cf1: $0a
	rrca                                             ; $6cf2: $0f
	nop                                              ; $6cf3: $00
	ld   bc, $7d01                                   ; $6cf4: $01 $01 $7d
	ld   d, d                                        ; $6cf7: $52
	sbc  [hl]                                        ; $6cf8: $9e
	ld   d, b                                        ; $6cf9: $50
	sbc  b                                           ; $6cfa: $98
	ld   e, d                                        ; $6cfb: $5a
	halt                                             ; $6cfc: $76
	ld   d, h                                        ; $6cfd: $54
	ld   h, d                                        ; $6cfe: $62
	ld   h, h                                        ; $6cff: $64
	ld   d, d                                        ; $6d00: $52
	adc  h                                           ; $6d01: $8c
	ld   h, a                                        ; $6d02: $67
	ld   a, [$610d]                                  ; $6d03: $fa $0d $61
	sbc  d                                           ; $6d06: $9a
	sub  b                                           ; $6d07: $90
	sbc  [hl]                                        ; $6d08: $9e
	ld   [bc], a                                     ; $6d09: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d0a: $cf
	dec  b                                           ; $6d0b: $05
	ld   a, [de]                                     ; $6d0c: $1a
	ld   h, e                                        ; $6d0d: $63
	and  c                                           ; $6d0e: $a1
	ld   a, h                                        ; $6d0f: $7c
	inc  bc                                          ; $6d10: $03
	ld   l, l                                        ; $6d11: $6d
	dec  b                                           ; $6d12: $05
	add  hl, de                                      ; $6d13: $19
	ld   a, h                                        ; $6d14: $7c
	dec  c                                           ; $6d15: $0d
	ld   e, b                                        ; $6d16: $58
	ld   e, c                                        ; $6d17: $59
	ld   h, b                                        ; $6d18: $60
	ld   [hl], l                                     ; $6d19: $75
	ld   h, a                                        ; $6d1a: $67
	sub  [hl]                                        ; $6d1b: $96
	sbc  a                                           ; $6d1c: $9f
	dec  c                                           ; $6d1d: $0d
	nop                                              ; $6d1e: $00
	ld   a, [bc]                                     ; $6d1f: $0a
	rrca                                             ; $6d20: $0f
	dec  b                                           ; $6d21: $05
	ld   bc, $8c01                                   ; $6d22: $01 $01 $8c
	ld   l, l                                        ; $6d25: $6d
	adc  h                                           ; $6d26: $8c
	ld   l, l                                        ; $6d27: $6d
	db   $fc                                         ; $6d28: $fc
	sbc  a                                           ; $6d29: $9f
	dec  c                                           ; $6d2a: $0d
	ld   d, b                                        ; $6d2b: $50
	and  c                                           ; $6d2c: $a1
	adc  h                                           ; $6d2d: $8c
	inc  bc                                          ; $6d2e: $03
	and  b                                           ; $6d2f: $a0
	ld   l, a                                        ; $6d30: $6f
	inc  bc                                          ; $6d31: $03
	ld   h, l                                        ; $6d32: $65
	ld   h, b                                        ; $6d33: $60
	and  c                                           ; $6d34: $a1
	halt                                             ; $6d35: $76
	ld   d, d                                        ; $6d36: $52
	ld   [hl], h                                     ; $6d37: $74
	sub  d                                           ; $6d38: $92
	sbc  a                                           ; $6d39: $9f
	dec  c                                           ; $6d3a: $0d
	nop                                              ; $6d3b: $00
	ld   a, [bc]                                     ; $6d3c: $0a
	dec  e                                           ; $6d3d: $1d
	ld   b, b                                        ; $6d3e: $40
	dec  d                                           ; $6d3f: $15
	inc  bc                                          ; $6d40: $03
	dec  d                                           ; $6d41: $15
	ld   bc, $2803                                   ; $6d42: $01 $03 $28
	nop                                              ; $6d45: $00
	ld   bc, $ffff                                   ; $6d46: $01 $ff $ff
	ld   [hl], l                                     ; $6d49: $75
	sub  b                                           ; $6d4a: $90
	sbc  [hl]                                        ; $6d4b: $9e
	ld   d, [hl]                                     ; $6d4c: $56
	ld   d, [hl]                                     ; $6d4d: $56
	ld   [bc], a                                     ; $6d4e: $02
	reti                                             ; $6d4f: $d9


	ld   [bc], a                                     ; $6d50: $02
	ld   h, e                                        ; $6d51: $63

Jump_050_6d52:
	ld   e, d                                        ; $6d52: $5a
	inc  bc                                          ; $6d53: $03
	add  b                                           ; $6d54: $80
	ld   l, l                                        ; $6d55: $6d
	and  c                                           ; $6d56: $a1
	ld   a, l                                        ; $6d57: $7d
	dec  c                                           ; $6d58: $0d
	sub  d                                           ; $6d59: $92
	ld   [hl], c                                     ; $6d5a: $71
	ld   a, a                                        ; $6d5b: $7f
	sbc  b                                           ; $6d5c: $98
	ld   [$7d00], sp                                 ; $6d5d: $08 $00 $7d
	and  c                                           ; $6d60: $a1
	ld   e, d                                        ; $6d61: $5a
	dec  c                                           ; $6d62: $0d
	ld   e, d                                        ; $6d63: $5a
	and  c                                           ; $6d64: $a1
	ld   a, [hl]                                     ; $6d65: $7e
	ld   [hl], c                                     ; $6d66: $71
	ld   l, l                                        ; $6d67: $6d
	ld   e, c                                        ; $6d68: $59
	sub  a                                           ; $6d69: $97
	sub  d                                           ; $6d6a: $92
	sbc  a                                           ; $6d6b: $9f
	dec  c                                           ; $6d6c: $0d
	nop                                              ; $6d6d: $00
	ld   a, [bc]                                     ; $6d6e: $0a
	ld   bc, $7889                                   ; $6d6f: $01 $89 $78
	sbc  [hl]                                        ; $6d72: $9e
	ld   h, c                                        ; $6d73: $61
	sbc  d                                           ; $6d74: $9a
	ld   e, c                                        ; $6d75: $59
	sub  a                                           ; $6d76: $97
	sub  b                                           ; $6d77: $90
	sbc  [hl]                                        ; $6d78: $9e
	dec  c                                           ; $6d79: $0d
	ld   h, c                                        ; $6d7a: $61
	ld   a, h                                        ; $6d7b: $7c
	inc  bc                                          ; $6d7c: $03
	cp   $03                                         ; $6d7d: $fe $03
	add  [hl]                                        ; $6d7f: $86
	ld   [hl], l                                     ; $6d80: $75
	ld   e, d                                        ; $6d81: $5a
	and  c                                           ; $6d82: $a1
	ld   a, [hl]                                     ; $6d83: $7e
	ld   [hl], c                                     ; $6d84: $71
	ld   [hl], h                                     ; $6d85: $74
	ld   a, b                                        ; $6d86: $78
	sbc  a                                           ; $6d87: $9f
	dec  c                                           ; $6d88: $0d
	nop                                              ; $6d89: $00
	ld   a, [bc]                                     ; $6d8a: $0a
	dec  c                                           ; $6d8b: $0d
	nop                                              ; $6d8c: $00
	nop                                              ; $6d8d: $00
	rrca                                             ; $6d8e: $0f
	nop                                              ; $6d8f: $00
	ld   bc, $1e09                                   ; $6d90: $01 $09 $1e
	nop                                              ; $6d93: $00
	inc  c                                           ; $6d94: $0c
	ld   [bc], a                                     ; $6d95: $02
	ld   c, $9d                                      ; $6d96: $0e $9d
	rrca                                             ; $6d98: $0f
	nop                                              ; $6d99: $00
	ld   bc, $ff01                                   ; $6d9a: $01 $01 $ff
	rst  $38                                         ; $6d9d: $ff
	add  e                                           ; $6d9e: $83
	ld   d, h                                        ; $6d9f: $54
	rst  $38                                         ; $6da0: $ff
	rst  $38                                         ; $6da1: $ff
	dec  c                                           ; $6da2: $0d
	ld   [bc], a                                     ; $6da3: $02
	and  l                                           ; $6da4: $a5
	inc  b                                           ; $6da5: $04
	xor  d                                           ; $6da6: $aa
	ld   a, h                                        ; $6da7: $7c
	rst  ToBoot                                         ; $6da8: $c7
	cp   d                                           ; $6da9: $ba
	ret                                              ; $6daa: $c9


	ld   a, l                                        ; $6dab: $7d
	dec  c                                           ; $6dac: $0d
	ld   e, e                                        ; $6dad: $5b
	and  c                                           ; $6dae: $a1
	ld   l, a                                        ; $6daf: $6f
	sub  l                                           ; $6db0: $95
	ld   d, h                                        ; $6db1: $54
	ld   h, l                                        ; $6db2: $65
	ld   l, l                                        ; $6db3: $6d
	ld   a, b                                        ; $6db4: $78
	ld   d, b                                        ; $6db5: $50
	rst  $38                                         ; $6db6: $ff
	rst  $38                                         ; $6db7: $ff
	dec  c                                           ; $6db8: $0d
	nop                                              ; $6db9: $00
	ld   a, [bc]                                     ; $6dba: $0a
	inc  e                                           ; $6dbb: $1c
	ld   b, $00                                      ; $6dbc: $06 $00
	nop                                              ; $6dbe: $00
	ld   bc, $5896                                   ; $6dbf: $01 $96 $58
	ld   [hl], c                                     ; $6dc2: $71
	sbc  [hl]                                        ; $6dc3: $9e
	ld   [$fa00], sp                                 ; $6dc4: $08 $00 $fa
	ld   a, [$580d]                                  ; $6dc7: $fa $0d $58
	inc  b                                           ; $6dca: $04
	ld   a, e                                        ; $6dcb: $7b
	sbc  d                                           ; $6dcc: $9a
	ld   h, e                                        ; $6dcd: $63
	and  c                                           ; $6dce: $a1
	sbc  a                                           ; $6dcf: $9f
	dec  c                                           ; $6dd0: $0d
	nop                                              ; $6dd1: $00
	ld   a, [bc]                                     ; $6dd2: $0a
	rrca                                             ; $6dd3: $0f
	nop                                              ; $6dd4: $00
	ld   bc, $5001                                   ; $6dd5: $01 $01 $50
	ld   [hl], c                                     ; $6dd8: $71
	sbc  [hl]                                        ; $6dd9: $9e
	xor  h                                           ; $6dda: $ac
	push af                                          ; $6ddb: $f5
	bit  4, e                                        ; $6ddc: $cb $63
	and  c                                           ; $6dde: $a1
	rst  $38                                         ; $6ddf: $ff
	rst  $38                                         ; $6de0: $ff
	dec  c                                           ; $6de1: $0d
	nop                                              ; $6de2: $00
	ld   a, [bc]                                     ; $6de3: $0a
	inc  e                                           ; $6de4: $1c
	ld   b, $07                                      ; $6de5: $06 $07
	rlca                                             ; $6de7: $07
	ld   bc, $bac7                                   ; $6de8: $01 $c7 $ba
	ret                                              ; $6deb: $c9


	sbc  [hl]                                        ; $6dec: $9e
	ld   d, d                                        ; $6ded: $52
	ld   d, d                                        ; $6dee: $52
	ld   [bc], a                                     ; $6def: $02
	reti                                             ; $6df0: $d9


	ld   [bc], a                                     ; $6df1: $02
	ld   h, e                                        ; $6df2: $63
	ld   l, [hl]                                     ; $6df3: $6e
	ld   [hl], c                                     ; $6df4: $71
	ld   l, l                                        ; $6df5: $6d
	dec  c                                           ; $6df6: $0d
	adc  l                                           ; $6df7: $8d
	ld   l, l                                        ; $6df8: $6d
	ld   d, d                                        ; $6df9: $52
	ld   h, [hl]                                     ; $6dfa: $66
	sub  c                                           ; $6dfb: $91
	ld   a, e                                        ; $6dfc: $7b
	ld   d, [hl]                                     ; $6dfd: $56
	ld   e, c                                        ; $6dfe: $59
	sbc  a                                           ; $6dff: $9f
	dec  c                                           ; $6e00: $0d
	nop                                              ; $6e01: $00
	ld   a, [bc]                                     ; $6e02: $0a
	inc  e                                           ; $6e03: $1c
	ld   b, $01                                      ; $6e04: $06 $01
	ld   bc, $6501                                   ; $6e06: $01 $01 $65
	ld   e, c                                        ; $6e09: $59
	sub  b                                           ; $6e0a: $90
	sbc  [hl]                                        ; $6e0b: $9e
	ld   d, b                                        ; $6e0c: $50
	ld   l, l                                        ; $6e0d: $6d
	ld   d, d                                        ; $6e0e: $52
	ld   a, h                                        ; $6e0f: $7c
	ld   [bc], a                                     ; $6e10: $02
	jr   c, jr_050_6e17                              ; $6e11: $38 $04

	ld   d, d                                        ; $6e13: $52
	ld   [hl], l                                     ; $6e14: $75
	dec  c                                           ; $6e15: $0d
	rst  ToBoot                                         ; $6e16: $c7

jr_050_6e17:
	cp   d                                           ; $6e17: $ba
	ret                                              ; $6e18: $c9


	ld   h, l                                        ; $6e19: $65
	ld   l, l                                        ; $6e1a: $6d
	and  c                                           ; $6e1b: $a1
	ld   l, [hl]                                     ; $6e1c: $6e
	ld   [hl], c                                     ; $6e1d: $71
	ld   [hl], h                                     ; $6e1e: $74
	ld   sp, hl                                      ; $6e1f: $f9
	dec  c                                           ; $6e20: $0d
	inc  b                                           ; $6e21: $04
	ld   a, [bc]                                     ; $6e22: $0a
	inc  bc                                          ; $6e23: $03
	jp   nc, $0279                                   ; $6e24: $d2 $79 $02

	jp   nz, Jump_050_6d52                           ; $6e27: $c2 $52 $6d

	ld   l, d                                        ; $6e2a: $6a
	sbc  a                                           ; $6e2b: $9f
	dec  c                                           ; $6e2c: $0d
	nop                                              ; $6e2d: $00
	ld   a, [bc]                                     ; $6e2e: $0a
	rrca                                             ; $6e2f: $0f
	nop                                              ; $6e30: $00
	ld   bc, $7d01                                   ; $6e31: $01 $01 $7d
	ld   d, d                                        ; $6e34: $52
	sbc  [hl]                                        ; $6e35: $9e
	ld   d, b                                        ; $6e36: $50
	sbc  b                                           ; $6e37: $98
	ld   e, d                                        ; $6e38: $5a
	halt                                             ; $6e39: $76
	ld   d, h                                        ; $6e3a: $54
	ld   h, d                                        ; $6e3b: $62
	ld   h, h                                        ; $6e3c: $64
	ld   d, d                                        ; $6e3d: $52
	adc  h                                           ; $6e3e: $8c
	ld   h, a                                        ; $6e3f: $67
	ld   a, [$610d]                                  ; $6e40: $fa $0d $61
	sbc  d                                           ; $6e43: $9a
	sub  b                                           ; $6e44: $90
	xor  h                                           ; $6e45: $ac
	push af                                          ; $6e46: $f5
	bit  4, e                                        ; $6e47: $cb $63
	and  c                                           ; $6e49: $a1
	ld   a, h                                        ; $6e4a: $7c
	inc  bc                                          ; $6e4b: $03
	ld   l, l                                        ; $6e4c: $6d
	dec  b                                           ; $6e4d: $05
	add  hl, de                                      ; $6e4e: $19
	ld   a, h                                        ; $6e4f: $7c
	dec  c                                           ; $6e50: $0d
	ld   e, b                                        ; $6e51: $58
	ld   e, c                                        ; $6e52: $59
	ld   h, b                                        ; $6e53: $60
	ld   [hl], l                                     ; $6e54: $75
	ld   h, a                                        ; $6e55: $67
	sbc  a                                           ; $6e56: $9f
	dec  c                                           ; $6e57: $0d
	nop                                              ; $6e58: $00
	ld   a, [bc]                                     ; $6e59: $0a
	inc  e                                           ; $6e5a: $1c
	ld   b, $04                                      ; $6e5b: $06 $04
	inc  b                                           ; $6e5d: $04
	dec  e                                           ; $6e5e: $1d
	ld   b, b                                        ; $6e5f: $40
	ld   d, $03                                      ; $6e60: $16 $03
	ld   d, $01                                      ; $6e62: $16 $01
	inc  bc                                          ; $6e64: $03
	jr   z, jr_050_6e67                              ; $6e65: $28 $00

jr_050_6e67:
	ld   bc, $8686                                   ; $6e67: $01 $86 $86
	rst  $38                                         ; $6e6a: $ff
	rst  $38                                         ; $6e6b: $ff
	ld   d, h                                        ; $6e6c: $54
	sbc  d                                           ; $6e6d: $9a
	ld   h, l                                        ; $6e6e: $65
	ld   d, d                                        ; $6e6f: $52
	ld   h, c                                        ; $6e70: $61
	halt                                             ; $6e71: $76
	ld   [bc], a                                     ; $6e72: $02
	sbc  l                                           ; $6e73: $9d
	ld   [hl], c                                     ; $6e74: $71
	ld   [hl], h                                     ; $6e75: $74
	dec  c                                           ; $6e76: $0d
	ld   e, l                                        ; $6e77: $5d
	sbc  d                                           ; $6e78: $9a
	sbc  c                                           ; $6e79: $99
	ld   h, [hl]                                     ; $6e7a: $66
	sub  c                                           ; $6e7b: $91
	ld   a, e                                        ; $6e7c: $7b
	ld   d, [hl]                                     ; $6e7d: $56
	ld   e, c                                        ; $6e7e: $59
	sbc  a                                           ; $6e7f: $9f
	dec  c                                           ; $6e80: $0d
	nop                                              ; $6e81: $00
	ld   a, [bc]                                     ; $6e82: $0a
	inc  e                                           ; $6e83: $1c
	ld   b, $01                                      ; $6e84: $06 $01
	ld   bc, $7501                                   ; $6e86: $01 $01 $75
	sub  b                                           ; $6e89: $90
	ld   a, b                                        ; $6e8a: $78
	rst  $38                                         ; $6e8b: $ff
	rst  $38                                         ; $6e8c: $ff
	ld   e, b                                        ; $6e8d: $58
	inc  bc                                          ; $6e8e: $03
	ld   c, a                                        ; $6e8f: $4f
	ld   a, h                                        ; $6e90: $7c
	ld   e, d                                        ; $6e91: $5a
	and  c                                           ; $6e92: $a1
	ld   a, [hl]                                     ; $6e93: $7e
	sbc  b                                           ; $6e94: $98
	dec  c                                           ; $6e95: $0d
	ld   l, [hl]                                     ; $6e96: $6e
	ld   [hl], c                                     ; $6e97: $71
	ld   [hl], h                                     ; $6e98: $74
	sbc  [hl]                                        ; $6e99: $9e
	ld   d, b                                        ; $6e9a: $50
	ld   l, l                                        ; $6e9b: $6d
	ld   d, d                                        ; $6e9c: $52
	ld   a, l                                        ; $6e9d: $7d
	ld   l, a                                        ; $6e9e: $6f
	sub  c                                           ; $6e9f: $91
	and  c                                           ; $6ea0: $a1
	halt                                             ; $6ea1: $76
	dec  c                                           ; $6ea2: $0d
	inc  b                                           ; $6ea3: $04
	ld   d, a                                        ; $6ea4: $57
	dec  b                                           ; $6ea5: $05
	add  hl, hl                                      ; $6ea6: $29
	ld   h, l                                        ; $6ea7: $65
	ld   [hl], h                                     ; $6ea8: $74
	sbc  c                                           ; $6ea9: $99
	ld   l, d                                        ; $6eaa: $6a
	sbc  a                                           ; $6eab: $9f
	dec  c                                           ; $6eac: $0d
	nop                                              ; $6ead: $00
	ld   a, [bc]                                     ; $6eae: $0a
	ld   bc, $9a6b                                   ; $6eaf: $01 $6b $9a
	ld   h, [hl]                                     ; $6eb2: $66
	sub  c                                           ; $6eb3: $91
	sbc  [hl]                                        ; $6eb4: $9e
	ld   h, c                                        ; $6eb5: $61
	sbc  d                                           ; $6eb6: $9a
	ld   e, c                                        ; $6eb7: $59
	sub  a                                           ; $6eb8: $97
	sub  b                                           ; $6eb9: $90
	dec  c                                           ; $6eba: $0d
	ld   h, c                                        ; $6ebb: $61
	ld   a, h                                        ; $6ebc: $7c
	inc  bc                                          ; $6ebd: $03
	cp   $03                                         ; $6ebe: $fe $03
	add  [hl]                                        ; $6ec0: $86
	ld   [hl], l                                     ; $6ec1: $75
	ld   e, d                                        ; $6ec2: $5a
	and  c                                           ; $6ec3: $a1
	ld   a, [hl]                                     ; $6ec4: $7e
	sbc  d                                           ; $6ec5: $9a
	sub  [hl]                                        ; $6ec6: $96
	ld   a, [$0dfa]                                  ; $6ec7: $fa $fa $0d
	nop                                              ; $6eca: $00
	ld   a, [bc]                                     ; $6ecb: $0a
	dec  c                                           ; $6ecc: $0d
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	rrca                                             ; $6ecf: $0f
	nop                                              ; $6ed0: $00
	ld   bc, $1e09                                   ; $6ed1: $01 $09 $1e
	nop                                              ; $6ed4: $00
	nop                                              ; $6ed5: $00
	inc  b                                           ; $6ed6: $04
	add  b                                           ; $6ed7: $80
	ld   h, a                                        ; $6ed8: $67
	ld   bc, $20ff                                   ; $6ed9: $01 $ff $20
	inc  bc                                          ; $6edc: $03
	ld   l, l                                        ; $6edd: $6d
	ld   [bc], a                                     ; $6ede: $02
	nop                                              ; $6edf: $00
	jr   nz, jr_050_6efe                             ; $6ee0: $20 $1c

	nop                                              ; $6ee2: $00
	ld   c, $02                                      ; $6ee3: $0e $02
	rrca                                             ; $6ee5: $0f
	nop                                              ; $6ee6: $00
	ld   bc, $0102                                   ; $6ee7: $01 $02 $01
	ld   l, e                                        ; $6eea: $6b
	sbc  e                                           ; $6eeb: $9b
	ld   l, e                                        ; $6eec: $6b
	sbc  e                                           ; $6eed: $9b
	ld   [bc], a                                     ; $6eee: $02
	sub  l                                           ; $6eef: $95
	ld   [bc], a                                     ; $6ef0: $02
	sub  e                                           ; $6ef1: $93
	sbc  b                                           ; $6ef2: $98
	ld   a, h                                        ; $6ef3: $7c
	inc  bc                                          ; $6ef4: $03
	ld   l, a                                        ; $6ef5: $6f
	ld   [bc], a                                     ; $6ef6: $02
	xor  c                                           ; $6ef7: $a9
	ld   l, [hl]                                     ; $6ef8: $6e
	ld   a, b                                        ; $6ef9: $78
	rst  $38                                         ; $6efa: $ff
	rst  $38                                         ; $6efb: $ff
	dec  c                                           ; $6efc: $0d
	nop                                              ; $6efd: $00

jr_050_6efe:
	ld   a, [bc]                                     ; $6efe: $0a
	inc  d                                           ; $6eff: $14
	ld   b, $01                                      ; $6f00: $06 $01
	rrca                                             ; $6f02: $0f
	inc  bc                                          ; $6f03: $03
	ld   [bc], a                                     ; $6f04: $02
	ld   bc, $0008                                   ; $6f05: $01 $08 $00
	ld   e, l                                        ; $6f08: $5d
	and  c                                           ; $6f09: $a1
	sbc  [hl]                                        ; $6f0a: $9e
	inc  b                                           ; $6f0b: $04
	ld   b, l                                        ; $6f0c: $45
	sbc  c                                           ; $6f0d: $99
	sbc  l                                           ; $6f0e: $9d
	sub  [hl]                                        ; $6f0f: $96
	sbc  a                                           ; $6f10: $9f
	dec  c                                           ; $6f11: $0d
	nop                                              ; $6f12: $00
	ld   a, [bc]                                     ; $6f13: $0a
	inc  d                                           ; $6f14: $14
	ld   a, [bc]                                     ; $6f15: $0a
	ld   bc, $031c                                   ; $6f16: $01 $1c $03
	ld   [bc], a                                     ; $6f19: $02
	ld   [bc], a                                     ; $6f1a: $02
	ld   bc, $ad04                                   ; $6f1b: $01 $04 $ad
	ld   [bc], a                                     ; $6f1e: $02
	xor  c                                           ; $6f1f: $a9
	sub  b                                           ; $6f20: $90
	ld   [bc], a                                     ; $6f21: $02
	sbc  l                                           ; $6f22: $9d
	ld   [hl], c                                     ; $6f23: $71
	ld   l, l                                        ; $6f24: $6d
	ld   e, a                                        ; $6f25: $5f
	ld   [hl], a                                     ; $6f26: $77
	dec  c                                           ; $6f27: $0d
	ld   d, b                                        ; $6f28: $50
	ld   a, b                                        ; $6f29: $78
	ld   l, l                                        ; $6f2a: $6d
	sbc  [hl]                                        ; $6f2b: $9e
	ld   l, a                                        ; $6f2c: $6f
	sub  l                                           ; $6f2d: $95
	ld   [hl], c                                     ; $6f2e: $71
	halt                                             ; $6f2f: $76
	ld   e, c                                        ; $6f30: $59
	and  c                                           ; $6f31: $a1
	ld   [bc], a                                     ; $6f32: $02
	inc  d                                           ; $6f33: $14
	ld   d, d                                        ; $6f34: $52
	and  b                                           ; $6f35: $a0
	dec  c                                           ; $6f36: $0d
	ld   h, l                                        ; $6f37: $65
	ld   [hl], h                                     ; $6f38: $74
	sbc  c                                           ; $6f39: $99
	and  c                                           ; $6f3a: $a1
	ld   h, [hl]                                     ; $6f3b: $66
	sub  c                                           ; $6f3c: $91
	ld   a, b                                        ; $6f3d: $78
	ld   d, d                                        ; $6f3e: $52
	ld   e, c                                        ; $6f3f: $59
	ld   h, l                                        ; $6f40: $65
	sub  a                                           ; $6f41: $97
	ld   sp, hl                                      ; $6f42: $f9
	dec  c                                           ; $6f43: $0d
	nop                                              ; $6f44: $00
	ld   a, [bc]                                     ; $6f45: $0a
	ld   bc, $7850                                   ; $6f46: $01 $50 $78
	ld   l, l                                        ; $6f49: $6d
	ld   a, l                                        ; $6f4a: $7d
	ld   h, c                                        ; $6f4b: $61
	ld   h, c                                        ; $6f4c: $61
	add  [hl]                                        ; $6f4d: $86
	inc  b                                           ; $6f4e: $04
	dec  c                                           ; $6f4f: $0d
	ld   [bc], a                                     ; $6f50: $02
	sub  [hl]                                        ; $6f51: $96
	inc  b                                           ; $6f52: $04
	ld   b, l                                        ; $6f53: $45
	inc  b                                           ; $6f54: $04
	ld   a, [bc]                                     ; $6f55: $0a
	ld   a, c                                        ; $6f56: $79
	dec  c                                           ; $6f57: $0d
	dec  b                                           ; $6f58: $05
	db   $10                                         ; $6f59: $10
	ld   l, l                                        ; $6f5a: $6d
	sbc  l                                           ; $6f5b: $9d
	ld   e, a                                        ; $6f5c: $5f
	ld   [hl], l                                     ; $6f5d: $75
	sbc  [hl]                                        ; $6f5e: $9e
	ld   d, b                                        ; $6f5f: $50
	ld   l, e                                        ; $6f60: $6b
	add  c                                           ; $6f61: $81
	ld   a, c                                        ; $6f62: $79
	dec  b                                           ; $6f63: $05
	db   $10                                         ; $6f64: $10
	ld   l, l                                        ; $6f65: $6d
	sbc  l                                           ; $6f66: $9d
	ld   e, a                                        ; $6f67: $5f
	dec  c                                           ; $6f68: $0d
	ld   h, [hl]                                     ; $6f69: $66
	sub  c                                           ; $6f6a: $91
	ld   a, b                                        ; $6f6b: $78
	ld   d, d                                        ; $6f6c: $52
	ld   a, h                                        ; $6f6d: $7c
	sub  [hl]                                        ; $6f6e: $96
	sbc  a                                           ; $6f6f: $9f
	dec  c                                           ; $6f70: $0d
	nop                                              ; $6f71: $00
	ld   a, [bc]                                     ; $6f72: $0a
	ld   bc, $2002                                   ; $6f73: $01 $02 $20
	inc  b                                           ; $6f76: $04
	dec  c                                           ; $6f77: $0d
	inc  b                                           ; $6f78: $04
	ld   c, c                                        ; $6f79: $49
	and  b                                           ; $6f7a: $a0
	ld   [bc], a                                     ; $6f7b: $02
	ld   h, l                                        ; $6f7c: $65
	ld   d, [hl]                                     ; $6f7d: $56
	ld   [hl], h                                     ; $6f7e: $74
	sbc  c                                           ; $6f7f: $99
	ld   a, h                                        ; $6f80: $7c
	ld   sp, hl                                      ; $6f81: $f9
	dec  c                                           ; $6f82: $0d
	nop                                              ; $6f83: $00
	ld   a, [bc]                                     ; $6f84: $0a
	add  hl, de                                      ; $6f85: $19
	dec  b                                           ; $6f86: $05
	ld   [bc], a                                     ; $6f87: $02
	inc  bc                                          ; $6f88: $03
	ld   l, [hl]                                     ; $6f89: $6e
	ld   a, h                                        ; $6f8a: $7c
	inc  bc                                          ; $6f8b: $03
	add  [hl]                                        ; $6f8c: $86
	ld   a, h                                        ; $6f8d: $7c
	ld   h, c                                        ; $6f8e: $61
	halt                                             ; $6f8f: $76
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	inc  bc                                          ; $6f92: $03
	ld   h, h                                        ; $6f93: $64
	dec  b                                           ; $6f94: $05
	db   $10                                         ; $6f95: $10
	ld   a, h                                        ; $6f96: $7c
	ld   h, c                                        ; $6f97: $61
	halt                                             ; $6f98: $76
	nop                                              ; $6f99: $00
	ld   bc, $cd07                                   ; $6f9a: $01 $07 $cd
	nop                                              ; $6f9d: $00
	ld   [bc], a                                     ; $6f9e: $02
	inc  bc                                          ; $6f9f: $03
	ld   bc, $2000                                   ; $6fa0: $01 $00 $20
	nop                                              ; $6fa3: $00
	rlca                                             ; $6fa4: $07
	ei                                               ; $6fa5: $fb
	nop                                              ; $6fa6: $00
	ld   [bc], a                                     ; $6fa7: $02
	inc  bc                                          ; $6fa8: $03
	ld   bc, $2001                                   ; $6fa9: $01 $01 $20
	nop                                              ; $6fac: $00
	ld   b, $3c                                      ; $6fad: $06 $3c
	ld   bc, $000f                                   ; $6faf: $01 $0f $00
	ld   bc, $0301                                   ; $6fb2: $01 $01 $03
	ld   l, [hl]                                     ; $6fb5: $6e
	ld   a, h                                        ; $6fb6: $7c
	inc  bc                                          ; $6fb7: $03
	add  [hl]                                        ; $6fb8: $86
	ld   a, h                                        ; $6fb9: $7c
	ld   h, c                                        ; $6fba: $61
	halt                                             ; $6fbb: $76
	ld   [hl], l                                     ; $6fbc: $75
	ld   h, a                                        ; $6fbd: $67
	sbc  a                                           ; $6fbe: $9f
	dec  c                                           ; $6fbf: $0d
	nop                                              ; $6fc0: $00
	ld   a, [bc]                                     ; $6fc1: $0a
	inc  e                                           ; $6fc2: $1c
	inc  bc                                          ; $6fc3: $03
	ld   b, $06                                      ; $6fc4: $06 $06
	dec  e                                           ; $6fc6: $1d
	ld   b, b                                        ; $6fc7: $40
	inc  de                                          ; $6fc8: $13
	inc  bc                                          ; $6fc9: $03
	inc  de                                          ; $6fca: $13
	ld   bc, $2902                                   ; $6fcb: $01 $02 $29
	nop                                              ; $6fce: $00
	ld   bc, $6483                                   ; $6fcf: $01 $83 $64
	ld   e, a                                        ; $6fd2: $5f
	ld   a, b                                        ; $6fd3: $78
	ld   d, d                                        ; $6fd4: $52
	ld   [hl], l                                     ; $6fd5: $75
	rst  $38                                         ; $6fd6: $ff
	rst  $38                                         ; $6fd7: $ff
	dec  c                                           ; $6fd8: $0d
	nop                                              ; $6fd9: $00
	ld   a, [bc]                                     ; $6fda: $0a
	ld   b, $60                                      ; $6fdb: $06 $60
	ld   bc, $000f                                   ; $6fdd: $01 $0f $00
	ld   bc, $0301                                   ; $6fe0: $01 $01 $03
	ld   h, h                                        ; $6fe3: $64
	dec  b                                           ; $6fe4: $05
	db   $10                                         ; $6fe5: $10
	ld   a, h                                        ; $6fe6: $7c
	ld   h, c                                        ; $6fe7: $61
	halt                                             ; $6fe8: $76
	ld   [hl], l                                     ; $6fe9: $75
	ld   h, a                                        ; $6fea: $67
	rst  $38                                         ; $6feb: $ff
	rst  $38                                         ; $6fec: $ff
	dec  c                                           ; $6fed: $0d
	inc  bc                                          ; $6fee: $03
	sub  h                                           ; $6fef: $94
	inc  b                                           ; $6ff0: $04
	sbc  [hl]                                        ; $6ff1: $9e
	ld   e, d                                        ; $6ff2: $5a
	sbc  [hl]                                        ; $6ff3: $9e
	ld   h, c                                        ; $6ff4: $61
	ld   a, h                                        ; $6ff5: $7c
	inc  bc                                          ; $6ff6: $03
	dec  c                                           ; $6ff7: $0d
	ld   [bc], a                                     ; $6ff8: $02
	jp   $0d79                                       ; $6ff9: $c3 $79 $0d


	adc  [hl]                                        ; $6ffc: $8e
	ld   d, d                                        ; $6ffd: $52
	ld   [hl], h                                     ; $6ffe: $74
	ld   d, d                                        ; $6fff: $52
	sbc  c                                           ; $7000: $99
	ld   e, c                                        ; $7001: $59
	ld   [hl], a                                     ; $7002: $77
	ld   d, h                                        ; $7003: $54
	ld   e, c                                        ; $7004: $59
	rst  $38                                         ; $7005: $ff
	rst  $38                                         ; $7006: $ff
	dec  c                                           ; $7007: $0d
	nop                                              ; $7008: $00
	ld   a, [bc]                                     ; $7009: $0a
	inc  e                                           ; $700a: $1c
	inc  bc                                          ; $700b: $03
	inc  b                                           ; $700c: $04
	inc  b                                           ; $700d: $04
	ld   bc, $546b                                   ; $700e: $01 $6b $54
	rst  $38                                         ; $7011: $ff
	rst  $38                                         ; $7012: $ff
	ld   a, b                                        ; $7013: $78
	sub  a                                           ; $7014: $97
	ld   d, d                                        ; $7015: $52
	ld   d, d                                        ; $7016: $52
	sbc  l                                           ; $7017: $9d
	sbc  a                                           ; $7018: $9f
	dec  c                                           ; $7019: $0d
	nop                                              ; $701a: $00
	ld   a, [bc]                                     ; $701b: $0a
	ld   b, $60                                      ; $701c: $06 $60
	ld   bc, $031c                                   ; $701e: $01 $1c $03
	ld   b, $06                                      ; $7021: $06 $06
	dec  e                                           ; $7023: $1d
	ld   b, b                                        ; $7024: $40
	inc  de                                          ; $7025: $13
	inc  bc                                          ; $7026: $03
	inc  de                                          ; $7027: $13
	ld   bc, $2903                                   ; $7028: $01 $03 $29
	nop                                              ; $702b: $00
	ld   bc, $8c6e                                   ; $702c: $01 $6e $8c
	ld   [hl], c                                     ; $702f: $71
	ld   [hl], h                                     ; $7030: $74
	ld   d, d                                        ; $7031: $52
	ld   [hl], h                                     ; $7032: $74
	ld   a, l                                        ; $7033: $7d
	dec  c                                           ; $7034: $0d
	inc  b                                           ; $7035: $04
	sbc  [hl]                                        ; $7036: $9e
	ld   e, c                                        ; $7037: $59
	sub  a                                           ; $7038: $97
	ld   a, b                                        ; $7039: $78
	ld   d, d                                        ; $703a: $52
	ld   [hl], l                                     ; $703b: $75
	ld   h, l                                        ; $703c: $65
	sub  l                                           ; $703d: $95
	ld   d, h                                        ; $703e: $54
	ld   a, [$000d]                                  ; $703f: $fa $0d $00
	ld   a, [bc]                                     ; $7042: $0a
	ld   bc, $a502                                   ; $7043: $01 $02 $a5
	ld   [bc], a                                     ; $7046: $02
	xor  d                                           ; $7047: $aa
	sbc  [hl]                                        ; $7048: $9e
	ld   [hl], a                                     ; $7049: $77
	ld   d, h                                        ; $704a: $54
	ld   h, a                                        ; $704b: $67
	sbc  c                                           ; $704c: $99
	ld   [hl], d                                     ; $704d: $72
	sub  b                                           ; $704e: $90
	sbc  b                                           ; $704f: $98
	ld   a, b                                        ; $7050: $78
	ld   a, h                                        ; $7051: $7c
	ld   sp, hl                                      ; $7052: $f9
	dec  c                                           ; $7053: $0d
	nop                                              ; $7054: $00
	ld   a, [bc]                                     ; $7055: $0a
	add  hl, de                                      ; $7056: $19
	dec  b                                           ; $7057: $05
	ld   [bc], a                                     ; $7058: $02
	inc  bc                                          ; $7059: $03
	ld   l, [hl]                                     ; $705a: $6e
	ld   a, h                                        ; $705b: $7c
	inc  bc                                          ; $705c: $03
	add  [hl]                                        ; $705d: $86
	halt                                             ; $705e: $76
	inc  b                                           ; $705f: $04
	ld   b, c                                        ; $7060: $41
	dec  b                                           ; $7061: $05
	dec  d                                           ; $7062: $15
	ld   e, l                                        ; $7063: $5d
	ld   a, b                                        ; $7064: $78
	sbc  c                                           ; $7065: $99
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	inc  bc                                          ; $7068: $03
	ld   l, l                                        ; $7069: $6d
	dec  b                                           ; $706a: $05
	add  hl, de                                      ; $706b: $19
	ld   a, c                                        ; $706c: $79
	ld   a, l                                        ; $706d: $7d
	ld   h, b                                        ; $706e: $60
	adc  [hl]                                        ; $706f: $8e
	nop                                              ; $7070: $00
	ld   bc, $a407                                   ; $7071: $01 $07 $a4
	ld   bc, $0302                                   ; $7074: $01 $02 $03
	ld   bc, $2000                                   ; $7077: $01 $00 $20
	nop                                              ; $707a: $00
	rlca                                             ; $707b: $07
	push hl                                          ; $707c: $e5
	ld   bc, $0302                                   ; $707d: $01 $02 $03
	ld   bc, $2001                                   ; $7080: $01 $01 $20
	nop                                              ; $7083: $00
	ld   b, $25                                      ; $7084: $06 $25
	ld   [bc], a                                     ; $7086: $02
	rrca                                             ; $7087: $0f
	nop                                              ; $7088: $00
	ld   bc, $0301                                   ; $7089: $01 $01 $03
	ld   l, [hl]                                     ; $708c: $6e
	ld   a, h                                        ; $708d: $7c
	inc  bc                                          ; $708e: $03
	add  [hl]                                        ; $708f: $86
	halt                                             ; $7090: $76
	inc  b                                           ; $7091: $04
	ld   b, c                                        ; $7092: $41
	dec  b                                           ; $7093: $05
	dec  d                                           ; $7094: $15
	ld   e, l                                        ; $7095: $5d
	ld   a, b                                        ; $7096: $78
	sbc  d                                           ; $7097: $9a
	sbc  c                                           ; $7098: $99
	sub  [hl]                                        ; $7099: $96
	ld   d, h                                        ; $709a: $54
	dec  c                                           ; $709b: $0d
	ld   e, d                                        ; $709c: $5a
	and  c                                           ; $709d: $a1
	ld   a, [hl]                                     ; $709e: $7e
	sbc  b                                           ; $709f: $98
	adc  h                                           ; $70a0: $8c
	ld   h, a                                        ; $70a1: $67
	ld   a, [$000d]                                  ; $70a2: $fa $0d $00
	ld   a, [bc]                                     ; $70a5: $0a
	inc  e                                           ; $70a6: $1c
	inc  bc                                          ; $70a7: $03
	ld   b, $06                                      ; $70a8: $06 $06
	dec  e                                           ; $70aa: $1d
	ld   b, b                                        ; $70ab: $40
	inc  de                                          ; $70ac: $13
	inc  bc                                          ; $70ad: $03
	inc  de                                          ; $70ae: $13
	ld   bc, $2903                                   ; $70af: $01 $03 $29
	nop                                              ; $70b2: $00
	ld   bc, $4204                                   ; $70b3: $01 $04 $42
	ld   [bc], a                                     ; $70b6: $02
	sbc  l                                           ; $70b7: $9d
	ld   a, l                                        ; $70b8: $7d
	sub  d                                           ; $70b9: $92
	adc  a                                           ; $70ba: $8f
	ld   [hl], h                                     ; $70bb: $74
	ld   l, a                                        ; $70bc: $6f
	sub  l                                           ; $70bd: $95
	ld   d, h                                        ; $70be: $54
	ld   l, [hl]                                     ; $70bf: $6e
	ld   d, d                                        ; $70c0: $52
	ld   a, [$000d]                                  ; $70c1: $fa $0d $00
	ld   a, [bc]                                     ; $70c4: $0a
	ld   b, $42                                      ; $70c5: $06 $42
	ld   [bc], a                                     ; $70c7: $02
	rrca                                             ; $70c8: $0f
	nop                                              ; $70c9: $00
	ld   bc, $0301                                   ; $70ca: $01 $01 $03
	ld   l, l                                        ; $70cd: $6d
	dec  b                                           ; $70ce: $05
	add  hl, de                                      ; $70cf: $19
	ld   a, c                                        ; $70d0: $79
	ld   a, l                                        ; $70d1: $7d
	ld   h, b                                        ; $70d2: $60
	adc  l                                           ; $70d3: $8d
	ld   l, l                                        ; $70d4: $6d
	ld   d, d                                        ; $70d5: $52
	halt                                             ; $70d6: $76
	dec  c                                           ; $70d7: $0d
	dec  b                                           ; $70d8: $05
	pop  de                                          ; $70d9: $d1
	ld   d, d                                        ; $70da: $52
	adc  h                                           ; $70db: $8c
	ld   h, a                                        ; $70dc: $67
	ld   a, [$000d]                                  ; $70dd: $fa $0d $00
	ld   a, [bc]                                     ; $70e0: $0a
	inc  e                                           ; $70e1: $1c
	inc  bc                                          ; $70e2: $03
	inc  b                                           ; $70e3: $04
	inc  b                                           ; $70e4: $04
	ld   bc, $546b                                   ; $70e5: $01 $6b $54
	rst  $38                                         ; $70e8: $ff
	rst  $38                                         ; $70e9: $ff
	dec  c                                           ; $70ea: $0d
	ld   l, e                                        ; $70eb: $6b
	ld   a, h                                        ; $70ec: $7c
	inc  bc                                          ; $70ed: $03
	ld   [hl], l                                     ; $70ee: $75
	ld   [bc], a                                     ; $70ef: $02
	ld   b, $02                                      ; $70f0: $06 $02
	and  c                                           ; $70f2: $a1
	ld   e, d                                        ; $70f3: $5a
	ld   [hl], d                                     ; $70f4: $72
	ld   [hl], e                                     ; $70f5: $73
	ld   e, l                                        ; $70f6: $5d
	ld   h, c                                        ; $70f7: $61
	halt                                             ; $70f8: $76
	and  b                                           ; $70f9: $a0
	dec  c                                           ; $70fa: $0d
	ld   d, d                                        ; $70fb: $52
	ld   a, h                                        ; $70fc: $7c
	ld   [hl], c                                     ; $70fd: $71
	ld   [hl], h                                     ; $70fe: $74
	sbc  c                                           ; $70ff: $99
	sbc  l                                           ; $7100: $9d
	sbc  a                                           ; $7101: $9f
	dec  c                                           ; $7102: $0d
	nop                                              ; $7103: $00
	ld   a, [bc]                                     ; $7104: $0a
	ld   b, $42                                      ; $7105: $06 $42
	ld   [bc], a                                     ; $7107: $02
	inc  e                                           ; $7108: $1c
	inc  bc                                          ; $7109: $03
	ld   b, $06                                      ; $710a: $06 $06
	dec  e                                           ; $710c: $1d
	ld   b, b                                        ; $710d: $40
	inc  de                                          ; $710e: $13
	inc  bc                                          ; $710f: $03
	inc  de                                          ; $7110: $13
	ld   bc, $2903                                   ; $7111: $01 $03 $29
	nop                                              ; $7114: $00
	ld   bc, $9704                                   ; $7115: $01 $04 $97
	ld   [bc], a                                     ; $7118: $02
	jp   $975e                                       ; $7119: $c3 $5e $97


	ld   d, d                                        ; $711c: $52
	ld   h, l                                        ; $711d: $65
	ld   a, b                                        ; $711e: $78
	ld   h, e                                        ; $711f: $63
	ld   d, d                                        ; $7120: $52
	ld   a, [$000d]                                  ; $7121: $fa $0d $00
	ld   a, [bc]                                     ; $7124: $0a
	ld   bc, $a502                                   ; $7125: $01 $02 $a5
	inc  b                                           ; $7128: $04
	rst  $28                                         ; $7129: $ef
	ld   a, l                                        ; $712a: $7d
	sbc  [hl]                                        ; $712b: $9e
	sub  b                                           ; $712c: $90
	ld   d, h                                        ; $712d: $54
	ld   d, d                                        ; $712e: $52
	ld   d, d                                        ; $712f: $52
	sbc  l                                           ; $7130: $9d
	sbc  a                                           ; $7131: $9f
	dec  c                                           ; $7132: $0d
	inc  b                                           ; $7133: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7134: $cf
	inc  b                                           ; $7135: $04
	xor  d                                           ; $7136: $aa
	ld   e, c                                        ; $7137: $59
	sub  a                                           ; $7138: $97
	ld   a, l                                        ; $7139: $7d
	sbc  [hl]                                        ; $713a: $9e
	ld   l, a                                        ; $713b: $6f
	sub  c                                           ; $713c: $91
	and  c                                           ; $713d: $a1
	halt                                             ; $713e: $76
	dec  c                                           ; $713f: $0d
	sub  d                                           ; $7140: $92
	sbc  c                                           ; $7141: $99
	ld   a, h                                        ; $7142: $7c
	sub  [hl]                                        ; $7143: $96
	sbc  a                                           ; $7144: $9f
	dec  c                                           ; $7145: $0d
	nop                                              ; $7146: $00
	ld   a, [bc]                                     ; $7147: $0a
	dec  c                                           ; $7148: $0d
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	rrca                                             ; $714b: $0f
	nop                                              ; $714c: $00
	ld   bc, $1e09                                   ; $714d: $01 $09 $1e
	add  hl, hl                                      ; $7150: $29
	nop                                              ; $7151: $00
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	inc  b                                           ; $7154: $04
	add  b                                           ; $7155: $80
	ld   a, l                                        ; $7156: $7d
	ld   bc, $20ff                                   ; $7157: $01 $ff $20
	inc  bc                                          ; $715a: $03
	ld   e, l                                        ; $715b: $5d
	ld   [bc], a                                     ; $715c: $02
	nop                                              ; $715d: $00
	jr   nz, jr_050_717c                             ; $715e: $20 $1c

	nop                                              ; $7160: $00
	ld   c, $89                                      ; $7161: $0e $89
	inc  e                                           ; $7163: $1c
	ld   b, $00                                      ; $7164: $06 $00
	nop                                              ; $7166: $00
	ld   [bc], a                                     ; $7167: $02
	dec  b                                           ; $7168: $05
	add  b                                           ; $7169: $80
	ld   a, [hl]                                     ; $716a: $7e
	ld   bc, $0001                                   ; $716b: $01 $01 $00
	ld   bc, $5896                                   ; $716e: $01 $96 $58
	sbc  [hl]                                        ; $7171: $9e
	ld   [$9f00], sp                                 ; $7172: $08 $00 $9f
	dec  c                                           ; $7175: $0d
	inc  b                                           ; $7176: $04
	rla                                              ; $7177: $17
	ld   [hl], c                                     ; $7178: $71
	ld   [hl], h                                     ; $7179: $74
	ld   l, l                                        ; $717a: $6d
	ld   l, d                                        ; $717b: $6a

jr_050_717c:
	sbc  a                                           ; $717c: $9f
	dec  c                                           ; $717d: $0d
	nop                                              ; $717e: $00
	ld   a, [bc]                                     ; $717f: $0a
	ld   bc, $9166                                   ; $7180: $01 $66 $91
	sbc  [hl]                                        ; $7183: $9e
	ld   h, e                                        ; $7184: $63
	ld   [hl], c                                     ; $7185: $71
	ld   l, e                                        ; $7186: $6b
	ld   e, l                                        ; $7187: $5d
	dec  b                                           ; $7188: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7189: $cf
	adc  a                                           ; $718a: $8f
	sub  [hl]                                        ; $718b: $96
	ld   d, h                                        ; $718c: $54
	ld   e, c                                        ; $718d: $59
	sbc  a                                           ; $718e: $9f
	dec  c                                           ; $718f: $0d
	inc  bc                                          ; $7190: $03
	db   $f4                                         ; $7191: $f4
	inc  b                                           ; $7192: $04
	ld   e, c                                        ; $7193: $59
	ld   e, d                                        ; $7194: $5a
	inc  bc                                          ; $7195: $03
	xor  [hl]                                        ; $7196: $ae
	ld   d, [hl]                                     ; $7197: $56
	ld   a, b                                        ; $7198: $78
	ld   e, l                                        ; $7199: $5d
	ld   a, b                                        ; $719a: $78
	ld   [hl], c                                     ; $719b: $71
	ld   l, l                                        ; $719c: $6d
	ld   [bc], a                                     ; $719d: $02
	call $0e02                                       ; $719e: $cd $02 $0e
	and  b                                           ; $71a1: $a0
	dec  c                                           ; $71a2: $0d
	ld   h, l                                        ; $71a3: $65
	sub  a                                           ; $71a4: $97
	add  a                                           ; $71a5: $87
	sub  [hl]                                        ; $71a6: $96
	ld   d, h                                        ; $71a7: $54
	ld   l, d                                        ; $71a8: $6a
	sbc  a                                           ; $71a9: $9f
	dec  c                                           ; $71aa: $0d
	nop                                              ; $71ab: $00
	ld   a, [bc]                                     ; $71ac: $0a
	ld   bc, $9075                                   ; $71ad: $01 $75 $90
	sub  [hl]                                        ; $71b0: $96
	sbc  [hl]                                        ; $71b1: $9e
	inc  bc                                          ; $71b2: $03
	db   $f4                                         ; $71b3: $f4
	inc  b                                           ; $71b4: $04
	ld   e, c                                        ; $71b5: $59
	ld   e, d                                        ; $71b6: $5a
	inc  bc                                          ; $71b7: $03
	xor  [hl]                                        ; $71b8: $ae
	ld   d, [hl]                                     ; $71b9: $56
	ld   a, b                                        ; $71ba: $78
	ld   d, d                                        ; $71bb: $52
	dec  c                                           ; $71bc: $0d
	ld   [hl], c                                     ; $71bd: $71
	ld   [hl], h                                     ; $71be: $74
	ld   h, c                                        ; $71bf: $61
	halt                                             ; $71c0: $76
	ld   a, l                                        ; $71c1: $7d
	sbc  [hl]                                        ; $71c2: $9e
	ld   [hl], a                                     ; $71c3: $77
	ld   d, h                                        ; $71c4: $54
	ld   d, d                                        ; $71c5: $52
	ld   d, h                                        ; $71c6: $54
	ld   [bc], a                                     ; $71c7: $02
	jp   $766e                                       ; $71c8: $c3 $6e $76


	dec  c                                           ; $71cb: $0d
	dec  b                                           ; $71cc: $05
	pop  de                                          ; $71cd: $d1
	ld   d, h                                        ; $71ce: $54
	ld   sp, hl                                      ; $71cf: $f9
	dec  c                                           ; $71d0: $0d
	nop                                              ; $71d1: $00
	ld   a, [bc]                                     ; $71d2: $0a
	add  hl, de                                      ; $71d3: $19
	dec  b                                           ; $71d4: $05
	inc  bc                                          ; $71d5: $03
	dec  b                                           ; $71d6: $05
	add  c                                           ; $71d7: $81
	ld   e, d                                        ; $71d8: $5a
	inc  bc                                          ; $71d9: $03
	xor  [hl]                                        ; $71da: $ae
	ld   d, [hl]                                     ; $71db: $56
	ld   a, b                                        ; $71dc: $78
	ld   e, l                                        ; $71dd: $5d
	ld   a, b                                        ; $71de: $78
	ld   [hl], c                                     ; $71df: $71
	ld   l, l                                        ; $71e0: $6d
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	inc  bc                                          ; $71e3: $03
	ld   e, c                                        ; $71e4: $59
	inc  b                                           ; $71e5: $04
	ld   d, $5a                                      ; $71e6: $16 $5a
	inc  bc                                          ; $71e8: $03
	xor  [hl]                                        ; $71e9: $ae
	ld   d, [hl]                                     ; $71ea: $56
	ld   a, b                                        ; $71eb: $78
	ld   e, l                                        ; $71ec: $5d
	ld   a, b                                        ; $71ed: $78
	ld   [hl], c                                     ; $71ee: $71
	ld   l, l                                        ; $71ef: $6d
	nop                                              ; $71f0: $00
	ld   bc, $e403                                   ; $71f1: $01 $03 $e4
	ld   [bc], a                                     ; $71f4: $02
	and  c                                           ; $71f5: $a1
	ld   e, d                                        ; $71f6: $5a
	inc  bc                                          ; $71f7: $03
	xor  [hl]                                        ; $71f8: $ae
	ld   d, [hl]                                     ; $71f9: $56
	ld   a, b                                        ; $71fa: $78
	ld   e, l                                        ; $71fb: $5d
	ld   a, b                                        ; $71fc: $78
	ld   [hl], c                                     ; $71fd: $71
	ld   l, l                                        ; $71fe: $6d
	nop                                              ; $71ff: $00
	ld   [bc], a                                     ; $7200: $02
	rlca                                             ; $7201: $07
	cp   [hl]                                        ; $7202: $be
	nop                                              ; $7203: $00
	ld   [bc], a                                     ; $7204: $02
	inc  bc                                          ; $7205: $03
	ld   bc, $2000                                   ; $7206: $01 $00 $20
	nop                                              ; $7209: $00
	rlca                                             ; $720a: $07
	ld   e, $01                                      ; $720b: $1e $01
	ld   [bc], a                                     ; $720d: $02
	inc  bc                                          ; $720e: $03
	ld   bc, $2001                                   ; $720f: $01 $01 $20
	nop                                              ; $7212: $00
	rlca                                             ; $7213: $07
	sbc  d                                           ; $7214: $9a
	ld   bc, $0302                                   ; $7215: $01 $02 $03
	ld   bc, $2002                                   ; $7218: $01 $02 $20
	nop                                              ; $721b: $00
	ld   b, $13                                      ; $721c: $06 $13
	ld   [bc], a                                     ; $721e: $02
	rrca                                             ; $721f: $0f
	nop                                              ; $7220: $00
	ld   bc, $0501                                   ; $7221: $01 $01 $05
	add  c                                           ; $7224: $81
	ld   e, d                                        ; $7225: $5a
	inc  bc                                          ; $7226: $03
	xor  [hl]                                        ; $7227: $ae
	ld   d, [hl]                                     ; $7228: $56
	ld   a, b                                        ; $7229: $78
	ld   d, d                                        ; $722a: $52
	and  c                                           ; $722b: $a1
	ld   h, [hl]                                     ; $722c: $66
	sub  c                                           ; $722d: $91
	dec  c                                           ; $722e: $0d
	ld   a, b                                        ; $722f: $78
	ld   d, d                                        ; $7230: $52
	ld   [hl], l                                     ; $7231: $75
	ld   h, l                                        ; $7232: $65
	sub  l                                           ; $7233: $95
	ld   d, h                                        ; $7234: $54
	ld   e, c                                        ; $7235: $59
	sbc  a                                           ; $7236: $9f
	dec  c                                           ; $7237: $0d
	nop                                              ; $7238: $00
	ld   a, [bc]                                     ; $7239: $0a
	inc  e                                           ; $723a: $1c
	ld   b, $00                                      ; $723b: $06 $00
	nop                                              ; $723d: $00
	dec  e                                           ; $723e: $1d
	ld   b, b                                        ; $723f: $40
	ld   d, $03                                      ; $7240: $16 $03
	ld   d, $01                                      ; $7242: $16 $01
	ld   [bc], a                                     ; $7244: $02
	jr   z, jr_050_7247                              ; $7245: $28 $00

jr_050_7247:
	ld   bc, $8105                                   ; $7247: $01 $05 $81
	ld   e, c                                        ; $724a: $59
	rst  $38                                         ; $724b: $ff
	rst  $38                                         ; $724c: $ff
	dec  c                                           ; $724d: $0d
	ld   l, l                                        ; $724e: $6d
	ld   h, l                                        ; $724f: $65
	ld   e, c                                        ; $7250: $59
	ld   a, c                                        ; $7251: $79
	sbc  [hl]                                        ; $7252: $9e
	dec  b                                           ; $7253: $05
	add  c                                           ; $7254: $81
	ld   e, d                                        ; $7255: $5a
	ld   a, b                                        ; $7256: $78
	ld   e, a                                        ; $7257: $5f
	sbc  b                                           ; $7258: $98
	sub  c                                           ; $7259: $91
	dec  c                                           ; $725a: $0d
	dec  b                                           ; $725b: $05
	ld   [bc], a                                     ; $725c: $02
	dec  b                                           ; $725d: $05
	ld   de, $757d                                   ; $725e: $11 $7d $75
	ld   e, e                                        ; $7261: $5b
	ld   a, b                                        ; $7262: $78
	ld   d, d                                        ; $7263: $52
	sub  [hl]                                        ; $7264: $96
	ld   a, b                                        ; $7265: $78
	sbc  a                                           ; $7266: $9f
	dec  c                                           ; $7267: $0d
	nop                                              ; $7268: $00
	ld   a, [bc]                                     ; $7269: $0a
	ld   bc, $9166                                   ; $726a: $01 $66 $91
	ld   d, b                                        ; $726d: $50
	sbc  [hl]                                        ; $726e: $9e
	ld   [hl], a                                     ; $726f: $77
	ld   h, c                                        ; $7270: $61
	and  b                                           ; $7271: $a0
	inc  bc                                          ; $7272: $03
	cp   $87                                         ; $7273: $fe $87
	sub  [hl]                                        ; $7275: $96
	ld   d, h                                        ; $7276: $54
	ld   e, c                                        ; $7277: $59
	ld   sp, hl                                      ; $7278: $f9
	dec  c                                           ; $7279: $0d
	nop                                              ; $727a: $00
	ld   a, [bc]                                     ; $727b: $0a
	ld   b, $48                                      ; $727c: $06 $48
	ld   [bc], a                                     ; $727e: $02
	rrca                                             ; $727f: $0f
	nop                                              ; $7280: $00
	ld   bc, $0301                                   ; $7281: $01 $01 $03
	ld   e, c                                        ; $7284: $59
	inc  b                                           ; $7285: $04
	ld   d, $5a                                      ; $7286: $16 $5a
	inc  bc                                          ; $7288: $03
	xor  [hl]                                        ; $7289: $ae
	ld   d, [hl]                                     ; $728a: $56
	ld   a, b                                        ; $728b: $78
	ld   d, d                                        ; $728c: $52
	and  c                                           ; $728d: $a1
	ld   h, [hl]                                     ; $728e: $66
	sub  c                                           ; $728f: $91
	dec  c                                           ; $7290: $0d
	ld   a, b                                        ; $7291: $78
	ld   d, d                                        ; $7292: $52
	ld   [hl], l                                     ; $7293: $75
	ld   h, l                                        ; $7294: $65
	sub  l                                           ; $7295: $95
	ld   d, h                                        ; $7296: $54
	ld   e, c                                        ; $7297: $59
	ld   sp, hl                                      ; $7298: $f9
	dec  c                                           ; $7299: $0d
	nop                                              ; $729a: $00
	ld   a, [bc]                                     ; $729b: $0a
	inc  e                                           ; $729c: $1c
	ld   b, $00                                      ; $729d: $06 $00
	nop                                              ; $729f: $00
	ld   bc, $5903                                   ; $72a0: $01 $03 $59
	inc  b                                           ; $72a3: $04
	ld   d, $59                                      ; $72a4: $16 $59
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	dec  c                                           ; $72a8: $0d
	ld   [hl], l                                     ; $72a9: $75
	sub  b                                           ; $72aa: $90
	sbc  [hl]                                        ; $72ab: $9e
	inc  bc                                          ; $72ac: $03
	ld   e, c                                        ; $72ad: $59
	ld   a, b                                        ; $72ae: $78
	sub  a                                           ; $72af: $97
	ld   [bc], a                                     ; $72b0: $02
	cpl                                              ; $72b1: $2f
	dec  b                                           ; $72b2: $05
	push af                                          ; $72b3: $f5
	halt                                             ; $72b4: $76
	ld   e, c                                        ; $72b5: $59
	ld   e, c                                        ; $72b6: $59
	sub  a                                           ; $72b7: $97
	ld   [hl], l                                     ; $72b8: $75
	sub  b                                           ; $72b9: $90
	dec  c                                           ; $72ba: $0d
	ld   e, l                                        ; $72bb: $5d
	and  c                                           ; $72bc: $a1
	ld   [hl], l                                     ; $72bd: $75
	ld   h, c                                        ; $72be: $61
	sbc  d                                           ; $72bf: $9a
	sbc  c                                           ; $72c0: $99
	ld   l, d                                        ; $72c1: $6a
	sbc  a                                           ; $72c2: $9f
	dec  c                                           ; $72c3: $0d
	nop                                              ; $72c4: $00
	ld   a, [bc]                                     ; $72c5: $0a
	ld   bc, $6d50                                   ; $72c6: $01 $50 $6d
	ld   d, d                                        ; $72c9: $52
	ld   a, l                                        ; $72ca: $7d
	sbc  [hl]                                        ; $72cb: $9e
	dec  b                                           ; $72cc: $05
	add  c                                           ; $72cd: $81
	ld   e, d                                        ; $72ce: $5a
	inc  bc                                          ; $72cf: $03
	xor  [hl]                                        ; $72d0: $ae
	ld   d, [hl]                                     ; $72d1: $56
	ld   a, b                                        ; $72d2: $78
	ld   d, d                                        ; $72d3: $52
	and  c                                           ; $72d4: $a1
	dec  c                                           ; $72d5: $0d
	ld   h, [hl]                                     ; $72d6: $66
	sub  c                                           ; $72d7: $91
	ld   a, b                                        ; $72d8: $78
	ld   d, d                                        ; $72d9: $52
	ld   e, c                                        ; $72da: $59
	halt                                             ; $72db: $76
	dec  b                                           ; $72dc: $05
	pop  de                                          ; $72dd: $d1
	ld   d, h                                        ; $72de: $54
	and  c                                           ; $72df: $a1
	ld   l, [hl]                                     ; $72e0: $6e
	ld   e, a                                        ; $72e1: $5f
	ld   [hl], a                                     ; $72e2: $77
	ld   a, b                                        ; $72e3: $78
	sbc  a                                           ; $72e4: $9f
	dec  c                                           ; $72e5: $0d
	dec  b                                           ; $72e6: $05
	add  c                                           ; $72e7: $81
	ld   l, [hl]                                     ; $72e8: $6e
	halt                                             ; $72e9: $76
	ld   h, l                                        ; $72ea: $65
	ld   l, l                                        ; $72eb: $6d
	sub  a                                           ; $72ec: $97
	ld   [hl], a                                     ; $72ed: $77
	ld   h, c                                        ; $72ee: $61
	and  b                                           ; $72ef: $a0
	inc  bc                                          ; $72f0: $03
	cp   $87                                         ; $72f1: $fe $87
	sbc  c                                           ; $72f3: $99
	ld   sp, hl                                      ; $72f4: $f9
	dec  c                                           ; $72f5: $0d
	nop                                              ; $72f6: $00
	ld   a, [bc]                                     ; $72f7: $0a
	ld   b, $48                                      ; $72f8: $06 $48
	ld   [bc], a                                     ; $72fa: $02
	rrca                                             ; $72fb: $0f
	nop                                              ; $72fc: $00
	ld   bc, $0301                                   ; $72fd: $01 $01 $03
	db   $e4                                         ; $7300: $e4
	ld   [bc], a                                     ; $7301: $02
	and  c                                           ; $7302: $a1
	ld   e, d                                        ; $7303: $5a
	inc  bc                                          ; $7304: $03
	xor  [hl]                                        ; $7305: $ae
	ld   d, [hl]                                     ; $7306: $56
	ld   a, b                                        ; $7307: $78
	ld   d, d                                        ; $7308: $52
	and  c                                           ; $7309: $a1
	ld   h, [hl]                                     ; $730a: $66
	sub  c                                           ; $730b: $91
	dec  c                                           ; $730c: $0d
	ld   a, b                                        ; $730d: $78
	ld   d, d                                        ; $730e: $52
	ld   [hl], l                                     ; $730f: $75
	ld   h, l                                        ; $7310: $65
	sub  l                                           ; $7311: $95
	ld   d, h                                        ; $7312: $54
	ld   e, c                                        ; $7313: $59
	ld   sp, hl                                      ; $7314: $f9
	dec  c                                           ; $7315: $0d
	nop                                              ; $7316: $00
	ld   a, [bc]                                     ; $7317: $0a
	inc  e                                           ; $7318: $1c
	ld   b, $00                                      ; $7319: $06 $00
	nop                                              ; $731b: $00
	ld   bc, $e403                                   ; $731c: $01 $03 $e4
	ld   [bc], a                                     ; $731f: $02
	and  c                                           ; $7320: $a1
	ld   e, c                                        ; $7321: $59
	rst  $38                                         ; $7322: $ff
	rst  $38                                         ; $7323: $ff
	dec  c                                           ; $7324: $0d
	ld   [hl], l                                     ; $7325: $75
	sub  b                                           ; $7326: $90
	sbc  [hl]                                        ; $7327: $9e
	inc  b                                           ; $7328: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7329: $cf
	ld   e, c                                        ; $732a: $59
	sbc  b                                           ; $732b: $98
	ld   a, b                                        ; $732c: $78
	sub  a                                           ; $732d: $97
	rst  $28                                         ; $732e: $ef
	and  a                                           ; $732f: $a7
	cp   [hl]                                        ; $7330: $be
	or   b                                           ; $7331: $b0
	ld   [hl], l                                     ; $7332: $75
	sub  b                                           ; $7333: $90
	dec  c                                           ; $7334: $0d
	ld   a, b                                        ; $7335: $78
	and  c                                           ; $7336: $a1
	halt                                             ; $7337: $76
	ld   e, c                                        ; $7338: $59
	ld   a, b                                        ; $7339: $78
	sbc  c                                           ; $733a: $99
	ld   l, d                                        ; $733b: $6a
	sbc  a                                           ; $733c: $9f
	dec  c                                           ; $733d: $0d
	nop                                              ; $733e: $00
	ld   a, [bc]                                     ; $733f: $0a
	ld   bc, $6d50                                   ; $7340: $01 $50 $6d
	ld   d, d                                        ; $7343: $52
	ld   a, l                                        ; $7344: $7d
	sbc  [hl]                                        ; $7345: $9e
	dec  b                                           ; $7346: $05
	add  c                                           ; $7347: $81
	ld   e, d                                        ; $7348: $5a
	inc  bc                                          ; $7349: $03
	xor  [hl]                                        ; $734a: $ae
	ld   d, [hl]                                     ; $734b: $56
	ld   a, b                                        ; $734c: $78
	ld   d, d                                        ; $734d: $52
	and  c                                           ; $734e: $a1
	dec  c                                           ; $734f: $0d
	ld   h, [hl]                                     ; $7350: $66
	sub  c                                           ; $7351: $91
	ld   a, b                                        ; $7352: $78
	ld   d, d                                        ; $7353: $52
	ld   e, c                                        ; $7354: $59
	halt                                             ; $7355: $76
	dec  b                                           ; $7356: $05
	pop  de                                          ; $7357: $d1
	ld   d, h                                        ; $7358: $54
	and  c                                           ; $7359: $a1
	ld   l, [hl]                                     ; $735a: $6e
	ld   e, a                                        ; $735b: $5f
	ld   [hl], a                                     ; $735c: $77
	sbc  a                                           ; $735d: $9f
	dec  c                                           ; $735e: $0d
	dec  b                                           ; $735f: $05
	add  c                                           ; $7360: $81
	ld   l, [hl]                                     ; $7361: $6e
	halt                                             ; $7362: $76
	ld   h, l                                        ; $7363: $65
	ld   l, l                                        ; $7364: $6d
	sub  a                                           ; $7365: $97
	ld   [hl], a                                     ; $7366: $77
	ld   h, c                                        ; $7367: $61
	and  b                                           ; $7368: $a0
	inc  bc                                          ; $7369: $03
	cp   $87                                         ; $736a: $fe $87
	sbc  c                                           ; $736c: $99
	ld   sp, hl                                      ; $736d: $f9
	dec  c                                           ; $736e: $0d
	nop                                              ; $736f: $00
	ld   a, [bc]                                     ; $7370: $0a
	ld   b, $48                                      ; $7371: $06 $48
	ld   [bc], a                                     ; $7373: $02
	inc  e                                           ; $7374: $1c
	ld   b, $00                                      ; $7375: $06 $00
	nop                                              ; $7377: $00
	ld   bc, $6d50                                   ; $7378: $01 $50 $6d
	ld   d, d                                        ; $737b: $52
	ld   a, l                                        ; $737c: $7d
	sbc  [hl]                                        ; $737d: $9e
	dec  b                                           ; $737e: $05
	add  c                                           ; $737f: $81
	ld   e, d                                        ; $7380: $5a
	inc  bc                                          ; $7381: $03
	xor  [hl]                                        ; $7382: $ae
	ld   d, [hl]                                     ; $7383: $56
	ld   a, b                                        ; $7384: $78
	ld   d, d                                        ; $7385: $52
	and  c                                           ; $7386: $a1
	dec  c                                           ; $7387: $0d
	ld   h, [hl]                                     ; $7388: $66
	sub  c                                           ; $7389: $91
	ld   a, b                                        ; $738a: $78
	ld   d, d                                        ; $738b: $52
	ld   e, c                                        ; $738c: $59
	halt                                             ; $738d: $76
	dec  b                                           ; $738e: $05
	pop  de                                          ; $738f: $d1
	ld   d, h                                        ; $7390: $54
	and  c                                           ; $7391: $a1
	ld   l, [hl]                                     ; $7392: $6e
	ld   e, a                                        ; $7393: $5f
	ld   [hl], a                                     ; $7394: $77
	sbc  a                                           ; $7395: $9f
	dec  c                                           ; $7396: $0d
	dec  b                                           ; $7397: $05
	add  c                                           ; $7398: $81
	ld   l, [hl]                                     ; $7399: $6e
	halt                                             ; $739a: $76
	ld   h, l                                        ; $739b: $65
	ld   l, l                                        ; $739c: $6d
	sub  a                                           ; $739d: $97
	ld   [hl], a                                     ; $739e: $77
	ld   h, c                                        ; $739f: $61
	and  b                                           ; $73a0: $a0
	inc  bc                                          ; $73a1: $03
	cp   $87                                         ; $73a2: $fe $87
	sbc  c                                           ; $73a4: $99
	ld   sp, hl                                      ; $73a5: $f9
	dec  c                                           ; $73a6: $0d
	nop                                              ; $73a7: $00
	ld   a, [bc]                                     ; $73a8: $0a
	add  hl, de                                      ; $73a9: $19
	dec  b                                           ; $73aa: $05
	inc  bc                                          ; $73ab: $03
	inc  bc                                          ; $73ac: $03
	ld   e, c                                        ; $73ad: $59
	inc  b                                           ; $73ae: $04
	ld   d, $7c                                      ; $73af: $16 $7c
	ld   [bc], a                                     ; $73b1: $02
	xor  h                                           ; $73b2: $ac
	dec  b                                           ; $73b3: $05
	cp   e                                           ; $73b4: $bb
	nop                                              ; $73b5: $00
	nop                                              ; $73b6: $00
	rst  $10                                         ; $73b7: $d7
	xor  $fb                                         ; $73b8: $ee $fb
	xor  h                                           ; $73ba: $ac
	ei                                               ; $73bb: $fb
	nop                                              ; $73bc: $00
	ld   bc, $baad                                   ; $73bd: $01 $ad $ba
	ld   a, h                                        ; $73c0: $7c
	ld   [bc], a                                     ; $73c1: $02
	xor  h                                           ; $73c2: $ac
	dec  b                                           ; $73c3: $05
	cp   e                                           ; $73c4: $bb
	nop                                              ; $73c5: $00
	ld   [bc], a                                     ; $73c6: $02
	rlca                                             ; $73c7: $07
	ld   l, l                                        ; $73c8: $6d
	inc  bc                                          ; $73c9: $03
	ld   [bc], a                                     ; $73ca: $02
	inc  bc                                          ; $73cb: $03
	ld   bc, $2000                                   ; $73cc: $01 $00 $20
	nop                                              ; $73cf: $00
	rlca                                             ; $73d0: $07
	ld   b, l                                        ; $73d1: $45
	dec  b                                           ; $73d2: $05
	ld   [bc], a                                     ; $73d3: $02
	inc  bc                                          ; $73d4: $03
	ld   bc, $2001                                   ; $73d5: $01 $01 $20
	nop                                              ; $73d8: $00
	rlca                                             ; $73d9: $07
	pop  hl                                          ; $73da: $e1
	ld   [bc], a                                     ; $73db: $02
	ld   [bc], a                                     ; $73dc: $02
	inc  bc                                          ; $73dd: $03
	ld   bc, $2002                                   ; $73de: $01 $02 $20
	nop                                              ; $73e1: $00
	ld   b, $84                                      ; $73e2: $06 $84
	ld   [bc], a                                     ; $73e4: $02
	inc  e                                           ; $73e5: $1c
	ld   b, $00                                      ; $73e6: $06 $00
	nop                                              ; $73e8: $00
	ld   bc, $ffff                                   ; $73e9: $01 $ff $ff
	ld   l, e                                        ; $73ec: $6b
	ld   d, h                                        ; $73ed: $54
	ld   d, d                                        ; $73ee: $52
	ld   d, [hl]                                     ; $73ef: $56
	ld   a, [hl]                                     ; $73f0: $7e
	sbc  [hl]                                        ; $73f1: $9e
	dec  b                                           ; $73f2: $05
	ld   b, l                                        ; $73f3: $45
	inc  b                                           ; $73f4: $04
	xor  d                                           ; $73f5: $aa
	ld   a, h                                        ; $73f6: $7c
	inc  b                                           ; $73f7: $04
	rst  $28                                         ; $73f8: $ef
	ld   a, c                                        ; $73f9: $79
	dec  c                                           ; $73fa: $0d
	inc  bc                                          ; $73fb: $03
	db   $f4                                         ; $73fc: $f4
	inc  b                                           ; $73fd: $04
	ld   e, c                                        ; $73fe: $59
	ld   a, h                                        ; $73ff: $7c
	ld   [bc], a                                     ; $7400: $02
	ld   c, a                                        ; $7401: $4f
	ld   [bc], a                                     ; $7402: $02
	jp   Jump_050_65a0                               ; $7403: $c3 $a0 $65


	ld   [hl], h                                     ; $7406: $74
	ld   d, d                                        ; $7407: $52
	ld   l, l                                        ; $7408: $6d
	dec  c                                           ; $7409: $0d
	adc  l                                           ; $740a: $8d
	ld   l, l                                        ; $740b: $6d
	ld   d, d                                        ; $740c: $52
	ld   l, [hl]                                     ; $740d: $6e
	ld   [hl], c                                     ; $740e: $71
	ld   l, l                                        ; $740f: $6d
	ld   a, b                                        ; $7410: $78
	rst  $38                                         ; $7411: $ff
	rst  $38                                         ; $7412: $ff
	dec  c                                           ; $7413: $0d
	nop                                              ; $7414: $00
	ld   a, [bc]                                     ; $7415: $0a
	inc  e                                           ; $7416: $1c
	ld   b, $01                                      ; $7417: $06 $01
	ld   bc, $5001                                   ; $7419: $01 $01 $50
	ld   a, [$5b0d]                                  ; $741c: $fa $0d $5b
	ld   [hl], c                                     ; $741f: $71
	halt                                             ; $7420: $76
	xor  l                                           ; $7421: $ad
	cp   d                                           ; $7422: $ba
	ld   a, h                                        ; $7423: $7c
	ld   [bc], a                                     ; $7424: $02
	xor  h                                           ; $7425: $ac
	dec  b                                           ; $7426: $05
	cp   e                                           ; $7427: $bb
	and  b                                           ; $7428: $a0
	dec  c                                           ; $7429: $0d
	inc  b                                           ; $742a: $04
	ld   l, [hl]                                     ; $742b: $6e
	adc  a                                           ; $742c: $8f
	ld   l, l                                        ; $742d: $6d
	adc  h                                           ; $742e: $8c
	adc  h                                           ; $742f: $8c
	ld   a, b                                        ; $7430: $78
	and  c                                           ; $7431: $a1
	ld   l, [hl]                                     ; $7432: $6e
	ld   a, [$000d]                                  ; $7433: $fa $0d $00
	ld   a, [bc]                                     ; $7436: $0a
	dec  c                                           ; $7437: $0d
	nop                                              ; $7438: $00
	nop                                              ; $7439: $00
	rrca                                             ; $743a: $0f
	nop                                              ; $743b: $00
	ld   bc, $0b0c                                   ; $743c: $01 $0c $0b
	ld   b, $22                                      ; $743f: $06 $22
	rlca                                             ; $7441: $07
	rrca                                             ; $7442: $0f
	nop                                              ; $7443: $00
	ld   bc, $ad01                                   ; $7444: $01 $01 $ad
	cp   d                                           ; $7447: $ba
	ld   a, h                                        ; $7448: $7c
	ld   [bc], a                                     ; $7449: $02
	xor  h                                           ; $744a: $ac
	dec  b                                           ; $744b: $05
	cp   e                                           ; $744c: $bb
	and  b                                           ; $744d: $a0
	inc  bc                                          ; $744e: $03
	cp   $87                                         ; $744f: $fe $87
	sbc  d                                           ; $7451: $9a
	ld   a, [hl]                                     ; $7452: $7e
	dec  c                                           ; $7453: $0d
	ld   d, d                                        ; $7454: $52
	ld   d, d                                        ; $7455: $52
	and  c                                           ; $7456: $a1
	ld   h, [hl]                                     ; $7457: $66
	sub  c                                           ; $7458: $91
	ld   a, b                                        ; $7459: $78
	ld   d, d                                        ; $745a: $52
	ld   [hl], l                                     ; $745b: $75
	ld   h, a                                        ; $745c: $67
	ld   e, c                                        ; $745d: $59
	ld   sp, hl                                      ; $745e: $f9
	dec  c                                           ; $745f: $0d
	nop                                              ; $7460: $00
	ld   a, [bc]                                     ; $7461: $0a
	inc  e                                           ; $7462: $1c
	ld   b, $00                                      ; $7463: $06 $00

Jump_050_7465:
	nop                                              ; $7465: $00
	ld   bc, $baad                                   ; $7466: $01 $ad $ba
	ld   a, h                                        ; $7469: $7c
	ld   [bc], a                                     ; $746a: $02
	xor  h                                           ; $746b: $ac
	dec  b                                           ; $746c: $05
	cp   e                                           ; $746d: $bb
	rst  $38                                         ; $746e: $ff
	rst  $38                                         ; $746f: $ff
	dec  c                                           ; $7470: $0d
	ld   l, e                                        ; $7471: $6b
	ld   d, h                                        ; $7472: $54
	ld   l, [hl]                                     ; $7473: $6e
	sub  [hl]                                        ; $7474: $96
	sbc  [hl]                                        ; $7475: $9e
	dec  b                                           ; $7476: $05
	ld   b, l                                        ; $7477: $45
	inc  b                                           ; $7478: $04
	xor  d                                           ; $7479: $aa
	ld   a, h                                        ; $747a: $7c
	inc  b                                           ; $747b: $04
	rst  $28                                         ; $747c: $ef
	ld   a, c                                        ; $747d: $79
	dec  c                                           ; $747e: $0d
	ld   [bc], a                                     ; $747f: $02
	ld   c, a                                        ; $7480: $4f
	ld   [bc], a                                     ; $7481: $02
	jp   Jump_050_7465                               ; $7482: $c3 $65 $74


	ld   l, l                                        ; $7485: $6d
	adc  l                                           ; $7486: $8d
	ld   l, l                                        ; $7487: $6d
	ld   d, d                                        ; $7488: $52
	ld   l, [hl]                                     ; $7489: $6e
	ld   [hl], c                                     ; $748a: $71
	ld   l, l                                        ; $748b: $6d
	ld   a, b                                        ; $748c: $78
	rst  $38                                         ; $748d: $ff
	rst  $38                                         ; $748e: $ff
	dec  c                                           ; $748f: $0d
	nop                                              ; $7490: $00
	ld   a, [bc]                                     ; $7491: $0a
	inc  e                                           ; $7492: $1c
	ld   b, $01                                      ; $7493: $06 $01
	ld   bc, $401d                                   ; $7495: $01 $1d $40
	ld   d, $03                                      ; $7498: $16 $03
	ld   d, $01                                      ; $749a: $16 $01
	inc  bc                                          ; $749c: $03
	jr   z, jr_050_749f                              ; $749d: $28 $00

jr_050_749f:
	ld   bc, $715b                                   ; $749f: $01 $5b $71
	halt                                             ; $74a2: $76
	xor  l                                           ; $74a3: $ad
	cp   d                                           ; $74a4: $ba
	ld   a, h                                        ; $74a5: $7c
	ld   [bc], a                                     ; $74a6: $02
	xor  h                                           ; $74a7: $ac
	dec  b                                           ; $74a8: $05
	cp   e                                           ; $74a9: $bb
	and  b                                           ; $74aa: $a0
	dec  c                                           ; $74ab: $0d
	inc  b                                           ; $74ac: $04
	ld   l, [hl]                                     ; $74ad: $6e
	adc  a                                           ; $74ae: $8f
	ld   l, l                                        ; $74af: $6d
	adc  h                                           ; $74b0: $8c
	adc  h                                           ; $74b1: $8c
	ld   a, b                                        ; $74b2: $78
	and  c                                           ; $74b3: $a1
	ld   l, [hl]                                     ; $74b4: $6e
	ld   a, [$630d]                                  ; $74b5: $fa $0d $63
	ld   h, a                                        ; $74b8: $67
	ld   e, d                                        ; $74b9: $5a
	ld   l, [hl]                                     ; $74ba: $6e
	ld   l, d                                        ; $74bb: $6a
	sbc  [hl]                                        ; $74bc: $9e
	ld   [$fa00], sp                                 ; $74bd: $08 $00 $fa
	dec  c                                           ; $74c0: $0d
	nop                                              ; $74c1: $00
	ld   a, [bc]                                     ; $74c2: $0a
	dec  c                                           ; $74c3: $0d
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	rrca                                             ; $74c6: $0f
	nop                                              ; $74c7: $00
	ld   bc, $0b0c                                   ; $74c8: $01 $0c $0b
	ld   b, $22                                      ; $74cb: $06 $22
	rlca                                             ; $74cd: $07
	rrca                                             ; $74ce: $0f
	nop                                              ; $74cf: $00
	ld   bc, $0301                                   ; $74d0: $01 $01 $03
	ld   e, c                                        ; $74d3: $59
	inc  b                                           ; $74d4: $04
	ld   d, $7c                                      ; $74d5: $16 $7c
	ld   [bc], a                                     ; $74d7: $02
	xor  h                                           ; $74d8: $ac
	dec  b                                           ; $74d9: $05
	cp   e                                           ; $74da: $bb
	and  b                                           ; $74db: $a0
	ld   h, l                                        ; $74dc: $65
	sub  a                                           ; $74dd: $97
	add  a                                           ; $74de: $87
	sbc  d                                           ; $74df: $9a
	ld   a, [hl]                                     ; $74e0: $7e
	dec  c                                           ; $74e1: $0d
	ld   d, d                                        ; $74e2: $52
	ld   d, d                                        ; $74e3: $52
	and  c                                           ; $74e4: $a1
	ld   h, [hl]                                     ; $74e5: $66
	sub  c                                           ; $74e6: $91
	ld   a, b                                        ; $74e7: $78
	ld   d, d                                        ; $74e8: $52
	ld   [hl], l                                     ; $74e9: $75
	ld   h, a                                        ; $74ea: $67
	ld   e, c                                        ; $74eb: $59
	ld   sp, hl                                      ; $74ec: $f9
	dec  c                                           ; $74ed: $0d
	nop                                              ; $74ee: $00
	ld   a, [bc]                                     ; $74ef: $0a
	inc  e                                           ; $74f0: $1c
	ld   b, $05                                      ; $74f1: $06 $05
	dec  b                                           ; $74f3: $05
	ld   bc, $5903                                   ; $74f4: $01 $03 $59
	inc  b                                           ; $74f7: $04
	ld   d, $f9                                      ; $74f8: $16 $f9
	dec  c                                           ; $74fa: $0d
	dec  b                                           ; $74fb: $05
	add  c                                           ; $74fc: $81
	halt                                             ; $74fd: $76
	ld   [bc], a                                     ; $74fe: $02
	ld   c, d                                        ; $74ff: $4a
	ld   [bc], a                                     ; $7500: $02
	ld   c, e                                        ; $7501: $4b
	ld   a, b                                        ; $7502: $78
	ld   d, d                                        ; $7503: $52
	ld   h, [hl]                                     ; $7504: $66
	sub  c                                           ; $7505: $91
	and  c                                           ; $7506: $a1
	ld   e, c                                        ; $7507: $59
	sub  [hl]                                        ; $7508: $96
	db   $fc                                         ; $7509: $fc
	sbc  a                                           ; $750a: $9f
	dec  c                                           ; $750b: $0d
	nop                                              ; $750c: $00
	ld   a, [bc]                                     ; $750d: $0a
	add  hl, de                                      ; $750e: $19
	dec  b                                           ; $750f: $05
	ld   [bc], a                                     ; $7510: $02
	rst  $10                                         ; $7511: $d7
	xor  $fb                                         ; $7512: $ee $fb
	xor  h                                           ; $7514: $ac
	ei                                               ; $7515: $fb
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	xor  l                                           ; $7518: $ad
	cp   d                                           ; $7519: $ba
	ld   a, h                                        ; $751a: $7c
	ld   [bc], a                                     ; $751b: $02
	xor  h                                           ; $751c: $ac
	dec  b                                           ; $751d: $05
	cp   e                                           ; $751e: $bb
	nop                                              ; $751f: $00
	ld   bc, $d507                                   ; $7520: $01 $07 $d5
	inc  bc                                          ; $7523: $03
	ld   [bc], a                                     ; $7524: $02
	inc  bc                                          ; $7525: $03
	ld   bc, $2000                                   ; $7526: $01 $00 $20
	nop                                              ; $7529: $00
	rlca                                             ; $752a: $07
	rla                                              ; $752b: $17
	inc  b                                           ; $752c: $04
	ld   [bc], a                                     ; $752d: $02
	inc  bc                                          ; $752e: $03
	ld   bc, $2001                                   ; $752f: $01 $01 $20
	nop                                              ; $7532: $00
	ld   b, $84                                      ; $7533: $06 $84
	ld   [bc], a                                     ; $7535: $02
	rrca                                             ; $7536: $0f
	nop                                              ; $7537: $00
	ld   bc, $d701                                   ; $7538: $01 $01 $d7
	xor  $fb                                         ; $753b: $ee $fb
	xor  h                                           ; $753d: $ac
	ei                                               ; $753e: $fb
	and  b                                           ; $753f: $a0
	dec  c                                           ; $7540: $0d
	inc  bc                                          ; $7541: $03
	cp   $87                                         ; $7542: $fe $87
	ld   [hl], h                                     ; $7544: $74
	adc  l                                           ; $7545: $8d
	ld   l, l                                        ; $7546: $6d
	sub  a                                           ; $7547: $97
	ld   [hl], a                                     ; $7548: $77
	ld   d, h                                        ; $7549: $54
	ld   [hl], l                                     ; $754a: $75
	ld   h, a                                        ; $754b: $67
	ld   e, c                                        ; $754c: $59
	ld   sp, hl                                      ; $754d: $f9
	dec  c                                           ; $754e: $0d
	nop                                              ; $754f: $00
	ld   a, [bc]                                     ; $7550: $0a
	inc  e                                           ; $7551: $1c
	ld   b, $05                                      ; $7552: $06 $05
	dec  b                                           ; $7554: $05
	ld   bc, $eed7                                   ; $7555: $01 $d7 $ee
	ei                                               ; $7558: $fb
	xor  h                                           ; $7559: $ac
	ei                                               ; $755a: $fb
	rst  $38                                         ; $755b: $ff
	inc  bc                                          ; $755c: $03
	db   $e4                                         ; $755d: $e4
	ld   [bc], a                                     ; $755e: $02
	and  c                                           ; $755f: $a1
	ld   sp, hl                                      ; $7560: $f9
	dec  c                                           ; $7561: $0d
	dec  b                                           ; $7562: $05
	add  c                                           ; $7563: $81
	halt                                             ; $7564: $76
	ld   [bc], a                                     ; $7565: $02
	ld   c, d                                        ; $7566: $4a
	ld   [bc], a                                     ; $7567: $02
	ld   c, e                                        ; $7568: $4b
	ld   a, b                                        ; $7569: $78
	ld   d, d                                        ; $756a: $52
	ld   h, [hl]                                     ; $756b: $66
	sub  c                                           ; $756c: $91
	and  c                                           ; $756d: $a1
	ld   e, c                                        ; $756e: $59
	sub  [hl]                                        ; $756f: $96
	db   $fc                                         ; $7570: $fc
	sbc  a                                           ; $7571: $9f
	dec  c                                           ; $7572: $0d
	nop                                              ; $7573: $00
	ld   a, [bc]                                     ; $7574: $0a
	ld   b, $a3                                      ; $7575: $06 $a3
	inc  b                                           ; $7577: $04
	rrca                                             ; $7578: $0f
	nop                                              ; $7579: $00
	ld   bc, $ad01                                   ; $757a: $01 $01 $ad
	cp   d                                           ; $757d: $ba
	ld   a, h                                        ; $757e: $7c
	ld   [bc], a                                     ; $757f: $02
	xor  h                                           ; $7580: $ac
	dec  b                                           ; $7581: $05
	cp   e                                           ; $7582: $bb
	and  b                                           ; $7583: $a0
	ld   h, l                                        ; $7584: $65
	sub  a                                           ; $7585: $97
	add  a                                           ; $7586: $87
	sbc  d                                           ; $7587: $9a
	ld   a, [hl]                                     ; $7588: $7e
	dec  c                                           ; $7589: $0d
	ld   d, d                                        ; $758a: $52
	ld   d, d                                        ; $758b: $52
	and  c                                           ; $758c: $a1
	ld   h, [hl]                                     ; $758d: $66
	sub  c                                           ; $758e: $91
	ld   a, b                                        ; $758f: $78
	ld   d, d                                        ; $7590: $52
	ld   [hl], l                                     ; $7591: $75
	ld   h, a                                        ; $7592: $67
	ld   e, c                                        ; $7593: $59
	ld   sp, hl                                      ; $7594: $f9
	dec  c                                           ; $7595: $0d
	nop                                              ; $7596: $00
	ld   a, [bc]                                     ; $7597: $0a
	inc  e                                           ; $7598: $1c
	ld   b, $00                                      ; $7599: $06 $00
	nop                                              ; $759b: $00
	ld   bc, $baad                                   ; $759c: $01 $ad $ba
	ld   a, h                                        ; $759f: $7c
	ld   [bc], a                                     ; $75a0: $02
	xor  h                                           ; $75a1: $ac
	dec  b                                           ; $75a2: $05
	cp   e                                           ; $75a3: $bb
	rst  $38                                         ; $75a4: $ff
	rst  $38                                         ; $75a5: $ff
	dec  c                                           ; $75a6: $0d
	ld   l, e                                        ; $75a7: $6b
	ld   d, h                                        ; $75a8: $54
	ld   l, [hl]                                     ; $75a9: $6e
	sub  [hl]                                        ; $75aa: $96
	sbc  [hl]                                        ; $75ab: $9e
	dec  b                                           ; $75ac: $05
	ld   b, l                                        ; $75ad: $45
	inc  b                                           ; $75ae: $04
	xor  d                                           ; $75af: $aa
	ld   a, h                                        ; $75b0: $7c
	inc  b                                           ; $75b1: $04
	rst  $28                                         ; $75b2: $ef
	ld   a, c                                        ; $75b3: $79
	dec  c                                           ; $75b4: $0d
	ld   [bc], a                                     ; $75b5: $02
	ld   c, a                                        ; $75b6: $4f
	ld   [bc], a                                     ; $75b7: $02
	jp   Jump_050_7465                               ; $75b8: $c3 $65 $74


	ld   l, l                                        ; $75bb: $6d
	adc  l                                           ; $75bc: $8d
	ld   l, l                                        ; $75bd: $6d
	ld   d, d                                        ; $75be: $52
	ld   l, [hl]                                     ; $75bf: $6e
	ld   [hl], c                                     ; $75c0: $71
	ld   l, l                                        ; $75c1: $6d
	ld   a, b                                        ; $75c2: $78
	rst  $38                                         ; $75c3: $ff
	rst  $38                                         ; $75c4: $ff
	dec  c                                           ; $75c5: $0d
	nop                                              ; $75c6: $00
	ld   a, [bc]                                     ; $75c7: $0a
	inc  e                                           ; $75c8: $1c
	ld   b, $01                                      ; $75c9: $06 $01
	ld   bc, $401d                                   ; $75cb: $01 $1d $40
	ld   d, $03                                      ; $75ce: $16 $03
	ld   d, $01                                      ; $75d0: $16 $01
	ld   [bc], a                                     ; $75d2: $02
	jr   z, jr_050_75d5                              ; $75d3: $28 $00

jr_050_75d5:
	ld   bc, $715b                                   ; $75d5: $01 $5b $71
	halt                                             ; $75d8: $76
	xor  l                                           ; $75d9: $ad
	cp   d                                           ; $75da: $ba
	ld   a, h                                        ; $75db: $7c
	ld   [bc], a                                     ; $75dc: $02
	xor  h                                           ; $75dd: $ac
	dec  b                                           ; $75de: $05
	cp   e                                           ; $75df: $bb
	and  b                                           ; $75e0: $a0
	dec  c                                           ; $75e1: $0d
	inc  b                                           ; $75e2: $04
	ld   l, [hl]                                     ; $75e3: $6e
	adc  a                                           ; $75e4: $8f
	ld   l, l                                        ; $75e5: $6d
	adc  h                                           ; $75e6: $8c
	adc  h                                           ; $75e7: $8c
	ld   a, b                                        ; $75e8: $78
	and  c                                           ; $75e9: $a1
	ld   l, [hl]                                     ; $75ea: $6e
	ld   a, [$b60d]                                  ; $75eb: $fa $0d $b6
	push af                                          ; $75ee: $f5
	xor  [hl]                                        ; $75ef: $ae
	rst  $20                                         ; $75f0: $e7
	ei                                               ; $75f1: $fb
	sbc  [hl]                                        ; $75f2: $9e
	ld   [$fa00], sp                                 ; $75f3: $08 $00 $fa
	dec  c                                           ; $75f6: $0d
	nop                                              ; $75f7: $00
	ld   a, [bc]                                     ; $75f8: $0a
	dec  c                                           ; $75f9: $0d
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	rrca                                             ; $75fc: $0f
	nop                                              ; $75fd: $00
	ld   bc, $0b0c                                   ; $75fe: $01 $0c $0b
	ld   b, $22                                      ; $7601: $06 $22
	rlca                                             ; $7603: $07
	add  hl, de                                      ; $7604: $19
	dec  b                                           ; $7605: $05
	ld   bc, $baad                                   ; $7606: $01 $ad $ba
	ld   a, h                                        ; $7609: $7c
	ld   [bc], a                                     ; $760a: $02
	xor  h                                           ; $760b: $ac
	dec  b                                           ; $760c: $05
	cp   e                                           ; $760d: $bb
	nop                                              ; $760e: $00
	nop                                              ; $760f: $00
	rlca                                             ; $7610: $07
	cp   e                                           ; $7611: $bb
	inc  b                                           ; $7612: $04
	ld   [bc], a                                     ; $7613: $02
	inc  bc                                          ; $7614: $03
	ld   bc, $2000                                   ; $7615: $01 $00 $20
	nop                                              ; $7618: $00
	ld   b, $84                                      ; $7619: $06 $84
	ld   [bc], a                                     ; $761b: $02
	rrca                                             ; $761c: $0f
	nop                                              ; $761d: $00
	ld   bc, $ad01                                   ; $761e: $01 $01 $ad
	cp   d                                           ; $7621: $ba
	ld   a, h                                        ; $7622: $7c
	ld   [bc], a                                     ; $7623: $02
	xor  h                                           ; $7624: $ac
	dec  b                                           ; $7625: $05
	cp   e                                           ; $7626: $bb
	and  b                                           ; $7627: $a0
	ld   h, l                                        ; $7628: $65
	sub  a                                           ; $7629: $97
	add  a                                           ; $762a: $87
	sbc  d                                           ; $762b: $9a
	ld   a, [hl]                                     ; $762c: $7e
	dec  c                                           ; $762d: $0d
	ld   d, d                                        ; $762e: $52
	ld   d, d                                        ; $762f: $52
	and  c                                           ; $7630: $a1
	ld   h, [hl]                                     ; $7631: $66
	sub  c                                           ; $7632: $91
	ld   a, b                                        ; $7633: $78
	ld   d, d                                        ; $7634: $52
	ld   [hl], l                                     ; $7635: $75
	ld   h, a                                        ; $7636: $67
	ld   e, c                                        ; $7637: $59
	ld   sp, hl                                      ; $7638: $f9
	dec  c                                           ; $7639: $0d
	nop                                              ; $763a: $00
	ld   a, [bc]                                     ; $763b: $0a
	inc  e                                           ; $763c: $1c
	ld   b, $00                                      ; $763d: $06 $00
	nop                                              ; $763f: $00
	ld   bc, $baad                                   ; $7640: $01 $ad $ba
	ld   a, h                                        ; $7643: $7c
	ld   [bc], a                                     ; $7644: $02
	xor  h                                           ; $7645: $ac
	dec  b                                           ; $7646: $05
	cp   e                                           ; $7647: $bb
	rst  $38                                         ; $7648: $ff
	rst  $38                                         ; $7649: $ff
	dec  c                                           ; $764a: $0d
	ld   l, e                                        ; $764b: $6b
	ld   d, h                                        ; $764c: $54
	ld   l, [hl]                                     ; $764d: $6e
	sub  [hl]                                        ; $764e: $96
	sbc  [hl]                                        ; $764f: $9e
	dec  b                                           ; $7650: $05
	ld   b, l                                        ; $7651: $45
	inc  b                                           ; $7652: $04
	xor  d                                           ; $7653: $aa
	ld   a, h                                        ; $7654: $7c
	inc  b                                           ; $7655: $04
	rst  $28                                         ; $7656: $ef
	ld   a, c                                        ; $7657: $79
	dec  c                                           ; $7658: $0d
	ld   [bc], a                                     ; $7659: $02
	ld   c, a                                        ; $765a: $4f
	ld   [bc], a                                     ; $765b: $02
	jp   Jump_050_7465                               ; $765c: $c3 $65 $74


	ld   l, l                                        ; $765f: $6d
	adc  l                                           ; $7660: $8d
	ld   l, l                                        ; $7661: $6d
	ld   d, d                                        ; $7662: $52
	ld   l, [hl]                                     ; $7663: $6e
	ld   [hl], c                                     ; $7664: $71
	ld   l, l                                        ; $7665: $6d
	ld   a, b                                        ; $7666: $78
	rst  $38                                         ; $7667: $ff
	rst  $38                                         ; $7668: $ff
	dec  c                                           ; $7669: $0d
	nop                                              ; $766a: $00
	ld   a, [bc]                                     ; $766b: $0a
	inc  e                                           ; $766c: $1c
	ld   b, $01                                      ; $766d: $06 $01
	ld   bc, $401d                                   ; $766f: $01 $1d $40
	ld   d, $03                                      ; $7672: $16 $03
	ld   d, $01                                      ; $7674: $16 $01
	ld   bc, $0028                                   ; $7676: $01 $28 $00
	ld   bc, $715b                                   ; $7679: $01 $5b $71
	halt                                             ; $767c: $76
	xor  l                                           ; $767d: $ad
	cp   d                                           ; $767e: $ba
	ld   a, h                                        ; $767f: $7c
	ld   [bc], a                                     ; $7680: $02
	xor  h                                           ; $7681: $ac
	dec  b                                           ; $7682: $05
	cp   e                                           ; $7683: $bb
	and  b                                           ; $7684: $a0
	dec  c                                           ; $7685: $0d
	inc  b                                           ; $7686: $04
	ld   l, [hl]                                     ; $7687: $6e
	adc  a                                           ; $7688: $8f
	ld   l, l                                        ; $7689: $6d
	adc  h                                           ; $768a: $8c
	adc  h                                           ; $768b: $8c
	ld   a, b                                        ; $768c: $78
	and  c                                           ; $768d: $a1
	ld   l, [hl]                                     ; $768e: $6e
	ld   a, [$520d]                                  ; $768f: $fa $0d $52
	ld   d, d                                        ; $7692: $52
	ld   l, h                                        ; $7693: $6c
	sbc  [hl]                                        ; $7694: $9e
	ld   [$9f00], sp                                 ; $7695: $08 $00 $9f
	dec  c                                           ; $7698: $0d
	nop                                              ; $7699: $00
	ld   a, [bc]                                     ; $769a: $0a
	dec  c                                           ; $769b: $0d
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	rrca                                             ; $769e: $0f
	nop                                              ; $769f: $00
	ld   bc, $0b0c                                   ; $76a0: $01 $0c $0b
	ld   b, $22                                      ; $76a3: $06 $22
	rlca                                             ; $76a5: $07
	rrca                                             ; $76a6: $0f
	nop                                              ; $76a7: $00
	ld   bc, $d701                                   ; $76a8: $01 $01 $d7
	xor  $fb                                         ; $76ab: $ee $fb
	xor  h                                           ; $76ad: $ac
	ei                                               ; $76ae: $fb
	and  b                                           ; $76af: $a0
	dec  c                                           ; $76b0: $0d
	ld   h, l                                        ; $76b1: $65
	sub  a                                           ; $76b2: $97
	add  a                                           ; $76b3: $87
	ld   [hl], h                                     ; $76b4: $74
	adc  l                                           ; $76b5: $8d
	ld   l, l                                        ; $76b6: $6d
	sub  a                                           ; $76b7: $97
	ld   [hl], a                                     ; $76b8: $77
	ld   d, h                                        ; $76b9: $54
	ld   [hl], l                                     ; $76ba: $75
	ld   h, a                                        ; $76bb: $67
	ld   e, c                                        ; $76bc: $59
	ld   sp, hl                                      ; $76bd: $f9
	dec  c                                           ; $76be: $0d
	nop                                              ; $76bf: $00
	ld   a, [bc]                                     ; $76c0: $0a
	inc  e                                           ; $76c1: $1c
	ld   b, $05                                      ; $76c2: $06 $05
	dec  b                                           ; $76c4: $05
	ld   bc, $eed7                                   ; $76c5: $01 $d7 $ee
	ei                                               ; $76c8: $fb
	xor  h                                           ; $76c9: $ac
	ei                                               ; $76ca: $fb
	rst  $38                                         ; $76cb: $ff
	sbc  [hl]                                        ; $76cc: $9e
	inc  bc                                          ; $76cd: $03
	db   $e4                                         ; $76ce: $e4
	ld   [bc], a                                     ; $76cf: $02
	and  c                                           ; $76d0: $a1
	ld   sp, hl                                      ; $76d1: $f9
	dec  c                                           ; $76d2: $0d
	dec  b                                           ; $76d3: $05
	add  c                                           ; $76d4: $81
	halt                                             ; $76d5: $76
	ld   [bc], a                                     ; $76d6: $02
	ld   c, d                                        ; $76d7: $4a
	ld   [bc], a                                     ; $76d8: $02
	ld   c, e                                        ; $76d9: $4b
	ld   a, b                                        ; $76da: $78
	ld   d, d                                        ; $76db: $52
	ld   h, [hl]                                     ; $76dc: $66
	sub  c                                           ; $76dd: $91
	and  c                                           ; $76de: $a1
	ld   e, c                                        ; $76df: $59
	sub  [hl]                                        ; $76e0: $96
	db   $fc                                         ; $76e1: $fc
	sbc  a                                           ; $76e2: $9f
	dec  c                                           ; $76e3: $0d
	nop                                              ; $76e4: $00
	ld   a, [bc]                                     ; $76e5: $0a
	add  hl, de                                      ; $76e6: $19
	dec  b                                           ; $76e7: $05
	ld   [bc], a                                     ; $76e8: $02
	inc  bc                                          ; $76e9: $03
	ld   e, c                                        ; $76ea: $59
	inc  b                                           ; $76eb: $04
	ld   d, $7c                                      ; $76ec: $16 $7c
	ld   [bc], a                                     ; $76ee: $02
	xor  h                                           ; $76ef: $ac
	dec  b                                           ; $76f0: $05
	cp   e                                           ; $76f1: $bb
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	xor  l                                           ; $76f4: $ad
	cp   d                                           ; $76f5: $ba
	ld   a, h                                        ; $76f6: $7c
	ld   [bc], a                                     ; $76f7: $02
	xor  h                                           ; $76f8: $ac
	dec  b                                           ; $76f9: $05
	cp   e                                           ; $76fa: $bb
	nop                                              ; $76fb: $00
	ld   bc, $b107                                   ; $76fc: $01 $07 $b1
	dec  b                                           ; $76ff: $05
	ld   [bc], a                                     ; $7700: $02
	inc  bc                                          ; $7701: $03
	ld   bc, $2000                                   ; $7702: $01 $00 $20
	nop                                              ; $7705: $00
	rlca                                             ; $7706: $07
	db   $f4                                         ; $7707: $f4
	dec  b                                           ; $7708: $05
	ld   [bc], a                                     ; $7709: $02
	inc  bc                                          ; $770a: $03
	ld   bc, $2001                                   ; $770b: $01 $01 $20
	nop                                              ; $770e: $00
	ld   b, $84                                      ; $770f: $06 $84
	ld   [bc], a                                     ; $7711: $02
	rrca                                             ; $7712: $0f
	nop                                              ; $7713: $00
	ld   bc, $0301                                   ; $7714: $01 $01 $03
	ld   e, c                                        ; $7717: $59
	inc  b                                           ; $7718: $04
	ld   d, $7c                                      ; $7719: $16 $7c
	ld   [bc], a                                     ; $771b: $02
	xor  h                                           ; $771c: $ac
	dec  b                                           ; $771d: $05
	cp   e                                           ; $771e: $bb
	and  b                                           ; $771f: $a0
	ld   h, l                                        ; $7720: $65
	sub  a                                           ; $7721: $97
	add  a                                           ; $7722: $87
	sbc  d                                           ; $7723: $9a
	ld   a, [hl]                                     ; $7724: $7e
	dec  c                                           ; $7725: $0d
	ld   d, d                                        ; $7726: $52
	ld   d, d                                        ; $7727: $52
	and  c                                           ; $7728: $a1
	ld   h, [hl]                                     ; $7729: $66
	sub  c                                           ; $772a: $91
	ld   a, b                                        ; $772b: $78
	ld   d, d                                        ; $772c: $52
	ld   [hl], l                                     ; $772d: $75
	ld   h, a                                        ; $772e: $67
	ld   e, c                                        ; $772f: $59
	ld   sp, hl                                      ; $7730: $f9
	dec  c                                           ; $7731: $0d
	nop                                              ; $7732: $00
	ld   a, [bc]                                     ; $7733: $0a
	inc  e                                           ; $7734: $1c
	ld   b, $05                                      ; $7735: $06 $05
	dec  b                                           ; $7737: $05
	ld   bc, $5903                                   ; $7738: $01 $03 $59
	inc  b                                           ; $773b: $04
	ld   d, $f9                                      ; $773c: $16 $f9
	dec  c                                           ; $773e: $0d
	dec  b                                           ; $773f: $05
	add  c                                           ; $7740: $81
	halt                                             ; $7741: $76
	ld   [bc], a                                     ; $7742: $02
	ld   c, d                                        ; $7743: $4a
	ld   [bc], a                                     ; $7744: $02
	ld   c, e                                        ; $7745: $4b
	ld   a, b                                        ; $7746: $78
	ld   d, d                                        ; $7747: $52
	ld   h, [hl]                                     ; $7748: $66
	sub  c                                           ; $7749: $91
	and  c                                           ; $774a: $a1
	ld   e, c                                        ; $774b: $59
	sub  [hl]                                        ; $774c: $96
	db   $fc                                         ; $774d: $fc
	sbc  a                                           ; $774e: $9f
	dec  c                                           ; $774f: $0d
	nop                                              ; $7750: $00
	ld   a, [bc]                                     ; $7751: $0a
	ld   b, $80                                      ; $7752: $06 $80
	ld   b, $0f                                      ; $7754: $06 $0f
	nop                                              ; $7756: $00
	ld   bc, $ad01                                   ; $7757: $01 $01 $ad
	cp   d                                           ; $775a: $ba
	ld   a, h                                        ; $775b: $7c
	ld   [bc], a                                     ; $775c: $02
	xor  h                                           ; $775d: $ac
	dec  b                                           ; $775e: $05
	cp   e                                           ; $775f: $bb
	and  b                                           ; $7760: $a0
	ld   h, l                                        ; $7761: $65
	sub  a                                           ; $7762: $97
	add  a                                           ; $7763: $87
	sbc  d                                           ; $7764: $9a
	ld   a, [hl]                                     ; $7765: $7e
	dec  c                                           ; $7766: $0d
	ld   d, d                                        ; $7767: $52
	ld   d, d                                        ; $7768: $52
	and  c                                           ; $7769: $a1
	ld   h, [hl]                                     ; $776a: $66
	sub  c                                           ; $776b: $91
	ld   a, b                                        ; $776c: $78
	ld   d, d                                        ; $776d: $52
	ld   [hl], l                                     ; $776e: $75
	ld   h, a                                        ; $776f: $67
	ld   e, c                                        ; $7770: $59
	ld   sp, hl                                      ; $7771: $f9
	dec  c                                           ; $7772: $0d
	nop                                              ; $7773: $00
	ld   a, [bc]                                     ; $7774: $0a
	inc  e                                           ; $7775: $1c
	ld   b, $00                                      ; $7776: $06 $00
	nop                                              ; $7778: $00
	ld   bc, $baad                                   ; $7779: $01 $ad $ba
	ld   a, h                                        ; $777c: $7c
	ld   [bc], a                                     ; $777d: $02
	xor  h                                           ; $777e: $ac
	dec  b                                           ; $777f: $05
	cp   e                                           ; $7780: $bb
	rst  $38                                         ; $7781: $ff
	rst  $38                                         ; $7782: $ff
	dec  c                                           ; $7783: $0d
	ld   l, e                                        ; $7784: $6b
	ld   d, h                                        ; $7785: $54
	ld   l, [hl]                                     ; $7786: $6e
	sub  [hl]                                        ; $7787: $96
	sbc  [hl]                                        ; $7788: $9e
	dec  b                                           ; $7789: $05
	ld   b, l                                        ; $778a: $45
	inc  b                                           ; $778b: $04
	xor  d                                           ; $778c: $aa
	ld   a, h                                        ; $778d: $7c
	inc  b                                           ; $778e: $04
	rst  $28                                         ; $778f: $ef
	ld   a, c                                        ; $7790: $79
	dec  c                                           ; $7791: $0d
	ld   [bc], a                                     ; $7792: $02
	ld   c, a                                        ; $7793: $4f
	ld   [bc], a                                     ; $7794: $02
	jp   Jump_050_7465                               ; $7795: $c3 $65 $74


	ld   l, l                                        ; $7798: $6d
	adc  l                                           ; $7799: $8d
	ld   l, l                                        ; $779a: $6d
	ld   d, d                                        ; $779b: $52
	ld   l, [hl]                                     ; $779c: $6e
	ld   [hl], c                                     ; $779d: $71
	ld   l, l                                        ; $779e: $6d
	ld   a, b                                        ; $779f: $78
	rst  $38                                         ; $77a0: $ff
	rst  $38                                         ; $77a1: $ff
	dec  c                                           ; $77a2: $0d
	nop                                              ; $77a3: $00
	ld   a, [bc]                                     ; $77a4: $0a
	inc  e                                           ; $77a5: $1c
	ld   b, $01                                      ; $77a6: $06 $01
	ld   bc, $401d                                   ; $77a8: $01 $1d $40
	ld   d, $03                                      ; $77ab: $16 $03
	ld   d, $01                                      ; $77ad: $16 $01
	ld   [bc], a                                     ; $77af: $02
	jr   z, jr_050_77b2                              ; $77b0: $28 $00

jr_050_77b2:
	ld   bc, $715b                                   ; $77b2: $01 $5b $71
	halt                                             ; $77b5: $76
	xor  l                                           ; $77b6: $ad
	cp   d                                           ; $77b7: $ba
	ld   a, h                                        ; $77b8: $7c
	ld   [bc], a                                     ; $77b9: $02
	xor  h                                           ; $77ba: $ac
	dec  b                                           ; $77bb: $05
	cp   e                                           ; $77bc: $bb
	and  b                                           ; $77bd: $a0
	dec  c                                           ; $77be: $0d
	inc  b                                           ; $77bf: $04
	ld   l, [hl]                                     ; $77c0: $6e
	adc  a                                           ; $77c1: $8f
	ld   l, l                                        ; $77c2: $6d
	adc  h                                           ; $77c3: $8c
	adc  h                                           ; $77c4: $8c
	ld   a, b                                        ; $77c5: $78
	and  c                                           ; $77c6: $a1
	ld   l, [hl]                                     ; $77c7: $6e
	ld   a, [$b60d]                                  ; $77c8: $fa $0d $b6
	push af                                          ; $77cb: $f5
	xor  [hl]                                        ; $77cc: $ae
	rst  $20                                         ; $77cd: $e7
	ei                                               ; $77ce: $fb
	sbc  [hl]                                        ; $77cf: $9e
	ld   [$fa00], sp                                 ; $77d0: $08 $00 $fa
	dec  c                                           ; $77d3: $0d
	nop                                              ; $77d4: $00
	ld   a, [bc]                                     ; $77d5: $0a
	dec  c                                           ; $77d6: $0d
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	rrca                                             ; $77d9: $0f
	nop                                              ; $77da: $00
	ld   bc, $0b0c                                   ; $77db: $01 $0c $0b
	ld   b, $22                                      ; $77de: $06 $22
	rlca                                             ; $77e0: $07
	add  hl, de                                      ; $77e1: $19
	dec  b                                           ; $77e2: $05
	ld   bc, $baad                                   ; $77e3: $01 $ad $ba
	ld   a, h                                        ; $77e6: $7c
	ld   [bc], a                                     ; $77e7: $02
	xor  h                                           ; $77e8: $ac
	dec  b                                           ; $77e9: $05
	cp   e                                           ; $77ea: $bb
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	rlca                                             ; $77ed: $07
	sbc  b                                           ; $77ee: $98
	ld   b, $02                                      ; $77ef: $06 $02
	inc  bc                                          ; $77f1: $03
	ld   bc, $2000                                   ; $77f2: $01 $00 $20
	nop                                              ; $77f5: $00
	ld   b, $84                                      ; $77f6: $06 $84
	ld   [bc], a                                     ; $77f8: $02
	rrca                                             ; $77f9: $0f
	nop                                              ; $77fa: $00
	ld   bc, $ad01                                   ; $77fb: $01 $01 $ad
	cp   d                                           ; $77fe: $ba
	ld   a, h                                        ; $77ff: $7c
	ld   [bc], a                                     ; $7800: $02
	xor  h                                           ; $7801: $ac
	dec  b                                           ; $7802: $05
	cp   e                                           ; $7803: $bb
	and  b                                           ; $7804: $a0
	inc  bc                                          ; $7805: $03
	cp   $87                                         ; $7806: $fe $87
	sbc  d                                           ; $7808: $9a
	ld   a, [hl]                                     ; $7809: $7e
	dec  c                                           ; $780a: $0d
	ld   d, d                                        ; $780b: $52
	ld   d, d                                        ; $780c: $52
	and  c                                           ; $780d: $a1
	ld   h, [hl]                                     ; $780e: $66
	sub  c                                           ; $780f: $91
	ld   a, b                                        ; $7810: $78
	ld   d, d                                        ; $7811: $52
	ld   [hl], l                                     ; $7812: $75
	ld   h, a                                        ; $7813: $67
	ld   e, c                                        ; $7814: $59
	ld   sp, hl                                      ; $7815: $f9
	dec  c                                           ; $7816: $0d
	nop                                              ; $7817: $00
	ld   a, [bc]                                     ; $7818: $0a
	inc  e                                           ; $7819: $1c
	ld   b, $00                                      ; $781a: $06 $00
	nop                                              ; $781c: $00
	ld   bc, $baad                                   ; $781d: $01 $ad $ba
	ld   a, h                                        ; $7820: $7c
	ld   [bc], a                                     ; $7821: $02
	xor  h                                           ; $7822: $ac
	dec  b                                           ; $7823: $05
	cp   e                                           ; $7824: $bb
	rst  $38                                         ; $7825: $ff
	rst  $38                                         ; $7826: $ff
	dec  c                                           ; $7827: $0d
	ld   l, e                                        ; $7828: $6b
	ld   d, h                                        ; $7829: $54
	ld   l, [hl]                                     ; $782a: $6e
	sub  [hl]                                        ; $782b: $96
	sbc  [hl]                                        ; $782c: $9e
	dec  b                                           ; $782d: $05
	ld   b, l                                        ; $782e: $45
	inc  b                                           ; $782f: $04
	xor  d                                           ; $7830: $aa
	ld   a, h                                        ; $7831: $7c
	inc  b                                           ; $7832: $04
	rst  $28                                         ; $7833: $ef
	ld   a, c                                        ; $7834: $79
	dec  c                                           ; $7835: $0d
	ld   [bc], a                                     ; $7836: $02
	ld   c, a                                        ; $7837: $4f
	ld   [bc], a                                     ; $7838: $02
	jp   Jump_050_7465                               ; $7839: $c3 $65 $74


	ld   l, l                                        ; $783c: $6d
	adc  l                                           ; $783d: $8d
	ld   l, l                                        ; $783e: $6d
	ld   d, d                                        ; $783f: $52
	ld   l, [hl]                                     ; $7840: $6e
	ld   [hl], c                                     ; $7841: $71
	ld   l, l                                        ; $7842: $6d
	ld   a, b                                        ; $7843: $78
	rst  $38                                         ; $7844: $ff
	rst  $38                                         ; $7845: $ff
	dec  c                                           ; $7846: $0d
	nop                                              ; $7847: $00
	ld   a, [bc]                                     ; $7848: $0a
	inc  e                                           ; $7849: $1c
	ld   b, $01                                      ; $784a: $06 $01
	ld   bc, $401d                                   ; $784c: $01 $1d $40
	ld   d, $03                                      ; $784f: $16 $03
	ld   d, $01                                      ; $7851: $16 $01
	ld   bc, $0028                                   ; $7853: $01 $28 $00
	ld   bc, $715b                                   ; $7856: $01 $5b $71

Jump_050_7859:
	halt                                             ; $7859: $76
	xor  l                                           ; $785a: $ad
	cp   d                                           ; $785b: $ba
	ld   a, h                                        ; $785c: $7c
	ld   [bc], a                                     ; $785d: $02
	xor  h                                           ; $785e: $ac
	dec  b                                           ; $785f: $05
	cp   e                                           ; $7860: $bb
	and  b                                           ; $7861: $a0
	dec  c                                           ; $7862: $0d
	inc  b                                           ; $7863: $04
	ld   l, [hl]                                     ; $7864: $6e
	adc  a                                           ; $7865: $8f
	ld   l, l                                        ; $7866: $6d
	adc  h                                           ; $7867: $8c
	adc  h                                           ; $7868: $8c
	ld   a, b                                        ; $7869: $78
	and  c                                           ; $786a: $a1
	ld   l, [hl]                                     ; $786b: $6e
	ld   a, [$520d]                                  ; $786c: $fa $0d $52
	ld   d, d                                        ; $786f: $52
	ld   l, h                                        ; $7870: $6c
	sbc  [hl]                                        ; $7871: $9e
	ld   [$9f00], sp                                 ; $7872: $08 $00 $9f
	dec  c                                           ; $7875: $0d
	nop                                              ; $7876: $00
	ld   a, [bc]                                     ; $7877: $0a
	dec  c                                           ; $7878: $0d
	nop                                              ; $7879: $00
	nop                                              ; $787a: $00
	rrca                                             ; $787b: $0f
	nop                                              ; $787c: $00
	ld   bc, $0b0c                                   ; $787d: $01 $0c $0b
	ld   b, $22                                      ; $7880: $06 $22
	rlca                                             ; $7882: $07
	inc  e                                           ; $7883: $1c
	ld   b, $00                                      ; $7884: $06 $00
	nop                                              ; $7886: $00
	ld   bc, $0008                                   ; $7887: $01 $08 $00
	sbc  a                                           ; $788a: $9f
	dec  c                                           ; $788b: $0d
	sub  d                                           ; $788c: $92
	ld   [hl], c                                     ; $788d: $71
	ld   a, a                                        ; $788e: $7f
	sbc  b                                           ; $788f: $98
	sbc  [hl]                                        ; $7890: $9e
	xor  l                                           ; $7891: $ad
	cp   d                                           ; $7892: $ba
	ld   a, h                                        ; $7893: $7c
	ld   [bc], a                                     ; $7894: $02
	xor  h                                           ; $7895: $ac
	dec  b                                           ; $7896: $05
	cp   e                                           ; $7897: $bb
	dec  c                                           ; $7898: $0d
	ld   l, [hl]                                     ; $7899: $6e
	ld   [hl], c                                     ; $789a: $71
	ld   l, l                                        ; $789b: $6d
	ld   l, d                                        ; $789c: $6a
	sbc  a                                           ; $789d: $9f
	dec  c                                           ; $789e: $0d
	nop                                              ; $789f: $00
	ld   a, [bc]                                     ; $78a0: $0a
	inc  e                                           ; $78a1: $1c
	ld   b, $01                                      ; $78a2: $06 $01
	ld   bc, $8301                                   ; $78a4: $01 $01 $83
	ld   d, h                                        ; $78a7: $54
	rst  $38                                         ; $78a8: $ff
	sbc  [hl]                                        ; $78a9: $9e
	ld   h, c                                        ; $78aa: $61
	sbc  d                                           ; $78ab: $9a
	ld   [hl], l                                     ; $78ac: $75
	inc  b                                           ; $78ad: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78ae: $cf
	inc  b                                           ; $78af: $04
	xor  d                                           ; $78b0: $aa
	ld   a, l                                        ; $78b1: $7d
	ld   l, a                                        ; $78b2: $6f
	sub  c                                           ; $78b3: $91
	and  c                                           ; $78b4: $a1
	halt                                             ; $78b5: $76
	dec  c                                           ; $78b6: $0d
	db   $e3                                         ; $78b7: $e3
	cp   b                                           ; $78b8: $b8
	ld   e, d                                        ; $78b9: $5a
	inc  bc                                          ; $78ba: $03
	ld   l, d                                        ; $78bb: $6a
	ld   d, [hl]                                     ; $78bc: $56
	sbc  c                                           ; $78bd: $99
	ld   a, b                                        ; $78be: $78
	sbc  a                                           ; $78bf: $9f
	dec  c                                           ; $78c0: $0d
	ld   [bc], a                                     ; $78c1: $02
	ld   h, $03                                      ; $78c2: $26 $03
	ld   [hl], l                                     ; $78c4: $75
	ld   h, l                                        ; $78c5: $65
	ld   [hl], h                                     ; $78c6: $74
	inc  b                                           ; $78c7: $04
	adc  $9a                                         ; $78c8: $ce $9a
	sbc  c                                           ; $78ca: $99
	ld   l, d                                        ; $78cb: $6a
	sbc  a                                           ; $78cc: $9f
	dec  c                                           ; $78cd: $0d
	nop                                              ; $78ce: $00
	ld   a, [bc]                                     ; $78cf: $0a
	ld   bc, $0008                                   ; $78d0: $01 $08 $00
	sbc  a                                           ; $78d3: $9f
	dec  c                                           ; $78d4: $0d
	ld   e, b                                        ; $78d5: $58
	inc  b                                           ; $78d6: $04
	ld   a, e                                        ; $78d7: $7b
	sbc  d                                           ; $78d8: $9a
	ld   h, e                                        ; $78d9: $63
	and  c                                           ; $78da: $a1
	ld   l, [hl]                                     ; $78db: $6e
	ld   [hl], c                                     ; $78dc: $71
	ld   l, l                                        ; $78dd: $6d
	ld   a, b                                        ; $78de: $78
	sbc  a                                           ; $78df: $9f
	dec  c                                           ; $78e0: $0d
	ld   h, [hl]                                     ; $78e1: $66
	sub  c                                           ; $78e2: $91
	sbc  [hl]                                        ; $78e3: $9e
	ld   e, b                                        ; $78e4: $58
	sub  d                                           ; $78e5: $92
	ld   h, a                                        ; $78e6: $67
	adc  l                                           ; $78e7: $8d
	sbc  a                                           ; $78e8: $9f
	dec  c                                           ; $78e9: $0d
	nop                                              ; $78ea: $00
	ld   a, [bc]                                     ; $78eb: $0a
	dec  c                                           ; $78ec: $0d
	nop                                              ; $78ed: $00
	nop                                              ; $78ee: $00
	rrca                                             ; $78ef: $0f
	nop                                              ; $78f0: $00
	ld   bc, $1e09                                   ; $78f1: $01 $09 $1e
	add  hl, hl                                      ; $78f4: $29
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	inc  b                                           ; $78f8: $04
	add  b                                           ; $78f9: $80
	ld   l, b                                        ; $78fa: $68
	ld   bc, $20ff                                   ; $78fb: $01 $ff $20
	inc  bc                                          ; $78fe: $03
	ld   h, a                                        ; $78ff: $67
	ld   [bc], a                                     ; $7900: $02
	nop                                              ; $7901: $00
	jr   nz, jr_050_7920                             ; $7902: $20 $1c

	nop                                              ; $7904: $00
	ld   c, $46                                      ; $7905: $0e $46
	rrca                                             ; $7907: $0f
	nop                                              ; $7908: $00
	ld   bc, $1402                                   ; $7909: $01 $02 $14
	ld   b, $01                                      ; $790c: $06 $01
	ld   bc, $ecdf                                   ; $790e: $01 $df $ec
	and  e                                           ; $7911: $a3
	ld   h, e                                        ; $7912: $63
	and  c                                           ; $7913: $a1
	sbc  [hl]                                        ; $7914: $9e
	dec  c                                           ; $7915: $0d
	nop                                              ; $7916: $00
	dec  b                                           ; $7917: $05
	add  b                                           ; $7918: $80
	ld   l, c                                        ; $7919: $69
	ld   bc, $0001                                   ; $791a: $01 $01 $00
	ld   bc, $9752                                   ; $791d: $01 $52 $97

jr_050_7920:
	ld   [hl], c                                     ; $7920: $71
	ld   h, l                                        ; $7921: $65
	sub  c                                           ; $7922: $91
	ld   d, d                                        ; $7923: $52
	adc  h                                           ; $7924: $8c
	ld   h, a                                        ; $7925: $67
	ld   e, c                                        ; $7926: $59
	ld   sp, hl                                      ; $7927: $f9
	dec  c                                           ; $7928: $0d
	nop                                              ; $7929: $00
	ld   a, [bc]                                     ; $792a: $0a
	ld   bc, $6759                                   ; $792b: $01 $59 $67
	adc  l                                           ; $792e: $8d
	ld   h, e                                        ; $792f: $63
	and  c                                           ; $7930: $a1
	ld   e, c                                        ; $7931: $59
	sub  a                                           ; $7932: $97
	sbc  [hl]                                        ; $7933: $9e
	ld   d, b                                        ; $7934: $50
	ld   l, b                                        ; $7935: $68
	ld   e, c                                        ; $7936: $59
	ld   [hl], c                                     ; $7937: $71
	ld   l, l                                        ; $7938: $6d
	dec  c                                           ; $7939: $0d
	sub  $a2                                         ; $793a: $d6 $a2
	push af                                          ; $793c: $f5
	xor  $c0                                         ; $793d: $ee $c0
	ei                                               ; $793f: $fb
	and  b                                           ; $7940: $a0
	ld   e, b                                        ; $7941: $58
	inc  b                                           ; $7942: $04
	ld   b, $5f                                      ; $7943: $06 $5f
	ld   a, c                                        ; $7945: $79
	dec  c                                           ; $7946: $0d
	ld   d, b                                        ; $7947: $50
	ld   e, d                                        ; $7948: $5a
	sbc  b                                           ; $7949: $98
	adc  h                                           ; $794a: $8c
	ld   h, l                                        ; $794b: $65
	ld   l, l                                        ; $794c: $6d
	sbc  a                                           ; $794d: $9f
	dec  c                                           ; $794e: $0d
	nop                                              ; $794f: $00
	ld   a, [bc]                                     ; $7950: $0a
	rlca                                             ; $7951: $07
	ret  nz                                          ; $7952: $c0

	nop                                              ; $7953: $00
	inc  bc                                          ; $7954: $03
	inc  de                                          ; $7955: $13
	ld   bc, $227b                                   ; $7956: $01 $7b $22
	nop                                              ; $7959: $00
	rrca                                             ; $795a: $0f
	inc  bc                                          ; $795b: $03
	nop                                              ; $795c: $00
	ld   bc, $9e50                                   ; $795d: $01 $50 $9e
	ld   [bc], a                                     ; $7960: $02
	and  l                                           ; $7961: $a5
	ld   [bc], a                                     ; $7962: $02
	adc  b                                           ; $7963: $88
	ld   e, a                                        ; $7964: $5f
	sbc  c                                           ; $7965: $99
	sbc  l                                           ; $7966: $9d
	sbc  a                                           ; $7967: $9f
	dec  c                                           ; $7968: $0d
	nop                                              ; $7969: $00
	ld   a, [bc]                                     ; $796a: $0a
	inc  d                                           ; $796b: $14
	ld   a, [bc]                                     ; $796c: $0a
	ld   bc, $470e                                   ; $796d: $01 $0e $47
	rrca                                             ; $7970: $0f
	nop                                              ; $7971: $00
	ld   bc, $030d                                   ; $7972: $01 $0d $03
	inc  bc                                          ; $7975: $03
	ld   bc, $527d                                   ; $7976: $01 $7d $52
	sbc  [hl]                                        ; $7979: $9e
	rst  JumpTable                                         ; $797a: $df
	db   $ec                                         ; $797b: $ec
	and  e                                           ; $797c: $a3
	ld   h, e                                        ; $797d: $63
	and  c                                           ; $797e: $a1
	sbc  a                                           ; $797f: $9f
	dec  c                                           ; $7980: $0d
	sub  $a2                                         ; $7981: $d6 $a2
	push af                                          ; $7983: $f5
	xor  $c0                                         ; $7984: $ee $c0
	ei                                               ; $7986: $fb
	ld   [hl], l                                     ; $7987: $75
	ld   h, a                                        ; $7988: $67
	sbc  a                                           ; $7989: $9f
	dec  c                                           ; $798a: $0d
	nop                                              ; $798b: $00
	ld   a, [bc]                                     ; $798c: $0a
	dec  c                                           ; $798d: $0d
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	db   $10                                         ; $7990: $10
	ld   de, $1c00                                   ; $7991: $11 $00 $1c
	inc  bc                                          ; $7994: $03
	inc  bc                                          ; $7995: $03
	inc  bc                                          ; $7996: $03
	dec  e                                           ; $7997: $1d
	ld   b, b                                        ; $7998: $40
	inc  de                                          ; $7999: $13
	inc  bc                                          ; $799a: $03
	inc  de                                          ; $799b: $13
	ld   bc, $2802                                   ; $799c: $01 $02 $28
	nop                                              ; $799f: $00
	ld   bc, $649d                                   ; $79a0: $01 $9d $64
	sbc  l                                           ; $79a3: $9d
	ld   h, h                                        ; $79a4: $64
	ld   [bc], a                                     ; $79a5: $02
	jr   z, jr_050_79fa                              ; $79a6: $28 $52

	sbc  l                                           ; $79a8: $9d
	ld   a, e                                        ; $79a9: $7b
	sbc  a                                           ; $79aa: $9f
	dec  c                                           ; $79ab: $0d
	ld   [$5d00], sp                                 ; $79ac: $08 $00 $5d
	and  c                                           ; $79af: $a1
	sbc  [hl]                                        ; $79b0: $9e
	dec  c                                           ; $79b1: $0d
	ld   d, b                                        ; $79b2: $50
	sbc  b                                           ; $79b3: $98
	ld   e, d                                        ; $79b4: $5a
	halt                                             ; $79b5: $76
	ld   d, h                                        ; $79b6: $54
	rst  $38                                         ; $79b7: $ff
	rst  $38                                         ; $79b8: $ff
	dec  c                                           ; $79b9: $0d
	nop                                              ; $79ba: $00
	ld   a, [bc]                                     ; $79bb: $0a
	dec  c                                           ; $79bc: $0d
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	rrca                                             ; $79bf: $0f
	nop                                              ; $79c0: $00
	ld   bc, $1e09                                   ; $79c1: $01 $09 $1e
	nop                                              ; $79c4: $00
	rrca                                             ; $79c5: $0f
	inc  bc                                          ; $79c6: $03
	nop                                              ; $79c7: $00
	dec  e                                           ; $79c8: $1d
	ld   b, b                                        ; $79c9: $40
	inc  de                                          ; $79ca: $13
	inc  bc                                          ; $79cb: $03
	inc  de                                          ; $79cc: $13
	ld   bc, $2802                                   ; $79cd: $01 $02 $28
	nop                                              ; $79d0: $00
	ld   bc, $9e50                                   ; $79d1: $01 $50 $9e
	ld   [bc], a                                     ; $79d4: $02
	jr   z, jr_050_7a29                              ; $79d5: $28 $52

	ld   e, a                                        ; $79d7: $5f
	ld   [hl], a                                     ; $79d8: $77
	rst  $38                                         ; $79d9: $ff
	rst  $38                                         ; $79da: $ff
	dec  c                                           ; $79db: $0d
	ld   [bc], a                                     ; $79dc: $02
	and  l                                           ; $79dd: $a5
	ld   l, a                                        ; $79de: $6f
	sub  l                                           ; $79df: $95
	ld   [hl], c                                     ; $79e0: $71
	halt                                             ; $79e1: $76
	inc  bc                                          ; $79e2: $03
	ld   l, e                                        ; $79e3: $6b
	ld   e, d                                        ; $79e4: $5a
	ld   a, l                                        ; $79e5: $7d
	ld   a, b                                        ; $79e6: $78
	ld   l, c                                        ; $79e7: $69
	ld   a, b                                        ; $79e8: $78
	ld   d, d                                        ; $79e9: $52
	ld   e, c                                        ; $79ea: $59
	sub  a                                           ; $79eb: $97
	dec  c                                           ; $79ec: $0d
	jp   z, Jump_050_7ca3                            ; $79ed: $ca $a3 $7c

	inc  bc                                          ; $79f0: $03
	ld   c, a                                        ; $79f1: $4f
	ld   a, c                                        ; $79f2: $79
	inc  b                                           ; $79f3: $04
	jr   z, jr_050_7a48                              ; $79f4: $28 $52

	ld   [hl], h                                     ; $79f6: $74
	ld   e, b                                        ; $79f7: $58
	ld   d, d                                        ; $79f8: $52
	ld   [hl], h                                     ; $79f9: $74

jr_050_79fa:
	sbc  a                                           ; $79fa: $9f
	dec  c                                           ; $79fb: $0d
	nop                                              ; $79fc: $00
	ld   a, [bc]                                     ; $79fd: $0a
	rrca                                             ; $79fe: $0f
	nop                                              ; $79ff: $00
	ld   bc, $7d01                                   ; $7a00: $01 $01 $7d
	ld   d, d                                        ; $7a03: $52
	sbc  [hl]                                        ; $7a04: $9e
	sbc  l                                           ; $7a05: $9d
	ld   e, c                                        ; $7a06: $59
	sbc  b                                           ; $7a07: $98
	adc  h                                           ; $7a08: $8c
	ld   h, l                                        ; $7a09: $65
	ld   l, l                                        ; $7a0a: $6d
	sbc  a                                           ; $7a0b: $9f
	dec  c                                           ; $7a0c: $0d
	nop                                              ; $7a0d: $00
	ld   a, [bc]                                     ; $7a0e: $0a
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	inc  b                                           ; $7a11: $04
	add  b                                           ; $7a12: $80
	ld   h, $01                                      ; $7a13: $26 $01
	rst  $38                                         ; $7a15: $ff
	jr   nz, jr_050_7a18                             ; $7a16: $20 $00

jr_050_7a18:
	rrca                                             ; $7a18: $0f
	nop                                              ; $7a19: $00
	ld   bc, $050d                                   ; $7a1a: $01 $0d $05
	nop                                              ; $7a1d: $00

jr_050_7a1e:
	ld   [bc], a                                     ; $7a1e: $02
	ld   bc, $0301                                   ; $7a1f: $01 $01 $03
	ld   d, b                                        ; $7a22: $50
	sbc  [hl]                                        ; $7a23: $9e
	ld   [bc], a                                     ; $7a24: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a25: $cf
	dec  b                                           ; $7a26: $05
	ld   a, [de]                                     ; $7a27: $1a
	ld   h, e                                        ; $7a28: $63

jr_050_7a29:
	and  c                                           ; $7a29: $a1
	ld   l, [hl]                                     ; $7a2a: $6e
	sbc  a                                           ; $7a2b: $9f
	dec  c                                           ; $7a2c: $0d
	db   $10                                         ; $7a2d: $10
	ld   l, e                                        ; $7a2e: $6b
	ld   d, h                                        ; $7a2f: $54
	ld   l, [hl]                                     ; $7a30: $6e
	sbc  [hl]                                        ; $7a31: $9e
	inc  b                                           ; $7a32: $04
	pop  hl                                          ; $7a33: $e1
	inc  b                                           ; $7a34: $04
	rst  $38                                         ; $7a35: $ff
	ld   h, e                                        ; $7a36: $63
	and  c                                           ; $7a37: $a1
	ld   e, c                                        ; $7a38: $59
	sub  a                                           ; $7a39: $97
	ld   [bc], a                                     ; $7a3a: $02
	jp   nz, Jump_050_6d52                           ; $7a3b: $c2 $52 $6d

	dec  c                                           ; $7a3e: $0d
	db   $10                                         ; $7a3f: $10
	and  a                                           ; $7a40: $a7
	pop  af                                          ; $7a41: $f1
	or   [hl]                                        ; $7a42: $b6
	and  b                                           ; $7a43: $a0
	ld   l, l                                        ; $7a44: $6d
	ld   h, l                                        ; $7a45: $65
	ld   e, c                                        ; $7a46: $59
	adc  a                                           ; $7a47: $8f

jr_050_7a48:
	ld   [hl], h                                     ; $7a48: $74
	adc  l                                           ; $7a49: $8d
	sub  [hl]                                        ; $7a4a: $96
	ld   d, h                                        ; $7a4b: $54
	ld   bc, $0d04                                   ; $7a4c: $01 $04 $0d
	nop                                              ; $7a4f: $00
	ld   a, [bc]                                     ; $7a50: $0a
	dec  c                                           ; $7a51: $0d
	dec  b                                           ; $7a52: $05
	nop                                              ; $7a53: $00
	ld   bc, $cf02                                   ; $7a54: $01 $02 $cf
	dec  b                                           ; $7a57: $05
	ld   a, [de]                                     ; $7a58: $1a
	ld   h, e                                        ; $7a59: $63
	and  c                                           ; $7a5a: $a1
	sbc  [hl]                                        ; $7a5b: $9e
	ld   h, a                                        ; $7a5c: $67
	adc  l                                           ; $7a5d: $8d
	adc  h                                           ; $7a5e: $8c
	ld   l, c                                        ; $7a5f: $69
	and  c                                           ; $7a60: $a1
	sbc  a                                           ; $7a61: $9f
	dec  c                                           ; $7a62: $0d
	ld   l, a                                        ; $7a63: $6f
	sub  l                                           ; $7a64: $95
	ld   [hl], c                                     ; $7a65: $71
	halt                                             ; $7a66: $76
	ld   d, d                                        ; $7a67: $52
	ld   d, d                                        ; $7a68: $52
	ld   [hl], l                                     ; $7a69: $75
	ld   h, a                                        ; $7a6a: $67
	ld   e, c                                        ; $7a6b: $59
	ld   sp, hl                                      ; $7a6c: $f9
	dec  c                                           ; $7a6d: $0d
	nop                                              ; $7a6e: $00
	ld   a, [bc]                                     ; $7a6f: $0a
	add  hl, de                                      ; $7a70: $19
	dec  b                                           ; $7a71: $05
	ld   [bc], a                                     ; $7a72: $02
	db   $e3                                         ; $7a73: $e3
	xor  l                                           ; $7a74: $ad
	adc  $7c                                         ; $7a75: $ce $7c
	ld   h, c                                        ; $7a77: $61
	halt                                             ; $7a78: $76
	ld   [bc], a                                     ; $7a79: $02
	jp   nz, $005d                                   ; $7a7a: $c2 $5d $00

	nop                                              ; $7a7d: $00
	db   $e3                                         ; $7a7e: $e3
	xor  l                                           ; $7a7f: $ad
	adc  $a0                                         ; $7a80: $ce $a0
	inc  bc                                          ; $7a82: $03
	jr   jr_050_7a1e                                 ; $7a83: $18 $99

	nop                                              ; $7a85: $00
	ld   bc, $8407                                   ; $7a86: $01 $07 $84
	nop                                              ; $7a89: $00
	ld   [bc], a                                     ; $7a8a: $02
	inc  bc                                          ; $7a8b: $03
	ld   bc, $2000                                   ; $7a8c: $01 $00 $20
	nop                                              ; $7a8f: $00
	rlca                                             ; $7a90: $07
	ld   d, $01                                      ; $7a91: $16 $01
	ld   [bc], a                                     ; $7a93: $02
	inc  bc                                          ; $7a94: $03
	ld   bc, $2001                                   ; $7a95: $01 $01 $20
	nop                                              ; $7a98: $00
	ld   b, $9c                                      ; $7a99: $06 $9c
	ld   bc, $000f                                   ; $7a9b: $01 $0f $00
	ld   bc, $0401                                   ; $7a9e: $01 $01 $04
	pop  hl                                          ; $7aa1: $e1
	inc  b                                           ; $7aa2: $04
	rst  $38                                         ; $7aa3: $ff
	ld   h, e                                        ; $7aa4: $63
	and  c                                           ; $7aa5: $a1
	ld   e, c                                        ; $7aa6: $59
	sub  a                                           ; $7aa7: $97
	ld   [bc], a                                     ; $7aa8: $02
	jp   nz, Jump_050_6d52                           ; $7aa9: $c2 $52 $6d

	ld   a, h                                        ; $7aac: $7c
	ld   [hl], l                                     ; $7aad: $75
	ld   h, a                                        ; $7aae: $67
	ld   e, d                                        ; $7aaf: $5a
	dec  c                                           ; $7ab0: $0d
	ld   [bc], a                                     ; $7ab1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab2: $cf
	dec  b                                           ; $7ab3: $05
	ld   a, [de]                                     ; $7ab4: $1a
	ld   h, e                                        ; $7ab5: $63
	and  c                                           ; $7ab6: $a1
	ld   a, h                                        ; $7ab7: $7c
	db   $e3                                         ; $7ab8: $e3
	xor  l                                           ; $7ab9: $ad
	adc  $79                                         ; $7aba: $ce $79
	inc  b                                           ; $7abc: $04
	ld   e, a                                        ; $7abd: $5f
	inc  b                                           ; $7abe: $04
	pop  bc                                          ; $7abf: $c1
	inc  b                                           ; $7ac0: $04
	ld   h, b                                        ; $7ac1: $60
	ld   [bc], a                                     ; $7ac2: $02
	ld   d, a                                        ; $7ac3: $57
	ld   e, d                                        ; $7ac4: $5a
	dec  c                                           ; $7ac5: $0d
	inc  bc                                          ; $7ac6: $03
	dec  c                                           ; $7ac7: $0d
	ld   [bc], a                                     ; $7ac8: $02
	ld   b, b                                        ; $7ac9: $40
	adc  h                                           ; $7aca: $8c
	sbc  d                                           ; $7acb: $9a
	ld   [hl], h                                     ; $7acc: $74
	sbc  c                                           ; $7acd: $99
	ld   [hl], c                                     ; $7ace: $71
	ld   [hl], h                                     ; $7acf: $74
	inc  b                                           ; $7ad0: $04
	adc  a                                           ; $7ad1: $8f
	inc  b                                           ; $7ad2: $04
	jr   jr_050_7b4a                                 ; $7ad3: $18 $75

	ld   h, a                                        ; $7ad5: $67
	ld   e, c                                        ; $7ad6: $59
	ld   sp, hl                                      ; $7ad7: $f9
	dec  c                                           ; $7ad8: $0d
	nop                                              ; $7ad9: $00
	ld   a, [bc]                                     ; $7ada: $0a
	inc  e                                           ; $7adb: $1c
	dec  b                                           ; $7adc: $05
	inc  bc                                          ; $7add: $03
	inc  bc                                          ; $7ade: $03
	ld   bc, $a16b                                   ; $7adf: $01 $6b $a1
	ld   a, b                                        ; $7ae2: $78
	ld   [bc], a                                     ; $7ae3: $02
	jp   $9950                                       ; $7ae4: $c3 $50 $99


	sbc  l                                           ; $7ae7: $9d
	ld   e, a                                        ; $7ae8: $5f
	ld   a, b                                        ; $7ae9: $78
	ld   d, d                                        ; $7aea: $52
	sub  d                                           ; $7aeb: $92
	sbc  e                                           ; $7aec: $9b
	ld   a, [$000d]                                  ; $7aed: $fa $0d $00
	ld   a, [bc]                                     ; $7af0: $0a
	inc  e                                           ; $7af1: $1c
	dec  b                                           ; $7af2: $05
	dec  b                                           ; $7af3: $05
	dec  b                                           ; $7af4: $05
	dec  e                                           ; $7af5: $1d

jr_050_7af6:
	ld   b, b                                        ; $7af6: $40
	dec  d                                           ; $7af7: $15
	inc  bc                                          ; $7af8: $03
	dec  d                                           ; $7af9: $15
	ld   bc, $2802                                   ; $7afa: $01 $02 $28
	nop                                              ; $7afd: $00
	ld   bc, $ffff                                   ; $7afe: $01 $ff $ff
	ld   [hl], l                                     ; $7b01: $75
	sub  b                                           ; $7b02: $90
	sbc  [hl]                                        ; $7b03: $9e
	ld   e, b                                        ; $7b04: $58
	sub  b                                           ; $7b05: $90
	sbc  e                                           ; $7b06: $9b
	ld   l, e                                        ; $7b07: $6b
	ld   d, h                                        ; $7b08: $54
	sub  d                                           ; $7b09: $92
	ld   a, b                                        ; $7b0a: $78
	sbc  a                                           ; $7b0b: $9f
	dec  c                                           ; $7b0c: $0d
	ld   h, c                                        ; $7b0d: $61
	and  c                                           ; $7b0e: $a1
	ld   [hl], a                                     ; $7b0f: $77
	inc  bc                                          ; $7b10: $03
	xor  h                                           ; $7b11: $ac
	ld   [hl], c                                     ; $7b12: $71
	ld   [hl], h                                     ; $7b13: $74
	adc  l                                           ; $7b14: $8d
	sbc  c                                           ; $7b15: $99
	sbc  l                                           ; $7b16: $9d
	sbc  a                                           ; $7b17: $9f
	dec  c                                           ; $7b18: $0d
	db   $d3                                         ; $7b19: $d3
	push af                                          ; $7b1a: $f5
	ret                                              ; $7b1b: $c9


	sbc  [hl]                                        ; $7b1c: $9e
	ld   e, b                                        ; $7b1d: $58
	ld   e, b                                        ; $7b1e: $58
	ld   e, e                                        ; $7b1f: $5b
	ld   a, c                                        ; $7b20: $79
	sbc  a                                           ; $7b21: $9f
	dec  c                                           ; $7b22: $0d
	nop                                              ; $7b23: $00
	ld   a, [bc]                                     ; $7b24: $0a
	dec  c                                           ; $7b25: $0d
	nop                                              ; $7b26: $00
	nop                                              ; $7b27: $00
	rrca                                             ; $7b28: $0f
	nop                                              ; $7b29: $00
	ld   bc, $1e09                                   ; $7b2a: $01 $09 $1e
	nop                                              ; $7b2d: $00
	rrca                                             ; $7b2e: $0f
	nop                                              ; $7b2f: $00
	ld   bc, $6f01                                   ; $7b30: $01 $01 $6f
	sub  l                                           ; $7b33: $95
	ld   d, d                                        ; $7b34: $52
	halt                                             ; $7b35: $76
	db   $e3                                         ; $7b36: $e3
	xor  l                                           ; $7b37: $ad
	adc  $a0                                         ; $7b38: $ce $a0
	dec  c                                           ; $7b3a: $0d
	ld   [bc], a                                     ; $7b3b: $02
	sub  l                                           ; $7b3c: $95
	ld   l, c                                        ; $7b3d: $69
	ld   [hl], h                                     ; $7b3e: $74
	ld   e, l                                        ; $7b3f: $5d
	ld   l, [hl]                                     ; $7b40: $6e
	ld   h, e                                        ; $7b41: $63
	ld   d, d                                        ; $7b42: $52
	sbc  a                                           ; $7b43: $9f
	dec  c                                           ; $7b44: $0d
	nop                                              ; $7b45: $00
	ld   a, [bc]                                     ; $7b46: $0a
	inc  e                                           ; $7b47: $1c
	dec  b                                           ; $7b48: $05
	rlca                                             ; $7b49: $07

jr_050_7b4a:
	rlca                                             ; $7b4a: $07
	ld   bc, $5258                                   ; $7b4b: $01 $58 $52
	ld   e, b                                        ; $7b4e: $58
	ld   d, d                                        ; $7b4f: $52
	sbc  [hl]                                        ; $7b50: $9e
	ld   a, b                                        ; $7b51: $78
	ld   a, c                                        ; $7b52: $79
	ld   h, a                                        ; $7b53: $67
	and  c                                           ; $7b54: $a1
	ld   a, e                                        ; $7b55: $7b
	and  c                                           ; $7b56: $a1
	ld   a, [$e30d]                                  ; $7b57: $fa $0d $e3
	xor  l                                           ; $7b5a: $ad
	adc  $03                                         ; $7b5b: $ce $03
	jr   jr_050_7af6                                 ; $7b5d: $18 $97

	sbc  d                                           ; $7b5f: $9a
	ld   l, l                                        ; $7b60: $6d
	sub  a                                           ; $7b61: $97
	sbc  [hl]                                        ; $7b62: $9e
	and  a                                           ; $7b63: $a7
	jp   nz, $a178                                   ; $7b64: $c2 $78 $a1

	sub  b                                           ; $7b67: $90
	dec  c                                           ; $7b68: $0d
	ld   [bc], a                                     ; $7b69: $02
	sub  l                                           ; $7b6a: $95
	ld   d, [hl]                                     ; $7b6b: $56
	add  [hl]                                        ; $7b6c: $86
	and  c                                           ; $7b6d: $a1
	sub  d                                           ; $7b6e: $92
	and  c                                           ; $7b6f: $a1
	ld   a, [$000d]                                  ; $7b70: $fa $0d $00
	ld   a, [bc]                                     ; $7b73: $0a
	dec  e                                           ; $7b74: $1d
	ld   b, b                                        ; $7b75: $40
	dec  d                                           ; $7b76: $15
	inc  bc                                          ; $7b77: $03
	dec  d                                           ; $7b78: $15
	ld   bc, $2903                                   ; $7b79: $01 $03 $29
	nop                                              ; $7b7c: $00
	ld   bc, $718c                                   ; $7b7d: $01 $8c $71
	ld   l, l                                        ; $7b80: $6d
	ld   e, l                                        ; $7b81: $5d
	sub  b                                           ; $7b82: $90
	ei                                               ; $7b83: $fb
	sbc  a                                           ; $7b84: $9f
	dec  c                                           ; $7b85: $0d
	nop                                              ; $7b86: $00
	dec  b                                           ; $7b87: $05
	ld   b, b                                        ; $7b88: $40
	ld   c, h                                        ; $7b89: $4c
	ld   [bc], a                                     ; $7b8a: $02
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	ld   bc, $0008                                   ; $7b8d: $01 $08 $00
	ld   a, l                                        ; $7b90: $7d
	and  c                                           ; $7b91: $a1
	sbc  [hl]                                        ; $7b92: $9e
	ld   a, b                                        ; $7b93: $78
	and  c                                           ; $7b94: $a1
	ld   e, c                                        ; $7b95: $59
	dec  c                                           ; $7b96: $0d
	nop                                              ; $7b97: $00
	dec  b                                           ; $7b98: $05
	ld   b, b                                        ; $7b99: $40
	ld   d, d                                        ; $7b9a: $52
	ld   bc, $0002                                   ; $7b9b: $01 $02 $00
	ld   bc, $f5d9                                   ; $7b9e: $01 $d9 $f5
	sub  d                                           ; $7ba1: $92
	ld   [hl], l                                     ; $7ba2: $75
	sbc  [hl]                                        ; $7ba3: $9e
	ld   d, b                                        ; $7ba4: $50
	and  c                                           ; $7ba5: $a1
	ld   l, l                                        ; $7ba6: $6d
	sbc  a                                           ; $7ba7: $9f
	dec  c                                           ; $7ba8: $0d
	nop                                              ; $7ba9: $00
	ld   a, [bc]                                     ; $7baa: $0a
	dec  c                                           ; $7bab: $0d
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	rrca                                             ; $7bae: $0f
	nop                                              ; $7baf: $00
	ld   bc, $1e09                                   ; $7bb0: $01 $09 $1e
	nop                                              ; $7bb3: $00
	inc  e                                           ; $7bb4: $1c
	dec  b                                           ; $7bb5: $05
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	ld   bc, $f9a1                                   ; $7bb8: $01 $a1 $f9
	db   $10                                         ; $7bbb: $10
	ld   a, b                                        ; $7bbc: $78
	and  c                                           ; $7bbd: $a1
	sub  d                                           ; $7bbe: $92
	sbc  a                                           ; $7bbf: $9f
	dec  c                                           ; $7bc0: $0d
	inc  b                                           ; $7bc1: $04
	di                                               ; $7bc2: $f3
	ld   e, d                                        ; $7bc3: $5a
	ld   a, b                                        ; $7bc4: $78
	ld   d, d                                        ; $7bc5: $52
	and  c                                           ; $7bc6: $a1
	sub  d                                           ; $7bc7: $92
	ld   [hl], c                                     ; $7bc8: $71
	ld   l, l                                        ; $7bc9: $6d
	sub  a                                           ; $7bca: $97
	sbc  [hl]                                        ; $7bcb: $9e
	dec  c                                           ; $7bcc: $0d
	and  a                                           ; $7bcd: $a7
	jp   nz, Jump_050_7f02                           ; $7bce: $c2 $02 $7f

	ld   e, l                                        ; $7bd1: $5d
	ld   [hl], l                                     ; $7bd2: $75
	sbc  a                                           ; $7bd3: $9f
	dec  c                                           ; $7bd4: $0d
	nop                                              ; $7bd5: $00
	ld   a, [bc]                                     ; $7bd6: $0a
	dec  c                                           ; $7bd7: $0d
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	rrca                                             ; $7bda: $0f
	nop                                              ; $7bdb: $00
	ld   bc, $1e09                                   ; $7bdc: $01 $09 $1e
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	inc  b                                           ; $7be1: $04
	add  b                                           ; $7be2: $80
	inc  b                                           ; $7be3: $04
	ld   bc, $20ff                                   ; $7be4: $01 $ff $20
	inc  bc                                          ; $7be7: $03
	ld   e, h                                        ; $7be8: $5c
	ld   [bc], a                                     ; $7be9: $02
	nop                                              ; $7bea: $00
	jr   nz, @+$1e                                   ; $7beb: $20 $1c

	nop                                              ; $7bed: $00
	ld   d, $02                                      ; $7bee: $16 $02
	rrca                                             ; $7bf0: $0f
	ld   bc, $021a                                   ; $7bf1: $01 $1a $02
	dec  b                                           ; $7bf4: $05
	add  b                                           ; $7bf5: $80
	dec  b                                           ; $7bf6: $05
	ld   bc, $0001                                   ; $7bf7: $01 $01 $00
	ld   bc, $f5d6                                   ; $7bfa: $01 $d6 $f5
	db   $fc                                         ; $7bfd: $fc
	sub  $fc                                         ; $7bfe: $d6 $fc
	sub  $d6                                         ; $7c00: $d6 $d6
	push af                                          ; $7c02: $f5
	dec  c                                           ; $7c03: $0d
	nop                                              ; $7c04: $00
	ld   a, [bc]                                     ; $7c05: $0a
	rrca                                             ; $7c06: $0f
	nop                                              ; $7c07: $00
	ld   bc, $0101                                   ; $7c08: $01 $01 $01
	inc  bc                                          ; $7c0b: $03
	rst  $38                                         ; $7c0c: $ff
	rst  $38                                         ; $7c0d: $ff
	ld   a, [$100d]                                  ; $7c0e: $fa $0d $10
	ld   h, e                                        ; $7c11: $63
	ld   e, l                                        ; $7c12: $5d
	sub  a                                           ; $7c13: $97
	ld   h, e                                        ; $7c14: $63
	and  c                                           ; $7c15: $a1
	ld   e, d                                        ; $7c16: $5a
	ld   d, d                                        ; $7c17: $52
	sbc  c                                           ; $7c18: $99
	ld   a, [$0401]                                  ; $7c19: $fa $01 $04
	dec  c                                           ; $7c1c: $0d
	nop                                              ; $7c1d: $00
	ld   a, [bc]                                     ; $7c1e: $0a
	add  hl, de                                      ; $7c1f: $19
	dec  b                                           ; $7c20: $05
	ld   [bc], a                                     ; $7c21: $02
	ld   [bc], a                                     ; $7c22: $02
	and  b                                           ; $7c23: $a0
	ld   [hl], e                                     ; $7c24: $73
	ld   e, l                                        ; $7c25: $5d
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	dec  b                                           ; $7c28: $05
	ld   d, $6f                                      ; $7c29: $16 $6f
	ld   [bc], a                                     ; $7c2b: $02
	ld   d, e                                        ; $7c2c: $53
	sbc  c                                           ; $7c2d: $99
	nop                                              ; $7c2e: $00
	ld   bc, $a907                                   ; $7c2f: $01 $07 $a9
	nop                                              ; $7c32: $00
	ld   [bc], a                                     ; $7c33: $02
	inc  bc                                          ; $7c34: $03
	ld   bc, $2000                                   ; $7c35: $01 $00 $20
	nop                                              ; $7c38: $00
	rlca                                             ; $7c39: $07
	ld   d, a                                        ; $7c3a: $57
	nop                                              ; $7c3b: $00
	ld   [bc], a                                     ; $7c3c: $02
	inc  bc                                          ; $7c3d: $03
	ld   bc, $2001                                   ; $7c3e: $01 $01 $20
	nop                                              ; $7c41: $00
	ld   b, $7e                                      ; $7c42: $06 $7e
	nop                                              ; $7c44: $00
	rrca                                             ; $7c45: $0f
	nop                                              ; $7c46: $00
	ld   bc, $0101                                   ; $7c47: $01 $01 $01
	inc  bc                                          ; $7c4a: $03
	sub  d                                           ; $7c4b: $92
	ld   [hl], c                                     ; $7c4c: $71
	ld   a, a                                        ; $7c4d: $7f
	sbc  b                                           ; $7c4e: $98
	sbc  [hl]                                        ; $7c4f: $9e
	ld   a, h                                        ; $7c50: $7c
	ld   l, h                                        ; $7c51: $6c
	ld   e, e                                        ; $7c52: $5b
	ld   a, l                                        ; $7c53: $7d
	pop  bc                                          ; $7c54: $c1
	db   $e3                                         ; $7c55: $e3
	ld   l, [hl]                                     ; $7c56: $6e
	sub  [hl]                                        ; $7c57: $96
	dec  c                                           ; $7c58: $0d
	db   $10                                         ; $7c59: $10
	ld   h, c                                        ; $7c5a: $61
	ld   h, c                                        ; $7c5b: $61
	ld   a, l                                        ; $7c5c: $7d

Jump_050_7c5d:
	ld   d, d                                        ; $7c5d: $52
	ld   h, e                                        ; $7c5e: $63
	ld   e, h                                        ; $7c5f: $5c
	sub  [hl]                                        ; $7c60: $96
	ld   e, l                                        ; $7c61: $5d
	ld   [bc], a                                     ; $7c62: $02
	ld   d, e                                        ; $7c63: $53
	sbc  e                                           ; $7c64: $9b
	ld   d, h                                        ; $7c65: $54
	ld   bc, $0d04                                   ; $7c66: $01 $04 $0d
	nop                                              ; $7c69: $00
	ld   a, [bc]                                     ; $7c6a: $0a
	nop                                              ; $7c6b: $00
	rrca                                             ; $7c6c: $0f
	ld   bc, $011c                                   ; $7c6d: $01 $1c $01
	inc  bc                                          ; $7c70: $03
	xor  c                                           ; $7c71: $a9
	ld   e, c                                        ; $7c72: $59
	ld   l, e                                        ; $7c73: $6b
	ld   h, c                                        ; $7c74: $61
	ld   a, c                                        ; $7c75: $79
	ld   d, d                                        ; $7c76: $52
	sbc  c                                           ; $7c77: $99
	and  c                                           ; $7c78: $a1
	ld   [hl], l                                     ; $7c79: $75
	ld   h, a                                        ; $7c7a: $67
	ld   e, c                                        ; $7c7b: $59
	ld   sp, hl                                      ; $7c7c: $f9
	dec  c                                           ; $7c7d: $0d
	nop                                              ; $7c7e: $00
	ld   a, [bc]                                     ; $7c7f: $0a
	rrca                                             ; $7c80: $0f
	nop                                              ; $7c81: $00
	ld   bc, $0101                                   ; $7c82: $01 $01 $01
	inc  bc                                          ; $7c85: $03
	adc  h                                           ; $7c86: $8c
	ld   l, b                                        ; $7c87: $68
	ld   d, d                                        ; $7c88: $52
	rst  $38                                         ; $7c89: $ff
	rst  $38                                         ; $7c8a: $ff
	inc  bc                                          ; $7c8b: $03
	push de                                          ; $7c8c: $d5
	ld   h, b                                        ; $7c8d: $60
	sub  [hl]                                        ; $7c8e: $96
	ld   d, h                                        ; $7c8f: $54
	ld   a, [$0401]                                  ; $7c90: $fa $01 $04
	dec  c                                           ; $7c93: $0d
	nop                                              ; $7c94: $00
	ld   a, [bc]                                     ; $7c95: $0a
	nop                                              ; $7c96: $00
	rrca                                             ; $7c97: $0f
	nop                                              ; $7c98: $00
	ld   bc, $0101                                   ; $7c99: $01 $01 $01
	inc  bc                                          ; $7c9c: $03
	sub  b                                           ; $7c9d: $90
	ld   d, h                                        ; $7c9e: $54
	inc  bc                                          ; $7c9f: $03
	ld   l, h                                        ; $7ca0: $6c
	ld   h, l                                        ; $7ca1: $65
	ld   [bc], a                                     ; $7ca2: $02

Jump_050_7ca3:
	and  b                                           ; $7ca3: $a0
	ld   [hl], e                                     ; $7ca4: $73
	ld   d, d                                        ; $7ca5: $52
	ld   [hl], h                                     ; $7ca6: $74
	adc  l                                           ; $7ca7: $8d
	sub  [hl]                                        ; $7ca8: $96
	ld   d, h                                        ; $7ca9: $54
	ld   bc, $0d04                                   ; $7caa: $01 $04 $0d
	nop                                              ; $7cad: $00
	ld   a, [bc]                                     ; $7cae: $0a
	rlca                                             ; $7caf: $07
	db   $d3                                         ; $7cb0: $d3
	nop                                              ; $7cb1: $00
	inc  bc                                          ; $7cb2: $03
	ld   de, $2801                                   ; $7cb3: $11 $01 $28
	dec  h                                           ; $7cb6: $25
	nop                                              ; $7cb7: $00
	rlca                                             ; $7cb8: $07
	dec  de                                          ; $7cb9: $1b
	ld   bc, $1103                                   ; $7cba: $01 $03 $11
	ld   bc, $2228                                   ; $7cbd: $01 $28 $22
	nop                                              ; $7cc0: $00
	rrca                                             ; $7cc1: $0f
	ld   bc, $011d                                   ; $7cc2: $01 $1d $01
	ld   l, a                                        ; $7cc5: $6f
	sub  l                                           ; $7cc6: $95
	ld   [hl], c                                     ; $7cc7: $71
	halt                                             ; $7cc8: $76
	inc  b                                           ; $7cc9: $04
	inc  hl                                          ; $7cca: $23
	ld   [hl], c                                     ; $7ccb: $71
	ld   l, l                                        ; $7ccc: $6d
	ld   e, c                                        ; $7ccd: $59
	ld   a, b                                        ; $7cce: $78
	ld   c, a                                        ; $7ccf: $4f
	rst  $38                                         ; $7cd0: $ff
	rst  $38                                         ; $7cd1: $ff
	ld   sp, hl                                      ; $7cd2: $f9
	dec  c                                           ; $7cd3: $0d
	nop                                              ; $7cd4: $00
	ld   a, [bc]                                     ; $7cd5: $0a
	add  hl, de                                      ; $7cd6: $19
	dec  b                                           ; $7cd7: $05
	ld   bc, $c004                                   ; $7cd8: $01 $04 $c0
	inc  bc                                          ; $7cdb: $03
	ld   a, l                                        ; $7cdc: $7d
	ld   h, l                                        ; $7cdd: $65
	ld   l, l                                        ; $7cde: $6d
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	rlca                                             ; $7ce1: $07
	rst  $38                                         ; $7ce2: $ff
	nop                                              ; $7ce3: $00
	ld   [bc], a                                     ; $7ce4: $02
	inc  bc                                          ; $7ce5: $03
	ld   bc, $2000                                   ; $7ce6: $01 $00 $20
	nop                                              ; $7ce9: $00
	ld   b, $1b                                      ; $7cea: $06 $1b
	ld   bc, $000f                                   ; $7cec: $01 $0f $00
	ld   bc, $0101                                   ; $7cef: $01 $01 $01
	inc  bc                                          ; $7cf2: $03
	ld   l, e                                        ; $7cf3: $6b
	sbc  e                                           ; $7cf4: $9b
	ld   l, e                                        ; $7cf5: $6b
	sbc  e                                           ; $7cf6: $9b
	ld   [bc], a                                     ; $7cf7: $02
	inc  l                                           ; $7cf8: $2c
	ld   e, e                                        ; $7cf9: $5b
	inc  bc                                          ; $7cfa: $03
	ld   h, l                                        ; $7cfb: $65
	ld   h, b                                        ; $7cfc: $60
	sub  [hl]                                        ; $7cfd: $96
	ld   d, h                                        ; $7cfe: $54
	rst  $38                                         ; $7cff: $ff
	rst  $38                                         ; $7d00: $ff
	ld   bc, $0d04                                   ; $7d01: $01 $04 $0d
	db   $10                                         ; $7d04: $10
	dec  c                                           ; $7d05: $0d
	nop                                              ; $7d06: $00
	ld   a, [bc]                                     ; $7d07: $0a
	nop                                              ; $7d08: $00
	rrca                                             ; $7d09: $0f
	ld   bc, $011c                                   ; $7d0a: $01 $1c $01
	rst  $38                                         ; $7d0d: $ff
	rst  $38                                         ; $7d0e: $ff
	ld   a, [$6b0d]                                  ; $7d0f: $fa $0d $6b
	ld   h, c                                        ; $7d12: $61
	ld   a, c                                        ; $7d13: $79
	inc  bc                                          ; $7d14: $03
	xor  c                                           ; $7d15: $a9
	ld   e, c                                        ; $7d16: $59
	ld   d, d                                        ; $7d17: $52
	sbc  c                                           ; $7d18: $99
	and  c                                           ; $7d19: $a1
	ld   [hl], l                                     ; $7d1a: $75
	ld   h, a                                        ; $7d1b: $67
	ld   e, c                                        ; $7d1c: $59
	ld   sp, hl                                      ; $7d1d: $f9
	dec  c                                           ; $7d1e: $0d
	nop                                              ; $7d1f: $00
	ld   a, [bc]                                     ; $7d20: $0a
	rrca                                             ; $7d21: $0f
	nop                                              ; $7d22: $00
	ld   bc, $0101                                   ; $7d23: $01 $01 $01
	inc  bc                                          ; $7d26: $03
	ld   [bc], a                                     ; $7d27: $02
	and  c                                           ; $7d28: $a1
	ld   [hl], e                                     ; $7d29: $73
	ld   e, c                                        ; $7d2a: $59
	sbc  d                                           ; $7d2b: $9a
	ld   l, l                                        ; $7d2c: $6d
	ld   a, [$0401]                                  ; $7d2d: $fa $01 $04
	dec  c                                           ; $7d30: $0d
	nop                                              ; $7d31: $00
	ld   a, [bc]                                     ; $7d32: $0a
	add  hl, de                                      ; $7d33: $19
	dec  b                                           ; $7d34: $05
	inc  bc                                          ; $7d35: $03
	inc  bc                                          ; $7d36: $03
	db   $db                                         ; $7d37: $db
	ld   bc, $7614                                   ; $7d38: $01 $14 $76
	ld   h, a                                        ; $7d3b: $67
	sbc  c                                           ; $7d3c: $99
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	sub  b                                           ; $7d3f: $90
	ld   a, h                                        ; $7d40: $7c
	adc  h                                           ; $7d41: $8c
	ld   a, e                                        ; $7d42: $7b
	and  b                                           ; $7d43: $a0
	ld   h, a                                        ; $7d44: $67
	sbc  c                                           ; $7d45: $99
	nop                                              ; $7d46: $00
	ld   bc, $d503                                   ; $7d47: $01 $03 $d5
	ld   h, b                                        ; $7d4a: $60
	inc  bc                                          ; $7d4b: $03
	add  b                                           ; $7d4c: $80
	ld   h, a                                        ; $7d4d: $67
	nop                                              ; $7d4e: $00
	ld   [bc], a                                     ; $7d4f: $02
	rlca                                             ; $7d50: $07
	add  b                                           ; $7d51: $80
	ld   bc, $0302                                   ; $7d52: $01 $02 $03
	ld   bc, $2000                                   ; $7d55: $01 $00 $20
	nop                                              ; $7d58: $00
	rlca                                             ; $7d59: $07
	inc  c                                           ; $7d5a: $0c
	ld   [bc], a                                     ; $7d5b: $02
	ld   [bc], a                                     ; $7d5c: $02
	inc  bc                                          ; $7d5d: $03
	ld   bc, $2001                                   ; $7d5e: $01 $01 $20
	nop                                              ; $7d61: $00
	rlca                                             ; $7d62: $07
	add  e                                           ; $7d63: $83
	ld   [bc], a                                     ; $7d64: $02
	ld   [bc], a                                     ; $7d65: $02
	inc  bc                                          ; $7d66: $03
	ld   bc, $2002                                   ; $7d67: $01 $02 $20
	nop                                              ; $7d6a: $00
	ld   b, $d4                                      ; $7d6b: $06 $d4
	ld   [bc], a                                     ; $7d6d: $02
	rrca                                             ; $7d6e: $0f
	nop                                              ; $7d6f: $00
	ld   bc, $0101                                   ; $7d70: $01 $01 $01
	inc  bc                                          ; $7d73: $03
	ld   h, c                                        ; $7d74: $61
	ld   h, c                                        ; $7d75: $61
	ld   a, l                                        ; $7d76: $7d
	inc  bc                                          ; $7d77: $03
	db   $db                                         ; $7d78: $db
	ld   bc, $7614                                   ; $7d79: $01 $14 $76
	rst  $38                                         ; $7d7c: $ff
	rst  $38                                         ; $7d7d: $ff
	ld   bc, $0d04                                   ; $7d7e: $01 $04 $0d
	nop                                              ; $7d81: $00
	ld   a, [bc]                                     ; $7d82: $0a
	ld   bc, $9e50                                   ; $7d83: $01 $50 $9e
	ld   h, a                                        ; $7d86: $67
	adc  l                                           ; $7d87: $8d
	adc  h                                           ; $7d88: $8c
	ld   l, c                                        ; $7d89: $69
	and  c                                           ; $7d8a: $a1
	rst  $38                                         ; $7d8b: $ff
	rst  $38                                         ; $7d8c: $ff
	dec  c                                           ; $7d8d: $0d
	ld   [hl], a                                     ; $7d8e: $77
	ld   a, b                                        ; $7d8f: $78
	ld   l, l                                        ; $7d90: $6d
	ld   e, c                                        ; $7d91: $59
	inc  b                                           ; $7d92: $04
	ld   b, l                                        ; $7d93: $45
	ld   [hl], c                                     ; $7d94: $71
	ld   [hl], h                                     ; $7d95: $74
	sub  a                                           ; $7d96: $97
	ld   [hl], c                                     ; $7d97: $71
	ld   h, l                                        ; $7d98: $65
	sub  c                                           ; $7d99: $91
	sbc  c                                           ; $7d9a: $99
	and  c                                           ; $7d9b: $a1
	dec  c                                           ; $7d9c: $0d
	ld   [hl], l                                     ; $7d9d: $75
	ld   h, a                                        ; $7d9e: $67
	ld   a, e                                        ; $7d9f: $7b
	ld   sp, hl                                      ; $7da0: $f9
	dec  c                                           ; $7da1: $0d
	nop                                              ; $7da2: $00
	ld   a, [bc]                                     ; $7da3: $0a
	rrca                                             ; $7da4: $0f
	ld   bc, $011c                                   ; $7da5: $01 $1c $01
	ld   d, b                                        ; $7da8: $50
	sbc  [hl]                                        ; $7da9: $9e
	ld   [$6300], sp                                 ; $7daa: $08 $00 $63
	and  c                                           ; $7dad: $a1
	ld   [hl], l                                     ; $7dae: $75
	ld   h, a                                        ; $7daf: $67
	ld   e, c                                        ; $7db0: $59
	ld   sp, hl                                      ; $7db1: $f9
	dec  c                                           ; $7db2: $0d
	ld   h, e                                        ; $7db3: $63
	ld   e, l                                        ; $7db4: $5d
	sub  a                                           ; $7db5: $97
	ld   [hl], l                                     ; $7db6: $75
	ld   h, a                                        ; $7db7: $67
	rst  $38                                         ; $7db8: $ff
	rst  $38                                         ; $7db9: $ff
	dec  c                                           ; $7dba: $0d
	nop                                              ; $7dbb: $00
	ld   a, [bc]                                     ; $7dbc: $0a
	rrca                                             ; $7dbd: $0f
	nop                                              ; $7dbe: $00
	ld   bc, $6301                                   ; $7dbf: $01 $01 $63
	ld   e, l                                        ; $7dc2: $5d
	sub  a                                           ; $7dc3: $97
	ld   h, e                                        ; $7dc4: $63
	and  c                                           ; $7dc5: $a1
	ld   [hl], l                                     ; $7dc6: $75
	ld   h, l                                        ; $7dc7: $65
	ld   l, l                                        ; $7dc8: $6d
	ld   e, c                                        ; $7dc9: $59
	rst  $38                                         ; $7dca: $ff
	rst  $38                                         ; $7dcb: $ff
	dec  c                                           ; $7dcc: $0d
	ld   h, c                                        ; $7dcd: $61
	sbc  d                                           ; $7dce: $9a
	ld   a, l                                        ; $7dcf: $7d
	inc  bc                                          ; $7dd0: $03
	add  e                                           ; $7dd1: $83
	dec  b                                           ; $7dd2: $05
	dec  c                                           ; $7dd3: $0d
	ld   h, l                                        ; $7dd4: $65
	adc  h                                           ; $7dd5: $8c
	ld   h, l                                        ; $7dd6: $65
	ld   l, l                                        ; $7dd7: $6d
	sbc  a                                           ; $7dd8: $9f
	dec  c                                           ; $7dd9: $0d
	nop                                              ; $7dda: $00
	ld   a, [bc]                                     ; $7ddb: $0a
	rrca                                             ; $7ddc: $0f
	ld   bc, $0119                                   ; $7ddd: $01 $19 $01
	ld   d, d                                        ; $7de0: $52
	ld   d, d                                        ; $7de1: $52
	ld   d, [hl]                                     ; $7de2: $56
	sbc  a                                           ; $7de3: $9f
	dec  c                                           ; $7de4: $0d
	nop                                              ; $7de5: $00
	ld   a, [bc]                                     ; $7de6: $0a
	rrca                                             ; $7de7: $0f
	nop                                              ; $7de8: $00
	ld   bc, $0101                                   ; $7de9: $01 $01 $01
	inc  bc                                          ; $7dec: $03
	inc  bc                                          ; $7ded: $03
	ld   e, e                                        ; $7dee: $5b
	ld   e, c                                        ; $7def: $59
	ld   [hl], c                                     ; $7df0: $71
	ld   l, l                                        ; $7df1: $6d
	rst  $38                                         ; $7df2: $ff
	rst  $38                                         ; $7df3: $ff
	ld   bc, $0d04                                   ; $7df4: $01 $04 $0d
	nop                                              ; $7df7: $00
	ld   a, [bc]                                     ; $7df8: $0a
	nop                                              ; $7df9: $00
	rrca                                             ; $7dfa: $0f
	nop                                              ; $7dfb: $00
	ld   bc, $0101                                   ; $7dfc: $01 $01 $01
	inc  bc                                          ; $7dff: $03
	ld   h, c                                        ; $7e00: $61
	ld   d, h                                        ; $7e01: $54
	ld   a, b                                        ; $7e02: $78
	ld   [hl], c                                     ; $7e03: $71
	ld   l, l                                        ; $7e04: $6d
	sub  a                                           ; $7e05: $97
	rst  $38                                         ; $7e06: $ff
	rst  $38                                         ; $7e07: $ff
	ld   bc, $0d04                                   ; $7e08: $01 $04 $0d
	nop                                              ; $7e0b: $00
	ld   a, [bc]                                     ; $7e0c: $0a
	ld   bc, $9ea3                                   ; $7e0d: $01 $a3 $9e
	and  e                                           ; $7e10: $a3
	and  l                                           ; $7e11: $a5
	db   $ec                                         ; $7e12: $ec
	cp   d                                           ; $7e13: $ba
	ld   [hl], l                                     ; $7e14: $75
	db   $fc                                         ; $7e15: $fc
	ld   h, a                                        ; $7e16: $67
	ld   a, [$000d]                                  ; $7e17: $fa $0d $00
	ld   a, [bc]                                     ; $7e1a: $0a
	rrca                                             ; $7e1b: $0f
	ld   bc, $011a                                   ; $7e1c: $01 $1a $01
	ld   a, b                                        ; $7e1f: $78
	and  c                                           ; $7e20: $a1
	ld   l, [hl]                                     ; $7e21: $6e
	sbc  [hl]                                        ; $7e22: $9e
	and  e                                           ; $7e23: $a3
	and  l                                           ; $7e24: $a5
	db   $ec                                         ; $7e25: $ec
	cp   d                                           ; $7e26: $ba
	ld   l, [hl]                                     ; $7e27: $6e
	ld   [hl], c                                     ; $7e28: $71
	ld   l, l                                        ; $7e29: $6d
	ld   a, h                                        ; $7e2a: $7c
	rst  $38                                         ; $7e2b: $ff
	rst  $38                                         ; $7e2c: $ff
	dec  c                                           ; $7e2d: $0d
	nop                                              ; $7e2e: $00
	ld   a, [bc]                                     ; $7e2f: $0a
	rrca                                             ; $7e30: $0f
	nop                                              ; $7e31: $00
	ld   bc, $0101                                   ; $7e32: $01 $01 $01
	inc  bc                                          ; $7e35: $03
	inc  bc                                          ; $7e36: $03
	ld   e, e                                        ; $7e37: $5b
	ld   e, c                                        ; $7e38: $59
	ld   [hl], c                                     ; $7e39: $71
	ld   l, l                                        ; $7e3a: $6d
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	ld   bc, $0d04                                   ; $7e3d: $01 $04 $0d
	nop                                              ; $7e40: $00
	ld   a, [bc]                                     ; $7e41: $0a
	rrca                                             ; $7e42: $0f
	ld   bc, $011b                                   ; $7e43: $01 $1b $01
	rst  $38                                         ; $7e46: $ff
	rst  $38                                         ; $7e47: $ff
	ld   a, b                                        ; $7e48: $78
	and  c                                           ; $7e49: $a1
	ld   [hl], h                                     ; $7e4a: $74
	sbc  [hl]                                        ; $7e4b: $9e
	ld   l, e                                        ; $7e4c: $6b
	and  c                                           ; $7e4d: $a1
	ld   a, b                                        ; $7e4e: $78
	inc  bc                                          ; $7e4f: $03
	and  l                                           ; $7e50: $a5
	ld   a, h                                        ; $7e51: $7c
	dec  c                                           ; $7e52: $0d
	and  e                                           ; $7e53: $a3
	and  l                                           ; $7e54: $a5
	db   $ec                                         ; $7e55: $ec
	cp   d                                           ; $7e56: $ba
	ld   e, d                                        ; $7e57: $5a
	ld   d, d                                        ; $7e58: $52
	sbc  c                                           ; $7e59: $99
	sbc  l                                           ; $7e5a: $9d
	ld   e, a                                        ; $7e5b: $5f
	dec  c                                           ; $7e5c: $0d
	ld   a, b                                        ; $7e5d: $78
	ld   d, d                                        ; $7e5e: $52
	ld   [hl], l                                     ; $7e5f: $75
	ld   h, l                                        ; $7e60: $65
	sub  l                                           ; $7e61: $95
	ld   a, [$000d]                                  ; $7e62: $fa $0d $00
	ld   a, [bc]                                     ; $7e65: $0a
	dec  c                                           ; $7e66: $0d
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	rrca                                             ; $7e69: $0f
	nop                                              ; $7e6a: $00
	ld   bc, $020c                                   ; $7e6b: $01 $0c $02
	ld   b, $dc                                      ; $7e6e: $06 $dc
	ld   [bc], a                                     ; $7e70: $02
	rrca                                             ; $7e71: $0f
	nop                                              ; $7e72: $00
	ld   bc, $0101                                   ; $7e73: $01 $01 $01
	inc  bc                                          ; $7e76: $03
	ld   h, c                                        ; $7e77: $61
	ld   h, c                                        ; $7e78: $61
	ld   a, l                                        ; $7e79: $7d
	inc  bc                                          ; $7e7a: $03
	push de                                          ; $7e7b: $d5
	ld   h, b                                        ; $7e7c: $60
	sub  [hl]                                        ; $7e7d: $96
	ld   d, h                                        ; $7e7e: $54
	rst  $38                                         ; $7e7f: $ff
	rst  $38                                         ; $7e80: $ff
	ld   bc, $0d04                                   ; $7e81: $01 $04 $0d
	nop                                              ; $7e84: $00
	ld   a, [bc]                                     ; $7e85: $0a
	ld   bc, $fa50                                   ; $7e86: $01 $50 $fa
	dec  c                                           ; $7e89: $0d
	ld   a, b                                        ; $7e8a: $78
	ld   l, d                                        ; $7e8b: $6a
	ld   h, c                                        ; $7e8c: $61
	and  c                                           ; $7e8d: $a1
	ld   a, b                                        ; $7e8e: $78
	inc  bc                                          ; $7e8f: $03
	ld   c, e                                        ; $7e90: $4b
	ld   a, c                                        ; $7e91: $79
	pop  de                                          ; $7e92: $d1
	set  1, e                                        ; $7e93: $cb $cb
	ld   a, h                                        ; $7e95: $7c
	ld   b, $1c                                      ; $7e96: $06 $1c
	ld   e, d                                        ; $7e98: $5a
	ld   sp, hl                                      ; $7e99: $f9
	dec  c                                           ; $7e9a: $0d
	nop                                              ; $7e9b: $00
	ld   a, [bc]                                     ; $7e9c: $0a
	ld   bc, $9d54                                   ; $7e9d: $01 $54 $9d
	ld   [hl], c                                     ; $7ea0: $71
	ld   a, [$000d]                                  ; $7ea1: $fa $0d $00
	ld   a, [bc]                                     ; $7ea4: $0a
	inc  c                                           ; $7ea5: $0c
	rlca                                             ; $7ea6: $07
	inc  d                                           ; $7ea7: $14
	ld   [$0101], sp                                 ; $7ea8: $08 $01 $01
	ld   d, b                                        ; $7eab: $50
	ld   l, l                                        ; $7eac: $6d
	ld   l, l                                        ; $7ead: $6d
	ld   l, l                                        ; $7eae: $6d
	ld   l, l                                        ; $7eaf: $6d
	ld   l, l                                        ; $7eb0: $6d
	ld   l, l                                        ; $7eb1: $6d
	rst  $38                                         ; $7eb2: $ff
	rst  $38                                         ; $7eb3: $ff
	dec  c                                           ; $7eb4: $0d
	nop                                              ; $7eb5: $00
	ld   a, [bc]                                     ; $7eb6: $0a
	dec  c                                           ; $7eb7: $0d
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	rrca                                             ; $7eba: $0f
	nop                                              ; $7ebb: $00
	ld   bc, $020c                                   ; $7ebc: $01 $0c $02
	ld   b, $dc                                      ; $7ebf: $06 $dc
	ld   [bc], a                                     ; $7ec1: $02
	dec  c                                           ; $7ec2: $0d
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	rrca                                             ; $7ec5: $0f
	nop                                              ; $7ec6: $00
	ld   bc, $020c                                   ; $7ec7: $01 $0c $02
	ld   c, $6c                                      ; $7eca: $0e $6c
	inc  e                                           ; $7ecc: $1c
	ld   bc, $0202                                   ; $7ecd: $01 $02 $02
	dec  e                                           ; $7ed0: $1d
	ld   b, b                                        ; $7ed1: $40
	ld   de, $1103                                   ; $7ed2: $11 $03 $11
	ld   bc, $2903                                   ; $7ed5: $01 $03 $29
	nop                                              ; $7ed8: $00
	ld   bc, $0008                                   ; $7ed9: $01 $08 $00
	ld   h, e                                        ; $7edc: $63
	and  c                                           ; $7edd: $a1
	ld   a, [$7c0d]                                  ; $7ede: $fa $0d $7c
	ld   l, h                                        ; $7ee1: $6c
	ld   e, e                                        ; $7ee2: $5b
	ld   l, [hl]                                     ; $7ee3: $6e
	ld   a, b                                        ; $7ee4: $78
	and  c                                           ; $7ee5: $a1
	ld   [hl], h                                     ; $7ee6: $74
	sbc  [hl]                                        ; $7ee7: $9e
	ld   d, b                                        ; $7ee8: $50
	ld   l, l                                        ; $7ee9: $6d
	ld   h, l                                        ; $7eea: $65
	dec  c                                           ; $7eeb: $0d
	ld   [bc], a                                     ; $7eec: $02
	sub  l                                           ; $7eed: $95
	ld   l, e                                        ; $7eee: $6b
	ld   h, c                                        ; $7eef: $61
	ld   a, b                                        ; $7ef0: $78
	ld   d, d                                        ; $7ef1: $52
	adc  h                                           ; $7ef2: $8c
	ld   h, l                                        ; $7ef3: $65
	ld   l, l                                        ; $7ef4: $6d
	ld   a, [$000d]                                  ; $7ef5: $fa $0d $00
	ld   a, [bc]                                     ; $7ef8: $0a
	dec  b                                           ; $7ef9: $05
	ld   b, b                                        ; $7efa: $40
	ld   c, b                                        ; $7efb: $48
	ld   [bc], a                                     ; $7efc: $02
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	ld   bc, $f5d6                                   ; $7eff: $01 $d6 $f5

Jump_050_7f02:
	ld   a, [$000d]                                  ; $7f02: $fa $0d $00
	ld   a, [bc]                                     ; $7f05: $0a
	dec  b                                           ; $7f06: $05
	ld   b, b                                        ; $7f07: $40
	ld   c, [hl]                                     ; $7f08: $4e
	ld   bc, $0002                                   ; $7f09: $01 $02 $00
	dec  c                                           ; $7f0c: $0d
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	rrca                                             ; $7f0f: $0f
	nop                                              ; $7f10: $00
	ld   bc, $1e09                                   ; $7f11: $01 $09 $1e
	rlca                                             ; $7f14: $07
	scf                                              ; $7f15: $37
	inc  bc                                          ; $7f16: $03
	inc  b                                           ; $7f17: $04
	add  b                                           ; $7f18: $80
	ld   b, $01                                      ; $7f19: $06 $01
	rst  $38                                         ; $7f1b: $ff
	jr   nz, jr_050_7f1e                             ; $7f1c: $20 $00

jr_050_7f1e:
	dec  b                                           ; $7f1e: $05
	add  b                                           ; $7f1f: $80
	ld   b, $01                                      ; $7f20: $06 $01
	ld   bc, $0000                                   ; $7f22: $01 $00 $00
	inc  c                                           ; $7f25: $0c
	ld   [bc], a                                     ; $7f26: $02
	ld   c, $02                                      ; $7f27: $0e $02
	rrca                                             ; $7f29: $0f
	nop                                              ; $7f2a: $00
	ld   bc, $5001                                   ; $7f2b: $01 $01 $50
	rst  $38                                         ; $7f2e: $ff
	rst  $38                                         ; $7f2f: $ff
	sbc  [hl]                                        ; $7f30: $9e
	sub  d                                           ; $7f31: $92
	ld   a, [hl]                                     ; $7f32: $7e
	ld   d, d                                        ; $7f33: $52
	sub  [hl]                                        ; $7f34: $96
	ld   a, b                                        ; $7f35: $78
	db   $fc                                         ; $7f36: $fc
	rst  $38                                         ; $7f37: $ff
	rst  $38                                         ; $7f38: $ff
	dec  c                                           ; $7f39: $0d
	inc  bc                                          ; $7f3a: $03
	add  b                                           ; $7f3b: $80
	dec  b                                           ; $7f3c: $05
	db   $10                                         ; $7f3d: $10
	inc  bc                                          ; $7f3e: $03
	ld   [hl], l                                     ; $7f3f: $75
	halt                                             ; $7f40: $76
	ld   a, l                                        ; $7f41: $7d
	ld   d, d                                        ; $7f42: $52
	ld   d, [hl]                                     ; $7f43: $56
	rst  $38                                         ; $7f44: $ff
	rst  $38                                         ; $7f45: $ff
	rst  $38                                         ; $7f46: $ff
	rst  $38                                         ; $7f47: $ff
	dec  c                                           ; $7f48: $0d
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	rst  $38                                         ; $7f4b: $ff
	rst  $38                                         ; $7f4c: $ff
	rst  $38                                         ; $7f4d: $ff
	rst  $38                                         ; $7f4e: $ff
	rst  $38                                         ; $7f4f: $ff
	rst  $38                                         ; $7f50: $ff
	rst  $38                                         ; $7f51: $ff
	rst  $38                                         ; $7f52: $ff
	dec  c                                           ; $7f53: $0d
	nop                                              ; $7f54: $00
	ld   a, [bc]                                     ; $7f55: $0a
	inc  d                                           ; $7f56: $14
	ld   b, $01                                      ; $7f57: $06 $01
	rrca                                             ; $7f59: $0f
	dec  bc                                          ; $7f5a: $0b
	ld   [bc], a                                     ; $7f5b: $02
	ld   bc, $0008                                   ; $7f5c: $01 $08 $00
	ld   e, l                                        ; $7f5f: $5d
	and  c                                           ; $7f60: $a1
	sbc  a                                           ; $7f61: $9f
	dec  c                                           ; $7f62: $0d
	ld   [bc], a                                     ; $7f63: $02
	and  l                                           ; $7f64: $a5
	ld   h, a                                        ; $7f65: $67
	ld   e, [hl]                                     ; $7f66: $5e
	sbc  [hl]                                        ; $7f67: $9e
	inc  bc                                          ; $7f68: $03
	add  l                                           ; $7f69: $85
	inc  b                                           ; $7f6a: $04
	xor  e                                           ; $7f6b: $ab
	inc  bc                                          ; $7f6c: $03
	add  d                                           ; $7f6d: $82
	inc  bc                                          ; $7f6e: $03
	ld   c, l                                        ; $7f6f: $4d
	ld   a, c                                        ; $7f70: $79
	dec  b                                           ; $7f71: $05
	db   $10                                         ; $7f72: $10
	ld   a, b                                        ; $7f73: $78
	ld   h, e                                        ; $7f74: $63
	ld   d, d                                        ; $7f75: $52
	sbc  a                                           ; $7f76: $9f
	dec  c                                           ; $7f77: $0d
	nop                                              ; $7f78: $00
	ld   a, [bc]                                     ; $7f79: $0a
	rrca                                             ; $7f7a: $0f
	nop                                              ; $7f7b: $00
	ld   bc, $020c                                   ; $7f7c: $01 $0c $02
	add  hl, bc                                      ; $7f7f: $09
	ld   e, $01                                      ; $7f80: $1e $01
	adc  h                                           ; $7f82: $8c
	sbc  [hl]                                        ; $7f83: $9e
	adc  h                                           ; $7f84: $8c
	ld   h, e                                        ; $7f85: $63
	ld   e, c                                        ; $7f86: $59
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	dec  c                                           ; $7f89: $0d
	nop                                              ; $7f8a: $00
	ld   a, [bc]                                     ; $7f8b: $0a
	ld   c, $0e                                      ; $7f8c: $0e $0e
	inc  e                                           ; $7f8e: $1c
	ld   a, [bc]                                     ; $7f8f: $0a
	inc  b                                           ; $7f90: $04
	inc  b                                           ; $7f91: $04
	ld   bc, $5258                                   ; $7f92: $01 $58 $52
	sbc  [hl]                                        ; $7f95: $9e
	ld   [$9f00], sp                                 ; $7f96: $08 $00 $9f
	dec  c                                           ; $7f99: $0d
	ld   e, b                                        ; $7f9a: $58
	adc  a                                           ; $7f9b: $8f
	ei                                               ; $7f9c: $fb
	cp   b                                           ; $7f9d: $b8
	push hl                                          ; $7f9e: $e5
	pop  af                                          ; $7f9f: $f1
	ei                                               ; $7fa0: $fb
	ld   a, h                                        ; $7fa1: $7c
	ld   l, h                                        ; $7fa2: $6c
	ld   d, d                                        ; $7fa3: $52
	ld   [hl], h                                     ; $7fa4: $74
	ld   l, l                                        ; $7fa5: $6d
	and  c                                           ; $7fa6: $a1
	dec  c                                           ; $7fa7: $0d
	ld   l, [hl]                                     ; $7fa8: $6e
	ld   [hl], c                                     ; $7fa9: $71
	ld   [hl], h                                     ; $7faa: $74
	ld   a, b                                        ; $7fab: $78
	sbc  a                                           ; $7fac: $9f
	dec  c                                           ; $7fad: $0d
	nop                                              ; $7fae: $00
	ld   a, [bc]                                     ; $7faf: $0a
	ld   bc, $a102                                   ; $7fb0: $01 $02 $a1
	inc  bc                                          ; $7fb3: $03
	and  b                                           ; $7fb4: $a0
	ld   l, a                                        ; $7fb5: $6f
	ld   a, l                                        ; $7fb6: $7d
	sbc  [hl]                                        ; $7fb7: $9e
	sbc  l                                           ; $7fb8: $9d
	ld   e, c                                        ; $7fb9: $59
	sub  a                                           ; $7fba: $97
	and  c                                           ; $7fbb: $a1
	ld   [hl], l                                     ; $7fbc: $75
	sub  b                                           ; $7fbd: $90
	ld   a, b                                        ; $7fbe: $78
	ld   d, d                                        ; $7fbf: $52
	dec  c                                           ; $7fc0: $0d
	ld   e, d                                        ; $7fc1: $5a
	sbc  [hl]                                        ; $7fc2: $9e
	inc  de                                          ; $7fc3: $13
	ld   [bc], a                                     ; $7fc4: $02
	sub  e                                           ; $7fc5: $93
	sub  b                                           ; $7fc6: $90
	sub  d                                           ; $7fc7: $92
	ld   [hl], c                                     ; $7fc8: $71
	ld   l, a                                        ; $7fc9: $6f
	sub  c                                           ; $7fca: $91
	ei                                               ; $7fcb: $fb
	dec  c                                           ; $7fcc: $0d
	adc  h                                           ; $7fcd: $8c
	ld   l, b                                        ; $7fce: $68
	ld   d, d                                        ; $7fcf: $52
	ld   l, [hl]                                     ; $7fd0: $6e
	sbc  e                                           ; $7fd1: $9b
	sbc  a                                           ; $7fd2: $9f
	dec  c                                           ; $7fd3: $0d
	nop                                              ; $7fd4: $00
	ld   a, [bc]                                     ; $7fd5: $0a
	ld   bc, $7e59                                   ; $7fd6: $01 $59 $7e
	ld   [hl], c                                     ; $7fd9: $71
	ld   [hl], h                                     ; $7fda: $74
	sub  d                                           ; $7fdb: $92
	sbc  b                                           ; $7fdc: $98
	ld   l, l                                        ; $7fdd: $6d
	ld   d, d                                        ; $7fde: $52
	ld   e, d                                        ; $7fdf: $5a
	dec  c                                           ; $7fe0: $0d
	ld   [bc], a                                     ; $7fe1: $02
	sbc  b                                           ; $7fe2: $98
	inc  bc                                          ; $7fe3: $03
	nop                                              ; $7fe4: $00
	ld   a, h                                        ; $7fe5: $7c
	inc  bc                                          ; $7fe6: $03
	ld   l, e                                        ; $7fe7: $6b
	inc  bc                                          ; $7fe8: $03
	ld   c, a                                        ; $7fe9: $4f
	sbc  [hl]                                        ; $7fea: $9e
	ld   l, a                                        ; $7feb: $6f
	sub  l                                           ; $7fec: $95
	ld   [hl], c                                     ; $7fed: $71
	halt                                             ; $7fee: $76
	ldh  [c], a                                      ; $7fef: $e2
	db   $ec                                         ; $7ff0: $ec
	dec  c                                           ; $7ff1: $0d
	ld   a, b                                        ; $7ff2: $78
	and  c                                           ; $7ff3: $a1
	ld   [hl], l                                     ; $7ff4: $75
	ld   a, b                                        ; $7ff5: $78
	sbc  a                                           ; $7ff6: $9f
	dec  c                                           ; $7ff7: $0d
	nop                                              ; $7ff8: $00
	ld   a, [bc]                                     ; $7ff9: $0a
	inc  e                                           ; $7ffa: $1c
	ld   a, [bc]                                     ; $7ffb: $0a
	ld   [bc], a                                     ; $7ffc: $02
	ld   [bc], a                                     ; $7ffd: $02
	db   $01                                         ; $7ffe: $01
	ld   e, c                                        ; $7fff: $59
