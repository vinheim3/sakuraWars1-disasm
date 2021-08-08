; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $047", ROMX[$4000], BANK[$47]

	ld   h, l                                        ; $4000: $65
	adc  h                                           ; $4001: $8c
	ld   l, c                                        ; $4002: $69
	and  c                                           ; $4003: $a1
	ld   [hl], l                                     ; $4004: $75
	ld   h, l                                        ; $4005: $65
	ld   l, l                                        ; $4006: $6d
	ld   e, c                                        ; $4007: $59
	ld   sp, hl                                      ; $4008: $f9
	dec  c                                           ; $4009: $0d
	nop                                              ; $400a: $00
	ld   a, [bc]                                     ; $400b: $0a
	rrca                                             ; $400c: $0f
	nop                                              ; $400d: $00
	ld   bc, $6b01                                   ; $400e: $01 $01 $6b
	sbc  [hl]                                        ; $4011: $9e
	ld   l, e                                        ; $4012: $6b
	and  c                                           ; $4013: $a1
	ld   a, b                                        ; $4014: $78
	ld   h, c                                        ; $4015: $61
	halt                                             ; $4016: $76
	ld   d, b                                        ; $4017: $50
	sbc  b                                           ; $4018: $98
	adc  h                                           ; $4019: $8c
	ld   l, c                                        ; $401a: $69
	and  c                                           ; $401b: $a1
	sub  [hl]                                        ; $401c: $96
	sbc  a                                           ; $401d: $9f
	dec  c                                           ; $401e: $0d
	nop                                              ; $401f: $00
	ld   a, [bc]                                     ; $4020: $0a
	ld   b, $9e                                      ; $4021: $06 $9e
	inc  bc                                          ; $4023: $03
	inc  c                                           ; $4024: $0c
	inc  bc                                          ; $4025: $03
	inc  e                                           ; $4026: $1c
	ld   bc, $1808                                   ; $4027: $01 $08 $18
	ld   bc, $6d52                                   ; $402a: $01 $52 $6d
	ld   [hl], c                                     ; $402d: $71
	ld   a, [$000d]                                  ; $402e: $fa $0d $00
	ld   a, [bc]                                     ; $4031: $0a
	rrca                                             ; $4032: $0f
	nop                                              ; $4033: $00
	ld   bc, $c001                                   ; $4034: $01 $01 $c0
	db   $eb                                         ; $4037: $eb
	and  l                                           ; $4038: $a5
	halt                                             ; $4039: $76
	ld   a, l                                        ; $403a: $7d
	sbc  [hl]                                        ; $403b: $9e
	inc  bc                                          ; $403c: $03
	ld   e, c                                        ; $403d: $59
	sub  d                                           ; $403e: $92
	inc  b                                           ; $403f: $04
	db   $ed                                         ; $4040: $ed
	and  b                                           ; $4041: $a0
	inc  b                                           ; $4042: $04
	ld   b, l                                        ; $4043: $45
	sbc  d                                           ; $4044: $9a
	ld   [hl], h                                     ; $4045: $74
	sbc  [hl]                                        ; $4046: $9e
	dec  c                                           ; $4047: $0d
	ld   [bc], a                                     ; $4048: $02
	ld   [hl], d                                     ; $4049: $72
	sub  d                                           ; $404a: $92
	inc  bc                                          ; $404b: $03
	ld   l, e                                        ; $404c: $6b
	inc  bc                                          ; $404d: $03
	ld   a, l                                        ; $404e: $7d
	and  b                                           ; $404f: $a0
	inc  bc                                          ; $4050: $03
	ld   [hl], e                                     ; $4051: $73
	ld   d, h                                        ; $4052: $54
	ld   a, h                                        ; $4053: $7c
	ld   a, c                                        ; $4054: $79
	inc  b                                           ; $4055: $04
	di                                               ; $4056: $f3
	ld   d, d                                        ; $4057: $52
	sbc  c                                           ; $4058: $99
	dec  c                                           ; $4059: $0d
	inc  b                                           ; $405a: $04
	xor  b                                           ; $405b: $a8
	ld   l, l                                        ; $405c: $6d
	ld   d, d                                        ; $405d: $52
	inc  b                                           ; $405e: $04
	db   $e4                                         ; $405f: $e4
	ld   [bc], a                                     ; $4060: $02
	ld   d, a                                        ; $4061: $57
	sbc  a                                           ; $4062: $9f
	dec  c                                           ; $4063: $0d
	nop                                              ; $4064: $00
	ld   a, [bc]                                     ; $4065: $0a
	ld   bc, $7283                                   ; $4066: $01 $83 $72
	ld   d, h                                        ; $4069: $54
	ld   a, l                                        ; $406a: $7d
	inc  bc                                          ; $406b: $03
	ld   [hl], e                                     ; $406c: $73
	dec  b                                           ; $406d: $05
	db   $fc                                         ; $406e: $fc
	ld   a, c                                        ; $406f: $79
	inc  b                                           ; $4070: $04
	di                                               ; $4071: $f3
	ld   d, d                                        ; $4072: $52
	sbc  c                                           ; $4073: $99
	ld   b, $1e                                      ; $4074: $06 $1e
	dec  b                                           ; $4076: $05
	sbc  c                                           ; $4077: $99
	inc  b                                           ; $4078: $04
	jr   nz, jr_047_4088                             ; $4079: $20 $0d

	inc  b                                           ; $407b: $04
	ld   c, $02                                      ; $407c: $0e $02
	ld   d, l                                        ; $407e: $55
	ld   a, h                                        ; $407f: $7c
	sub  b                                           ; $4080: $90
	ld   a, h                                        ; $4081: $7c
	ld   a, h                                        ; $4082: $7c
	ld   h, c                                        ; $4083: $61
	halt                                             ; $4084: $76
	and  b                                           ; $4085: $a0
	dec  c                                           ; $4086: $0d
	ret  nz                                          ; $4087: $c0

jr_047_4088:
	db   $eb                                         ; $4088: $eb
	and  l                                           ; $4089: $a5
	halt                                             ; $408a: $76
	ld   [bc], a                                     ; $408b: $02
	ld   a, b                                        ; $408c: $78
	add  c                                           ; $408d: $81
	adc  h                                           ; $408e: $8c
	ld   h, a                                        ; $408f: $67
	sbc  a                                           ; $4090: $9f
	dec  c                                           ; $4091: $0d
	nop                                              ; $4092: $00
	ld   a, [bc]                                     ; $4093: $0a
	inc  e                                           ; $4094: $1c
	ld   bc, $0707                                   ; $4095: $01 $07 $07
	dec  e                                           ; $4098: $1d
	ld   b, b                                        ; $4099: $40
	ld   de, $1103                                   ; $409a: $11 $03 $11
	ld   bc, $2902                                   ; $409d: $01 $02 $29
	nop                                              ; $40a0: $00
	ld   bc, $c0a5                                   ; $40a1: $01 $a5 $c0
	ret  nz                                          ; $40a4: $c0

	ret  nz                                          ; $40a5: $c0

	ret  nz                                          ; $40a6: $c0

	rst  $38                                         ; $40a7: $ff
	rst  $38                                         ; $40a8: $ff
	dec  c                                           ; $40a9: $0d
	ld   l, e                                        ; $40aa: $6b
	and  c                                           ; $40ab: $a1
	ld   a, b                                        ; $40ac: $78
	ld   [bc], a                                     ; $40ad: $02
	rst  $30                                         ; $40ae: $f7
	inc  b                                           ; $40af: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40b0: $cf
	sbc  [hl]                                        ; $40b1: $9e
	ld   l, [hl]                                     ; $40b2: $6e
	sbc  d                                           ; $40b3: $9a
	sub  b                                           ; $40b4: $90
	ld   [bc], a                                     ; $40b5: $02
	jp   nz, Jump_047_7452                           ; $40b6: $c2 $52 $74

	dec  c                                           ; $40b9: $0d
	adc  h                                           ; $40ba: $8c
	ld   l, c                                        ; $40bb: $69
	and  c                                           ; $40bc: $a1
	sub  [hl]                                        ; $40bd: $96
	rst  $38                                         ; $40be: $ff
	rst  $38                                         ; $40bf: $ff
	dec  c                                           ; $40c0: $0d
	nop                                              ; $40c1: $00
	ld   a, [bc]                                     ; $40c2: $0a
	ld   b, $9e                                      ; $40c3: $06 $9e
	inc  bc                                          ; $40c5: $03
	inc  c                                           ; $40c6: $0c
	inc  bc                                          ; $40c7: $03
	inc  e                                           ; $40c8: $1c
	ld   bc, $1808                                   ; $40c9: $01 $08 $18
	ld   bc, $6d52                                   ; $40cc: $01 $52 $6d
	ld   [hl], c                                     ; $40cf: $71
	ld   a, [$000d]                                  ; $40d0: $fa $0d $00
	ld   a, [bc]                                     ; $40d3: $0a
	ld   bc, $c0a5                                   ; $40d4: $01 $a5 $c0
	ret  nz                                          ; $40d7: $c0

	ret  nz                                          ; $40d8: $c0

	ret  nz                                          ; $40d9: $c0

	ret  nz                                          ; $40da: $c0

	rst  $38                                         ; $40db: $ff
	rst  $38                                         ; $40dc: $ff
	dec  c                                           ; $40dd: $0d
	ld   l, [hl]                                     ; $40de: $6e
	sbc  [hl]                                        ; $40df: $9e
	inc  b                                           ; $40e0: $04
	ld   c, $03                                      ; $40e1: $0e $03
	sbc  l                                           ; $40e3: $9d
	inc  b                                           ; $40e4: $04
	and  [hl]                                        ; $40e5: $a6
	ld   [hl], l                                     ; $40e6: $75
	ld   h, a                                        ; $40e7: $67
	ld   e, c                                        ; $40e8: $59
	ld   sp, hl                                      ; $40e9: $f9
	dec  c                                           ; $40ea: $0d
	nop                                              ; $40eb: $00
	ld   a, [bc]                                     ; $40ec: $0a
	rrca                                             ; $40ed: $0f
	nop                                              ; $40ee: $00
	ld   bc, $a501                                   ; $40ef: $01 $01 $a5
	rst  ToBoot                                         ; $40f2: $c7
	rst  ToBoot                                         ; $40f3: $c7
	rst  ToBoot                                         ; $40f4: $c7
	rst  ToBoot                                         ; $40f5: $c7
	rst  $38                                         ; $40f6: $ff
	rst  $38                                         ; $40f7: $ff
	dec  c                                           ; $40f8: $0d
	ld   d, [hl]                                     ; $40f9: $56
	sbc  [hl]                                        ; $40fa: $9e
	ld   d, [hl]                                     ; $40fb: $56
	ld   d, [hl]                                     ; $40fc: $56
	rst  $38                                         ; $40fd: $ff
	rst  $38                                         ; $40fe: $ff
	dec  c                                           ; $40ff: $0d
	ld   a, b                                        ; $4100: $78
	and  c                                           ; $4101: $a1
	halt                                             ; $4102: $76
	ld   e, c                                        ; $4103: $59
	rst  $38                                         ; $4104: $ff
	rst  $38                                         ; $4105: $ff
	dec  c                                           ; $4106: $0d
	nop                                              ; $4107: $00
	ld   a, [bc]                                     ; $4108: $0a
	rrca                                             ; $4109: $0f
	nop                                              ; $410a: $00
	ld   bc, $7601                                   ; $410b: $01 $01 $76
	ld   h, c                                        ; $410e: $61
	sbc  e                                           ; $410f: $9b
	ld   [hl], l                                     ; $4110: $75
	sbc  [hl]                                        ; $4111: $9e
	inc  b                                           ; $4112: $04
	ld   c, c                                        ; $4113: $49
	ld   [hl], l                                     ; $4114: $75
	ret  nz                                          ; $4115: $c0

	db   $eb                                         ; $4116: $eb
	and  l                                           ; $4117: $a5
	ld   e, d                                        ; $4118: $5a
	dec  c                                           ; $4119: $0d
	dec  b                                           ; $411a: $05
	ld   [de], a                                     ; $411b: $12
	ld   l, a                                        ; $411c: $6f
	ld   [hl], h                                     ; $411d: $74
	ld   e, l                                        ; $411e: $5d
	sbc  c                                           ; $411f: $99
	and  c                                           ; $4120: $a1
	ld   [hl], l                                     ; $4121: $75
	ld   h, a                                        ; $4122: $67
	ld   e, c                                        ; $4123: $59
	ld   sp, hl                                      ; $4124: $f9
	dec  c                                           ; $4125: $0d
	nop                                              ; $4126: $00
	ld   a, [bc]                                     ; $4127: $0a
	inc  e                                           ; $4128: $1c
	ld   bc, $0404                                   ; $4129: $01 $04 $04
	ld   bc, $f5b4                                   ; $412c: $01 $b4 $f5
	ret                                              ; $412f: $c9


	and  b                                           ; $4130: $a0
	sub  d                                           ; $4131: $92
	sbc  c                                           ; $4132: $99
	inc  bc                                          ; $4133: $03
	ld   l, a                                        ; $4134: $6f
	ld   a, c                                        ; $4135: $79
	inc  bc                                          ; $4136: $03
	xor  [hl]                                        ; $4137: $ae
	ld   d, h                                        ; $4138: $54
	and  c                                           ; $4139: $a1
	ld   [hl], l                                     ; $413a: $75
	ld   h, a                                        ; $413b: $67
	sub  [hl]                                        ; $413c: $96
	dec  c                                           ; $413d: $0d
	rst  $38                                         ; $413e: $ff
	rst  $38                                         ; $413f: $ff
	ld   [hl], l                                     ; $4140: $75
	sub  b                                           ; $4141: $90
	sbc  [hl]                                        ; $4142: $9e
	inc  bc                                          ; $4143: $03
	add  b                                           ; $4144: $80
	ld   h, l                                        ; $4145: $65
	ld   [hl], c                                     ; $4146: $71
	ld   a, a                                        ; $4147: $7f
	ld   a, b                                        ; $4148: $78
	ld   h, l                                        ; $4149: $65
	ld   a, l                                        ; $414a: $7d
	dec  c                                           ; $414b: $0d
	ld   d, d                                        ; $414c: $52
	ld   e, a                                        ; $414d: $5f
	adc  h                                           ; $414e: $8c
	ld   l, c                                        ; $414f: $69
	and  c                                           ; $4150: $a1
	sub  [hl]                                        ; $4151: $96
	ld   a, e                                        ; $4152: $7b
	sbc  a                                           ; $4153: $9f
	dec  c                                           ; $4154: $0d
	nop                                              ; $4155: $00
	ld   a, [bc]                                     ; $4156: $0a
	ld   bc, $508c                                   ; $4157: $01 $8c $50
	sbc  [hl]                                        ; $415a: $9e
	ret  nz                                          ; $415b: $c0

	db   $eb                                         ; $415c: $eb
	and  l                                           ; $415d: $a5
	ld   a, l                                        ; $415e: $7d
	ld   [bc], a                                     ; $415f: $02
	xor  d                                           ; $4160: $aa
	ld   [hl], l                                     ; $4161: $75
	dec  c                                           ; $4162: $0d
	ld   b, $19                                      ; $4163: $06 $19
	ld   [hl], e                                     ; $4165: $73
	ld   e, a                                        ; $4166: $5f
	sbc  c                                           ; $4167: $99
	halt                                             ; $4168: $76
	ld   h, l                                        ; $4169: $65
	ld   [hl], h                                     ; $416a: $74
	rst  $38                                         ; $416b: $ff
	rst  $38                                         ; $416c: $ff
	dec  c                                           ; $416d: $0d
	inc  bc                                          ; $416e: $03
	ld   l, b                                        ; $416f: $68
	ld   a, c                                        ; $4170: $79
	ld   [bc], a                                     ; $4171: $02
	ld   a, a                                        ; $4172: $7f
	ld   e, e                                        ; $4173: $5b
	adc  h                                           ; $4174: $8c
	ld   h, l                                        ; $4175: $65
	sub  l                                           ; $4176: $95
	ld   d, h                                        ; $4177: $54
	sbc  a                                           ; $4178: $9f
	dec  c                                           ; $4179: $0d
	nop                                              ; $417a: $00
	ld   a, [bc]                                     ; $417b: $0a
	dec  c                                           ; $417c: $0d
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	rrca                                             ; $417f: $0f
	nop                                              ; $4180: $00
	ld   bc, $1a06                                   ; $4181: $01 $06 $1a
	inc  b                                           ; $4184: $04
	inc  hl                                          ; $4185: $23
	ld   h, l                                        ; $4186: $65
	rrca                                             ; $4187: $0f
	ld   bc, $0100                                   ; $4188: $01 $00 $01
	ld   h, c                                        ; $418b: $61
	ld   h, c                                        ; $418c: $61
	ld   a, l                                        ; $418d: $7d
	cp   b                                           ; $418e: $b8
	push hl                                          ; $418f: $e5
	pop  af                                          ; $4190: $f1
	ei                                               ; $4191: $fb
	inc  bc                                          ; $4192: $03
	ld   c, l                                        ; $4193: $4d
	ld   [hl], l                                     ; $4194: $75
	sbc  [hl]                                        ; $4195: $9e
	dec  c                                           ; $4196: $0d
	ld   d, d                                        ; $4197: $52
	ld   [hl], d                                     ; $4198: $72
	ld   [hl], l                                     ; $4199: $75
	sub  b                                           ; $419a: $90
	inc  bc                                          ; $419b: $03
	xor  [hl]                                        ; $419c: $ae
	ld   [hl], c                                     ; $419d: $71
	ld   [hl], h                                     ; $419e: $74
	ld   d, d                                        ; $419f: $52
	ld   d, d                                        ; $41a0: $52
	ld   h, c                                        ; $41a1: $61
	halt                                             ; $41a2: $76
	ld   a, c                                        ; $41a3: $79
	dec  c                                           ; $41a4: $0d
	ld   a, b                                        ; $41a5: $78
	ld   [hl], c                                     ; $41a6: $71
	ld   [hl], h                                     ; $41a7: $74
	adc  h                                           ; $41a8: $8c
	ld   h, a                                        ; $41a9: $67
	sbc  a                                           ; $41aa: $9f
	dec  c                                           ; $41ab: $0d
	nop                                              ; $41ac: $00
	ld   a, [bc]                                     ; $41ad: $0a
	inc  e                                           ; $41ae: $1c
	ld   bc, $0303                                   ; $41af: $01 $03 $03
	ld   bc, $7150                                   ; $41b2: $01 $50 $71
	sbc  [hl]                                        ; $41b5: $9e
	ld   h, c                                        ; $41b6: $61
	and  c                                           ; $41b7: $a1
	ld   a, b                                        ; $41b8: $78
	halt                                             ; $41b9: $76
	ld   h, c                                        ; $41ba: $61
	sbc  e                                           ; $41bb: $9b
	ld   a, c                                        ; $41bc: $79
	dec  c                                           ; $41bd: $0d
	cp   h                                           ; $41be: $bc
	call nz, $f5b2                                   ; $41bf: $c4 $b2 $f5
	ld   e, d                                        ; $41c2: $5a
	ld   a, [$000d]                                  ; $41c3: $fa $0d $00
	ld   a, [bc]                                     ; $41c6: $0a
	rrca                                             ; $41c7: $0f
	nop                                              ; $41c8: $00
	ld   bc, $6301                                   ; $41c9: $01 $01 $63
	ld   e, l                                        ; $41cc: $5d
	sub  a                                           ; $41cd: $97
	ld   h, e                                        ; $41ce: $63
	and  c                                           ; $41cf: $a1
	sbc  [hl]                                        ; $41d0: $9e
	ld   d, b                                        ; $41d1: $50
	add  h                                           ; $41d2: $84
	ld   a, b                                        ; $41d3: $78
	ld   d, d                                        ; $41d4: $52
	ld   a, [$000d]                                  ; $41d5: $fa $0d $00
	ld   a, [bc]                                     ; $41d8: $0a
	add  hl, de                                      ; $41d9: $19
	dec  b                                           ; $41da: $05
	inc  bc                                          ; $41db: $03
	ld   h, e                                        ; $41dc: $63
	ld   e, l                                        ; $41dd: $5d
	sub  a                                           ; $41de: $97
	and  b                                           ; $41df: $a0
	inc  bc                                          ; $41e0: $03
	ld   e, e                                        ; $41e1: $5b
	ld   e, a                                        ; $41e2: $5f
	sbc  c                                           ; $41e3: $99
	nop                                              ; $41e4: $00
	nop                                              ; $41e5: $00
	ld   h, e                                        ; $41e6: $63
	ld   e, l                                        ; $41e7: $5d
	sub  a                                           ; $41e8: $97
	and  b                                           ; $41e9: $a0
	ld   [hl], d                                     ; $41ea: $72
	ld   e, e                                        ; $41eb: $5b
	halt                                             ; $41ec: $76
	ld   a, [hl]                                     ; $41ed: $7e
	ld   h, a                                        ; $41ee: $67
	nop                                              ; $41ef: $00
	ld   bc, $7152                                   ; $41f0: $01 $52 $71
	ld   h, l                                        ; $41f3: $65
	sub  l                                           ; $41f4: $95
	ld   a, c                                        ; $41f5: $79
	inc  b                                           ; $41f6: $04
	inc  sp                                          ; $41f7: $33
	add  h                                           ; $41f8: $84
	nop                                              ; $41f9: $00
	ld   [bc], a                                     ; $41fa: $02
	rlca                                             ; $41fb: $07
	xor  [hl]                                        ; $41fc: $ae
	inc  b                                           ; $41fd: $04
	ld   [bc], a                                     ; $41fe: $02
	inc  bc                                          ; $41ff: $03
	ld   bc, $2000                                   ; $4200: $01 $00 $20
	nop                                              ; $4203: $00
	rlca                                             ; $4204: $07
	dec  e                                           ; $4205: $1d
	dec  b                                           ; $4206: $05
	ld   [bc], a                                     ; $4207: $02
	inc  bc                                          ; $4208: $03
	ld   bc, $2001                                   ; $4209: $01 $01 $20
	nop                                              ; $420c: $00
	rlca                                             ; $420d: $07
	cp   h                                           ; $420e: $bc
	dec  b                                           ; $420f: $05
	ld   [bc], a                                     ; $4210: $02
	inc  bc                                          ; $4211: $03
	ld   bc, $2002                                   ; $4212: $01 $02 $20
	nop                                              ; $4215: $00
	ld   b, $27                                      ; $4216: $06 $27
	ld   b, $1c                                      ; $4218: $06 $1c
	ld   bc, $0303                                   ; $421a: $01 $03 $03
	ld   bc, $915b                                   ; $421d: $01 $5b $91
	ld   [hl], c                                     ; $4220: $71
	ld   a, [$000d]                                  ; $4221: $fa $0d $00
	ld   a, [bc]                                     ; $4224: $0a
	dec  c                                           ; $4225: $0d
	nop                                              ; $4226: $00
	nop                                              ; $4227: $00
	rrca                                             ; $4228: $0f
	nop                                              ; $4229: $00
	ld   bc, $5801                                   ; $422a: $01 $01 $58
	ld   [hl], c                                     ; $422d: $71
	halt                                             ; $422e: $76
	sbc  [hl]                                        ; $422f: $9e
	ld   d, b                                        ; $4230: $50
	add  h                                           ; $4231: $84
	ld   a, b                                        ; $4232: $78
	ld   d, d                                        ; $4233: $52
	ld   a, [$000d]                                  ; $4234: $fa $0d $00
	ld   a, [bc]                                     ; $4237: $0a
	inc  e                                           ; $4238: $1c
	ld   bc, $0505                                   ; $4239: $01 $05 $05
	ld   bc, $9e50                                   ; $423c: $01 $50 $9e
	ld   d, b                                        ; $423f: $50
	sbc  b                                           ; $4240: $98
	ld   e, d                                        ; $4241: $5a
	halt                                             ; $4242: $76
	ld   d, h                                        ; $4243: $54
	ld   h, d                                        ; $4244: $62
	ld   h, h                                        ; $4245: $64
	ld   d, d                                        ; $4246: $52
	adc  h                                           ; $4247: $8c
	ld   h, a                                        ; $4248: $67
	sbc  a                                           ; $4249: $9f
	dec  c                                           ; $424a: $0d
	nop                                              ; $424b: $00
	ld   a, [bc]                                     ; $424c: $0a
	rrca                                             ; $424d: $0f
	nop                                              ; $424e: $00
	ld   bc, $5001                                   ; $424f: $01 $01 $50
	add  h                                           ; $4252: $84
	ld   a, b                                        ; $4253: $78
	ld   e, l                                        ; $4254: $5d
	inc  b                                           ; $4255: $04
	inc  sp                                          ; $4256: $33
	add  h                                           ; $4257: $84
	halt                                             ; $4258: $76
	ld   h, c                                        ; $4259: $61
	sbc  e                                           ; $425a: $9b
	ld   [hl], l                                     ; $425b: $75
	ld   h, l                                        ; $425c: $65
	ld   l, l                                        ; $425d: $6d
	ld   a, e                                        ; $425e: $7b
	sbc  a                                           ; $425f: $9f
	dec  c                                           ; $4260: $0d
	nop                                              ; $4261: $00
	ld   a, [bc]                                     ; $4262: $0a
	inc  e                                           ; $4263: $1c
	ld   bc, $0101                                   ; $4264: $01 $01 $01
	dec  e                                           ; $4267: $1d
	ld   b, b                                        ; $4268: $40
	ld   de, $1103                                   ; $4269: $11 $03 $11
	ld   bc, $2802                                   ; $426c: $01 $02 $28
	nop                                              ; $426f: $00
	ld   bc, $9850                                   ; $4270: $01 $50 $98
	ld   e, d                                        ; $4273: $5a
	halt                                             ; $4274: $76
	ld   d, h                                        ; $4275: $54
	ld   h, d                                        ; $4276: $62
	ld   h, h                                        ; $4277: $64
	ld   d, d                                        ; $4278: $52
	adc  h                                           ; $4279: $8c
	ld   h, a                                        ; $427a: $67
	sbc  [hl]                                        ; $427b: $9e
	dec  c                                           ; $427c: $0d
	ld   [$6300], sp                                 ; $427d: $08 $00 $63
	and  c                                           ; $4280: $a1
	sbc  a                                           ; $4281: $9f
	dec  c                                           ; $4282: $0d
	nop                                              ; $4283: $00
	ld   a, [bc]                                     ; $4284: $0a
	ld   b, $6e                                      ; $4285: $06 $6e
	ld   b, $0f                                      ; $4287: $06 $0f
	nop                                              ; $4289: $00
	ld   bc, $5601                                   ; $428a: $01 $01 $56
	ld   d, d                                        ; $428d: $52
	ld   [hl], c                                     ; $428e: $71
	ld   a, [$000d]                                  ; $428f: $fa $0d $00
	ld   a, [bc]                                     ; $4292: $0a
	inc  e                                           ; $4293: $1c
	ld   bc, $0303                                   ; $4294: $01 $03 $03
	ld   bc, $915b                                   ; $4297: $01 $5b $91
	ld   d, b                                        ; $429a: $50
	ld   d, b                                        ; $429b: $50
	ld   d, b                                        ; $429c: $50
	ld   d, b                                        ; $429d: $50
	ld   d, b                                        ; $429e: $50
	ld   d, b                                        ; $429f: $50
	ld   d, b                                        ; $42a0: $50
	ld   d, b                                        ; $42a1: $50
	ld   a, [$000d]                                  ; $42a2: $fa $0d $00
	ld   a, [bc]                                     ; $42a5: $0a
	dec  c                                           ; $42a6: $0d
	nop                                              ; $42a7: $00
	nop                                              ; $42a8: $00
	inc  c                                           ; $42a9: $0c
	rlca                                             ; $42aa: $07
	inc  d                                           ; $42ab: $14
	ld   [$1c01], sp                                 ; $42ac: $08 $01 $1c
	ld   bc, $1808                                   ; $42af: $01 $08 $18
	ld   bc, $c0a5                                   ; $42b2: $01 $a5 $c0
	ret  nz                                          ; $42b5: $c0

	ret  nz                                          ; $42b6: $c0

	ret  nz                                          ; $42b7: $c0

	ret  nz                                          ; $42b8: $c0

	rst  $38                                         ; $42b9: $ff
	rst  $38                                         ; $42ba: $ff
	dec  c                                           ; $42bb: $0d
	nop                                              ; $42bc: $00
	ld   a, [bc]                                     ; $42bd: $0a
	rrca                                             ; $42be: $0f
	nop                                              ; $42bf: $00
	ld   bc, $5001                                   ; $42c0: $01 $01 $50
	add  h                                           ; $42c3: $84
	ld   a, b                                        ; $42c4: $78
	ld   d, d                                        ; $42c5: $52
	ld   [hl], l                                     ; $42c6: $75
	ld   h, a                                        ; $42c7: $67
	ld   a, e                                        ; $42c8: $7b
	rst  $38                                         ; $42c9: $ff
	rst  $38                                         ; $42ca: $ff
	dec  c                                           ; $42cb: $0d
	ld   h, c                                        ; $42cc: $61
	and  c                                           ; $42cd: $a1
	ld   a, b                                        ; $42ce: $78
	halt                                             ; $42cf: $76
	ld   h, c                                        ; $42d0: $61
	sbc  e                                           ; $42d1: $9b
	ld   a, c                                        ; $42d2: $79
	cp   h                                           ; $42d3: $bc
	call nz, $f5b2                                   ; $42d4: $c4 $b2 $f5
	and  b                                           ; $42d7: $a0
	dec  c                                           ; $42d8: $0d
	inc  bc                                          ; $42d9: $03
	add  b                                           ; $42da: $80
	ld   h, l                                        ; $42db: $65
	ld   [hl], c                                     ; $42dc: $71
	ld   a, a                                        ; $42dd: $7f
	ld   a, b                                        ; $42de: $78
	ld   h, l                                        ; $42df: $65
	ld   l, [hl]                                     ; $42e0: $6e
	ld   a, b                                        ; $42e1: $78
	and  c                                           ; $42e2: $a1
	ld   [hl], h                                     ; $42e3: $74
	sbc  a                                           ; $42e4: $9f
	dec  c                                           ; $42e5: $0d
	nop                                              ; $42e6: $00
	ld   a, [bc]                                     ; $42e7: $0a
	inc  e                                           ; $42e8: $1c
	ld   bc, $0707                                   ; $42e9: $01 $07 $07
	dec  e                                           ; $42ec: $1d
	ld   b, b                                        ; $42ed: $40
	ld   de, $1103                                   ; $42ee: $11 $03 $11
	ld   bc, $2902                                   ; $42f1: $01 $02 $29
	nop                                              ; $42f4: $00
	ld   bc, $0008                                   ; $42f5: $01 $08 $00
	ld   h, e                                        ; $42f8: $63
	and  c                                           ; $42f9: $a1
	rst  $38                                         ; $42fa: $ff
	rst  $38                                         ; $42fb: $ff
	dec  c                                           ; $42fc: $0d
	ld   [bc], a                                     ; $42fd: $02
	and  l                                           ; $42fe: $a5
	sbc  [hl]                                        ; $42ff: $9e
	ld   [hl], d                                     ; $4300: $72
	ld   e, e                                        ; $4301: $5b
	halt                                             ; $4302: $76
	ld   a, [hl]                                     ; $4303: $7e
	ld   h, l                                        ; $4304: $65
	adc  h                                           ; $4305: $8c
	ld   l, c                                        ; $4306: $69
	and  c                                           ; $4307: $a1
	ld   [hl], l                                     ; $4308: $75
	ld   h, l                                        ; $4309: $65
	ld   l, l                                        ; $430a: $6d
	ld   sp, hl                                      ; $430b: $f9
	dec  c                                           ; $430c: $0d
	nop                                              ; $430d: $00
	ld   a, [bc]                                     ; $430e: $0a
	rrca                                             ; $430f: $0f
	nop                                              ; $4310: $00
	ld   bc, $6b01                                   ; $4311: $01 $01 $6b
	sbc  [hl]                                        ; $4314: $9e
	ld   l, e                                        ; $4315: $6b
	and  c                                           ; $4316: $a1
	ld   a, b                                        ; $4317: $78
	ld   h, c                                        ; $4318: $61
	halt                                             ; $4319: $76
	ld   d, b                                        ; $431a: $50
	sbc  b                                           ; $431b: $98
	adc  h                                           ; $431c: $8c
	ld   l, c                                        ; $431d: $69
	and  c                                           ; $431e: $a1
	sub  [hl]                                        ; $431f: $96
	sbc  a                                           ; $4320: $9f
	dec  c                                           ; $4321: $0d
	nop                                              ; $4322: $00
	ld   a, [bc]                                     ; $4323: $0a
	ld   b, $6e                                      ; $4324: $06 $6e
	ld   b, $1c                                      ; $4326: $06 $1c
	ld   bc, $0303                                   ; $4328: $01 $03 $03
	ld   bc, $915b                                   ; $432b: $01 $5b $91
	ld   d, b                                        ; $432e: $50
	ld   d, b                                        ; $432f: $50
	ld   d, b                                        ; $4330: $50
	ld   d, b                                        ; $4331: $50
	ld   d, b                                        ; $4332: $50
	ld   d, b                                        ; $4333: $50
	ld   d, b                                        ; $4334: $50
	ld   d, b                                        ; $4335: $50
	ld   a, [$000d]                                  ; $4336: $fa $0d $00
	ld   a, [bc]                                     ; $4339: $0a
	dec  c                                           ; $433a: $0d
	nop                                              ; $433b: $00
	nop                                              ; $433c: $00
	inc  c                                           ; $433d: $0c
	rlca                                             ; $433e: $07
	inc  e                                           ; $433f: $1c
	ld   bc, $1808                                   ; $4340: $01 $08 $18
	ld   bc, $c0a5                                   ; $4343: $01 $a5 $c0
	ret  nz                                          ; $4346: $c0

	ret  nz                                          ; $4347: $c0

	ret  nz                                          ; $4348: $c0

	ret  nz                                          ; $4349: $c0

	rst  $38                                         ; $434a: $ff
	rst  $38                                         ; $434b: $ff
	dec  c                                           ; $434c: $0d
	nop                                              ; $434d: $00
	ld   a, [bc]                                     ; $434e: $0a
	rrca                                             ; $434f: $0f
	nop                                              ; $4350: $00
	ld   bc, $5001                                   ; $4351: $01 $01 $50
	ld   l, l                                        ; $4354: $6d
	ld   l, l                                        ; $4355: $6d
	ld   l, l                                        ; $4356: $6d
	ld   l, l                                        ; $4357: $6d
	ld   l, l                                        ; $4358: $6d
	ld   l, l                                        ; $4359: $6d
	rst  $38                                         ; $435a: $ff
	rst  $38                                         ; $435b: $ff
	dec  c                                           ; $435c: $0d
	nop                                              ; $435d: $00
	ld   a, [bc]                                     ; $435e: $0a
	inc  e                                           ; $435f: $1c
	ld   bc, $0505                                   ; $4360: $01 $05 $05
	dec  e                                           ; $4363: $1d
	ld   b, b                                        ; $4364: $40
	ld   de, $1103                                   ; $4365: $11 $03 $11
	ld   bc, $2801                                   ; $4368: $01 $01 $28
	nop                                              ; $436b: $00
	ld   bc, $bab0                                   ; $436c: $01 $b0 $ba
	call nz, $ffff                                   ; $436f: $c4 $ff $ff
	dec  c                                           ; $4372: $0d
	ld   e, b                                        ; $4373: $58
	ld   e, c                                        ; $4374: $59
	ld   h, l                                        ; $4375: $65
	ld   d, d                                        ; $4376: $52
	ld   [hl], l                                     ; $4377: $75
	ld   h, a                                        ; $4378: $67
	ld   a, e                                        ; $4379: $7b
	sbc  [hl]                                        ; $437a: $9e
	ld   b, $09                                      ; $437b: $06 $09
	inc  bc                                          ; $437d: $03
	add  d                                           ; $437e: $82
	ld   h, l                                        ; $437f: $65
	ld   [hl], h                                     ; $4380: $74
	dec  c                                           ; $4381: $0d
	inc  b                                           ; $4382: $04
	inc  sp                                          ; $4383: $33
	and  c                                           ; $4384: $a1
	ld   h, [hl]                                     ; $4385: $66
	sub  c                                           ; $4386: $91
	ld   d, h                                        ; $4387: $54
	ld   a, b                                        ; $4388: $78
	and  c                                           ; $4389: $a1
	ld   [hl], h                                     ; $438a: $74
	sbc  a                                           ; $438b: $9f
	dec  c                                           ; $438c: $0d
	nop                                              ; $438d: $00
	ld   a, [bc]                                     ; $438e: $0a
	ld   b, $6e                                      ; $438f: $06 $6e
	ld   b, $1c                                      ; $4391: $06 $1c
	ld   bc, $0303                                   ; $4393: $01 $03 $03
	ld   bc, $915b                                   ; $4396: $01 $5b $91
	ld   [hl], c                                     ; $4399: $71
	ld   a, [$000d]                                  ; $439a: $fa $0d $00
	ld   a, [bc]                                     ; $439d: $0a
	dec  c                                           ; $439e: $0d
	nop                                              ; $439f: $00
	nop                                              ; $43a0: $00
	inc  c                                           ; $43a1: $0c
	rlca                                             ; $43a2: $07
	inc  e                                           ; $43a3: $1c
	ld   bc, $1808                                   ; $43a4: $01 $08 $18
	ld   bc, $c0a5                                   ; $43a7: $01 $a5 $c0
	ret  nz                                          ; $43aa: $c0

	ret  nz                                          ; $43ab: $c0

	ret  nz                                          ; $43ac: $c0

	ret  nz                                          ; $43ad: $c0

	rst  $38                                         ; $43ae: $ff
	rst  $38                                         ; $43af: $ff
	dec  c                                           ; $43b0: $0d
	nop                                              ; $43b1: $00
	ld   a, [bc]                                     ; $43b2: $0a
	rrca                                             ; $43b3: $0f
	nop                                              ; $43b4: $00
	ld   bc, $0401                                   ; $43b5: $01 $01 $04
	ld   c, $03                                      ; $43b8: $0e $03
	sbc  l                                           ; $43ba: $9d
	inc  b                                           ; $43bb: $04
	and  [hl]                                        ; $43bc: $a6
	ld   [hl], l                                     ; $43bd: $75
	ld   h, a                                        ; $43be: $67
	ld   e, c                                        ; $43bf: $59
	sbc  [hl]                                        ; $43c0: $9e
	ld   h, e                                        ; $43c1: $63
	ld   e, l                                        ; $43c2: $5d
	sub  a                                           ; $43c3: $97
	ld   h, e                                        ; $43c4: $63
	and  c                                           ; $43c5: $a1
	rst  $38                                         ; $43c6: $ff
	rst  $38                                         ; $43c7: $ff
	dec  c                                           ; $43c8: $0d
	nop                                              ; $43c9: $00
	ld   a, [bc]                                     ; $43ca: $0a
	inc  e                                           ; $43cb: $1c
	ld   bc, $0404                                   ; $43cc: $01 $04 $04
	ld   bc, $9e56                                   ; $43cf: $01 $56 $9e
	ld   d, [hl]                                     ; $43d2: $56
	ld   d, [hl]                                     ; $43d3: $56
	rst  $38                                         ; $43d4: $ff
	rst  $38                                         ; $43d5: $ff
	dec  c                                           ; $43d6: $0d
	nop                                              ; $43d7: $00
	ld   a, [bc]                                     ; $43d8: $0a
	rrca                                             ; $43d9: $0f
	nop                                              ; $43da: $00
	ld   bc, $7601                                   ; $43db: $01 $01 $76
	ld   a, c                                        ; $43de: $79
	ld   e, c                                        ; $43df: $59
	ld   e, l                                        ; $43e0: $5d
	sbc  [hl]                                        ; $43e1: $9e
	ld   h, c                                        ; $43e2: $61
	ld   h, c                                        ; $43e3: $61
	ld   e, d                                        ; $43e4: $5a
	cp   b                                           ; $43e5: $b8
	push hl                                          ; $43e6: $e5
	pop  af                                          ; $43e7: $f1
	ei                                               ; $43e8: $fb
	inc  bc                                          ; $43e9: $03
	ld   c, l                                        ; $43ea: $4d
	dec  c                                           ; $43eb: $0d
	ld   a, b                                        ; $43ec: $78
	and  c                                           ; $43ed: $a1
	ld   [hl], l                                     ; $43ee: $75
	ld   h, a                                        ; $43ef: $67
	sub  [hl]                                        ; $43f0: $96
	ld   a, e                                        ; $43f1: $7b
	ld   sp, hl                                      ; $43f2: $f9
	dec  c                                           ; $43f3: $0d
	nop                                              ; $43f4: $00
	ld   a, [bc]                                     ; $43f5: $0a
	inc  e                                           ; $43f6: $1c
	ld   bc, $0000                                   ; $43f7: $01 $00 $00
	ld   bc, $5656                                   ; $43fa: $01 $56 $56
	sbc  a                                           ; $43fd: $9f
	dec  c                                           ; $43fe: $0d
	ld   [bc], a                                     ; $43ff: $02
	sbc  b                                           ; $4400: $98
	inc  bc                                          ; $4401: $03
	nop                                              ; $4402: $00
	ld   a, h                                        ; $4403: $7c
	adc  l                                           ; $4404: $8d
	and  c                                           ; $4405: $a1
	ld   a, b                                        ; $4406: $78
	sub  b                                           ; $4407: $90
	inc  bc                                          ; $4408: $03
	xor  [hl]                                        ; $4409: $ae
	ld   d, d                                        ; $440a: $52
	adc  h                                           ; $440b: $8c
	ld   h, a                                        ; $440c: $67
	ld   e, c                                        ; $440d: $59
	sub  a                                           ; $440e: $97
	dec  c                                           ; $440f: $0d
	inc  bc                                          ; $4410: $03
	ld   l, h                                        ; $4411: $6c
	ld   h, l                                        ; $4412: $65
	ld   [bc], a                                     ; $4413: $02
	and  c                                           ; $4414: $a1
	and  b                                           ; $4415: $a0
	ld   [hl], d                                     ; $4416: $72
	ld   e, c                                        ; $4417: $59
	ld   [hl], c                                     ; $4418: $71
	ld   [hl], h                                     ; $4419: $74
	ld   [bc], a                                     ; $441a: $02
	inc  [hl]                                        ; $441b: $34
	ld   h, e                                        ; $441c: $63
	ld   d, d                                        ; $441d: $52
	ld   a, e                                        ; $441e: $7b
	sbc  a                                           ; $441f: $9f
	dec  c                                           ; $4420: $0d
	nop                                              ; $4421: $00
	ld   a, [bc]                                     ; $4422: $0a
	dec  c                                           ; $4423: $0d
	nop                                              ; $4424: $00
	nop                                              ; $4425: $00
	rrca                                             ; $4426: $0f
	nop                                              ; $4427: $00
	ld   bc, $c106                                   ; $4428: $01 $06 $c1
	ld   b, $23                                      ; $442b: $06 $23
	ld   bc, $011c                                   ; $442d: $01 $1c $01
	nop                                              ; $4430: $00
	nop                                              ; $4431: $00
	ld   bc, $ffff                                   ; $4432: $01 $ff $ff
	halt                                             ; $4435: $76
	ld   d, d                                        ; $4436: $52
	ld   d, h                                        ; $4437: $54
	ld   [bc], a                                     ; $4438: $02
	scf                                              ; $4439: $37
	ld   h, [hl]                                     ; $443a: $66
	ld   [hl], l                                     ; $443b: $75
	ld   h, l                                        ; $443c: $65
	ld   l, l                                        ; $443d: $6d
	ld   e, d                                        ; $443e: $5a
	dec  c                                           ; $443f: $0d
	ld   d, d                                        ; $4440: $52
	ld   e, c                                        ; $4441: $59
	ld   e, d                                        ; $4442: $5a
	ld   [hl], l                                     ; $4443: $75
	ld   h, l                                        ; $4444: $65
	ld   l, l                                        ; $4445: $6d
	ld   sp, hl                                      ; $4446: $f9
	dec  c                                           ; $4447: $0d
	nop                                              ; $4448: $00
	ld   a, [bc]                                     ; $4449: $0a
	rrca                                             ; $444a: $0f
	nop                                              ; $444b: $00
	ld   bc, $7d01                                   ; $444c: $01 $01 $7d
	ld   d, d                                        ; $444f: $52
	sbc  [hl]                                        ; $4450: $9e
	ld   l, e                                        ; $4451: $6b
	ld   d, h                                        ; $4452: $54
	ld   [hl], l                                     ; $4453: $75
	ld   h, a                                        ; $4454: $67
	ld   a, e                                        ; $4455: $7b
	rst  $38                                         ; $4456: $ff
	rst  $38                                         ; $4457: $ff
	dec  c                                           ; $4458: $0d
	nop                                              ; $4459: $00
	ld   a, [bc]                                     ; $445a: $0a
	add  hl, de                                      ; $445b: $19
	dec  b                                           ; $445c: $05
	inc  bc                                          ; $445d: $03
	ld   e, b                                        ; $445e: $58
	dec  b                                           ; $445f: $05
	dec  c                                           ; $4460: $0d
	and  b                                           ; $4461: $a0
	ld   [bc], a                                     ; $4462: $02
	sbc  l                                           ; $4463: $9d
	ld   d, h                                        ; $4464: $54
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	ld   h, e                                        ; $4467: $63
	ld   e, l                                        ; $4468: $5d
	sub  a                                           ; $4469: $97
	ld   a, c                                        ; $446a: $79
	ld   [bc], a                                     ; $446b: $02
	jr   nz, jr_047_4470                             ; $446c: $20 $02

	sbc  l                                           ; $446e: $9d
	nop                                              ; $446f: $00

jr_047_4470:
	ld   bc, $0358                                   ; $4470: $01 $58 $03
	jp   $0479                                       ; $4473: $c3 $79 $04


	ld   sp, hl                                      ; $4476: $f9
	ld   d, h                                        ; $4477: $54
	nop                                              ; $4478: $00
	ld   [bc], a                                     ; $4479: $02
	rlca                                             ; $447a: $07
	dec  l                                           ; $447b: $2d
	rlca                                             ; $447c: $07
	ld   [bc], a                                     ; $447d: $02
	inc  bc                                          ; $447e: $03
	ld   bc, $2000                                   ; $447f: $01 $00 $20
	nop                                              ; $4482: $00
	rlca                                             ; $4483: $07
	ld   [hl], b                                     ; $4484: $70
	rlca                                             ; $4485: $07
	ld   [bc], a                                     ; $4486: $02
	inc  bc                                          ; $4487: $03
	ld   bc, $2001                                   ; $4488: $01 $01 $20
	nop                                              ; $448b: $00
	rlca                                             ; $448c: $07
	cp   [hl]                                        ; $448d: $be
	rlca                                             ; $448e: $07
	ld   [bc], a                                     ; $448f: $02
	inc  bc                                          ; $4490: $03
	ld   bc, $2002                                   ; $4491: $01 $02 $20
	nop                                              ; $4494: $00
	ld   b, $13                                      ; $4495: $06 $13
	ld   [$000f], sp                                 ; $4497: $08 $0f $00
	ld   bc, $0301                                   ; $449a: $01 $01 $03
	dec  bc                                          ; $449d: $0b
	ld   bc, $7614                                   ; $449e: $01 $14 $76
	inc  b                                           ; $44a1: $04
	sbc  [hl]                                        ; $44a2: $9e
	ld   e, c                                        ; $44a3: $59
	ld   [hl], c                                     ; $44a4: $71
	ld   [hl], h                                     ; $44a5: $74
	dec  b                                           ; $44a6: $05
	dec  d                                           ; $44a7: $15
	ld   e, c                                        ; $44a8: $59
	ld   [hl], c                                     ; $44a9: $71
	ld   l, l                                        ; $44aa: $6d
	ld   [hl], l                                     ; $44ab: $75
	ld   h, a                                        ; $44ac: $67
	sbc  a                                           ; $44ad: $9f
	dec  c                                           ; $44ae: $0d
	ld   d, b                                        ; $44af: $50
	sbc  b                                           ; $44b0: $98
	ld   e, d                                        ; $44b1: $5a
	halt                                             ; $44b2: $76
	ld   d, h                                        ; $44b3: $54
	ld   h, d                                        ; $44b4: $62
	ld   h, h                                        ; $44b5: $64
	ld   d, d                                        ; $44b6: $52
	adc  h                                           ; $44b7: $8c
	ld   h, l                                        ; $44b8: $65
	ld   l, l                                        ; $44b9: $6d
	sbc  a                                           ; $44ba: $9f
	dec  c                                           ; $44bb: $0d
	nop                                              ; $44bc: $00
	ld   a, [bc]                                     ; $44bd: $0a
	inc  e                                           ; $44be: $1c
	ld   bc, $0101                                   ; $44bf: $01 $01 $01
	dec  e                                           ; $44c2: $1d
	ld   b, b                                        ; $44c3: $40
	ld   de, $1103                                   ; $44c4: $11 $03 $11
	ld   bc, $2802                                   ; $44c7: $01 $02 $28
	nop                                              ; $44ca: $00
	ld   bc, $5477                                   ; $44cb: $01 $77 $54
	ld   d, d                                        ; $44ce: $52
	ld   l, l                                        ; $44cf: $6d
	ld   h, l                                        ; $44d0: $65
	adc  h                                           ; $44d1: $8c
	ld   h, l                                        ; $44d2: $65
	ld   [hl], h                                     ; $44d3: $74
	sbc  a                                           ; $44d4: $9f
	dec  c                                           ; $44d5: $0d
	nop                                              ; $44d6: $00
	ld   a, [bc]                                     ; $44d7: $0a
	ld   b, $54                                      ; $44d8: $06 $54
	ld   [$000f], sp                                 ; $44da: $08 $0f $00
	ld   bc, $6301                                   ; $44dd: $01 $01 $63
	ld   e, l                                        ; $44e0: $5d
	sub  a                                           ; $44e1: $97
	ld   h, e                                        ; $44e2: $63
	and  c                                           ; $44e3: $a1
	ld   a, h                                        ; $44e4: $7c
	ld   [bc], a                                     ; $44e5: $02
	ld   b, $02                                      ; $44e6: $06 $02
	bit  7, b                                        ; $44e8: $cb $78
	ld   [bc], a                                     ; $44ea: $02
	jr   nz, jr_047_44f1                             ; $44eb: $20 $04

	ret  c                                           ; $44ed: $d8

	ld   e, d                                        ; $44ee: $5a
	dec  c                                           ; $44ef: $0d
	ld   [bc], a                                     ; $44f0: $02

jr_047_44f1:
	sub  l                                           ; $44f1: $95
	sbc  d                                           ; $44f2: $9a
	ld   [hl], h                                     ; $44f3: $74
	dec  b                                           ; $44f4: $05
	inc  de                                          ; $44f5: $13
	ld   h, l                                        ; $44f6: $65
	ld   e, c                                        ; $44f7: $59
	ld   [hl], c                                     ; $44f8: $71
	ld   l, l                                        ; $44f9: $6d
	ld   [hl], l                                     ; $44fa: $75
	ld   h, a                                        ; $44fb: $67
	sbc  a                                           ; $44fc: $9f
	dec  c                                           ; $44fd: $0d
	nop                                              ; $44fe: $00
	ld   a, [bc]                                     ; $44ff: $0a
	inc  e                                           ; $4500: $1c
	ld   bc, $0404                                   ; $4501: $01 $04 $04
	dec  e                                           ; $4504: $1d
	ld   b, b                                        ; $4505: $40
	ld   de, $1103                                   ; $4506: $11 $03 $11
	ld   bc, $2902                                   ; $4509: $01 $02 $29
	nop                                              ; $450c: $00
	ld   bc, $9a6b                                   ; $450d: $01 $6b $9a
	ld   a, l                                        ; $4510: $7d
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	ld   d, b                                        ; $4513: $50
	adc  h                                           ; $4514: $8c
	sbc  b                                           ; $4515: $98
	ld   [bc], a                                     ; $4516: $02
	sbc  l                                           ; $4517: $9d
	sbc  l                                           ; $4518: $9d
	ld   a, b                                        ; $4519: $78
	ld   d, d                                        ; $451a: $52
	ld   [hl], l                                     ; $451b: $75
	dec  c                                           ; $451c: $0d
	ld   [bc], a                                     ; $451d: $02
	inc  [hl]                                        ; $451e: $34
	ld   h, e                                        ; $451f: $63
	ld   d, d                                        ; $4520: $52
	ld   a, e                                        ; $4521: $7b
	sbc  a                                           ; $4522: $9f
	dec  c                                           ; $4523: $0d
	nop                                              ; $4524: $00
	ld   a, [bc]                                     ; $4525: $0a
	ld   b, $54                                      ; $4526: $06 $54
	ld   [$000f], sp                                 ; $4528: $08 $0f $00
	ld   bc, $6b01                                   ; $452b: $01 $01 $6b
	ld   d, h                                        ; $452e: $54
	ld   l, [hl]                                     ; $452f: $6e
	rst  $38                                         ; $4530: $ff
	rst  $38                                         ; $4531: $ff
	ld   [bc], a                                     ; $4532: $02
	dec  e                                           ; $4533: $1d
	inc  b                                           ; $4534: $04
	ld   b, a                                        ; $4535: $47
	ld   h, l                                        ; $4536: $65
	ld   [hl], h                                     ; $4537: $74
	ld   d, d                                        ; $4538: $52
	ld   l, l                                        ; $4539: $6d
	ld   l, [hl]                                     ; $453a: $6e
	ld   d, d                                        ; $453b: $52
	ld   l, l                                        ; $453c: $6d
	dec  c                                           ; $453d: $0d
	ld   e, b                                        ; $453e: $58
	dec  b                                           ; $453f: $05
	dec  c                                           ; $4540: $0d
	ld   a, c                                        ; $4541: $79
	ld   e, b                                        ; $4542: $58
	inc  bc                                          ; $4543: $03
	jp   Jump_047_62a0                               ; $4544: $c3 $a0 $62


	ld   l, a                                        ; $4547: $6f
	ld   l, e                                        ; $4548: $6b
	ld   d, h                                        ; $4549: $54
	dec  c                                           ; $454a: $0d
	ld   h, l                                        ; $454b: $65
	adc  h                                           ; $454c: $8c
	ld   h, a                                        ; $454d: $67
	sub  [hl]                                        ; $454e: $96
	sbc  a                                           ; $454f: $9f
	dec  c                                           ; $4550: $0d
	nop                                              ; $4551: $00
	ld   a, [bc]                                     ; $4552: $0a
	inc  e                                           ; $4553: $1c
	ld   bc, $0000                                   ; $4554: $01 $00 $00
	ld   bc, $1804                                   ; $4557: $01 $04 $18
	inc  bc                                          ; $455a: $03
	sbc  c                                           ; $455b: $99
	ld   a, h                                        ; $455c: $7c
	ld   h, c                                        ; $455d: $61
	halt                                             ; $455e: $76
	and  b                                           ; $455f: $a0
	ld   h, l                                        ; $4560: $65
	ld   l, l                                        ; $4561: $6d
	adc  h                                           ; $4562: $8c
	ld   [hl], l                                     ; $4563: $75
	ld   [hl], l                                     ; $4564: $75
	ld   h, a                                        ; $4565: $67
	ld   e, c                                        ; $4566: $59
	sub  a                                           ; $4567: $97
	dec  c                                           ; $4568: $0d
	ld   [bc], a                                     ; $4569: $02
	and  c                                           ; $456a: $a1
	and  b                                           ; $456b: $a0
	ld   [hl], d                                     ; $456c: $72
	ld   e, c                                        ; $456d: $59
	sbc  l                                           ; $456e: $9d
	ld   a, b                                        ; $456f: $78
	ld   e, l                                        ; $4570: $5d
	ld   [hl], h                                     ; $4571: $74
	ld   d, d                                        ; $4572: $52
	ld   d, d                                        ; $4573: $52
	ld   [hl], l                                     ; $4574: $75
	ld   h, a                                        ; $4575: $67
	sub  [hl]                                        ; $4576: $96
	sbc  a                                           ; $4577: $9f
	dec  c                                           ; $4578: $0d
	nop                                              ; $4579: $00
	ld   a, [bc]                                     ; $457a: $0a
	ld   b, $54                                      ; $457b: $06 $54
	ld   [$011c], sp                                 ; $457d: $08 $1c $01
	dec  b                                           ; $4580: $05
	dec  b                                           ; $4581: $05
	ld   bc, $9e50                                   ; $4582: $01 $50 $9e
	ld   d, b                                        ; $4585: $50
	ld   l, l                                        ; $4586: $6d
	ld   h, l                                        ; $4587: $65
	ld   e, d                                        ; $4588: $5a
	jp   z, Jump_047_7eb9                            ; $4589: $ca $b9 $7e

	ld   [hl], c                                     ; $458c: $71
	ld   e, c                                        ; $458d: $59
	sbc  b                                           ; $458e: $98
	dec  c                                           ; $458f: $0d
	ld   h, l                                        ; $4590: $65
	ld   l, a                                        ; $4591: $6f
	sub  c                                           ; $4592: $91
	ld   [hl], c                                     ; $4593: $71
	ld   l, l                                        ; $4594: $6d
	ld   e, c                                        ; $4595: $59
	sub  a                                           ; $4596: $97
	dec  c                                           ; $4597: $0d
	inc  b                                           ; $4598: $04
	ld   c, $04                                      ; $4599: $0e $04
	adc  h                                           ; $459b: $8c
	ld   [hl], l                                     ; $459c: $75
	ld   h, l                                        ; $459d: $65
	ld   l, l                                        ; $459e: $6d
	sub  [hl]                                        ; $459f: $96
	ld   a, e                                        ; $45a0: $7b
	rst  $38                                         ; $45a1: $ff
	rst  $38                                         ; $45a2: $ff
	dec  c                                           ; $45a3: $0d
	nop                                              ; $45a4: $00
	ld   a, [bc]                                     ; $45a5: $0a
	ld   bc, $8f62                                   ; $45a6: $01 $62 $8f
	and  c                                           ; $45a9: $a1
	ld   a, b                                        ; $45aa: $78
	ld   h, e                                        ; $45ab: $63
	ld   d, d                                        ; $45ac: $52
	sbc  [hl]                                        ; $45ad: $9e
	dec  c                                           ; $45ae: $0d
	pop  de                                          ; $45af: $d1
	ret  nz                                          ; $45b0: $c0

	pop  de                                          ; $45b1: $d1
	ret  nz                                          ; $45b2: $c0

	ld   h, l                                        ; $45b3: $65
	ld   l, a                                        ; $45b4: $6f
	sub  c                                           ; $45b5: $91
	ld   [hl], c                                     ; $45b6: $71
	ld   [hl], h                                     ; $45b7: $74
	sbc  a                                           ; $45b8: $9f
	dec  c                                           ; $45b9: $0d
	nop                                              ; $45ba: $00
	ld   a, [bc]                                     ; $45bb: $0a
	ld   b, $54                                      ; $45bc: $06 $54
	ld   [$011c], sp                                 ; $45be: $08 $1c $01
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	ld   bc, $9a6b                                   ; $45c3: $01 $6b $9a
	ld   h, [hl]                                     ; $45c6: $66
	sub  c                                           ; $45c7: $91
	sbc  [hl]                                        ; $45c8: $9e
	adc  h                                           ; $45c9: $8c
	ld   l, l                                        ; $45ca: $6d
	inc  b                                           ; $45cb: $04
	ld   c, c                                        ; $45cc: $49
	ld   e, c                                        ; $45cd: $59
	inc  b                                           ; $45ce: $04
	sbc  [hl]                                        ; $45cf: $9e
	ld   e, c                                        ; $45d0: $59
	sub  a                                           ; $45d1: $97
	ld   a, b                                        ; $45d2: $78
	ld   d, d                                        ; $45d3: $52
	dec  c                                           ; $45d4: $0d
	ld   h, c                                        ; $45d5: $61
	halt                                             ; $45d6: $76
	ld   e, d                                        ; $45d7: $5a
	ld   d, b                                        ; $45d8: $50
	ld   [hl], c                                     ; $45d9: $71
	ld   l, l                                        ; $45da: $6d
	sub  a                                           ; $45db: $97
	sbc  [hl]                                        ; $45dc: $9e
	ld   d, [hl]                                     ; $45dd: $56
	and  c                                           ; $45de: $a1
	sbc  b                                           ; $45df: $98
	sub  l                                           ; $45e0: $95
	ld   a, b                                        ; $45e1: $78
	ld   e, l                                        ; $45e2: $5d
	dec  c                                           ; $45e3: $0d
	ld   [bc], a                                     ; $45e4: $02
	jp   nz, Jump_047_7452                           ; $45e5: $c2 $52 $74

	ld   [bc], a                                     ; $45e8: $02
	inc  [hl]                                        ; $45e9: $34
	ld   h, e                                        ; $45ea: $63
	ld   d, d                                        ; $45eb: $52
	ld   a, e                                        ; $45ec: $7b
	sbc  a                                           ; $45ed: $9f
	dec  c                                           ; $45ee: $0d
	nop                                              ; $45ef: $00
	ld   a, [bc]                                     ; $45f0: $0a
	dec  c                                           ; $45f1: $0d
	nop                                              ; $45f2: $00
	nop                                              ; $45f3: $00
	rrca                                             ; $45f4: $0f
	nop                                              ; $45f5: $00
	ld   bc, $1e09                                   ; $45f6: $01 $09 $1e
	nop                                              ; $45f9: $00
	nop                                              ; $45fa: $00
	inc  b                                           ; $45fb: $04
	add  b                                           ; $45fc: $80
	inc  a                                           ; $45fd: $3c
	ld   bc, $2000                                   ; $45fe: $01 $00 $20
	inc  b                                           ; $4601: $04
	add  b                                           ; $4602: $80
	dec  sp                                          ; $4603: $3b
	ld   bc, $2000                                   ; $4604: $01 $00 $20
	inc  e                                           ; $4607: $1c
	nop                                              ; $4608: $00
	ld   c, $2f                                      ; $4609: $0e $2f
	inc  e                                           ; $460b: $1c
	inc  c                                           ; $460c: $0c
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	ld   [bc], a                                     ; $460f: $02
	ld   bc, $0008                                   ; $4610: $01 $08 $00
	ld   h, e                                        ; $4613: $63
	and  c                                           ; $4614: $a1
	sbc  a                                           ; $4615: $9f
	dec  c                                           ; $4616: $0d
	ld   [hl], a                                     ; $4617: $77
	ld   d, h                                        ; $4618: $54
	ld   e, c                                        ; $4619: $59
	ld   h, l                                        ; $461a: $65
	adc  h                                           ; $461b: $8c
	ld   h, l                                        ; $461c: $65
	ld   l, l                                        ; $461d: $6d
	ld   e, c                                        ; $461e: $59
	ld   sp, hl                                      ; $461f: $f9
	dec  c                                           ; $4620: $0d
	nop                                              ; $4621: $00
	ld   a, [bc]                                     ; $4622: $0a
	db   $10                                         ; $4623: $10
	jr   nz, jr_047_4626                             ; $4624: $20 $00

jr_047_4626:
	ld   bc, $9e50                                   ; $4626: $01 $50 $9e
	ld   h, c                                        ; $4629: $61
	sbc  d                                           ; $462a: $9a
	ld   [hl], l                                     ; $462b: $75
	ld   h, a                                        ; $462c: $67
	ld   a, e                                        ; $462d: $7b
	sbc  a                                           ; $462e: $9f
	dec  c                                           ; $462f: $0d
	ld   h, c                                        ; $4630: $61
	sbc  d                                           ; $4631: $9a
	ld   a, l                                        ; $4632: $7d
	inc  bc                                          ; $4633: $03
	ld   d, a                                        ; $4634: $57
	inc  b                                           ; $4635: $04
	sub  l                                           ; $4636: $95
	and  e                                           ; $4637: $a3
	and  l                                           ; $4638: $a5
	db   $ec                                         ; $4639: $ec
	cp   d                                           ; $463a: $ba
	add  [hl]                                        ; $463b: $86
	ld   a, h                                        ; $463c: $7c
	dec  c                                           ; $463d: $0d
	sub  $a2                                         ; $463e: $d6 $a2
	push af                                          ; $4640: $f5
	xor  $c0                                         ; $4641: $ee $c0
	ei                                               ; $4643: $fb
	ld   a, b                                        ; $4644: $78
	and  c                                           ; $4645: $a1
	ld   [hl], l                                     ; $4646: $75
	ld   h, a                                        ; $4647: $67
	sbc  a                                           ; $4648: $9f
	dec  c                                           ; $4649: $0d
	nop                                              ; $464a: $00
	ld   a, [bc]                                     ; $464b: $0a
	ld   bc, $5d58                                   ; $464c: $01 $58 $5d
	sbc  b                                           ; $464f: $98
	inc  b                                           ; $4650: $04
	sub  d                                           ; $4651: $92
	sub  b                                           ; $4652: $90
	sbc  [hl]                                        ; $4653: $9e
	dec  c                                           ; $4654: $0d
	ld   h, c                                        ; $4655: $61
	and  c                                           ; $4656: $a1
	ld   a, b                                        ; $4657: $78
	ld   a, c                                        ; $4658: $79
	ld   l, l                                        ; $4659: $6d
	ld   e, l                                        ; $465a: $5d
	ld   h, e                                        ; $465b: $63
	and  c                                           ; $465c: $a1
	sbc  a                                           ; $465d: $9f
	dec  c                                           ; $465e: $0d
	nop                                              ; $465f: $00
	ld   a, [bc]                                     ; $4660: $0a
	inc  e                                           ; $4661: $1c
	inc  c                                           ; $4662: $0c
	ld   bc, $0101                                   ; $4663: $01 $01 $01
	and  e                                           ; $4666: $a3
	and  l                                           ; $4667: $a5
	db   $ec                                         ; $4668: $ec
	cp   d                                           ; $4669: $ba
	ld   a, l                                        ; $466a: $7d
	ld   a, e                                        ; $466b: $7b
	dec  c                                           ; $466c: $0d
	ld   b, $2e                                      ; $466d: $06 $2e
	dec  b                                           ; $466f: $05
	rra                                              ; $4670: $1f
	ld   [bc], a                                     ; $4671: $02
	dec  d                                           ; $4672: $15
	inc  bc                                          ; $4673: $03
	ld   l, [hl]                                     ; $4674: $6e
	halt                                             ; $4675: $76
	sbc  l                                           ; $4676: $9d
	ld   l, b                                        ; $4677: $68
	dec  c                                           ; $4678: $0d
	inc  bc                                          ; $4679: $03
	add  d                                           ; $467a: $82
	ld   [bc], a                                     ; $467b: $02
	and  c                                           ; $467c: $a1
	ld   e, d                                        ; $467d: $5a
	ld   d, b                                        ; $467e: $50
	sbc  c                                           ; $467f: $99
	and  c                                           ; $4680: $a1
	ld   [hl], l                                     ; $4681: $75
	ld   h, a                                        ; $4682: $67
	sub  [hl]                                        ; $4683: $96
	sbc  a                                           ; $4684: $9f
	dec  c                                           ; $4685: $0d
	nop                                              ; $4686: $00
	ld   a, [bc]                                     ; $4687: $0a
	inc  e                                           ; $4688: $1c
	inc  c                                           ; $4689: $0c
	nop                                              ; $468a: $00
	nop                                              ; $468b: $00
	ld   bc, $0008                                   ; $468c: $01 $08 $00
	ld   h, e                                        ; $468f: $63
	and  c                                           ; $4690: $a1
	sbc  a                                           ; $4691: $9f
	dec  c                                           ; $4692: $0d
	ld   [bc], a                                     ; $4693: $02
	jr   nz, jr_047_4708                             ; $4694: $20 $72

	ld   e, b                                        ; $4696: $58
	inc  bc                                          ; $4697: $03
	dec  c                                           ; $4698: $0d
	ld   [bc], a                                     ; $4699: $02
	jp   Jump_047_58a0                               ; $469a: $c3 $a0 $58


	ld   [bc], a                                     ; $469d: $02
	add  b                                           ; $469e: $80
	ld   d, d                                        ; $469f: $52
	ld   h, l                                        ; $46a0: $65
	ld   l, l                                        ; $46a1: $6d
	ld   d, d                                        ; $46a2: $52
	ld   a, h                                        ; $46a3: $7c
	dec  c                                           ; $46a4: $0d
	ld   [hl], l                                     ; $46a5: $75
	ld   h, a                                        ; $46a6: $67
	ld   e, a                                        ; $46a7: $5f
	ld   [hl], a                                     ; $46a8: $77
	rst  $38                                         ; $46a9: $ff
	rst  $38                                         ; $46aa: $ff
	dec  c                                           ; $46ab: $0d
	nop                                              ; $46ac: $00
	ld   a, [bc]                                     ; $46ad: $0a
	dec  b                                           ; $46ae: $05
	add  b                                           ; $46af: $80
	dec  sp                                          ; $46b0: $3b
	ld   bc, $0001                                   ; $46b1: $01 $01 $00
	ld   bc, $9a61                                   ; $46b4: $01 $61 $9a
	and  b                                           ; $46b7: $a0
	and  e                                           ; $46b8: $a3
	and  l                                           ; $46b9: $a5
	db   $ec                                         ; $46ba: $ec
	cp   d                                           ; $46bb: $ba
	ld   a, c                                        ; $46bc: $79
	inc  b                                           ; $46bd: $04
	ld   b, $5f                                      ; $46be: $06 $5f
	ld   [hl], h                                     ; $46c0: $74
	dec  c                                           ; $46c1: $0d
	nop                                              ; $46c2: $00
	dec  b                                           ; $46c3: $05
	ld   b, b                                        ; $46c4: $40
	ld   h, [hl]                                     ; $46c5: $66
	ld   [bc], a                                     ; $46c6: $02
	nop                                              ; $46c7: $00
	nop                                              ; $46c8: $00
	ld   bc, $6589                                   ; $46c9: $01 $89 $65
	ld   d, d                                        ; $46cc: $52
	and  c                                           ; $46cd: $a1
	ld   [hl], l                                     ; $46ce: $75
	ld   h, a                                        ; $46cf: $67
	sbc  a                                           ; $46d0: $9f
	dec  c                                           ; $46d1: $0d
	nop                                              ; $46d2: $00
	inc  e                                           ; $46d3: $1c
	inc  c                                           ; $46d4: $0c
	ld   bc, $0101                                   ; $46d5: $01 $01 $01
	ld   e, b                                        ; $46d8: $58
	ld   [bc], a                                     ; $46d9: $02
	add  b                                           ; $46da: $80
	ld   d, d                                        ; $46db: $52
	ld   h, l                                        ; $46dc: $65
	adc  h                                           ; $46dd: $8c
	ld   h, a                                        ; $46de: $67
	ld   a, e                                        ; $46df: $7b
	sbc  a                                           ; $46e0: $9f
	dec  c                                           ; $46e1: $0d
	nop                                              ; $46e2: $00
	ld   a, [bc]                                     ; $46e3: $0a
	nop                                              ; $46e4: $00
	nop                                              ; $46e5: $00
	inc  b                                           ; $46e6: $04
	add  b                                           ; $46e7: $80
	and  [hl]                                        ; $46e8: $a6
	ld   bc, $2000                                   ; $46e9: $01 $00 $20
	nop                                              ; $46ec: $00
	ld   c, $2f                                      ; $46ed: $0e $2f
	inc  e                                           ; $46ef: $1c
	dec  c                                           ; $46f0: $0d
	nop                                              ; $46f1: $00
	nop                                              ; $46f2: $00
	ld   [bc], a                                     ; $46f3: $02
	ld   bc, $9750                                   ; $46f4: $01 $50 $97
	sbc  [hl]                                        ; $46f7: $9e
	ld   [$5d00], sp                                 ; $46f8: $08 $00 $5d
	and  c                                           ; $46fb: $a1
	sbc  a                                           ; $46fc: $9f
	dec  c                                           ; $46fd: $0d
	nop                                              ; $46fe: $00
	ld   a, [bc]                                     ; $46ff: $0a
	inc  e                                           ; $4700: $1c
	dec  c                                           ; $4701: $0d
	ld   bc, $0101                                   ; $4702: $01 $01 $01
	ld   a, e                                        ; $4705: $7b
	ld   d, [hl]                                     ; $4706: $56
	sbc  [hl]                                        ; $4707: $9e

jr_047_4708:
	inc  b                                           ; $4708: $04
	dec  hl                                          ; $4709: $2b
	ld   [hl], c                                     ; $470a: $71
	ld   [hl], h                                     ; $470b: $74
	sbc  c                                           ; $470c: $99
	ld   sp, hl                                      ; $470d: $f9
	dec  c                                           ; $470e: $0d
	nop                                              ; $470f: $00
	ld   a, [bc]                                     ; $4710: $0a
	inc  e                                           ; $4711: $1c
	dec  c                                           ; $4712: $0d
	inc  bc                                          ; $4713: $03
	inc  bc                                          ; $4714: $03
	ld   bc, $5d63                                   ; $4715: $01 $63 $5d
	sub  a                                           ; $4718: $97
	ld   h, e                                        ; $4719: $63
	and  c                                           ; $471a: $a1
	ld   [hl], h                                     ; $471b: $74
	sbc  [hl]                                        ; $471c: $9e
	sub  [hl]                                        ; $471d: $96
	ld   e, l                                        ; $471e: $5d
	ld   l, e                                        ; $471f: $6b
	ld   d, h                                        ; $4720: $54
	ld   h, [hl]                                     ; $4721: $66
	and  b                                           ; $4722: $a0
	dec  c                                           ; $4723: $0d
	ld   h, l                                        ; $4724: $65
	ld   [hl], h                                     ; $4725: $74
	sbc  c                                           ; $4726: $99
	ld   e, a                                        ; $4727: $5f
	ld   [hl], a                                     ; $4728: $77
	rst  $38                                         ; $4729: $ff
	rst  $38                                         ; $472a: $ff
	ld   d, b                                        ; $472b: $50
	sbc  d                                           ; $472c: $9a
	ld   [hl], c                                     ; $472d: $71
	ld   [hl], h                                     ; $472e: $74
	inc  b                                           ; $472f: $04
	ld   c, c                                        ; $4730: $49
	ld   e, c                                        ; $4731: $59
	ld   a, h                                        ; $4732: $7c
	dec  c                                           ; $4733: $0d
	pop  de                                          ; $4734: $d1
	push bc                                          ; $4735: $c5
	adc  l                                           ; $4736: $8d
	ld   l, l                                        ; $4737: $6d
	ld   d, d                                        ; $4738: $52
	ld   a, b                                        ; $4739: $78
	ld   a, h                                        ; $473a: $7c
	sub  [hl]                                        ; $473b: $96
	ld   a, e                                        ; $473c: $7b
	rst  $38                                         ; $473d: $ff
	rst  $38                                         ; $473e: $ff
	dec  c                                           ; $473f: $0d
	nop                                              ; $4740: $00
	ld   a, [bc]                                     ; $4741: $0a
	ld   bc, $a502                                   ; $4742: $01 $02 $a5
	inc  b                                           ; $4745: $04
	rst  $28                                         ; $4746: $ef
	sub  b                                           ; $4747: $90
	sbc  [hl]                                        ; $4748: $9e
	ld   [hl], a                                     ; $4749: $77
	ld   h, c                                        ; $474a: $61
	ld   e, c                                        ; $474b: $59
	and  b                                           ; $474c: $a0
	ld   l, e                                        ; $474d: $6b
	ld   d, h                                        ; $474e: $54
	ld   h, [hl]                                     ; $474f: $66
	dec  c                                           ; $4750: $0d
	ld   h, l                                        ; $4751: $65
	ld   [hl], h                                     ; $4752: $74
	sbc  c                                           ; $4753: $99
	ld   e, c                                        ; $4754: $59
	sub  b                                           ; $4755: $90
	ld   h, l                                        ; $4756: $65
	sbc  d                                           ; $4757: $9a

jr_047_4758:
	ld   a, b                                        ; $4758: $78
	ld   d, d                                        ; $4759: $52
	sbc  l                                           ; $475a: $9d
	sub  [hl]                                        ; $475b: $96
	sbc  a                                           ; $475c: $9f
	dec  c                                           ; $475d: $0d
	nop                                              ; $475e: $00
	inc  e                                           ; $475f: $1c
	dec  c                                           ; $4760: $0d
	ld   bc, $0101                                   ; $4761: $01 $01 $01
	rst  $38                                         ; $4764: $ff
	rst  $38                                         ; $4765: $ff
	ld   a, b                                        ; $4766: $78
	db   $fc                                         ; $4767: $fc
	and  c                                           ; $4768: $a1
	ld   [hl], h                                     ; $4769: $74
	ld   a, e                                        ; $476a: $7b
	sbc  a                                           ; $476b: $9f
	dec  c                                           ; $476c: $0d
	nop                                              ; $476d: $00
	ld   a, [bc]                                     ; $476e: $0a
	ld   bc, $786f                                   ; $476f: $01 $6f $78
	adc  l                                           ; $4772: $8d
	ld   a, c                                        ; $4773: $79
	sbc  [hl]                                        ; $4774: $9e
	ld   d, b                                        ; $4775: $50
	ld   l, l                                        ; $4776: $6d
	ld   h, l                                        ; $4777: $65
	ld   e, d                                        ; $4778: $5a
	ld   [bc], a                                     ; $4779: $02
	sbc  l                                           ; $477a: $9d
	ld   [hl], c                                     ; $477b: $71
	ld   l, l                                        ; $477c: $6d
	ld   [hl], c                                     ; $477d: $71
	ld   [hl], h                                     ; $477e: $74
	dec  c                                           ; $477f: $0d
	res  4, l                                        ; $4780: $cb $a5
	cp   b                                           ; $4782: $b8
	jp   hl                                          ; $4783: $e9


	sub  [hl]                                        ; $4784: $96
	sbc  a                                           ; $4785: $9f
	dec  c                                           ; $4786: $0d
	nop                                              ; $4787: $00
	ld   a, [bc]                                     ; $4788: $0a
	dec  b                                           ; $4789: $05
	add  b                                           ; $478a: $80
	ld   [bc], a                                     ; $478b: $02
	ld   bc, $0001                                   ; $478c: $01 $01 $00
	nop                                              ; $478f: $00
	nop                                              ; $4790: $00
	ld   c, $26                                      ; $4791: $0e $26
	inc  e                                           ; $4793: $1c
	ld   [bc], a                                     ; $4794: $02
	nop                                              ; $4795: $00
	nop                                              ; $4796: $00
	ld   [bc], a                                     ; $4797: $02
	ld   bc, $9e50                                   ; $4798: $01 $50 $9e
	ld   l, e                                        ; $479b: $6b
	ld   h, c                                        ; $479c: $61
	ld   a, h                                        ; $479d: $7c
	inc  bc                                          ; $479e: $03
	add  d                                           ; $479f: $82
	sbc  a                                           ; $47a0: $9f
	dec  c                                           ; $47a1: $0d
	nop                                              ; $47a2: $00
	ld   a, [bc]                                     ; $47a3: $0a
	ld   bc, $1205                                   ; $47a4: $01 $05 $12
	halt                                             ; $47a7: $76
	ld   h, l                                        ; $47a8: $65
	ld   l, l                                        ; $47a9: $6d
	cp   d                                           ; $47aa: $ba
	ret  c                                           ; $47ab: $d8

	ei                                               ; $47ac: $fb
	push af                                          ; $47ad: $f5
	and  b                                           ; $47ae: $a0
	inc  bc                                          ; $47af: $03
	dec  l                                           ; $47b0: $2d
	ld   [hl], c                                     ; $47b1: $71
	ld   [hl], h                                     ; $47b2: $74
	sbc  [hl]                                        ; $47b3: $9e
	dec  c                                           ; $47b4: $0d
	inc  bc                                          ; $47b5: $03
	add  c                                           ; $47b6: $81
	ld   h, l                                        ; $47b7: $65
	ld   d, d                                        ; $47b8: $52
	sub  b                                           ; $47b9: $90
	ld   a, h                                        ; $47ba: $7c
	halt                                             ; $47bb: $76
	sbc  [hl]                                        ; $47bc: $9e
	inc  bc                                          ; $47bd: $03
	jr   jr_047_4758                                 ; $47be: $18 $98

	ld   e, c                                        ; $47c0: $59
	ld   d, [hl]                                     ; $47c1: $56
	ld   [hl], h                                     ; $47c2: $74
	dec  c                                           ; $47c3: $0d
	ld   [bc], a                                     ; $47c4: $02
	inc  [hl]                                        ; $47c5: $34
	ld   h, e                                        ; $47c6: $63
	sub  a                                           ; $47c7: $97
	ld   a, b                                        ; $47c8: $78
	ld   d, d                                        ; $47c9: $52
	ld   e, c                                        ; $47ca: $59
	ld   h, l                                        ; $47cb: $65
	sub  a                                           ; $47cc: $97
	sbc  a                                           ; $47cd: $9f
	dec  c                                           ; $47ce: $0d
	nop                                              ; $47cf: $00
	ld   a, [bc]                                     ; $47d0: $0a
	rrca                                             ; $47d1: $0f
	nop                                              ; $47d2: $00
	ld   bc, $0101                                   ; $47d3: $01 $01 $01
	inc  bc                                          ; $47d6: $03
	and  c                                           ; $47d7: $a1
	ld   sp, hl                                      ; $47d8: $f9
	db   $10                                         ; $47d9: $10
	ld   h, a                                        ; $47da: $67
	adc  l                                           ; $47db: $8d
	sbc  d                                           ; $47dc: $9a
	ld   h, e                                        ; $47dd: $63
	and  c                                           ; $47de: $a1
	ld   l, [hl]                                     ; $47df: $6e
	rst  $38                                         ; $47e0: $ff
	rst  $38                                         ; $47e1: $ff
	dec  c                                           ; $47e2: $0d
	db   $10                                         ; $47e3: $10
	cp   d                                           ; $47e4: $ba
	ret  c                                           ; $47e5: $d8

	ei                                               ; $47e6: $fb
	push af                                          ; $47e7: $f5
	and  b                                           ; $47e8: $a0
	inc  bc                                          ; $47e9: $03
	dec  l                                           ; $47ea: $2d
	ld   d, h                                        ; $47eb: $54
	ld   a, h                                        ; $47ec: $7c
	ld   e, c                                        ; $47ed: $59
	rst  $38                                         ; $47ee: $ff
	rst  $38                                         ; $47ef: $ff
	ld   bc, $0d04                                   ; $47f0: $01 $04 $0d
	nop                                              ; $47f3: $00
	ld   a, [bc]                                     ; $47f4: $0a
	add  hl, de                                      ; $47f5: $19
	dec  b                                           ; $47f6: $05
	ld   [bc], a                                     ; $47f7: $02
	cp   d                                           ; $47f8: $ba
	ret  c                                           ; $47f9: $d8

	ei                                               ; $47fa: $fb
	push af                                          ; $47fb: $f5
	and  b                                           ; $47fc: $a0
	inc  bc                                          ; $47fd: $03
	dec  l                                           ; $47fe: $2d
	ld   d, h                                        ; $47ff: $54
	nop                                              ; $4800: $00
	nop                                              ; $4801: $00
	cp   d                                           ; $4802: $ba
	ret  c                                           ; $4803: $d8

	ei                                               ; $4804: $fb
	push af                                          ; $4805: $f5
	and  b                                           ; $4806: $a0
	inc  bc                                          ; $4807: $03
	dec  l                                           ; $4808: $2d
	sbc  l                                           ; $4809: $9d
	ld   a, b                                        ; $480a: $78
	ld   d, d                                        ; $480b: $52
	nop                                              ; $480c: $00
	ld   bc, $9207                                   ; $480d: $01 $07 $92
	nop                                              ; $4810: $00
	ld   [bc], a                                     ; $4811: $02
	inc  bc                                          ; $4812: $03
	ld   bc, $2000                                   ; $4813: $01 $00 $20
	nop                                              ; $4816: $00
	rlca                                             ; $4817: $07
	sbc  $00                                         ; $4818: $de $00
	ld   [bc], a                                     ; $481a: $02
	inc  bc                                          ; $481b: $03
	ld   bc, $2001                                   ; $481c: $01 $01 $20
	nop                                              ; $481f: $00
	ld   b, $75                                      ; $4820: $06 $75
	ld   bc, $000f                                   ; $4822: $01 $0f $00
	ld   bc, $7d01                                   ; $4825: $01 $01 $7d
	ld   d, d                                        ; $4828: $52
	sbc  a                                           ; $4829: $9f
	ld   h, a                                        ; $482a: $67
	adc  l                                           ; $482b: $8d
	sbc  d                                           ; $482c: $9a
	ld   h, e                                        ; $482d: $63
	and  c                                           ; $482e: $a1
	sbc  a                                           ; $482f: $9f
	dec  c                                           ; $4830: $0d
	ld   l, a                                        ; $4831: $6f
	ld   a, b                                        ; $4832: $78
	adc  l                                           ; $4833: $8d
	ld   a, c                                        ; $4834: $79
	adc  d                                           ; $4835: $8a
	ld   e, l                                        ; $4836: $5d
	ld   a, h                                        ; $4837: $7c
	inc  b                                           ; $4838: $04
	rst  ToBoot                                         ; $4839: $c7
	inc  bc                                          ; $483a: $03
	ld   c, a                                        ; $483b: $4f
	ld   a, l                                        ; $483c: $7d
	dec  c                                           ; $483d: $0d
	ld   [$7500], sp                                 ; $483e: $08 $00 $75
	ld   h, a                                        ; $4841: $67
	sub  [hl]                                        ; $4842: $96
	dec  c                                           ; $4843: $0d
	nop                                              ; $4844: $00
	ld   a, [bc]                                     ; $4845: $0a
	rrca                                             ; $4846: $0f
	ld   [bc], a                                     ; $4847: $02
	nop                                              ; $4848: $00
	dec  e                                           ; $4849: $1d
	ld   b, b                                        ; $484a: $40
	ld   [de], a                                     ; $484b: $12
	inc  bc                                          ; $484c: $03
	ld   [de], a                                     ; $484d: $12
	ld   bc, $2802                                   ; $484e: $01 $02 $28
	nop                                              ; $4851: $00
	ld   bc, $9750                                   ; $4852: $01 $50 $97
	sbc  [hl]                                        ; $4855: $9e
	ld   l, e                                        ; $4856: $6b
	ld   d, h                                        ; $4857: $54
	ld   [hl], l                                     ; $4858: $75
	ld   h, l                                        ; $4859: $65
	ld   l, l                                        ; $485a: $6d
	ld   e, c                                        ; $485b: $59
	ld   h, l                                        ; $485c: $65
	sub  a                                           ; $485d: $97
	sbc  a                                           ; $485e: $9f
	dec  c                                           ; $485f: $0d
	ld   a, l                                        ; $4860: $7d
	ld   d, d                                        ; $4861: $52
	sbc  [hl]                                        ; $4862: $9e
	ld   h, d                                        ; $4863: $62
	ld   [bc], a                                     ; $4864: $02
	sub  h                                           ; $4865: $94
	dec  b                                           ; $4866: $05
	rrca                                             ; $4867: $0f
	ld   h, e                                        ; $4868: $63
	adc  h                                           ; $4869: $8c
	sbc  a                                           ; $486a: $9f
	dec  c                                           ; $486b: $0d
	nop                                              ; $486c: $00
	ld   a, [bc]                                     ; $486d: $0a
	nop                                              ; $486e: $00
	rrca                                             ; $486f: $0f
	nop                                              ; $4870: $00
	ld   bc, $7701                                   ; $4871: $01 $01 $77
	ld   d, h                                        ; $4874: $54
	ld   h, l                                        ; $4875: $65
	ld   [hl], h                                     ; $4876: $74
	inc  b                                           ; $4877: $04
	ld   l, l                                        ; $4878: $6d
	ld   e, d                                        ; $4879: $5a
	inc  bc                                          ; $487a: $03
	dec  l                                           ; $487b: $2d
	sbc  l                                           ; $487c: $9d
	ld   a, b                                        ; $487d: $78
	ld   e, l                                        ; $487e: $5d
	ld   l, a                                        ; $487f: $6f
	sub  c                                           ; $4880: $91
	dec  c                                           ; $4881: $0d
	ld   a, b                                        ; $4882: $78
	sub  a                                           ; $4883: $97
	ld   a, b                                        ; $4884: $78
	ld   d, d                                        ; $4885: $52
	and  c                                           ; $4886: $a1
	ld   [hl], l                                     ; $4887: $75
	ld   h, a                                        ; $4888: $67
	ld   e, c                                        ; $4889: $59
	sbc  a                                           ; $488a: $9f
	dec  c                                           ; $488b: $0d
	nop                                              ; $488c: $00
	ld   a, [bc]                                     ; $488d: $0a
	inc  e                                           ; $488e: $1c
	ld   [bc], a                                     ; $488f: $02
	ld   [bc], a                                     ; $4890: $02
	ld   [bc], a                                     ; $4891: $02
	dec  e                                           ; $4892: $1d
	ld   b, b                                        ; $4893: $40
	ld   [de], a                                     ; $4894: $12
	inc  bc                                          ; $4895: $03
	ld   [de], a                                     ; $4896: $12
	ld   bc, $2903                                   ; $4897: $01 $03 $29
	nop                                              ; $489a: $00
	ld   bc, $508c                                   ; $489b: $01 $8c $50
	sbc  [hl]                                        ; $489e: $9e
	ld   h, c                                        ; $489f: $61
	ld   a, h                                        ; $48a0: $7c
	sbc  l                                           ; $48a1: $9d
	ld   l, l                                        ; $48a2: $6d
	ld   e, l                                        ; $48a3: $5d
	ld   h, l                                        ; $48a4: $65
	ld   a, c                                        ; $48a5: $79
	dec  c                                           ; $48a6: $0d
	ld   [bc], a                                     ; $48a7: $02
	xor  [hl]                                        ; $48a8: $ae
	inc  bc                                          ; $48a9: $03
	call c, Call_047_6756                            ; $48aa: $dc $56 $67
	sbc  c                                           ; $48ad: $99
	ld   a, b                                        ; $48ae: $78
	and  c                                           ; $48af: $a1
	ld   [hl], h                                     ; $48b0: $74
	rst  $38                                         ; $48b1: $ff
	rst  $38                                         ; $48b2: $ff
	dec  c                                           ; $48b3: $0d
	nop                                              ; $48b4: $00
	dec  b                                           ; $48b5: $05
	add  b                                           ; $48b6: $80
	inc  d                                           ; $48b7: $14
	ld   bc, $0001                                   ; $48b8: $01 $01 $00
	dec  b                                           ; $48bb: $05
	ld   b, b                                        ; $48bc: $40
	ld   c, c                                        ; $48bd: $49
	ld   [bc], a                                     ; $48be: $02
	nop                                              ; $48bf: $00
	nop                                              ; $48c0: $00
	ld   bc, $a502                                   ; $48c1: $01 $02 $a5
	inc  b                                           ; $48c4: $04
	rst  $28                                         ; $48c5: $ef
	sbc  [hl]                                        ; $48c6: $9e
	inc  bc                                          ; $48c7: $03
	db   $ec                                         ; $48c8: $ec
	dec  b                                           ; $48c9: $05
	add  hl, de                                      ; $48ca: $19
	inc  bc                                          ; $48cb: $03
	ld   c, l                                        ; $48cc: $4d
	ld   a, c                                        ; $48cd: $79
	dec  b                                           ; $48ce: $05
	db   $10                                         ; $48cf: $10
	ld   a, b                                        ; $48d0: $78
	ld   h, e                                        ; $48d1: $63
	ld   d, d                                        ; $48d2: $52
	ld   a, [$000d]                                  ; $48d3: $fa $0d $00
	ld   a, [bc]                                     ; $48d6: $0a
	dec  b                                           ; $48d7: $05
	ld   b, b                                        ; $48d8: $40
	ld   h, c                                        ; $48d9: $61
	ld   [bc], a                                     ; $48da: $02
	nop                                              ; $48db: $00
	nop                                              ; $48dc: $00
	dec  b                                           ; $48dd: $05
	ld   b, b                                        ; $48de: $40
	ld   c, a                                        ; $48df: $4f
	ld   bc, $0001                                   ; $48e0: $01 $01 $00
	ld   bc, $5252                                   ; $48e3: $01 $52 $52
	ld   [hl], l                                     ; $48e6: $75
	ld   h, a                                        ; $48e7: $67
	ld   e, c                                        ; $48e8: $59
	sbc  [hl]                                        ; $48e9: $9e
	sbc  l                                           ; $48ea: $9d
	ld   e, c                                        ; $48eb: $59
	sbc  b                                           ; $48ec: $98
	adc  h                                           ; $48ed: $8c
	ld   h, l                                        ; $48ee: $65
	ld   l, l                                        ; $48ef: $6d
	ld   a, e                                        ; $48f0: $7b
	sbc  a                                           ; $48f1: $9f
	dec  c                                           ; $48f2: $0d
	ld   [bc], a                                     ; $48f3: $02
	and  l                                           ; $48f4: $a5
	inc  b                                           ; $48f5: $04
	rst  $28                                         ; $48f6: $ef
	sbc  [hl]                                        ; $48f7: $9e
	inc  bc                                          ; $48f8: $03
	db   $ec                                         ; $48f9: $ec
	dec  b                                           ; $48fa: $05
	add  hl, de                                      ; $48fb: $19
	inc  bc                                          ; $48fc: $03
	ld   c, l                                        ; $48fd: $4d
	ld   [hl], l                                     ; $48fe: $75
	ld   h, a                                        ; $48ff: $67
	sub  [hl]                                        ; $4900: $96
	sbc  a                                           ; $4901: $9f
	dec  c                                           ; $4902: $0d
	nop                                              ; $4903: $00
	ld   a, [bc]                                     ; $4904: $0a
	nop                                              ; $4905: $00
	inc  e                                           ; $4906: $1c
	ld   [bc], a                                     ; $4907: $02
	ld   [bc], a                                     ; $4908: $02
	ld   [bc], a                                     ; $4909: $02
	dec  e                                           ; $490a: $1d
	ld   b, b                                        ; $490b: $40
	ld   [de], a                                     ; $490c: $12
	inc  bc                                          ; $490d: $03
	ld   [de], a                                     ; $490e: $12
	ld   bc, $2902                                   ; $490f: $01 $02 $29
	nop                                              ; $4912: $00
	ld   bc, $4904                                   ; $4913: $01 $04 $49
	db   $dd                                         ; $4916: $dd
	ei                                               ; $4917: $fb
	call nz, Call_047_6576                           ; $4918: $c4 $76 $65
	ld   [hl], h                                     ; $491b: $74
	ld   d, d                                        ; $491c: $52
	sbc  c                                           ; $491d: $99
	ld   a, h                                        ; $491e: $7c
	ld   sp, hl                                      ; $491f: $f9
	dec  c                                           ; $4920: $0d
	sub  b                                           ; $4921: $90
	ld   d, h                                        ; $4922: $54
	ld   e, a                                        ; $4923: $5f
	ld   [hl], c                                     ; $4924: $71
	ld   h, c                                        ; $4925: $61
	ld   d, h                                        ; $4926: $54
	ld   [hl], l                                     ; $4927: $75
	ld   h, a                                        ; $4928: $67
	sbc  l                                           ; $4929: $9d
	ld   a, [$000d]                                  ; $492a: $fa $0d $00
	ld   a, [bc]                                     ; $492d: $0a
	rrca                                             ; $492e: $0f
	nop                                              ; $492f: $00
	ld   bc, $0101                                   ; $4930: $01 $01 $01
	inc  bc                                          ; $4933: $03
	ld   h, l                                        ; $4934: $65
	adc  h                                           ; $4935: $8c
	ld   [hl], c                                     ; $4936: $71
	ld   l, l                                        ; $4937: $6d
	rst  $38                                         ; $4938: $ff
	rst  $38                                         ; $4939: $ff
	dec  c                                           ; $493a: $0d
	db   $10                                         ; $493b: $10
	or   c                                           ; $493c: $b1
	cp   e                                           ; $493d: $bb
	or   c                                           ; $493e: $b1
	cp   e                                           ; $493f: $bb
	ld   h, l                                        ; $4940: $65
	ld   [hl], h                                     ; $4941: $74
	ld   l, l                                        ; $4942: $6d
	sub  a                                           ; $4943: $97
	sbc  [hl]                                        ; $4944: $9e
	inc  bc                                          ; $4945: $03
	ld   hl, sp-$69                                  ; $4946: $f8 $97
	sbc  d                                           ; $4948: $9a
	dec  c                                           ; $4949: $0d
	db   $10                                         ; $494a: $10
	ld   l, a                                        ; $494b: $6f
	sub  c                                           ; $494c: $91
	ld   [hl], c                                     ; $494d: $71
	ld   l, l                                        ; $494e: $6d
	sub  [hl]                                        ; $494f: $96
	ld   bc, $0d04                                   ; $4950: $01 $04 $0d
	nop                                              ; $4953: $00
	ld   a, [bc]                                     ; $4954: $0a
	nop                                              ; $4955: $00
	nop                                              ; $4956: $00
	ld   c, $1e                                      ; $4957: $0e $1e
	rrca                                             ; $4959: $0f
	nop                                              ; $495a: $00
	ld   bc, $060d                                   ; $495b: $01 $0d $06
	dec  b                                           ; $495e: $05
	ld   [bc], a                                     ; $495f: $02
	ld   bc, $9a50                                   ; $4960: $01 $50 $9a
	ld   sp, hl                                      ; $4963: $f9
	db   $10                                         ; $4964: $10
	xor  h                                           ; $4965: $ac
	push af                                          ; $4966: $f5
	bit  4, e                                        ; $4967: $cb $63
	and  c                                           ; $4969: $a1
	dec  c                                           ; $496a: $0d
	inc  b                                           ; $496b: $04
	ld   c, c                                        ; $496c: $49
	sub  d                                           ; $496d: $92
	ld   [hl], c                                     ; $496e: $71
	ld   [hl], h                                     ; $496f: $74
	sbc  c                                           ; $4970: $99
	and  c                                           ; $4971: $a1
	ld   [hl], l                                     ; $4972: $75
	ld   h, a                                        ; $4973: $67
	ld   e, c                                        ; $4974: $59
	ld   sp, hl                                      ; $4975: $f9
	dec  c                                           ; $4976: $0d
	nop                                              ; $4977: $00
	ld   a, [bc]                                     ; $4978: $0a
	inc  e                                           ; $4979: $1c
	ld   b, $00                                      ; $497a: $06 $00
	nop                                              ; $497c: $00
	ld   bc, $956f                                   ; $497d: $01 $6f $95
	ld   [hl], c                                     ; $4980: $71
	halt                                             ; $4981: $76
	ld   a, b                                        ; $4982: $78
	rst  $38                                         ; $4983: $ff
	rst  $38                                         ; $4984: $ff
	dec  c                                           ; $4985: $0d
	inc  b                                           ; $4986: $04
	jr   c, @-$5b                                    ; $4987: $38 $a3

	xor  $a5                                         ; $4989: $ee $a5
	and  b                                           ; $498b: $a0
	inc  b                                           ; $498c: $04
	inc  d                                           ; $498d: $14
	ld   h, l                                        ; $498e: $65
	ld   [hl], h                                     ; $498f: $74
	sbc  c                                           ; $4990: $99
	and  c                                           ; $4991: $a1
	ld   l, [hl]                                     ; $4992: $6e
	ld   e, a                                        ; $4993: $5f
	ld   [hl], a                                     ; $4994: $77
	sub  [hl]                                        ; $4995: $96
	dec  c                                           ; $4996: $0d
	ld   [bc], a                                     ; $4997: $02
	sub  l                                           ; $4998: $95
	ld   [hl], d                                     ; $4999: $72
	ld   e, c                                        ; $499a: $59
	sub  a                                           ; $499b: $97
	ld   a, e                                        ; $499c: $7b
	ld   d, [hl]                                     ; $499d: $56
	and  c                                           ; $499e: $a1
	ld   l, [hl]                                     ; $499f: $6e
	rst  $38                                         ; $49a0: $ff
	rst  $38                                         ; $49a1: $ff
	dec  c                                           ; $49a2: $0d
	nop                                              ; $49a3: $00
	ld   a, [bc]                                     ; $49a4: $0a
	add  hl, de                                      ; $49a5: $19
	dec  b                                           ; $49a6: $05
	ld   bc, $6b03                                   ; $49a7: $01 $03 $6b
	inc  b                                           ; $49aa: $04
	ld   [de], a                                     ; $49ab: $12
	ld   d, h                                        ; $49ac: $54
	nop                                              ; $49ad: $00
	nop                                              ; $49ae: $00
	rlca                                             ; $49af: $07
	adc  [hl]                                        ; $49b0: $8e
	nop                                              ; $49b1: $00
	ld   [bc], a                                     ; $49b2: $02
	inc  bc                                          ; $49b3: $03
	ld   bc, $2000                                   ; $49b4: $01 $00 $20
	nop                                              ; $49b7: $00
	ld   b, $64                                      ; $49b8: $06 $64
	nop                                              ; $49ba: $00
	inc  e                                           ; $49bb: $1c
	ld   b, $05                                      ; $49bc: $06 $05
	dec  b                                           ; $49be: $05
	ld   bc, $9565                                   ; $49bf: $01 $65 $95
	ld   d, h                                        ; $49c2: $54
	ld   e, d                                        ; $49c3: $5a
	ld   a, e                                        ; $49c4: $7b
	ld   d, [hl]                                     ; $49c5: $56
	ld   a, b                                        ; $49c6: $78
	rst  $38                                         ; $49c7: $ff
	rst  $38                                         ; $49c8: $ff
	dec  c                                           ; $49c9: $0d
	inc  b                                           ; $49ca: $04
	ld   d, h                                        ; $49cb: $54
	ld   a, h                                        ; $49cc: $7c
	inc  b                                           ; $49cd: $04
	ld   a, d                                        ; $49ce: $7a
	inc  bc                                          ; $49cf: $03
	ld   c, e                                        ; $49d0: $4b
	inc  b                                           ; $49d1: $04
	inc  d                                           ; $49d2: $14
	ld   h, l                                        ; $49d3: $65
	ld   [hl], h                                     ; $49d4: $74
	adc  l                                           ; $49d5: $8d
	sbc  c                                           ; $49d6: $99
	ld   e, c                                        ; $49d7: $59
	sbc  a                                           ; $49d8: $9f
	dec  c                                           ; $49d9: $0d
	nop                                              ; $49da: $00
	ld   a, [bc]                                     ; $49db: $0a
	dec  c                                           ; $49dc: $0d
	nop                                              ; $49dd: $00
	nop                                              ; $49de: $00
	rrca                                             ; $49df: $0f
	nop                                              ; $49e0: $00
	ld   bc, $1e09                                   ; $49e1: $01 $09 $1e
	nop                                              ; $49e4: $00
	rrca                                             ; $49e5: $0f
	nop                                              ; $49e6: $00
	ld   bc, $0301                                   ; $49e7: $01 $01 $03
	ld   l, e                                        ; $49ea: $6b
	inc  b                                           ; $49eb: $04
	ld   [de], a                                     ; $49ec: $12
	ld   d, d                                        ; $49ed: $52
	adc  h                                           ; $49ee: $8c
	ld   h, a                                        ; $49ef: $67
	sub  [hl]                                        ; $49f0: $96
	sbc  [hl]                                        ; $49f1: $9e
	xor  h                                           ; $49f2: $ac
	push af                                          ; $49f3: $f5
	bit  4, e                                        ; $49f4: $cb $63
	and  c                                           ; $49f6: $a1
	sbc  a                                           ; $49f7: $9f
	dec  c                                           ; $49f8: $0d
	nop                                              ; $49f9: $00
	ld   a, [bc]                                     ; $49fa: $0a
	inc  e                                           ; $49fb: $1c
	ld   b, $01                                      ; $49fc: $06 $01
	ld   bc, $401d                                   ; $49fe: $01 $1d $40
	ld   d, $03                                      ; $4a01: $16 $03
	ld   d, $01                                      ; $4a03: $16 $01
	ld   [bc], a                                     ; $4a05: $02
	jr   z, jr_047_4a08                              ; $4a06: $28 $00

jr_047_4a08:
	ld   bc, $f5b6                                   ; $4a08: $01 $b6 $f5
	xor  [hl]                                        ; $4a0b: $ae
	rst  $20                                         ; $4a0c: $e7
	ei                                               ; $4a0d: $fb
	ld   a, [$660d]                                  ; $4a0e: $fa $0d $66
	sub  c                                           ; $4a11: $91
	sbc  [hl]                                        ; $4a12: $9e
	ld   l, e                                        ; $4a13: $6b
	ld   [hl], c                                     ; $4a14: $71
	ld   l, a                                        ; $4a15: $6f
	and  b                                           ; $4a16: $a0
	inc  b                                           ; $4a17: $04
	inc  d                                           ; $4a18: $14
	ld   h, l                                        ; $4a19: $65
	ld   [hl], h                                     ; $4a1a: $74
	ld   e, l                                        ; $4a1b: $5d
	sbc  d                                           ; $4a1c: $9a
	sbc  a                                           ; $4a1d: $9f
	dec  c                                           ; $4a1e: $0d
	nop                                              ; $4a1f: $00
	ld   a, [bc]                                     ; $4a20: $0a
	dec  c                                           ; $4a21: $0d
	nop                                              ; $4a22: $00
	nop                                              ; $4a23: $00
	rrca                                             ; $4a24: $0f
	nop                                              ; $4a25: $00
	ld   bc, $0b0c                                   ; $4a26: $01 $0c $0b
	rrca                                             ; $4a29: $0f
	nop                                              ; $4a2a: $00
	ld   bc, $ac01                                   ; $4a2b: $01 $01 $ac
	push af                                          ; $4a2e: $f5
	bit  4, e                                        ; $4a2f: $cb $63
	and  c                                           ; $4a31: $a1
	sbc  [hl]                                        ; $4a32: $9e
	dec  c                                           ; $4a33: $0d
	ld   d, b                                        ; $4a34: $50
	sbc  b                                           ; $4a35: $98
	adc  h                                           ; $4a36: $8c
	ld   h, l                                        ; $4a37: $65
	ld   l, l                                        ; $4a38: $6d
	ld   a, [$000d]                                  ; $4a39: $fa $0d $00
	ld   a, [bc]                                     ; $4a3c: $0a
	inc  e                                           ; $4a3d: $1c
	ld   b, $00                                      ; $4a3e: $06 $00
	nop                                              ; $4a40: $00
	ld   bc, $7158                                   ; $4a41: $01 $58 $71
	ld   a, [$0210]                                  ; $4a44: $fa $10 $02
	sub  l                                           ; $4a47: $95
	ld   [hl], d                                     ; $4a48: $72
	ld   e, c                                        ; $4a49: $59
	ld   [hl], c                                     ; $4a4a: $71
	ld   l, l                                        ; $4a4b: $6d
	ld   e, c                                        ; $4a4c: $59
	ld   a, [$000d]                                  ; $4a4d: $fa $0d $00
	ld   a, [bc]                                     ; $4a50: $0a
	db   $10                                         ; $4a51: $10
	stop                                             ; $4a52: $10 $00
	rrca                                             ; $4a54: $0f
	nop                                              ; $4a55: $00
	ld   bc, $5001                                   ; $4a56: $01 $01 $50
	ld   [hl], c                                     ; $4a59: $71
	ld   a, [$ac0d]                                  ; $4a5a: $fa $0d $ac
	push af                                          ; $4a5d: $f5
	bit  4, e                                        ; $4a5e: $cb $63
	and  c                                           ; $4a60: $a1
	ld   a, [$d90d]                                  ; $4a61: $fa $0d $d9
	call nc, $035a                                   ; $4a64: $d4 $5a $03
	ld   h, l                                        ; $4a67: $65
	ld   e, c                                        ; $4a68: $59
	sub  a                                           ; $4a69: $97
	ld   a, [$000d]                                  ; $4a6a: $fa $0d $00
	ld   a, [bc]                                     ; $4a6d: $0a
	ld   d, $11                                      ; $4a6e: $16 $11
	rrca                                             ; $4a70: $0f
	ld   b, $08                                      ; $4a71: $06 $08
	ld   bc, $719d                                   ; $4a73: $01 $9d $71
	sbc  [hl]                                        ; $4a76: $9e
	sbc  l                                           ; $4a77: $9d
	sbc  l                                           ; $4a78: $9d
	ld   [hl], c                                     ; $4a79: $71
	ld   a, [$760d]                                  ; $4a7a: $fa $0d $76
	sbc  [hl]                                        ; $4a7d: $9e
	halt                                             ; $4a7e: $76
	ld   [hl], c                                     ; $4a7f: $71
	ld   [hl], h                                     ; $4a80: $74
	ld   e, l                                        ; $4a81: $5d
	sbc  d                                           ; $4a82: $9a
	ld   a, [$000d]                                  ; $4a83: $fa $0d $00
	ld   a, [bc]                                     ; $4a86: $0a
	add  hl, de                                      ; $4a87: $19
	dec  b                                           ; $4a88: $05
	ld   [bc], a                                     ; $4a89: $02
	inc  bc                                          ; $4a8a: $03
	ld   l, e                                        ; $4a8b: $6b
	ld   [hl], l                                     ; $4a8c: $75
	ld   a, l                                        ; $4a8d: $7d
	sub  a                                           ; $4a8e: $97

jr_047_4a8f:
	ld   d, h                                        ; $4a8f: $54
	nop                                              ; $4a90: $00
	nop                                              ; $4a91: $00
	adc  d                                           ; $4a92: $8a
	ld   d, h                                        ; $4a93: $54
	ld   [hl], l                                     ; $4a94: $75
	ld   [hl], d                                     ; $4a95: $72
	ld   [hl], d                                     ; $4a96: $72
	ld   e, l                                        ; $4a97: $5d
	nop                                              ; $4a98: $00
	ld   bc, $5807                                   ; $4a99: $01 $07 $58
	ld   bc, $0302                                   ; $4a9c: $01 $02 $03
	ld   bc, $2000                                   ; $4a9f: $01 $00 $20
	nop                                              ; $4aa2: $00
	rlca                                             ; $4aa3: $07
	call $0201                                       ; $4aa4: $cd $01 $02
	inc  bc                                          ; $4aa7: $03
	ld   bc, $2001                                   ; $4aa8: $01 $01 $20
	nop                                              ; $4aab: $00
	ld   b, $e3                                      ; $4aac: $06 $e3
	ld   bc, $000f                                   ; $4aae: $01 $0f $00
	ld   bc, $5601                                   ; $4ab1: $01 $01 $56
	ld   d, d                                        ; $4ab4: $52
	ld   [hl], c                                     ; $4ab5: $71
	ld   a, [$000d]                                  ; $4ab6: $fa $0d $00
	ld   a, [bc]                                     ; $4ab9: $0a
	inc  c                                           ; $4aba: $0c
	ld   [bc], a                                     ; $4abb: $02
	ld   c, $1e                                      ; $4abc: $0e $1e
	inc  e                                           ; $4abe: $1c
	ld   b, $05                                      ; $4abf: $06 $05
	dec  b                                           ; $4ac1: $05
	dec  e                                           ; $4ac2: $1d
	ld   b, b                                        ; $4ac3: $40
	ld   d, $03                                      ; $4ac4: $16 $03
	ld   d, $01                                      ; $4ac6: $16 $01
	inc  bc                                          ; $4ac8: $03
	jr   z, jr_047_4acb                              ; $4ac9: $28 $00

jr_047_4acb:
	ld   bc, $9e6d                                   ; $4acb: $01 $6d $9e
	inc  bc                                          ; $4ace: $03
	ld   e, e                                        ; $4acf: $5b
	ld   e, c                                        ; $4ad0: $59
	ld   [hl], c                                     ; $4ad1: $71
	ld   l, l                                        ; $4ad2: $6d
	rst  $38                                         ; $4ad3: $ff
	rst  $38                                         ; $4ad4: $ff
	dec  c                                           ; $4ad5: $0d
	or   [hl]                                        ; $4ad6: $b6
	sbc  [hl]                                        ; $4ad7: $9e
	or   [hl]                                        ; $4ad8: $b6
	push af                                          ; $4ad9: $f5
	xor  [hl]                                        ; $4ada: $ae
	rst  $20                                         ; $4adb: $e7
	ei                                               ; $4adc: $fb
	sbc  [hl]                                        ; $4add: $9e
	ld   [$9f00], sp                                 ; $4ade: $08 $00 $9f
	dec  c                                           ; $4ae1: $0d
	nop                                              ; $4ae2: $00
	ld   a, [bc]                                     ; $4ae3: $0a
	inc  e                                           ; $4ae4: $1c
	ld   b, $01                                      ; $4ae5: $06 $01
	ld   bc, $0401                                   ; $4ae7: $01 $01 $04
	jr   c, jr_047_4a8f                              ; $4aea: $38 $a3

	xor  $a5                                         ; $4aec: $ee $a5
	sub  b                                           ; $4aee: $90
	ld   [bc], a                                     ; $4aef: $02
	sub  l                                           ; $4af0: $95
	ld   [hl], d                                     ; $4af1: $72
	ld   e, c                                        ; $4af2: $59
	ld   [hl], c                                     ; $4af3: $71
	ld   l, l                                        ; $4af4: $6d
	ld   h, l                                        ; $4af5: $65
	sbc  a                                           ; $4af6: $9f
	dec  c                                           ; $4af7: $0d
	nop                                              ; $4af8: $00
	dec  b                                           ; $4af9: $05
	add  b                                           ; $4afa: $80
	ld   a, d                                        ; $4afb: $7a
	ld   bc, $0001                                   ; $4afc: $01 $01 $00
	ld   bc, $9850                                   ; $4aff: $01 $50 $98
	ld   e, d                                        ; $4b02: $5a
	halt                                             ; $4b03: $76
	ld   d, h                                        ; $4b04: $54
	ld   a, b                                        ; $4b05: $78
	sbc  [hl]                                        ; $4b06: $9e
	ld   [$9f00], sp                                 ; $4b07: $08 $00 $9f
	dec  c                                           ; $4b0a: $0d
	nop                                              ; $4b0b: $00
	dec  b                                           ; $4b0c: $05
	ld   b, b                                        ; $4b0d: $40
	ld   l, b                                        ; $4b0e: $68
	ld   [bc], a                                     ; $4b0f: $02
	nop                                              ; $4b10: $00
	nop                                              ; $4b11: $00
	ld   bc, $9166                                   ; $4b12: $01 $66 $91
	ld   d, b                                        ; $4b15: $50
	ld   a, b                                        ; $4b16: $78
	sbc  a                                           ; $4b17: $9f
	dec  c                                           ; $4b18: $0d
	nop                                              ; $4b19: $00
	ld   a, [bc]                                     ; $4b1a: $0a
	dec  c                                           ; $4b1b: $0d
	nop                                              ; $4b1c: $00
	nop                                              ; $4b1d: $00
	rrca                                             ; $4b1e: $0f
	nop                                              ; $4b1f: $00
	ld   bc, $1e09                                   ; $4b20: $01 $09 $1e
	nop                                              ; $4b23: $00
	rrca                                             ; $4b24: $0f
	nop                                              ; $4b25: $00
	ld   bc, $5601                                   ; $4b26: $01 $01 $56
	rst  $38                                         ; $4b29: $ff
	rst  $38                                         ; $4b2a: $ff
	halt                                             ; $4b2b: $76
	sbc  [hl]                                        ; $4b2c: $9e
	inc  b                                           ; $4b2d: $04
	ld   c, c                                        ; $4b2e: $49
	ld   e, c                                        ; $4b2f: $59
	ld   [hl], d                                     ; $4b30: $72
	ld   [hl], d                                     ; $4b31: $72
	ld   e, l                                        ; $4b32: $5d
	sub  b                                           ; $4b33: $90
	ld   a, h                                        ; $4b34: $7c
	ld   a, l                                        ; $4b35: $7d
	ld   sp, hl                                      ; $4b36: $f9
	dec  c                                           ; $4b37: $0d
	nop                                              ; $4b38: $00
	ld   a, [bc]                                     ; $4b39: $0a
	rrca                                             ; $4b3a: $0f
	ld   b, $08                                      ; $4b3b: $06 $08
	dec  e                                           ; $4b3d: $1d
	ld   b, b                                        ; $4b3e: $40
	ld   d, $03                                      ; $4b3f: $16 $03
	ld   d, $01                                      ; $4b41: $16 $01
	inc  bc                                          ; $4b43: $03
	add  hl, hl                                      ; $4b44: $29
	nop                                              ; $4b45: $00
	ld   bc, $9e58                                   ; $4b46: $01 $58 $9e
	ld   e, b                                        ; $4b49: $58
	ld   d, d                                        ; $4b4a: $52
	ld   a, [$040d]                                  ; $4b4b: $fa $0d $04
	ld   c, c                                        ; $4b4e: $49
	sub  d                                           ; $4b4f: $92
	ld   [hl], c                                     ; $4b50: $71
	ld   [hl], h                                     ; $4b51: $74
	sbc  c                                           ; $4b52: $99
	and  c                                           ; $4b53: $a1
	ld   l, [hl]                                     ; $4b54: $6e
	ld   a, [$7d0d]                                  ; $4b55: $fa $0d $7d
	sbc  [hl]                                        ; $4b58: $9e
	inc  bc                                          ; $4b59: $03
	ld   [hl], b                                     ; $4b5a: $70
	ld   e, l                                        ; $4b5b: $5d
	halt                                             ; $4b5c: $76
	ld   [hl], c                                     ; $4b5d: $71
	ld   [hl], h                                     ; $4b5e: $74
	ld   e, l                                        ; $4b5f: $5d
	sbc  d                                           ; $4b60: $9a
	sub  [hl]                                        ; $4b61: $96
	ld   a, [$000d]                                  ; $4b62: $fa $0d $00
	ld   a, [bc]                                     ; $4b65: $0a
	ld   bc, $5490                                   ; $4b66: $01 $90 $54
	ld   d, d                                        ; $4b69: $52
	ld   d, d                                        ; $4b6a: $52
	ld   a, [$030d]                                  ; $4b6b: $fa $0d $03
	xor  c                                           ; $4b6e: $a9
	ld   e, c                                        ; $4b6f: $59
	ei                                               ; $4b70: $fb
	sbc  [hl]                                        ; $4b71: $9e
	halt                                             ; $4b72: $76
	ld   [hl], c                                     ; $4b73: $71
	ld   [hl], h                                     ; $4b74: $74
	ld   e, l                                        ; $4b75: $5d
	sbc  d                                           ; $4b76: $9a
	ei                                               ; $4b77: $fb
	ld   a, [$000d]                                  ; $4b78: $fa $0d $00
	ld   a, [bc]                                     ; $4b7b: $0a
	rrca                                             ; $4b7c: $0f
	nop                                              ; $4b7d: $00
	ld   bc, $020c                                   ; $4b7e: $01 $0c $02
	ld   c, $1e                                      ; $4b81: $0e $1e
	inc  e                                           ; $4b83: $1c
	ld   b, $06                                      ; $4b84: $06 $06
	ld   b, $01                                      ; $4b86: $06 $01
	ld   d, b                                        ; $4b88: $50
	ei                                               ; $4b89: $fb
	sbc  [hl]                                        ; $4b8a: $9e
	ld   [bc], a                                     ; $4b8b: $02
	and  c                                           ; $4b8c: $a1
	inc  b                                           ; $4b8d: $04
	sbc  [hl]                                        ; $4b8e: $9e
	ld   [bc], a                                     ; $4b8f: $02
	jr   z, @+$54                                    ; $4b90: $28 $52

	ld   e, c                                        ; $4b92: $59
	sub  a                                           ; $4b93: $97
	dec  c                                           ; $4b94: $0d
	nop                                              ; $4b95: $00
	dec  b                                           ; $4b96: $05
	ld   b, b                                        ; $4b97: $40
	ld   c, l                                        ; $4b98: $4d
	ld   [bc], a                                     ; $4b99: $02
	nop                                              ; $4b9a: $00
	nop                                              ; $4b9b: $00
	ld   bc, $9504                                   ; $4b9c: $01 $04 $95
	ld   [bc], a                                     ; $4b9f: $02
	ld   hl, $b502                                   ; $4ba0: $21 $02 $b5
	ld   [hl], c                                     ; $4ba3: $71
	ld   [hl], h                                     ; $4ba4: $74
	ld   a, e                                        ; $4ba5: $7b
	sbc  c                                           ; $4ba6: $99
	sbc  a                                           ; $4ba7: $9f
	dec  c                                           ; $4ba8: $0d
	nop                                              ; $4ba9: $00
	dec  b                                           ; $4baa: $05
	ld   b, b                                        ; $4bab: $40
	ld   d, e                                        ; $4bac: $53
	ld   bc, $0001                                   ; $4bad: $01 $01 $00
	ld   bc, $9166                                   ; $4bb0: $01 $66 $91
	ld   d, b                                        ; $4bb3: $50
	ld   a, b                                        ; $4bb4: $78
	sbc  a                                           ; $4bb5: $9f
	dec  c                                           ; $4bb6: $0d
	nop                                              ; $4bb7: $00
	ld   a, [bc]                                     ; $4bb8: $0a
	dec  c                                           ; $4bb9: $0d
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	rrca                                             ; $4bbc: $0f
	nop                                              ; $4bbd: $00
	ld   bc, $1e09                                   ; $4bbe: $01 $09 $1e
	nop                                              ; $4bc1: $00
	nop                                              ; $4bc2: $00
	ld   c, $65                                      ; $4bc3: $0e $65
	inc  e                                           ; $4bc5: $1c
	inc  bc                                          ; $4bc6: $03
	nop                                              ; $4bc7: $00
	nop                                              ; $4bc8: $00
	ld   [bc], a                                     ; $4bc9: $02
	ld   bc, $9750                                   ; $4bca: $01 $50 $97
	sbc  [hl]                                        ; $4bcd: $9e
	ld   [$5d00], sp                                 ; $4bce: $08 $00 $5d
	and  c                                           ; $4bd1: $a1
	sbc  [hl]                                        ; $4bd2: $9e
	dec  c                                           ; $4bd3: $0d
	ld   l, a                                        ; $4bd4: $6f
	sub  l                                           ; $4bd5: $95
	ld   d, h                                        ; $4bd6: $54
	ld   [hl], a                                     ; $4bd7: $77
	dec  b                                           ; $4bd8: $05
	dec  d                                           ; $4bd9: $15
	ld   e, c                                        ; $4bda: $59
	ld   [hl], c                                     ; $4bdb: $71
	ld   l, l                                        ; $4bdc: $6d
	sbc  l                                           ; $4bdd: $9d
	sbc  a                                           ; $4bde: $9f
	dec  c                                           ; $4bdf: $0d
	nop                                              ; $4be0: $00
	ld   a, [bc]                                     ; $4be1: $0a
	ld   bc, $7c61                                   ; $4be2: $01 $61 $7c
	cp   b                                           ; $4be5: $b8
	push hl                                          ; $4be6: $e5
	pop  af                                          ; $4be7: $f1
	ei                                               ; $4be8: $fb
	ld   a, h                                        ; $4be9: $7c
	jp   nc, $aec4                                   ; $4bea: $d2 $c4 $ae

	push af                                          ; $4bed: $f5
	and  b                                           ; $4bee: $a0
	dec  c                                           ; $4bef: $0d
	ld   [bc], a                                     ; $4bf0: $02
	ld   e, e                                        ; $4bf1: $5b
	dec  b                                           ; $4bf2: $05
	cpl                                              ; $4bf3: $2f
	ld   h, l                                        ; $4bf4: $65
	ld   [hl], h                                     ; $4bf5: $74
	sub  b                                           ; $4bf6: $90
	sub  a                                           ; $4bf7: $97
	ld   d, [hl]                                     ; $4bf8: $56
	ld   a, b                                        ; $4bf9: $78
	ld   d, d                                        ; $4bfa: $52
	dec  c                                           ; $4bfb: $0d
	ld   e, c                                        ; $4bfc: $59
	ld   h, l                                        ; $4bfd: $65
	sub  a                                           ; $4bfe: $97
	ld   sp, hl                                      ; $4bff: $f9
	dec  c                                           ; $4c00: $0d
	nop                                              ; $4c01: $00
	ld   a, [bc]                                     ; $4c02: $0a
	inc  e                                           ; $4c03: $1c
	inc  bc                                          ; $4c04: $03
	inc  b                                           ; $4c05: $04
	inc  b                                           ; $4c06: $04
	ld   bc, $9403                                   ; $4c07: $01 $03 $94
	inc  b                                           ; $4c0a: $04
	sbc  [hl]                                        ; $4c0b: $9e
	ld   [hl], l                                     ; $4c0c: $75
	sub  d                                           ; $4c0d: $92
	sbc  e                                           ; $4c0e: $9b
	ld   d, h                                        ; $4c0f: $54
	halt                                             ; $4c10: $76
	dec  b                                           ; $4c11: $05
	pop  de                                          ; $4c12: $d1
	ld   [hl], c                                     ; $4c13: $71
	ld   l, l                                        ; $4c14: $6d
	ld   a, h                                        ; $4c15: $7c
	ld   l, [hl]                                     ; $4c16: $6e
	ld   e, a                                        ; $4c17: $5f
	ld   [hl], a                                     ; $4c18: $77
	dec  c                                           ; $4c19: $0d
	inc  bc                                          ; $4c1a: $03
	add  l                                           ; $4c1b: $85
	inc  b                                           ; $4c1c: $04
	xor  e                                           ; $4c1d: $ab
	inc  bc                                          ; $4c1e: $03
	add  d                                           ; $4c1f: $82
	ld   a, c                                        ; $4c20: $79
	ld   [bc], a                                     ; $4c21: $02
	ld   a, b                                        ; $4c22: $78
	ld   a, [hl]                                     ; $4c23: $7e
	sbc  d                                           ; $4c24: $9a
	ld   [hl], h                                     ; $4c25: $74
	dec  c                                           ; $4c26: $0d
	ld   h, l                                        ; $4c27: $65
	adc  h                                           ; $4c28: $8c
	ld   [hl], c                                     ; $4c29: $71
	ld   l, l                                        ; $4c2a: $6d
	ld   a, h                                        ; $4c2b: $7c
	sub  [hl]                                        ; $4c2c: $96
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	dec  c                                           ; $4c2f: $0d
	nop                                              ; $4c30: $00
	ld   a, [bc]                                     ; $4c31: $0a
	inc  e                                           ; $4c32: $1c
	inc  bc                                          ; $4c33: $03
	nop                                              ; $4c34: $00
	nop                                              ; $4c35: $00
	ld   bc, $4605                                   ; $4c36: $01 $05 $46
	ld   h, l                                        ; $4c39: $65
	ld   b, $27                                      ; $4c3a: $06 $27
	ld   a, b                                        ; $4c3c: $78
	ld   d, d                                        ; $4c3d: $52
	ld   e, a                                        ; $4c3e: $5f
	ld   [hl], a                                     ; $4c3f: $77
	sbc  [hl]                                        ; $4c40: $9e
	dec  c                                           ; $4c41: $0d
	sub  [hl]                                        ; $4c42: $96
	sbc  e                                           ; $4c43: $9b
	ld   h, l                                        ; $4c44: $65
	ld   e, l                                        ; $4c45: $5d
	ld   a, e                                        ; $4c46: $7b
	sbc  a                                           ; $4c47: $9f
	dec  c                                           ; $4c48: $0d
	nop                                              ; $4c49: $00
	ld   a, [bc]                                     ; $4c4a: $0a
	dec  c                                           ; $4c4b: $0d
	nop                                              ; $4c4c: $00
	nop                                              ; $4c4d: $00
	rrca                                             ; $4c4e: $0f
	nop                                              ; $4c4f: $00
	ld   bc, $1e09                                   ; $4c50: $01 $09 $1e
	ld   bc, $0d03                                   ; $4c53: $01 $03 $0d
	inc  b                                           ; $4c56: $04
	ld   a, b                                        ; $4c57: $78
	ld   e, d                                        ; $4c58: $5a
	ld   a, b                                        ; $4c59: $78
	ld   d, d                                        ; $4c5a: $52
	rst  $38                                         ; $4c5b: $ff
	rst  $38                                         ; $4c5c: $ff
	sub  d                                           ; $4c5d: $92
	sbc  c                                           ; $4c5e: $99
	ld   e, c                                        ; $4c5f: $59
	sbc  a                                           ; $4c60: $9f
	dec  c                                           ; $4c61: $0d
	nop                                              ; $4c62: $00
	ld   a, [bc]                                     ; $4c63: $0a
	ld   bc, $688c                                   ; $4c64: $01 $8c $68
	ld   a, l                                        ; $4c67: $7d
	rst  $38                                         ; $4c68: $ff
	rst  $38                                         ; $4c69: $ff
	dec  c                                           ; $4c6a: $0d
	nop                                              ; $4c6b: $00
	ld   a, [bc]                                     ; $4c6c: $0a
	add  hl, de                                      ; $4c6d: $19
	dec  b                                           ; $4c6e: $05
	inc  bc                                          ; $4c6f: $03
	ld   [bc], a                                     ; $4c70: $02
	xor  h                                           ; $4c71: $ac
	ld   l, c                                        ; $4c72: $69
	and  c                                           ; $4c73: $a1
	and  b                                           ; $4c74: $a0
	ld   h, l                                        ; $4c75: $65
	adc  a                                           ; $4c76: $8f
	sbc  c                                           ; $4c77: $99
	nop                                              ; $4c78: $00
	nop                                              ; $4c79: $00
	ld   [bc], a                                     ; $4c7a: $02
	xor  h                                           ; $4c7b: $ac
	ld   l, c                                        ; $4c7c: $69
	and  c                                           ; $4c7d: $a1
	and  b                                           ; $4c7e: $a0
	ld   d, b                                        ; $4c7f: $50
	ld   e, a                                        ; $4c80: $5f
	sbc  c                                           ; $4c81: $99
	nop                                              ; $4c82: $00
	ld   bc, $ac02                                   ; $4c83: $01 $02 $ac
	ld   l, c                                        ; $4c86: $69
	and  c                                           ; $4c87: $a1
	and  b                                           ; $4c88: $a0
	ld   l, l                                        ; $4c89: $6d
	ld   l, l                                        ; $4c8a: $6d
	ld   e, l                                        ; $4c8b: $5d
	nop                                              ; $4c8c: $00
	ld   [bc], a                                     ; $4c8d: $02
	rlca                                             ; $4c8e: $07
	jp   hl                                          ; $4c8f: $e9


	nop                                              ; $4c90: $00
	ld   [bc], a                                     ; $4c91: $02
	inc  bc                                          ; $4c92: $03
	ld   bc, $2000                                   ; $4c93: $01 $00 $20
	nop                                              ; $4c96: $00
	rlca                                             ; $4c97: $07
	ld   de, $0201                                   ; $4c98: $11 $01 $02
	inc  bc                                          ; $4c9b: $03
	ld   bc, $2001                                   ; $4c9c: $01 $01 $20
	nop                                              ; $4c9f: $00
	rlca                                             ; $4ca0: $07
	inc  [hl]                                        ; $4ca1: $34
	ld   bc, $0302                                   ; $4ca2: $01 $02 $03
	ld   bc, $2002                                   ; $4ca5: $01 $02 $20
	nop                                              ; $4ca8: $00
	ld   b, $56                                      ; $4ca9: $06 $56
	ld   bc, $000f                                   ; $4cab: $01 $0f $00
	ld   bc, $0201                                   ; $4cae: $01 $01 $02
	xor  h                                           ; $4cb1: $ac
	ld   l, c                                        ; $4cb2: $69
	and  c                                           ; $4cb3: $a1
	and  b                                           ; $4cb4: $a0
	ld   h, l                                        ; $4cb5: $65
	adc  a                                           ; $4cb6: $8f
	sub  [hl]                                        ; $4cb7: $96
	ld   d, h                                        ; $4cb8: $54
	sbc  a                                           ; $4cb9: $9f
	dec  c                                           ; $4cba: $0d
	nop                                              ; $4cbb: $00
	ld   a, [bc]                                     ; $4cbc: $0a
	ld   bc, $9a61                                   ; $4cbd: $01 $61 $9a
	ld   [hl], l                                     ; $4cc0: $75
	sub  [hl]                                        ; $4cc1: $96
	ld   h, l                                        ; $4cc2: $65
	rst  $38                                         ; $4cc3: $ff
	rst  $38                                         ; $4cc4: $ff
	dec  c                                           ; $4cc5: $0d
	nop                                              ; $4cc6: $00
	ld   a, [bc]                                     ; $4cc7: $0a
	dec  b                                           ; $4cc8: $05
	ld   b, b                                        ; $4cc9: $40
	rst  $38                                         ; $4cca: $ff
	inc  bc                                          ; $4ccb: $03
	rst  $38                                         ; $4ccc: $ff
	ld   bc, $2801                                   ; $4ccd: $01 $01 $28
	nop                                              ; $4cd0: $00
	ld   b, $68                                      ; $4cd1: $06 $68
	ld   bc, $000f                                   ; $4cd3: $01 $0f $00
	ld   bc, $0201                                   ; $4cd6: $01 $01 $02
	xor  h                                           ; $4cd9: $ac
	ld   l, c                                        ; $4cda: $69
	and  c                                           ; $4cdb: $a1
	and  b                                           ; $4cdc: $a0
	ld   d, b                                        ; $4cdd: $50
	ld   e, a                                        ; $4cde: $5f
	sub  [hl]                                        ; $4cdf: $96
	ld   d, h                                        ; $4ce0: $54
	sbc  a                                           ; $4ce1: $9f
	dec  c                                           ; $4ce2: $0d
	nop                                              ; $4ce3: $00
	ld   a, [bc]                                     ; $4ce4: $0a
	ld   bc, $9a50                                   ; $4ce5: $01 $50 $9a
	ld   sp, hl                                      ; $4ce8: $f9
	db   $10                                         ; $4ce9: $10
	sub  b                                           ; $4cea: $90
	ld   d, h                                        ; $4ceb: $54
	ld   d, b                                        ; $4cec: $50
	ld   d, d                                        ; $4ced: $52
	ld   [hl], h                                     ; $4cee: $74
	sbc  c                                           ; $4cef: $99
	sbc  a                                           ; $4cf0: $9f
	dec  c                                           ; $4cf1: $0d
	nop                                              ; $4cf2: $00
	ld   a, [bc]                                     ; $4cf3: $0a
	ld   b, $68                                      ; $4cf4: $06 $68
	ld   bc, $000f                                   ; $4cf6: $01 $0f $00
	ld   bc, $0201                                   ; $4cf9: $01 $01 $02
	xor  h                                           ; $4cfc: $ac
	ld   l, c                                        ; $4cfd: $69
	and  c                                           ; $4cfe: $a1
	and  b                                           ; $4cff: $a0
	ld   l, l                                        ; $4d00: $6d
	ld   l, l                                        ; $4d01: $6d
	ld   h, c                                        ; $4d02: $61
	ld   d, h                                        ; $4d03: $54
	sbc  a                                           ; $4d04: $9f
	dec  c                                           ; $4d05: $0d
	nop                                              ; $4d06: $00
	ld   a, [bc]                                     ; $4d07: $0a
	ld   bc, $ffff                                   ; $4d08: $01 $ff $ff
	inc  b                                           ; $4d0b: $04
	ld   c, c                                        ; $4d0c: $49
	ld   e, c                                        ; $4d0d: $59
	inc  b                                           ; $4d0e: $04
	adc  h                                           ; $4d0f: $8c
	ld   l, [hl]                                     ; $4d10: $6e
	ld   a, b                                        ; $4d11: $78
	ld   sp, hl                                      ; $4d12: $f9
	dec  c                                           ; $4d13: $0d
	nop                                              ; $4d14: $00
	ld   a, [bc]                                     ; $4d15: $0a
	ld   b, $68                                      ; $4d16: $06 $68
	ld   bc, $000f                                   ; $4d18: $01 $0f $00
	ld   bc, $7701                                   ; $4d1b: $01 $01 $77
	ld   d, h                                        ; $4d1e: $54
	ld   h, l                                        ; $4d1f: $65
	sub  [hl]                                        ; $4d20: $96
	ld   d, h                                        ; $4d21: $54
	rst  $38                                         ; $4d22: $ff
	rst  $38                                         ; $4d23: $ff
	ld   sp, hl                                      ; $4d24: $f9
	dec  c                                           ; $4d25: $0d
	nop                                              ; $4d26: $00
	ld   a, [bc]                                     ; $4d27: $0a
	ld   b, $68                                      ; $4d28: $06 $68
	ld   bc, $7501                                   ; $4d2a: $01 $01 $75
	sbc  [hl]                                        ; $4d2d: $9e
	inc  bc                                          ; $4d2e: $03
	ld   l, b                                        ; $4d2f: $68
	ld   a, l                                        ; $4d30: $7d
	rst  $38                                         ; $4d31: $ff
	rst  $38                                         ; $4d32: $ff
	dec  c                                           ; $4d33: $0d
	nop                                              ; $4d34: $00
	ld   a, [bc]                                     ; $4d35: $0a
	add  hl, de                                      ; $4d36: $19
	dec  b                                           ; $4d37: $05
	inc  bc                                          ; $4d38: $03
	ret  nc                                          ; $4d39: $d0

	push af                                          ; $4d3a: $f5
	jp   z, $a0ed                                    ; $4d3b: $ca $ed $a0

	ld   a, l                                        ; $4d3e: $7d
	ld   l, b                                        ; $4d3f: $68
	ld   h, a                                        ; $4d40: $67
	nop                                              ; $4d41: $00
	nop                                              ; $4d42: $00
	ret  nc                                          ; $4d43: $d0

	push af                                          ; $4d44: $f5
	jp   z, $a0ed                                    ; $4d45: $ca $ed $a0

	ld   [bc], a                                     ; $4d48: $02
	sub  e                                           ; $4d49: $93
	ld   h, a                                        ; $4d4a: $67
	nop                                              ; $4d4b: $00
	ld   bc, $f5d0                                   ; $4d4c: $01 $d0 $f5
	jp   z, $a0ed                                    ; $4d4f: $ca $ed $a0

	ld   h, c                                        ; $4d52: $61
	sbc  l                                           ; $4d53: $9d
	ld   h, a                                        ; $4d54: $67
	nop                                              ; $4d55: $00
	ld   [bc], a                                     ; $4d56: $02
	rlca                                             ; $4d57: $07
	or   d                                           ; $4d58: $b2
	ld   bc, $0302                                   ; $4d59: $01 $02 $03
	ld   bc, $2000                                   ; $4d5c: $01 $00 $20
	nop                                              ; $4d5f: $00
	rlca                                             ; $4d60: $07
	jp   c, $0201                                    ; $4d61: $da $01 $02

	inc  bc                                          ; $4d64: $03
	ld   bc, $2001                                   ; $4d65: $01 $01 $20
	nop                                              ; $4d68: $00
	rlca                                             ; $4d69: $07
	ld   c, $02                                      ; $4d6a: $0e $02
	ld   [bc], a                                     ; $4d6c: $02
	inc  bc                                          ; $4d6d: $03
	ld   bc, $2002                                   ; $4d6e: $01 $02 $20
	nop                                              ; $4d71: $00
	ld   b, $43                                      ; $4d72: $06 $43
	ld   [bc], a                                     ; $4d74: $02
	rrca                                             ; $4d75: $0f
	nop                                              ; $4d76: $00
	ld   bc, $d001                                   ; $4d77: $01 $01 $d0
	push af                                          ; $4d7a: $f5
	jp   z, $a0ed                                    ; $4d7b: $ca $ed $a0

	ld   a, l                                        ; $4d7e: $7d
	ld   l, b                                        ; $4d7f: $68
	ld   l, e                                        ; $4d80: $6b
	ld   d, h                                        ; $4d81: $54
	sbc  a                                           ; $4d82: $9f
	dec  c                                           ; $4d83: $0d
	nop                                              ; $4d84: $00
	ld   a, [bc]                                     ; $4d85: $0a
	ld   bc, $9a61                                   ; $4d86: $01 $61 $9a
	ld   [hl], l                                     ; $4d89: $75
	sub  [hl]                                        ; $4d8a: $96
	ld   h, l                                        ; $4d8b: $65
	rst  $38                                         ; $4d8c: $ff
	rst  $38                                         ; $4d8d: $ff
	dec  c                                           ; $4d8e: $0d
	nop                                              ; $4d8f: $00
	ld   a, [bc]                                     ; $4d90: $0a
	dec  b                                           ; $4d91: $05
	ld   b, b                                        ; $4d92: $40
	rst  $38                                         ; $4d93: $ff
	inc  bc                                          ; $4d94: $03
	rst  $38                                         ; $4d95: $ff
	ld   bc, $2801                                   ; $4d96: $01 $01 $28
	nop                                              ; $4d99: $00
	ld   b, $55                                      ; $4d9a: $06 $55
	ld   [bc], a                                     ; $4d9c: $02
	rrca                                             ; $4d9d: $0f
	nop                                              ; $4d9e: $00
	ld   bc, $d001                                   ; $4d9f: $01 $01 $d0
	push af                                          ; $4da2: $f5
	jp   z, $a0ed                                    ; $4da3: $ca $ed $a0

	ld   [bc], a                                     ; $4da6: $02
	sub  e                                           ; $4da7: $93
	ld   l, e                                        ; $4da8: $6b
	ld   d, h                                        ; $4da9: $54
	sbc  a                                           ; $4daa: $9f
	dec  c                                           ; $4dab: $0d
	nop                                              ; $4dac: $00
	ld   a, [bc]                                     ; $4dad: $0a
	ld   bc, $509d                                   ; $4dae: $01 $9d $50
	ld   a, [$0310]                                  ; $4db1: $fa $10 $03
	ld   e, c                                        ; $4db4: $59
	ld   e, d                                        ; $4db5: $5a
	inc  bc                                          ; $4db6: $03
	add  b                                           ; $4db7: $80
	ld   [hl], h                                     ; $4db8: $74
	ld   e, e                                        ; $4db9: $5b
	ld   l, l                                        ; $4dba: $6d
	ld   a, [$0dfa]                                  ; $4dbb: $fa $fa $0d
	nop                                              ; $4dbe: $00
	ld   b, $55                                      ; $4dbf: $06 $55
	ld   [bc], a                                     ; $4dc1: $02
	ld   bc, $e3c1                                   ; $4dc2: $01 $c1 $e3
	pop  bc                                          ; $4dc5: $c1
	db   $e3                                         ; $4dc6: $e3
	sbc  a                                           ; $4dc7: $9f
	inc  b                                           ; $4dc8: $04
	ld   l, [hl]                                     ; $4dc9: $6e
	adc  a                                           ; $4dca: $8f
	sub  [hl]                                        ; $4dcb: $96
	ld   d, h                                        ; $4dcc: $54
	sbc  a                                           ; $4dcd: $9f
	dec  c                                           ; $4dce: $0d
	nop                                              ; $4dcf: $00
	ld   a, [bc]                                     ; $4dd0: $0a
	rrca                                             ; $4dd1: $0f
	nop                                              ; $4dd2: $00
	ld   bc, $d001                                   ; $4dd3: $01 $01 $d0
	push af                                          ; $4dd6: $f5
	jp   z, $a0ed                                    ; $4dd7: $ca $ed $a0

	ld   h, c                                        ; $4dda: $61
	sbc  l                                           ; $4ddb: $9d
	ld   l, e                                        ; $4ddc: $6b
	ld   d, h                                        ; $4ddd: $54
	sbc  a                                           ; $4dde: $9f
	dec  c                                           ; $4ddf: $0d
	nop                                              ; $4de0: $00
	ld   a, [bc]                                     ; $4de1: $0a
	ld   bc, $ffff                                   ; $4de2: $01 $ff $ff
	ld   [hl], l                                     ; $4de5: $75
	sub  b                                           ; $4de6: $90
	sbc  [hl]                                        ; $4de7: $9e
	ld   l, e                                        ; $4de8: $6b
	and  c                                           ; $4de9: $a1
	ld   a, b                                        ; $4dea: $78
	ld   h, c                                        ; $4deb: $61
	halt                                             ; $4dec: $76
	ld   h, l                                        ; $4ded: $65
	ld   l, l                                        ; $4dee: $6d
	sub  a                                           ; $4def: $97
	dec  c                                           ; $4df0: $0d
	rst  JumpTable                                         ; $4df1: $df
	db   $ec                                         ; $4df2: $ec
	and  e                                           ; $4df3: $a3
	ld   h, e                                        ; $4df4: $63
	and  c                                           ; $4df5: $a1
	ld   a, c                                        ; $4df6: $79
	inc  bc                                          ; $4df7: $03
	ld   hl, sp-$69                                  ; $4df8: $f8 $97
	sbc  d                                           ; $4dfa: $9a
	sbc  c                                           ; $4dfb: $99
	sub  [hl]                                        ; $4dfc: $96
	ld   a, b                                        ; $4dfd: $78
	rst  $38                                         ; $4dfe: $ff
	rst  $38                                         ; $4dff: $ff
	dec  c                                           ; $4e00: $0d
	nop                                              ; $4e01: $00
	ld   a, [bc]                                     ; $4e02: $0a
	ld   b, $55                                      ; $4e03: $06 $55
	ld   [bc], a                                     ; $4e05: $02
	rrca                                             ; $4e06: $0f
	nop                                              ; $4e07: $00
	ld   bc, $7701                                   ; $4e08: $01 $01 $77
	ld   d, h                                        ; $4e0b: $54
	ld   h, l                                        ; $4e0c: $65
	sub  [hl]                                        ; $4e0d: $96
	ld   d, h                                        ; $4e0e: $54
	rst  $38                                         ; $4e0f: $ff
	rst  $38                                         ; $4e10: $ff
	ld   sp, hl                                      ; $4e11: $f9
	dec  c                                           ; $4e12: $0d
	nop                                              ; $4e13: $00
	ld   a, [bc]                                     ; $4e14: $0a
	ld   b, $55                                      ; $4e15: $06 $55
	ld   [bc], a                                     ; $4e17: $02
	ld   bc, $9166                                   ; $4e18: $01 $66 $91
	sbc  [hl]                                        ; $4e1b: $9e
	inc  bc                                          ; $4e1c: $03
	ld   l, b                                        ; $4e1d: $68
	ld   a, l                                        ; $4e1e: $7d
	rst  $38                                         ; $4e1f: $ff
	rst  $38                                         ; $4e20: $ff
	dec  c                                           ; $4e21: $0d
	nop                                              ; $4e22: $00
	ld   a, [bc]                                     ; $4e23: $0a
	add  hl, de                                      ; $4e24: $19
	dec  b                                           ; $4e25: $05
	inc  bc                                          ; $4e26: $03
	jp   nc, $aec4                                   ; $4e27: $d2 $c4 $ae

	push af                                          ; $4e2a: $f5
	and  b                                           ; $4e2b: $a0
	ld   [bc], a                                     ; $4e2c: $02
	ld   e, e                                        ; $4e2d: $5b
	dec  b                                           ; $4e2e: $05
	cpl                                              ; $4e2f: $2f
	ld   h, a                                        ; $4e30: $67
	sbc  c                                           ; $4e31: $99
	nop                                              ; $4e32: $00
	nop                                              ; $4e33: $00
	jp   nc, $aec4                                   ; $4e34: $d2 $c4 $ae

	push af                                          ; $4e37: $f5
	and  b                                           ; $4e38: $a0
	adc  l                                           ; $4e39: $8d
	ld   e, d                                        ; $4e3a: $5a
	ld   e, l                                        ; $4e3b: $5d
	nop                                              ; $4e3c: $00
	ld   bc, $c4d2                                   ; $4e3d: $01 $d2 $c4
	xor  [hl]                                        ; $4e40: $ae
	push af                                          ; $4e41: $f5
	and  b                                           ; $4e42: $a0
	ld   a, l                                        ; $4e43: $7d
	sub  a                                           ; $4e44: $97
	ld   d, h                                        ; $4e45: $54
	nop                                              ; $4e46: $00
	ld   [bc], a                                     ; $4e47: $02
	rlca                                             ; $4e48: $07
	and  e                                           ; $4e49: $a3
	ld   [bc], a                                     ; $4e4a: $02
	ld   [bc], a                                     ; $4e4b: $02
	inc  bc                                          ; $4e4c: $03
	ld   bc, $2000                                   ; $4e4d: $01 $00 $20
	nop                                              ; $4e50: $00
	rlca                                             ; $4e51: $07
	adc  $02                                         ; $4e52: $ce $02
	ld   [bc], a                                     ; $4e54: $02
	inc  bc                                          ; $4e55: $03
	ld   bc, $2001                                   ; $4e56: $01 $01 $20
	nop                                              ; $4e59: $00
	rlca                                             ; $4e5a: $07
	pop  af                                          ; $4e5b: $f1
	ld   [bc], a                                     ; $4e5c: $02
	ld   [bc], a                                     ; $4e5d: $02
	inc  bc                                          ; $4e5e: $03
	ld   bc, $2002                                   ; $4e5f: $01 $02 $20
	nop                                              ; $4e62: $00
	ld   b, $15                                      ; $4e63: $06 $15
	inc  bc                                          ; $4e65: $03
	rrca                                             ; $4e66: $0f
	nop                                              ; $4e67: $00
	ld   bc, $d201                                   ; $4e68: $01 $01 $d2
	call nz, $f5ae                                   ; $4e6b: $c4 $ae $f5
	and  b                                           ; $4e6e: $a0
	ld   [bc], a                                     ; $4e6f: $02
	ld   e, e                                        ; $4e70: $5b
	dec  b                                           ; $4e71: $05
	cpl                                              ; $4e72: $2f
	ld   h, l                                        ; $4e73: $65
	sub  [hl]                                        ; $4e74: $96
	ld   d, h                                        ; $4e75: $54
	sbc  a                                           ; $4e76: $9f
	dec  c                                           ; $4e77: $0d
	nop                                              ; $4e78: $00
	ld   a, [bc]                                     ; $4e79: $0a
	ld   bc, $9a61                                   ; $4e7a: $01 $61 $9a
	ld   [hl], l                                     ; $4e7d: $75
	sub  [hl]                                        ; $4e7e: $96
	ld   h, l                                        ; $4e7f: $65
	rst  $38                                         ; $4e80: $ff
	rst  $38                                         ; $4e81: $ff
	dec  c                                           ; $4e82: $0d
	nop                                              ; $4e83: $00
	ld   a, [bc]                                     ; $4e84: $0a
	dec  b                                           ; $4e85: $05
	ld   b, b                                        ; $4e86: $40
	rst  $38                                         ; $4e87: $ff
	inc  bc                                          ; $4e88: $03
	rst  $38                                         ; $4e89: $ff
	ld   bc, $2801                                   ; $4e8a: $01 $01 $28
	nop                                              ; $4e8d: $00
	ld   b, $26                                      ; $4e8e: $06 $26
	inc  bc                                          ; $4e90: $03
	rrca                                             ; $4e91: $0f
	nop                                              ; $4e92: $00
	ld   bc, $d201                                   ; $4e93: $01 $01 $d2
	call nz, $f5ae                                   ; $4e96: $c4 $ae $f5
	and  b                                           ; $4e99: $a0
	adc  l                                           ; $4e9a: $8d
	ld   e, d                                        ; $4e9b: $5a
	ld   h, c                                        ; $4e9c: $61
	ld   d, h                                        ; $4e9d: $54
	sbc  a                                           ; $4e9e: $9f
	dec  c                                           ; $4e9f: $0d
	nop                                              ; $4ea0: $00
	ld   a, [bc]                                     ; $4ea1: $0a
	ld   bc, $4904                                   ; $4ea2: $01 $04 $49
	ld   e, c                                        ; $4ea5: $59
	ld   l, a                                        ; $4ea6: $6f
	ld   e, d                                        ; $4ea7: $5a
	ld   d, h                                        ; $4ea8: $54
	sub  [hl]                                        ; $4ea9: $96
	ld   d, h                                        ; $4eaa: $54
	ld   a, b                                        ; $4eab: $78
	rst  $38                                         ; $4eac: $ff
	rst  $38                                         ; $4ead: $ff
	dec  c                                           ; $4eae: $0d
	nop                                              ; $4eaf: $00
	ld   a, [bc]                                     ; $4eb0: $0a
	ld   b, $26                                      ; $4eb1: $06 $26
	inc  bc                                          ; $4eb3: $03
	rrca                                             ; $4eb4: $0f
	nop                                              ; $4eb5: $00
	ld   bc, $d201                                   ; $4eb6: $01 $01 $d2
	call nz, $f5ae                                   ; $4eb9: $c4 $ae $f5
	and  b                                           ; $4ebc: $a0
	ld   a, l                                        ; $4ebd: $7d
	sub  a                                           ; $4ebe: $97
	ld   e, b                                        ; $4ebf: $58
	ld   d, h                                        ; $4ec0: $54
	sbc  a                                           ; $4ec1: $9f
	dec  c                                           ; $4ec2: $0d
	nop                                              ; $4ec3: $00
	ld   a, [bc]                                     ; $4ec4: $0a
	ld   bc, $9a6b                                   ; $4ec5: $01 $6b $9a
	ld   a, l                                        ; $4ec8: $7d
	sbc  [hl]                                        ; $4ec9: $9e
	ld   a, [hl]                                     ; $4eca: $7e
	ld   [hl], c                                     ; $4ecb: $71
	ld   [bc], a                                     ; $4ecc: $02
	dec  sp                                          ; $4ecd: $3b
	ld   l, [hl]                                     ; $4ece: $6e
	sbc  e                                           ; $4ecf: $9b
	rst  $38                                         ; $4ed0: $ff
	rst  $38                                         ; $4ed1: $ff
	dec  c                                           ; $4ed2: $0d
	nop                                              ; $4ed3: $00
	ld   a, [bc]                                     ; $4ed4: $0a
	ld   b, $26                                      ; $4ed5: $06 $26
	inc  bc                                          ; $4ed7: $03
	rrca                                             ; $4ed8: $0f
	nop                                              ; $4ed9: $00
	ld   bc, $8c01                                   ; $4eda: $01 $01 $8c
	ld   d, b                                        ; $4edd: $50
	ld   d, d                                        ; $4ede: $52
	ld   d, d                                        ; $4edf: $52
	ld   e, c                                        ; $4ee0: $59
	rst  $38                                         ; $4ee1: $ff
	rst  $38                                         ; $4ee2: $ff
	dec  c                                           ; $4ee3: $0d
	nop                                              ; $4ee4: $00
	ld   a, [bc]                                     ; $4ee5: $0a
	ld   b, $26                                      ; $4ee6: $06 $26
	inc  bc                                          ; $4ee8: $03
	rlca                                             ; $4ee9: $07
	ld   e, b                                        ; $4eea: $58
	inc  bc                                          ; $4eeb: $03
	inc  bc                                          ; $4eec: $03
	rst  $38                                         ; $4eed: $ff
	ld   bc, $2003                                   ; $4eee: $01 $03 $20
	nop                                              ; $4ef1: $00
	ld   bc, $9876                                   ; $4ef2: $01 $76 $98
	ld   d, b                                        ; $4ef5: $50
	ld   d, [hl]                                     ; $4ef6: $56
	ld   l, b                                        ; $4ef7: $68
	inc  bc                                          ; $4ef8: $03
	add  b                                           ; $4ef9: $80
	dec  b                                           ; $4efa: $05
	db   $10                                         ; $4efb: $10
	ld   l, l                                        ; $4efc: $6d
	halt                                             ; $4efd: $76
	ld   d, d                                        ; $4efe: $52
	ld   d, h                                        ; $4eff: $54
	dec  c                                           ; $4f00: $0d
	ld   h, c                                        ; $4f01: $61
	halt                                             ; $4f02: $76
	ld   a, c                                        ; $4f03: $79
	ld   h, l                                        ; $4f04: $65
	ld   [hl], h                                     ; $4f05: $74
	ld   e, b                                        ; $4f06: $58
	ld   h, c                                        ; $4f07: $61
	ld   d, h                                        ; $4f08: $54
	rst  $38                                         ; $4f09: $ff
	rst  $38                                         ; $4f0a: $ff
	dec  c                                           ; $4f0b: $0d
	nop                                              ; $4f0c: $00
	ld   a, [bc]                                     ; $4f0d: $0a
	dec  b                                           ; $4f0e: $05
	add  b                                           ; $4f0f: $80
	ld   h, d                                        ; $4f10: $62
	ld   bc, $0001                                   ; $4f11: $01 $01 $00
	dec  b                                           ; $4f14: $05
	ld   b, b                                        ; $4f15: $40
	halt                                             ; $4f16: $76
	ld   [bc], a                                     ; $4f17: $02
	nop                                              ; $4f18: $00
	nop                                              ; $4f19: $00
	nop                                              ; $4f1a: $00
	ld   bc, $6596                                   ; $4f1b: $01 $96 $65
	sbc  [hl]                                        ; $4f1e: $9e
	ld   l, a                                        ; $4f1f: $6f
	sub  c                                           ; $4f20: $91
	and  c                                           ; $4f21: $a1
	halt                                             ; $4f22: $76
	inc  bc                                          ; $4f23: $03
	add  b                                           ; $4f24: $80
	dec  b                                           ; $4f25: $05
	db   $10                                         ; $4f26: $10
	ld   l, l                                        ; $4f27: $6d
	ld   l, h                                        ; $4f28: $6c
	dec  c                                           ; $4f29: $0d
	nop                                              ; $4f2a: $00
	ld   a, [bc]                                     ; $4f2b: $0a
	dec  b                                           ; $4f2c: $05
	add  b                                           ; $4f2d: $80
	ld   h, c                                        ; $4f2e: $61
	ld   bc, $0001                                   ; $4f2f: $01 $01 $00
	dec  b                                           ; $4f32: $05
	ld   b, b                                        ; $4f33: $40
	halt                                             ; $4f34: $76
	ld   [bc], a                                     ; $4f35: $02
	nop                                              ; $4f36: $00
	nop                                              ; $4f37: $00
	nop                                              ; $4f38: $00
	nop                                              ; $4f39: $00
	inc  e                                           ; $4f3a: $1c
	inc  b                                           ; $4f3b: $04
	ld   bc, $0201                                   ; $4f3c: $01 $01 $02
	ld   bc, $9e50                                   ; $4f3f: $01 $50 $9e
	ld   l, a                                        ; $4f42: $6f
	ld   d, d                                        ; $4f43: $52
	ld   [bc], a                                     ; $4f44: $02
	inc  de                                          ; $4f45: $13
	ld   l, a                                        ; $4f46: $6f
	sub  c                                           ; $4f47: $91
	and  c                                           ; $4f48: $a1
	ld   a, [$000d]                                  ; $4f49: $fa $0d $00
	ld   a, [bc]                                     ; $4f4c: $0a
	ld   bc, $567b                                   ; $4f4d: $01 $7b $56
	ld   a, e                                        ; $4f50: $7b
	ld   d, [hl]                                     ; $4f51: $56
	sbc  [hl]                                        ; $4f52: $9e
	ld   d, b                                        ; $4f53: $50
	ld   l, e                                        ; $4f54: $6b
	adc  d                                           ; $4f55: $8a
	ld   d, h                                        ; $4f56: $54
	sub  [hl]                                        ; $4f57: $96
	ld   sp, hl                                      ; $4f58: $f9
	dec  c                                           ; $4f59: $0d
	nop                                              ; $4f5a: $00
	ld   a, [bc]                                     ; $4f5b: $0a
	add  hl, de                                      ; $4f5c: $19
	dec  b                                           ; $4f5d: $05
	ld   [bc], a                                     ; $4f5e: $02
	ld   d, d                                        ; $4f5f: $52
	ld   d, d                                        ; $4f60: $52
	halt                                             ; $4f61: $76
	sub  b                                           ; $4f62: $90
	nop                                              ; $4f63: $00
	nop                                              ; $4f64: $00
	ld   [bc], a                                     ; $4f65: $02
	and  l                                           ; $4f66: $a5
	ld   d, d                                        ; $4f67: $52
	ld   l, e                                        ; $4f68: $6b
	ld   e, d                                        ; $4f69: $5a
	ld   h, l                                        ; $4f6a: $65
	ld   d, d                                        ; $4f6b: $52
	ld   e, c                                        ; $4f6c: $59
	sub  a                                           ; $4f6d: $97
	pop  bc                                          ; $4f6e: $c1
	db   $e3                                         ; $4f6f: $e3
	nop                                              ; $4f70: $00
	ld   bc, $d207                                   ; $4f71: $01 $07 $d2
	nop                                              ; $4f74: $00
	ld   [bc], a                                     ; $4f75: $02
	inc  bc                                          ; $4f76: $03
	ld   bc, $2000                                   ; $4f77: $01 $00 $20
	nop                                              ; $4f7a: $00
	rlca                                             ; $4f7b: $07
	ld   c, l                                        ; $4f7c: $4d
	nop                                              ; $4f7d: $00
	ld   [bc], a                                     ; $4f7e: $02
	inc  bc                                          ; $4f7f: $03
	ld   bc, $2001                                   ; $4f80: $01 $01 $20
	nop                                              ; $4f83: $00
	ld   b, $9f                                      ; $4f84: $06 $9f
	nop                                              ; $4f86: $00
	rrca                                             ; $4f87: $0f
	nop                                              ; $4f88: $00
	ld   bc, $0201                                   ; $4f89: $01 $01 $02
	and  l                                           ; $4f8c: $a5
	ld   d, d                                        ; $4f8d: $52
	ld   l, e                                        ; $4f8e: $6b
	ld   e, d                                        ; $4f8f: $5a
	ld   h, l                                        ; $4f90: $65
	ld   d, d                                        ; $4f91: $52
	ld   e, c                                        ; $4f92: $59
	sub  a                                           ; $4f93: $97
	pop  bc                                          ; $4f94: $c1
	db   $e3                                         ; $4f95: $e3
	ld   l, [hl]                                     ; $4f96: $6e
	sub  [hl]                                        ; $4f97: $96
	sbc  a                                           ; $4f98: $9f
	dec  c                                           ; $4f99: $0d
	adc  h                                           ; $4f9a: $8c
	ld   l, l                                        ; $4f9b: $6d
	ld   d, b                                        ; $4f9c: $50
	halt                                             ; $4f9d: $76
	ld   [hl], l                                     ; $4f9e: $75
	ld   a, e                                        ; $4f9f: $7b
	sbc  a                                           ; $4fa0: $9f
	dec  c                                           ; $4fa1: $0d
	nop                                              ; $4fa2: $00
	ld   a, [bc]                                     ; $4fa3: $0a
	inc  e                                           ; $4fa4: $1c
	inc  b                                           ; $4fa5: $04
	rlca                                             ; $4fa6: $07
	rlca                                             ; $4fa7: $07
	dec  e                                           ; $4fa8: $1d
	ld   b, b                                        ; $4fa9: $40
	inc  d                                           ; $4faa: $14
	inc  bc                                          ; $4fab: $03
	inc  d                                           ; $4fac: $14
	ld   bc, $2902                                   ; $4fad: $01 $02 $29
	nop                                              ; $4fb0: $00
	ld   bc, $8c72                                   ; $4fb1: $01 $72 $8c
	and  c                                           ; $4fb4: $a1
	ld   a, b                                        ; $4fb5: $78
	ei                                               ; $4fb6: $fb
	ld   d, d                                        ; $4fb7: $52
	ld   a, [$720d]                                  ; $4fb8: $fa $0d $72
	adc  h                                           ; $4fbb: $8c
	and  c                                           ; $4fbc: $a1
	ld   a, b                                        ; $4fbd: $78
	ei                                               ; $4fbe: $fb
	ld   d, d                                        ; $4fbf: $52
	ld   a, [$6f0d]                                  ; $4fc0: $fa $0d $6f
	ld   d, d                                        ; $4fc3: $52
	ld   [bc], a                                     ; $4fc4: $02
	inc  de                                          ; $4fc5: $13
	ld   l, a                                        ; $4fc6: $6f
	sub  c                                           ; $4fc7: $91
	and  c                                           ; $4fc8: $a1
	ld   a, h                                        ; $4fc9: $7c
	or   d                                           ; $4fca: $b2
	jp   nz, $0dfa                                   ; $4fcb: $c2 $fa $0d

	nop                                              ; $4fce: $00
	ld   a, [bc]                                     ; $4fcf: $0a
	dec  c                                           ; $4fd0: $0d
	nop                                              ; $4fd1: $00
	nop                                              ; $4fd2: $00
	rrca                                             ; $4fd3: $0f
	nop                                              ; $4fd4: $00
	ld   bc, $1e09                                   ; $4fd5: $01 $09 $1e
	nop                                              ; $4fd8: $00
	rrca                                             ; $4fd9: $0f
	inc  b                                           ; $4fda: $04
	ld   bc, $6e01                                   ; $4fdb: $01 $01 $6e
	ld   d, d                                        ; $4fde: $52
	ld   h, [hl]                                     ; $4fdf: $66
	sub  l                                           ; $4fe0: $95
	ld   d, h                                        ; $4fe1: $54
	add  h                                           ; $4fe2: $84
	sbc  a                                           ; $4fe3: $9f
	dec  c                                           ; $4fe4: $0d
	ld   h, a                                        ; $4fe5: $67
	ld   e, [hl]                                     ; $4fe6: $5e
	ld   e, b                                        ; $4fe7: $58
	sbc  l                                           ; $4fe8: $9d
	sbc  c                                           ; $4fe9: $99
	ld   e, c                                        ; $4fea: $59
	sub  a                                           ; $4feb: $97
	sbc  a                                           ; $4fec: $9f
	dec  c                                           ; $4fed: $0d
	nop                                              ; $4fee: $00
	ld   a, [bc]                                     ; $4fef: $0a
	rrca                                             ; $4ff0: $0f
	nop                                              ; $4ff1: $00
	ld   bc, $5201                                   ; $4ff2: $01 $01 $52
	ld   d, d                                        ; $4ff5: $52
	ld   e, a                                        ; $4ff6: $5f
	ld   [hl], a                                     ; $4ff7: $77
	rst  $38                                         ; $4ff8: $ff
	rst  $38                                         ; $4ff9: $ff
	dec  c                                           ; $4ffa: $0d
	ld   [hl], l                                     ; $4ffb: $75
	sbc  [hl]                                        ; $4ffc: $9e
	inc  b                                           ; $4ffd: $04
	ld   c, c                                        ; $4ffe: $49
	and  b                                           ; $4fff: $a0
	ld   h, a                                        ; $5000: $67
	sbc  c                                           ; $5001: $99
	and  c                                           ; $5002: $a1
	ld   l, [hl]                                     ; $5003: $6e
	ld   d, d                                        ; $5004: $52
	ld   sp, hl                                      ; $5005: $f9
	dec  c                                           ; $5006: $0d
	nop                                              ; $5007: $00
	ld   a, [bc]                                     ; $5008: $0a
	ld   b, $ea                                      ; $5009: $06 $ea
	nop                                              ; $500b: $00
	rrca                                             ; $500c: $0f
	nop                                              ; $500d: $00
	ld   bc, $5201                                   ; $500e: $01 $01 $52
	ld   d, d                                        ; $5011: $52
	halt                                             ; $5012: $76
	sub  b                                           ; $5013: $90
	sbc  a                                           ; $5014: $9f
	dec  c                                           ; $5015: $0d
	ld   [hl], l                                     ; $5016: $75
	sbc  [hl]                                        ; $5017: $9e
	inc  b                                           ; $5018: $04
	ld   c, c                                        ; $5019: $49
	and  b                                           ; $501a: $a0
	ld   h, a                                        ; $501b: $67
	sbc  c                                           ; $501c: $99
	and  c                                           ; $501d: $a1
	ld   l, [hl]                                     ; $501e: $6e
	ld   d, d                                        ; $501f: $52
	ld   sp, hl                                      ; $5020: $f9
	dec  c                                           ; $5021: $0d
	nop                                              ; $5022: $00
	ld   a, [bc]                                     ; $5023: $0a
	inc  e                                           ; $5024: $1c
	inc  b                                           ; $5025: $04
	ld   bc, $0101                                   ; $5026: $01 $01 $01
	ld   h, [hl]                                     ; $5029: $66
	sub  c                                           ; $502a: $91
	and  c                                           ; $502b: $a1
	ld   e, a                                        ; $502c: $5f
	and  c                                           ; $502d: $a1
	ret  nz                                          ; $502e: $c0

	ei                                               ; $502f: $fb
	and  l                                           ; $5030: $a5
	ldh  [c], a                                      ; $5031: $e2
	ld   a, [$000d]                                  ; $5032: $fa $0d $00
	ld   a, [bc]                                     ; $5035: $0a
	rrca                                             ; $5036: $0f
	nop                                              ; $5037: $00
	ld   bc, $6601                                   ; $5038: $01 $01 $66
	sub  c                                           ; $503b: $91
	and  c                                           ; $503c: $a1
	ld   e, a                                        ; $503d: $5f
	and  c                                           ; $503e: $a1
	ld   e, c                                        ; $503f: $59
	sbc  [hl]                                        ; $5040: $9e
	dec  c                                           ; $5041: $0d
	sub  [hl]                                        ; $5042: $96
	ld   h, l                                        ; $5043: $65
	sbc  [hl]                                        ; $5044: $9e
	adc  h                                           ; $5045: $8c
	ld   e, a                                        ; $5046: $5f
	ld   a, b                                        ; $5047: $78
	ld   d, d                                        ; $5048: $52
	ld   l, h                                        ; $5049: $6c
	ld   a, [$000d]                                  ; $504a: $fa $0d $00
	ld   a, [bc]                                     ; $504d: $0a
	inc  e                                           ; $504e: $1c
	inc  b                                           ; $504f: $04
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	ld   bc, $9166                                   ; $5052: $01 $66 $91
	sbc  [hl]                                        ; $5055: $9e
	ld   d, d                                        ; $5056: $52
	ld   e, l                                        ; $5057: $5d
	sub  [hl]                                        ; $5058: $96
	rst  $38                                         ; $5059: $ff

Jump_047_505a:
	rst  $38                                         ; $505a: $ff
	dec  c                                           ; $505b: $0d
	ld   h, [hl]                                     ; $505c: $66
	sub  c                                           ; $505d: $91
	and  c                                           ; $505e: $a1
	ld   e, a                                        ; $505f: $5f
	and  c                                           ; $5060: $a1
	adc  e                                           ; $5061: $8b
	and  c                                           ; $5062: $a1
	ld   a, [$000d]                                  ; $5063: $fa $0d $00
	ld   a, [bc]                                     ; $5066: $0a
	dec  b                                           ; $5067: $05
	ld   b, b                                        ; $5068: $40
	rst  $38                                         ; $5069: $ff
	ld   bc, $0005                                   ; $506a: $01 $05 $00
	rrca                                             ; $506d: $0f
	nop                                              ; $506e: $00
	ld   bc, $0101                                   ; $506f: $01 $01 $01
	inc  bc                                          ; $5072: $03
	and  e                                           ; $5073: $a3
	and  l                                           ; $5074: $a5
	db   $ec                                         ; $5075: $ec
	cp   d                                           ; $5076: $ba
	ld   a, l                                        ; $5077: $7d
	rst  $38                                         ; $5078: $ff
	rst  $38                                         ; $5079: $ff
	jp   nc, Jump_047_6efb                           ; $507a: $d2 $fb $6e

	ld   bc, $0d04                                   ; $507d: $01 $04 $0d
	nop                                              ; $5080: $00
	ld   a, [bc]                                     ; $5081: $0a
	add  hl, de                                      ; $5082: $19
	dec  b                                           ; $5083: $05
	inc  bc                                          ; $5084: $03
	or   c                                           ; $5085: $b1
	ei                                               ; $5086: $fb
	and  b                                           ; $5087: $a0
	inc  bc                                          ; $5088: $03
	add  b                                           ; $5089: $80
	ld   h, a                                        ; $508a: $67
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	jp   nz, $aee9                                   ; $508d: $c2 $e9 $ae

	and  b                                           ; $5090: $a0
	inc  bc                                          ; $5091: $03
	add  b                                           ; $5092: $80
	ld   h, a                                        ; $5093: $67
	nop                                              ; $5094: $00
	ld   bc, $fbd2                                   ; $5095: $01 $d2 $fb
	and  b                                           ; $5098: $a0
	inc  bc                                          ; $5099: $03
	add  b                                           ; $509a: $80
	ld   h, a                                        ; $509b: $67
	nop                                              ; $509c: $00
	ld   [bc], a                                     ; $509d: $02
	rlca                                             ; $509e: $07
	add  d                                           ; $509f: $82
	ld   bc, $0302                                   ; $50a0: $01 $02 $03
	ld   bc, $2000                                   ; $50a3: $01 $00 $20
	nop                                              ; $50a6: $00
	rlca                                             ; $50a7: $07
	xor  a                                           ; $50a8: $af
	ld   bc, $0302                                   ; $50a9: $01 $02 $03
	ld   bc, $2001                                   ; $50ac: $01 $01 $20
	nop                                              ; $50af: $00
	rlca                                             ; $50b0: $07
	reti                                             ; $50b1: $d9


	ld   bc, $0302                                   ; $50b2: $01 $02 $03
	ld   bc, $2002                                   ; $50b5: $01 $02 $20
	nop                                              ; $50b8: $00
	ld   b, $01                                      ; $50b9: $06 $01
	ld   [bc], a                                     ; $50bb: $02
	rrca                                             ; $50bc: $0f
	nop                                              ; $50bd: $00
	ld   bc, $b101                                   ; $50be: $01 $01 $b1
	ei                                               ; $50c1: $fb
	ld   l, [hl]                                     ; $50c2: $6e
	ld   a, [$000d]                                  ; $50c3: $fa $0d $00
	ld   a, [bc]                                     ; $50c6: $0a
	inc  e                                           ; $50c7: $1c
	inc  b                                           ; $50c8: $04
	ld   bc, $0101                                   ; $50c9: $01 $01 $01
	sbc  l                                           ; $50cc: $9d
	ei                                               ; $50cd: $fb
	ld   d, d                                        ; $50ce: $52
	ld   a, [$a30d]                                  ; $50cf: $fa $0d $a3
	and  l                                           ; $50d2: $a5
	db   $ec                                         ; $50d3: $ec
	cp   d                                           ; $50d4: $ba
	ld   a, h                                        ; $50d5: $7c
	ld   e, c                                        ; $50d6: $59
	ld   l, a                                        ; $50d7: $6f
	ei                                               ; $50d8: $fb
	ld   a, [$000d]                                  ; $50d9: $fa $0d $00
	ld   a, [bc]                                     ; $50dc: $0a
	dec  b                                           ; $50dd: $05
	ld   b, b                                        ; $50de: $40
	rst  $38                                         ; $50df: $ff
	inc  bc                                          ; $50e0: $03
	rst  $38                                         ; $50e1: $ff
	ld   bc, $2801                                   ; $50e2: $01 $01 $28
	nop                                              ; $50e5: $00
	ld   b, $4b                                      ; $50e6: $06 $4b
	ld   [bc], a                                     ; $50e8: $02
	rrca                                             ; $50e9: $0f
	nop                                              ; $50ea: $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $50eb: $01 $01 $c2
	jp   hl                                          ; $50ee: $e9


	xor  [hl]                                        ; $50ef: $ae
	ld   l, [hl]                                     ; $50f0: $6e
	ld   a, [$000d]                                  ; $50f1: $fa $0d $00
	ld   a, [bc]                                     ; $50f4: $0a
	dec  b                                           ; $50f5: $05
	ld   b, b                                        ; $50f6: $40
	rst  $38                                         ; $50f7: $ff
	inc  bc                                          ; $50f8: $03
	rst  $38                                         ; $50f9: $ff
	ld   bc, $2901                                   ; $50fa: $01 $01 $29
	nop                                              ; $50fd: $00
	inc  e                                           ; $50fe: $1c
	inc  b                                           ; $50ff: $04
	ld   b, $06                                      ; $5100: $06 $06
	ld   bc, $9e50                                   ; $5102: $01 $50 $9e
	adc  h                                           ; $5105: $8c
	ld   e, a                                        ; $5106: $5f
	ld   l, a                                        ; $5107: $6f
	sub  c                                           ; $5108: $91
	ld   [hl], c                                     ; $5109: $71
	ld   l, l                                        ; $510a: $6d
	rst  $38                                         ; $510b: $ff
	rst  $38                                         ; $510c: $ff
	dec  c                                           ; $510d: $0d
	nop                                              ; $510e: $00
	ld   a, [bc]                                     ; $510f: $0a
	ld   b, $4b                                      ; $5110: $06 $4b
	ld   [bc], a                                     ; $5112: $02
	rrca                                             ; $5113: $0f
	nop                                              ; $5114: $00
	ld   bc, $d201                                   ; $5115: $01 $01 $d2
	ei                                               ; $5118: $fb
	ld   l, [hl]                                     ; $5119: $6e
	ld   a, [$000d]                                  ; $511a: $fa $0d $00
	ld   a, [bc]                                     ; $511d: $0a
	rrca                                             ; $511e: $0f
	inc  b                                           ; $511f: $04
	nop                                              ; $5120: $00
	ld   bc, $9e50                                   ; $5121: $01 $50 $9e
	ld   d, b                                        ; $5124: $50
	ld   d, d                                        ; $5125: $52
	ld   h, c                                        ; $5126: $61
	ld   l, [hl]                                     ; $5127: $6e
	rst  $38                                         ; $5128: $ff
	rst  $38                                         ; $5129: $ff
	dec  c                                           ; $512a: $0d
	ld   h, [hl]                                     ; $512b: $66
	sub  c                                           ; $512c: $91
	sbc  [hl]                                        ; $512d: $9e
	ld   d, b                                        ; $512e: $50
	ld   d, d                                        ; $512f: $52
	ld   h, c                                        ; $5130: $61
	ld   [hl], l                                     ; $5131: $75
	ld   h, l                                        ; $5132: $65
	sub  l                                           ; $5133: $95
	ld   a, [$000d]                                  ; $5134: $fa $0d $00
	ld   a, [bc]                                     ; $5137: $0a
	ld   b, $68                                      ; $5138: $06 $68
	ld   [bc], a                                     ; $513a: $02
	inc  e                                           ; $513b: $1c
	inc  b                                           ; $513c: $04
	ld   [bc], a                                     ; $513d: $02
	ld   [bc], a                                     ; $513e: $02
	dec  e                                           ; $513f: $1d
	ld   b, b                                        ; $5140: $40
	inc  d                                           ; $5141: $14
	inc  bc                                          ; $5142: $03
	inc  d                                           ; $5143: $14
	ld   bc, $2903                                   ; $5144: $01 $03 $29
	nop                                              ; $5147: $00
	ld   bc, $526f                                   ; $5148: $01 $6f $52
	ld   [bc], a                                     ; $514b: $02
	inc  de                                          ; $514c: $13
	ld   l, a                                        ; $514d: $6f
	sub  c                                           ; $514e: $91
	and  c                                           ; $514f: $a1
	sbc  [hl]                                        ; $5150: $9e
	cp   e                                           ; $5151: $bb
	db   $ed                                         ; $5152: $ed
	and  l                                           ; $5153: $a5
	ld   a, [$500d]                                  ; $5154: $fa $0d $50
	halt                                             ; $5157: $76
	ld   l, [hl]                                     ; $5158: $6e
	ld   h, l                                        ; $5159: $65
	ld   h, l                                        ; $515a: $65
	ld   l, l                                        ; $515b: $6d
	ei                                               ; $515c: $fb
	ld   a, [$000d]                                  ; $515d: $fa $0d $00
	ld   a, [bc]                                     ; $5160: $0a
	ld   bc, $5490                                   ; $5161: $01 $90 $54
	sbc  [hl]                                        ; $5164: $9e
	ld   l, a                                        ; $5165: $6f
	ld   d, d                                        ; $5166: $52
	ld   [bc], a                                     ; $5167: $02
	inc  de                                          ; $5168: $13
	ld   l, a                                        ; $5169: $6f
	sub  c                                           ; $516a: $91
	and  c                                           ; $516b: $a1
	halt                                             ; $516c: $76
	ld   a, l                                        ; $516d: $7d
	dec  c                                           ; $516e: $0d
	sub  d                                           ; $516f: $92
	and  c                                           ; $5170: $a1
	ld   a, b                                        ; $5171: $78
	ld   d, d                                        ; $5172: $52
	ld   a, [$d60d]                                  ; $5173: $fa $0d $d6
	push af                                          ; $5176: $f5
	ld   l, [hl]                                     ; $5177: $6e
	ld   a, [$000d]                                  ; $5178: $fa $0d $00
	ld   a, [bc]                                     ; $517b: $0a
	dec  c                                           ; $517c: $0d
	nop                                              ; $517d: $00
	nop                                              ; $517e: $00
	rrca                                             ; $517f: $0f
	nop                                              ; $5180: $00
	ld   bc, $1e09                                   ; $5181: $01 $09 $1e
	nop                                              ; $5184: $00
	inc  e                                           ; $5185: $1c
	inc  b                                           ; $5186: $04
	nop                                              ; $5187: $00
	nop                                              ; $5188: $00
	ld   bc, $9166                                   ; $5189: $01 $66 $91
	sbc  [hl]                                        ; $518c: $9e
	ld   a, c                                        ; $518d: $79
	ld   e, c                                        ; $518e: $59
	ld   d, d                                        ; $518f: $52
	adc  a                                           ; $5190: $8f
	ld   d, d                                        ; $5191: $52
	ld   e, l                                        ; $5192: $5d
	sub  [hl]                                        ; $5193: $96
	rst  $38                                         ; $5194: $ff
	rst  $38                                         ; $5195: $ff
	dec  c                                           ; $5196: $0d
	ld   h, [hl]                                     ; $5197: $66
	sub  c                                           ; $5198: $91
	and  c                                           ; $5199: $a1
	ld   e, a                                        ; $519a: $5f
	and  c                                           ; $519b: $a1
	adc  e                                           ; $519c: $8b
	and  c                                           ; $519d: $a1
	ld   a, [$000d]                                  ; $519e: $fa $0d $00
	ld   a, [bc]                                     ; $51a1: $0a
	rrca                                             ; $51a2: $0f
	nop                                              ; $51a3: $00
	ld   bc, $0101                                   ; $51a4: $01 $01 $01
	inc  bc                                          ; $51a7: $03
	and  e                                           ; $51a8: $a3
	and  l                                           ; $51a9: $a5
	db   $ec                                         ; $51aa: $ec
	cp   d                                           ; $51ab: $ba
	ld   a, l                                        ; $51ac: $7d
	rst  $38                                         ; $51ad: $ff
	rst  $38                                         ; $51ae: $ff
	or   c                                           ; $51af: $b1
	ei                                               ; $51b0: $fb
	ld   l, [hl]                                     ; $51b1: $6e
	ld   bc, $0d04                                   ; $51b2: $01 $04 $0d
	nop                                              ; $51b5: $00
	ld   a, [bc]                                     ; $51b6: $0a
	add  hl, de                                      ; $51b7: $19
	dec  b                                           ; $51b8: $05
	inc  bc                                          ; $51b9: $03
	jp   nz, $aee9                                   ; $51ba: $c2 $e9 $ae

	and  b                                           ; $51bd: $a0
	inc  bc                                          ; $51be: $03
	add  b                                           ; $51bf: $80
	ld   h, a                                        ; $51c0: $67
	nop                                              ; $51c1: $00
	nop                                              ; $51c2: $00
	jp   nc, $a0fb                                   ; $51c3: $d2 $fb $a0

	inc  bc                                          ; $51c6: $03
	add  b                                           ; $51c7: $80
	ld   h, a                                        ; $51c8: $67
	nop                                              ; $51c9: $00
	ld   bc, $fbb1                                   ; $51ca: $01 $b1 $fb
	and  b                                           ; $51cd: $a0
	inc  bc                                          ; $51ce: $03
	add  b                                           ; $51cf: $80
	ld   h, a                                        ; $51d0: $67
	nop                                              ; $51d1: $00
	ld   [bc], a                                     ; $51d2: $02
	rlca                                             ; $51d3: $07
	or   a                                           ; $51d4: $b7
	ld   [bc], a                                     ; $51d5: $02
	ld   [bc], a                                     ; $51d6: $02
	inc  bc                                          ; $51d7: $03
	ld   bc, $2000                                   ; $51d8: $01 $00 $20
	nop                                              ; $51db: $00
	rlca                                             ; $51dc: $07
	push hl                                          ; $51dd: $e5
	ld   [bc], a                                     ; $51de: $02
	ld   [bc], a                                     ; $51df: $02
	inc  bc                                          ; $51e0: $03
	ld   bc, $2001                                   ; $51e1: $01 $01 $20
	nop                                              ; $51e4: $00
	rlca                                             ; $51e5: $07
	ld   c, $03                                      ; $51e6: $0e $03
	ld   [bc], a                                     ; $51e8: $02
	inc  bc                                          ; $51e9: $03
	ld   bc, $2002                                   ; $51ea: $01 $02 $20
	nop                                              ; $51ed: $00
	ld   b, $01                                      ; $51ee: $06 $01
	ld   [bc], a                                     ; $51f0: $02
	rrca                                             ; $51f1: $0f
	nop                                              ; $51f2: $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $51f3: $01 $01 $c2
	jp   hl                                          ; $51f6: $e9


	xor  [hl]                                        ; $51f7: $ae
	ld   l, [hl]                                     ; $51f8: $6e
	ld   a, [$000d]                                  ; $51f9: $fa $0d $00
	ld   a, [bc]                                     ; $51fc: $0a
	inc  e                                           ; $51fd: $1c
	inc  b                                           ; $51fe: $04
	ld   bc, $0101                                   ; $51ff: $01 $01 $01
	sbc  l                                           ; $5202: $9d
	ei                                               ; $5203: $fb
	ld   d, d                                        ; $5204: $52
	ld   a, [$a30d]                                  ; $5205: $fa $0d $a3
	and  l                                           ; $5208: $a5
	db   $ec                                         ; $5209: $ec
	cp   d                                           ; $520a: $ba
	ld   a, h                                        ; $520b: $7c
	ld   e, c                                        ; $520c: $59
	ld   l, a                                        ; $520d: $6f
	ei                                               ; $520e: $fb
	ld   a, [$000d]                                  ; $520f: $fa $0d $00
	ld   a, [bc]                                     ; $5212: $0a
	dec  b                                           ; $5213: $05
	ld   b, b                                        ; $5214: $40
	rst  $38                                         ; $5215: $ff
	inc  bc                                          ; $5216: $03
	rst  $38                                         ; $5217: $ff
	ld   bc, $2801                                   ; $5218: $01 $01 $28
	nop                                              ; $521b: $00
	ld   b, $37                                      ; $521c: $06 $37
	inc  bc                                          ; $521e: $03
	rrca                                             ; $521f: $0f
	nop                                              ; $5220: $00
	ld   bc, $d201                                   ; $5221: $01 $01 $d2
	ei                                               ; $5224: $fb
	ld   l, [hl]                                     ; $5225: $6e
	ld   a, [$000d]                                  ; $5226: $fa $0d $00
	ld   a, [bc]                                     ; $5229: $0a
	dec  b                                           ; $522a: $05
	ld   b, b                                        ; $522b: $40
	rst  $38                                         ; $522c: $ff
	inc  bc                                          ; $522d: $03
	rst  $38                                         ; $522e: $ff
	ld   bc, $2901                                   ; $522f: $01 $01 $29
	nop                                              ; $5232: $00
	inc  e                                           ; $5233: $1c
	inc  b                                           ; $5234: $04
	ld   b, $06                                      ; $5235: $06 $06
	ld   bc, $9e50                                   ; $5237: $01 $50 $9e
	adc  h                                           ; $523a: $8c
	ld   e, a                                        ; $523b: $5f
	ld   l, a                                        ; $523c: $6f
	sub  c                                           ; $523d: $91
	ld   [hl], c                                     ; $523e: $71
	ld   l, l                                        ; $523f: $6d
	rst  $38                                         ; $5240: $ff
	rst  $38                                         ; $5241: $ff
	dec  c                                           ; $5242: $0d
	nop                                              ; $5243: $00
	ld   a, [bc]                                     ; $5244: $0a
	ld   b, $37                                      ; $5245: $06 $37
	inc  bc                                          ; $5247: $03
	rrca                                             ; $5248: $0f
	nop                                              ; $5249: $00
	ld   bc, $b101                                   ; $524a: $01 $01 $b1
	ei                                               ; $524d: $fb
	ld   l, [hl]                                     ; $524e: $6e
	ld   a, [$000d]                                  ; $524f: $fa $0d $00
	ld   a, [bc]                                     ; $5252: $0a
	inc  e                                           ; $5253: $1c
	inc  b                                           ; $5254: $04
	nop                                              ; $5255: $00
	nop                                              ; $5256: $00
	ld   bc, $9e50                                   ; $5257: $01 $50 $9e
	ld   d, b                                        ; $525a: $50
	ld   d, d                                        ; $525b: $52
	ld   h, c                                        ; $525c: $61
	ld   l, [hl]                                     ; $525d: $6e
	rst  $38                                         ; $525e: $ff
	rst  $38                                         ; $525f: $ff
	dec  c                                           ; $5260: $0d
	ld   h, [hl]                                     ; $5261: $66
	sub  c                                           ; $5262: $91
	sbc  [hl]                                        ; $5263: $9e
	ld   d, b                                        ; $5264: $50
	ld   d, d                                        ; $5265: $52
	ld   h, c                                        ; $5266: $61
	ld   [hl], l                                     ; $5267: $75
	ld   h, l                                        ; $5268: $65
	sub  l                                           ; $5269: $95
	ld   a, [$000d]                                  ; $526a: $fa $0d $00
	ld   a, [bc]                                     ; $526d: $0a
	ld   b, $55                                      ; $526e: $06 $55
	inc  bc                                          ; $5270: $03
	inc  e                                           ; $5271: $1c
	inc  b                                           ; $5272: $04
	nop                                              ; $5273: $00
	nop                                              ; $5274: $00
	ld   bc, $9166                                   ; $5275: $01 $66 $91
	sbc  [hl]                                        ; $5278: $9e
	ld   h, e                                        ; $5279: $63
	and  c                                           ; $527a: $a1
	ld   e, c                                        ; $527b: $59
	ld   d, d                                        ; $527c: $52
	adc  a                                           ; $527d: $8f
	ld   d, d                                        ; $527e: $52
	ld   e, l                                        ; $527f: $5d
	sub  [hl]                                        ; $5280: $96
	rst  $38                                         ; $5281: $ff
	rst  $38                                         ; $5282: $ff
	dec  c                                           ; $5283: $0d
	ld   h, [hl]                                     ; $5284: $66
	sub  c                                           ; $5285: $91
	and  c                                           ; $5286: $a1
	ld   e, a                                        ; $5287: $5f
	and  c                                           ; $5288: $a1
	adc  e                                           ; $5289: $8b
	and  c                                           ; $528a: $a1
	ld   a, [$000d]                                  ; $528b: $fa $0d $00
	ld   a, [bc]                                     ; $528e: $0a
	rrca                                             ; $528f: $0f
	nop                                              ; $5290: $00
	ld   bc, $0101                                   ; $5291: $01 $01 $01
	inc  bc                                          ; $5294: $03
	and  e                                           ; $5295: $a3
	and  l                                           ; $5296: $a5
	db   $ec                                         ; $5297: $ec
	cp   d                                           ; $5298: $ba
	ld   a, l                                        ; $5299: $7d
	rst  $38                                         ; $529a: $ff
	rst  $38                                         ; $529b: $ff
	or   c                                           ; $529c: $b1
	ei                                               ; $529d: $fb
	ld   l, [hl]                                     ; $529e: $6e
	ld   bc, $0d04                                   ; $529f: $01 $04 $0d
	nop                                              ; $52a2: $00
	ld   a, [bc]                                     ; $52a3: $0a
	add  hl, de                                      ; $52a4: $19
	dec  b                                           ; $52a5: $05
	ld   [bc], a                                     ; $52a6: $02
	jp   nz, $aee9                                   ; $52a7: $c2 $e9 $ae

	and  b                                           ; $52aa: $a0
	inc  bc                                          ; $52ab: $03
	add  b                                           ; $52ac: $80
	ld   h, a                                        ; $52ad: $67
	nop                                              ; $52ae: $00
	nop                                              ; $52af: $00
	jp   nc, $a0fb                                   ; $52b0: $d2 $fb $a0

	inc  bc                                          ; $52b3: $03
	add  b                                           ; $52b4: $80
	ld   h, a                                        ; $52b5: $67
	nop                                              ; $52b6: $00
	ld   bc, $9307                                   ; $52b7: $01 $07 $93
	inc  bc                                          ; $52ba: $03
	ld   [bc], a                                     ; $52bb: $02
	inc  bc                                          ; $52bc: $03
	ld   bc, $2000                                   ; $52bd: $01 $00 $20
	nop                                              ; $52c0: $00
	rlca                                             ; $52c1: $07
	pop  bc                                          ; $52c2: $c1
	inc  bc                                          ; $52c3: $03
	ld   [bc], a                                     ; $52c4: $02
	inc  bc                                          ; $52c5: $03
	ld   bc, $2001                                   ; $52c6: $01 $01 $20
	nop                                              ; $52c9: $00
	ld   b, $01                                      ; $52ca: $06 $01
	ld   [bc], a                                     ; $52cc: $02
	rrca                                             ; $52cd: $0f
	nop                                              ; $52ce: $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $52cf: $01 $01 $c2
	jp   hl                                          ; $52d2: $e9


	xor  [hl]                                        ; $52d3: $ae
	ld   l, [hl]                                     ; $52d4: $6e
	ld   a, [$000d]                                  ; $52d5: $fa $0d $00
	ld   a, [bc]                                     ; $52d8: $0a
	inc  e                                           ; $52d9: $1c
	inc  b                                           ; $52da: $04
	ld   bc, $0101                                   ; $52db: $01 $01 $01
	sbc  l                                           ; $52de: $9d
	ei                                               ; $52df: $fb
	ld   d, d                                        ; $52e0: $52
	ld   a, [$a30d]                                  ; $52e1: $fa $0d $a3
	and  l                                           ; $52e4: $a5
	db   $ec                                         ; $52e5: $ec
	cp   d                                           ; $52e6: $ba
	ld   a, h                                        ; $52e7: $7c
	ld   e, c                                        ; $52e8: $59
	ld   l, a                                        ; $52e9: $6f
	ei                                               ; $52ea: $fb
	ld   a, [$000d]                                  ; $52eb: $fa $0d $00
	ld   a, [bc]                                     ; $52ee: $0a
	dec  b                                           ; $52ef: $05
	ld   b, b                                        ; $52f0: $40
	rst  $38                                         ; $52f1: $ff
	inc  bc                                          ; $52f2: $03
	rst  $38                                         ; $52f3: $ff
	ld   bc, $2801                                   ; $52f4: $01 $01 $28
	nop                                              ; $52f7: $00
	ld   b, $ea                                      ; $52f8: $06 $ea
	inc  bc                                          ; $52fa: $03
	rrca                                             ; $52fb: $0f
	nop                                              ; $52fc: $00
	ld   bc, $d201                                   ; $52fd: $01 $01 $d2
	ei                                               ; $5300: $fb
	ld   l, [hl]                                     ; $5301: $6e
	ld   a, [$000d]                                  ; $5302: $fa $0d $00
	ld   a, [bc]                                     ; $5305: $0a
	dec  b                                           ; $5306: $05
	ld   b, b                                        ; $5307: $40
	rst  $38                                         ; $5308: $ff
	inc  bc                                          ; $5309: $03
	rst  $38                                         ; $530a: $ff
	ld   bc, $2901                                   ; $530b: $01 $01 $29
	nop                                              ; $530e: $00
	inc  e                                           ; $530f: $1c
	inc  b                                           ; $5310: $04
	ld   b, $06                                      ; $5311: $06 $06
	ld   bc, $9e50                                   ; $5313: $01 $50 $9e
	adc  h                                           ; $5316: $8c
	ld   e, a                                        ; $5317: $5f
	ld   l, a                                        ; $5318: $6f
	sub  c                                           ; $5319: $91
	ld   [hl], c                                     ; $531a: $71
	ld   l, l                                        ; $531b: $6d
	rst  $38                                         ; $531c: $ff
	rst  $38                                         ; $531d: $ff
	dec  c                                           ; $531e: $0d
	nop                                              ; $531f: $00
	ld   a, [bc]                                     ; $5320: $0a
	ld   b, $ea                                      ; $5321: $06 $ea
	inc  bc                                          ; $5323: $03
	rrca                                             ; $5324: $0f
	nop                                              ; $5325: $00
	ld   bc, $0101                                   ; $5326: $01 $01 $01
	inc  bc                                          ; $5329: $03
	add  e                                           ; $532a: $83
	ld   d, h                                        ; $532b: $54
	rst  $38                                         ; $532c: $ff
	rst  $38                                         ; $532d: $ff
	ld   h, c                                        ; $532e: $61
	and  c                                           ; $532f: $a1
	ld   a, b                                        ; $5330: $78
	sub  b                                           ; $5331: $90
	and  c                                           ; $5332: $a1
	ld   l, [hl]                                     ; $5333: $6e
	sbc  e                                           ; $5334: $9b
	ld   d, h                                        ; $5335: $54
	ld   bc, $0d04                                   ; $5336: $01 $04 $0d
	nop                                              ; $5339: $00
	ld   a, [bc]                                     ; $533a: $0a
	rlca                                             ; $533b: $07
	sbc  l                                           ; $533c: $9d
	inc  b                                           ; $533d: $04
	inc  bc                                          ; $533e: $03
	rst  $38                                         ; $533f: $ff
	ld   bc, $2005                                   ; $5340: $01 $05 $20
	nop                                              ; $5343: $00
	rlca                                             ; $5344: $07
	ld   h, h                                        ; $5345: $64
	inc  b                                           ; $5346: $04
	inc  bc                                          ; $5347: $03
	rst  $38                                         ; $5348: $ff
	ld   bc, $2506                                   ; $5349: $01 $06 $25
	nop                                              ; $534c: $00
	inc  e                                           ; $534d: $1c
	inc  b                                           ; $534e: $04
	rlca                                             ; $534f: $07
	rlca                                             ; $5350: $07
	dec  e                                           ; $5351: $1d
	ld   b, b                                        ; $5352: $40
	inc  d                                           ; $5353: $14
	inc  bc                                          ; $5354: $03
	inc  d                                           ; $5355: $14
	ld   bc, $2903                                   ; $5356: $01 $03 $29
	nop                                              ; $5359: $00
	ld   bc, $526f                                   ; $535a: $01 $6f $52
	ld   [bc], a                                     ; $535d: $02
	inc  de                                          ; $535e: $13
	ld   l, a                                        ; $535f: $6f
	sub  c                                           ; $5360: $91
	and  c                                           ; $5361: $a1
	cp   e                                           ; $5362: $bb
	db   $ed                                         ; $5363: $ed
	and  l                                           ; $5364: $a5
	db   $fc                                         ; $5365: $fc
	rst  $38                                         ; $5366: $ff
	rst  $38                                         ; $5367: $ff
	dec  c                                           ; $5368: $0d
	ld   d, b                                        ; $5369: $50
	halt                                             ; $536a: $76
	ld   l, [hl]                                     ; $536b: $6e
	ld   h, l                                        ; $536c: $65
	ld   l, [hl]                                     ; $536d: $6e
	sub  b                                           ; $536e: $90
	and  c                                           ; $536f: $a1
	ld   a, [$bb0d]                                  ; $5370: $fa $0d $bb
	db   $ed                                         ; $5373: $ed
	and  l                                           ; $5374: $a5
	ld   a, [$bb10]                                  ; $5375: $fa $10 $bb
	db   $ed                                         ; $5378: $ed
	and  l                                           ; $5379: $a5
	ld   a, [$000d]                                  ; $537a: $fa $0d $00
	ld   a, [bc]                                     ; $537d: $0a
	inc  e                                           ; $537e: $1c
	inc  b                                           ; $537f: $04
	inc  b                                           ; $5380: $04
	inc  b                                           ; $5381: $04
	ld   bc, $bab1                                   ; $5382: $01 $b1 $ba
	push af                                          ; $5385: $f5
	rst  $38                                         ; $5386: $ff
	rst  $38                                         ; $5387: $ff
	dec  c                                           ; $5388: $0d
	and  e                                           ; $5389: $a3
	and  l                                           ; $538a: $a5
	db   $ec                                         ; $538b: $ec
	cp   d                                           ; $538c: $ba
	ld   h, [hl]                                     ; $538d: $66
	sub  c                                           ; $538e: $91
	and  c                                           ; $538f: $a1
	ld   e, a                                        ; $5390: $5f
	and  c                                           ; $5391: $a1
	dec  c                                           ; $5392: $0d
	ld   [hl], d                                     ; $5393: $72
	sub  [hl]                                        ; $5394: $96
	ld   d, d                                        ; $5395: $52
	ld   a, h                                        ; $5396: $7c
	ld   a, c                                        ; $5397: $79
	rst  $38                                         ; $5398: $ff
	rst  $38                                         ; $5399: $ff
	dec  c                                           ; $539a: $0d
	nop                                              ; $539b: $00
	ld   a, [bc]                                     ; $539c: $0a
	nop                                              ; $539d: $00
	inc  e                                           ; $539e: $1c
	inc  b                                           ; $539f: $04
	ld   bc, $1d01                                   ; $53a0: $01 $01 $1d
	ld   b, b                                        ; $53a3: $40
	inc  d                                           ; $53a4: $14
	inc  bc                                          ; $53a5: $03
	inc  d                                           ; $53a6: $14
	ld   bc, $2803                                   ; $53a7: $01 $03 $28
	nop                                              ; $53aa: $00
	ld   bc, $fb9d                                   ; $53ab: $01 $9d $fb
	ld   d, d                                        ; $53ae: $52
	sbc  [hl]                                        ; $53af: $9e
	sbc  l                                           ; $53b0: $9d
	ei                                               ; $53b1: $fb
	ld   d, d                                        ; $53b2: $52
	ld   a, [$a30d]                                  ; $53b3: $fa $0d $a3
	and  l                                           ; $53b6: $a5
	db   $ec                                         ; $53b7: $ec
	cp   d                                           ; $53b8: $ba
	ld   a, h                                        ; $53b9: $7c
	ld   e, c                                        ; $53ba: $59
	ld   l, a                                        ; $53bb: $6f
	ei                                               ; $53bc: $fb
	ld   a, [$000d]                                  ; $53bd: $fa $0d $00
	ld   a, [bc]                                     ; $53c0: $0a
	ld   bc, $7156                                   ; $53c1: $01 $56 $71
	add  [hl]                                        ; $53c4: $86
	and  c                                           ; $53c5: $a1
	ld   a, [$a30d]                                  ; $53c6: $fa $0d $a3
	and  l                                           ; $53c9: $a5
	db   $ec                                         ; $53ca: $ec
	cp   d                                           ; $53cb: $ba
	ld   h, a                                        ; $53cc: $67
	ld   h, d                                        ; $53cd: $62
	ld   d, d                                        ; $53ce: $52
	ld   [hl], l                                     ; $53cf: $75
	ld   h, l                                        ; $53d0: $65
	sub  l                                           ; $53d1: $95
	ld   sp, hl                                      ; $53d2: $f9
	dec  c                                           ; $53d3: $0d
	nop                                              ; $53d4: $00
	ld   a, [bc]                                     ; $53d5: $0a
	nop                                              ; $53d6: $00
	inc  e                                           ; $53d7: $1c
	inc  b                                           ; $53d8: $04
	nop                                              ; $53d9: $00
	nop                                              ; $53da: $00
	ld   bc, $5058                                   ; $53db: $01 $58 $50
	ld   d, d                                        ; $53de: $52
	ld   h, c                                        ; $53df: $61
	ld   l, [hl]                                     ; $53e0: $6e
	ld   a, e                                        ; $53e1: $7b
	sbc  [hl]                                        ; $53e2: $9e
	dec  c                                           ; $53e3: $0d
	ld   l, a                                        ; $53e4: $6f
	ld   d, d                                        ; $53e5: $52
	ld   [bc], a                                     ; $53e6: $02
	inc  de                                          ; $53e7: $13
	ld   l, a                                        ; $53e8: $6f
	sub  c                                           ; $53e9: $91
	and  c                                           ; $53ea: $a1
	sbc  a                                           ; $53eb: $9f
	dec  c                                           ; $53ec: $0d
	nop                                              ; $53ed: $00
	ld   a, [bc]                                     ; $53ee: $0a
	dec  e                                           ; $53ef: $1d
	ld   b, b                                        ; $53f0: $40
	inc  d                                           ; $53f1: $14
	inc  bc                                          ; $53f2: $03
	inc  d                                           ; $53f3: $14
	ld   bc, $2801                                   ; $53f4: $01 $01 $28
	nop                                              ; $53f7: $00
	ld   bc, $9075                                   ; $53f8: $01 $75 $90
	sbc  [hl]                                        ; $53fb: $9e
	ld   e, b                                        ; $53fc: $58
	sub  b                                           ; $53fd: $90
	ld   h, l                                        ; $53fe: $65
	sbc  e                                           ; $53ff: $9b
	ld   e, c                                        ; $5400: $59
	ld   [hl], c                                     ; $5401: $71
	ld   l, l                                        ; $5402: $6d
	sbc  a                                           ; $5403: $9f
	dec  c                                           ; $5404: $0d
	ld   d, b                                        ; $5405: $50
	sbc  b                                           ; $5406: $98
	ld   e, d                                        ; $5407: $5a
	halt                                             ; $5408: $76
	ld   d, h                                        ; $5409: $54
	sbc  [hl]                                        ; $540a: $9e
	ld   l, a                                        ; $540b: $6f
	ld   d, d                                        ; $540c: $52
	ld   [bc], a                                     ; $540d: $02
	inc  de                                          ; $540e: $13
	ld   l, a                                        ; $540f: $6f
	sub  c                                           ; $5410: $91
	and  c                                           ; $5411: $a1
	sbc  a                                           ; $5412: $9f
	dec  c                                           ; $5413: $0d
	nop                                              ; $5414: $00
	ld   a, [bc]                                     ; $5415: $0a
	nop                                              ; $5416: $00
	nop                                              ; $5417: $00
	rrca                                             ; $5418: $0f
	nop                                              ; $5419: $00
	ld   bc, $050d                                   ; $541a: $01 $0d $05
	nop                                              ; $541d: $00
	ld   [bc], a                                     ; $541e: $02
	ld   bc, $cf02                                   ; $541f: $01 $02 $cf
	dec  b                                           ; $5422: $05
	ld   a, [de]                                     ; $5423: $1a
	ld   h, e                                        ; $5424: $63
	and  c                                           ; $5425: $a1
	sbc  a                                           ; $5426: $9f
	dec  c                                           ; $5427: $0d
	ld   l, a                                        ; $5428: $6f
	sub  l                                           ; $5429: $95
	ld   [hl], c                                     ; $542a: $71
	halt                                             ; $542b: $76
	ld   d, d                                        ; $542c: $52
	ld   d, d                                        ; $542d: $52
	ld   [hl], l                                     ; $542e: $75
	ld   h, a                                        ; $542f: $67
	ld   e, c                                        ; $5430: $59
	ld   sp, hl                                      ; $5431: $f9
	dec  c                                           ; $5432: $0d
	nop                                              ; $5433: $00
	ld   a, [bc]                                     ; $5434: $0a
	rrca                                             ; $5435: $0f
	dec  b                                           ; $5436: $05
	nop                                              ; $5437: $00
	ld   bc, $f9a1                                   ; $5438: $01 $a1 $f9
	db   $10                                         ; $543b: $10
	ld   a, b                                        ; $543c: $78
	and  c                                           ; $543d: $a1
	sub  d                                           ; $543e: $92
	ld   sp, hl                                      ; $543f: $f9
	dec  c                                           ; $5440: $0d
	nop                                              ; $5441: $00
	ld   a, [bc]                                     ; $5442: $0a
	rrca                                             ; $5443: $0f
	nop                                              ; $5444: $00
	ld   bc, $0101                                   ; $5445: $01 $01 $01
	inc  bc                                          ; $5448: $03
	inc  b                                           ; $5449: $04
	ld   c, c                                        ; $544a: $49
	and  b                                           ; $544b: $a0
	ld   [bc], a                                     ; $544c: $02
	jp   nz, Jump_047_5461                           ; $544d: $c2 $61 $54

	ld   e, c                                        ; $5450: $59
	ld   a, b                                        ; $5451: $78
	rst  $38                                         ; $5452: $ff
	rst  $38                                         ; $5453: $ff
	ld   bc, $0d04                                   ; $5454: $01 $04 $0d
	nop                                              ; $5457: $00
	ld   a, [bc]                                     ; $5458: $0a
	add  hl, de                                      ; $5459: $19
	dec  b                                           ; $545a: $05
	inc  bc                                          ; $545b: $03
	ld   h, l                                        ; $545c: $65
	sub  e                                           ; $545d: $93
	adc  l                                           ; $545e: $8d
	ld   a, c                                        ; $545f: $79
	ld   [hl], d                                     ; $5460: $72

Jump_047_5461:
	ld   d, d                                        ; $5461: $52
	ld   [hl], h                                     ; $5462: $74
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	inc  d                                           ; $5465: $14
	or   [hl]                                        ; $5466: $b6
	and  l                                           ; $5467: $a5
	cp   e                                           ; $5468: $bb
	ld   a, c                                        ; $5469: $79
	ld   [hl], d                                     ; $546a: $72
	ld   d, d                                        ; $546b: $52
	ld   [hl], h                                     ; $546c: $74
	nop                                              ; $546d: $00
	ld   bc, $3d02                                   ; $546e: $01 $02 $3d
	ld   [bc], a                                     ; $5471: $02
	dec  b                                           ; $5472: $05
	ld   [bc], a                                     ; $5473: $02
	ld   d, l                                        ; $5474: $55
	ld   a, c                                        ; $5475: $79
	ld   [hl], d                                     ; $5476: $72
	ld   d, d                                        ; $5477: $52
	ld   [hl], h                                     ; $5478: $74
	nop                                              ; $5479: $00
	ld   [bc], a                                     ; $547a: $02
	rlca                                             ; $547b: $07
	xor  [hl]                                        ; $547c: $ae
	nop                                              ; $547d: $00
	ld   [bc], a                                     ; $547e: $02
	inc  bc                                          ; $547f: $03
	ld   bc, $2000                                   ; $5480: $01 $00 $20
	nop                                              ; $5483: $00
	rlca                                             ; $5484: $07
	ld   e, $01                                      ; $5485: $1e $01
	ld   [bc], a                                     ; $5487: $02
	inc  bc                                          ; $5488: $03
	ld   bc, $2001                                   ; $5489: $01 $01 $20
	nop                                              ; $548c: $00
	rlca                                             ; $548d: $07
	ld   b, a                                        ; $548e: $47
	inc  bc                                          ; $548f: $03
	ld   [bc], a                                     ; $5490: $02
	inc  bc                                          ; $5491: $03
	ld   bc, $2002                                   ; $5492: $01 $02 $20
	nop                                              ; $5495: $00
	ld   b, $81                                      ; $5496: $06 $81
	nop                                              ; $5498: $00
	inc  e                                           ; $5499: $1c
	dec  b                                           ; $549a: $05
	nop                                              ; $549b: $00
	nop                                              ; $549c: $00
	ld   bc, $8c67                                   ; $549d: $01 $67 $8c
	and  c                                           ; $54a0: $a1
	ld   a, b                                        ; $54a1: $78
	sbc  [hl]                                        ; $54a2: $9e
	dec  c                                           ; $54a3: $0d
	ld   [bc], a                                     ; $54a4: $02
	and  l                                           ; $54a5: $a5
	ld   l, a                                        ; $54a6: $6f
	sub  l                                           ; $54a7: $95
	ld   [hl], c                                     ; $54a8: $71
	halt                                             ; $54a9: $76
	ld   d, d                                        ; $54aa: $52
	ld   l, e                                        ; $54ab: $6b
	ld   e, d                                        ; $54ac: $5a
	ld   h, l                                        ; $54ad: $65
	ld   d, d                                        ; $54ae: $52
	ld   e, c                                        ; $54af: $59
	sub  a                                           ; $54b0: $97
	dec  c                                           ; $54b1: $0d
	adc  h                                           ; $54b2: $8c
	ld   l, l                                        ; $54b3: $6d
	sbc  [hl]                                        ; $54b4: $9e
	ld   [bc], a                                     ; $54b5: $02
	xor  d                                           ; $54b6: $aa
	ld   [hl], l                                     ; $54b7: $75
	ld   a, b                                        ; $54b8: $78
	sbc  a                                           ; $54b9: $9f
	dec  c                                           ; $54ba: $0d
	nop                                              ; $54bb: $00
	ld   a, [bc]                                     ; $54bc: $0a
	dec  c                                           ; $54bd: $0d
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	rrca                                             ; $54c0: $0f
	nop                                              ; $54c1: $00
	ld   bc, $1e09                                   ; $54c2: $01 $09 $1e
	nop                                              ; $54c5: $00
	rrca                                             ; $54c6: $0f
	nop                                              ; $54c7: $00
	ld   bc, $0201                                   ; $54c8: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54cb: $cf
	dec  b                                           ; $54cc: $05
	ld   a, [de]                                     ; $54cd: $1a
	ld   h, e                                        ; $54ce: $63
	and  c                                           ; $54cf: $a1
	ld   a, h                                        ; $54d0: $7c
	ld   h, l                                        ; $54d1: $65
	sub  e                                           ; $54d2: $93
	adc  l                                           ; $54d3: $8d
	ld   [hl], c                                     ; $54d4: $71
	ld   [hl], h                                     ; $54d5: $74
	dec  c                                           ; $54d6: $0d
	inc  b                                           ; $54d7: $04
	ld   c, c                                        ; $54d8: $49
	ld   [hl], l                                     ; $54d9: $75
	ld   h, a                                        ; $54da: $67
	ld   e, c                                        ; $54db: $59
	ld   sp, hl                                      ; $54dc: $f9
	dec  c                                           ; $54dd: $0d
	nop                                              ; $54de: $00
	ld   a, [bc]                                     ; $54df: $0a
	inc  e                                           ; $54e0: $1c
	dec  b                                           ; $54e1: $05
	nop                                              ; $54e2: $00
	nop                                              ; $54e3: $00
	ld   bc, wRandomNumStruct                                   ; $54e4: $01 $a7 $c2
	ld   a, h                                        ; $54e7: $7c
	ld   h, l                                        ; $54e8: $65
	sub  e                                           ; $54e9: $93
	adc  l                                           ; $54ea: $8d
	ld   a, l                                        ; $54eb: $7d
	sbc  [hl]                                        ; $54ec: $9e
	dec  c                                           ; $54ed: $0d
	ld   [bc], a                                     ; $54ee: $02
	ld   e, b                                        ; $54ef: $58
	ld   [bc], a                                     ; $54f0: $02
	ld   d, [hl]                                     ; $54f1: $56
	ld   d, d                                        ; $54f2: $52
	ld   h, [hl]                                     ; $54f3: $66
	sbc  b                                           ; $54f4: $98
	sub  d                                           ; $54f5: $92
	sbc  a                                           ; $54f6: $9f
	dec  c                                           ; $54f7: $0d
	sub  b                                           ; $54f8: $90
	ld   l, a                                        ; $54f9: $6f
	sbc  e                                           ; $54fa: $9b
	and  c                                           ; $54fb: $a1
	inc  b                                           ; $54fc: $04
	ld   e, [hl]                                     ; $54fd: $5e
	inc  b                                           ; $54fe: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54ff: $cf
	sub  b                                           ; $5500: $90
	inc  b                                           ; $5501: $04
	ld   c, $02                                      ; $5502: $0e $02
	sbc  d                                           ; $5504: $9a
	ld   e, e                                        ; $5505: $5b
	sub  d                                           ; $5506: $92
	ld   [hl], l                                     ; $5507: $75
	sbc  a                                           ; $5508: $9f
	dec  c                                           ; $5509: $0d
	nop                                              ; $550a: $00
	ld   a, [bc]                                     ; $550b: $0a
	ld   bc, $936f                                   ; $550c: $01 $6f $93
	ei                                               ; $550f: $fb
	ld   h, c                                        ; $5510: $61
	halt                                             ; $5511: $76
	ld   [hl], l                                     ; $5512: $75
	sbc  [hl]                                        ; $5513: $9e
	ld   [bc], a                                     ; $5514: $02
	and  l                                           ; $5515: $a5
	ld   l, a                                        ; $5516: $6f
	sub  l                                           ; $5517: $95
	ld   [hl], c                                     ; $5518: $71
	halt                                             ; $5519: $76
	dec  c                                           ; $551a: $0d
	ld   d, d                                        ; $551b: $52
	ld   l, e                                        ; $551c: $6b
	ld   e, d                                        ; $551d: $5a
	ld   h, l                                        ; $551e: $65
	ld   d, d                                        ; $551f: $52
	ld   e, c                                        ; $5520: $59
	sub  a                                           ; $5521: $97
	sbc  [hl]                                        ; $5522: $9e
	adc  h                                           ; $5523: $8c
	ld   l, l                                        ; $5524: $6d
	ld   [bc], a                                     ; $5525: $02
	xor  d                                           ; $5526: $aa
	ld   [hl], l                                     ; $5527: $75
	ld   a, b                                        ; $5528: $78
	sbc  a                                           ; $5529: $9f
	dec  c                                           ; $552a: $0d
	nop                                              ; $552b: $00
	ld   a, [bc]                                     ; $552c: $0a
	dec  c                                           ; $552d: $0d
	nop                                              ; $552e: $00
	nop                                              ; $552f: $00
	rrca                                             ; $5530: $0f
	nop                                              ; $5531: $00
	ld   bc, $1e09                                   ; $5532: $01 $09 $1e
	nop                                              ; $5535: $00
	rrca                                             ; $5536: $0f
	nop                                              ; $5537: $00
	ld   bc, $5001                                   ; $5538: $01 $01 $50
	ld   a, h                                        ; $553b: $7c
	rst  $38                                         ; $553c: $ff
	rst  $38                                         ; $553d: $ff
	inc  d                                           ; $553e: $14
	or   [hl]                                        ; $553f: $b6
	and  l                                           ; $5540: $a5
	cp   e                                           ; $5541: $bb
	ld   a, b                                        ; $5542: $78
	and  c                                           ; $5543: $a1
	ld   e, c                                        ; $5544: $59
	rst  $38                                         ; $5545: $ff
	dec  c                                           ; $5546: $0d
	ld   [bc], a                                     ; $5547: $02
	jp   nz, Jump_047_7452                           ; $5548: $c2 $52 $74

	sub  b                                           ; $554b: $90
	ld   d, d                                        ; $554c: $52
	ld   d, d                                        ; $554d: $52
	ld   [hl], l                                     ; $554e: $75
	ld   h, a                                        ; $554f: $67
	ld   e, c                                        ; $5550: $59
	ld   sp, hl                                      ; $5551: $f9
	dec  c                                           ; $5552: $0d
	nop                                              ; $5553: $00
	ld   a, [bc]                                     ; $5554: $0a
	rrca                                             ; $5555: $0f
	dec  b                                           ; $5556: $05
	nop                                              ; $5557: $00
	ld   bc, $8c59                                   ; $5558: $01 $59 $8c
	add  [hl]                                        ; $555b: $86
	and  c                                           ; $555c: $a1
	ld   e, a                                        ; $555d: $5f
	ld   [hl], a                                     ; $555e: $77
	rst  $38                                         ; $555f: $ff
	dec  c                                           ; $5560: $0d
	inc  d                                           ; $5561: $14
	or   [hl]                                        ; $5562: $b6
	and  l                                           ; $5563: $a5
	cp   e                                           ; $5564: $bb
	ld   [bc], a                                     ; $5565: $02
	sbc  l                                           ; $5566: $9d
	ld   d, h                                        ; $5567: $54
	ld   [hl], h                                     ; $5568: $74
	sub  b                                           ; $5569: $90
	rst  $38                                         ; $556a: $ff
	rst  $38                                         ; $556b: $ff
	dec  c                                           ; $556c: $0d
	jp   z, $e2eb                                    ; $556d: $ca $eb $e2

	ld   [bc], a                                     ; $5570: $02
	ld   d, h                                        ; $5571: $54
	adc  l                                           ; $5572: $8d
	ld   l, l                                        ; $5573: $6d
	ld   d, d                                        ; $5574: $52
	sub  d                                           ; $5575: $92
	ld   e, c                                        ; $5576: $59
	sub  a                                           ; $5577: $97
	ld   a, b                                        ; $5578: $78
	db   $fc                                         ; $5579: $fc
	sbc  a                                           ; $557a: $9f
	dec  c                                           ; $557b: $0d
	nop                                              ; $557c: $00
	ld   a, [bc]                                     ; $557d: $0a
	add  hl, de                                      ; $557e: $19
	dec  b                                           ; $557f: $05
	inc  bc                                          ; $5580: $03
	ld   d, h                                        ; $5581: $54
	ld   [hl], c                                     ; $5582: $71
	ld   l, e                                        ; $5583: $6b
	ei                                               ; $5584: $fb
	ld   a, [rRAMG]                                  ; $5585: $fa $00 $00
	ld   l, e                                        ; $5588: $6b
	sbc  d                                           ; $5589: $9a
	ld   [hl], c                                     ; $558a: $71
	ld   [hl], h                                     ; $558b: $74
	ld   [bc], a                                     ; $558c: $02
	jr   c, @+$06                                    ; $558d: $38 $04

	ld   d, d                                        ; $558f: $52
	ld   sp, hl                                      ; $5590: $f9
	nop                                              ; $5591: $00
	ld   bc, $9978                                   ; $5592: $01 $78 $99
	adc  c                                           ; $5595: $89
	ld   [hl], a                                     ; $5596: $77
	nop                                              ; $5597: $00
	ld   [bc], a                                     ; $5598: $02
	rlca                                             ; $5599: $07
	sbc  a                                           ; $559a: $9f
	ld   bc, $0302                                   ; $559b: $01 $02 $03
	ld   bc, $2000                                   ; $559e: $01 $00 $20
	nop                                              ; $55a1: $00
	rlca                                             ; $55a2: $07
	ld   d, e                                        ; $55a3: $53
	ld   [bc], a                                     ; $55a4: $02
	ld   [bc], a                                     ; $55a5: $02
	inc  bc                                          ; $55a6: $03
	ld   bc, $2001                                   ; $55a7: $01 $01 $20
	nop                                              ; $55aa: $00
	rlca                                             ; $55ab: $07
	cp   c                                           ; $55ac: $b9
	ld   [bc], a                                     ; $55ad: $02
	ld   [bc], a                                     ; $55ae: $02
	inc  bc                                          ; $55af: $03
	ld   bc, $2002                                   ; $55b0: $01 $02 $20
	nop                                              ; $55b3: $00
	ld   b, $24                                      ; $55b4: $06 $24
	inc  bc                                          ; $55b6: $03
	rrca                                             ; $55b7: $0f
	nop                                              ; $55b8: $00
	ld   bc, $5401                                   ; $55b9: $01 $01 $54
	ld   l, e                                        ; $55bc: $6b
	ld   [hl], l                                     ; $55bd: $75
	ld   h, l                                        ; $55be: $65
	sub  l                                           ; $55bf: $95
	ld   a, [$770d]                                  ; $55c0: $fa $0d $77
	ld   d, h                                        ; $55c3: $54
	ld   [bc], a                                     ; $55c4: $02
	sub  l                                           ; $55c5: $95
	ld   [hl], h                                     ; $55c6: $74
	sub  b                                           ; $55c7: $90
	sbc  [hl]                                        ; $55c8: $9e
	jp   z, $e2eb                                    ; $55c9: $ca $eb $e2

	ld   [bc], a                                     ; $55cc: $02
	ld   d, h                                        ; $55cd: $54
	inc  b                                           ; $55ce: $04
	dec  c                                           ; $55cf: $0d
	ld   [bc], a                                     ; $55d0: $02
	ld   d, l                                        ; $55d1: $55
	ld   a, c                                        ; $55d2: $79
	ld   a, l                                        ; $55d3: $7d
	dec  c                                           ; $55d4: $0d
	ld   [bc], a                                     ; $55d5: $02
	sub  l                                           ; $55d6: $95
	ld   d, [hl]                                     ; $55d7: $56
	adc  h                                           ; $55d8: $8c
	ld   l, c                                        ; $55d9: $69
	and  c                                           ; $55da: $a1
	sub  [hl]                                        ; $55db: $96
	sbc  a                                           ; $55dc: $9f
	dec  c                                           ; $55dd: $0d
	nop                                              ; $55de: $00
	ld   a, [bc]                                     ; $55df: $0a
	inc  e                                           ; $55e0: $1c
	dec  b                                           ; $55e1: $05
	inc  bc                                          ; $55e2: $03
	inc  bc                                          ; $55e3: $03
	ld   bc, $7978                                   ; $55e4: $01 $78 $79
	ld   [bc], a                                     ; $55e7: $02
	sbc  l                                           ; $55e8: $9d
	ld   d, h                                        ; $55e9: $54
	ld   [hl], h                                     ; $55ea: $74
	and  c                                           ; $55eb: $a1
	ld   a, h                                        ; $55ec: $7c
	sbc  a                                           ; $55ed: $9f
	dec  c                                           ; $55ee: $0d
	ld   [bc], a                                     ; $55ef: $02
	jr   c, @+$06                                    ; $55f0: $38 $04

	ld   d, d                                        ; $55f2: $52
	ld   [hl], c                                     ; $55f3: $71
	ld   [hl], h                                     ; $55f4: $74
	jp   z, $e2eb                                    ; $55f5: $ca $eb $e2

	ld   [bc], a                                     ; $55f8: $02
	ld   d, h                                        ; $55f9: $54
	adc  l                                           ; $55fa: $8d
	ld   l, l                                        ; $55fb: $6d
	ld   d, d                                        ; $55fc: $52
	ld   a, b                                        ; $55fd: $78
	dec  c                                           ; $55fe: $0d
	ld   [bc], a                                     ; $55ff: $02
	ld   a, $65                                      ; $5600: $3e $65
	ld   [hl], h                                     ; $5602: $74
	sbc  c                                           ; $5603: $99
	sub  d                                           ; $5604: $92
	and  c                                           ; $5605: $a1
	sbc  a                                           ; $5606: $9f
	dec  c                                           ; $5607: $0d
	nop                                              ; $5608: $00
	ld   a, [bc]                                     ; $5609: $0a
	inc  e                                           ; $560a: $1c
	dec  b                                           ; $560b: $05
	ld   [bc], a                                     ; $560c: $02
	ld   [bc], a                                     ; $560d: $02
	ld   bc, $7d7d                                   ; $560e: $01 $7d $7d
	ei                                               ; $5611: $fb
	and  c                                           ; $5612: $a1
	sbc  a                                           ; $5613: $9f
	dec  c                                           ; $5614: $0d
	ld   [$7d00], sp                                 ; $5615: $08 $00 $7d
	and  c                                           ; $5618: $a1
	ld   sp, hl                                      ; $5619: $f9
	db   $10                                         ; $561a: $10
	ld   d, b                                        ; $561b: $50
	and  c                                           ; $561c: $a1
	ld   l, l                                        ; $561d: $6d
	dec  c                                           ; $561e: $0d
	and  a                                           ; $561f: $a7
	jp   nz, $147c                                   ; $5620: $c2 $7c $14

	or   [hl]                                        ; $5623: $b6
	and  l                                           ; $5624: $a5
	cp   e                                           ; $5625: $bb
	sub  d                                           ; $5626: $92
	halt                                             ; $5627: $76
	dec  b                                           ; $5628: $05
	pop  de                                          ; $5629: $d1
	ld   [hl], c                                     ; $562a: $71
	ld   l, l                                        ; $562b: $6d
	ld   a, b                                        ; $562c: $78
	sbc  a                                           ; $562d: $9f
	dec  c                                           ; $562e: $0d
	nop                                              ; $562f: $00
	ld   a, [bc]                                     ; $5630: $0a
	inc  e                                           ; $5631: $1c
	dec  b                                           ; $5632: $05
	rlca                                             ; $5633: $07
	rlca                                             ; $5634: $07
	dec  e                                           ; $5635: $1d
	ld   b, b                                        ; $5636: $40
	dec  d                                           ; $5637: $15
	inc  bc                                          ; $5638: $03
	dec  d                                           ; $5639: $15
	ld   bc, $2901                                   ; $563a: $01 $01 $29
	nop                                              ; $563d: $00
	ld   bc, $5950                                   ; $563e: $01 $50 $59
	and  c                                           ; $5641: $a1
	ld   [hl], l                                     ; $5642: $75
	db   $fc                                         ; $5643: $fc
	sbc  a                                           ; $5644: $9f
	dec  c                                           ; $5645: $0d
	inc  b                                           ; $5646: $04
	dec  c                                           ; $5647: $0d
	ld   [bc], a                                     ; $5648: $02
	sub  [hl]                                        ; $5649: $96
	inc  b                                           ; $564a: $04
	ld   b, l                                        ; $564b: $45
	inc  b                                           ; $564c: $04
	ld   a, [bc]                                     ; $564d: $0a
	inc  b                                           ; $564e: $04
	dec  bc                                          ; $564f: $0b
	sub  d                                           ; $5650: $92
	ld   [hl], c                                     ; $5651: $71
	ld   l, a                                        ; $5652: $6f
	sub  e                                           ; $5653: $93
	ei                                               ; $5654: $fb
	ld   a, h                                        ; $5655: $7c
	ld   a, c                                        ; $5656: $79
	dec  c                                           ; $5657: $0d
	ld   d, d                                        ; $5658: $52
	sub  a                                           ; $5659: $97
	and  c                                           ; $565a: $a1
	ld   [bc], a                                     ; $565b: $02
	jp   $6502                                       ; $565c: $c3 $02 $65


	ld   d, [hl]                                     ; $565f: $56
	halt                                             ; $5660: $76
	ld   [hl], c                                     ; $5661: $71
	ld   l, l                                        ; $5662: $6d
	sub  a                                           ; $5663: $97
	sbc  a                                           ; $5664: $9f
	dec  c                                           ; $5665: $0d
	nop                                              ; $5666: $00
	ld   a, [bc]                                     ; $5667: $0a
	ld   b, $27                                      ; $5668: $06 $27
	inc  bc                                          ; $566a: $03
	rrca                                             ; $566b: $0f
	nop                                              ; $566c: $00
	ld   bc, $ca01                                   ; $566d: $01 $01 $ca
	db   $eb                                         ; $5670: $eb
	ldh  [c], a                                      ; $5671: $e2
	ld   [bc], a                                     ; $5672: $02
	ld   d, h                                        ; $5673: $54
	ld   [hl], c                                     ; $5674: $71
	ld   [hl], h                                     ; $5675: $74
	rst  $38                                         ; $5676: $ff
	rst  $38                                         ; $5677: $ff
	sbc  a                                           ; $5678: $9f
	dec  c                                           ; $5679: $0d
	ld   l, e                                        ; $567a: $6b
	sbc  d                                           ; $567b: $9a
	ld   [hl], c                                     ; $567c: $71
	ld   [hl], h                                     ; $567d: $74
	ld   [bc], a                                     ; $567e: $02
	jr   c, jr_047_5685                              ; $567f: $38 $04

	ld   d, d                                        ; $5681: $52
	ld   a, h                                        ; $5682: $7c
	inc  d                                           ; $5683: $14
	or   [hl]                                        ; $5684: $b6

jr_047_5685:
	and  l                                           ; $5685: $a5
	cp   e                                           ; $5686: $bb
	dec  c                                           ; $5687: $0d
	ld   h, [hl]                                     ; $5688: $66
	sub  c                                           ; $5689: $91
	ld   a, b                                        ; $568a: $78
	ld   d, d                                        ; $568b: $52
	ld   [hl], l                                     ; $568c: $75
	ld   h, a                                        ; $568d: $67
	ld   e, c                                        ; $568e: $59
	ld   a, [$000d]                                  ; $568f: $fa $0d $00
	ld   a, [bc]                                     ; $5692: $0a
	inc  e                                           ; $5693: $1c
	dec  b                                           ; $5694: $05
	ld   bc, $1d01                                   ; $5695: $01 $01 $1d
	ld   b, b                                        ; $5698: $40
	dec  d                                           ; $5699: $15
	inc  bc                                          ; $569a: $03
	dec  d                                           ; $569b: $15
	ld   bc, $2802                                   ; $569c: $01 $02 $28
	nop                                              ; $569f: $00
	ld   bc, $7158                                   ; $56a0: $01 $58 $71
	ld   a, [wPlayerName+2]                                  ; $56a3: $fa $10 $cb
	and  l                                           ; $56a6: $a5
	cp   d                                           ; $56a7: $ba
	ld   a, b                                        ; $56a8: $78
	inc  bc                                          ; $56a9: $03
	di                                               ; $56aa: $f3
	ld   [hl], c                                     ; $56ab: $71
	ld   [bc], a                                     ; $56ac: $02
	ld   b, b                                        ; $56ad: $40
	adc  l                                           ; $56ae: $8d
	sbc  a                                           ; $56af: $9f
	dec  c                                           ; $56b0: $0d
	ld   h, c                                        ; $56b1: $61
	sbc  b                                           ; $56b2: $98
	sub  c                                           ; $56b3: $91
	adc  h                                           ; $56b4: $8c
	ld   l, l                                        ; $56b5: $6d
	inc  bc                                          ; $56b6: $03
	add  e                                           ; $56b7: $83
	dec  b                                           ; $56b8: $05
	dec  c                                           ; $56b9: $0d
	ld   h, l                                        ; $56ba: $65
	adc  h                                           ; $56bb: $8c
	ld   h, l                                        ; $56bc: $65
	ld   l, l                                        ; $56bd: $6d
	sbc  a                                           ; $56be: $9f
	dec  c                                           ; $56bf: $0d
	ld   a, b                                        ; $56c0: $78
	ei                                               ; $56c1: $fb
	and  c                                           ; $56c2: $a1
	ld   [hl], h                                     ; $56c3: $74
	ld   a, b                                        ; $56c4: $78
	sbc  a                                           ; $56c5: $9f
	ret  nc                                          ; $56c6: $d0

	ret  nc                                          ; $56c7: $d0

	ret  nc                                          ; $56c8: $d0

	ret  nc                                          ; $56c9: $d0

	sbc  a                                           ; $56ca: $9f
	dec  c                                           ; $56cb: $0d
	nop                                              ; $56cc: $00
	ld   a, [bc]                                     ; $56cd: $0a
	ld   b, $27                                      ; $56ce: $06 $27
	inc  bc                                          ; $56d0: $03
	rrca                                             ; $56d1: $0f
	nop                                              ; $56d2: $00
	ld   bc, $7801                                   ; $56d3: $01 $01 $78
	sbc  c                                           ; $56d6: $99
	adc  c                                           ; $56d7: $89
	ld   [hl], a                                     ; $56d8: $77
	rst  $38                                         ; $56d9: $ff
	rst  $38                                         ; $56da: $ff
	sbc  a                                           ; $56db: $9f
	dec  c                                           ; $56dc: $0d
	ld   d, h                                        ; $56dd: $54
	and  c                                           ; $56de: $a1
	ld   d, h                                        ; $56df: $54
	and  c                                           ; $56e0: $a1
	sbc  a                                           ; $56e1: $9f
	dec  c                                           ; $56e2: $0d
	nop                                              ; $56e3: $00
	ld   a, [bc]                                     ; $56e4: $0a
	inc  e                                           ; $56e5: $1c
	dec  b                                           ; $56e6: $05
	rlca                                             ; $56e7: $07
	rlca                                             ; $56e8: $07
	ld   bc, $4904                                   ; $56e9: $01 $04 $49
	ld   e, d                                        ; $56ec: $5a
	db   $fd                                         ; $56ed: $fd
	ld   d, h                                        ; $56ee: $54
	and  c                                           ; $56ef: $a1
	ld   d, h                                        ; $56f0: $54
	and  c                                           ; $56f1: $a1
	cp   $92                                         ; $56f2: $fe $92
	ld   a, [$ca0d]                                  ; $56f4: $fa $0d $ca
	db   $eb                                         ; $56f7: $eb
	ldh  [c], a                                      ; $56f8: $e2
	ld   [bc], a                                     ; $56f9: $02
	ld   d, h                                        ; $56fa: $54
	ld   l, a                                        ; $56fb: $6f
	sub  e                                           ; $56fc: $93
	ei                                               ; $56fd: $fb
	ld   a, h                                        ; $56fe: $7c
	ld   a, l                                        ; $56ff: $7d
	dec  c                                           ; $5700: $0d
	ld   [bc], a                                     ; $5701: $02
	jr   c, jr_047_5708                              ; $5702: $38 $04

	ld   d, d                                        ; $5704: $52
	ld   a, h                                        ; $5705: $7c
	inc  d                                           ; $5706: $14
	or   [hl]                                        ; $5707: $b6

jr_047_5708:
	and  l                                           ; $5708: $a5
	cp   e                                           ; $5709: $bb
	sub  d                                           ; $570a: $92
	ld   [hl], l                                     ; $570b: $75
	sbc  a                                           ; $570c: $9f
	dec  c                                           ; $570d: $0d
	nop                                              ; $570e: $00
	ld   a, [bc]                                     ; $570f: $0a
	dec  e                                           ; $5710: $1d
	ld   b, b                                        ; $5711: $40
	dec  d                                           ; $5712: $15
	inc  bc                                          ; $5713: $03
	dec  d                                           ; $5714: $15
	ld   bc, $2902                                   ; $5715: $01 $02 $29
	nop                                              ; $5718: $00
	ld   bc, wRandomNumStruct                                   ; $5719: $01 $a7 $c2
	ld   a, h                                        ; $571c: $7c
	inc  d                                           ; $571d: $14
	or   [hl]                                        ; $571e: $b6
	and  l                                           ; $571f: $a5
	cp   e                                           ; $5720: $bb
	halt                                             ; $5721: $76
	dec  c                                           ; $5722: $0d
	ld   l, a                                        ; $5723: $6f
	sub  c                                           ; $5724: $91
	ld   d, h                                        ; $5725: $54
	ld   e, c                                        ; $5726: $59
	sub  a                                           ; $5727: $97
	ld   a, b                                        ; $5728: $78
	ld   a, [$020d]                                  ; $5729: $fa $0d $02
	xor  c                                           ; $572c: $a9
	ld   [bc], a                                     ; $572d: $02
	inc  d                                           ; $572e: $14
	ld   d, [hl]                                     ; $572f: $56
	and  c                                           ; $5730: $a1
	halt                                             ; $5731: $76
	ld   d, d                                        ; $5732: $52
	ld   [hl], h                                     ; $5733: $74
	sub  d                                           ; $5734: $92
	ld   a, [$000d]                                  ; $5735: $fa $0d $00
	ld   a, [bc]                                     ; $5738: $0a
	ld   b, $27                                      ; $5739: $06 $27
	inc  bc                                          ; $573b: $03
	rrca                                             ; $573c: $0f
	dec  b                                           ; $573d: $05
	nop                                              ; $573e: $00
	ld   bc, $7889                                   ; $573f: $01 $89 $78
	sbc  [hl]                                        ; $5742: $9e
	and  a                                           ; $5743: $a7
	jp   nz, $7f02                                   ; $5744: $c2 $02 $7f

	ld   e, l                                        ; $5747: $5d
	ld   e, c                                        ; $5748: $59
	sub  a                                           ; $5749: $97
	sbc  [hl]                                        ; $574a: $9e
	dec  c                                           ; $574b: $0d
	adc  h                                           ; $574c: $8c
	ld   l, l                                        ; $574d: $6d
	ld   [bc], a                                     ; $574e: $02
	xor  d                                           ; $574f: $aa
	ld   [hl], l                                     ; $5750: $75
	ld   a, b                                        ; $5751: $78
	sbc  a                                           ; $5752: $9f
	dec  c                                           ; $5753: $0d
	nop                                              ; $5754: $00
	ld   a, [bc]                                     ; $5755: $0a
	dec  c                                           ; $5756: $0d
	nop                                              ; $5757: $00
	nop                                              ; $5758: $00
	rrca                                             ; $5759: $0f
	nop                                              ; $575a: $00
	ld   bc, $1e09                                   ; $575b: $01 $09 $1e
	nop                                              ; $575e: $00
	rrca                                             ; $575f: $0f
	nop                                              ; $5760: $00
	ld   bc, $0201                                   ; $5761: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5764: $cf
	dec  b                                           ; $5765: $05
	ld   a, [de]                                     ; $5766: $1a
	ld   h, e                                        ; $5767: $63
	and  c                                           ; $5768: $a1
	ld   a, h                                        ; $5769: $7c
	ld   [bc], a                                     ; $576a: $02
	dec  a                                           ; $576b: $3d
	ld   [bc], a                                     ; $576c: $02
	dec  b                                           ; $576d: $05
	ld   [bc], a                                     ; $576e: $02
	ld   d, l                                        ; $576f: $55
	ld   a, l                                        ; $5770: $7d
	dec  c                                           ; $5771: $0d
	inc  b                                           ; $5772: $04
	ld   c, c                                        ; $5773: $49
	ld   [hl], l                                     ; $5774: $75
	ld   h, a                                        ; $5775: $67
	ld   e, c                                        ; $5776: $59
	ld   sp, hl                                      ; $5777: $f9
	dec  c                                           ; $5778: $0d
	nop                                              ; $5779: $00
	ld   a, [bc]                                     ; $577a: $0a
	inc  e                                           ; $577b: $1c
	dec  b                                           ; $577c: $05
	nop                                              ; $577d: $00
	nop                                              ; $577e: $00
	ld   bc, $4904                                   ; $577f: $01 $04 $49
	sub  d                                           ; $5782: $92
	halt                                             ; $5783: $76
	dec  b                                           ; $5784: $05
	pop  de                                          ; $5785: $d1
	ld   d, h                                        ; $5786: $54
	ld   sp, hl                                      ; $5787: $f9
	dec  c                                           ; $5788: $0d
	nop                                              ; $5789: $00
	ld   a, [bc]                                     ; $578a: $0a
	add  hl, de                                      ; $578b: $19
	dec  b                                           ; $578c: $05
	inc  bc                                          ; $578d: $03
	inc  e                                           ; $578e: $1c
	ld   [bc], a                                     ; $578f: $02
	ld   d, l                                        ; $5790: $55
	nop                                              ; $5791: $00
	nop                                              ; $5792: $00
	dec  e                                           ; $5793: $1d
	ld   [bc], a                                     ; $5794: $02
	ld   d, l                                        ; $5795: $55
	nop                                              ; $5796: $00
	ld   bc, $8103                                   ; $5797: $01 $03 $81
	ld   [bc], a                                     ; $579a: $02
	ld   d, l                                        ; $579b: $55
	nop                                              ; $579c: $00
	ld   [bc], a                                     ; $579d: $02
	rlca                                             ; $579e: $07
	and  h                                           ; $579f: $a4
	inc  bc                                          ; $57a0: $03
	ld   [bc], a                                     ; $57a1: $02
	inc  bc                                          ; $57a2: $03
	ld   bc, $2000                                   ; $57a3: $01 $00 $20
	nop                                              ; $57a6: $00
	rlca                                             ; $57a7: $07
	rst  $38                                         ; $57a8: $ff
	inc  bc                                          ; $57a9: $03
	ld   [bc], a                                     ; $57aa: $02
	inc  bc                                          ; $57ab: $03
	ld   bc, $2001                                   ; $57ac: $01 $01 $20
	nop                                              ; $57af: $00
	rlca                                             ; $57b0: $07
	ld   [hl], d                                     ; $57b1: $72
	inc  b                                           ; $57b2: $04
	ld   [bc], a                                     ; $57b3: $02
	inc  bc                                          ; $57b4: $03
	ld   bc, $2002                                   ; $57b5: $01 $02 $20
	nop                                              ; $57b8: $00
	ld   b, $f9                                      ; $57b9: $06 $f9
	inc  b                                           ; $57bb: $04
	rrca                                             ; $57bc: $0f
	nop                                              ; $57bd: $00
	ld   bc, $8001                                   ; $57be: $01 $01 $80
	sub  a                                           ; $57c1: $97
	adc  a                                           ; $57c2: $8f
	ld   e, e                                        ; $57c3: $5b
	ld   a, h                                        ; $57c4: $7c
	inc  b                                           ; $57c5: $04
	inc  de                                          ; $57c6: $13
	inc  bc                                          ; $57c7: $03
	ld   b, $02                                      ; $57c8: $06 $02
	ld   d, l                                        ; $57ca: $55
	ld   l, [hl]                                     ; $57cb: $6e
	ld   e, c                                        ; $57cc: $59
	sub  a                                           ; $57cd: $97
	dec  c                                           ; $57ce: $0d
	inc  e                                           ; $57cf: $1c
	ld   [bc], a                                     ; $57d0: $02
	ld   d, l                                        ; $57d1: $55
	ld   a, b                                        ; $57d2: $78
	and  c                                           ; $57d3: $a1
	ld   h, [hl]                                     ; $57d4: $66
	sub  c                                           ; $57d5: $91
	ld   a, b                                        ; $57d6: $78
	ld   d, d                                        ; $57d7: $52
	ld   [hl], l                                     ; $57d8: $75
	ld   h, a                                        ; $57d9: $67
	ld   e, c                                        ; $57da: $59
	ld   sp, hl                                      ; $57db: $f9
	dec  c                                           ; $57dc: $0d
	nop                                              ; $57dd: $00
	ld   a, [bc]                                     ; $57de: $0a
	inc  e                                           ; $57df: $1c
	dec  b                                           ; $57e0: $05
	ld   bc, $1d01                                   ; $57e1: $01 $01 $1d
	ld   b, b                                        ; $57e4: $40
	dec  d                                           ; $57e5: $15
	inc  bc                                          ; $57e6: $03
	dec  d                                           ; $57e7: $15
	ld   bc, $2803                                   ; $57e8: $01 $03 $28
	nop                                              ; $57eb: $00
	ld   bc, $7158                                   ; $57ec: $01 $58 $71
	ld   a, [$5010]                                  ; $57ef: $fa $10 $50
	ld   [hl], c                                     ; $57f2: $71
	ld   l, l                                        ; $57f3: $6d
	sbc  b                                           ; $57f4: $98
	ei                                               ; $57f5: $fb
	ld   a, [$040d]                                  ; $57f6: $fa $0d $04
	inc  de                                          ; $57f9: $13
	inc  bc                                          ; $57fa: $03
	ld   b, $02                                      ; $57fb: $06 $02
	ld   d, l                                        ; $57fd: $55
	ld   [hl], c                                     ; $57fe: $71
	ld   [hl], h                                     ; $57ff: $74
	sbc  [hl]                                        ; $5800: $9e
	and  a                                           ; $5801: $a7
	jp   nz, Jump_047_617c                           ; $5802: $c2 $7c $61

	halt                                             ; $5805: $76
	dec  c                                           ; $5806: $0d
	sub  [hl]                                        ; $5807: $96
	ld   d, h                                        ; $5808: $54
	sbc  l                                           ; $5809: $9d
	ld   e, c                                        ; $580a: $59
	ld   [hl], c                                     ; $580b: $71
	ld   [hl], h                                     ; $580c: $74
	sbc  c                                           ; $580d: $99
	sub  d                                           ; $580e: $92
	and  c                                           ; $580f: $a1
	sbc  a                                           ; $5810: $9f
	dec  c                                           ; $5811: $0d
	nop                                              ; $5812: $00
	ld   a, [bc]                                     ; $5813: $0a
	ld   b, $f9                                      ; $5814: $06 $f9
	inc  b                                           ; $5816: $04
	rrca                                             ; $5817: $0f
	nop                                              ; $5818: $00
	ld   bc, $9001                                   ; $5819: $01 $01 $90
	ld   h, l                                        ; $581c: $65
	ld   e, c                                        ; $581d: $59
	ld   h, l                                        ; $581e: $65
	ld   [hl], h                                     ; $581f: $74
	sbc  [hl]                                        ; $5820: $9e
	dec  e                                           ; $5821: $1d
	ld   [bc], a                                     ; $5822: $02
	ld   d, l                                        ; $5823: $55
	ld   [hl], l                                     ; $5824: $75
	ld   h, a                                        ; $5825: $67
	ld   e, c                                        ; $5826: $59
	ld   sp, hl                                      ; $5827: $f9
	dec  c                                           ; $5828: $0d
	nop                                              ; $5829: $00
	ld   a, [bc]                                     ; $582a: $0a
	inc  e                                           ; $582b: $1c
	dec  b                                           ; $582c: $05
	inc  bc                                          ; $582d: $03
	inc  bc                                          ; $582e: $03
	ld   bc, $021d                                   ; $582f: $01 $1d $02
	ld   d, l                                        ; $5832: $55
	ld   [hl], c                                     ; $5833: $71
	ld   [hl], h                                     ; $5834: $74
	ld   a, b                                        ; $5835: $78
	and  c                                           ; $5836: $a1
	sub  d                                           ; $5837: $92
	ld   a, e                                        ; $5838: $7b
	and  c                                           ; $5839: $a1
	sbc  a                                           ; $583a: $9f
	dec  c                                           ; $583b: $0d
	sbc  l                                           ; $583c: $9d
	ld   e, a                                        ; $583d: $5f
	sbc  l                                           ; $583e: $9d
	ld   e, c                                        ; $583f: $59
	sub  a                                           ; $5840: $97
	add  [hl]                                        ; $5841: $86
	and  c                                           ; $5842: $a1
	sub  d                                           ; $5843: $92
	and  c                                           ; $5844: $a1
	sbc  a                                           ; $5845: $9f
	dec  c                                           ; $5846: $0d
	inc  b                                           ; $5847: $04
	dec  bc                                          ; $5848: $0b
	inc  b                                           ; $5849: $04
	ld   [hl-], a                                    ; $584a: $32
	ret  nc                                          ; $584b: $d0

	push af                                          ; $584c: $f5
	jp   nc, $dd78                                   ; $584d: $d2 $78 $dd

	or   d                                           ; $5850: $b2
	sub  d                                           ; $5851: $92
	ld   a, b                                        ; $5852: $78
	db   $fc                                         ; $5853: $fc
	sbc  a                                           ; $5854: $9f
	dec  c                                           ; $5855: $0d
	nop                                              ; $5856: $00
	ld   a, [bc]                                     ; $5857: $0a
	inc  e                                           ; $5858: $1c
	dec  b                                           ; $5859: $05
	nop                                              ; $585a: $00
	nop                                              ; $585b: $00
	ld   bc, $3d02                                   ; $585c: $01 $02 $3d
	ld   [bc], a                                     ; $585f: $02
	dec  b                                           ; $5860: $05
	ld   [bc], a                                     ; $5861: $02
	ld   d, l                                        ; $5862: $55
	ld   l, a                                        ; $5863: $6f
	sub  e                                           ; $5864: $93
	ei                                               ; $5865: $fb
	ld   a, h                                        ; $5866: $7c
	ld   a, l                                        ; $5867: $7d
	dec  c                                           ; $5868: $0d
	dec  de                                          ; $5869: $1b
	sbc  [hl]                                        ; $586a: $9e
	inc  e                                           ; $586b: $1c
	sbc  [hl]                                        ; $586c: $9e
	add  hl, hl                                      ; $586d: $29
	sbc  [hl]                                        ; $586e: $9e
	dec  de                                          ; $586f: $1b
	inc  e                                           ; $5870: $1c
	ld   a, h                                        ; $5871: $7c
	dec  d                                           ; $5872: $15
	dec  b                                           ; $5873: $05
	ld   a, $05                                      ; $5874: $3e $05
	ld   h, d                                        ; $5876: $62
	dec  c                                           ; $5877: $0d
	ld   a, b                                        ; $5878: $78
	and  c                                           ; $5879: $a1
	sub  d                                           ; $587a: $92
	ld   [hl], l                                     ; $587b: $75
	sbc  a                                           ; $587c: $9f
	ld   e, b                                        ; $587d: $58
	adc  d                                           ; $587e: $8a
	ld   d, [hl]                                     ; $587f: $56
	halt                                             ; $5880: $76
	ld   e, e                                        ; $5881: $5b
	sub  d                                           ; $5882: $92
	sbc  a                                           ; $5883: $9f
	dec  c                                           ; $5884: $0d
	nop                                              ; $5885: $00
	ld   a, [bc]                                     ; $5886: $0a
	ld   b, $f9                                      ; $5887: $06 $f9
	inc  b                                           ; $5889: $04
	rrca                                             ; $588a: $0f
	nop                                              ; $588b: $00
	ld   bc, $bb01                                   ; $588c: $01 $01 $bb
	pop  de                                          ; $588f: $d1
	db   $ec                                         ; $5890: $ec
	ld   a, [$0310]                                  ; $5891: $fa $10 $03
	add  c                                           ; $5894: $81
	ld   [bc], a                                     ; $5895: $02
	ld   d, l                                        ; $5896: $55
	ld   [hl], l                                     ; $5897: $75
	ld   h, l                                        ; $5898: $65
	sub  l                                           ; $5899: $95
	ld   d, h                                        ; $589a: $54
	sbc  a                                           ; $589b: $9f
	dec  c                                           ; $589c: $0d
	nop                                              ; $589d: $00
	ld   a, [bc]                                     ; $589e: $0a
	inc  e                                           ; $589f: $1c

Jump_047_58a0:
	dec  b                                           ; $58a0: $05
	ld   bc, $0101                                   ; $58a1: $01 $01 $01
	ld   l, e                                        ; $58a4: $6b
	sub  d                                           ; $58a5: $92
	ld   a, [$6310]                                  ; $58a6: $fa $10 $63
	ld   d, d                                        ; $58a9: $52
	ld   e, e                                        ; $58aa: $5b
	and  c                                           ; $58ab: $a1
	inc  b                                           ; $58ac: $04
	ld   e, [hl]                                     ; $58ad: $5e
	ld   [bc], a                                     ; $58ae: $02
	sub  l                                           ; $58af: $95
	ld   h, e                                        ; $58b0: $63
	sbc  d                                           ; $58b1: $9a
	ld   l, l                                        ; $58b2: $6d
	dec  c                                           ; $58b3: $0d
	inc  bc                                          ; $58b4: $03
	ld   l, c                                        ; $58b5: $69
	inc  bc                                          ; $58b6: $03
	add  c                                           ; $58b7: $81
	ld   a, h                                        ; $58b8: $7c
	ld   [bc], a                                     ; $58b9: $02
	dec  a                                           ; $58ba: $3d
	ld   [bc], a                                     ; $58bb: $02
	dec  b                                           ; $58bc: $05
	ld   [bc], a                                     ; $58bd: $02
	ld   d, l                                        ; $58be: $55
	sbc  [hl]                                        ; $58bf: $9e
	inc  bc                                          ; $58c0: $03
	add  c                                           ; $58c1: $81
	ld   [bc], a                                     ; $58c2: $02
	ld   d, l                                        ; $58c3: $55
	sub  d                                           ; $58c4: $92
	ld   a, [$000d]                                  ; $58c5: $fa $0d $00
	ld   a, [bc]                                     ; $58c8: $0a
	inc  e                                           ; $58c9: $1c
	dec  b                                           ; $58ca: $05
	rlca                                             ; $58cb: $07
	rlca                                             ; $58cc: $07
	ld   bc, $ffff                                   ; $58cd: $01 $ff $ff
	ld   l, a                                        ; $58d0: $6f
	sub  e                                           ; $58d1: $93
	ei                                               ; $58d2: $fb
	ld   [hl], h                                     ; $58d3: $74
	sbc  [hl]                                        ; $58d4: $9e
	and  e                                           ; $58d5: $a3
	call c, $fa59                                    ; $58d6: $dc $59 $fa
	ld   a, [$6b0d]                                  ; $58d9: $fa $0d $6b
	and  c                                           ; $58dc: $a1
	ld   a, b                                        ; $58dd: $78
	sbc  l                                           ; $58de: $9d
	ld   e, a                                        ; $58df: $5f
	ld   a, b                                        ; $58e0: $78
	ld   d, d                                        ; $58e1: $52
	sub  d                                           ; $58e2: $92
	sbc  e                                           ; $58e3: $9b
	sbc  a                                           ; $58e4: $9f
	dec  c                                           ; $58e5: $0d
	adc  h                                           ; $58e6: $8c
	ld   [hl], c                                     ; $58e7: $71
	ld   l, l                                        ; $58e8: $6d
	ld   e, l                                        ; $58e9: $5d
	sub  b                                           ; $58ea: $90
	ei                                               ; $58eb: $fb
	sbc  a                                           ; $58ec: $9f
	dec  c                                           ; $58ed: $0d
	nop                                              ; $58ee: $00
	ld   a, [bc]                                     ; $58ef: $0a
	inc  e                                           ; $58f0: $1c
	dec  b                                           ; $58f1: $05
	ld   bc, $1d01                                   ; $58f2: $01 $01 $1d
	ld   b, b                                        ; $58f5: $40
	dec  d                                           ; $58f6: $15
	inc  bc                                          ; $58f7: $03
	dec  d                                           ; $58f8: $15
	ld   bc, $2802                                   ; $58f9: $01 $02 $28
	nop                                              ; $58fc: $00
	ld   bc, $508c                                   ; $58fd: $01 $8c $50
	sbc  [hl]                                        ; $5900: $9e
	ld   e, b                                        ; $5901: $58
	sub  b                                           ; $5902: $90
	sbc  e                                           ; $5903: $9b
	ld   e, c                                        ; $5904: $59
	ld   [hl], c                                     ; $5905: $71
	ld   l, l                                        ; $5906: $6d
	ld   e, a                                        ; $5907: $5f
	ld   [hl], a                                     ; $5908: $77
	ld   a, b                                        ; $5909: $78
	sbc  a                                           ; $590a: $9f
	dec  c                                           ; $590b: $0d
	nop                                              ; $590c: $00
	ld   a, [bc]                                     ; $590d: $0a
	ld   b, $f9                                      ; $590e: $06 $f9
	inc  b                                           ; $5910: $04
	inc  e                                           ; $5911: $1c
	dec  b                                           ; $5912: $05
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	ld   bc, $7889                                   ; $5915: $01 $89 $78
	sbc  [hl]                                        ; $5918: $9e
	and  a                                           ; $5919: $a7
	jp   nz, $7f02                                   ; $591a: $c2 $02 $7f

	ld   e, l                                        ; $591d: $5d
	ld   e, c                                        ; $591e: $59
	sub  a                                           ; $591f: $97
	sbc  [hl]                                        ; $5920: $9e
	dec  c                                           ; $5921: $0d
	adc  h                                           ; $5922: $8c
	ld   l, l                                        ; $5923: $6d
	ld   [bc], a                                     ; $5924: $02
	xor  d                                           ; $5925: $aa
	ld   [hl], l                                     ; $5926: $75
	ld   a, b                                        ; $5927: $78
	sbc  a                                           ; $5928: $9f
	dec  c                                           ; $5929: $0d
	nop                                              ; $592a: $00
	ld   a, [bc]                                     ; $592b: $0a
	dec  c                                           ; $592c: $0d
	nop                                              ; $592d: $00
	nop                                              ; $592e: $00
	rrca                                             ; $592f: $0f
	nop                                              ; $5930: $00
	ld   bc, $1e09                                   ; $5931: $01 $09 $1e
	nop                                              ; $5934: $00
	nop                                              ; $5935: $00
	rrca                                             ; $5936: $0f
	nop                                              ; $5937: $00
	ld   bc, $0102                                   ; $5938: $01 $02 $01
	ld   d, b                                        ; $593b: $50
	rst  $38                                         ; $593c: $ff
	rst  $38                                         ; $593d: $ff
	ld   h, e                                        ; $593e: $63
	ld   e, l                                        ; $593f: $5d
	sub  a                                           ; $5940: $97
	ld   h, e                                        ; $5941: $63
	and  c                                           ; $5942: $a1
	ld   e, d                                        ; $5943: $5a
	sbc  [hl]                                        ; $5944: $9e
	dec  c                                           ; $5945: $0d
	ld   l, e                                        ; $5946: $6b
	ld   d, h                                        ; $5947: $54
	ld   h, [hl]                                     ; $5948: $66
	and  b                                           ; $5949: $a0
	ld   h, l                                        ; $594a: $65
	ld   [hl], h                                     ; $594b: $74
	sbc  c                                           ; $594c: $99
	rst  $38                                         ; $594d: $ff
	rst  $38                                         ; $594e: $ff
	dec  c                                           ; $594f: $0d
	ld   bc, $7703                                   ; $5950: $01 $03 $77
	ld   d, h                                        ; $5953: $54
	ld   h, l                                        ; $5954: $65
	sub  [hl]                                        ; $5955: $96
	ld   d, h                                        ; $5956: $54
	ld   e, c                                        ; $5957: $59
	ld   a, b                                        ; $5958: $78
	ld   sp, hl                                      ; $5959: $f9
	ld   bc, $0d04                                   ; $595a: $01 $04 $0d
	nop                                              ; $595d: $00
	ld   a, [bc]                                     ; $595e: $0a
	add  hl, de                                      ; $595f: $19
	dec  b                                           ; $5960: $05
	inc  bc                                          ; $5961: $03
	inc  bc                                          ; $5962: $03
	ld   l, e                                        ; $5963: $6b
	inc  b                                           ; $5964: $04
	ld   [de], a                                     ; $5965: $12
	ld   d, h                                        ; $5966: $54
	nop                                              ; $5967: $00
	nop                                              ; $5968: $00
	inc  bc                                          ; $5969: $03
	and  l                                           ; $596a: $a5
	and  b                                           ; $596b: $a0
	ld   e, c                                        ; $596c: $59
	ld   e, a                                        ; $596d: $5f
	sbc  c                                           ; $596e: $99
	nop                                              ; $596f: $00
	ld   bc, $9759                                   ; $5970: $01 $59 $97
	ld   e, c                                        ; $5973: $59
	ld   [hl], c                                     ; $5974: $71
	ld   [hl], h                                     ; $5975: $74
	adc  l                                           ; $5976: $8d
	sbc  c                                           ; $5977: $99
	nop                                              ; $5978: $00
	ld   [bc], a                                     ; $5979: $02
	rlca                                             ; $597a: $07
	ld   h, d                                        ; $597b: $62
	nop                                              ; $597c: $00
	ld   [bc], a                                     ; $597d: $02
	inc  bc                                          ; $597e: $03
	ld   bc, $2000                                   ; $597f: $01 $00 $20
	nop                                              ; $5982: $00
	rlca                                             ; $5983: $07
	cpl                                              ; $5984: $2f
	ld   bc, $0302                                   ; $5985: $01 $02 $03
	ld   bc, $2001                                   ; $5988: $01 $01 $20
	nop                                              ; $598b: $00
	rlca                                             ; $598c: $07
	ld   h, b                                        ; $598d: $60
	ld   bc, $0302                                   ; $598e: $01 $02 $03
	ld   bc, $2002                                   ; $5991: $01 $02 $20
	nop                                              ; $5994: $00
	ld   b, $f3                                      ; $5995: $06 $f3
	ld   bc, $000f                                   ; $5997: $01 $0f $00
	ld   bc, $6301                                   ; $599a: $01 $01 $63
	ld   e, l                                        ; $599d: $5d
	sub  a                                           ; $599e: $97
	ld   h, e                                        ; $599f: $63
	and  c                                           ; $59a0: $a1
	sbc  [hl]                                        ; $59a1: $9e
	inc  b                                           ; $59a2: $04
	ld   c, $04                                      ; $59a3: $0e $04
	adc  h                                           ; $59a5: $8c
	ld   [hl], l                                     ; $59a6: $75
	ld   h, a                                        ; $59a7: $67
	ld   a, e                                        ; $59a8: $7b
	sbc  a                                           ; $59a9: $9f
	dec  c                                           ; $59aa: $0d
	inc  b                                           ; $59ab: $04
	ld   l, l                                        ; $59ac: $6d
	sub  b                                           ; $59ad: $90
	inc  bc                                          ; $59ae: $03
	ld   l, e                                        ; $59af: $6b
	inc  b                                           ; $59b0: $04
	ld   [de], a                                     ; $59b1: $12
	ld   d, d                                        ; $59b2: $52
	adc  h                                           ; $59b3: $8c
	ld   h, l                                        ; $59b4: $65
	sub  l                                           ; $59b5: $95
	ld   d, h                                        ; $59b6: $54
	ld   e, c                                        ; $59b7: $59
	ld   sp, hl                                      ; $59b8: $f9
	dec  c                                           ; $59b9: $0d
	nop                                              ; $59ba: $00
	ld   a, [bc]                                     ; $59bb: $0a
	inc  e                                           ; $59bc: $1c
	ld   bc, $0000                                   ; $59bd: $01 $00 $00
	dec  b                                           ; $59c0: $05
	add  b                                           ; $59c1: $80
	nop                                              ; $59c2: $00
	ld   bc, $0001                                   ; $59c3: $01 $01 $00
	dec  e                                           ; $59c6: $1d
	ld   b, b                                        ; $59c7: $40
	ld   de, $1103                                   ; $59c8: $11 $03 $11
	ld   bc, $2802                                   ; $59cb: $01 $02 $28
	nop                                              ; $59ce: $00
	ld   bc, $9e56                                   ; $59cf: $01 $56 $9e
	ld   d, d                                        ; $59d2: $52
	ld   d, d                                        ; $59d3: $52
	and  c                                           ; $59d4: $a1
	ld   [hl], l                                     ; $59d5: $75
	ld   h, a                                        ; $59d6: $67
	ld   e, c                                        ; $59d7: $59

Call_047_59d8:
	rst  $38                                         ; $59d8: $ff
	rst  $38                                         ; $59d9: $ff
	ld   sp, hl                                      ; $59da: $f9
	dec  c                                           ; $59db: $0d
	nop                                              ; $59dc: $00
	dec  b                                           ; $59dd: $05
	ld   b, b                                        ; $59de: $40
	ld   l, a                                        ; $59df: $6f
	ld   [bc], a                                     ; $59e0: $02
	nop                                              ; $59e1: $00
	nop                                              ; $59e2: $00
	ld   bc, $6267                                   ; $59e3: $01 $67 $62
	ld   e, l                                        ; $59e6: $5d
	inc  bc                                          ; $59e7: $03
	ld   e, e                                        ; $59e8: $5b
	ld   e, c                                        ; $59e9: $59
	sbc  b                                           ; $59ea: $98
	adc  h                                           ; $59eb: $8c
	ld   h, a                                        ; $59ec: $67
	sbc  a                                           ; $59ed: $9f
	dec  c                                           ; $59ee: $0d
	nop                                              ; $59ef: $00
	ld   a, [bc]                                     ; $59f0: $0a
	inc  e                                           ; $59f1: $1c
	ld   bc, $0101                                   ; $59f2: $01 $01 $01
	ld   bc, $9166                                   ; $59f5: $01 $66 $91
	sbc  [hl]                                        ; $59f8: $9e
	ld   l, e                                        ; $59f9: $6b
	ld   l, a                                        ; $59fa: $6f
	sub  a                                           ; $59fb: $97
	ld   a, h                                        ; $59fc: $7c
	db   $e4                                         ; $59fd: $e4
	call nz, Call_047_5ad8                           ; $59fe: $c4 $d8 $5a
	ld   e, a                                        ; $5a01: $5f
	and  b                                           ; $5a02: $a0
	dec  c                                           ; $5a03: $0d
	ld   e, b                                        ; $5a04: $58
	ld   [bc], a                                     ; $5a05: $02
	add  b                                           ; $5a06: $80
	ld   d, d                                        ; $5a07: $52
	ld   h, l                                        ; $5a08: $65
	adc  h                                           ; $5a09: $8c
	ld   h, a                                        ; $5a0a: $67
	ld   a, e                                        ; $5a0b: $7b
	sbc  a                                           ; $5a0c: $9f
	dec  c                                           ; $5a0d: $0d
	nop                                              ; $5a0e: $00
	ld   a, [bc]                                     ; $5a0f: $0a
	dec  c                                           ; $5a10: $0d
	nop                                              ; $5a11: $00
	nop                                              ; $5a12: $00
	rrca                                             ; $5a13: $0f
	nop                                              ; $5a14: $00
	ld   bc, $0b0c                                   ; $5a15: $01 $0c $0b
	inc  e                                           ; $5a18: $1c
	ld   bc, $0101                                   ; $5a19: $01 $01 $01
	ld   bc, $5483                                   ; $5a1c: $01 $83 $54
	sbc  [hl]                                        ; $5a1f: $9e
	inc  bc                                          ; $5a20: $03
	ld   a, [hl]                                     ; $5a21: $7e
	sbc  l                                           ; $5a22: $9d
	sbc  b                                           ; $5a23: $98
	ld   [hl], l                                     ; $5a24: $75
	ld   h, a                                        ; $5a25: $67
	sbc  a                                           ; $5a26: $9f
	dec  c                                           ; $5a27: $0d
	ld   d, b                                        ; $5a28: $50
	sbc  b                                           ; $5a29: $98
	ld   e, d                                        ; $5a2a: $5a
	halt                                             ; $5a2b: $76
	ld   d, h                                        ; $5a2c: $54
	ld   h, d                                        ; $5a2d: $62
	ld   h, h                                        ; $5a2e: $64
	ld   d, d                                        ; $5a2f: $52
	adc  h                                           ; $5a30: $8c
	ld   h, l                                        ; $5a31: $65
	ld   l, l                                        ; $5a32: $6d
	sbc  a                                           ; $5a33: $9f
	dec  c                                           ; $5a34: $0d
	nop                                              ; $5a35: $00
	ld   a, [bc]                                     ; $5a36: $0a
	ld   bc, $0008                                   ; $5a37: $01 $08 $00
	ld   h, e                                        ; $5a3a: $63
	and  c                                           ; $5a3b: $a1
	ld   a, h                                        ; $5a3c: $7c
	ld   e, b                                        ; $5a3d: $58
	ld   e, c                                        ; $5a3e: $59
	ld   h, b                                        ; $5a3f: $60
	ld   [hl], l                                     ; $5a40: $75
	dec  c                                           ; $5a41: $0d
	inc  bc                                          ; $5a42: $03
	ld   [hl], b                                     ; $5a43: $70
	ld   e, l                                        ; $5a44: $5d
	inc  bc                                          ; $5a45: $03
	ld   a, [hl]                                     ; $5a46: $7e
	sbc  l                                           ; $5a47: $9d
	sbc  b                                           ; $5a48: $98
	adc  h                                           ; $5a49: $8c
	ld   h, l                                        ; $5a4a: $65
	ld   l, l                                        ; $5a4b: $6d
	sbc  a                                           ; $5a4c: $9f
	dec  c                                           ; $5a4d: $0d
	ld   h, d                                        ; $5a4e: $62
	ld   [bc], a                                     ; $5a4f: $02
	sub  h                                           ; $5a50: $94
	dec  b                                           ; $5a51: $05
	rrca                                             ; $5a52: $0f
	ld   h, e                                        ; $5a53: $63
	adc  h                                           ; $5a54: $8c
	ld   [hl], l                                     ; $5a55: $75
	ld   h, l                                        ; $5a56: $65
	ld   l, l                                        ; $5a57: $6d
	sbc  a                                           ; $5a58: $9f
	dec  c                                           ; $5a59: $0d
	nop                                              ; $5a5a: $00
	ld   a, [bc]                                     ; $5a5b: $0a
	dec  c                                           ; $5a5c: $0d
	nop                                              ; $5a5d: $00
	nop                                              ; $5a5e: $00
	rrca                                             ; $5a5f: $0f
	nop                                              ; $5a60: $00
	ld   bc, $1e09                                   ; $5a61: $01 $09 $1e
	nop                                              ; $5a64: $00
	rrca                                             ; $5a65: $0f
	nop                                              ; $5a66: $00
	ld   bc, $6201                                   ; $5a67: $01 $01 $62
	ld   [bc], a                                     ; $5a6a: $02
	sub  h                                           ; $5a6b: $94
	dec  b                                           ; $5a6c: $05
	rrca                                             ; $5a6d: $0f
	ld   h, e                                        ; $5a6e: $63
	adc  h                                           ; $5a6f: $8c
	ld   [hl], l                                     ; $5a70: $75
	ld   h, a                                        ; $5a71: $67
	sbc  [hl]                                        ; $5a72: $9e
	ld   h, e                                        ; $5a73: $63
	ld   e, l                                        ; $5a74: $5d
	sub  a                                           ; $5a75: $97
	ld   h, e                                        ; $5a76: $63
	and  c                                           ; $5a77: $a1
	sbc  a                                           ; $5a78: $9f
	dec  c                                           ; $5a79: $0d
	nop                                              ; $5a7a: $00
	ld   a, [bc]                                     ; $5a7b: $0a
	inc  e                                           ; $5a7c: $1c
	ld   bc, $0101                                   ; $5a7d: $01 $01 $01
	ld   bc, $9e50                                   ; $5a80: $01 $50 $9e
	ld   [$6300], sp                                 ; $5a83: $08 $00 $63
	and  c                                           ; $5a86: $a1
	sbc  a                                           ; $5a87: $9f
	dec  c                                           ; $5a88: $0d
	ld   e, b                                        ; $5a89: $58
	inc  b                                           ; $5a8a: $04
	ld   a, e                                        ; $5a8b: $7b
	sbc  d                                           ; $5a8c: $9a
	ld   h, e                                        ; $5a8d: $63
	adc  h                                           ; $5a8e: $8c
	ld   [hl], l                                     ; $5a8f: $75
	ld   h, a                                        ; $5a90: $67
	sbc  a                                           ; $5a91: $9f
	dec  c                                           ; $5a92: $0d
	nop                                              ; $5a93: $00
	ld   a, [bc]                                     ; $5a94: $0a
	nop                                              ; $5a95: $00
	rrca                                             ; $5a96: $0f
	nop                                              ; $5a97: $00
	ld   bc, $6301                                   ; $5a98: $01 $01 $63
	ld   e, l                                        ; $5a9b: $5d
	sub  a                                           ; $5a9c: $97
	ld   h, e                                        ; $5a9d: $63
	and  c                                           ; $5a9e: $a1
	sbc  a                                           ; $5a9f: $9f
	dec  c                                           ; $5aa0: $0d
	inc  b                                           ; $5aa1: $04
	ld   c, c                                        ; $5aa2: $49
	ld   e, c                                        ; $5aa3: $59
	inc  bc                                          ; $5aa4: $03
	add  e                                           ; $5aa5: $83
	inc  b                                           ; $5aa6: $04
	sbc  b                                           ; $5aa7: $98
	ld   h, l                                        ; $5aa8: $65
	ld   l, l                                        ; $5aa9: $6d
	and  c                                           ; $5aaa: $a1
	ld   [hl], l                                     ; $5aab: $75
	ld   h, a                                        ; $5aac: $67
	ld   e, c                                        ; $5aad: $59
	ld   sp, hl                                      ; $5aae: $f9
	dec  c                                           ; $5aaf: $0d
	nop                                              ; $5ab0: $00
	ld   a, [bc]                                     ; $5ab1: $0a
	inc  e                                           ; $5ab2: $1c
	ld   bc, $0303                                   ; $5ab3: $01 $03 $03
	ld   bc, $f956                                   ; $5ab6: $01 $56 $f9
	dec  c                                           ; $5ab9: $0d
	inc  b                                           ; $5aba: $04
	ld   c, c                                        ; $5abb: $49
	ld   [hl], l                                     ; $5abc: $75
	ld   [hl], l                                     ; $5abd: $75
	ld   h, a                                        ; $5abe: $67
	ld   e, c                                        ; $5abf: $59
	ld   sp, hl                                      ; $5ac0: $f9
	dec  c                                           ; $5ac1: $0d
	nop                                              ; $5ac2: $00
	ld   a, [bc]                                     ; $5ac3: $0a
	rrca                                             ; $5ac4: $0f
	nop                                              ; $5ac5: $00
	ld   bc, $6b01                                   ; $5ac6: $01 $01 $6b
	ld   a, h                                        ; $5ac9: $7c
	ld   l, e                                        ; $5aca: $6b
	ld   d, h                                        ; $5acb: $54
	ld   h, [hl]                                     ; $5acc: $66
	rst  $38                                         ; $5acd: $ff
	rst  $38                                         ; $5ace: $ff
	dec  c                                           ; $5acf: $0d
	inc  b                                           ; $5ad0: $04
	ld   c, c                                        ; $5ad1: $49
	ld   e, c                                        ; $5ad2: $59
	ld   a, h                                        ; $5ad3: $7c
	pop  de                                          ; $5ad4: $d1
	push bc                                          ; $5ad5: $c5
	ld   e, c                                        ; $5ad6: $59
	halt                                             ; $5ad7: $76

Call_047_5ad8:
	dec  b                                           ; $5ad8: $05
	pop  de                                          ; $5ad9: $d1
	ld   [hl], c                                     ; $5ada: $71
	ld   [hl], h                                     ; $5adb: $74
	rst  $38                                         ; $5adc: $ff
	rst  $38                                         ; $5add: $ff
	dec  c                                           ; $5ade: $0d
	nop                                              ; $5adf: $00
	ld   a, [bc]                                     ; $5ae0: $0a
	inc  e                                           ; $5ae1: $1c
	ld   bc, $0202                                   ; $5ae2: $01 $02 $02
	dec  e                                           ; $5ae5: $1d
	ld   b, b                                        ; $5ae6: $40
	ld   de, $1103                                   ; $5ae7: $11 $03 $11
	ld   bc, $2903                                   ; $5aea: $01 $03 $29
	nop                                              ; $5aed: $00
	ld   bc, $9a61                                   ; $5aee: $01 $61 $9a
	ld   a, l                                        ; $5af1: $7d
	sbc  [hl]                                        ; $5af2: $9e
	ld   e, b                                        ; $5af3: $58
	inc  bc                                          ; $5af4: $03
	dec  c                                           ; $5af5: $0d
	ld   [bc], a                                     ; $5af6: $02
	jp   Jump_047_6775                               ; $5af7: $c3 $75 $67


	ld   a, [$000d]                                  ; $5afa: $fa $0d $00
	dec  b                                           ; $5afd: $05
	ld   b, b                                        ; $5afe: $40
	ld   c, b                                        ; $5aff: $48
	ld   [bc], a                                     ; $5b00: $02
	nop                                              ; $5b01: $00
	nop                                              ; $5b02: $00
	ld   bc, $8d67                                   ; $5b03: $01 $67 $8d
	adc  h                                           ; $5b06: $8c
	ld   l, c                                        ; $5b07: $69
	and  c                                           ; $5b08: $a1
	ld   e, d                                        ; $5b09: $5a
	sbc  [hl]                                        ; $5b0a: $9e
	ld   l, e                                        ; $5b0b: $6b
	ld   d, h                                        ; $5b0c: $54
	ld   h, [hl]                                     ; $5b0d: $66
	ld   a, h                                        ; $5b0e: $7c
	dec  c                                           ; $5b0f: $0d
	nop                                              ; $5b10: $00
	dec  b                                           ; $5b11: $05
	ld   b, b                                        ; $5b12: $40
	ld   c, [hl]                                     ; $5b13: $4e
	ld   bc, $0001                                   ; $5b14: $01 $01 $00
	ld   bc, $9166                                   ; $5b17: $01 $66 $91
	adc  h                                           ; $5b1a: $8c
	and  b                                           ; $5b1b: $a0
	ld   h, l                                        ; $5b1c: $65
	ld   a, b                                        ; $5b1d: $78
	ld   d, d                                        ; $5b1e: $52
	ld   [hl], l                                     ; $5b1f: $75
	ld   [bc], a                                     ; $5b20: $02
	inc  [hl]                                        ; $5b21: $34
	ld   h, e                                        ; $5b22: $63
	ld   d, d                                        ; $5b23: $52
	ld   a, [$000d]                                  ; $5b24: $fa $0d $00
	ld   a, [bc]                                     ; $5b27: $0a
	nop                                              ; $5b28: $00
	inc  e                                           ; $5b29: $1c
	ld   bc, $0000                                   ; $5b2a: $01 $00 $00
	ld   bc, $9e50                                   ; $5b2d: $01 $50 $9e
	ld   [$6300], sp                                 ; $5b30: $08 $00 $63
	and  c                                           ; $5b33: $a1
	sbc  a                                           ; $5b34: $9f
	dec  c                                           ; $5b35: $0d
	ld   [hl], a                                     ; $5b36: $77
	ld   d, h                                        ; $5b37: $54
	ld   h, l                                        ; $5b38: $65
	ld   l, l                                        ; $5b39: $6d
	and  c                                           ; $5b3a: $a1
	ld   [hl], l                                     ; $5b3b: $75
	ld   h, a                                        ; $5b3c: $67
	ld   e, c                                        ; $5b3d: $59
	ld   sp, hl                                      ; $5b3e: $f9
	dec  c                                           ; $5b3f: $0d
	nop                                              ; $5b40: $00
	ld   a, [bc]                                     ; $5b41: $0a
	ld   bc, $8d67                                   ; $5b42: $01 $67 $8d
	adc  h                                           ; $5b45: $8c
	ld   l, c                                        ; $5b46: $69
	and  c                                           ; $5b47: $a1
	sbc  [hl]                                        ; $5b48: $9e
	ld   l, e                                        ; $5b49: $6b
	ld   d, h                                        ; $5b4a: $54
	ld   h, [hl]                                     ; $5b4b: $66
	inc  b                                           ; $5b4c: $04
	dec  bc                                          ; $5b4d: $0b
	ld   a, b                                        ; $5b4e: $78
	ld   a, h                                        ; $5b4f: $7c
	ld   [hl], l                                     ; $5b50: $75
	dec  c                                           ; $5b51: $0d
	adc  h                                           ; $5b52: $8c
	ld   l, l                                        ; $5b53: $6d
	ld   [bc], a                                     ; $5b54: $02
	xor  d                                           ; $5b55: $aa
	ld   a, c                                        ; $5b56: $79
	ld   h, l                                        ; $5b57: $65
	ld   [hl], h                                     ; $5b58: $74
	ld   [bc], a                                     ; $5b59: $02
	inc  [hl]                                        ; $5b5a: $34
	ld   h, e                                        ; $5b5b: $63
	ld   d, d                                        ; $5b5c: $52
	sbc  a                                           ; $5b5d: $9f
	dec  c                                           ; $5b5e: $0d
	nop                                              ; $5b5f: $00
	ld   a, [bc]                                     ; $5b60: $0a
	nop                                              ; $5b61: $00
	nop                                              ; $5b62: $00
	ld   c, $2f                                      ; $5b63: $0e $2f
	ld   [bc], a                                     ; $5b65: $02
	inc  e                                           ; $5b66: $1c
	dec  c                                           ; $5b67: $0d
	ld   bc, $0101                                   ; $5b68: $01 $01 $01
	ld   d, b                                        ; $5b6b: $50
	sub  a                                           ; $5b6c: $97
	sbc  [hl]                                        ; $5b6d: $9e
	ld   [$5d00], sp                                 ; $5b6e: $08 $00 $5d
	and  c                                           ; $5b71: $a1
	sbc  a                                           ; $5b72: $9f
	dec  c                                           ; $5b73: $0d
	ld   l, a                                        ; $5b74: $6f
	sub  l                                           ; $5b75: $95
	ld   d, h                                        ; $5b76: $54
	ld   [hl], a                                     ; $5b77: $77
	ld   d, d                                        ; $5b78: $52
	ld   d, d                                        ; $5b79: $52
	halt                                             ; $5b7a: $76
	ld   h, c                                        ; $5b7b: $61
	sbc  e                                           ; $5b7c: $9b
	ld   a, c                                        ; $5b7d: $79
	sbc  a                                           ; $5b7e: $9f
	dec  c                                           ; $5b7f: $0d
	ld   l, a                                        ; $5b80: $6f
	sub  l                                           ; $5b81: $95
	ld   [hl], c                                     ; $5b82: $71
	halt                                             ; $5b83: $76
	inc  bc                                          ; $5b84: $03
	ld   l, e                                        ; $5b85: $6b
	inc  b                                           ; $5b86: $04
	ld   [de], a                                     ; $5b87: $12
	ld   [hl], c                                     ; $5b88: $71
	ld   [hl], h                                     ; $5b89: $74
	ld   e, l                                        ; $5b8a: $5d
	sbc  d                                           ; $5b8b: $9a
	ld   a, b                                        ; $5b8c: $78
	ld   d, d                                        ; $5b8d: $52
	ld   sp, hl                                      ; $5b8e: $f9
	dec  c                                           ; $5b8f: $0d
	nop                                              ; $5b90: $00
	ld   a, [bc]                                     ; $5b91: $0a
	add  hl, de                                      ; $5b92: $19
	dec  b                                           ; $5b93: $05
	ld   [bc], a                                     ; $5b94: $02
	ld   a, l                                        ; $5b95: $7d
	ld   d, d                                        ; $5b96: $52
	nop                                              ; $5b97: $00
	nop                                              ; $5b98: $00
	ld   d, d                                        ; $5b99: $52
	ld   d, d                                        ; $5b9a: $52
	ld   d, [hl]                                     ; $5b9b: $56
	nop                                              ; $5b9c: $00
	ld   bc, $ab07                                   ; $5b9d: $01 $07 $ab
	nop                                              ; $5ba0: $00
	ld   [bc], a                                     ; $5ba1: $02
	inc  bc                                          ; $5ba2: $03
	ld   bc, $2000                                   ; $5ba3: $01 $00 $20
	nop                                              ; $5ba6: $00
	rlca                                             ; $5ba7: $07
	ld   d, b                                        ; $5ba8: $50
	nop                                              ; $5ba9: $00
	ld   [bc], a                                     ; $5baa: $02
	inc  bc                                          ; $5bab: $03
	ld   bc, $2001                                   ; $5bac: $01 $01 $20
	nop                                              ; $5baf: $00
	ld   b, $89                                      ; $5bb0: $06 $89
	nop                                              ; $5bb2: $00
	rrca                                             ; $5bb3: $0f
	nop                                              ; $5bb4: $00
	ld   bc, $6701                                   ; $5bb5: $01 $01 $67
	adc  l                                           ; $5bb8: $8d
	adc  h                                           ; $5bb9: $8c
	ld   l, c                                        ; $5bba: $69
	and  c                                           ; $5bbb: $a1
	sbc  a                                           ; $5bbc: $9f
	dec  c                                           ; $5bbd: $0d
	ld   [bc], a                                     ; $5bbe: $02
	and  l                                           ; $5bbf: $a5
	ld   l, a                                        ; $5bc0: $6f
	sub  l                                           ; $5bc1: $95
	ld   [hl], c                                     ; $5bc2: $71
	halt                                             ; $5bc3: $76
	ld   d, d                                        ; $5bc4: $52
	ld   l, e                                        ; $5bc5: $6b
	ld   e, d                                        ; $5bc6: $5a
	ld   h, l                                        ; $5bc7: $65
	ld   d, d                                        ; $5bc8: $52
	ld   a, h                                        ; $5bc9: $7c
	ld   [hl], l                                     ; $5bca: $75
	rst  $38                                         ; $5bcb: $ff
	rst  $38                                         ; $5bcc: $ff
	dec  c                                           ; $5bcd: $0d
	nop                                              ; $5bce: $00
	ld   a, [bc]                                     ; $5bcf: $0a
	inc  e                                           ; $5bd0: $1c
	dec  c                                           ; $5bd1: $0d
	nop                                              ; $5bd2: $00
	nop                                              ; $5bd3: $00
	ld   bc, $546b                                   ; $5bd4: $01 $6b $54
	sbc  [hl]                                        ; $5bd7: $9e
	ld   a, b                                        ; $5bd8: $78
	sub  a                                           ; $5bd9: $97
	inc  bc                                          ; $5bda: $03
	dec  c                                           ; $5bdb: $0d
	inc  b                                           ; $5bdc: $04
	ld   a, b                                        ; $5bdd: $78
	ld   a, b                                        ; $5bde: $78
	ld   d, d                                        ; $5bdf: $52
	sbc  l                                           ; $5be0: $9d
	ld   a, e                                        ; $5be1: $7b
	sbc  a                                           ; $5be2: $9f
	dec  c                                           ; $5be3: $0d
	adc  h                                           ; $5be4: $8c
	ld   l, l                                        ; $5be5: $6d
	ld   a, e                                        ; $5be6: $7b
	sbc  a                                           ; $5be7: $9f
	dec  c                                           ; $5be8: $0d
	nop                                              ; $5be9: $00
	ld   a, [bc]                                     ; $5bea: $0a
	nop                                              ; $5beb: $00
	rrca                                             ; $5bec: $0f
	dec  c                                           ; $5bed: $0d
	ld   bc, $0401                                   ; $5bee: $01 $01 $04
	sub  a                                           ; $5bf1: $97
	ld   [bc], a                                     ; $5bf2: $02
	jp   Jump_047_785a                               ; $5bf3: $c3 $5a $78


	ld   d, d                                        ; $5bf6: $52
	ld   [hl], c                                     ; $5bf7: $71
	ld   [hl], h                                     ; $5bf8: $74
	ld   h, c                                        ; $5bf9: $61
	halt                                             ; $5bfa: $76
	ld   a, l                                        ; $5bfb: $7d
	dec  c                                           ; $5bfc: $0d
	xor  e                                           ; $5bfd: $ab
	call nz, $fbb2                                   ; $5bfe: $c4 $b2 $fb
	ld   [hl], c                                     ; $5c01: $71
	ld   [hl], h                                     ; $5c02: $74
	ld   h, c                                        ; $5c03: $61
	halt                                             ; $5c04: $76
	sub  [hl]                                        ; $5c05: $96
	ld   a, e                                        ; $5c06: $7b
	sbc  a                                           ; $5c07: $9f
	dec  c                                           ; $5c08: $0d
	nop                                              ; $5c09: $00
	ld   a, [bc]                                     ; $5c0a: $0a
	ld   b, $bb                                      ; $5c0b: $06 $bb
	nop                                              ; $5c0d: $00
	rrca                                             ; $5c0e: $0f
	nop                                              ; $5c0f: $00
	ld   bc, $7d01                                   ; $5c10: $01 $01 $7d
	ld   d, d                                        ; $5c13: $52
	sbc  [hl]                                        ; $5c14: $9e
	ld   d, d                                        ; $5c15: $52
	ld   d, d                                        ; $5c16: $52
	ld   [hl], l                                     ; $5c17: $75
	ld   h, a                                        ; $5c18: $67
	sub  [hl]                                        ; $5c19: $96
	sbc  a                                           ; $5c1a: $9f
	dec  c                                           ; $5c1b: $0d
	nop                                              ; $5c1c: $00
	ld   a, [bc]                                     ; $5c1d: $0a
	inc  e                                           ; $5c1e: $1c
	dec  c                                           ; $5c1f: $0d
	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	ld   bc, $9166                                   ; $5c22: $01 $66 $91
	ld   d, b                                        ; $5c25: $50
	sbc  [hl]                                        ; $5c26: $9e
	inc  bc                                          ; $5c27: $03
	ld   d, l                                        ; $5c28: $55
	dec  b                                           ; $5c29: $05
	ld   h, d                                        ; $5c2a: $62
	ld   a, h                                        ; $5c2b: $7c
	inc  bc                                          ; $5c2c: $03
	ld   a, h                                        ; $5c2d: $7c
	dec  b                                           ; $5c2e: $05
	ld   de, $0da0                                   ; $5c2f: $11 $a0 $0d
	inc  bc                                          ; $5c32: $03
	ld   l, e                                        ; $5c33: $6b
	inc  b                                           ; $5c34: $04
	ld   [de], a                                     ; $5c35: $12
	ld   [hl], c                                     ; $5c36: $71
	ld   [hl], h                                     ; $5c37: $74
	ld   e, l                                        ; $5c38: $5d
	sbc  d                                           ; $5c39: $9a
	ld   a, b                                        ; $5c3a: $78
	ld   d, d                                        ; $5c3b: $52
	sbc  a                                           ; $5c3c: $9f
	dec  c                                           ; $5c3d: $0d
	nop                                              ; $5c3e: $00
	ld   a, [bc]                                     ; $5c3f: $0a
	ld   bc, $6d50                                   ; $5c40: $01 $50 $6d
	ld   h, l                                        ; $5c43: $65
	ld   e, d                                        ; $5c44: $5a
	inc  bc                                          ; $5c45: $03
	ld   [$0367], a                                  ; $5c46: $ea $67 $03
	ld   d, l                                        ; $5c49: $55
	dec  b                                           ; $5c4a: $05
	ld   h, d                                        ; $5c4b: $62
	and  b                                           ; $5c4c: $a0
	sbc  [hl]                                        ; $5c4d: $9e
	dec  c                                           ; $5c4e: $0d
	ld   [bc], a                                     ; $5c4f: $02
	and  l                                           ; $5c50: $a5
	ld   e, c                                        ; $5c51: $59
	sub  a                                           ; $5c52: $97
	ld   d, d                                        ; $5c53: $52
	ld   d, h                                        ; $5c54: $54
	inc  b                                           ; $5c55: $04
	ld   a, d                                        ; $5c56: $7a
	inc  bc                                          ; $5c57: $03
	ld   c, e                                        ; $5c58: $4b
	ld   a, c                                        ; $5c59: $79
	dec  c                                           ; $5c5a: $0d
	inc  b                                           ; $5c5b: $04
	ld   b, l                                        ; $5c5c: $45
	sbc  d                                           ; $5c5d: $9a
	ld   [hl], h                                     ; $5c5e: $74
	adc  c                                           ; $5c5f: $89
	ld   h, l                                        ; $5c60: $65
	ld   d, d                                        ; $5c61: $52
	ld   a, h                                        ; $5c62: $7c
	sbc  a                                           ; $5c63: $9f
	dec  c                                           ; $5c64: $0d
	nop                                              ; $5c65: $00
	ld   a, [bc]                                     ; $5c66: $0a
	ld   bc, $5503                                   ; $5c67: $01 $03 $55
	dec  b                                           ; $5c6a: $05
	ld   h, d                                        ; $5c6b: $62
	ld   a, l                                        ; $5c6c: $7d
	sbc  [hl]                                        ; $5c6d: $9e
	inc  bc                                          ; $5c6e: $03
	dec  bc                                          ; $5c6f: $0b
	inc  b                                           ; $5c70: $04
	sbc  [hl]                                        ; $5c71: $9e
	ld   e, a                                        ; $5c72: $5f
	ld   h, e                                        ; $5c73: $63
	sbc  d                                           ; $5c74: $9a
	ld   l, l                                        ; $5c75: $6d
	ld   b, $13                                      ; $5c76: $06 $13
	ld   b, $50                                      ; $5c78: $06 $50
	ld   a, c                                        ; $5c7a: $79
	dec  c                                           ; $5c7b: $0d
	inc  b                                           ; $5c7c: $04
	ld   b, l                                        ; $5c7d: $45
	ld   [hl], c                                     ; $5c7e: $71
	ld   [hl], h                                     ; $5c7f: $74
	ld   d, d                                        ; $5c80: $52
	sbc  c                                           ; $5c81: $99
	ld   e, c                                        ; $5c82: $59
	sub  a                                           ; $5c83: $97
	sbc  [hl]                                        ; $5c84: $9e
	inc  bc                                          ; $5c85: $03
	dec  bc                                          ; $5c86: $0b
	ld   [hl], l                                     ; $5c87: $75
	inc  bc                                          ; $5c88: $03
	ld   a, [hl+]                                    ; $5c89: $2a
	inc  bc                                          ; $5c8a: $03
	add  hl, hl                                      ; $5c8b: $29
	dec  c                                           ; $5c8c: $0d
	ld   h, a                                        ; $5c8d: $67
	sbc  c                                           ; $5c8e: $99
	sbc  l                                           ; $5c8f: $9d
	ld   a, e                                        ; $5c90: $7b
	sbc  a                                           ; $5c91: $9f
	dec  c                                           ; $5c92: $0d
	nop                                              ; $5c93: $00
	ld   a, [bc]                                     ; $5c94: $0a
	ld   bc, $020a                                   ; $5c95: $01 $0a $02
	ld   d, b                                        ; $5c98: $50
	ld   e, c                                        ; $5c99: $59
	ld   d, d                                        ; $5c9a: $52
	ld   b, $13                                      ; $5c9b: $06 $13
	ld   b, $50                                      ; $5c9d: $06 $50
	ld   a, [bc]                                     ; $5c9f: $0a
	inc  bc                                          ; $5ca0: $03
	ld   a, l                                        ; $5ca1: $7d
	sbc  [hl]                                        ; $5ca2: $9e
	ld   a, [bc]                                     ; $5ca3: $0a
	ld   [bc], a                                     ; $5ca4: $02
	ld   l, l                                        ; $5ca5: $6d
	ld   a, b                                        ; $5ca6: $78
	inc  bc                                          ; $5ca7: $03
	ld   h, l                                        ; $5ca8: $65
	inc  bc                                          ; $5ca9: $03
	ret  nc                                          ; $5caa: $d0

	ld   a, [bc]                                     ; $5cab: $0a
	inc  bc                                          ; $5cac: $03
	ld   a, c                                        ; $5cad: $79
	sbc  a                                           ; $5cae: $9f
	dec  c                                           ; $5caf: $0d
	ld   a, [bc]                                     ; $5cb0: $0a
	ld   [bc], a                                     ; $5cb1: $02
	adc  l                                           ; $5cb2: $8d
	ld   [hl], a                                     ; $5cb3: $77
	sbc  b                                           ; $5cb4: $98
	ld   a, h                                        ; $5cb5: $7c
	ld   b, $13                                      ; $5cb6: $06 $13
	ld   b, $50                                      ; $5cb8: $06 $50
	ld   a, [bc]                                     ; $5cba: $0a
	inc  bc                                          ; $5cbb: $03
	ld   a, l                                        ; $5cbc: $7d
	sbc  [hl]                                        ; $5cbd: $9e
	ld   a, [bc]                                     ; $5cbe: $0a
	ld   [bc], a                                     ; $5cbf: $02
	ld   l, l                                        ; $5cc0: $6d
	ld   a, b                                        ; $5cc1: $78
	inc  b                                           ; $5cc2: $04
	dec  bc                                          ; $5cc3: $0b
	inc  bc                                          ; $5cc4: $03
	ret  nc                                          ; $5cc5: $d0

	ld   a, [bc]                                     ; $5cc6: $0a
	inc  bc                                          ; $5cc7: $03
	ld   a, c                                        ; $5cc8: $79
	sbc  a                                           ; $5cc9: $9f
	dec  c                                           ; $5cca: $0d
	ld   a, [bc]                                     ; $5ccb: $0a
	ld   [bc], a                                     ; $5ccc: $02
	ld   h, l                                        ; $5ccd: $65
	sbc  e                                           ; $5cce: $9b
	ld   d, d                                        ; $5ccf: $52
	ld   b, $13                                      ; $5cd0: $06 $13
	ld   b, $50                                      ; $5cd2: $06 $50
	ld   a, [bc]                                     ; $5cd4: $0a
	inc  bc                                          ; $5cd5: $03
	ld   a, l                                        ; $5cd6: $7d
	sbc  [hl]                                        ; $5cd7: $9e
	ld   a, [bc]                                     ; $5cd8: $0a
	ld   [bc], a                                     ; $5cd9: $02
	inc  b                                           ; $5cda: $04
	add  a                                           ; $5cdb: $87
	ld   a, h                                        ; $5cdc: $7c
	inc  b                                           ; $5cdd: $04
	dec  bc                                          ; $5cde: $0b
	ld   a, [bc]                                     ; $5cdf: $0a
	inc  bc                                          ; $5ce0: $03
	ld   a, c                                        ; $5ce1: $79
	ld   a, e                                        ; $5ce2: $7b
	sbc  a                                           ; $5ce3: $9f
	dec  c                                           ; $5ce4: $0d
	nop                                              ; $5ce5: $00
	ld   a, [bc]                                     ; $5ce6: $0a
	ld   bc, $546b                                   ; $5ce7: $01 $6b $54
	ld   l, e                                        ; $5cea: $6b
	ld   d, h                                        ; $5ceb: $54
	sbc  [hl]                                        ; $5cec: $9e
	ld   bc, $7d07                                   ; $5ced: $01 $07 $7d
	ld   e, e                                        ; $5cf0: $5b
	ld   bc, $7108                                   ; $5cf1: $01 $08 $71
	ld   [hl], h                                     ; $5cf4: $74
	ld   [bc], a                                     ; $5cf5: $02
	sbc  l                                           ; $5cf6: $9d
	ld   [hl], c                                     ; $5cf7: $71
	dec  c                                           ; $5cf8: $0d
	ld   l, l                                        ; $5cf9: $6d
	sub  a                                           ; $5cfa: $97
	sbc  [hl]                                        ; $5cfb: $9e
	ld   a, [bc]                                     ; $5cfc: $0a
	ld   [bc], a                                     ; $5cfd: $02
	ld   l, a                                        ; $5cfe: $6f
	ld   e, h                                        ; $5cff: $5c
	ld   [hl], c                                     ; $5d00: $71
	ld   [hl], h                                     ; $5d01: $74
	or   l                                           ; $5d02: $b5
	ldh  [rDIV], a                                   ; $5d03: $e0 $04
	add  a                                           ; $5d05: $87
	add  [hl]                                        ; $5d06: $86
	ld   a, [bc]                                     ; $5d07: $0a
	inc  bc                                          ; $5d08: $03
	dec  c                                           ; $5d09: $0d
	ld   h, a                                        ; $5d0a: $67
	ld   [hl], h                                     ; $5d0b: $74
	ld   [hl], h                                     ; $5d0c: $74
	ld   a, e                                        ; $5d0d: $7b
	sbc  a                                           ; $5d0e: $9f
	dec  c                                           ; $5d0f: $0d
	nop                                              ; $5d10: $00
	ld   a, [bc]                                     ; $5d11: $0a
	ld   bc, $9166                                   ; $5d12: $01 $66 $91
	sbc  [hl]                                        ; $5d15: $9e
	ld   d, d                                        ; $5d16: $52
	ld   e, l                                        ; $5d17: $5d
	sbc  l                                           ; $5d18: $9d
	sub  [hl]                                        ; $5d19: $96
	sbc  a                                           ; $5d1a: $9f
	dec  c                                           ; $5d1b: $0d
	adc  h                                           ; $5d1c: $8c
	ld   l, b                                        ; $5d1d: $68
	ld   a, l                                        ; $5d1e: $7d
	sbc  [hl]                                        ; $5d1f: $9e
	ld   d, b                                        ; $5d20: $50
	ld   e, c                                        ; $5d21: $59
	ld   d, d                                        ; $5d22: $52
	ld   b, $13                                      ; $5d23: $06 $13
	ld   b, $50                                      ; $5d25: $06 $50
	inc  d                                           ; $5d27: $14
	ld   [hl], d                                     ; $5d28: $72
	sbc  a                                           ; $5d29: $9f
	dec  c                                           ; $5d2a: $0d
	nop                                              ; $5d2b: $00
	ld   a, [bc]                                     ; $5d2c: $0a
	add  hl, de                                      ; $5d2d: $19
	dec  b                                           ; $5d2e: $05
	inc  bc                                          ; $5d2f: $03
	ld   l, l                                        ; $5d30: $6d
	ld   a, b                                        ; $5d31: $78
	inc  bc                                          ; $5d32: $03
	ld   h, l                                        ; $5d33: $65
	inc  bc                                          ; $5d34: $03
	ret  nc                                          ; $5d35: $d0

	ld   a, c                                        ; $5d36: $79
	inc  b                                           ; $5d37: $04
	ld   b, l                                        ; $5d38: $45
	sbc  d                                           ; $5d39: $9a
	sbc  c                                           ; $5d3a: $99
	nop                                              ; $5d3b: $00
	nop                                              ; $5d3c: $00
	inc  b                                           ; $5d3d: $04
	add  a                                           ; $5d3e: $87
	ld   a, h                                        ; $5d3f: $7c
	inc  b                                           ; $5d40: $04
	dec  bc                                          ; $5d41: $0b
	add  [hl]                                        ; $5d42: $86
	inc  b                                           ; $5d43: $04
	ld   b, l                                        ; $5d44: $45
	sbc  d                                           ; $5d45: $9a
	sbc  c                                           ; $5d46: $99
	nop                                              ; $5d47: $00
	ld   bc, $786d                                   ; $5d48: $01 $6d $78
	ld   [bc], a                                     ; $5d4b: $02
	inc  [hl]                                        ; $5d4c: $34
	inc  bc                                          ; $5d4d: $03
	ret  nc                                          ; $5d4e: $d0

	ld   a, c                                        ; $5d4f: $79
	inc  b                                           ; $5d50: $04
	ld   b, l                                        ; $5d51: $45
	sbc  d                                           ; $5d52: $9a
	sbc  c                                           ; $5d53: $99
	nop                                              ; $5d54: $00
	ld   [bc], a                                     ; $5d55: $02
	rlca                                             ; $5d56: $07
	ld   de, $0202                                   ; $5d57: $11 $02 $02
	inc  bc                                          ; $5d5a: $03
	ld   bc, $2000                                   ; $5d5b: $01 $00 $20
	nop                                              ; $5d5e: $00
	rlca                                             ; $5d5f: $07
	ld   b, e                                        ; $5d60: $43
	ld   [bc], a                                     ; $5d61: $02
	ld   [bc], a                                     ; $5d62: $02
	inc  bc                                          ; $5d63: $03
	ld   bc, $2001                                   ; $5d64: $01 $01 $20
	nop                                              ; $5d67: $00
	rlca                                             ; $5d68: $07
	ld   b, e                                        ; $5d69: $43
	ld   [bc], a                                     ; $5d6a: $02
	ld   [bc], a                                     ; $5d6b: $02
	inc  bc                                          ; $5d6c: $03
	ld   bc, $2002                                   ; $5d6d: $01 $02 $20
	nop                                              ; $5d70: $00
	ld   b, $66                                      ; $5d71: $06 $66
	ld   [bc], a                                     ; $5d73: $02
	inc  e                                           ; $5d74: $1c
	dec  c                                           ; $5d75: $0d
	ld   bc, $0101                                   ; $5d76: $01 $01 $01
	ld   l, e                                        ; $5d79: $6b
	ld   d, h                                        ; $5d7a: $54
	ld   l, e                                        ; $5d7b: $6b
	ld   d, h                                        ; $5d7c: $54
	sbc  [hl]                                        ; $5d7d: $9e
	dec  c                                           ; $5d7e: $0d
	ld   d, b                                        ; $5d7f: $50
	ld   e, c                                        ; $5d80: $59
	ld   d, d                                        ; $5d81: $52
	ld   b, $13                                      ; $5d82: $06 $13
	ld   b, $50                                      ; $5d84: $06 $50
	ld   a, l                                        ; $5d86: $7d
	sbc  [hl]                                        ; $5d87: $9e
	ld   l, l                                        ; $5d88: $6d
	ld   a, b                                        ; $5d89: $78
	inc  bc                                          ; $5d8a: $03
	ld   h, l                                        ; $5d8b: $65
	inc  bc                                          ; $5d8c: $03
	ret  nc                                          ; $5d8d: $d0

	sbc  a                                           ; $5d8e: $9f
	dec  c                                           ; $5d8f: $0d
	nop                                              ; $5d90: $00
	dec  b                                           ; $5d91: $05
	ld   b, b                                        ; $5d92: $40
	rst  $38                                         ; $5d93: $ff
	inc  bc                                          ; $5d94: $03
	rst  $38                                         ; $5d95: $ff
	ld   bc, $2801                                   ; $5d96: $01 $01 $28
	nop                                              ; $5d99: $00
	ld   bc, $5252                                   ; $5d9a: $01 $52 $52
	sbc  l                                           ; $5d9d: $9d
	sub  [hl]                                        ; $5d9e: $96
	sbc  a                                           ; $5d9f: $9f
	dec  c                                           ; $5da0: $0d
	nop                                              ; $5da1: $00
	ld   a, [bc]                                     ; $5da2: $0a
	ld   b, $97                                      ; $5da3: $06 $97
	ld   [bc], a                                     ; $5da5: $02
	inc  e                                           ; $5da6: $1c
	dec  c                                           ; $5da7: $0d
	ld   [bc], a                                     ; $5da8: $02
	ld   [bc], a                                     ; $5da9: $02
	ld   bc, $5a6f                                   ; $5daa: $01 $6f $5a
	ld   d, h                                        ; $5dad: $54
	sbc  l                                           ; $5dae: $9d
	sub  [hl]                                        ; $5daf: $96
	sbc  a                                           ; $5db0: $9f
	dec  c                                           ; $5db1: $0d
	ld   d, b                                        ; $5db2: $50
	ld   e, c                                        ; $5db3: $59
	ld   d, d                                        ; $5db4: $52
	ld   b, $13                                      ; $5db5: $06 $13
	ld   b, $50                                      ; $5db7: $06 $50
	ld   a, l                                        ; $5db9: $7d
	sbc  [hl]                                        ; $5dba: $9e
	ld   l, l                                        ; $5dbb: $6d
	ld   a, b                                        ; $5dbc: $78
	inc  bc                                          ; $5dbd: $03
	ld   h, l                                        ; $5dbe: $65
	inc  bc                                          ; $5dbf: $03
	ret  nc                                          ; $5dc0: $d0

	sub  [hl]                                        ; $5dc1: $96
	sbc  a                                           ; $5dc2: $9f
	dec  c                                           ; $5dc3: $0d
	nop                                              ; $5dc4: $00
	ld   a, [bc]                                     ; $5dc5: $0a
	ld   b, $97                                      ; $5dc6: $06 $97
	ld   [bc], a                                     ; $5dc8: $02
	inc  e                                           ; $5dc9: $1c
	dec  c                                           ; $5dca: $0d
	ld   [bc], a                                     ; $5dcb: $02
	ld   [bc], a                                     ; $5dcc: $02
	ld   bc, $5950                                   ; $5dcd: $01 $50 $59
	ld   d, d                                        ; $5dd0: $52
	ld   b, $13                                      ; $5dd1: $06 $13
	ld   b, $50                                      ; $5dd3: $06 $50
	ld   a, l                                        ; $5dd5: $7d
	sbc  [hl]                                        ; $5dd6: $9e
	ld   l, l                                        ; $5dd7: $6d
	ld   a, b                                        ; $5dd8: $78
	inc  bc                                          ; $5dd9: $03
	ld   h, l                                        ; $5dda: $65
	inc  bc                                          ; $5ddb: $03
	ret  nc                                          ; $5ddc: $d0

	sbc  a                                           ; $5ddd: $9f
	dec  c                                           ; $5dde: $0d
	inc  bc                                          ; $5ddf: $03
	ld   [hl], b                                     ; $5de0: $70
	ld   e, l                                        ; $5de1: $5d
	sub  d                                           ; $5de2: $92
	sub  a                                           ; $5de3: $97
	ld   a, b                                        ; $5de4: $78
	ld   d, d                                        ; $5de5: $52
	halt                                             ; $5de6: $76
	dec  c                                           ; $5de7: $0d
	inc  b                                           ; $5de8: $04
	xor  d                                           ; $5de9: $aa
	ld   e, d                                        ; $5dea: $5a
	dec  b                                           ; $5deb: $05
	sub  a                                           ; $5dec: $97
	sbc  d                                           ; $5ded: $9a
	ld   l, a                                        ; $5dee: $6f
	sub  c                                           ; $5def: $91
	ld   d, h                                        ; $5df0: $54
	sbc  l                                           ; $5df1: $9d
	sub  [hl]                                        ; $5df2: $96
	sbc  a                                           ; $5df3: $9f
	dec  c                                           ; $5df4: $0d
	nop                                              ; $5df5: $00
	ld   a, [bc]                                     ; $5df6: $0a
	ld   b, $97                                      ; $5df7: $06 $97
	ld   [bc], a                                     ; $5df9: $02
	inc  e                                           ; $5dfa: $1c
	dec  c                                           ; $5dfb: $0d
	nop                                              ; $5dfc: $00
	nop                                              ; $5dfd: $00
	ld   bc, $6803                                   ; $5dfe: $01 $03 $68
	ld   a, l                                        ; $5e01: $7d
	sbc  [hl]                                        ; $5e02: $9e
	ld   h, l                                        ; $5e03: $65
	sbc  e                                           ; $5e04: $9b
	ld   d, d                                        ; $5e05: $52
	ld   b, $13                                      ; $5e06: $06 $13
	ld   b, $50                                      ; $5e08: $06 $50
	and  b                                           ; $5e0a: $a0
	rla                                              ; $5e0b: $17
	ld   [hl], d                                     ; $5e0c: $72
	sub  [hl]                                        ; $5e0d: $96
	sbc  a                                           ; $5e0e: $9f
	dec  c                                           ; $5e0f: $0d
	nop                                              ; $5e10: $00
	ld   a, [bc]                                     ; $5e11: $0a
	add  hl, de                                      ; $5e12: $19
	dec  b                                           ; $5e13: $05
	inc  bc                                          ; $5e14: $03
	inc  b                                           ; $5e15: $04
	add  a                                           ; $5e16: $87
	ld   a, c                                        ; $5e17: $79
	inc  b                                           ; $5e18: $04
	ld   b, l                                        ; $5e19: $45
	sbc  d                                           ; $5e1a: $9a
	sbc  c                                           ; $5e1b: $99
	nop                                              ; $5e1c: $00
	nop                                              ; $5e1d: $00
	ld   l, l                                        ; $5e1e: $6d
	ld   a, b                                        ; $5e1f: $78
	inc  bc                                          ; $5e20: $03
	ld   h, l                                        ; $5e21: $65
	inc  bc                                          ; $5e22: $03
	ret  nc                                          ; $5e23: $d0

	ld   a, c                                        ; $5e24: $79
	inc  b                                           ; $5e25: $04
	ld   b, l                                        ; $5e26: $45
	sbc  d                                           ; $5e27: $9a
	sbc  c                                           ; $5e28: $99
	nop                                              ; $5e29: $00
	ld   bc, $786d                                   ; $5e2a: $01 $6d $78
	ld   [bc], a                                     ; $5e2d: $02
	inc  [hl]                                        ; $5e2e: $34
	inc  bc                                          ; $5e2f: $03
	ret  nc                                          ; $5e30: $d0

	ld   a, c                                        ; $5e31: $79
	inc  b                                           ; $5e32: $04
	ld   b, l                                        ; $5e33: $45
	sbc  d                                           ; $5e34: $9a
	sbc  c                                           ; $5e35: $99
	nop                                              ; $5e36: $00
	ld   [bc], a                                     ; $5e37: $02
	rlca                                             ; $5e38: $07
	di                                               ; $5e39: $f3
	ld   [bc], a                                     ; $5e3a: $02
	ld   [bc], a                                     ; $5e3b: $02
	inc  bc                                          ; $5e3c: $03
	ld   bc, $2000                                   ; $5e3d: $01 $00 $20
	nop                                              ; $5e40: $00
	rlca                                             ; $5e41: $07
	daa                                              ; $5e42: $27
	inc  bc                                          ; $5e43: $03
	ld   [bc], a                                     ; $5e44: $02
	inc  bc                                          ; $5e45: $03
	ld   bc, $2001                                   ; $5e46: $01 $01 $20
	nop                                              ; $5e49: $00
	rlca                                             ; $5e4a: $07
	daa                                              ; $5e4b: $27
	inc  bc                                          ; $5e4c: $03
	ld   [bc], a                                     ; $5e4d: $02
	inc  bc                                          ; $5e4e: $03
	ld   bc, $2002                                   ; $5e4f: $01 $02 $20
	nop                                              ; $5e52: $00
	ld   b, $4b                                      ; $5e53: $06 $4b
	inc  bc                                          ; $5e55: $03
	inc  e                                           ; $5e56: $1c
	dec  c                                           ; $5e57: $0d
	ld   bc, $0101                                   ; $5e58: $01 $01 $01
	ld   l, e                                        ; $5e5b: $6b
	ld   d, h                                        ; $5e5c: $54
	sub  [hl]                                        ; $5e5d: $96
	sbc  [hl]                                        ; $5e5e: $9e
	ld   h, l                                        ; $5e5f: $65
	sbc  e                                           ; $5e60: $9b
	ld   d, d                                        ; $5e61: $52
	ld   b, $13                                      ; $5e62: $06 $13
	ld   b, $50                                      ; $5e64: $06 $50
	ld   a, l                                        ; $5e66: $7d
	dec  c                                           ; $5e67: $0d
	inc  b                                           ; $5e68: $04
	add  a                                           ; $5e69: $87
	ld   a, c                                        ; $5e6a: $79
	inc  b                                           ; $5e6b: $04
	ld   b, l                                        ; $5e6c: $45
	sbc  d                                           ; $5e6d: $9a
	sbc  c                                           ; $5e6e: $99
	sbc  a                                           ; $5e6f: $9f
	dec  c                                           ; $5e70: $0d
	nop                                              ; $5e71: $00
	dec  b                                           ; $5e72: $05
	ld   b, b                                        ; $5e73: $40
	rst  $38                                         ; $5e74: $ff
	inc  bc                                          ; $5e75: $03
	rst  $38                                         ; $5e76: $ff
	ld   bc, $2801                                   ; $5e77: $01 $01 $28
	nop                                              ; $5e7a: $00
	ld   bc, $7c6b                                   ; $5e7b: $01 $6b $7c
	inc  bc                                          ; $5e7e: $03
	cp   $03                                         ; $5e7f: $fe $03
	add  [hl]                                        ; $5e81: $86
	sub  [hl]                                        ; $5e82: $96
	sbc  a                                           ; $5e83: $9f
	dec  c                                           ; $5e84: $0d
	nop                                              ; $5e85: $00
	ld   a, [bc]                                     ; $5e86: $0a
	ld   b, $7b                                      ; $5e87: $06 $7b
	inc  bc                                          ; $5e89: $03
	inc  e                                           ; $5e8a: $1c
	dec  c                                           ; $5e8b: $0d
	ld   [bc], a                                     ; $5e8c: $02
	ld   [bc], a                                     ; $5e8d: $02
	ld   bc, $5a6f                                   ; $5e8e: $01 $6f $5a
	ld   d, h                                        ; $5e91: $54
	sbc  l                                           ; $5e92: $9d
	sub  [hl]                                        ; $5e93: $96
	sbc  a                                           ; $5e94: $9f
	dec  c                                           ; $5e95: $0d
	ld   h, l                                        ; $5e96: $65
	sbc  e                                           ; $5e97: $9b
	ld   d, d                                        ; $5e98: $52
	ld   b, $13                                      ; $5e99: $06 $13
	ld   b, $50                                      ; $5e9b: $06 $50
	ld   a, l                                        ; $5e9d: $7d
	sbc  [hl]                                        ; $5e9e: $9e
	inc  b                                           ; $5e9f: $04
	add  a                                           ; $5ea0: $87
	ld   a, c                                        ; $5ea1: $79
	inc  b                                           ; $5ea2: $04
	ld   b, l                                        ; $5ea3: $45
	sbc  d                                           ; $5ea4: $9a
	sbc  c                                           ; $5ea5: $99
	ld   a, h                                        ; $5ea6: $7c
	ld   a, [$000d]                                  ; $5ea7: $fa $0d $00
	ld   a, [bc]                                     ; $5eaa: $0a
	ld   b, $7b                                      ; $5eab: $06 $7b
	inc  bc                                          ; $5ead: $03
	inc  e                                           ; $5eae: $1c
	dec  c                                           ; $5eaf: $0d
	ld   [bc], a                                     ; $5eb0: $02
	ld   [bc], a                                     ; $5eb1: $02
	ld   bc, $9b65                                   ; $5eb2: $01 $65 $9b
	ld   d, d                                        ; $5eb5: $52
	ld   b, $13                                      ; $5eb6: $06 $13
	ld   b, $50                                      ; $5eb8: $06 $50
	ld   a, l                                        ; $5eba: $7d
	sbc  [hl]                                        ; $5ebb: $9e
	inc  b                                           ; $5ebc: $04
	add  a                                           ; $5ebd: $87
	ld   a, h                                        ; $5ebe: $7c
	inc  b                                           ; $5ebf: $04
	dec  bc                                          ; $5ec0: $0b
	sbc  a                                           ; $5ec1: $9f
	dec  c                                           ; $5ec2: $0d
	inc  bc                                          ; $5ec3: $03
	ld   [hl], b                                     ; $5ec4: $70
	ld   e, l                                        ; $5ec5: $5d
	sub  d                                           ; $5ec6: $92
	sub  a                                           ; $5ec7: $97
	ld   a, b                                        ; $5ec8: $78
	ld   d, d                                        ; $5ec9: $52
	halt                                             ; $5eca: $76
	dec  c                                           ; $5ecb: $0d
	inc  b                                           ; $5ecc: $04
	xor  d                                           ; $5ecd: $aa
	ld   e, d                                        ; $5ece: $5a
	dec  b                                           ; $5ecf: $05
	sub  a                                           ; $5ed0: $97
	sbc  d                                           ; $5ed1: $9a
	ld   l, a                                        ; $5ed2: $6f
	sub  c                                           ; $5ed3: $91
	ld   d, h                                        ; $5ed4: $54
	sbc  l                                           ; $5ed5: $9d
	sub  [hl]                                        ; $5ed6: $96
	sbc  a                                           ; $5ed7: $9f
	dec  c                                           ; $5ed8: $0d
	nop                                              ; $5ed9: $00
	ld   a, [bc]                                     ; $5eda: $0a
	ld   b, $7b                                      ; $5edb: $06 $7b
	inc  bc                                          ; $5edd: $03
	inc  e                                           ; $5ede: $1c
	dec  c                                           ; $5edf: $0d
	nop                                              ; $5ee0: $00
	nop                                              ; $5ee1: $00
	ld   bc, $6803                                   ; $5ee2: $01 $03 $68
	ld   a, l                                        ; $5ee5: $7d
	sbc  [hl]                                        ; $5ee6: $9e
	ld   bc, $7d07                                   ; $5ee7: $01 $07 $7d
	ld   e, e                                        ; $5eea: $5b
	ld   bc, $7508                                   ; $5eeb: $01 $08 $75
	ld   e, b                                        ; $5eee: $58
	ld   [bc], a                                     ; $5eef: $02
	add  b                                           ; $5ef0: $80
	ld   d, d                                        ; $5ef1: $52
	sbc  a                                           ; $5ef2: $9f
	dec  c                                           ; $5ef3: $0d
	nop                                              ; $5ef4: $00
	ld   a, [bc]                                     ; $5ef5: $0a
	add  hl, de                                      ; $5ef6: $19
	dec  b                                           ; $5ef7: $05
	inc  bc                                          ; $5ef8: $03
	ld   l, a                                        ; $5ef9: $6f
	ld   e, h                                        ; $5efa: $5c
	ld   [hl], c                                     ; $5efb: $71
	ld   [hl], h                                     ; $5efc: $74
	or   l                                           ; $5efd: $b5
	ldh  [rDIV], a                                   ; $5efe: $e0 $04
	add  a                                           ; $5f00: $87
	add  [hl]                                        ; $5f01: $86
	nop                                              ; $5f02: $00
	nop                                              ; $5f03: $00
	or   l                                           ; $5f04: $b5
	ldh  [rDIV], a                                   ; $5f05: $e0 $04
	add  a                                           ; $5f07: $87
	ld   a, c                                        ; $5f08: $79
	ld   h, a                                        ; $5f09: $67
	ld   [hl], h                                     ; $5f0a: $74
	sbc  c                                           ; $5f0b: $99
	nop                                              ; $5f0c: $00
	ld   bc, $8704                                   ; $5f0d: $01 $04 $87
	ld   a, c                                        ; $5f10: $79
	inc  b                                           ; $5f11: $04
	ld   b, l                                        ; $5f12: $45
	sbc  d                                           ; $5f13: $9a
	sbc  c                                           ; $5f14: $99
	nop                                              ; $5f15: $00
	ld   [bc], a                                     ; $5f16: $02
	rlca                                             ; $5f17: $07
	jp   nc, $0203                                   ; $5f18: $d2 $03 $02

	inc  bc                                          ; $5f1b: $03
	ld   bc, $2000                                   ; $5f1c: $01 $00 $20
	nop                                              ; $5f1f: $00
	rlca                                             ; $5f20: $07
	dec  bc                                          ; $5f21: $0b
	inc  b                                           ; $5f22: $04
	ld   [bc], a                                     ; $5f23: $02
	inc  bc                                          ; $5f24: $03
	ld   bc, $2001                                   ; $5f25: $01 $01 $20
	nop                                              ; $5f28: $00
	rlca                                             ; $5f29: $07
	dec  bc                                          ; $5f2a: $0b
	inc  b                                           ; $5f2b: $04
	ld   [bc], a                                     ; $5f2c: $02
	inc  bc                                          ; $5f2d: $03
	ld   bc, $2002                                   ; $5f2e: $01 $02 $20
	nop                                              ; $5f31: $00
	ld   b, $3b                                      ; $5f32: $06 $3b
	inc  b                                           ; $5f34: $04
	inc  e                                           ; $5f35: $1c
	dec  c                                           ; $5f36: $0d
	ld   bc, $0101                                   ; $5f37: $01 $01 $01
	ld   l, e                                        ; $5f3a: $6b
	ld   d, h                                        ; $5f3b: $54
	ld   l, e                                        ; $5f3c: $6b
	ld   d, h                                        ; $5f3d: $54
	sbc  [hl]                                        ; $5f3e: $9e
	ld   bc, $7d07                                   ; $5f3f: $01 $07 $7d
	ld   e, e                                        ; $5f42: $5b
	ld   bc, $6708                                   ; $5f43: $01 $08 $67
	sbc  c                                           ; $5f46: $99
	inc  bc                                          ; $5f47: $03
	ld   d, l                                        ; $5f48: $55
	dec  b                                           ; $5f49: $05
	ld   h, d                                        ; $5f4a: $62
	ld   a, l                                        ; $5f4b: $7d
	dec  c                                           ; $5f4c: $0d
	ld   l, a                                        ; $5f4d: $6f
	ld   e, h                                        ; $5f4e: $5c
	ld   [hl], c                                     ; $5f4f: $71
	ld   [hl], h                                     ; $5f50: $74
	or   l                                           ; $5f51: $b5
	ldh  [rDIV], a                                   ; $5f52: $e0 $04
	add  a                                           ; $5f54: $87
	add  [hl]                                        ; $5f55: $86
	sbc  a                                           ; $5f56: $9f
	dec  c                                           ; $5f57: $0d
	nop                                              ; $5f58: $00
	dec  b                                           ; $5f59: $05
	ld   b, b                                        ; $5f5a: $40
	rst  $38                                         ; $5f5b: $ff
	inc  bc                                          ; $5f5c: $03
	rst  $38                                         ; $5f5d: $ff
	ld   bc, $2801                                   ; $5f5e: $01 $01 $28
	nop                                              ; $5f61: $00
	ld   bc, $5252                                   ; $5f62: $01 $52 $52
	sbc  l                                           ; $5f65: $9d
	sub  [hl]                                        ; $5f66: $96
	sbc  a                                           ; $5f67: $9f
	dec  c                                           ; $5f68: $0d
	nop                                              ; $5f69: $00
	ld   a, [bc]                                     ; $5f6a: $0a
	ld   b, $76                                      ; $5f6b: $06 $76
	inc  b                                           ; $5f6d: $04
	inc  e                                           ; $5f6e: $1c
	dec  c                                           ; $5f6f: $0d
	ld   [bc], a                                     ; $5f70: $02
	ld   [bc], a                                     ; $5f71: $02
	ld   bc, $5a6f                                   ; $5f72: $01 $6f $5a
	ld   d, h                                        ; $5f75: $54
	sbc  l                                           ; $5f76: $9d
	sub  [hl]                                        ; $5f77: $96
	sbc  a                                           ; $5f78: $9f
	dec  c                                           ; $5f79: $0d
	ld   bc, $7d07                                   ; $5f7a: $01 $07 $7d
	ld   e, e                                        ; $5f7d: $5b
	ld   bc, $6708                                   ; $5f7e: $01 $08 $67
	sbc  c                                           ; $5f81: $99
	inc  bc                                          ; $5f82: $03
	ld   d, l                                        ; $5f83: $55
	dec  b                                           ; $5f84: $05
	ld   h, d                                        ; $5f85: $62
	ld   a, l                                        ; $5f86: $7d
	sbc  [hl]                                        ; $5f87: $9e
	ld   l, a                                        ; $5f88: $6f
	ld   e, h                                        ; $5f89: $5c
	ld   [hl], c                                     ; $5f8a: $71
	ld   [hl], h                                     ; $5f8b: $74
	dec  c                                           ; $5f8c: $0d
	or   l                                           ; $5f8d: $b5
	ldh  [rDIV], a                                   ; $5f8e: $e0 $04
	add  a                                           ; $5f90: $87
	add  [hl]                                        ; $5f91: $86
	ld   h, a                                        ; $5f92: $67
	ld   [hl], h                                     ; $5f93: $74
	sbc  c                                           ; $5f94: $99
	ld   a, h                                        ; $5f95: $7c
	sub  [hl]                                        ; $5f96: $96
	sbc  a                                           ; $5f97: $9f
	dec  c                                           ; $5f98: $0d
	nop                                              ; $5f99: $00
	ld   a, [bc]                                     ; $5f9a: $0a
	ld   b, $76                                      ; $5f9b: $06 $76
	inc  b                                           ; $5f9d: $04
	inc  e                                           ; $5f9e: $1c
	dec  c                                           ; $5f9f: $0d
	ld   [bc], a                                     ; $5fa0: $02
	ld   [bc], a                                     ; $5fa1: $02
	ld   bc, $0701                                   ; $5fa2: $01 $01 $07
	ld   a, l                                        ; $5fa5: $7d
	ld   e, e                                        ; $5fa6: $5b
	ld   bc, $7108                                   ; $5fa7: $01 $08 $71
	ld   [hl], h                                     ; $5faa: $74
	ld   [bc], a                                     ; $5fab: $02
	sbc  l                                           ; $5fac: $9d
	ld   [hl], c                                     ; $5fad: $71
	ld   l, l                                        ; $5fae: $6d
	sub  a                                           ; $5faf: $97
	ld   l, a                                        ; $5fb0: $6f
	ld   e, h                                        ; $5fb1: $5c
	ld   [hl], c                                     ; $5fb2: $71
	ld   [hl], h                                     ; $5fb3: $74
	dec  c                                           ; $5fb4: $0d
	or   l                                           ; $5fb5: $b5
	ldh  [rDIV], a                                   ; $5fb6: $e0 $04
	add  a                                           ; $5fb8: $87
	sub  [hl]                                        ; $5fb9: $96
	ld   a, [$0310]                                  ; $5fba: $fa $10 $03
	ld   [hl], b                                     ; $5fbd: $70
	ld   e, l                                        ; $5fbe: $5d
	sub  d                                           ; $5fbf: $92
	sub  a                                           ; $5fc0: $97
	ld   a, b                                        ; $5fc1: $78
	ld   d, d                                        ; $5fc2: $52
	halt                                             ; $5fc3: $76
	dec  c                                           ; $5fc4: $0d
	inc  b                                           ; $5fc5: $04
	xor  d                                           ; $5fc6: $aa
	ld   e, d                                        ; $5fc7: $5a
	dec  b                                           ; $5fc8: $05
	sub  a                                           ; $5fc9: $97
	sbc  d                                           ; $5fca: $9a
	ld   l, a                                        ; $5fcb: $6f
	sub  c                                           ; $5fcc: $91
	ld   d, h                                        ; $5fcd: $54
	ld   h, [hl]                                     ; $5fce: $66
	sub  c                                           ; $5fcf: $91
	ld   a, b                                        ; $5fd0: $78
	ld   d, d                                        ; $5fd1: $52
	sbc  a                                           ; $5fd2: $9f
	dec  c                                           ; $5fd3: $0d
	nop                                              ; $5fd4: $00
	ld   a, [bc]                                     ; $5fd5: $0a
	ld   b, $76                                      ; $5fd6: $06 $76
	inc  b                                           ; $5fd8: $04
	inc  e                                           ; $5fd9: $1c
	dec  c                                           ; $5fda: $0d
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	ld   bc, $6803                                   ; $5fdd: $01 $03 $68
	ld   a, l                                        ; $5fe0: $7d
	sbc  [hl]                                        ; $5fe1: $9e
	adc  l                                           ; $5fe2: $8d
	ld   [hl], a                                     ; $5fe3: $77
	sbc  b                                           ; $5fe4: $98
	ld   a, h                                        ; $5fe5: $7c
	ld   b, $13                                      ; $5fe6: $06 $13
	ld   b, $50                                      ; $5fe8: $06 $50
	and  b                                           ; $5fea: $a0
	inc  d                                           ; $5feb: $14
	ld   [hl], d                                     ; $5fec: $72
	sbc  a                                           ; $5fed: $9f
	dec  c                                           ; $5fee: $0d
	nop                                              ; $5fef: $00
	ld   a, [bc]                                     ; $5ff0: $0a
	add  hl, de                                      ; $5ff1: $19
	dec  b                                           ; $5ff2: $05
	inc  bc                                          ; $5ff3: $03
	ld   l, l                                        ; $5ff4: $6d
	ld   a, b                                        ; $5ff5: $78
	inc  b                                           ; $5ff6: $04
	dec  bc                                          ; $5ff7: $0b
	inc  bc                                          ; $5ff8: $03
	ret  nc                                          ; $5ff9: $d0

	ld   a, c                                        ; $5ffa: $79
	inc  b                                           ; $5ffb: $04
	ld   b, l                                        ; $5ffc: $45
	sbc  d                                           ; $5ffd: $9a
	sbc  c                                           ; $5ffe: $99
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	ld   l, l                                        ; $6001: $6d
	ld   a, b                                        ; $6002: $78
	inc  bc                                          ; $6003: $03
	ld   h, l                                        ; $6004: $65
	inc  bc                                          ; $6005: $03
	ret  nc                                          ; $6006: $d0

	ld   a, c                                        ; $6007: $79
	inc  b                                           ; $6008: $04
	ld   b, l                                        ; $6009: $45
	sbc  d                                           ; $600a: $9a
	sbc  c                                           ; $600b: $99
	nop                                              ; $600c: $00
	ld   bc, $5c6f                                   ; $600d: $01 $6f $5c
	ld   [hl], c                                     ; $6010: $71
	ld   [hl], h                                     ; $6011: $74
	or   l                                           ; $6012: $b5
	ldh  [rDIV], a                                   ; $6013: $e0 $04
	add  a                                           ; $6015: $87
	add  [hl]                                        ; $6016: $86
	nop                                              ; $6017: $00
	ld   [bc], a                                     ; $6018: $02
	rlca                                             ; $6019: $07
	call nc, $0204                                   ; $601a: $d4 $04 $02
	inc  bc                                          ; $601d: $03
	ld   bc, $2000                                   ; $601e: $01 $00 $20
	nop                                              ; $6021: $00
	rlca                                             ; $6022: $07
	rlca                                             ; $6023: $07
	dec  b                                           ; $6024: $05
	ld   [bc], a                                     ; $6025: $02
	inc  bc                                          ; $6026: $03
	ld   bc, $2001                                   ; $6027: $01 $01 $20
	nop                                              ; $602a: $00
	rlca                                             ; $602b: $07
	inc  sp                                          ; $602c: $33
	dec  b                                           ; $602d: $05
	ld   [bc], a                                     ; $602e: $02
	inc  bc                                          ; $602f: $03
	ld   bc, $2002                                   ; $6030: $01 $02 $20
	nop                                              ; $6033: $00
	ld   b, $7d                                      ; $6034: $06 $7d
	dec  b                                           ; $6036: $05
	inc  e                                           ; $6037: $1c
	dec  c                                           ; $6038: $0d
	ld   bc, $0101                                   ; $6039: $01 $01 $01
	ld   l, e                                        ; $603c: $6b
	ld   d, h                                        ; $603d: $54
	ld   l, e                                        ; $603e: $6b
	ld   d, h                                        ; $603f: $54
	sbc  [hl]                                        ; $6040: $9e
	adc  l                                           ; $6041: $8d
	ld   [hl], a                                     ; $6042: $77
	sbc  b                                           ; $6043: $98
	ld   a, h                                        ; $6044: $7c
	ld   b, $13                                      ; $6045: $06 $13
	ld   b, $50                                      ; $6047: $06 $50
	ld   a, l                                        ; $6049: $7d
	dec  c                                           ; $604a: $0d
	ld   l, l                                        ; $604b: $6d
	ld   a, b                                        ; $604c: $78
	inc  b                                           ; $604d: $04
	dec  bc                                          ; $604e: $0b
	inc  bc                                          ; $604f: $03
	ret  nc                                          ; $6050: $d0

	add  [hl]                                        ; $6051: $86
	sbc  a                                           ; $6052: $9f
	dec  c                                           ; $6053: $0d
	nop                                              ; $6054: $00
	dec  b                                           ; $6055: $05
	ld   b, b                                        ; $6056: $40
	rst  $38                                         ; $6057: $ff
	inc  bc                                          ; $6058: $03
	rst  $38                                         ; $6059: $ff
	ld   bc, $2801                                   ; $605a: $01 $01 $28
	nop                                              ; $605d: $00
	ld   bc, $5252                                   ; $605e: $01 $52 $52
	sbc  l                                           ; $6061: $9d
	sub  [hl]                                        ; $6062: $96
	sbc  a                                           ; $6063: $9f
	dec  c                                           ; $6064: $0d
	nop                                              ; $6065: $00
	ld   a, [bc]                                     ; $6066: $0a
	ld   b, $b1                                      ; $6067: $06 $b1
	dec  b                                           ; $6069: $05
	inc  e                                           ; $606a: $1c
	dec  c                                           ; $606b: $0d
	ld   [bc], a                                     ; $606c: $02
	ld   [bc], a                                     ; $606d: $02
	ld   bc, $5a6f                                   ; $606e: $01 $6f $5a
	ld   d, h                                        ; $6071: $54
	sbc  l                                           ; $6072: $9d
	sub  [hl]                                        ; $6073: $96
	sbc  a                                           ; $6074: $9f
	dec  c                                           ; $6075: $0d
	adc  l                                           ; $6076: $8d
	ld   [hl], a                                     ; $6077: $77
	sbc  b                                           ; $6078: $98
	ld   a, h                                        ; $6079: $7c
	ld   b, $13                                      ; $607a: $06 $13
	ld   b, $50                                      ; $607c: $06 $50
	ld   a, l                                        ; $607e: $7d
	ld   l, l                                        ; $607f: $6d
	ld   a, b                                        ; $6080: $78
	ld   a, h                                        ; $6081: $7c
	inc  b                                           ; $6082: $04
	dec  bc                                          ; $6083: $0b
	inc  bc                                          ; $6084: $03
	ret  nc                                          ; $6085: $d0

	sub  [hl]                                        ; $6086: $96
	sbc  a                                           ; $6087: $9f
	dec  c                                           ; $6088: $0d
	adc  h                                           ; $6089: $8c
	ld   [hl], c                                     ; $608a: $71
	ld   l, l                                        ; $608b: $6d
	ld   e, l                                        ; $608c: $5d
	sub  b                                           ; $608d: $90
	ei                                               ; $608e: $fb
	sbc  a                                           ; $608f: $9f
	dec  c                                           ; $6090: $0d
	nop                                              ; $6091: $00
	ld   a, [bc]                                     ; $6092: $0a
	ld   b, $b1                                      ; $6093: $06 $b1
	dec  b                                           ; $6095: $05
	inc  e                                           ; $6096: $1c
	dec  c                                           ; $6097: $0d
	ld   [bc], a                                     ; $6098: $02
	ld   [bc], a                                     ; $6099: $02
	ld   bc, $e3c1                                   ; $609a: $01 $c1 $e3
	ei                                               ; $609d: $fb
	ld   [hl], c                                     ; $609e: $71
	ld   a, [$6f10]                                  ; $609f: $fa $10 $6f
	ld   e, h                                        ; $60a2: $5c
	ld   [hl], c                                     ; $60a3: $71
	ld   [hl], h                                     ; $60a4: $74
	ld   h, a                                        ; $60a5: $67
	ld   [hl], h                                     ; $60a6: $74
	ld   l, a                                        ; $60a7: $6f
	sub  c                                           ; $60a8: $91
	dec  c                                           ; $60a9: $0d
	pop  bc                                          ; $60aa: $c1
	db   $e3                                         ; $60ab: $e3
	ld   h, [hl]                                     ; $60ac: $66
	sub  c                                           ; $60ad: $91
	ld   a, b                                        ; $60ae: $78
	ld   d, d                                        ; $60af: $52
	ld   a, [$8c0d]                                  ; $60b0: $fa $0d $8c
	ld   [hl], c                                     ; $60b3: $71
	ld   l, l                                        ; $60b4: $6d
	ld   e, l                                        ; $60b5: $5d
	sub  b                                           ; $60b6: $90
	ei                                               ; $60b7: $fb
	sbc  a                                           ; $60b8: $9f
	dec  c                                           ; $60b9: $0d
	nop                                              ; $60ba: $00
	ld   a, [bc]                                     ; $60bb: $0a
	ld   bc, $778d                                   ; $60bc: $01 $8d $77
	sbc  b                                           ; $60bf: $98
	ld   a, h                                        ; $60c0: $7c
	ld   b, $13                                      ; $60c1: $06 $13
	ld   b, $50                                      ; $60c3: $06 $50
	ld   a, l                                        ; $60c5: $7d
	ld   l, l                                        ; $60c6: $6d
	ld   a, b                                        ; $60c7: $78
	ld   a, h                                        ; $60c8: $7c
	inc  b                                           ; $60c9: $04
	dec  bc                                          ; $60ca: $0b
	inc  bc                                          ; $60cb: $03
	ret  nc                                          ; $60cc: $d0

	sub  [hl]                                        ; $60cd: $96
	sbc  a                                           ; $60ce: $9f
	dec  c                                           ; $60cf: $0d
	ld   l, a                                        ; $60d0: $6f
	sub  c                                           ; $60d1: $91
	and  c                                           ; $60d2: $a1
	halt                                             ; $60d3: $76
	ld   [bc], a                                     ; $60d4: $02
	jp   nz, Jump_047_7452                           ; $60d5: $c2 $52 $74

	sbc  c                                           ; $60d8: $99
	ld   sp, hl                                      ; $60d9: $f9
	dec  c                                           ; $60da: $0d
	nop                                              ; $60db: $00
	ld   a, [bc]                                     ; $60dc: $0a
	ld   b, $b1                                      ; $60dd: $06 $b1
	dec  b                                           ; $60df: $05
	inc  e                                           ; $60e0: $1c
	dec  c                                           ; $60e1: $0d
	ld   [bc], a                                     ; $60e2: $02
	ld   [bc], a                                     ; $60e3: $02
	ld   bc, $778d                                   ; $60e4: $01 $8d $77
	sbc  b                                           ; $60e7: $98
	ld   a, h                                        ; $60e8: $7c
	ld   b, $13                                      ; $60e9: $06 $13
	ld   b, $50                                      ; $60eb: $06 $50
	ld   a, l                                        ; $60ed: $7d
	ld   l, l                                        ; $60ee: $6d
	ld   a, b                                        ; $60ef: $78
	ld   a, h                                        ; $60f0: $7c
	inc  b                                           ; $60f1: $04
	dec  bc                                          ; $60f2: $0b
	inc  bc                                          ; $60f3: $03
	ret  nc                                          ; $60f4: $d0

	sbc  a                                           ; $60f5: $9f
	dec  c                                           ; $60f6: $0d
	or   c                                           ; $60f7: $b1
	cp   e                                           ; $60f8: $bb
	or   c                                           ; $60f9: $b1
	cp   e                                           ; $60fa: $bb
	ld   h, l                                        ; $60fb: $65
	ld   [hl], h                                     ; $60fc: $74
	ld   l, l                                        ; $60fd: $6d
	sub  a                                           ; $60fe: $97
	dec  c                                           ; $60ff: $0d
	inc  b                                           ; $6100: $04
	xor  d                                           ; $6101: $aa
	ld   e, d                                        ; $6102: $5a
	dec  b                                           ; $6103: $05
	sub  a                                           ; $6104: $97
	sbc  d                                           ; $6105: $9a
	ld   l, a                                        ; $6106: $6f
	sub  c                                           ; $6107: $91
	ld   d, h                                        ; $6108: $54
	ld   h, [hl]                                     ; $6109: $66
	sub  c                                           ; $610a: $91
	ld   a, b                                        ; $610b: $78
	ld   d, d                                        ; $610c: $52
	sbc  a                                           ; $610d: $9f
	dec  c                                           ; $610e: $0d
	nop                                              ; $610f: $00
	ld   a, [bc]                                     ; $6110: $0a
	ld   b, $b1                                      ; $6111: $06 $b1
	dec  b                                           ; $6113: $05
	inc  e                                           ; $6114: $1c
	dec  c                                           ; $6115: $0d
	nop                                              ; $6116: $00
	nop                                              ; $6117: $00
	ld   bc, $6803                                   ; $6118: $01 $03 $68
	ld   a, l                                        ; $611b: $7d
	sbc  [hl]                                        ; $611c: $9e
	ld   d, b                                        ; $611d: $50
	ld   e, c                                        ; $611e: $59
	ld   d, d                                        ; $611f: $52
	ld   b, $13                                      ; $6120: $06 $13
	ld   b, $50                                      ; $6122: $06 $50
	and  b                                           ; $6124: $a0
	jr   jr_047_6199                                 ; $6125: $18 $72

	sbc  a                                           ; $6127: $9f
	dec  c                                           ; $6128: $0d
	nop                                              ; $6129: $00
	ld   a, [bc]                                     ; $612a: $0a
	add  hl, de                                      ; $612b: $19
	dec  b                                           ; $612c: $05
	inc  bc                                          ; $612d: $03
	ld   l, l                                        ; $612e: $6d
	ld   a, b                                        ; $612f: $78
	inc  bc                                          ; $6130: $03
	ld   h, l                                        ; $6131: $65
	inc  bc                                          ; $6132: $03
	ret  nc                                          ; $6133: $d0

	ld   a, c                                        ; $6134: $79
	inc  b                                           ; $6135: $04
	ld   b, l                                        ; $6136: $45
	sbc  d                                           ; $6137: $9a
	sbc  c                                           ; $6138: $99
	nop                                              ; $6139: $00
	nop                                              ; $613a: $00
	ld   l, l                                        ; $613b: $6d
	ld   a, b                                        ; $613c: $78
	ld   [bc], a                                     ; $613d: $02
	inc  [hl]                                        ; $613e: $34
	inc  bc                                          ; $613f: $03
	ret  nc                                          ; $6140: $d0

	ld   a, c                                        ; $6141: $79
	inc  b                                           ; $6142: $04
	ld   b, l                                        ; $6143: $45
	sbc  d                                           ; $6144: $9a
	sbc  c                                           ; $6145: $99
	nop                                              ; $6146: $00
	ld   bc, $8704                                   ; $6147: $01 $04 $87
	ld   a, c                                        ; $614a: $79
	inc  b                                           ; $614b: $04
	ld   b, l                                        ; $614c: $45
	sbc  d                                           ; $614d: $9a
	sbc  c                                           ; $614e: $99
	nop                                              ; $614f: $00
	ld   [bc], a                                     ; $6150: $02
	rlca                                             ; $6151: $07
	inc  c                                           ; $6152: $0c
	ld   b, $02                                      ; $6153: $06 $02
	inc  bc                                          ; $6155: $03
	ld   bc, $2000                                   ; $6156: $01 $00 $20
	nop                                              ; $6159: $00
	rlca                                             ; $615a: $07
	ld   b, e                                        ; $615b: $43
	ld   b, $02                                      ; $615c: $06 $02
	inc  bc                                          ; $615e: $03
	ld   bc, $2001                                   ; $615f: $01 $01 $20
	nop                                              ; $6162: $00
	rlca                                             ; $6163: $07
	ld   b, e                                        ; $6164: $43
	ld   b, $02                                      ; $6165: $06 $02
	inc  bc                                          ; $6167: $03
	ld   bc, $2002                                   ; $6168: $01 $02 $20
	nop                                              ; $616b: $00
	ld   b, $74                                      ; $616c: $06 $74
	ld   b, $1c                                      ; $616e: $06 $1c
	dec  c                                           ; $6170: $0d
	ld   bc, $0101                                   ; $6171: $01 $01 $01
	ld   l, e                                        ; $6174: $6b
	ld   d, h                                        ; $6175: $54
	ld   l, e                                        ; $6176: $6b
	ld   d, h                                        ; $6177: $54
	sbc  [hl]                                        ; $6178: $9e
	ld   d, b                                        ; $6179: $50
	ld   e, c                                        ; $617a: $59
	ld   d, d                                        ; $617b: $52

Jump_047_617c:
	ld   b, $13                                      ; $617c: $06 $13
	ld   b, $50                                      ; $617e: $06 $50
	ld   a, l                                        ; $6180: $7d
	dec  c                                           ; $6181: $0d
	ld   l, l                                        ; $6182: $6d
	ld   a, b                                        ; $6183: $78
	inc  bc                                          ; $6184: $03
	ld   h, l                                        ; $6185: $65
	inc  bc                                          ; $6186: $03
	ret  nc                                          ; $6187: $d0

	sbc  a                                           ; $6188: $9f
	dec  c                                           ; $6189: $0d
	nop                                              ; $618a: $00
	dec  b                                           ; $618b: $05
	ld   b, b                                        ; $618c: $40
	rst  $38                                         ; $618d: $ff
	inc  bc                                          ; $618e: $03
	rst  $38                                         ; $618f: $ff
	ld   bc, $2801                                   ; $6190: $01 $01 $28
	nop                                              ; $6193: $00
	ld   bc, $5252                                   ; $6194: $01 $52 $52
	ld   h, [hl]                                     ; $6197: $66
	sub  c                                           ; $6198: $91

jr_047_6199:
	ld   a, b                                        ; $6199: $78
	ld   d, d                                        ; $619a: $52
	ld   [$5d00], sp                                 ; $619b: $08 $00 $5d
	and  c                                           ; $619e: $a1
	sbc  a                                           ; $619f: $9f
	dec  c                                           ; $61a0: $0d
	nop                                              ; $61a1: $00
	ld   a, [bc]                                     ; $61a2: $0a
	ld   b, $ad                                      ; $61a3: $06 $ad
	ld   b, $1c                                      ; $61a5: $06 $1c
	dec  c                                           ; $61a7: $0d
	ld   [bc], a                                     ; $61a8: $02
	ld   [bc], a                                     ; $61a9: $02
	ld   bc, $5a6f                                   ; $61aa: $01 $6f $5a
	ld   d, h                                        ; $61ad: $54
	sbc  l                                           ; $61ae: $9d
	sub  [hl]                                        ; $61af: $96
	sbc  a                                           ; $61b0: $9f
	dec  c                                           ; $61b1: $0d
	ld   d, b                                        ; $61b2: $50
	ld   e, c                                        ; $61b3: $59
	ld   d, d                                        ; $61b4: $52
	ld   b, $13                                      ; $61b5: $06 $13
	ld   b, $50                                      ; $61b7: $06 $50
	ld   a, l                                        ; $61b9: $7d
	sbc  [hl]                                        ; $61ba: $9e
	ld   l, l                                        ; $61bb: $6d
	ld   a, b                                        ; $61bc: $78
	ld   a, h                                        ; $61bd: $7c
	inc  bc                                          ; $61be: $03
	ld   h, l                                        ; $61bf: $65
	inc  bc                                          ; $61c0: $03
	ret  nc                                          ; $61c1: $d0

	sbc  a                                           ; $61c2: $9f
	dec  c                                           ; $61c3: $0d
	inc  bc                                          ; $61c4: $03
	dec  c                                           ; $61c5: $0d
	inc  b                                           ; $61c6: $04
	ld   a, b                                        ; $61c7: $78
	ld   a, b                                        ; $61c8: $78
	ld   d, d                                        ; $61c9: $52
	sbc  l                                           ; $61ca: $9d
	ld   a, e                                        ; $61cb: $7b
	sbc  a                                           ; $61cc: $9f
	dec  c                                           ; $61cd: $0d
	nop                                              ; $61ce: $00
	ld   a, [bc]                                     ; $61cf: $0a
	inc  e                                           ; $61d0: $1c
	dec  c                                           ; $61d1: $0d
	nop                                              ; $61d2: $00
	nop                                              ; $61d3: $00
	ld   b, $ad                                      ; $61d4: $06 $ad
	ld   b, $1c                                      ; $61d6: $06 $1c
	dec  c                                           ; $61d8: $0d
	ld   [bc], a                                     ; $61d9: $02
	ld   [bc], a                                     ; $61da: $02
	ld   bc, $5950                                   ; $61db: $01 $50 $59
	ld   d, d                                        ; $61de: $52
	ld   b, $13                                      ; $61df: $06 $13
	ld   b, $50                                      ; $61e1: $06 $50
	ld   a, l                                        ; $61e3: $7d
	sbc  [hl]                                        ; $61e4: $9e
	ld   l, l                                        ; $61e5: $6d
	ld   a, b                                        ; $61e6: $78
	ld   a, h                                        ; $61e7: $7c
	inc  bc                                          ; $61e8: $03
	ld   h, l                                        ; $61e9: $65
	inc  bc                                          ; $61ea: $03
	ret  nc                                          ; $61eb: $d0

	sbc  a                                           ; $61ec: $9f
	dec  c                                           ; $61ed: $0d
	or   c                                           ; $61ee: $b1
	cp   e                                           ; $61ef: $bb
	or   c                                           ; $61f0: $b1
	cp   e                                           ; $61f1: $bb
	ld   h, l                                        ; $61f2: $65
	ld   [hl], h                                     ; $61f3: $74
	ld   l, l                                        ; $61f4: $6d
	sub  a                                           ; $61f5: $97
	sbc  [hl]                                        ; $61f6: $9e
	dec  c                                           ; $61f7: $0d
	inc  b                                           ; $61f8: $04
	xor  d                                           ; $61f9: $aa
	ld   e, d                                        ; $61fa: $5a
	dec  b                                           ; $61fb: $05
	sub  a                                           ; $61fc: $97
	sbc  d                                           ; $61fd: $9a
	ld   l, a                                        ; $61fe: $6f
	sub  c                                           ; $61ff: $91
	ld   d, h                                        ; $6200: $54
	ld   h, [hl]                                     ; $6201: $66
	sub  c                                           ; $6202: $91
	ld   a, b                                        ; $6203: $78
	ld   d, d                                        ; $6204: $52
	sbc  a                                           ; $6205: $9f
	dec  c                                           ; $6206: $0d
	nop                                              ; $6207: $00
	ld   a, [bc]                                     ; $6208: $0a
	inc  e                                           ; $6209: $1c
	dec  c                                           ; $620a: $0d
	inc  bc                                          ; $620b: $03
	inc  bc                                          ; $620c: $03
	ld   b, $ad                                      ; $620d: $06 $ad
	ld   b, $01                                      ; $620f: $06 $01
	add  e                                           ; $6211: $83
	ld   d, h                                        ; $6212: $54
	rst  $38                                         ; $6213: $ff
	rst  $38                                         ; $6214: $ff
	sbc  [hl]                                        ; $6215: $9e
	inc  bc                                          ; $6216: $03
	ld   a, [hl]                                     ; $6217: $7e
	dec  b                                           ; $6218: $05
	nop                                              ; $6219: $00
	sub  [hl]                                        ; $621a: $96
	sbc  a                                           ; $621b: $9f
	dec  c                                           ; $621c: $0d
	ld   h, d                                        ; $621d: $62
	ld   [bc], a                                     ; $621e: $02
	sub  h                                           ; $621f: $94
	dec  b                                           ; $6220: $05
	rrca                                             ; $6221: $0f
	ld   h, e                                        ; $6222: $63
	adc  h                                           ; $6223: $8c
	sbc  a                                           ; $6224: $9f
	dec  c                                           ; $6225: $0d
	nop                                              ; $6226: $00
	ld   a, [bc]                                     ; $6227: $0a
	dec  c                                           ; $6228: $0d
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	rrca                                             ; $622b: $0f
	nop                                              ; $622c: $00
	ld   bc, $0b0c                                   ; $622d: $01 $0c $0b
	rlca                                             ; $6230: $07
	xor  $06                                         ; $6231: $ee $06
	inc  bc                                          ; $6233: $03
	rst  $38                                         ; $6234: $ff
	ld   bc, $2005                                   ; $6235: $01 $05 $20
	nop                                              ; $6238: $00
	rlca                                             ; $6239: $07
	ld   c, b                                        ; $623a: $48
	rlca                                             ; $623b: $07
	inc  bc                                          ; $623c: $03
	rst  $38                                         ; $623d: $ff
	ld   bc, $2502                                   ; $623e: $01 $02 $25
	inc  bc                                          ; $6241: $03
	rst  $38                                         ; $6242: $ff
	ld   bc, $2304                                   ; $6243: $01 $04 $23
	inc  e                                           ; $6246: $1c
	nop                                              ; $6247: $00
	rlca                                             ; $6248: $07
	ld   l, b                                        ; $6249: $68
	rlca                                             ; $624a: $07
	inc  bc                                          ; $624b: $03
	rst  $38                                         ; $624c: $ff
	ld   bc, $2301                                   ; $624d: $01 $01 $23
	nop                                              ; $6250: $00
	inc  e                                           ; $6251: $1c
	dec  c                                           ; $6252: $0d
	ld   bc, $0101                                   ; $6253: $01 $01 $01
	ld   [$5d00], sp                                 ; $6256: $08 $00 $5d
	and  c                                           ; $6259: $a1
	ld   a, h                                        ; $625a: $7c
	ld   e, b                                        ; $625b: $58
	ld   e, c                                        ; $625c: $59
	ld   h, b                                        ; $625d: $60
	ld   [hl], l                                     ; $625e: $75
	dec  c                                           ; $625f: $0d
	dec  b                                           ; $6260: $05
	pop  de                                          ; $6261: $d1
	ld   [hl], c                                     ; $6262: $71
	ld   l, l                                        ; $6263: $6d
	sub  [hl]                                        ; $6264: $96
	sbc  b                                           ; $6265: $98
	inc  bc                                          ; $6266: $03
	ld   [hl], b                                     ; $6267: $70
	ld   e, l                                        ; $6268: $5d
	ld   b, $19                                      ; $6269: $06 $19
	ld   [hl], e                                     ; $626b: $73
	ld   d, d                                        ; $626c: $52
	ld   l, l                                        ; $626d: $6d
	sbc  l                                           ; $626e: $9d
	sbc  a                                           ; $626f: $9f
	dec  c                                           ; $6270: $0d
	ld   d, b                                        ; $6271: $50
	sbc  b                                           ; $6272: $98
	ld   e, d                                        ; $6273: $5a
	halt                                             ; $6274: $76
	ld   d, h                                        ; $6275: $54
	sbc  a                                           ; $6276: $9f
	dec  c                                           ; $6277: $0d
	nop                                              ; $6278: $00
	ld   a, [bc]                                     ; $6279: $0a
	ld   bc, $6d8c                                   ; $627a: $01 $8c $6d
	ld   [bc], a                                     ; $627d: $02
	and  l                                           ; $627e: $a5
	inc  b                                           ; $627f: $04
	add  hl, hl                                      ; $6280: $29
	sbc  [hl]                                        ; $6281: $9e
	ld   a, b                                        ; $6282: $78
	ld   a, c                                        ; $6283: $79
	ld   e, c                                        ; $6284: $59
	ld   d, b                                        ; $6285: $50
	ld   [hl], c                                     ; $6286: $71
	ld   l, l                                        ; $6287: $6d
	sub  a                                           ; $6288: $97
	dec  c                                           ; $6289: $0d
	ld   e, b                                        ; $628a: $58
	inc  bc                                          ; $628b: $03
	ld   l, e                                        ; $628c: $6b
	inc  b                                           ; $628d: $04
	ld   [de], a                                     ; $628e: $12
	ld   d, d                                        ; $628f: $52
	sub  [hl]                                        ; $6290: $96
	sbc  e                                           ; $6291: $9b
	ld   h, l                                        ; $6292: $65
	ld   e, l                                        ; $6293: $5d
	ld   a, e                                        ; $6294: $7b
	sbc  a                                           ; $6295: $9f
	dec  c                                           ; $6296: $0d
	ld   e, b                                        ; $6297: $58
	inc  b                                           ; $6298: $04
	ld   a, e                                        ; $6299: $7b
	sbc  d                                           ; $629a: $9a
	ld   h, e                                        ; $629b: $63
	adc  h                                           ; $629c: $8c
	ld   [hl], l                                     ; $629d: $75
	ld   h, l                                        ; $629e: $65
	ld   l, l                                        ; $629f: $6d

Jump_047_62a0:
	sbc  a                                           ; $62a0: $9f
	dec  c                                           ; $62a1: $0d
	nop                                              ; $62a2: $00
	ld   a, [bc]                                     ; $62a3: $0a
	dec  b                                           ; $62a4: $05
	add  b                                           ; $62a5: $80
	and  l                                           ; $62a6: $a5
	ld   bc, $0001                                   ; $62a7: $01 $01 $00
	nop                                              ; $62aa: $00
	inc  e                                           ; $62ab: $1c
	dec  c                                           ; $62ac: $0d
	nop                                              ; $62ad: $00
	nop                                              ; $62ae: $00
	ld   bc, $9850                                   ; $62af: $01 $50 $98
	ld   e, d                                        ; $62b2: $5a
	halt                                             ; $62b3: $76
	ld   d, h                                        ; $62b4: $54
	sbc  a                                           ; $62b5: $9f
	dec  c                                           ; $62b6: $0d
	ld   e, b                                        ; $62b7: $58
	inc  b                                           ; $62b8: $04
	ld   a, e                                        ; $62b9: $7b
	sbc  d                                           ; $62ba: $9a
	ld   h, e                                        ; $62bb: $63
	adc  h                                           ; $62bc: $8c
	ld   [hl], l                                     ; $62bd: $75
	ld   h, l                                        ; $62be: $65
	ld   l, l                                        ; $62bf: $6d
	sbc  a                                           ; $62c0: $9f
	dec  c                                           ; $62c1: $0d
	nop                                              ; $62c2: $00
	ld   a, [bc]                                     ; $62c3: $0a
	dec  b                                           ; $62c4: $05
	add  b                                           ; $62c5: $80
	and  l                                           ; $62c6: $a5
	ld   bc, $0001                                   ; $62c7: $01 $01 $00
	nop                                              ; $62ca: $00
	inc  e                                           ; $62cb: $1c
	dec  c                                           ; $62cc: $0d
	ld   [bc], a                                     ; $62cd: $02
	ld   [bc], a                                     ; $62ce: $02
	ld   bc, $ffff                                   ; $62cf: $01 $ff $ff
	ld   [hl], l                                     ; $62d2: $75
	sub  b                                           ; $62d3: $90
	sbc  [hl]                                        ; $62d4: $9e
	ld   h, c                                        ; $62d5: $61
	and  c                                           ; $62d6: $a1
	ld   a, b                                        ; $62d7: $78
	ld   a, c                                        ; $62d8: $79
	inc  bc                                          ; $62d9: $03
	ld   l, a                                        ; $62da: $6f
	ld   [bc], a                                     ; $62db: $02
	xor  c                                           ; $62dc: $a9
	ld   e, d                                        ; $62dd: $5a
	dec  c                                           ; $62de: $0d
	ld   e, c                                        ; $62df: $59
	ld   e, c                                        ; $62e0: $59
	sbc  c                                           ; $62e1: $99
	and  c                                           ; $62e2: $a1
	ld   l, [hl]                                     ; $62e3: $6e
	ld   [hl], c                                     ; $62e4: $71
	ld   l, l                                        ; $62e5: $6d
	sub  a                                           ; $62e6: $97
	sbc  [hl]                                        ; $62e7: $9e
	ld   [bc], a                                     ; $62e8: $02
	jr   nz, jr_047_62ee                             ; $62e9: $20 $03

	add  d                                           ; $62eb: $82
	ld   [hl], l                                     ; $62ec: $75
	dec  c                                           ; $62ed: $0d

jr_047_62ee:
	sub  d                                           ; $62ee: $92
	ld   [hl], c                                     ; $62ef: $71
	ld   l, l                                        ; $62f0: $6d
	inc  b                                           ; $62f1: $04
	ld   a, b                                        ; $62f2: $78
	ld   e, d                                        ; $62f3: $5a
	inc  bc                                          ; $62f4: $03
	ld   [hl], b                                     ; $62f5: $70
	ld   e, c                                        ; $62f6: $59
	ld   [hl], c                                     ; $62f7: $71
	ld   l, l                                        ; $62f8: $6d
	ld   e, c                                        ; $62f9: $59
	sub  b                                           ; $62fa: $90
	sbc  a                                           ; $62fb: $9f
	dec  c                                           ; $62fc: $0d
	nop                                              ; $62fd: $00
	ld   a, [bc]                                     ; $62fe: $0a
	inc  e                                           ; $62ff: $1c
	dec  c                                           ; $6300: $0d
	inc  bc                                          ; $6301: $03
	inc  bc                                          ; $6302: $03
	ld   bc, $9e8c                                   ; $6303: $01 $8c $9e
	ld   d, d                                        ; $6306: $52
	ld   d, d                                        ; $6307: $52
	sbc  l                                           ; $6308: $9d
	sbc  a                                           ; $6309: $9f
	dec  c                                           ; $630a: $0d
	halt                                             ; $630b: $76
	sbc  b                                           ; $630c: $98
	ld   d, b                                        ; $630d: $50
	ld   d, [hl]                                     ; $630e: $56
	ld   l, b                                        ; $630f: $68
	sbc  [hl]                                        ; $6310: $9e
	dec  c                                           ; $6311: $0d
	ld   e, b                                        ; $6312: $58
	inc  b                                           ; $6313: $04
	ld   a, e                                        ; $6314: $7b
	sbc  d                                           ; $6315: $9a
	ld   h, e                                        ; $6316: $63
	adc  h                                           ; $6317: $8c
	ld   [hl], l                                     ; $6318: $75
	ld   h, l                                        ; $6319: $65
	ld   l, l                                        ; $631a: $6d
	sbc  a                                           ; $631b: $9f
	dec  c                                           ; $631c: $0d
	nop                                              ; $631d: $00
	ld   a, [bc]                                     ; $631e: $0a
	dec  b                                           ; $631f: $05
	add  b                                           ; $6320: $80
	and  l                                           ; $6321: $a5
	ld   bc, $0001                                   ; $6322: $01 $01 $00
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	rrca                                             ; $6327: $0f
	ld   b, $01                                      ; $6328: $06 $01
	ld   d, $12                                      ; $632a: $16 $12
	ld   [bc], a                                     ; $632c: $02
	ld   bc, $7158                                   ; $632d: $01 $58 $71
	sbc  [hl]                                        ; $6330: $9e
	ld   [$9f00], sp                                 ; $6331: $08 $00 $9f
	dec  c                                           ; $6334: $0d
	ld   d, d                                        ; $6335: $52
	ld   [hl], c                                     ; $6336: $71
	ld   h, l                                        ; $6337: $65
	sub  l                                           ; $6338: $95
	ld   a, c                                        ; $6339: $79
	db   $e3                                         ; $633a: $e3
	cp   b                                           ; $633b: $b8
	inc  bc                                          ; $633c: $03
	ld   l, d                                        ; $633d: $6a
	ld   e, b                                        ; $633e: $58
	ld   d, h                                        ; $633f: $54
	ld   l, d                                        ; $6340: $6a
	sbc  a                                           ; $6341: $9f
	dec  c                                           ; $6342: $0d
	nop                                              ; $6343: $00
	ld   a, [bc]                                     ; $6344: $0a
	add  hl, de                                      ; $6345: $19
	dec  b                                           ; $6346: $05
	ld   [bc], a                                     ; $6347: $02
	sub  [hl]                                        ; $6348: $96
	sbc  e                                           ; $6349: $9b
	ld   h, c                                        ; $634a: $61
	and  c                                           ; $634b: $a1
	ld   [hl], l                                     ; $634c: $75
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	ld   d, [hl]                                     ; $634f: $56
	and  c                                           ; $6350: $a1
	sbc  b                                           ; $6351: $98
	sub  l                                           ; $6352: $95
	ld   h, l                                        ; $6353: $65
	adc  h                                           ; $6354: $8c
	ld   h, a                                        ; $6355: $67
	nop                                              ; $6356: $00
	ld   bc, $cc07                                   ; $6357: $01 $07 $cc
	nop                                              ; $635a: $00
	ld   [bc], a                                     ; $635b: $02
	inc  bc                                          ; $635c: $03
	ld   bc, $2000                                   ; $635d: $01 $00 $20
	nop                                              ; $6360: $00
	rlca                                             ; $6361: $07
	ld   b, [hl]                                     ; $6362: $46
	nop                                              ; $6363: $00
	ld   [bc], a                                     ; $6364: $02
	inc  bc                                          ; $6365: $03
	ld   bc, $2001                                   ; $6366: $01 $01 $20
	nop                                              ; $6369: $00
	ld   b, $8a                                      ; $636a: $06 $8a
	nop                                              ; $636c: $00
	rrca                                             ; $636d: $0f
	nop                                              ; $636e: $00
	ld   bc, $5601                                   ; $636f: $01 $01 $56
	and  c                                           ; $6372: $a1
	sbc  b                                           ; $6373: $98
	sub  l                                           ; $6374: $95
	ld   h, l                                        ; $6375: $65
	adc  h                                           ; $6376: $8c
	ld   h, a                                        ; $6377: $67
	rst  $38                                         ; $6378: $ff
	rst  $38                                         ; $6379: $ff
	dec  c                                           ; $637a: $0d
	nop                                              ; $637b: $00
	ld   a, [bc]                                     ; $637c: $0a
	ld   c, $26                                      ; $637d: $0e $26
	inc  e                                           ; $637f: $1c
	ld   b, $05                                      ; $6380: $06 $05
	dec  b                                           ; $6382: $05
	dec  e                                           ; $6383: $1d
	ld   b, b                                        ; $6384: $40
	ld   d, $03                                      ; $6385: $16 $03
	ld   d, $01                                      ; $6387: $16 $01
	ld   bc, $0029                                   ; $6389: $01 $29 $00
	ld   bc, $546b                                   ; $638c: $01 $6b $54
	ld   e, c                                        ; $638f: $59
	rst  $38                                         ; $6390: $ff
	rst  $38                                         ; $6391: $ff
	dec  c                                           ; $6392: $0d
	ld   a, b                                        ; $6393: $78
	and  c                                           ; $6394: $a1
	ld   l, [hl]                                     ; $6395: $6e
	ld   [hl], d                                     ; $6396: $72
	adc  h                                           ; $6397: $8c
	and  c                                           ; $6398: $a1
	ld   a, e                                        ; $6399: $7b
	ei                                               ; $639a: $fb
	ld   a, b                                        ; $639b: $78
	sbc  a                                           ; $639c: $9f
	dec  c                                           ; $639d: $0d
	ld   h, [hl]                                     ; $639e: $66
	sub  c                                           ; $639f: $91
	sbc  [hl]                                        ; $63a0: $9e
	adc  h                                           ; $63a1: $8c
	ld   l, l                                        ; $63a2: $6d
	ld   a, b                                        ; $63a3: $78
	sbc  a                                           ; $63a4: $9f
	dec  c                                           ; $63a5: $0d
	nop                                              ; $63a6: $00
	ld   a, [bc]                                     ; $63a7: $0a
	dec  c                                           ; $63a8: $0d
	nop                                              ; $63a9: $00
	nop                                              ; $63aa: $00
	rrca                                             ; $63ab: $0f
	nop                                              ; $63ac: $00
	ld   bc, $1e09                                   ; $63ad: $01 $09 $1e
	nop                                              ; $63b0: $00
	ld   c, $26                                      ; $63b1: $0e $26
	inc  e                                           ; $63b3: $1c
	ld   b, $06                                      ; $63b4: $06 $06
	ld   b, $1d                                      ; $63b6: $06 $1d
	ld   b, b                                        ; $63b8: $40
	ld   d, $03                                      ; $63b9: $16 $03
	ld   d, $01                                      ; $63bb: $16 $01
	ld   [bc], a                                     ; $63bd: $02
	add  hl, hl                                      ; $63be: $29
	nop                                              ; $63bf: $00
	ld   bc, $a178                                   ; $63c0: $01 $78 $a1
	ld   l, [hl]                                     ; $63c3: $6e
	sub  [hl]                                        ; $63c4: $96
	rst  $38                                         ; $63c5: $ff
	rst  $38                                         ; $63c6: $ff
	inc  bc                                          ; $63c7: $03
	add  d                                           ; $63c8: $82
	ld   e, d                                        ; $63c9: $5a
	ld   l, c                                        ; $63ca: $69
	ld   [hl], c                                     ; $63cb: $71
	ld   e, c                                        ; $63cc: $59
	ld   e, l                                        ; $63cd: $5d
	dec  c                                           ; $63ce: $0d
	ld   h, e                                        ; $63cf: $63
	ld   l, e                                        ; $63d0: $6b
	ld   [hl], c                                     ; $63d1: $71
	ld   [hl], h                                     ; $63d2: $74
	sbc  c                                           ; $63d3: $99
	ld   [hl], c                                     ; $63d4: $71
	ld   [hl], h                                     ; $63d5: $74
	ld   a, h                                        ; $63d6: $7c
	ld   a, c                                        ; $63d7: $79

Call_047_63d8:
	sub  [hl]                                        ; $63d8: $96
	rst  $38                                         ; $63d9: $ff
	rst  $38                                         ; $63da: $ff
	dec  c                                           ; $63db: $0d
	sub  b                                           ; $63dc: $90
	ld   d, h                                        ; $63dd: $54
	ld   d, d                                        ; $63de: $52
	ld   d, d                                        ; $63df: $52
	sub  [hl]                                        ; $63e0: $96
	sbc  [hl]                                        ; $63e1: $9e
	ld   h, [hl]                                     ; $63e2: $66
	sub  c                                           ; $63e3: $91
	ld   d, b                                        ; $63e4: $50
	ld   a, b                                        ; $63e5: $78
	sbc  a                                           ; $63e6: $9f
	dec  c                                           ; $63e7: $0d
	nop                                              ; $63e8: $00
	ld   a, [bc]                                     ; $63e9: $0a
	dec  c                                           ; $63ea: $0d
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	rrca                                             ; $63ed: $0f
	nop                                              ; $63ee: $00
	ld   bc, $1e09                                   ; $63ef: $01 $09 $1e
	nop                                              ; $63f2: $00
	rrca                                             ; $63f3: $0f
	nop                                              ; $63f4: $00
	ld   bc, $7d01                                   ; $63f5: $01 $01 $7d
	ld   d, d                                        ; $63f8: $52
	sbc  [hl]                                        ; $63f9: $9e
	sub  [hl]                                        ; $63fa: $96
	sbc  e                                           ; $63fb: $9b
	ld   h, c                                        ; $63fc: $61
	and  c                                           ; $63fd: $a1
	ld   [hl], l                                     ; $63fe: $75
	sbc  a                                           ; $63ff: $9f
	dec  c                                           ; $6400: $0d
	nop                                              ; $6401: $00
	ld   a, [bc]                                     ; $6402: $0a
	ld   c, $26                                      ; $6403: $0e $26
	inc  e                                           ; $6405: $1c
	ld   b, $07                                      ; $6406: $06 $07
	rlca                                             ; $6408: $07
	ld   bc, $6596                                   ; $6409: $01 $96 $65
	sbc  [hl]                                        ; $640c: $9e
	inc  bc                                          ; $640d: $03
	ld   l, d                                        ; $640e: $6a
	ld   d, h                                        ; $640f: $54
	ld   l, h                                        ; $6410: $6c
	ld   a, [$000d]                                  ; $6411: $fa $0d $00
	ld   a, [bc]                                     ; $6414: $0a
	inc  c                                           ; $6415: $0c
	dec  bc                                          ; $6416: $0b
	rrca                                             ; $6417: $0f
	nop                                              ; $6418: $00
	ld   bc, $060d                                   ; $6419: $01 $0d $06
	ld   bc, $e401                                   ; $641c: $01 $01 $e4
	or   c                                           ; $641f: $b1
	db   $e4                                         ; $6420: $e4
	or   c                                           ; $6421: $b1
	db   $e4                                         ; $6422: $e4
	or   c                                           ; $6423: $b1
	rst  $38                                         ; $6424: $ff
	rst  $38                                         ; $6425: $ff
	dec  c                                           ; $6426: $0d
	nop                                              ; $6427: $00
	ld   a, [bc]                                     ; $6428: $0a
	inc  e                                           ; $6429: $1c
	ld   b, $07                                      ; $642a: $06 $07
	rlca                                             ; $642c: $07
	ld   bc, $7158                                   ; $642d: $01 $58 $71
	sbc  [hl]                                        ; $6430: $9e
	ld   d, d                                        ; $6431: $52
	ld   d, d                                        ; $6432: $52
	inc  bc                                          ; $6433: $03
	ld   l, d                                        ; $6434: $6a
	ld   d, d                                        ; $6435: $52
	ld   [hl], c                                     ; $6436: $71
	add  l                                           ; $6437: $85
	sbc  b                                           ; $6438: $98
	ld   l, [hl]                                     ; $6439: $6e
	ld   a, b                                        ; $643a: $78
	ld   a, [$770d]                                  ; $643b: $fa $0d $77
	ld   d, h                                        ; $643e: $54
	ld   l, c                                        ; $643f: $69
	ld   a, b                                        ; $6440: $78
	sub  a                                           ; $6441: $97
	sbc  [hl]                                        ; $6442: $9e
	ld   d, b                                        ; $6443: $50
	ld   l, l                                        ; $6444: $6d
	ld   d, d                                        ; $6445: $52
	halt                                             ; $6446: $76
	inc  b                                           ; $6447: $04
	ld   c, $03                                      ; $6448: $0e $03
	ld   l, d                                        ; $644a: $6a
	ld   d, d                                        ; $644b: $52
	dec  c                                           ; $644c: $0d
	inc  bc                                          ; $644d: $03
	ld   c, [hl]                                     ; $644e: $4e
	inc  b                                           ; $644f: $04
	ld   a, l                                        ; $6450: $7d
	ld   h, l                                        ; $6451: $65
	ld   a, b                                        ; $6452: $78
	ld   d, d                                        ; $6453: $52
	ld   e, c                                        ; $6454: $59
	ld   sp, hl                                      ; $6455: $f9
	dec  c                                           ; $6456: $0d
	nop                                              ; $6457: $00
	ld   a, [bc]                                     ; $6458: $0a
	add  hl, de                                      ; $6459: $19
	dec  b                                           ; $645a: $05
	ld   [bc], a                                     ; $645b: $02
	ld   [bc], a                                     ; $645c: $02
	rst  $38                                         ; $645d: $ff
	ld   e, a                                        ; $645e: $5f
	ld   [hl], h                                     ; $645f: $74
	dec  b                                           ; $6460: $05
	ld   d, $6f                                      ; $6461: $16 $6f
	adc  h                                           ; $6463: $8c
	ld   h, a                                        ; $6464: $67
	nop                                              ; $6465: $00
	nop                                              ; $6466: $00
	ld   d, [hl]                                     ; $6467: $56
	and  c                                           ; $6468: $a1
	sbc  b                                           ; $6469: $98
	sub  l                                           ; $646a: $95
	ld   h, l                                        ; $646b: $65
	adc  h                                           ; $646c: $8c
	ld   h, a                                        ; $646d: $67
	nop                                              ; $646e: $00
	ld   bc, $c807                                   ; $646f: $01 $07 $c8
	ld   bc, $0302                                   ; $6472: $01 $02 $03
	ld   bc, $2000                                   ; $6475: $01 $00 $20
	nop                                              ; $6478: $00
	rlca                                             ; $6479: $07
	ld   e, [hl]                                     ; $647a: $5e
	ld   bc, $0302                                   ; $647b: $01 $02 $03
	ld   bc, $2001                                   ; $647e: $01 $01 $20
	nop                                              ; $6481: $00
	ld   b, $9d                                      ; $6482: $06 $9d
	ld   bc, $000f                                   ; $6484: $01 $0f $00
	ld   bc, $5601                                   ; $6487: $01 $01 $56
	and  c                                           ; $648a: $a1
	sbc  b                                           ; $648b: $98
	sub  l                                           ; $648c: $95
	ld   h, l                                        ; $648d: $65
	adc  h                                           ; $648e: $8c
	ld   h, a                                        ; $648f: $67
	sbc  a                                           ; $6490: $9f
	dec  c                                           ; $6491: $0d
	inc  b                                           ; $6492: $04
	adc  c                                           ; $6493: $89
	inc  b                                           ; $6494: $04
	ld   a, [hl]                                     ; $6495: $7e
	inc  b                                           ; $6496: $04
	sbc  [hl]                                        ; $6497: $9e
	inc  b                                           ; $6498: $04
	call nc, $9e5a                                   ; $6499: $d4 $5a $9e
	db   $e4                                         ; $649c: $e4
	call nz, $fbc9                                   ; $649d: $c4 $c9 $fb
	ld   a, b                                        ; $64a0: $78
	ld   a, h                                        ; $64a1: $7c
	ld   [hl], l                                     ; $64a2: $75
	sbc  a                                           ; $64a3: $9f
	dec  c                                           ; $64a4: $0d
	nop                                              ; $64a5: $00
	ld   a, [bc]                                     ; $64a6: $0a
	inc  e                                           ; $64a7: $1c
	ld   b, $05                                      ; $64a8: $06 $05
	dec  b                                           ; $64aa: $05
	dec  e                                           ; $64ab: $1d
	ld   b, b                                        ; $64ac: $40
	ld   d, $03                                      ; $64ad: $16 $03
	ld   d, $01                                      ; $64af: $16 $01
	ld   bc, $0029                                   ; $64b1: $01 $29 $00
	ld   bc, $a178                                   ; $64b4: $01 $78 $a1
	ld   l, [hl]                                     ; $64b7: $6e
	sbc  [hl]                                        ; $64b8: $9e
	ld   [hl], d                                     ; $64b9: $72
	adc  h                                           ; $64ba: $8c
	and  c                                           ; $64bb: $a1
	ld   a, e                                        ; $64bc: $7b
	ld   d, [hl]                                     ; $64bd: $56
	ld   a, h                                        ; $64be: $7c
	sbc  a                                           ; $64bf: $9f
	dec  c                                           ; $64c0: $0d
	nop                                              ; $64c1: $00
	ld   a, [bc]                                     ; $64c2: $0a
	nop                                              ; $64c3: $00
	inc  e                                           ; $64c4: $1c
	ld   b, $01                                      ; $64c5: $06 $01
	ld   bc, $6e01                                   ; $64c7: $01 $01 $6e
	adc  h                                           ; $64ca: $8c
	ld   [hl], c                                     ; $64cb: $71
	ld   [hl], h                                     ; $64cc: $74
	sbc  c                                           ; $64cd: $99
	ld   h, c                                        ; $64ce: $61
	halt                                             ; $64cf: $76
	ld   a, l                                        ; $64d0: $7d
	dec  c                                           ; $64d1: $0d
	inc  bc                                          ; $64d2: $03
	ld   c, [hl]                                     ; $64d3: $4e
	inc  b                                           ; $64d4: $04
	ld   a, l                                        ; $64d5: $7d
	ld   h, a                                        ; $64d6: $67
	sbc  c                                           ; $64d7: $99
	ld   [hl], c                                     ; $64d8: $71
	ld   [hl], h                                     ; $64d9: $74
	ld   h, c                                        ; $64da: $61
	halt                                             ; $64db: $76
	ld   l, [hl]                                     ; $64dc: $6e
	ld   a, b                                        ; $64dd: $78
	ld   sp, hl                                      ; $64de: $f9
	dec  c                                           ; $64df: $0d
	sub  [hl]                                        ; $64e0: $96
	ld   h, l                                        ; $64e1: $65
	sbc  [hl]                                        ; $64e2: $9e
	inc  bc                                          ; $64e3: $03
	ld   c, [hl]                                     ; $64e4: $4e
	inc  b                                           ; $64e5: $04
	ld   a, l                                        ; $64e6: $7d
	ld   l, [hl]                                     ; $64e7: $6e
	ld   a, [$000d]                                  ; $64e8: $fa $0d $00
	ld   a, [bc]                                     ; $64eb: $0a
	ld   b, $ec                                      ; $64ec: $06 $ec
	ld   bc, $000f                                   ; $64ee: $01 $0f $00
	ld   bc, $0201                                   ; $64f1: $01 $01 $02
	rst  $38                                         ; $64f4: $ff
	ld   e, a                                        ; $64f5: $5f
	ld   [hl], h                                     ; $64f6: $74
	dec  b                                           ; $64f7: $05
	ld   d, $6f                                      ; $64f8: $16 $6f
	adc  h                                           ; $64fa: $8c
	ld   h, a                                        ; $64fb: $67
	sbc  a                                           ; $64fc: $9f
	dec  c                                           ; $64fd: $0d
	nop                                              ; $64fe: $00
	ld   a, [bc]                                     ; $64ff: $0a
	inc  e                                           ; $6500: $1c
	ld   b, $01                                      ; $6501: $06 $01
	ld   bc, $9601                                   ; $6503: $01 $01 $96
	ld   h, l                                        ; $6506: $65
	sbc  [hl]                                        ; $6507: $9e
	inc  bc                                          ; $6508: $03
	ld   c, [hl]                                     ; $6509: $4e
	inc  b                                           ; $650a: $04
	ld   a, l                                        ; $650b: $7d
	ld   l, [hl]                                     ; $650c: $6e
	ld   a, [$000d]                                  ; $650d: $fa $0d $00
	ld   a, [bc]                                     ; $6510: $0a
	inc  c                                           ; $6511: $0c
	dec  bc                                          ; $6512: $0b
	rrca                                             ; $6513: $0f
	nop                                              ; $6514: $00
	ld   bc, $e401                                   ; $6515: $01 $01 $e4
	or   c                                           ; $6518: $b1
	db   $e4                                         ; $6519: $e4
	or   c                                           ; $651a: $b1
	db   $e4                                         ; $651b: $e4
	or   c                                           ; $651c: $b1
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	dec  c                                           ; $651f: $0d
	nop                                              ; $6520: $00
	ld   a, [bc]                                     ; $6521: $0a
	inc  e                                           ; $6522: $1c
	ld   b, $00                                      ; $6523: $06 $00
	nop                                              ; $6525: $00
	ld   bc, $5477                                   ; $6526: $01 $77 $54
	ld   l, [hl]                                     ; $6529: $6e
	sbc  [hl]                                        ; $652a: $9e
	xor  a                                           ; $652b: $af
	rst  $10                                         ; $652c: $d7
	and  e                                           ; $652d: $a3
	call nz, Call_047_59d8                           ; $652e: $c4 $d8 $59
	ld   sp, hl                                      ; $6531: $f9
	dec  c                                           ; $6532: $0d
	nop                                              ; $6533: $00
	ld   a, [bc]                                     ; $6534: $0a
	add  hl, de                                      ; $6535: $19
	dec  b                                           ; $6536: $05
	ld   [bc], a                                     ; $6537: $02
	adc  h                                           ; $6538: $8c
	ld   l, [hl]                                     ; $6539: $6e
	adc  h                                           ; $653a: $8c
	ld   l, [hl]                                     ; $653b: $6e
	nop                                              ; $653c: $00
	nop                                              ; $653d: $00
	xor  a                                           ; $653e: $af
	rst  $10                                         ; $653f: $d7
	and  e                                           ; $6540: $a3
	call nz, $ffd8                                   ; $6541: $c4 $d8 $ff
	rst  $38                                         ; $6544: $ff
	nop                                              ; $6545: $00
	ld   bc, $c907                                   ; $6546: $01 $07 $c9
	ld   [bc], a                                     ; $6549: $02
	ld   [bc], a                                     ; $654a: $02
	inc  bc                                          ; $654b: $03
	ld   bc, $2000                                   ; $654c: $01 $00 $20
	nop                                              ; $654f: $00
	rlca                                             ; $6550: $07
	dec  [hl]                                        ; $6551: $35
	ld   [bc], a                                     ; $6552: $02
	ld   [bc], a                                     ; $6553: $02
	inc  bc                                          ; $6554: $03
	ld   bc, $2001                                   ; $6555: $01 $01 $20
	nop                                              ; $6558: $00
	ld   b, $80                                      ; $6559: $06 $80

Jump_047_655b:
	ld   [bc], a                                     ; $655b: $02
	rrca                                             ; $655c: $0f
	nop                                              ; $655d: $00
	ld   bc, $af01                                   ; $655e: $01 $01 $af
	rst  $10                                         ; $6561: $d7
	and  e                                           ; $6562: $a3
	call nz, $ffd8                                   ; $6563: $c4 $d8 $ff
	rst  $38                                         ; $6566: $ff
	dec  c                                           ; $6567: $0d
	nop                                              ; $6568: $00
	ld   a, [bc]                                     ; $6569: $0a
	inc  e                                           ; $656a: $1c
	ld   b, $05                                      ; $656b: $06 $05
	dec  b                                           ; $656d: $05
	ld   bc, $a178                                   ; $656e: $01 $78 $a1
	ld   l, [hl]                                     ; $6571: $6e
	sbc  [hl]                                        ; $6572: $9e
	ld   h, c                                        ; $6573: $61
	ld   a, h                                        ; $6574: $7c
	ld   [hl], h                                     ; $6575: $74

Call_047_6576:
	ld   d, d                                        ; $6576: $52
	ld   [hl], a                                     ; $6577: $77
	ld   e, c                                        ; $6578: $59
	sub  [hl]                                        ; $6579: $96
	rst  $38                                         ; $657a: $ff
	rst  $38                                         ; $657b: $ff
	dec  c                                           ; $657c: $0d
	ld   [hl], d                                     ; $657d: $72
	adc  h                                           ; $657e: $8c
	and  c                                           ; $657f: $a1
	ld   a, e                                        ; $6580: $7b
	ei                                               ; $6581: $fb
	ld   a, h                                        ; $6582: $7c
	sbc  a                                           ; $6583: $9f
	dec  c                                           ; $6584: $0d
	nop                                              ; $6585: $00
	ld   a, [bc]                                     ; $6586: $0a
	inc  e                                           ; $6587: $1c
	ld   b, $00                                      ; $6588: $06 $00
	nop                                              ; $658a: $00
	ld   bc, $6d50                                   ; $658b: $01 $50 $6d
	ld   d, d                                        ; $658e: $52
	ld   a, l                                        ; $658f: $7d
	sbc  [hl]                                        ; $6590: $9e
	adc  h                                           ; $6591: $8c
	ld   l, [hl]                                     ; $6592: $6e
	adc  h                                           ; $6593: $8c
	ld   l, [hl]                                     ; $6594: $6e
	inc  bc                                          ; $6595: $03
	ld   l, d                                        ; $6596: $6a
	ld   d, h                                        ; $6597: $54
	ld   e, c                                        ; $6598: $59
	sub  a                                           ; $6599: $97
	sbc  [hl]                                        ; $659a: $9e
	dec  c                                           ; $659b: $0d
	adc  h                                           ; $659c: $8c
	ld   l, l                                        ; $659d: $6d
	ld   [bc], a                                     ; $659e: $02
	xor  d                                           ; $659f: $aa
	ld   [hl], l                                     ; $65a0: $75
	ld   a, b                                        ; $65a1: $78
	sbc  a                                           ; $65a2: $9f
	dec  c                                           ; $65a3: $0d
	nop                                              ; $65a4: $00
	ld   a, [bc]                                     ; $65a5: $0a
	nop                                              ; $65a6: $00
	inc  e                                           ; $65a7: $1c
	ld   b, $05                                      ; $65a8: $06 $05
	dec  b                                           ; $65aa: $05
	ld   bc, $8c6e                                   ; $65ab: $01 $6e $8c
	ld   [hl], c                                     ; $65ae: $71
	ld   [hl], h                                     ; $65af: $74
	sbc  c                                           ; $65b0: $99
	ld   [hl], c                                     ; $65b1: $71
	ld   [hl], h                                     ; $65b2: $74
	ld   h, c                                        ; $65b3: $61
	halt                                             ; $65b4: $76
	ld   a, l                                        ; $65b5: $7d
	dec  c                                           ; $65b6: $0d
	xor  a                                           ; $65b7: $af
	rst  $10                                         ; $65b8: $d7
	and  e                                           ; $65b9: $a3
	call nz, $6ed8                                   ; $65ba: $c4 $d8 $6e
	ld   a, b                                        ; $65bd: $78
	rst  $38                                         ; $65be: $ff
	rst  $38                                         ; $65bf: $ff
	dec  c                                           ; $65c0: $0d
	ld   a, b                                        ; $65c1: $78
	and  c                                           ; $65c2: $a1
	ld   l, [hl]                                     ; $65c3: $6e
	sbc  [hl]                                        ; $65c4: $9e
	ld   h, c                                        ; $65c5: $61
	ld   a, h                                        ; $65c6: $7c
	ld   [hl], h                                     ; $65c7: $74
	ld   d, d                                        ; $65c8: $52
	ld   [hl], a                                     ; $65c9: $77
	ld   e, c                                        ; $65ca: $59
	sub  [hl]                                        ; $65cb: $96
	sbc  a                                           ; $65cc: $9f
	dec  c                                           ; $65cd: $0d
	nop                                              ; $65ce: $00
	ld   a, [bc]                                     ; $65cf: $0a
	inc  e                                           ; $65d0: $1c
	ld   b, $00                                      ; $65d1: $06 $00
	nop                                              ; $65d3: $00
	ld   bc, $6d50                                   ; $65d4: $01 $50 $6d
	ld   d, d                                        ; $65d7: $52
	ld   a, l                                        ; $65d8: $7d
	sbc  [hl]                                        ; $65d9: $9e
	adc  h                                           ; $65da: $8c
	ld   l, [hl]                                     ; $65db: $6e
	adc  h                                           ; $65dc: $8c
	ld   l, [hl]                                     ; $65dd: $6e
	inc  bc                                          ; $65de: $03
	ld   l, d                                        ; $65df: $6a
	ld   d, h                                        ; $65e0: $54
	ld   e, c                                        ; $65e1: $59
	sub  a                                           ; $65e2: $97
	sbc  [hl]                                        ; $65e3: $9e
	dec  c                                           ; $65e4: $0d
	adc  h                                           ; $65e5: $8c
	ld   l, l                                        ; $65e6: $6d
	ld   [bc], a                                     ; $65e7: $02
	xor  d                                           ; $65e8: $aa
	ld   [hl], l                                     ; $65e9: $75
	ld   a, b                                        ; $65ea: $78
	sbc  a                                           ; $65eb: $9f
	dec  c                                           ; $65ec: $0d
	nop                                              ; $65ed: $00
	ld   a, [bc]                                     ; $65ee: $0a
	nop                                              ; $65ef: $00
	rrca                                             ; $65f0: $0f
	nop                                              ; $65f1: $00
	ld   bc, $8c01                                   ; $65f2: $01 $01 $8c
	ld   l, [hl]                                     ; $65f5: $6e
	adc  h                                           ; $65f6: $8c
	ld   l, [hl]                                     ; $65f7: $6e
	sbc  a                                           ; $65f8: $9f
	dec  c                                           ; $65f9: $0d
	nop                                              ; $65fa: $00
	ld   a, [bc]                                     ; $65fb: $0a
	inc  e                                           ; $65fc: $1c
	ld   b, $01                                      ; $65fd: $06 $01
	ld   bc, $9201                                   ; $65ff: $01 $01 $92
	sbc  c                                           ; $6602: $99
	ld   h, [hl]                                     ; $6603: $66
	sub  c                                           ; $6604: $91
	ld   a, e                                        ; $6605: $7b
	ld   d, [hl]                                     ; $6606: $56
	ld   e, c                                        ; $6607: $59
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	dec  c                                           ; $660a: $0d
	ld   h, [hl]                                     ; $660b: $66
	sub  c                                           ; $660c: $91
	sbc  [hl]                                        ; $660d: $9e
	ld   [hl], a                                     ; $660e: $77
	and  c                                           ; $660f: $a1
	ld   [hl], a                                     ; $6610: $77
	and  c                                           ; $6611: $a1
	ld   d, d                                        ; $6612: $52
	ld   e, l                                        ; $6613: $5d
	ld   l, d                                        ; $6614: $6a
	ld   a, [$000d]                                  ; $6615: $fa $0d $00
	ld   a, [bc]                                     ; $6618: $0a
	rrca                                             ; $6619: $0f
	nop                                              ; $661a: $00
	ld   bc, $e401                                   ; $661b: $01 $01 $e4
	or   c                                           ; $661e: $b1
	db   $e4                                         ; $661f: $e4
	or   c                                           ; $6620: $b1
	db   $e4                                         ; $6621: $e4
	or   c                                           ; $6622: $b1
	rst  $38                                         ; $6623: $ff
	rst  $38                                         ; $6624: $ff
	dec  c                                           ; $6625: $0d
	nop                                              ; $6626: $00
	ld   a, [bc]                                     ; $6627: $0a
	inc  e                                           ; $6628: $1c
	ld   b, $00                                      ; $6629: $06 $00
	nop                                              ; $662b: $00
	ld   bc, $5477                                   ; $662c: $01 $77 $54
	ld   l, [hl]                                     ; $662f: $6e
	sbc  [hl]                                        ; $6630: $9e
	xor  a                                           ; $6631: $af
	rst  $10                                         ; $6632: $d7
	and  e                                           ; $6633: $a3
	call nz, Call_047_59d8                           ; $6634: $c4 $d8 $59
	ld   sp, hl                                      ; $6637: $f9
	dec  c                                           ; $6638: $0d
	nop                                              ; $6639: $00
	ld   a, [bc]                                     ; $663a: $0a
	add  hl, de                                      ; $663b: $19
	dec  b                                           ; $663c: $05
	ld   [bc], a                                     ; $663d: $02
	adc  h                                           ; $663e: $8c
	ld   l, [hl]                                     ; $663f: $6e
	adc  h                                           ; $6640: $8c
	ld   l, [hl]                                     ; $6641: $6e
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	xor  a                                           ; $6644: $af
	rst  $10                                         ; $6645: $d7
	and  e                                           ; $6646: $a3
	call nz, $ffd8                                   ; $6647: $c4 $d8 $ff
	rst  $38                                         ; $664a: $ff
	nop                                              ; $664b: $00
	ld   bc, $3b07                                   ; $664c: $01 $07 $3b
	inc  bc                                          ; $664f: $03
	ld   [bc], a                                     ; $6650: $02
	inc  bc                                          ; $6651: $03
	ld   bc, $2000                                   ; $6652: $01 $00 $20
	nop                                              ; $6655: $00
	rlca                                             ; $6656: $07
	dec  [hl]                                        ; $6657: $35
	ld   [bc], a                                     ; $6658: $02
	ld   [bc], a                                     ; $6659: $02
	inc  bc                                          ; $665a: $03
	ld   bc, $2001                                   ; $665b: $01 $01 $20
	nop                                              ; $665e: $00
	ld   b, $80                                      ; $665f: $06 $80
	ld   [bc], a                                     ; $6661: $02
	rrca                                             ; $6662: $0f
	nop                                              ; $6663: $00
	ld   bc, $8c01                                   ; $6664: $01 $01 $8c
	ld   l, [hl]                                     ; $6667: $6e
	adc  h                                           ; $6668: $8c
	ld   l, [hl]                                     ; $6669: $6e
	sbc  [hl]                                        ; $666a: $9e
	ld   d, d                                        ; $666b: $52
	ld   e, a                                        ; $666c: $5f
	adc  h                                           ; $666d: $8c
	ld   h, a                                        ; $666e: $67
	sbc  a                                           ; $666f: $9f
	dec  c                                           ; $6670: $0d
	nop                                              ; $6671: $00
	ld   a, [bc]                                     ; $6672: $0a
	inc  e                                           ; $6673: $1c
	ld   b, $01                                      ; $6674: $06 $01
	ld   bc, $6b01                                   ; $6676: $01 $01 $6b
	ld   d, h                                        ; $6679: $54
	ld   h, c                                        ; $667a: $61
	ld   a, b                                        ; $667b: $78
	ld   e, l                                        ; $667c: $5d
	ld   [hl], c                                     ; $667d: $71
	ld   l, a                                        ; $667e: $6f
	sub  c                                           ; $667f: $91
	ld   a, b                                        ; $6680: $78
	rst  $38                                         ; $6681: $ff
	rst  $38                                         ; $6682: $ff
	dec  c                                           ; $6683: $0d
	ld   h, e                                        ; $6684: $63
	ld   d, b                                        ; $6685: $50
	sbc  [hl]                                        ; $6686: $9e
	ld   [hl], a                                     ; $6687: $77
	and  c                                           ; $6688: $a1
	ld   [hl], a                                     ; $6689: $77
	and  c                                           ; $668a: $a1
	ld   d, d                                        ; $668b: $52
	ld   e, l                                        ; $668c: $5d
	ld   l, d                                        ; $668d: $6a
	ld   a, [$000d]                                  ; $668e: $fa $0d $00
	ld   a, [bc]                                     ; $6691: $0a
	rrca                                             ; $6692: $0f
	nop                                              ; $6693: $00
	ld   bc, $e401                                   ; $6694: $01 $01 $e4
	or   c                                           ; $6697: $b1
	db   $e4                                         ; $6698: $e4
	or   c                                           ; $6699: $b1
	db   $e4                                         ; $669a: $e4
	or   c                                           ; $669b: $b1
	rst  $38                                         ; $669c: $ff
	rst  $38                                         ; $669d: $ff
	dec  c                                           ; $669e: $0d
	nop                                              ; $669f: $00
	ld   a, [bc]                                     ; $66a0: $0a
	inc  e                                           ; $66a1: $1c
	ld   b, $00                                      ; $66a2: $06 $00
	nop                                              ; $66a4: $00
	ld   bc, $5477                                   ; $66a5: $01 $77 $54
	ld   l, [hl]                                     ; $66a8: $6e
	ld   sp, hl                                      ; $66a9: $f9
	dec  c                                           ; $66aa: $0d
	ld   d, d                                        ; $66ab: $52
	ld   d, d                                        ; $66ac: $52
	ld   e, c                                        ; $66ad: $59
	ld   h, b                                        ; $66ae: $60
	and  c                                           ; $66af: $a1
	xor  a                                           ; $66b0: $af
	rst  $10                                         ; $66b1: $d7
	and  e                                           ; $66b2: $a3
	call nz, $6ed8                                   ; $66b3: $c4 $d8 $6e
	sbc  e                                           ; $66b6: $9b
	ld   sp, hl                                      ; $66b7: $f9
	dec  c                                           ; $66b8: $0d
	nop                                              ; $66b9: $00
	ld   a, [bc]                                     ; $66ba: $0a
	add  hl, de                                      ; $66bb: $19
	dec  b                                           ; $66bc: $05
	ld   [bc], a                                     ; $66bd: $02
	adc  h                                           ; $66be: $8c
	ld   l, [hl]                                     ; $66bf: $6e
	adc  h                                           ; $66c0: $8c
	ld   l, [hl]                                     ; $66c1: $6e
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	xor  a                                           ; $66c4: $af
	rst  $10                                         ; $66c5: $d7
	and  e                                           ; $66c6: $a3
	call nz, $ffd8                                   ; $66c7: $c4 $d8 $ff
	rst  $38                                         ; $66ca: $ff
	nop                                              ; $66cb: $00
	ld   bc, $6507                                   ; $66cc: $01 $07 $65
	inc  b                                           ; $66cf: $04
	ld   [bc], a                                     ; $66d0: $02
	inc  bc                                          ; $66d1: $03
	ld   bc, $2000                                   ; $66d2: $01 $00 $20
	nop                                              ; $66d5: $00
	rlca                                             ; $66d6: $07
	cp   e                                           ; $66d7: $bb
	inc  bc                                          ; $66d8: $03
	ld   [bc], a                                     ; $66d9: $02
	inc  bc                                          ; $66da: $03
	ld   bc, $2001                                   ; $66db: $01 $01 $20
	nop                                              ; $66de: $00
	ld   b, $ed                                      ; $66df: $06 $ed
	inc  bc                                          ; $66e1: $03
	rrca                                             ; $66e2: $0f
	nop                                              ; $66e3: $00
	ld   bc, $af01                                   ; $66e4: $01 $01 $af
	rst  $10                                         ; $66e7: $d7
	and  e                                           ; $66e8: $a3
	call nz, $ffd8                                   ; $66e9: $c4 $d8 $ff
	rst  $38                                         ; $66ec: $ff
	ld   [hl], l                                     ; $66ed: $75
	ld   h, a                                        ; $66ee: $67
	sbc  a                                           ; $66ef: $9f
	dec  c                                           ; $66f0: $0d
	nop                                              ; $66f1: $00
	ld   a, [bc]                                     ; $66f2: $0a
	inc  e                                           ; $66f3: $1c
	ld   b, $01                                      ; $66f4: $06 $01
	ld   bc, $d001                                   ; $66f6: $01 $01 $d0
	ret  nc                                          ; $66f9: $d0

	ret  nc                                          ; $66fa: $d0

	ret  nc                                          ; $66fb: $d0

	rst  $38                                         ; $66fc: $ff
	rst  $38                                         ; $66fd: $ff
	dec  c                                           ; $66fe: $0d
	inc  bc                                          ; $66ff: $03
	adc  e                                           ; $6700: $8b
	ld   a, l                                        ; $6701: $7d
	sbc  [hl]                                        ; $6702: $9e
	ld   d, b                                        ; $6703: $50
	ld   l, l                                        ; $6704: $6d
	ld   d, d                                        ; $6705: $52
	sub  b                                           ; $6706: $90
	xor  a                                           ; $6707: $af
	rst  $10                                         ; $6708: $d7
	and  e                                           ; $6709: $a3
	call nz, Call_047_63d8                           ; $670a: $c4 $d8 $63
	sbc  a                                           ; $670d: $9f
	dec  c                                           ; $670e: $0d
	nop                                              ; $670f: $00
	ld   a, [bc]                                     ; $6710: $0a
	ld   b, $25                                      ; $6711: $06 $25
	inc  b                                           ; $6713: $04
	inc  e                                           ; $6714: $1c
	ld   b, $01                                      ; $6715: $06 $01
	ld   bc, $6e01                                   ; $6717: $01 $01 $6e
	adc  h                                           ; $671a: $8c
	ld   [hl], c                                     ; $671b: $71
	ld   [hl], h                                     ; $671c: $74
	sbc  c                                           ; $671d: $99
	ld   [hl], c                                     ; $671e: $71
	ld   [hl], h                                     ; $671f: $74
	ld   h, c                                        ; $6720: $61
	halt                                             ; $6721: $76
	ld   a, l                                        ; $6722: $7d
	dec  c                                           ; $6723: $0d
	xor  a                                           ; $6724: $af
	rst  $10                                         ; $6725: $d7
	and  e                                           ; $6726: $a3
	call nz, $6ed8                                   ; $6727: $c4 $d8 $6e
	ld   a, b                                        ; $672a: $78
	rst  $38                                         ; $672b: $ff
	rst  $38                                         ; $672c: $ff
	dec  c                                           ; $672d: $0d
	nop                                              ; $672e: $00
	ld   a, [bc]                                     ; $672f: $0a
	ld   bc, $9075                                   ; $6730: $01 $75 $90
	sbc  [hl]                                        ; $6733: $9e
	ld   d, b                                        ; $6734: $50
	ld   l, l                                        ; $6735: $6d
	ld   d, d                                        ; $6736: $52
	sub  b                                           ; $6737: $90
	inc  bc                                          ; $6738: $03
	adc  e                                           ; $6739: $8b
	ld   a, l                                        ; $673a: $7d
	dec  c                                           ; $673b: $0d
	xor  a                                           ; $673c: $af
	rst  $10                                         ; $673d: $d7
	and  e                                           ; $673e: $a3
	call nz, Call_047_63d8                           ; $673f: $c4 $d8 $63
	rst  $38                                         ; $6742: $ff
	rst  $38                                         ; $6743: $ff
	ret  nc                                          ; $6744: $d0

	ret  nc                                          ; $6745: $d0

	ret  nc                                          ; $6746: $d0

	ret  nc                                          ; $6747: $d0

	sbc  a                                           ; $6748: $9f
	dec  c                                           ; $6749: $0d
	nop                                              ; $674a: $00
	ld   a, [bc]                                     ; $674b: $0a
	inc  e                                           ; $674c: $1c
	ld   b, $07                                      ; $674d: $06 $07
	rlca                                             ; $674f: $07
	dec  e                                           ; $6750: $1d
	ld   b, b                                        ; $6751: $40
	ld   d, $03                                      ; $6752: $16 $03
	ld   d, $01                                      ; $6754: $16 $01

Call_047_6756:
	inc  bc                                          ; $6756: $03
	jr   z, jr_047_6759                              ; $6757: $28 $00

jr_047_6759:
	ld   bc, $526d                                   ; $6759: $01 $6d $52
	ld   h, l                                        ; $675c: $65
	ld   l, l                                        ; $675d: $6d
	sub  b                                           ; $675e: $90
	and  c                                           ; $675f: $a1
	ld   l, [hl]                                     ; $6760: $6e
	ld   a, b                                        ; $6761: $78
	sbc  [hl]                                        ; $6762: $9e
	ld   e, b                                        ; $6763: $58
	inc  bc                                          ; $6764: $03
	ld   c, a                                        ; $6765: $4f
	rst  $38                                         ; $6766: $ff
	rst  $38                                         ; $6767: $ff
	dec  c                                           ; $6768: $0d
	ld   l, a                                        ; $6769: $6f
	sub  l                                           ; $676a: $95
	ld   [hl], c                                     ; $676b: $71
	halt                                             ; $676c: $76
	ld   [bc], a                                     ; $676d: $02
	sub  l                                           ; $676e: $95
	inc  bc                                          ; $676f: $03
	jp   c, Jump_047_6d65                            ; $6770: $da $65 $6d

	ld   l, d                                        ; $6773: $6a
	sbc  a                                           ; $6774: $9f

Jump_047_6775:
	dec  c                                           ; $6775: $0d
	ld   h, [hl]                                     ; $6776: $66
	sub  c                                           ; $6777: $91
	sbc  [hl]                                        ; $6778: $9e
	adc  h                                           ; $6779: $8c
	ld   l, l                                        ; $677a: $6d
	ld   [bc], a                                     ; $677b: $02
	xor  d                                           ; $677c: $aa
	ld   [hl], l                                     ; $677d: $75
	ld   a, b                                        ; $677e: $78
	sbc  a                                           ; $677f: $9f
	dec  c                                           ; $6780: $0d
	nop                                              ; $6781: $00
	ld   a, [bc]                                     ; $6782: $0a
	dec  c                                           ; $6783: $0d
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00
	rrca                                             ; $6786: $0f
	nop                                              ; $6787: $00
	ld   bc, $1e09                                   ; $6788: $01 $09 $1e
	nop                                              ; $678b: $00
	rrca                                             ; $678c: $0f
	nop                                              ; $678d: $00
	ld   bc, $8c01                                   ; $678e: $01 $01 $8c
	ld   l, [hl]                                     ; $6791: $6e
	adc  h                                           ; $6792: $8c
	ld   l, [hl]                                     ; $6793: $6e
	ld   a, [$660d]                                  ; $6794: $fa $0d $66
	sub  c                                           ; $6797: $91
	and  c                                           ; $6798: $a1
	ld   h, [hl]                                     ; $6799: $66
	sub  c                                           ; $679a: $91
	and  c                                           ; $679b: $a1
	sbc  [hl]                                        ; $679c: $9e
	dec  c                                           ; $679d: $0d
	sub  b                                           ; $679e: $90
	ld   [hl], c                                     ; $679f: $71
	ld   [hl], h                                     ; $67a0: $74
	ld   e, e                                        ; $67a1: $5b
	ld   [hl], h                                     ; $67a2: $74
	ld   e, l                                        ; $67a3: $5d
	ld   l, [hl]                                     ; $67a4: $6e
	ld   h, e                                        ; $67a5: $63
	ld   d, d                                        ; $67a6: $52
	ld   a, [$000d]                                  ; $67a7: $fa $0d $00
	ld   a, [bc]                                     ; $67aa: $0a
	inc  e                                           ; $67ab: $1c
	ld   b, $02                                      ; $67ac: $06 $02
	ld   [bc], a                                     ; $67ae: $02
	ld   bc, $715d                                   ; $67af: $01 $5d $71
	ld   l, e                                        ; $67b2: $6b
	ei                                               ; $67b3: $fb
	rst  $38                                         ; $67b4: $ff
	rst  $38                                         ; $67b5: $ff
	dec  c                                           ; $67b6: $0d
	sub  b                                           ; $67b7: $90
	ld   d, h                                        ; $67b8: $54
	and  $b2                                         ; $67b9: $e6 $b2
	ld   l, [hl]                                     ; $67bb: $6e
	ld   a, [$000d]                                  ; $67bc: $fa $0d $00
	ld   a, [bc]                                     ; $67bf: $0a
	inc  c                                           ; $67c0: $0c
	dec  bc                                          ; $67c1: $0b
	inc  e                                           ; $67c2: $1c
	ld   b, $05                                      ; $67c3: $06 $05
	dec  b                                           ; $67c5: $05
	dec  e                                           ; $67c6: $1d
	ld   b, b                                        ; $67c7: $40
	ld   d, $03                                      ; $67c8: $16 $03
	ld   d, $01                                      ; $67ca: $16 $01
	inc  bc                                          ; $67cc: $03
	jr   z, jr_047_67cf                              ; $67cd: $28 $00

jr_047_67cf:
	ld   bc, $9e6d                                   ; $67cf: $01 $6d $9e
	ld   l, l                                        ; $67d2: $6d
	ld   d, d                                        ; $67d3: $52
	ld   h, l                                        ; $67d4: $65
	ld   l, l                                        ; $67d5: $6d
	sub  b                                           ; $67d6: $90
	and  c                                           ; $67d7: $a1
	ld   l, [hl]                                     ; $67d8: $6e
	rst  $38                                         ; $67d9: $ff
	rst  $38                                         ; $67da: $ff
	dec  c                                           ; $67db: $0d
	ld   e, b                                        ; $67dc: $58
	inc  bc                                          ; $67dd: $03
	ld   c, a                                        ; $67de: $4f
	sbc  [hl]                                        ; $67df: $9e
	ld   h, a                                        ; $67e0: $67
	ld   h, b                                        ; $67e1: $60
	ld   d, [hl]                                     ; $67e2: $56
	sub  [hl]                                        ; $67e3: $96
	sbc  a                                           ; $67e4: $9f
	dec  c                                           ; $67e5: $0d
	nop                                              ; $67e6: $00
	ld   a, [bc]                                     ; $67e7: $0a
	rrca                                             ; $67e8: $0f
	nop                                              ; $67e9: $00
	ld   bc, $0101                                   ; $67ea: $01 $01 $01
	inc  bc                                          ; $67ed: $03
	inc  bc                                          ; $67ee: $03
	ld   c, [hl]                                     ; $67ef: $4e
	ld   [hl], c                                     ; $67f0: $71
	ld   l, l                                        ; $67f1: $6d
	rst  $38                                         ; $67f2: $ff
	rst  $38                                         ; $67f3: $ff
	ld   bc, $0d04                                   ; $67f4: $01 $04 $0d
	nop                                              ; $67f7: $00
	ld   a, [bc]                                     ; $67f8: $0a
	inc  e                                           ; $67f9: $1c
	ld   b, $05                                      ; $67fa: $06 $05
	dec  b                                           ; $67fc: $05
	ld   bc, $6763                                   ; $67fd: $01 $63 $67
	ld   e, d                                        ; $6800: $5a
	ld   a, c                                        ; $6801: $79
	ld   d, b                                        ; $6802: $50
	ld   l, l                                        ; $6803: $6d
	ld   d, d                                        ; $6804: $52
	sub  b                                           ; $6805: $90
	dec  c                                           ; $6806: $0d
	inc  bc                                          ; $6807: $03
	ld   l, d                                        ; $6808: $6a
	ld   d, d                                        ; $6809: $52
	ld   h, a                                        ; $680a: $67
	ld   e, h                                        ; $680b: $5c
	ld   l, l                                        ; $680c: $6d
	adc  l                                           ; $680d: $8d
	ld   l, l                                        ; $680e: $6d
	ld   d, d                                        ; $680f: $52
	ld   l, [hl]                                     ; $6810: $6e
	ld   a, b                                        ; $6811: $78
	sbc  a                                           ; $6812: $9f
	dec  c                                           ; $6813: $0d
	inc  b                                           ; $6814: $04
	sub  l                                           ; $6815: $95
	ld   [bc], a                                     ; $6816: $02
	ld   hl, $0279                                   ; $6817: $21 $79 $02
	or   l                                           ; $681a: $b5
	ld   [hl], c                                     ; $681b: $71
	ld   [hl], h                                     ; $681c: $74
	inc  b                                           ; $681d: $04
	xor  l                                           ; $681e: $ad
	inc  b                                           ; $681f: $04
	ld   b, d                                        ; $6820: $42
	ld   h, a                                        ; $6821: $67
	sbc  c                                           ; $6822: $99
	sub  [hl]                                        ; $6823: $96
	sbc  a                                           ; $6824: $9f
	dec  c                                           ; $6825: $0d
	nop                                              ; $6826: $00
	ld   a, [bc]                                     ; $6827: $0a
	dec  c                                           ; $6828: $0d
	nop                                              ; $6829: $00
	nop                                              ; $682a: $00
	rrca                                             ; $682b: $0f
	nop                                              ; $682c: $00
	ld   bc, $0101                                   ; $682d: $01 $01 $01
	inc  bc                                          ; $6830: $03
	ld   d, h                                        ; $6831: $54
	rst  $38                                         ; $6832: $ff
	rst  $38                                         ; $6833: $ff
	ld   e, e                                        ; $6834: $5b
	sub  b                                           ; $6835: $90
	ld   l, a                                        ; $6836: $6f
	ld   [bc], a                                     ; $6837: $02
	jr   z, jr_047_688c                              ; $6838: $28 $52

	rst  $38                                         ; $683a: $ff
	rst  $38                                         ; $683b: $ff
	ld   bc, $0d04                                   ; $683c: $01 $04 $0d
	nop                                              ; $683f: $00
	ld   a, [bc]                                     ; $6840: $0a
	rlca                                             ; $6841: $07
	ld   h, $05                                      ; $6842: $26 $05
	inc  bc                                          ; $6844: $03
	inc  de                                          ; $6845: $13
	ld   bc, $2568                                   ; $6846: $01 $68 $25
	nop                                              ; $6849: $00
	ld   b, $2f                                      ; $684a: $06 $2f
	ld   b, $0f                                      ; $684c: $06 $0f
	nop                                              ; $684e: $00
	ld   bc, $0101                                   ; $684f: $01 $01 $01
	inc  bc                                          ; $6852: $03
	inc  b                                           ; $6853: $04
	ld   l, l                                        ; $6854: $6d
	sub  b                                           ; $6855: $90
	sbc  [hl]                                        ; $6856: $9e
	inc  b                                           ; $6857: $04
	sub  l                                           ; $6858: $95
	ld   [bc], a                                     ; $6859: $02
	ld   hl, $0486                                   ; $685a: $21 $86 $04
	jp   Jump_047_7471                               ; $685d: $c3 $71 $74


	dec  c                                           ; $6860: $0d
	db   $10                                         ; $6861: $10
	ld   [bc], a                                     ; $6862: $02
	jr   nz, jr_047_6868                             ; $6863: $20 $03

	and  a                                           ; $6865: $a7
	adc  l                                           ; $6866: $8d
	ld   h, l                                        ; $6867: $65

jr_047_6868:
	sub  [hl]                                        ; $6868: $96
	ld   d, h                                        ; $6869: $54
	rst  $38                                         ; $686a: $ff
	rst  $38                                         ; $686b: $ff
	ld   bc, $0d04                                   ; $686c: $01 $04 $0d
	nop                                              ; $686f: $00
	ld   a, [bc]                                     ; $6870: $0a
	inc  c                                           ; $6871: $0c
	ld   [bc], a                                     ; $6872: $02
	ld   c, $5a                                      ; $6873: $0e $5a
	inc  e                                           ; $6875: $1c
	inc  bc                                          ; $6876: $03
	rlca                                             ; $6877: $07
	rlca                                             ; $6878: $07
	ld   bc, $9750                                   ; $6879: $01 $50 $97
	sbc  [hl]                                        ; $687c: $9e
	ld   [$5d00], sp                                 ; $687d: $08 $00 $5d
	and  c                                           ; $6880: $a1
	sbc  a                                           ; $6881: $9f
	dec  c                                           ; $6882: $0d
	inc  b                                           ; $6883: $04
	ld   c, c                                        ; $6884: $49
	ld   a, [$10f9]                                  ; $6885: $fa $f9 $10
	ld   l, e                                        ; $6888: $6b
	ld   a, h                                        ; $6889: $7c
	inc  b                                           ; $688a: $04
	dec  c                                           ; $688b: $0d

jr_047_688c:
	ld   a, l                                        ; $688c: $7d
	ld   a, [$0dfa]                                  ; $688d: $fa $fa $0d
	rst  $10                                         ; $6890: $d7
	or   b                                           ; $6891: $b0
	rst  $10                                         ; $6892: $d7
	or   b                                           ; $6893: $b0
	ld   h, [hl]                                     ; $6894: $66
	sub  c                                           ; $6895: $91
	ld   a, b                                        ; $6896: $78
	ld   d, d                                        ; $6897: $52
	ld   a, h                                        ; $6898: $7c
	ld   a, [$fafa]                                  ; $6899: $fa $fa $fa
	dec  c                                           ; $689c: $0d
	nop                                              ; $689d: $00
	ld   a, [bc]                                     ; $689e: $0a
	rrca                                             ; $689f: $0f
	nop                                              ; $68a0: $00
	ld   bc, $0301                                   ; $68a1: $01 $01 $03
	adc  e                                           ; $68a4: $8b
	ld   a, l                                        ; $68a5: $7d
	rst  $38                                         ; $68a6: $ff
	rst  $38                                         ; $68a7: $ff
	dec  c                                           ; $68a8: $0d
	ld   e, c                                        ; $68a9: $59
	ld   e, l                                        ; $68aa: $5d
	ld   e, c                                        ; $68ab: $59
	ld   e, l                                        ; $68ac: $5d
	ld   h, l                                        ; $68ad: $65
	ld   e, c                                        ; $68ae: $59
	ld   h, [hl]                                     ; $68af: $66
	ld   e, c                                        ; $68b0: $59
	rst  $38                                         ; $68b1: $ff
	rst  $38                                         ; $68b2: $ff
	dec  c                                           ; $68b3: $0d
	nop                                              ; $68b4: $00
	ld   a, [bc]                                     ; $68b5: $0a
	inc  e                                           ; $68b6: $1c
	inc  bc                                          ; $68b7: $03
	inc  b                                           ; $68b8: $04
	inc  b                                           ; $68b9: $04
	ld   bc, $5b50                                   ; $68ba: $01 $50 $5b
	sbc  d                                           ; $68bd: $9a
	ld   l, l                                        ; $68be: $6d
	rst  $38                                         ; $68bf: $ff
	rst  $38                                         ; $68c0: $ff
	dec  c                                           ; $68c1: $0d
	ld   [hl], l                                     ; $68c2: $75
	sub  b                                           ; $68c3: $90
	sbc  [hl]                                        ; $68c4: $9e
	ld   l, e                                        ; $68c5: $6b
	ld   a, h                                        ; $68c6: $7c
	adc  h                                           ; $68c7: $8c
	adc  h                                           ; $68c8: $8c
	ld   h, [hl]                                     ; $68c9: $66
	sub  c                                           ; $68ca: $91
	inc  bc                                          ; $68cb: $03
	ld   l, l                                        ; $68cc: $6d
	dec  b                                           ; $68cd: $05
	add  hl, de                                      ; $68ce: $19
	ld   a, c                                        ; $68cf: $79
	dec  c                                           ; $68d0: $0d
	ld   h, e                                        ; $68d1: $63
	ld   h, l                                        ; $68d2: $65
	ld   [hl], d                                     ; $68d3: $72
	ld   e, c                                        ; $68d4: $59
	ld   d, [hl]                                     ; $68d5: $56
	sbc  c                                           ; $68d6: $99
	sbc  l                                           ; $68d7: $9d
	ld   a, e                                        ; $68d8: $7b
	rst  $38                                         ; $68d9: $ff
	rst  $38                                         ; $68da: $ff
	dec  c                                           ; $68db: $0d
	nop                                              ; $68dc: $00
	ld   a, [bc]                                     ; $68dd: $0a
	inc  e                                           ; $68de: $1c
	inc  bc                                          ; $68df: $03
	ld   [bc], a                                     ; $68e0: $02
	ld   [bc], a                                     ; $68e1: $02
	ld   bc, $5252                                   ; $68e2: $01 $52 $52
	sbc  l                                           ; $68e5: $9d
	sbc  a                                           ; $68e6: $9f
	dec  c                                           ; $68e7: $0d
	ld   [bc], a                                     ; $68e8: $02
	and  l                                           ; $68e9: $a5
	ld   e, c                                        ; $68ea: $59
	sub  a                                           ; $68eb: $97
	inc  bc                                          ; $68ec: $03
	db   $fd                                         ; $68ed: $fd
	inc  bc                                          ; $68ee: $03
	ld   l, l                                        ; $68ef: $6d
	sub  [hl]                                        ; $68f0: $96
	sbc  a                                           ; $68f1: $9f
	dec  c                                           ; $68f2: $0d
	ld   d, d                                        ; $68f3: $52
	ld   d, d                                        ; $68f4: $52
	sbc  l                                           ; $68f5: $9d
	ld   a, e                                        ; $68f6: $7b
	sbc  a                                           ; $68f7: $9f
	dec  c                                           ; $68f8: $0d
	nop                                              ; $68f9: $00
	ld   a, [bc]                                     ; $68fa: $0a
	ld   a, [de]                                     ; $68fb: $1a
	inc  bc                                          ; $68fc: $03
	inc  e                                           ; $68fd: $1c
	inc  bc                                          ; $68fe: $03
	inc  bc                                          ; $68ff: $03
	inc  bc                                          ; $6900: $03
	ld   bc, $5483                                   ; $6901: $01 $83 $54
	sbc  [hl]                                        ; $6904: $9e
	sub  [hl]                                        ; $6905: $96
	ld   e, l                                        ; $6906: $5d
	ld   e, d                                        ; $6907: $5a
	and  c                                           ; $6908: $a1
	ld   a, [hl]                                     ; $6909: $7e
	ld   [hl], c                                     ; $690a: $71
	ld   l, l                                        ; $690b: $6d
	sbc  l                                           ; $690c: $9d
	ld   a, e                                        ; $690d: $7b
	sbc  a                                           ; $690e: $9f
	dec  c                                           ; $690f: $0d
	ld   a, b                                        ; $6910: $78
	and  c                                           ; $6911: $a1
	halt                                             ; $6912: $76
	ld   e, c                                        ; $6913: $59
	cp   b                                           ; $6914: $b8
	xor  b                                           ; $6915: $a8
	and  l                                           ; $6916: $a5
	ret  c                                           ; $6917: $d8

	and  e                                           ; $6918: $a3
	call nz, $0dd8                                   ; $6919: $c4 $d8 $0d
	ld   [hl], l                                     ; $691c: $75
	ld   e, e                                        ; $691d: $5b
	ld   l, l                                        ; $691e: $6d
	sbc  l                                           ; $691f: $9d
	sbc  a                                           ; $6920: $9f
	dec  c                                           ; $6921: $0d
	nop                                              ; $6922: $00
	ld   a, [bc]                                     ; $6923: $0a
	inc  e                                           ; $6924: $1c
	inc  bc                                          ; $6925: $03
	inc  b                                           ; $6926: $04
	inc  b                                           ; $6927: $04
	ld   bc, $0008                                   ; $6928: $01 $08 $00
	ld   e, l                                        ; $692b: $5d
	and  c                                           ; $692c: $a1
	sbc  a                                           ; $692d: $9f
	dec  c                                           ; $692e: $0d
	ld   [bc], a                                     ; $692f: $02
	dec  bc                                          ; $6930: $0b
	ld   [bc], a                                     ; $6931: $02
	xor  d                                           ; $6932: $aa
	sbc  [hl]                                        ; $6933: $9e
	ld   h, c                                        ; $6934: $61
	ld   d, h                                        ; $6935: $54
	ld   d, d                                        ; $6936: $52
	ld   d, h                                        ; $6937: $54
	ld   [bc], a                                     ; $6938: $02
	jp   Jump_047_785a                               ; $6939: $c3 $5a $78


	ld   d, d                                        ; $693c: $52
	sub  [hl]                                        ; $693d: $96
	ld   d, h                                        ; $693e: $54
	ld   a, c                                        ; $693f: $79
	dec  c                                           ; $6940: $0d
	ld   [bc], a                                     ; $6941: $02
	and  c                                           ; $6942: $a1
	and  b                                           ; $6943: $a0
	inc  b                                           ; $6944: $04
	ld   [hl], c                                     ; $6945: $71
	ld   e, a                                        ; $6946: $5f
	ld   [hl], h                                     ; $6947: $74
	ld   a, e                                        ; $6948: $7b
	sbc  a                                           ; $6949: $9f
	dec  c                                           ; $694a: $0d
	nop                                              ; $694b: $00
	ld   a, [bc]                                     ; $694c: $0a
	dec  c                                           ; $694d: $0d
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	rrca                                             ; $6950: $0f
	nop                                              ; $6951: $00
	ld   bc, $1e09                                   ; $6952: $01 $09 $1e
	nop                                              ; $6955: $00
	rrca                                             ; $6956: $0f
	nop                                              ; $6957: $00
	ld   bc, $0101                                   ; $6958: $01 $01 $01
	inc  bc                                          ; $695b: $03
	inc  b                                           ; $695c: $04
	ld   l, l                                        ; $695d: $6d
	sub  b                                           ; $695e: $90
	sbc  [hl]                                        ; $695f: $9e
	inc  b                                           ; $6960: $04
	sub  l                                           ; $6961: $95
	ld   [bc], a                                     ; $6962: $02
	ld   hl, $0486                                   ; $6963: $21 $86 $04
	jp   Jump_047_7471                               ; $6966: $c3 $71 $74


	dec  c                                           ; $6969: $0d
	db   $10                                         ; $696a: $10
	ld   [bc], a                                     ; $696b: $02
	jr   nz, jr_047_6971                             ; $696c: $20 $03

	and  a                                           ; $696e: $a7
	adc  l                                           ; $696f: $8d
	ld   h, l                                        ; $6970: $65

jr_047_6971:
	sub  [hl]                                        ; $6971: $96
	ld   d, h                                        ; $6972: $54
	rst  $38                                         ; $6973: $ff
	rst  $38                                         ; $6974: $ff
	ld   bc, $0d04                                   ; $6975: $01 $04 $0d
	nop                                              ; $6978: $00
	ld   a, [bc]                                     ; $6979: $0a
	inc  c                                           ; $697a: $0c
	ld   [bc], a                                     ; $697b: $02
	ld   c, $5c                                      ; $697c: $0e $5c
	inc  e                                           ; $697e: $1c
	dec  bc                                          ; $697f: $0b
	inc  b                                           ; $6980: $04
	inc  b                                           ; $6981: $04
	ld   bc, $9750                                   ; $6982: $01 $50 $97
	sbc  [hl]                                        ; $6985: $9e
	ld   [$5d00], sp                                 ; $6986: $08 $00 $5d
	and  c                                           ; $6989: $a1
	sbc  a                                           ; $698a: $9f
	dec  c                                           ; $698b: $0d
	inc  b                                           ; $698c: $04
	ld   c, c                                        ; $698d: $49
	ld   a, [$10f9]                                  ; $698e: $fa $f9 $10
	ld   l, e                                        ; $6991: $6b
	ld   a, h                                        ; $6992: $7c
	inc  b                                           ; $6993: $04
	dec  c                                           ; $6994: $0d
	ld   a, l                                        ; $6995: $7d
	ld   a, [$0dfa]                                  ; $6996: $fa $fa $0d
	rst  $10                                         ; $6999: $d7
	or   b                                           ; $699a: $b0
	rst  $10                                         ; $699b: $d7
	or   b                                           ; $699c: $b0
	ld   h, [hl]                                     ; $699d: $66
	sub  c                                           ; $699e: $91
	ld   a, b                                        ; $699f: $78
	ld   d, d                                        ; $69a0: $52
	ld   a, h                                        ; $69a1: $7c
	ld   a, [$fafa]                                  ; $69a2: $fa $fa $fa
	dec  c                                           ; $69a5: $0d
	nop                                              ; $69a6: $00
	ld   a, [bc]                                     ; $69a7: $0a
	rrca                                             ; $69a8: $0f
	nop                                              ; $69a9: $00
	ld   bc, $0301                                   ; $69aa: $01 $01 $03
	adc  e                                           ; $69ad: $8b
	ld   a, l                                        ; $69ae: $7d
	rst  $38                                         ; $69af: $ff
	rst  $38                                         ; $69b0: $ff
	dec  c                                           ; $69b1: $0d
	ld   e, c                                        ; $69b2: $59
	ld   e, l                                        ; $69b3: $5d
	ld   e, c                                        ; $69b4: $59
	ld   e, l                                        ; $69b5: $5d
	ld   h, l                                        ; $69b6: $65
	ld   e, c                                        ; $69b7: $59
	ld   h, [hl]                                     ; $69b8: $66
	ld   e, c                                        ; $69b9: $59
	rst  $38                                         ; $69ba: $ff
	rst  $38                                         ; $69bb: $ff
	dec  c                                           ; $69bc: $0d
	nop                                              ; $69bd: $00
	ld   a, [bc]                                     ; $69be: $0a
	inc  e                                           ; $69bf: $1c
	dec  bc                                          ; $69c0: $0b
	dec  b                                           ; $69c1: $05
	dec  b                                           ; $69c2: $05
	ld   bc, $5b50                                   ; $69c3: $01 $50 $5b
	sbc  d                                           ; $69c6: $9a
	ld   l, l                                        ; $69c7: $6d
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	dec  c                                           ; $69ca: $0d
	ld   l, e                                        ; $69cb: $6b
	sbc  d                                           ; $69cc: $9a
	ld   h, [hl]                                     ; $69cd: $66
	sub  c                                           ; $69ce: $91
	sbc  [hl]                                        ; $69cf: $9e
	inc  bc                                          ; $69d0: $03
	ld   l, l                                        ; $69d1: $6d
	dec  b                                           ; $69d2: $05
	add  hl, de                                      ; $69d3: $19
	ld   a, c                                        ; $69d4: $79
	ld   h, e                                        ; $69d5: $63
	ld   h, l                                        ; $69d6: $65
	ld   [hl], d                                     ; $69d7: $72
	ld   e, c                                        ; $69d8: $59
	ld   d, [hl]                                     ; $69d9: $56
	dec  c                                           ; $69da: $0d
	sbc  c                                           ; $69db: $99
	ld   h, [hl]                                     ; $69dc: $66
	sub  c                                           ; $69dd: $91
	ld   a, b                                        ; $69de: $78
	ld   d, d                                        ; $69df: $52
	sbc  a                                           ; $69e0: $9f
	dec  c                                           ; $69e1: $0d
	nop                                              ; $69e2: $00
	ld   a, [bc]                                     ; $69e3: $0a
	ld   bc, $4904                                   ; $69e4: $01 $04 $49
	sub  [hl]                                        ; $69e7: $96
	sbc  b                                           ; $69e8: $98
	sub  b                                           ; $69e9: $90
	ld   [bc], a                                     ; $69ea: $02
	jr   c, jr_047_69f1                              ; $69eb: $38 $04

	ld   d, d                                        ; $69ed: $52
	ld   a, c                                        ; $69ee: $79
	inc  bc                                          ; $69ef: $03
	cp   c                                           ; $69f0: $b9

jr_047_69f1:
	sbc  b                                           ; $69f1: $98
	ld   [bc], a                                     ; $69f2: $02
	ld   b, b                                        ; $69f3: $40
	adc  [hl]                                        ; $69f4: $8e
	ld   h, c                                        ; $69f5: $61
	halt                                             ; $69f6: $76
	ld   e, d                                        ; $69f7: $5a
	dec  c                                           ; $69f8: $0d
	ld   [hl], l                                     ; $69f9: $75
	ld   e, e                                        ; $69fa: $5b
	ld   a, b                                        ; $69fb: $78
	ld   d, d                                        ; $69fc: $52
	sbc  l                                           ; $69fd: $9d
	rst  $38                                         ; $69fe: $ff
	rst  $38                                         ; $69ff: $ff
	dec  c                                           ; $6a00: $0d
	nop                                              ; $6a01: $00
	ld   a, [bc]                                     ; $6a02: $0a
	inc  e                                           ; $6a03: $1c
	dec  bc                                          ; $6a04: $0b
	ld   [bc], a                                     ; $6a05: $02
	ld   [bc], a                                     ; $6a06: $02
	ld   bc, $0d03                                   ; $6a07: $01 $03 $0d
	inc  b                                           ; $6a0a: $04
	ld   a, b                                        ; $6a0b: $78
	ld   a, b                                        ; $6a0c: $78
	ld   d, d                                        ; $6a0d: $52
	sbc  l                                           ; $6a0e: $9d
	ld   a, e                                        ; $6a0f: $7b
	sbc  a                                           ; $6a10: $9f
	dec  c                                           ; $6a11: $0d
	ld   e, c                                        ; $6a12: $59
	sbc  l                                           ; $6a13: $9d
	ld   d, d                                        ; $6a14: $52
	ld   l, e                                        ; $6a15: $6b
	ld   d, h                                        ; $6a16: $54
	ld   l, [hl]                                     ; $6a17: $6e
	ld   e, a                                        ; $6a18: $5f
	ld   [hl], a                                     ; $6a19: $77
	sbc  [hl]                                        ; $6a1a: $9e
	inc  b                                           ; $6a1b: $04
	dec  c                                           ; $6a1c: $0d
	ld   [bc], a                                     ; $6a1d: $02
	sub  [hl]                                        ; $6a1e: $96
	inc  b                                           ; $6a1f: $04
	ld   b, l                                        ; $6a20: $45
	inc  b                                           ; $6a21: $04
	ld   a, [bc]                                     ; $6a22: $0a
	ld   a, l                                        ; $6a23: $7d
	dec  c                                           ; $6a24: $0d
	ld   h, c                                        ; $6a25: $61
	sbc  d                                           ; $6a26: $9a
	ld   [hl], l                                     ; $6a27: $75
	inc  bc                                          ; $6a28: $03
	ld   a, [hl]                                     ; $6a29: $7e
	sbc  l                                           ; $6a2a: $9d
	sbc  b                                           ; $6a2b: $98
	sub  [hl]                                        ; $6a2c: $96
	sbc  a                                           ; $6a2d: $9f
	dec  c                                           ; $6a2e: $0d
	nop                                              ; $6a2f: $00
	ld   a, [bc]                                     ; $6a30: $0a
	ld   bc, $0d04                                   ; $6a31: $01 $04 $0d
	and  b                                           ; $6a34: $a0
	inc  b                                           ; $6a35: $04
	jp   $7465                                       ; $6a36: $c3 $65 $74


	dec  c                                           ; $6a39: $0d
	inc  bc                                          ; $6a3a: $03
	add  b                                           ; $6a3b: $80
	inc  bc                                          ; $6a3c: $03
	jp   c, $7465                                    ; $6a3d: $da $65 $74

	ld   e, e                                        ; $6a40: $5b
	ld   a, b                                        ; $6a41: $78
	ld   h, e                                        ; $6a42: $63
	ld   d, d                                        ; $6a43: $52
	sbc  a                                           ; $6a44: $9f
	dec  c                                           ; $6a45: $0d
	ld   h, [hl]                                     ; $6a46: $66
	sub  c                                           ; $6a47: $91
	ld   d, b                                        ; $6a48: $50
	ld   a, e                                        ; $6a49: $7b
	ld   [$5d00], sp                                 ; $6a4a: $08 $00 $5d
	and  c                                           ; $6a4d: $a1
	sbc  a                                           ; $6a4e: $9f
	dec  c                                           ; $6a4f: $0d
	nop                                              ; $6a50: $00
	ld   a, [bc]                                     ; $6a51: $0a
	ld   h, $00                                      ; $6a52: $26 $00
	ld   c, $6e                                      ; $6a54: $0e $6e
	rrca                                             ; $6a56: $0f
	nop                                              ; $6a57: $00
	ld   bc, $0102                                   ; $6a58: $01 $02 $01
	rst  JumpTable                                         ; $6a5b: $df
	db   $ec                                         ; $6a5c: $ec
	and  e                                           ; $6a5d: $a3
	ld   h, e                                        ; $6a5e: $63
	and  c                                           ; $6a5f: $a1
	sbc  a                                           ; $6a60: $9f
	dec  c                                           ; $6a61: $0d
	nop                                              ; $6a62: $00
	ld   a, [bc]                                     ; $6a63: $0a
	inc  e                                           ; $6a64: $1c
	inc  bc                                          ; $6a65: $03
	nop                                              ; $6a66: $00
	nop                                              ; $6a67: $00
	ld   bc, $9750                                   ; $6a68: $01 $50 $97
	sbc  [hl]                                        ; $6a6b: $9e
	ld   [hl], a                                     ; $6a6c: $77
	ld   d, h                                        ; $6a6d: $54
	ld   h, l                                        ; $6a6e: $65
	ld   l, l                                        ; $6a6f: $6d
	ld   a, h                                        ; $6a70: $7c
	ld   sp, hl                                      ; $6a71: $f9
	dec  c                                           ; $6a72: $0d
	nop                                              ; $6a73: $00
	ld   a, [bc]                                     ; $6a74: $0a
	add  hl, de                                      ; $6a75: $19
	dec  b                                           ; $6a76: $05
	inc  bc                                          ; $6a77: $03
	ret                                              ; $6a78: $c9


	xor  $fb                                         ; $6a79: $ee $fb
	call z, $b1f5                                    ; $6a7b: $cc $f5 $b1
	and  b                                           ; $6a7e: $a0
	ld   h, l                                        ; $6a7f: $65
	ld   a, c                                        ; $6a80: $79
	dec  b                                           ; $6a81: $05
	db   $10                                         ; $6a82: $10
	adc  h                                           ; $6a83: $8c
	ld   h, l                                        ; $6a84: $65
	ld   l, l                                        ; $6a85: $6d
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	ld   l, a                                        ; $6a88: $6f
	sub  l                                           ; $6a89: $95
	ld   [hl], c                                     ; $6a8a: $71
	halt                                             ; $6a8b: $76
	ld   [bc], a                                     ; $6a8c: $02
	sub  l                                           ; $6a8d: $95
	ld   [bc], a                                     ; $6a8e: $02
	and  d                                           ; $6a8f: $a2
	ld   a, c                                        ; $6a90: $79
	dec  b                                           ; $6a91: $05
	db   $10                                         ; $6a92: $10
	adc  h                                           ; $6a93: $8c
	ld   h, l                                        ; $6a94: $65
	ld   l, l                                        ; $6a95: $6d
	nop                                              ; $6a96: $00
	ld   bc, $ecdf                                   ; $6a97: $01 $df $ec
	and  e                                           ; $6a9a: $a3
	ld   h, e                                        ; $6a9b: $63
	and  c                                           ; $6a9c: $a1
	ld   a, c                                        ; $6a9d: $79
	ld   [bc], a                                     ; $6a9e: $02
	add  [hl]                                        ; $6a9f: $86
	ld   d, d                                        ; $6aa0: $52
	ld   a, c                                        ; $6aa1: $79
	dec  b                                           ; $6aa2: $05
	db   $10                                         ; $6aa3: $10
	adc  h                                           ; $6aa4: $8c
	ld   h, l                                        ; $6aa5: $65
	ld   l, l                                        ; $6aa6: $6d
	nop                                              ; $6aa7: $00
	ld   [bc], a                                     ; $6aa8: $02
	rlca                                             ; $6aa9: $07
	sbc  c                                           ; $6aaa: $99
	nop                                              ; $6aab: $00
	ld   [bc], a                                     ; $6aac: $02
	inc  bc                                          ; $6aad: $03
	ld   bc, $2000                                   ; $6aae: $01 $00 $20
	nop                                              ; $6ab1: $00
	rlca                                             ; $6ab2: $07
	adc  l                                           ; $6ab3: $8d
	ld   bc, $0302                                   ; $6ab4: $01 $02 $03
	ld   bc, $2001                                   ; $6ab7: $01 $01 $20
	nop                                              ; $6aba: $00
	rlca                                             ; $6abb: $07
	jp   z, $0201                                    ; $6abc: $ca $01 $02

	inc  bc                                          ; $6abf: $03
	ld   bc, $2002                                   ; $6ac0: $01 $02 $20
	nop                                              ; $6ac3: $00
	ld   b, $73                                      ; $6ac4: $06 $73
	nop                                              ; $6ac6: $00
	inc  e                                           ; $6ac7: $1c
	inc  bc                                          ; $6ac8: $03
	ld   [bc], a                                     ; $6ac9: $02
	ld   [bc], a                                     ; $6aca: $02
	ld   bc, $f304                                   ; $6acb: $01 $04 $f3
	ld   e, d                                        ; $6ace: $5a
	ld   a, b                                        ; $6acf: $78
	ld   d, d                                        ; $6ad0: $52
	ld   a, b                                        ; $6ad1: $78
	sub  a                                           ; $6ad2: $97
	dec  c                                           ; $6ad3: $0d
	inc  bc                                          ; $6ad4: $03
	and  b                                           ; $6ad5: $a0
	ld   l, a                                        ; $6ad6: $6f
	inc  b                                           ; $6ad7: $04
	ld   a, d                                        ; $6ad8: $7a
	ld   a, c                                        ; $6ad9: $79
	sub  b                                           ; $6ada: $90
	ld   [hl], a                                     ; $6adb: $77
	sbc  b                                           ; $6adc: $98
	ld   a, b                                        ; $6add: $78
	ld   h, e                                        ; $6ade: $63
	ld   d, d                                        ; $6adf: $52
	sbc  a                                           ; $6ae0: $9f
	dec  c                                           ; $6ae1: $0d
	nop                                              ; $6ae2: $00
	ld   a, [bc]                                     ; $6ae3: $0a
	dec  c                                           ; $6ae4: $0d
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	rrca                                             ; $6ae7: $0f
	nop                                              ; $6ae8: $00
	ld   bc, $1e09                                   ; $6ae9: $01 $09 $1e
	nop                                              ; $6aec: $00
	rrca                                             ; $6aed: $0f
	nop                                              ; $6aee: $00
	ld   bc, $c901                                   ; $6aef: $01 $01 $c9
	xor  $fb                                         ; $6af2: $ee $fb
	call z, $b1f5                                    ; $6af4: $cc $f5 $b1
	and  b                                           ; $6af7: $a0
	ld   h, l                                        ; $6af8: $65
	ld   a, c                                        ; $6af9: $79
	dec  b                                           ; $6afa: $05
	db   $10                                         ; $6afb: $10
	adc  h                                           ; $6afc: $8c
	ld   h, l                                        ; $6afd: $65
	ld   l, l                                        ; $6afe: $6d
	sbc  a                                           ; $6aff: $9f
	dec  c                                           ; $6b00: $0d
	nop                                              ; $6b01: $00
	ld   a, [bc]                                     ; $6b02: $0a
	inc  e                                           ; $6b03: $1c
	inc  bc                                          ; $6b04: $03
	inc  bc                                          ; $6b05: $03
	inc  bc                                          ; $6b06: $03
	ld   bc, $9750                                   ; $6b07: $01 $50 $97
	ld   [bc], a                                     ; $6b0a: $02
	scf                                              ; $6b0b: $37
	inc  bc                                          ; $6b0c: $03
	ld   [hl], l                                     ; $6b0d: $75
	ld   a, e                                        ; $6b0e: $7b
	rst  $38                                         ; $6b0f: $ff
	rst  $38                                         ; $6b10: $ff
	dec  c                                           ; $6b11: $0d
	ld   h, [hl]                                     ; $6b12: $66
	sub  c                                           ; $6b13: $91
	ld   d, b                                        ; $6b14: $50
	sbc  [hl]                                        ; $6b15: $9e
	dec  b                                           ; $6b16: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b17: $cf
	adc  a                                           ; $6b18: $8f
	adc  h                                           ; $6b19: $8c
	ld   h, l                                        ; $6b1a: $65
	sub  l                                           ; $6b1b: $95
	ld   d, h                                        ; $6b1c: $54
	ld   e, c                                        ; $6b1d: $59
	sbc  a                                           ; $6b1e: $9f
	dec  c                                           ; $6b1f: $0d
	nop                                              ; $6b20: $00
	ld   a, [bc]                                     ; $6b21: $0a
	ld   a, [de]                                     ; $6b22: $1a
	inc  bc                                          ; $6b23: $03
	rlca                                             ; $6b24: $07
	push hl                                          ; $6b25: $e5
	nop                                              ; $6b26: $00
	ld   [bc], a                                     ; $6b27: $02
	inc  b                                           ; $6b28: $04
	ld   bc, $2002                                   ; $6b29: $01 $02 $20
	nop                                              ; $6b2c: $00
	rlca                                             ; $6b2d: $07
	ld   c, $01                                      ; $6b2e: $0e $01
	ld   [bc], a                                     ; $6b30: $02
	inc  b                                           ; $6b31: $04
	ld   bc, $2001                                   ; $6b32: $01 $01 $20
	nop                                              ; $6b35: $00
	ld   b, $3c                                      ; $6b36: $06 $3c
	ld   bc, $031c                                   ; $6b38: $01 $1c $03
	inc  bc                                          ; $6b3b: $03
	inc  bc                                          ; $6b3c: $03
	dec  e                                           ; $6b3d: $1d
	ld   b, b                                        ; $6b3e: $40
	inc  de                                          ; $6b3f: $13
	inc  bc                                          ; $6b40: $03
	inc  de                                          ; $6b41: $13
	ld   bc, $2803                                   ; $6b42: $01 $03 $28
	nop                                              ; $6b45: $00
	ld   bc, $0008                                   ; $6b46: $01 $08 $00
	ld   e, l                                        ; $6b49: $5d
	and  c                                           ; $6b4a: $a1
	sbc  [hl]                                        ; $6b4b: $9e
	dec  c                                           ; $6b4c: $0d
	sub  [hl]                                        ; $6b4d: $96
	ld   e, l                                        ; $6b4e: $5d
	sub  d                                           ; $6b4f: $92
	ld   [hl], c                                     ; $6b50: $71
	ld   l, l                                        ; $6b51: $6d
	sbc  l                                           ; $6b52: $9d
	ld   a, e                                        ; $6b53: $7b
	sbc  a                                           ; $6b54: $9f
	dec  c                                           ; $6b55: $0d
	ld   h, a                                        ; $6b56: $67
	ld   h, d                                        ; $6b57: $62
	ld   d, d                                        ; $6b58: $52
	sbc  l                                           ; $6b59: $9d
	sub  [hl]                                        ; $6b5a: $96
	sbc  a                                           ; $6b5b: $9f
	dec  c                                           ; $6b5c: $0d
	nop                                              ; $6b5d: $00
	ld   a, [bc]                                     ; $6b5e: $0a
	ld   b, $61                                      ; $6b5f: $06 $61
	ld   bc, $031c                                   ; $6b61: $01 $1c $03
	nop                                              ; $6b64: $00
	nop                                              ; $6b65: $00
	dec  e                                           ; $6b66: $1d
	ld   b, b                                        ; $6b67: $40
	inc  de                                          ; $6b68: $13
	inc  bc                                          ; $6b69: $03
	inc  de                                          ; $6b6a: $13
	ld   bc, $2801                                   ; $6b6b: $01 $01 $28
	nop                                              ; $6b6e: $00
	ld   bc, $5978                                   ; $6b6f: $01 $78 $59
	ld   a, b                                        ; $6b72: $78
	ld   e, c                                        ; $6b73: $59
	ld   a, h                                        ; $6b74: $7c
	inc  bc                                          ; $6b75: $03
	add  b                                           ; $6b76: $80
	dec  b                                           ; $6b77: $05
	db   $10                                         ; $6b78: $10
	sub  [hl]                                        ; $6b79: $96
	sbc  a                                           ; $6b7a: $9f
	dec  c                                           ; $6b7b: $0d
	ld   h, c                                        ; $6b7c: $61
	sbc  d                                           ; $6b7d: $9a
	ld   e, c                                        ; $6b7e: $59
	sub  a                                           ; $6b7f: $97
	sub  b                                           ; $6b80: $90
	sbc  [hl]                                        ; $6b81: $9e
	ld   e, d                                        ; $6b82: $5a
	and  c                                           ; $6b83: $a1
	ld   a, [hl]                                     ; $6b84: $7e
	sbc  b                                           ; $6b85: $98
	ld   a, b                                        ; $6b86: $78
	ld   h, e                                        ; $6b87: $63
	ld   d, d                                        ; $6b88: $52
	sbc  a                                           ; $6b89: $9f
	dec  c                                           ; $6b8a: $0d
	nop                                              ; $6b8b: $00
	ld   a, [bc]                                     ; $6b8c: $0a
	ld   b, $61                                      ; $6b8d: $06 $61
	ld   bc, $031c                                   ; $6b8f: $01 $1c $03
	inc  b                                           ; $6b92: $04
	inc  b                                           ; $6b93: $04
	dec  e                                           ; $6b94: $1d
	ld   b, b                                        ; $6b95: $40
	inc  de                                          ; $6b96: $13
	inc  bc                                          ; $6b97: $03
	inc  de                                          ; $6b98: $13
	ld   bc, $2902                                   ; $6b99: $01 $02 $29
	nop                                              ; $6b9c: $00
	ld   bc, $5490                                   ; $6b9d: $01 $90 $54
	inc  bc                                          ; $6ba0: $03
	ld   l, h                                        ; $6ba1: $6c
	ld   h, l                                        ; $6ba2: $65
	inc  bc                                          ; $6ba3: $03
	db   $d3                                         ; $6ba4: $d3
	dec  b                                           ; $6ba5: $05
	ld   a, [bc]                                     ; $6ba6: $0a
	ld   e, d                                        ; $6ba7: $5a
	inc  b                                           ; $6ba8: $04
	adc  d                                           ; $6ba9: $8a
	inc  b                                           ; $6baa: $04
	rst  JumpTable                                         ; $6bab: $df
	ld   a, e                                        ; $6bac: $7b
	rst  $38                                         ; $6bad: $ff
	rst  $38                                         ; $6bae: $ff
	dec  c                                           ; $6baf: $0d
	nop                                              ; $6bb0: $00
	ld   a, [bc]                                     ; $6bb1: $0a
	ld   b, $61                                      ; $6bb2: $06 $61
	ld   bc, $031c                                   ; $6bb4: $01 $1c $03
	nop                                              ; $6bb7: $00
	nop                                              ; $6bb8: $00
	ld   bc, $0458                                   ; $6bb9: $01 $58 $04
	ld   a, e                                        ; $6bbc: $7b
	sbc  d                                           ; $6bbd: $9a
	ld   h, e                                        ; $6bbe: $63
	adc  h                                           ; $6bbf: $8c
	sbc  a                                           ; $6bc0: $9f
	dec  c                                           ; $6bc1: $0d
	ld   h, [hl]                                     ; $6bc2: $66
	sub  c                                           ; $6bc3: $91
	sbc  [hl]                                        ; $6bc4: $9e
	inc  bc                                          ; $6bc5: $03
	ret  z                                           ; $6bc6: $c8

	ld   a, l                                        ; $6bc7: $7d
	ld   h, l                                        ; $6bc8: $65
	ld   a, [hl]                                     ; $6bc9: $7e
	sub  a                                           ; $6bca: $97
	ld   e, l                                        ; $6bcb: $5d
	ld   h, c                                        ; $6bcc: $61
	ld   h, c                                        ; $6bcd: $61
	ld   [hl], l                                     ; $6bce: $75
	dec  c                                           ; $6bcf: $0d
	ret                                              ; $6bd0: $c9


	xor  $fb                                         ; $6bd1: $ee $fb
	call z, $b1f5                                    ; $6bd3: $cc $f5 $b1
	and  b                                           ; $6bd6: $a0
	ld   h, l                                        ; $6bd7: $65
	ld   [hl], h                                     ; $6bd8: $74
	ld   d, d                                        ; $6bd9: $52
	ld   e, l                                        ; $6bda: $5d
	sbc  l                                           ; $6bdb: $9d
	sbc  a                                           ; $6bdc: $9f
	dec  c                                           ; $6bdd: $0d
	nop                                              ; $6bde: $00
	ld   a, [bc]                                     ; $6bdf: $0a
	nop                                              ; $6be0: $00
	rrca                                             ; $6be1: $0f
	nop                                              ; $6be2: $00
	ld   bc, $6f01                                   ; $6be3: $01 $01 $6f
	sub  l                                           ; $6be6: $95
	ld   [hl], c                                     ; $6be7: $71
	halt                                             ; $6be8: $76
	ld   [bc], a                                     ; $6be9: $02
	sub  l                                           ; $6bea: $95
	ld   [bc], a                                     ; $6beb: $02
	and  d                                           ; $6bec: $a2
	ld   a, c                                        ; $6bed: $79
	dec  b                                           ; $6bee: $05
	db   $10                                         ; $6bef: $10
	adc  h                                           ; $6bf0: $8c
	ld   h, l                                        ; $6bf1: $65
	ld   l, l                                        ; $6bf2: $6d
	sbc  a                                           ; $6bf3: $9f
	dec  c                                           ; $6bf4: $0d
	nop                                              ; $6bf5: $00
	ld   a, [bc]                                     ; $6bf6: $0a
	inc  e                                           ; $6bf7: $1c
	inc  bc                                          ; $6bf8: $03
	nop                                              ; $6bf9: $00
	nop                                              ; $6bfa: $00
	ld   bc, $9750                                   ; $6bfb: $01 $50 $97
	ld   l, e                                        ; $6bfe: $6b
	ld   d, h                                        ; $6bff: $54
	sbc  a                                           ; $6c00: $9f
	dec  c                                           ; $6c01: $0d
	ld   h, [hl]                                     ; $6c02: $66
	sub  c                                           ; $6c03: $91
	ld   d, b                                        ; $6c04: $50
	sbc  [hl]                                        ; $6c05: $9e
	ld   h, [hl]                                     ; $6c06: $66
	sub  c                                           ; $6c07: $91
	adc  h                                           ; $6c08: $8c
	ld   a, c                                        ; $6c09: $79
	ld   a, b                                        ; $6c0a: $78
	sub  a                                           ; $6c0b: $97
	ld   a, b                                        ; $6c0c: $78
	ld   d, d                                        ; $6c0d: $52
	dec  c                                           ; $6c0e: $0d
	inc  bc                                          ; $6c0f: $03
	ld   c, e                                        ; $6c10: $4b
	ld   [hl], l                                     ; $6c11: $75
	ld   [bc], a                                     ; $6c12: $02
	sub  l                                           ; $6c13: $95
	ld   [hl], h                                     ; $6c14: $74
	ld   d, d                                        ; $6c15: $52
	ld   a, b                                        ; $6c16: $78
	ld   h, e                                        ; $6c17: $63
	ld   d, d                                        ; $6c18: $52
	sbc  a                                           ; $6c19: $9f
	dec  c                                           ; $6c1a: $0d
	nop                                              ; $6c1b: $00
	ld   a, [bc]                                     ; $6c1c: $0a
	nop                                              ; $6c1d: $00
	rrca                                             ; $6c1e: $0f
	nop                                              ; $6c1f: $00
	ld   bc, $df01                                   ; $6c20: $01 $01 $df
	db   $ec                                         ; $6c23: $ec
	and  e                                           ; $6c24: $a3
	ld   h, e                                        ; $6c25: $63
	and  c                                           ; $6c26: $a1
	ld   a, c                                        ; $6c27: $79
	ld   [bc], a                                     ; $6c28: $02
	add  [hl]                                        ; $6c29: $86
	ld   d, d                                        ; $6c2a: $52
	ld   a, c                                        ; $6c2b: $79
	dec  b                                           ; $6c2c: $05
	db   $10                                         ; $6c2d: $10
	adc  h                                           ; $6c2e: $8c
	ld   h, l                                        ; $6c2f: $65
	ld   l, l                                        ; $6c30: $6d
	sbc  a                                           ; $6c31: $9f
	dec  c                                           ; $6c32: $0d
	nop                                              ; $6c33: $00
	ld   a, [bc]                                     ; $6c34: $0a
	inc  e                                           ; $6c35: $1c
	inc  bc                                          ; $6c36: $03
	ld   [bc], a                                     ; $6c37: $02
	ld   [bc], a                                     ; $6c38: $02
	dec  e                                           ; $6c39: $1d
	ld   b, b                                        ; $6c3a: $40
	inc  de                                          ; $6c3b: $13
	inc  bc                                          ; $6c3c: $03
	inc  de                                          ; $6c3d: $13
	ld   bc, $2902                                   ; $6c3e: $01 $02 $29
	nop                                              ; $6c41: $00
	ld   bc, $9762                                   ; $6c42: $01 $62 $97
	and  c                                           ; $6c45: $a1
	ld   a, h                                        ; $6c46: $7c
	inc  bc                                          ; $6c47: $03
	pop  hl                                          ; $6c48: $e1
	sbc  b                                           ; $6c49: $98
	ld   [bc], a                                     ; $6c4a: $02
	and  l                                           ; $6c4b: $a5
	ld   a, l                                        ; $6c4c: $7d
	db   $d3                                         ; $6c4d: $d3
	rst  JumpTable                                         ; $6c4e: $df
	ld   h, [hl]                                     ; $6c4f: $66
	sub  c                                           ; $6c50: $91
	dec  c                                           ; $6c51: $0d
	ld   a, b                                        ; $6c52: $78
	ld   d, d                                        ; $6c53: $52
	ld   a, h                                        ; $6c54: $7c
	sbc  a                                           ; $6c55: $9f
	inc  b                                           ; $6c56: $04
	di                                               ; $6c57: $f3
	ld   e, d                                        ; $6c58: $5a
	ld   a, b                                        ; $6c59: $78
	ld   d, d                                        ; $6c5a: $52
	ld   a, h                                        ; $6c5b: $7c
	ld   a, b                                        ; $6c5c: $78
	sub  a                                           ; $6c5d: $97
	dec  c                                           ; $6c5e: $0d
	inc  bc                                          ; $6c5f: $03
	add  b                                           ; $6c60: $80
	ld   [hl], h                                     ; $6c61: $74
	ld   d, d                                        ; $6c62: $52
	ld   [hl], c                                     ; $6c63: $71
	ld   [hl], h                                     ; $6c64: $74
	ld   l, a                                        ; $6c65: $6f
	sub  l                                           ; $6c66: $95
	ld   d, h                                        ; $6c67: $54
	ld   l, [hl]                                     ; $6c68: $6e
	ld   d, d                                        ; $6c69: $52
	sbc  a                                           ; $6c6a: $9f
	dec  c                                           ; $6c6b: $0d
	nop                                              ; $6c6c: $00
	ld   a, [bc]                                     ; $6c6d: $0a
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	inc  b                                           ; $6c70: $04
	add  b                                           ; $6c71: $80
	add  hl, sp                                      ; $6c72: $39
	ld   bc, $2000                                   ; $6c73: $01 $00 $20
	nop                                              ; $6c76: $00
	inc  e                                           ; $6c77: $1c
	inc  b                                           ; $6c78: $04
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	ld   [bc], a                                     ; $6c7b: $02
	ld   bc, $9e50                                   ; $6c7c: $01 $50 $9e
	ld   l, a                                        ; $6c7f: $6f
	ld   d, d                                        ; $6c80: $52
	ld   [bc], a                                     ; $6c81: $02
	inc  de                                          ; $6c82: $13
	ld   l, a                                        ; $6c83: $6f
	sub  c                                           ; $6c84: $91
	and  c                                           ; $6c85: $a1
	sbc  a                                           ; $6c86: $9f
	dec  c                                           ; $6c87: $0d
	nop                                              ; $6c88: $00
	ld   a, [bc]                                     ; $6c89: $0a
	ld   bc, $567b                                   ; $6c8a: $01 $7b $56
	ld   a, e                                        ; $6c8d: $7b
	ld   d, [hl]                                     ; $6c8e: $56
	sbc  [hl]                                        ; $6c8f: $9e
	ld   h, c                                        ; $6c90: $61
	ld   a, h                                        ; $6c91: $7c
	ld   h, c                                        ; $6c92: $61
	ld   a, h                                        ; $6c93: $7c
	ld   a, b                                        ; $6c94: $78
	adc  h                                           ; $6c95: $8c
	ld   d, [hl]                                     ; $6c96: $56
	dec  c                                           ; $6c97: $0d
	ld   e, b                                        ; $6c98: $58
	adc  d                                           ; $6c99: $8a
	ld   d, [hl]                                     ; $6c9a: $56
	ld   [hl], h                                     ; $6c9b: $74
	sbc  c                                           ; $6c9c: $99
	ld   sp, hl                                      ; $6c9d: $f9
	dec  c                                           ; $6c9e: $0d
	nop                                              ; $6c9f: $00
	ld   a, [bc]                                     ; $6ca0: $0a
	rrca                                             ; $6ca1: $0f
	nop                                              ; $6ca2: $00
	ld   bc, $6101                                   ; $6ca3: $01 $01 $61
	ld   a, h                                        ; $6ca6: $7c
	inc  bc                                          ; $6ca7: $03
	add  [hl]                                        ; $6ca8: $86
	ld   sp, hl                                      ; $6ca9: $f9
	dec  c                                           ; $6caa: $0d
	nop                                              ; $6cab: $00
	ld   a, [bc]                                     ; $6cac: $0a
	inc  e                                           ; $6cad: $1c
	inc  b                                           ; $6cae: $04
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	ld   bc, $e5b9                                   ; $6cb1: $01 $b9 $e5
	push af                                          ; $6cb4: $f5
	sbc  $fb                                         ; $6cb5: $de $fb
	db   $ed                                         ; $6cb7: $ed
	ld   a, h                                        ; $6cb8: $7c
	ld   h, c                                        ; $6cb9: $61
	halt                                             ; $6cba: $76
	ld   l, [hl]                                     ; $6cbb: $6e
	sub  [hl]                                        ; $6cbc: $96
	sbc  a                                           ; $6cbd: $9f
	dec  c                                           ; $6cbe: $0d
	ld   a, b                                        ; $6cbf: $78
	adc  h                                           ; $6cc0: $8c
	ld   d, [hl]                                     ; $6cc1: $56
	sbc  [hl]                                        ; $6cc2: $9e
	ld   e, b                                        ; $6cc3: $58
	adc  d                                           ; $6cc4: $8a
	ld   d, [hl]                                     ; $6cc5: $56
	ld   [hl], h                                     ; $6cc6: $74
	sbc  c                                           ; $6cc7: $99
	ld   sp, hl                                      ; $6cc8: $f9
	dec  c                                           ; $6cc9: $0d
	nop                                              ; $6cca: $00
	ld   a, [bc]                                     ; $6ccb: $0a
	add  hl, de                                      ; $6ccc: $19
	dec  b                                           ; $6ccd: $05
	inc  bc                                          ; $6cce: $03
	cp   c                                           ; $6ccf: $b9
	push hl                                          ; $6cd0: $e5
	push af                                          ; $6cd1: $f5
	sbc  $fb                                         ; $6cd2: $de $fb
	db   $ed                                         ; $6cd4: $ed
	ld   l, [hl]                                     ; $6cd5: $6e
	ld   a, e                                        ; $6cd6: $7b
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	cp   c                                           ; $6cd9: $b9
	push hl                                          ; $6cda: $e5
	push af                                          ; $6cdb: $f5
	db   $dd                                         ; $6cdc: $dd
	ei                                               ; $6cdd: $fb
	or   c                                           ; $6cde: $b1
	ld   l, [hl]                                     ; $6cdf: $6e
	ld   a, e                                        ; $6ce0: $7b
	nop                                              ; $6ce1: $00
	ld   bc, $dfb0                                   ; $6ce2: $01 $b0 $df
	inc  b                                           ; $6ce5: $04
	inc  hl                                          ; $6ce6: $23
	dec  b                                           ; $6ce7: $05
	inc  c                                           ; $6ce8: $0c
	ld   l, [hl]                                     ; $6ce9: $6e
	ld   a, e                                        ; $6cea: $7b
	nop                                              ; $6ceb: $00
	ld   [bc], a                                     ; $6cec: $02
	rlca                                             ; $6ced: $07
	sub  h                                           ; $6cee: $94
	nop                                              ; $6cef: $00
	ld   [bc], a                                     ; $6cf0: $02
	inc  bc                                          ; $6cf1: $03
	ld   bc, $2000                                   ; $6cf2: $01 $00 $20
	nop                                              ; $6cf5: $00
	rlca                                             ; $6cf6: $07
	jr   c, jr_047_6cfb                              ; $6cf7: $38 $02

	ld   [bc], a                                     ; $6cf9: $02
	inc  bc                                          ; $6cfa: $03

jr_047_6cfb:
	ld   bc, $2001                                   ; $6cfb: $01 $01 $20
	nop                                              ; $6cfe: $00
	rlca                                             ; $6cff: $07
	add  h                                           ; $6d00: $84
	ld   [bc], a                                     ; $6d01: $02
	ld   [bc], a                                     ; $6d02: $02
	inc  bc                                          ; $6d03: $03
	ld   bc, $2002                                   ; $6d04: $01 $02 $20
	nop                                              ; $6d07: $00
	ld   b, $eb                                      ; $6d08: $06 $eb
	ld   [bc], a                                     ; $6d0a: $02
	rrca                                             ; $6d0b: $0f
	nop                                              ; $6d0c: $00
	ld   bc, $b901                                   ; $6d0d: $01 $01 $b9
	push hl                                          ; $6d10: $e5
	push af                                          ; $6d11: $f5
	sbc  $fb                                         ; $6d12: $de $fb
	db   $ed                                         ; $6d14: $ed
	ld   l, [hl]                                     ; $6d15: $6e
	ld   a, e                                        ; $6d16: $7b
	ld   sp, hl                                      ; $6d17: $f9
	dec  c                                           ; $6d18: $0d
	ld   bc, $0303                                   ; $6d19: $01 $03 $03
	sub  h                                           ; $6d1c: $94
	inc  b                                           ; $6d1d: $04
	sbc  [hl]                                        ; $6d1e: $9e
	ld   [hl], l                                     ; $6d1f: $75
	ld   [bc], a                                     ; $6d20: $02
	sbc  l                                           ; $6d21: $9d
	ld   [hl], c                                     ; $6d22: $71
	ld   [hl], h                                     ; $6d23: $74
	sbc  c                                           ; $6d24: $99
	ld   h, [hl]                                     ; $6d25: $66
	sub  c                                           ; $6d26: $91
	ld   a, b                                        ; $6d27: $78
	ld   d, d                                        ; $6d28: $52
	ld   e, c                                        ; $6d29: $59
	ld   bc, $0d04                                   ; $6d2a: $01 $04 $0d
	nop                                              ; $6d2d: $00
	ld   a, [bc]                                     ; $6d2e: $0a
	inc  e                                           ; $6d2f: $1c
	inc  b                                           ; $6d30: $04
	ld   bc, $1d01                                   ; $6d31: $01 $01 $1d
	ld   b, b                                        ; $6d34: $40
	inc  d                                           ; $6d35: $14
	inc  bc                                          ; $6d36: $03
	inc  d                                           ; $6d37: $14
	ld   bc, $2802                                   ; $6d38: $01 $02 $28
	nop                                              ; $6d3b: $00
	ld   bc, $9d54                                   ; $6d3c: $01 $54 $9d
	ld   c, a                                        ; $6d3f: $4f
	sbc  [hl]                                        ; $6d40: $9e
	ld   d, h                                        ; $6d41: $54
	sbc  d                                           ; $6d42: $9a
	ld   h, l                                        ; $6d43: $65
	ld   d, d                                        ; $6d44: $52
	ld   a, [$580d]                                  ; $6d45: $fa $0d $58
	adc  d                                           ; $6d48: $8a
	ld   d, [hl]                                     ; $6d49: $56
	ld   [hl], h                                     ; $6d4a: $74
	ld   [hl], h                                     ; $6d4b: $74
	ld   e, l                                        ; $6d4c: $5d
	sbc  d                                           ; $6d4d: $9a
	ld   l, l                                        ; $6d4e: $6d
	and  c                                           ; $6d4f: $a1
	ld   l, [hl]                                     ; $6d50: $6e
	ld   c, a                                        ; $6d51: $4f
	ld   a, [$000d]                                  ; $6d52: $fa $0d $00
	ld   a, [bc]                                     ; $6d55: $0a
	inc  e                                           ; $6d56: $1c
	inc  b                                           ; $6d57: $04
	dec  b                                           ; $6d58: $05
	dec  b                                           ; $6d59: $05
	ld   bc, $526f                                   ; $6d5a: $01 $6f $52
	ld   [bc], a                                     ; $6d5d: $02
	inc  de                                          ; $6d5e: $13
	ld   l, a                                        ; $6d5f: $6f
	sub  c                                           ; $6d60: $91
	and  c                                           ; $6d61: $a1
	sbc  [hl]                                        ; $6d62: $9e
	ld   l, [hl]                                     ; $6d63: $6e
	ei                                               ; $6d64: $fb

Jump_047_6d65:
	ld   d, d                                        ; $6d65: $52
	ld   h, a                                        ; $6d66: $67
	ld   e, e                                        ; $6d67: $5b
	ld   a, [$ff0d]                                  ; $6d68: $fa $0d $ff
	rst  $38                                         ; $6d6b: $ff
	ld   e, b                                        ; $6d6c: $58
	ld   [bc], a                                     ; $6d6d: $02
	inc  de                                          ; $6d6e: $13
	ld   l, a                                        ; $6d6f: $6f
	sub  c                                           ; $6d70: $91
	and  c                                           ; $6d71: $a1
	ld   a, h                                        ; $6d72: $7c
	ld   [hl], d                                     ; $6d73: $72
	ld   e, h                                        ; $6d74: $5c
	ld   l, [hl]                                     ; $6d75: $6e
	ld   e, a                                        ; $6d76: $5f
	ld   [hl], a                                     ; $6d77: $77
	sbc  a                                           ; $6d78: $9f
	dec  c                                           ; $6d79: $0d
	nop                                              ; $6d7a: $00
	ld   a, [bc]                                     ; $6d7b: $0a
	inc  e                                           ; $6d7c: $1c
	inc  b                                           ; $6d7d: $04
	ld   bc, $0101                                   ; $6d7e: $01 $01 $01
	ld   d, b                                        ; $6d81: $50
	sbc  [hl]                                        ; $6d82: $9e
	ld   l, e                                        ; $6d83: $6b
	ld   d, h                                        ; $6d84: $54
	ld   l, [hl]                                     ; $6d85: $6e
	ld   a, [$610d]                                  ; $6d86: $fa $0d $61
	and  c                                           ; $6d89: $a1
	ld   a, [hl]                                     ; $6d8a: $7e
	and  c                                           ; $6d8b: $a1
	sbc  [hl]                                        ; $6d8c: $9e
	and  e                                           ; $6d8d: $a3
	and  l                                           ; $6d8e: $a5
	db   $ec                                         ; $6d8f: $ec
	cp   d                                           ; $6d90: $ba
	ld   a, h                                        ; $6d91: $7c
	add  [hl]                                        ; $6d92: $86
	sub  d                                           ; $6d93: $92
	add  [hl]                                        ; $6d94: $86
	dec  c                                           ; $6d95: $0d
	ld   d, b                                        ; $6d96: $50
	ld   l, e                                        ; $6d97: $6b
	add  c                                           ; $6d98: $81
	ld   a, c                                        ; $6d99: $79
	ld   e, b                                        ; $6d9a: $58
	ld   d, d                                        ; $6d9b: $52
	ld   [hl], l                                     ; $6d9c: $75
	sub  [hl]                                        ; $6d9d: $96
	sbc  a                                           ; $6d9e: $9f
	dec  c                                           ; $6d9f: $0d
	nop                                              ; $6da0: $00
	ld   a, [bc]                                     ; $6da1: $0a
	ld   bc, $e5b9                                   ; $6da2: $01 $b9 $e5
	push af                                          ; $6da5: $f5
	sbc  $fb                                         ; $6da6: $de $fb
	db   $ed                                         ; $6da8: $ed
	ld   a, h                                        ; $6da9: $7c
	ld   e, b                                        ; $6daa: $58
	halt                                             ; $6dab: $76
	sub  b                                           ; $6dac: $90
	ld   l, [hl]                                     ; $6dad: $6e
	ld   l, a                                        ; $6dae: $6f
	dec  c                                           ; $6daf: $0d
	ld   h, l                                        ; $6db0: $65
	sub  l                                           ; $6db1: $95
	ld   d, h                                        ; $6db2: $54
	ld   e, c                                        ; $6db3: $59
	ld   d, d                                        ; $6db4: $52
	ld   h, l                                        ; $6db5: $65
	ld   [hl], h                                     ; $6db6: $74
	ld   d, b                                        ; $6db7: $50
	ld   h, b                                        ; $6db8: $60
	sbc  c                                           ; $6db9: $99
	sbc  a                                           ; $6dba: $9f
	dec  c                                           ; $6dbb: $0d
	ld   a, e                                        ; $6dbc: $7b
	sbc  [hl]                                        ; $6dbd: $9e
	ld   d, d                                        ; $6dbe: $52
	ld   d, d                                        ; $6dbf: $52
	ld   [hl], l                                     ; $6dc0: $75
	ld   h, l                                        ; $6dc1: $65
	sub  l                                           ; $6dc2: $95
	ld   sp, hl                                      ; $6dc3: $f9
	dec  c                                           ; $6dc4: $0d
	nop                                              ; $6dc5: $00
	ld   a, [bc]                                     ; $6dc6: $0a
	add  hl, de                                      ; $6dc7: $19
	dec  b                                           ; $6dc8: $05
	ld   [bc], a                                     ; $6dc9: $02
	ld   d, d                                        ; $6dca: $52
	ld   d, d                                        ; $6dcb: $52
	sub  [hl]                                        ; $6dcc: $96
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	ld   l, a                                        ; $6dcf: $6f
	sub  l                                           ; $6dd0: $95
	ld   [hl], c                                     ; $6dd1: $71
	halt                                             ; $6dd2: $76
	inc  b                                           ; $6dd3: $04
	di                                               ; $6dd4: $f3
	ld   [bc], a                                     ; $6dd5: $02
	jp   $ff5a                                       ; $6dd6: $c3 $5a $ff


	rst  $38                                         ; $6dd9: $ff
	nop                                              ; $6dda: $00
	ld   bc, $7a07                                   ; $6ddb: $01 $07 $7a
	ld   bc, $0302                                   ; $6dde: $01 $02 $03
	ld   bc, $2000                                   ; $6de1: $01 $00 $20
	nop                                              ; $6de4: $00
	rlca                                             ; $6de5: $07
	call $0201                                       ; $6de6: $cd $01 $02
	inc  bc                                          ; $6de9: $03
	ld   bc, $2001                                   ; $6dea: $01 $01 $20
	nop                                              ; $6ded: $00
	ld   b, $8e                                      ; $6dee: $06 $8e
	ld   bc, $000f                                   ; $6df0: $01 $0f $00
	ld   bc, $5201                                   ; $6df3: $01 $01 $52
	ld   d, d                                        ; $6df6: $52
	sub  [hl]                                        ; $6df7: $96
	sbc  a                                           ; $6df8: $9f
	dec  c                                           ; $6df9: $0d
	inc  b                                           ; $6dfa: $04
	ldh  a, [c]                                      ; $6dfb: $f2
	add  c                                           ; $6dfc: $81
	ld   a, c                                        ; $6dfd: $79
	ld   d, d                                        ; $6dfe: $52
	ld   e, l                                        ; $6dff: $5d
	sub  [hl]                                        ; $6e00: $96
	sbc  a                                           ; $6e01: $9f
	dec  c                                           ; $6e02: $0d
	nop                                              ; $6e03: $00
	ld   a, [bc]                                     ; $6e04: $0a
	inc  e                                           ; $6e05: $1c
	inc  b                                           ; $6e06: $04
	ld   bc, $0101                                   ; $6e07: $01 $01 $01
	ld   h, [hl]                                     ; $6e0a: $66
	sub  c                                           ; $6e0b: $91
	ld   d, b                                        ; $6e0c: $50
	sbc  [hl]                                        ; $6e0d: $9e
	and  e                                           ; $6e0e: $a3
	and  l                                           ; $6e0f: $a5
	db   $ec                                         ; $6e10: $ec
	cp   d                                           ; $6e11: $ba
	add  [hl]                                        ; $6e12: $86
	sub  d                                           ; $6e13: $92
	ld   [hl], l                                     ; $6e14: $75
	dec  c                                           ; $6e15: $0d
	nop                                              ; $6e16: $00
	dec  b                                           ; $6e17: $05
	add  b                                           ; $6e18: $80
	add  hl, sp                                      ; $6e19: $39
	ld   bc, $0001                                   ; $6e1a: $01 $01 $00
	ld   bc, $718c                                   ; $6e1d: $01 $8c $71
	ld   [hl], h                                     ; $6e20: $74
	sbc  c                                           ; $6e21: $99
	ld   e, c                                        ; $6e22: $59
	sub  a                                           ; $6e23: $97
	sbc  [hl]                                        ; $6e24: $9e
	ld   l, d                                        ; $6e25: $6a
	ld   [hl], c                                     ; $6e26: $71
	ld   l, l                                        ; $6e27: $6d
	ld   d, d                                        ; $6e28: $52
	dec  c                                           ; $6e29: $0d
	nop                                              ; $6e2a: $00
	dec  b                                           ; $6e2b: $05
	ld   b, b                                        ; $6e2c: $40
	ld   h, e                                        ; $6e2d: $63
	ld   [bc], a                                     ; $6e2e: $02
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	ld   bc, $745b                                   ; $6e31: $01 $5b $74
	sub  [hl]                                        ; $6e34: $96
	sbc  a                                           ; $6e35: $9f
	dec  c                                           ; $6e36: $0d
	nop                                              ; $6e37: $00
	ld   a, [bc]                                     ; $6e38: $0a
	dec  c                                           ; $6e39: $0d
	nop                                              ; $6e3a: $00
	nop                                              ; $6e3b: $00
	rrca                                             ; $6e3c: $0f
	nop                                              ; $6e3d: $00
	ld   bc, $1e09                                   ; $6e3e: $01 $09 $1e
	add  hl, hl                                      ; $6e41: $29
	inc  bc                                          ; $6e42: $03
	nop                                              ; $6e43: $00
	rrca                                             ; $6e44: $0f
	nop                                              ; $6e45: $00
	ld   bc, $6201                                   ; $6e46: $01 $01 $62
	adc  a                                           ; $6e49: $8f
	and  c                                           ; $6e4a: $a1
	sub  [hl]                                        ; $6e4b: $96
	sbc  [hl]                                        ; $6e4c: $9e
	and  e                                           ; $6e4d: $a3
	and  l                                           ; $6e4e: $a5
	db   $ec                                         ; $6e4f: $ec
	cp   d                                           ; $6e50: $ba
	sbc  a                                           ; $6e51: $9f
	dec  c                                           ; $6e52: $0d
	ld   [bc], a                                     ; $6e53: $02
	and  l                                           ; $6e54: $a5
	inc  b                                           ; $6e55: $04
	rst  $28                                         ; $6e56: $ef
	ld   a, l                                        ; $6e57: $7d
	sbc  [hl]                                        ; $6e58: $9e
	ld   a, l                                        ; $6e59: $7d
	ld   l, b                                        ; $6e5a: $68
	ld   l, c                                        ; $6e5b: $69
	ld   a, b                                        ; $6e5c: $78
	ld   d, d                                        ; $6e5d: $52
	inc  b                                           ; $6e5e: $04
	di                                               ; $6e5f: $f3
	ld   [bc], a                                     ; $6e60: $02
	jp   $0d5a                                       ; $6e61: $c3 $5a $0d


	ld   d, b                                        ; $6e64: $50
	sbc  c                                           ; $6e65: $99
	and  c                                           ; $6e66: $a1
	ld   l, [hl]                                     ; $6e67: $6e
	sub  [hl]                                        ; $6e68: $96
	sbc  a                                           ; $6e69: $9f
	ld   h, d                                        ; $6e6a: $62
	adc  a                                           ; $6e6b: $8f
	and  c                                           ; $6e6c: $a1
	sbc  a                                           ; $6e6d: $9f
	dec  c                                           ; $6e6e: $0d
	nop                                              ; $6e6f: $00
	ld   a, [bc]                                     ; $6e70: $0a
	dec  b                                           ; $6e71: $05
	add  b                                           ; $6e72: $80
	sub  $01                                         ; $6e73: $d6 $01
	ld   bc, $1c00                                   ; $6e75: $01 $00 $1c
	inc  b                                           ; $6e78: $04
	inc  bc                                          ; $6e79: $03
	inc  bc                                          ; $6e7a: $03
	ld   bc, $fc56                                   ; $6e7b: $01 $56 $fc
	sbc  [hl]                                        ; $6e7e: $9e
	and  e                                           ; $6e7f: $a3
	and  l                                           ; $6e80: $a5
	db   $ec                                         ; $6e81: $ec
	cp   d                                           ; $6e82: $ba
	ld   [hl], d                                     ; $6e83: $72
	adc  h                                           ; $6e84: $8c
	and  c                                           ; $6e85: $a1
	ld   a, b                                        ; $6e86: $78
	ld   d, d                                        ; $6e87: $52
	rst  $38                                         ; $6e88: $ff
	rst  $38                                         ; $6e89: $ff
	dec  c                                           ; $6e8a: $0d
	ld   h, [hl]                                     ; $6e8b: $66
	sub  c                                           ; $6e8c: $91
	sbc  [hl]                                        ; $6e8d: $9e
	ld   d, d                                        ; $6e8e: $52
	ld   d, d                                        ; $6e8f: $52
	sub  [hl]                                        ; $6e90: $96
	sub  b                                           ; $6e91: $90
	ld   d, h                                        ; $6e92: $54
	sbc  a                                           ; $6e93: $9f
	dec  c                                           ; $6e94: $0d
	ld   d, d                                        ; $6e95: $52
	ld   h, c                                        ; $6e96: $61
	ld   d, h                                        ; $6e97: $54
	sbc  [hl]                                        ; $6e98: $9e
	cp   c                                           ; $6e99: $b9
	push hl                                          ; $6e9a: $e5
	push af                                          ; $6e9b: $f5
	sbc  $fb                                         ; $6e9c: $de $fb
	db   $ed                                         ; $6e9e: $ed
	rst  $38                                         ; $6e9f: $ff
	rst  $38                                         ; $6ea0: $ff
	dec  c                                           ; $6ea1: $0d
	nop                                              ; $6ea2: $00
	ld   a, [bc]                                     ; $6ea3: $0a
	dec  c                                           ; $6ea4: $0d
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	rrca                                             ; $6ea7: $0f
	nop                                              ; $6ea8: $00
	ld   bc, $1e09                                   ; $6ea9: $01 $09 $1e
	add  hl, hl                                      ; $6eac: $29
	inc  bc                                          ; $6ead: $03
	nop                                              ; $6eae: $00
	rrca                                             ; $6eaf: $0f
	nop                                              ; $6eb0: $00
	ld   bc, $b901                                   ; $6eb1: $01 $01 $b9
	push hl                                          ; $6eb4: $e5
	push af                                          ; $6eb5: $f5
	db   $dd                                         ; $6eb6: $dd
	ei                                               ; $6eb7: $fb
	or   c                                           ; $6eb8: $b1
	ld   l, [hl]                                     ; $6eb9: $6e
	ld   a, e                                        ; $6eba: $7b
	ld   sp, hl                                      ; $6ebb: $f9
	dec  c                                           ; $6ebc: $0d
	nop                                              ; $6ebd: $00
	ld   a, [bc]                                     ; $6ebe: $0a
	inc  e                                           ; $6ebf: $1c
	inc  b                                           ; $6ec0: $04
	ld   [bc], a                                     ; $6ec1: $02
	ld   [bc], a                                     ; $6ec2: $02
	dec  e                                           ; $6ec3: $1d
	ld   b, b                                        ; $6ec4: $40
	inc  d                                           ; $6ec5: $14
	inc  bc                                          ; $6ec6: $03
	inc  d                                           ; $6ec7: $14
	ld   bc, $2902                                   ; $6ec8: $01 $02 $29
	nop                                              ; $6ecb: $00
	ld   bc, $5a6f                                   ; $6ecc: $01 $6f $5a
	ld   d, h                                        ; $6ecf: $54
	sub  b                                           ; $6ed0: $90
	and  c                                           ; $6ed1: $a1
	ld   a, [$b90d]                                  ; $6ed2: $fa $0d $b9
	push hl                                          ; $6ed5: $e5
	push af                                          ; $6ed6: $f5
	sbc  $fb                                         ; $6ed7: $de $fb
	db   $ed                                         ; $6ed9: $ed
	ld   l, [hl]                                     ; $6eda: $6e
	sub  b                                           ; $6edb: $90
	and  c                                           ; $6edc: $a1
	ld   a, [$000d]                                  ; $6edd: $fa $0d $00
	ld   a, [bc]                                     ; $6ee0: $0a
	ld   bc, $6152                                   ; $6ee1: $01 $52 $61
	ld   d, h                                        ; $6ee4: $54
	sbc  [hl]                                        ; $6ee5: $9e
	cp   c                                           ; $6ee6: $b9
	push hl                                          ; $6ee7: $e5
	push af                                          ; $6ee8: $f5
	sbc  $fb                                         ; $6ee9: $de $fb
	db   $ed                                         ; $6eeb: $ed
	sbc  a                                           ; $6eec: $9f
	dec  c                                           ; $6eed: $0d
	nop                                              ; $6eee: $00
	ld   a, [bc]                                     ; $6eef: $0a
	dec  c                                           ; $6ef0: $0d
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	rrca                                             ; $6ef3: $0f
	nop                                              ; $6ef4: $00
	ld   bc, $1e09                                   ; $6ef5: $01 $09 $1e
	add  hl, hl                                      ; $6ef8: $29
	inc  bc                                          ; $6ef9: $03
	nop                                              ; $6efa: $00

Jump_047_6efb:
	rrca                                             ; $6efb: $0f
	nop                                              ; $6efc: $00
	ld   bc, $b001                                   ; $6efd: $01 $01 $b0
	rst  JumpTable                                         ; $6f00: $df
	inc  b                                           ; $6f01: $04
	inc  hl                                          ; $6f02: $23
	dec  b                                           ; $6f03: $05
	inc  c                                           ; $6f04: $0c
	ld   l, [hl]                                     ; $6f05: $6e
	ld   a, e                                        ; $6f06: $7b
	ld   sp, hl                                      ; $6f07: $f9
	dec  c                                           ; $6f08: $0d
	nop                                              ; $6f09: $00
	ld   a, [bc]                                     ; $6f0a: $0a
	inc  e                                           ; $6f0b: $1c
	inc  b                                           ; $6f0c: $04
	rlca                                             ; $6f0d: $07
	rlca                                             ; $6f0e: $07
	dec  e                                           ; $6f0f: $1d
	ld   b, b                                        ; $6f10: $40
	inc  d                                           ; $6f11: $14
	inc  bc                                          ; $6f12: $03
	inc  d                                           ; $6f13: $14
	ld   bc, $2903                                   ; $6f14: $01 $03 $29
	nop                                              ; $6f17: $00
	ld   bc, $5a6f                                   ; $6f18: $01 $6f $5a
	ld   d, h                                        ; $6f1b: $54
	ld   a, [$b910]                                  ; $6f1c: $fa $10 $b9
	push hl                                          ; $6f1f: $e5
	push af                                          ; $6f20: $f5
	sbc  $fb                                         ; $6f21: $de $fb
	db   $ed                                         ; $6f23: $ed
	ld   a, [$6b0d]                                  ; $6f24: $fa $0d $6b
	and  c                                           ; $6f27: $a1
	ld   a, b                                        ; $6f28: $78
	reti                                             ; $6f29: $d9


	push af                                          ; $6f2a: $f5
	ld   a, b                                        ; $6f2b: $78
	ld   a, b                                        ; $6f2c: $78
	adc  h                                           ; $6f2d: $8c
	ld   d, [hl]                                     ; $6f2e: $56
	ld   h, [hl]                                     ; $6f2f: $66
	sub  c                                           ; $6f30: $91
	ld   a, b                                        ; $6f31: $78
	ld   d, d                                        ; $6f32: $52
	ld   a, [$580d]                                  ; $6f33: $fa $0d $58
	adc  d                                           ; $6f36: $8a
	ld   d, [hl]                                     ; $6f37: $56
	sbc  c                                           ; $6f38: $99
	ld   e, e                                        ; $6f39: $5b
	ld   e, d                                        ; $6f3a: $5a
	ld   a, b                                        ; $6f3b: $78
	ld   d, d                                        ; $6f3c: $52
	and  c                                           ; $6f3d: $a1
	ld   l, [hl]                                     ; $6f3e: $6e
	ld   a, e                                        ; $6f3f: $7b
	ld   a, [$000d]                                  ; $6f40: $fa $0d $00
	ld   a, [bc]                                     ; $6f43: $0a
	inc  e                                           ; $6f44: $1c
	inc  b                                           ; $6f45: $04
	ld   [bc], a                                     ; $6f46: $02
	ld   [bc], a                                     ; $6f47: $02
	ld   bc, $6152                                   ; $6f48: $01 $52 $61
	ld   d, h                                        ; $6f4b: $54
	sbc  [hl]                                        ; $6f4c: $9e
	cp   c                                           ; $6f4d: $b9
	push hl                                          ; $6f4e: $e5
	push af                                          ; $6f4f: $f5
	sbc  $fb                                         ; $6f50: $de $fb
	db   $ed                                         ; $6f52: $ed
	sbc  a                                           ; $6f53: $9f
	dec  c                                           ; $6f54: $0d
	nop                                              ; $6f55: $00
	ld   a, [bc]                                     ; $6f56: $0a
	dec  c                                           ; $6f57: $0d
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	rrca                                             ; $6f5a: $0f
	nop                                              ; $6f5b: $00
	ld   bc, $1e09                                   ; $6f5c: $01 $09 $1e
	add  hl, hl                                      ; $6f5f: $29
	inc  bc                                          ; $6f60: $03
	nop                                              ; $6f61: $00
	inc  e                                           ; $6f62: $1c
	inc  b                                           ; $6f63: $04
	inc  b                                           ; $6f64: $04
	inc  b                                           ; $6f65: $04
	dec  e                                           ; $6f66: $1d
	ld   b, b                                        ; $6f67: $40
	inc  d                                           ; $6f68: $14
	inc  bc                                          ; $6f69: $03
	inc  d                                           ; $6f6a: $14
	ld   bc, $2902                                   ; $6f6b: $01 $02 $29
	nop                                              ; $6f6e: $00
	ld   bc, $9e50                                   ; $6f6f: $01 $50 $9e
	ld   e, b                                        ; $6f72: $58
	adc  d                                           ; $6f73: $8a
	ld   d, [hl]                                     ; $6f74: $56
	ld   [hl], h                                     ; $6f75: $74
	ld   a, b                                        ; $6f76: $78
	ld   d, d                                        ; $6f77: $52
	and  c                                           ; $6f78: $a1
	ld   l, [hl]                                     ; $6f79: $6e
	rst  $38                                         ; $6f7a: $ff
	rst  $38                                         ; $6f7b: $ff
	dec  c                                           ; $6f7c: $0d
	ld   l, a                                        ; $6f7d: $6f
	ld   d, d                                        ; $6f7e: $52
	ld   [bc], a                                     ; $6f7f: $02
	inc  de                                          ; $6f80: $13
	ld   l, a                                        ; $6f81: $6f
	sub  c                                           ; $6f82: $91
	and  c                                           ; $6f83: $a1
	sbc  [hl]                                        ; $6f84: $9e
	ld   a, l                                        ; $6f85: $7d
	ld   e, l                                        ; $6f86: $5d
	ld   h, [hl]                                     ; $6f87: $66
	sub  l                                           ; $6f88: $95
	ld   d, h                                        ; $6f89: $54
	rst  $38                                         ; $6f8a: $ff
	rst  $38                                         ; $6f8b: $ff
	dec  c                                           ; $6f8c: $0d
	nop                                              ; $6f8d: $00
	ld   a, [bc]                                     ; $6f8e: $0a
	rrca                                             ; $6f8f: $0f
	nop                                              ; $6f90: $00
	ld   bc, $7d01                                   ; $6f91: $01 $01 $7d
	sbc  [hl]                                        ; $6f94: $9e
	ld   a, l                                        ; $6f95: $7d
	ld   e, l                                        ; $6f96: $5d
	ld   h, [hl]                                     ; $6f97: $66
	sub  l                                           ; $6f98: $95
	ld   d, h                                        ; $6f99: $54
	ld   [hl], c                                     ; $6f9a: $71
	ld   [hl], h                                     ; $6f9b: $74
	rst  $38                                         ; $6f9c: $ff
	rst  $38                                         ; $6f9d: $ff
	dec  c                                           ; $6f9e: $0d
	nop                                              ; $6f9f: $00
	ld   a, [bc]                                     ; $6fa0: $0a
	inc  e                                           ; $6fa1: $1c
	inc  b                                           ; $6fa2: $04
	inc  b                                           ; $6fa3: $04
	inc  b                                           ; $6fa4: $04
	ld   bc, $8163                                   ; $6fa5: $01 $63 $81
	ld   h, l                                        ; $6fa8: $65
	ld   d, d                                        ; $6fa9: $52
	ld   a, e                                        ; $6faa: $7b
	sbc  [hl]                                        ; $6fab: $9e
	cp   c                                           ; $6fac: $b9
	push hl                                          ; $6fad: $e5
	push af                                          ; $6fae: $f5
	sbc  $fb                                         ; $6faf: $de $fb
	db   $ed                                         ; $6fb1: $ed
	sbc  a                                           ; $6fb2: $9f
	dec  c                                           ; $6fb3: $0d
	sub  b                                           ; $6fb4: $90
	ld   d, h                                        ; $6fb5: $54
	sbc  [hl]                                        ; $6fb6: $9e
	ld   d, d                                        ; $6fb7: $52
	ld   h, c                                        ; $6fb8: $61
	ld   d, h                                        ; $6fb9: $54
	sbc  a                                           ; $6fba: $9f
	dec  c                                           ; $6fbb: $0d
	nop                                              ; $6fbc: $00
	ld   a, [bc]                                     ; $6fbd: $0a
	dec  c                                           ; $6fbe: $0d
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	rrca                                             ; $6fc1: $0f
	nop                                              ; $6fc2: $00
	ld   bc, $1e09                                   ; $6fc3: $01 $09 $1e
	add  hl, hl                                      ; $6fc6: $29
	inc  bc                                          ; $6fc7: $03
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	ld   c, $5c                                      ; $6fca: $0e $5c
	dec  c                                           ; $6fcc: $0d
	dec  c                                           ; $6fcd: $0d
	nop                                              ; $6fce: $00
	rrca                                             ; $6fcf: $0f
	nop                                              ; $6fd0: $00
	ld   bc, $0102                                   ; $6fd1: $01 $02 $01
	ld   d, b                                        ; $6fd4: $50
	sbc  d                                           ; $6fd5: $9a
	ld   sp, hl                                      ; $6fd6: $f9
	db   $10                                         ; $6fd7: $10
	inc  b                                           ; $6fd8: $04
	pop  hl                                          ; $6fd9: $e1
	inc  b                                           ; $6fda: $04
	rst  $38                                         ; $6fdb: $ff
	ld   h, e                                        ; $6fdc: $63
	and  c                                           ; $6fdd: $a1
	rst  $38                                         ; $6fde: $ff
	rst  $38                                         ; $6fdf: $ff
	dec  c                                           ; $6fe0: $0d
	nop                                              ; $6fe1: $00
	ld   a, [bc]                                     ; $6fe2: $0a
	inc  e                                           ; $6fe3: $1c
	dec  c                                           ; $6fe4: $0d
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
	ld   bc, $9e50                                   ; $6fe7: $01 $50 $9e
	ld   l, a                                        ; $6fea: $6f
	sub  l                                           ; $6feb: $95
	ld   d, h                                        ; $6fec: $54
	ld   [hl], a                                     ; $6fed: $77
	sub  [hl]                                        ; $6fee: $96
	ld   e, c                                        ; $6fef: $59
	ld   [hl], c                                     ; $6ff0: $71
	ld   l, l                                        ; $6ff1: $6d
	sbc  a                                           ; $6ff2: $9f
	dec  c                                           ; $6ff3: $0d
	ld   [$5d00], sp                                 ; $6ff4: $08 $00 $5d
	and  c                                           ; $6ff7: $a1
	sbc  [hl]                                        ; $6ff8: $9e
	ld   h, c                                        ; $6ff9: $61
	sbc  d                                           ; $6ffa: $9a
	and  b                                           ; $6ffb: $a0
	ld   [bc], a                                     ; $6ffc: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ffd: $cf
	dec  b                                           ; $6ffe: $05
	ld   a, [de]                                     ; $6fff: $1a
	ld   a, c                                        ; $7000: $79
	dec  c                                           ; $7001: $0d
	inc  b                                           ; $7002: $04
	ld   b, $5f                                      ; $7003: $06 $5f
	ld   [hl], h                                     ; $7005: $74
	ld   e, l                                        ; $7006: $5d
	sbc  d                                           ; $7007: $9a
	ld   a, b                                        ; $7008: $78
	ld   d, d                                        ; $7009: $52
	ld   sp, hl                                      ; $700a: $f9
	dec  c                                           ; $700b: $0d
	nop                                              ; $700c: $00
	ld   a, [bc]                                     ; $700d: $0a
	db   $10                                         ; $700e: $10
	ld   de, $0f00                                   ; $700f: $11 $00 $0f
	nop                                              ; $7012: $00
	ld   bc, $0401                                   ; $7013: $01 $01 $04
	ld   c, c                                        ; $7016: $49
	ld   [hl], l                                     ; $7017: $75
	ld   h, a                                        ; $7018: $67
	ld   e, c                                        ; $7019: $59
	ld   sp, hl                                      ; $701a: $f9
	dec  c                                           ; $701b: $0d
	ld   h, c                                        ; $701c: $61
	ld   a, h                                        ; $701d: $7c
	inc  bc                                          ; $701e: $03
	ld   l, e                                        ; $701f: $6b
	dec  b                                           ; $7020: $05
	db   $e4                                         ; $7021: $e4
	ld   a, h                                        ; $7022: $7c
	inc  bc                                          ; $7023: $03
	ld   e, b                                        ; $7024: $58
	ld   a, l                                        ; $7025: $7d
	rst  $38                                         ; $7026: $ff
	rst  $38                                         ; $7027: $ff
	dec  c                                           ; $7028: $0d
	nop                                              ; $7029: $00
	ld   a, [bc]                                     ; $702a: $0a
	inc  e                                           ; $702b: $1c
	dec  c                                           ; $702c: $0d
	ld   bc, $0101                                   ; $702d: $01 $01 $01
	sub  $a2                                         ; $7030: $d6 $a2
	push af                                          ; $7032: $f5
	xor  $c0                                         ; $7033: $ee $c0
	ei                                               ; $7035: $fb
	sub  [hl]                                        ; $7036: $96
	sbc  [hl]                                        ; $7037: $9e
	dec  c                                           ; $7038: $0d
	ld   h, [hl]                                     ; $7039: $66
	sub  c                                           ; $703a: $91
	sbc  [hl]                                        ; $703b: $9e
	sub  [hl]                                        ; $703c: $96
	sbc  e                                           ; $703d: $9b
	ld   h, l                                        ; $703e: $65
	ld   e, l                                        ; $703f: $5d
	ld   a, e                                        ; $7040: $7b
	sbc  a                                           ; $7041: $9f
	dec  c                                           ; $7042: $0d
	nop                                              ; $7043: $00
	ld   a, [bc]                                     ; $7044: $0a
	dec  c                                           ; $7045: $0d
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	rrca                                             ; $7048: $0f
	nop                                              ; $7049: $00
	ld   bc, $3c09                                   ; $704a: $01 $09 $3c
	inc  hl                                          ; $704d: $23
	ld   c, h                                        ; $704e: $4c
	inc  d                                           ; $704f: $14
	ld   b, $01                                      ; $7050: $06 $01
	ld   bc, $cf02                                   ; $7052: $01 $02 $cf
	dec  b                                           ; $7055: $05
	ld   a, [de]                                     ; $7056: $1a
	ld   h, e                                        ; $7057: $63
	and  c                                           ; $7058: $a1
	sbc  [hl]                                        ; $7059: $9e
	inc  b                                           ; $705a: $04
	pop  hl                                          ; $705b: $e1
	inc  b                                           ; $705c: $04
	rst  $38                                         ; $705d: $ff
	ld   h, e                                        ; $705e: $63
	and  c                                           ; $705f: $a1
	ld   e, c                                        ; $7060: $59
	sub  a                                           ; $7061: $97
	dec  c                                           ; $7062: $0d
	ld   d, b                                        ; $7063: $50
	ld   l, b                                        ; $7064: $68
	ld   e, c                                        ; $7065: $59
	ld   [hl], c                                     ; $7066: $71
	ld   l, l                                        ; $7067: $6d
	sub  $a2                                         ; $7068: $d6 $a2
	push af                                          ; $706a: $f5
	xor  $c0                                         ; $706b: $ee $c0
	ei                                               ; $706d: $fb
	and  b                                           ; $706e: $a0
	dec  c                                           ; $706f: $0d
	ld   e, b                                        ; $7070: $58
	inc  b                                           ; $7071: $04
	ld   b, $5f                                      ; $7072: $06 $5f
	ld   a, c                                        ; $7074: $79
	inc  bc                                          ; $7075: $03
	ld   h, l                                        ; $7076: $65
	ld   e, d                                        ; $7077: $5a
	sbc  b                                           ; $7078: $98
	adc  h                                           ; $7079: $8c
	ld   h, l                                        ; $707a: $65
	ld   l, l                                        ; $707b: $6d
	sbc  a                                           ; $707c: $9f
	dec  c                                           ; $707d: $0d
	nop                                              ; $707e: $00
	ld   a, [bc]                                     ; $707f: $0a
	rlca                                             ; $7080: $07
	cpl                                              ; $7081: $2f
	ld   bc, $1503                                   ; $7082: $01 $03 $15
	ld   bc, $226e                                   ; $7085: $01 $6e $22
	nop                                              ; $7088: $00
	rrca                                             ; $7089: $0f
	dec  b                                           ; $708a: $05
	ld   bc, $5001                                   ; $708b: $01 $01 $50
	sbc  [hl]                                        ; $708e: $9e
	ld   d, d                                        ; $708f: $52
	adc  h                                           ; $7090: $8c
	ld   d, b                                        ; $7091: $50
	ld   e, a                                        ; $7092: $5f
	sbc  c                                           ; $7093: $99
	ld   e, c                                        ; $7094: $59
	sub  a                                           ; $7095: $97
	sbc  [hl]                                        ; $7096: $9e
	dec  c                                           ; $7097: $0d
	ld   l, a                                        ; $7098: $6f
	sub  l                                           ; $7099: $95
	ld   [hl], c                                     ; $709a: $71
	halt                                             ; $709b: $76
	inc  b                                           ; $709c: $04
	rla                                              ; $709d: $17
	ld   [hl], c                                     ; $709e: $71
	ld   [hl], h                                     ; $709f: $74
	ld   a, b                                        ; $70a0: $78
	sbc  a                                           ; $70a1: $9f
	dec  c                                           ; $70a2: $0d
	nop                                              ; $70a3: $00
	ld   a, [bc]                                     ; $70a4: $0a
	ld   c, $4d                                      ; $70a5: $0e $4d
	rrca                                             ; $70a7: $0f
	nop                                              ; $70a8: $00
	ld   bc, $050d                                   ; $70a9: $01 $0d $05
	ld   bc, $7d01                                   ; $70ac: $01 $01 $7d
	ld   d, d                                        ; $70af: $52
	sbc  [hl]                                        ; $70b0: $9e
	ld   [bc], a                                     ; $70b1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70b2: $cf
	dec  b                                           ; $70b3: $05
	ld   a, [de]                                     ; $70b4: $1a
	ld   h, e                                        ; $70b5: $63
	and  c                                           ; $70b6: $a1
	sbc  a                                           ; $70b7: $9f
	dec  c                                           ; $70b8: $0d
	sub  $a2                                         ; $70b9: $d6 $a2
	push af                                          ; $70bb: $f5
	xor  $c0                                         ; $70bc: $ee $c0
	ei                                               ; $70be: $fb
	ld   [hl], l                                     ; $70bf: $75
	ld   h, a                                        ; $70c0: $67
	sbc  a                                           ; $70c1: $9f
	dec  c                                           ; $70c2: $0d
	nop                                              ; $70c3: $00
	ld   a, [bc]                                     ; $70c4: $0a
	db   $10                                         ; $70c5: $10
	ld   de, $1c00                                   ; $70c6: $11 $00 $1c
	dec  b                                           ; $70c9: $05
	ld   bc, $1d01                                   ; $70ca: $01 $01 $1d
	ld   b, b                                        ; $70cd: $40
	dec  d                                           ; $70ce: $15
	inc  bc                                          ; $70cf: $03
	dec  d                                           ; $70d0: $15
	ld   bc, $2802                                   ; $70d1: $01 $02 $28
	nop                                              ; $70d4: $00
	ld   bc, $649d                                   ; $70d5: $01 $9d $64
	sbc  l                                           ; $70d8: $9d
	ld   h, h                                        ; $70d9: $64
	sbc  [hl]                                        ; $70da: $9e
	ld   h, d                                        ; $70db: $62
	ld   e, l                                        ; $70dc: $5d
	sbc  e                                           ; $70dd: $9b
	ld   d, h                                        ; $70de: $54
	ld   h, e                                        ; $70df: $63
	and  c                                           ; $70e0: $a1
	sbc  a                                           ; $70e1: $9f
	dec  c                                           ; $70e2: $0d
	ld   [$7d00], sp                                 ; $70e3: $08 $00 $7d
	and  c                                           ; $70e6: $a1
	sbc  a                                           ; $70e7: $9f
	dec  c                                           ; $70e8: $0d
	ld   e, b                                        ; $70e9: $58
	ei                                               ; $70ea: $fb
	ld   e, e                                        ; $70eb: $5b
	ld   a, c                                        ; $70ec: $79
	sbc  [hl]                                        ; $70ed: $9e
	ld   d, b                                        ; $70ee: $50
	sbc  b                                           ; $70ef: $98
	ld   e, d                                        ; $70f0: $5a
	halt                                             ; $70f1: $76
	ld   d, h                                        ; $70f2: $54
	ld   a, b                                        ; $70f3: $78
	sbc  a                                           ; $70f4: $9f
	dec  c                                           ; $70f5: $0d
	nop                                              ; $70f6: $00
	ld   a, [bc]                                     ; $70f7: $0a
	nop                                              ; $70f8: $00
	rrca                                             ; $70f9: $0f
	dec  b                                           ; $70fa: $05
	nop                                              ; $70fb: $00
	ld   bc, $8c67                                   ; $70fc: $01 $67 $8c
	and  c                                           ; $70ff: $a1
	ld   a, b                                        ; $7100: $78
	db   $fc                                         ; $7101: $fc
	sbc  a                                           ; $7102: $9f
	ld   [bc], a                                     ; $7103: $02
	and  l                                           ; $7104: $a5
	ld   l, a                                        ; $7105: $6f
	sub  l                                           ; $7106: $95
	ld   [hl], c                                     ; $7107: $71
	halt                                             ; $7108: $76
	dec  c                                           ; $7109: $0d
	inc  bc                                          ; $710a: $03
	ld   l, e                                        ; $710b: $6b
	ld   a, l                                        ; $710c: $7d
	ld   a, b                                        ; $710d: $78
	ld   h, e                                        ; $710e: $63
	sbc  d                                           ; $710f: $9a
	add  [hl]                                        ; $7110: $86
	and  c                                           ; $7111: $a1
	ld   e, c                                        ; $7112: $59
	sub  a                                           ; $7113: $97
	dec  c                                           ; $7114: $0d
	jp   z, Jump_047_7ca3                            ; $7115: $ca $a3 $7c

	inc  bc                                          ; $7118: $03
	ld   c, a                                        ; $7119: $4f
	ld   a, c                                        ; $711a: $79
	inc  b                                           ; $711b: $04
	jr   z, jr_047_7170                              ; $711c: $28 $52

	halt                                             ; $711e: $76
	ld   d, d                                        ; $711f: $52
	ld   [hl], h                                     ; $7120: $74
	sbc  a                                           ; $7121: $9f
	dec  c                                           ; $7122: $0d
	nop                                              ; $7123: $00
	ld   a, [bc]                                     ; $7124: $0a
	rrca                                             ; $7125: $0f
	nop                                              ; $7126: $00
	ld   bc, $7d01                                   ; $7127: $01 $01 $7d
	ld   d, d                                        ; $712a: $52
	sbc  [hl]                                        ; $712b: $9e
	sbc  l                                           ; $712c: $9d
	ld   e, c                                        ; $712d: $59
	sbc  b                                           ; $712e: $98
	adc  h                                           ; $712f: $8c
	ld   h, l                                        ; $7130: $65
	ld   l, l                                        ; $7131: $6d
	sbc  a                                           ; $7132: $9f
	dec  c                                           ; $7133: $0d
	nop                                              ; $7134: $00
	ld   a, [bc]                                     ; $7135: $0a
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	inc  e                                           ; $7138: $1c
	ld   [bc], a                                     ; $7139: $02
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	ld   [bc], a                                     ; $713c: $02
	ld   bc, $9e50                                   ; $713d: $01 $50 $9e
	ld   [$6308], sp                                 ; $7140: $08 $08 $63
	and  c                                           ; $7143: $a1
	sbc  a                                           ; $7144: $9f
	dec  c                                           ; $7145: $0d
	ld   l, a                                        ; $7146: $6f
	sub  l                                           ; $7147: $95
	ld   d, h                                        ; $7148: $54
	ld   [hl], a                                     ; $7149: $77
	sub  [hl]                                        ; $714a: $96
	ld   e, c                                        ; $714b: $59
	ld   [hl], c                                     ; $714c: $71
	ld   l, l                                        ; $714d: $6d
	sbc  l                                           ; $714e: $9d
	sbc  a                                           ; $714f: $9f
	dec  c                                           ; $7150: $0d
	nop                                              ; $7151: $00
	ld   a, [bc]                                     ; $7152: $0a
	ld   bc, $1604                                   ; $7153: $01 $04 $16
	ld   [bc], a                                     ; $7156: $02
	xor  b                                           ; $7157: $a8
	inc  b                                           ; $7158: $04
	sub  l                                           ; $7159: $95
	ld   [bc], a                                     ; $715a: $02
	ld   hl, $047c                                   ; $715b: $21 $7c $04
	dec  bc                                          ; $715e: $0b
	ld   a, c                                        ; $715f: $79
	ld   d, b                                        ; $7160: $50
	sbc  c                                           ; $7161: $99
	dec  c                                           ; $7162: $0d
	cp   h                                           ; $7163: $bc
	push af                                          ; $7164: $f5
	cp   d                                           ; $7165: $ba
	and  b                                           ; $7166: $a0
	inc  bc                                          ; $7167: $03
	jr   jr_047_71db                                 ; $7168: $18 $71

	ld   [hl], h                                     ; $716a: $74
	ld   e, e                                        ; $716b: $5b
	ld   [hl], h                                     ; $716c: $74
	dec  c                                           ; $716d: $0d
	ld   e, l                                        ; $716e: $5d
	ld   l, [hl]                                     ; $716f: $6e

jr_047_7170:
	ld   h, e                                        ; $7170: $63
	sub  a                                           ; $7171: $97
	ld   a, b                                        ; $7172: $78
	ld   d, d                                        ; $7173: $52
	ld   sp, hl                                      ; $7174: $f9
	dec  c                                           ; $7175: $0d
	nop                                              ; $7176: $00
	ld   a, [bc]                                     ; $7177: $0a
	add  hl, de                                      ; $7178: $19
	dec  b                                           ; $7179: $05
	ld   [bc], a                                     ; $717a: $02
	ld   a, l                                        ; $717b: $7d
	ld   d, d                                        ; $717c: $52
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	ld   d, d                                        ; $717f: $52
	ld   d, d                                        ; $7180: $52
	ld   d, [hl]                                     ; $7181: $56
	nop                                              ; $7182: $00
	ld   bc, $6107                                   ; $7183: $01 $07 $61
	nop                                              ; $7186: $00
	ld   [bc], a                                     ; $7187: $02
	inc  bc                                          ; $7188: $03
	ld   bc, $2000                                   ; $7189: $01 $00 $20
	nop                                              ; $718c: $00
	rlca                                             ; $718d: $07
	ret  c                                           ; $718e: $d8

	nop                                              ; $718f: $00
	ld   [bc], a                                     ; $7190: $02
	inc  bc                                          ; $7191: $03
	ld   bc, $2001                                   ; $7192: $01 $01 $20
	nop                                              ; $7195: $00
	ld   b, $6b                                      ; $7196: $06 $6b
	ld   bc, $000f                                   ; $7198: $01 $0f $00
	ld   bc, $7d01                                   ; $719b: $01 $01 $7d
	ld   d, d                                        ; $719e: $52
	sbc  a                                           ; $719f: $9f
	sub  [hl]                                        ; $71a0: $96
	sbc  e                                           ; $71a1: $9b
	ld   h, c                                        ; $71a2: $61
	and  c                                           ; $71a3: $a1
	ld   [hl], l                                     ; $71a4: $75
	sbc  a                                           ; $71a5: $9f
	dec  c                                           ; $71a6: $0d
	ld   l, a                                        ; $71a7: $6f
	sub  l                                           ; $71a8: $95
	ld   [hl], c                                     ; $71a9: $71
	halt                                             ; $71aa: $76
	inc  b                                           ; $71ab: $04
	rla                                              ; $71ac: $17
	ld   [hl], c                                     ; $71ad: $71
	ld   [hl], h                                     ; $71ae: $74
	ld   [hl], h                                     ; $71af: $74
	ld   e, l                                        ; $71b0: $5d
	ld   l, [hl]                                     ; $71b1: $6e
	ld   h, e                                        ; $71b2: $63
	ld   d, d                                        ; $71b3: $52
	ld   a, e                                        ; $71b4: $7b

jr_047_71b5:
	sbc  a                                           ; $71b5: $9f
	dec  c                                           ; $71b6: $0d
	nop                                              ; $71b7: $00
	ld   a, [bc]                                     ; $71b8: $0a
	inc  c                                           ; $71b9: $0c
	dec  bc                                          ; $71ba: $0b
	dec  c                                           ; $71bb: $0d
	ld   [bc], a                                     ; $71bc: $02
	ld   bc, $7d01                                   ; $71bd: $01 $01 $7d
	ld   d, d                                        ; $71c0: $52
	sbc  a                                           ; $71c1: $9f
	ld   h, a                                        ; $71c2: $67
	adc  l                                           ; $71c3: $8d
	sbc  d                                           ; $71c4: $9a
	ld   h, e                                        ; $71c5: $63
	and  c                                           ; $71c6: $a1
	sbc  a                                           ; $71c7: $9f
	dec  c                                           ; $71c8: $0d
	ld   l, a                                        ; $71c9: $6f
	ld   a, b                                        ; $71ca: $78
	adc  l                                           ; $71cb: $8d
	ld   a, c                                        ; $71cc: $79
	adc  d                                           ; $71cd: $8a
	ld   e, l                                        ; $71ce: $5d
	ld   a, h                                        ; $71cf: $7c
	inc  b                                           ; $71d0: $04
	rst  ToBoot                                         ; $71d1: $c7
	inc  bc                                          ; $71d2: $03
	ld   c, a                                        ; $71d3: $4f
	ld   a, l                                        ; $71d4: $7d
	dec  c                                           ; $71d5: $0d
	ld   [$7500], sp                                 ; $71d6: $08 $00 $75
	ld   h, a                                        ; $71d9: $67
	sub  [hl]                                        ; $71da: $96

jr_047_71db:
	dec  c                                           ; $71db: $0d
	nop                                              ; $71dc: $00
	ld   a, [bc]                                     ; $71dd: $0a
	rrca                                             ; $71de: $0f
	ld   [bc], a                                     ; $71df: $02
	ld   bc, $401d                                   ; $71e0: $01 $1d $40
	ld   [de], a                                     ; $71e3: $12
	inc  bc                                          ; $71e4: $03
	ld   [de], a                                     ; $71e5: $12
	ld   bc, $2802                                   ; $71e6: $01 $02 $28
	nop                                              ; $71e9: $00
	ld   bc, $9750                                   ; $71ea: $01 $50 $97
	sbc  [hl]                                        ; $71ed: $9e
	ld   l, e                                        ; $71ee: $6b
	ld   d, h                                        ; $71ef: $54
	ld   [hl], l                                     ; $71f0: $75
	ld   h, l                                        ; $71f1: $65
	ld   l, l                                        ; $71f2: $6d
	ld   e, c                                        ; $71f3: $59
	ld   h, l                                        ; $71f4: $65
	sub  a                                           ; $71f5: $97
	sbc  a                                           ; $71f6: $9f
	dec  c                                           ; $71f7: $0d
	adc  h                                           ; $71f8: $8c
	ld   d, b                                        ; $71f9: $50
	sbc  [hl]                                        ; $71fa: $9e
	ld   l, e                                        ; $71fb: $6b
	sbc  d                                           ; $71fc: $9a
	ld   a, l                                        ; $71fd: $7d
	halt                                             ; $71fe: $76
	sub  b                                           ; $71ff: $90
	ld   e, c                                        ; $7200: $59
	ld   e, l                                        ; $7201: $5d
	dec  c                                           ; $7202: $0d
	ld   [hl], a                                     ; $7203: $77
	ld   d, h                                        ; $7204: $54
	sub  b                                           ; $7205: $90
	ld   d, b                                        ; $7206: $50
	sbc  b                                           ; $7207: $98
	ld   e, d                                        ; $7208: $5a
	halt                                             ; $7209: $76
	ld   d, h                                        ; $720a: $54
	sbc  a                                           ; $720b: $9f
	dec  c                                           ; $720c: $0d
	nop                                              ; $720d: $00
	ld   a, [bc]                                     ; $720e: $0a
	nop                                              ; $720f: $00
	rrca                                             ; $7210: $0f
	nop                                              ; $7211: $00
	ld   bc, $6201                                   ; $7212: $01 $01 $62
	inc  bc                                          ; $7215: $03
	sub  h                                           ; $7216: $94
	inc  b                                           ; $7217: $04
	sbc  [hl]                                        ; $7218: $9e
	ld   [hl], l                                     ; $7219: $75
	inc  bc                                          ; $721a: $03
	jr   jr_047_71b5                                 ; $721b: $18 $98

	ld   a, c                                        ; $721d: $79
	ld   [bc], a                                     ; $721e: $02
	ld   a, a                                        ; $721f: $7f
	ld   e, a                                        ; $7220: $5f
	ld   a, [hl]                                     ; $7221: $7e
	dec  c                                           ; $7222: $0d
	ld   d, d                                        ; $7223: $52
	ld   d, d                                        ; $7224: $52
	ld   h, [hl]                                     ; $7225: $66
	sub  c                                           ; $7226: $91
	ld   a, b                                        ; $7227: $78
	ld   d, d                                        ; $7228: $52
	ld   [hl], l                                     ; $7229: $75
	ld   h, a                                        ; $722a: $67
	ld   e, c                                        ; $722b: $59
	sbc  a                                           ; $722c: $9f
	dec  c                                           ; $722d: $0d
	nop                                              ; $722e: $00
	ld   a, [bc]                                     ; $722f: $0a
	inc  e                                           ; $7230: $1c
	ld   [bc], a                                     ; $7231: $02
	ld   [bc], a                                     ; $7232: $02
	ld   [bc], a                                     ; $7233: $02
	dec  e                                           ; $7234: $1d
	ld   b, b                                        ; $7235: $40
	ld   [de], a                                     ; $7236: $12
	inc  bc                                          ; $7237: $03
	ld   [de], a                                     ; $7238: $12
	ld   bc, $2903                                   ; $7239: $01 $03 $29
	nop                                              ; $723c: $00
	ld   bc, $508c                                   ; $723d: $01 $8c $50
	sbc  [hl]                                        ; $7240: $9e
	ld   h, c                                        ; $7241: $61
	ld   a, h                                        ; $7242: $7c
	sbc  l                                           ; $7243: $9d
	ld   l, l                                        ; $7244: $6d
	ld   e, l                                        ; $7245: $5d
	ld   h, l                                        ; $7246: $65
	ld   a, c                                        ; $7247: $79
	dec  c                                           ; $7248: $0d
	nop                                              ; $7249: $00
	dec  b                                           ; $724a: $05
	ld   b, b                                        ; $724b: $40
	ld   e, c                                        ; $724c: $59
	ld   [bc], a                                     ; $724d: $02
	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	ld   bc, $ae02                                   ; $7250: $01 $02 $ae
	inc  bc                                          ; $7253: $03
	call c, Call_047_6756                            ; $7254: $dc $56 $67
	sbc  c                                           ; $7257: $99
	ld   a, b                                        ; $7258: $78
	and  c                                           ; $7259: $a1
	ld   [hl], h                                     ; $725a: $74
	rst  $38                                         ; $725b: $ff
	rst  $38                                         ; $725c: $ff
	dec  c                                           ; $725d: $0d
	nop                                              ; $725e: $00
	dec  b                                           ; $725f: $05
	add  b                                           ; $7260: $80
	ld   d, $01                                      ; $7261: $16 $01
	ld   bc, $0500                                   ; $7263: $01 $00 $05
	ld   b, b                                        ; $7266: $40
	ld   c, c                                        ; $7267: $49
	ld   [bc], a                                     ; $7268: $02
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	ld   bc, $a502                                   ; $726b: $01 $02 $a5
	inc  b                                           ; $726e: $04
	rst  $28                                         ; $726f: $ef
	sbc  [hl]                                        ; $7270: $9e
	inc  bc                                          ; $7271: $03
	db   $ec                                         ; $7272: $ec
	dec  b                                           ; $7273: $05
	add  hl, de                                      ; $7274: $19
	inc  bc                                          ; $7275: $03
	ld   c, l                                        ; $7276: $4d
	ld   a, c                                        ; $7277: $79
	dec  b                                           ; $7278: $05

Jump_047_7279:
	db   $10                                         ; $7279: $10
	ld   a, b                                        ; $727a: $78
	ld   h, e                                        ; $727b: $63
	ld   d, d                                        ; $727c: $52
	ld   a, [$000d]                                  ; $727d: $fa $0d $00
	ld   a, [bc]                                     ; $7280: $0a
	dec  b                                           ; $7281: $05
	ld   b, b                                        ; $7282: $40
	ld   c, a                                        ; $7283: $4f
	ld   bc, $0001                                   ; $7284: $01 $01 $00
	ld   bc, $5252                                   ; $7287: $01 $52 $52
	ld   [hl], l                                     ; $728a: $75
	ld   h, a                                        ; $728b: $67
	ld   e, c                                        ; $728c: $59
	ld   a, [$020d]                                  ; $728d: $fa $0d $02
	and  l                                           ; $7290: $a5
	inc  b                                           ; $7291: $04
	rst  $28                                         ; $7292: $ef
	sbc  [hl]                                        ; $7293: $9e
	inc  bc                                          ; $7294: $03
	db   $ec                                         ; $7295: $ec
	dec  b                                           ; $7296: $05
	add  hl, de                                      ; $7297: $19
	inc  bc                                          ; $7298: $03
	ld   c, l                                        ; $7299: $4d
	ld   [hl], l                                     ; $729a: $75
	ld   h, a                                        ; $729b: $67
	sbc  l                                           ; $729c: $9d
	sub  [hl]                                        ; $729d: $96
	ld   a, [$000d]                                  ; $729e: $fa $0d $00
	ld   a, [bc]                                     ; $72a1: $0a
	nop                                              ; $72a2: $00
	inc  e                                           ; $72a3: $1c
	ld   [bc], a                                     ; $72a4: $02
	ld   [bc], a                                     ; $72a5: $02
	ld   [bc], a                                     ; $72a6: $02
	dec  e                                           ; $72a7: $1d
	ld   b, b                                        ; $72a8: $40
	ld   [de], a                                     ; $72a9: $12
	inc  bc                                          ; $72aa: $03
	ld   [de], a                                     ; $72ab: $12
	ld   bc, $2902                                   ; $72ac: $01 $02 $29
	nop                                              ; $72af: $00
	ld   bc, $4904                                   ; $72b0: $01 $04 $49
	db   $dd                                         ; $72b3: $dd
	ei                                               ; $72b4: $fb
	call nz, Call_047_6576                           ; $72b5: $c4 $76 $65
	ld   [hl], h                                     ; $72b8: $74
	ld   d, d                                        ; $72b9: $52
	adc  h                                           ; $72ba: $8c
	ld   h, a                                        ; $72bb: $67
	ld   a, h                                        ; $72bc: $7c
	ld   sp, hl                                      ; $72bd: $f9
	dec  c                                           ; $72be: $0d
	sub  b                                           ; $72bf: $90
	ld   d, h                                        ; $72c0: $54
	ld   e, a                                        ; $72c1: $5f
	ld   [hl], c                                     ; $72c2: $71
	ld   h, c                                        ; $72c3: $61
	ld   d, h                                        ; $72c4: $54
	ld   [hl], l                                     ; $72c5: $75
	ld   h, a                                        ; $72c6: $67
	sbc  l                                           ; $72c7: $9d
	ld   a, [$000d]                                  ; $72c8: $fa $0d $00
	ld   a, [bc]                                     ; $72cb: $0a
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	ld   c, $5c                                      ; $72ce: $0e $5c
	dec  c                                           ; $72d0: $0d
	dec  c                                           ; $72d1: $0d
	nop                                              ; $72d2: $00
	rrca                                             ; $72d3: $0f
	nop                                              ; $72d4: $00
	ld   bc, $0102                                   ; $72d5: $01 $02 $01
	ld   d, b                                        ; $72d8: $50
	sbc  d                                           ; $72d9: $9a
	ld   sp, hl                                      ; $72da: $f9
	db   $10                                         ; $72db: $10
	inc  b                                           ; $72dc: $04
	pop  hl                                          ; $72dd: $e1
	inc  b                                           ; $72de: $04
	rst  $38                                         ; $72df: $ff
	ld   h, e                                        ; $72e0: $63
	and  c                                           ; $72e1: $a1
	rst  $38                                         ; $72e2: $ff
	rst  $38                                         ; $72e3: $ff
	dec  c                                           ; $72e4: $0d
	nop                                              ; $72e5: $00
	ld   a, [bc]                                     ; $72e6: $0a
	rrca                                             ; $72e7: $0f
	dec  c                                           ; $72e8: $0d
	nop                                              ; $72e9: $00
	ld   bc, $9e50                                   ; $72ea: $01 $50 $9e
	ld   l, a                                        ; $72ed: $6f
	sub  l                                           ; $72ee: $95
	ld   d, h                                        ; $72ef: $54
	ld   [hl], a                                     ; $72f0: $77
	sub  [hl]                                        ; $72f1: $96
	ld   e, c                                        ; $72f2: $59
	ld   [hl], c                                     ; $72f3: $71
	ld   l, l                                        ; $72f4: $6d
	sbc  a                                           ; $72f5: $9f
	dec  c                                           ; $72f6: $0d
	ld   [$5d00], sp                                 ; $72f7: $08 $00 $5d
	and  c                                           ; $72fa: $a1
	sbc  [hl]                                        ; $72fb: $9e
	ld   h, c                                        ; $72fc: $61
	sbc  d                                           ; $72fd: $9a
	and  b                                           ; $72fe: $a0
	dec  c                                           ; $72ff: $0d
	ld   h, e                                        ; $7300: $63
	ld   e, l                                        ; $7301: $5d
	sub  a                                           ; $7302: $97
	ld   h, e                                        ; $7303: $63
	and  c                                           ; $7304: $a1
	ld   a, c                                        ; $7305: $79
	inc  b                                           ; $7306: $04
	ld   b, $5f                                      ; $7307: $06 $5f
	ld   [hl], h                                     ; $7309: $74
	ld   e, l                                        ; $730a: $5d
	sbc  d                                           ; $730b: $9a
	ld   a, b                                        ; $730c: $78
	ld   d, d                                        ; $730d: $52
	ld   sp, hl                                      ; $730e: $f9
	dec  c                                           ; $730f: $0d
	nop                                              ; $7310: $00
	ld   a, [bc]                                     ; $7311: $0a
	db   $10                                         ; $7312: $10
	ld   de, $0f00                                   ; $7313: $11 $00 $0f
	nop                                              ; $7316: $00
	ld   bc, $0401                                   ; $7317: $01 $01 $04
	ld   c, c                                        ; $731a: $49
	ld   [hl], l                                     ; $731b: $75
	ld   h, a                                        ; $731c: $67
	ld   e, c                                        ; $731d: $59
	ld   sp, hl                                      ; $731e: $f9
	dec  c                                           ; $731f: $0d
	ld   h, c                                        ; $7320: $61
	ld   a, h                                        ; $7321: $7c
	inc  bc                                          ; $7322: $03
	ld   l, e                                        ; $7323: $6b
	dec  b                                           ; $7324: $05
	db   $e4                                         ; $7325: $e4
	ld   a, h                                        ; $7326: $7c
	inc  bc                                          ; $7327: $03
	ld   e, b                                        ; $7328: $58
	ld   a, l                                        ; $7329: $7d
	rst  $38                                         ; $732a: $ff
	rst  $38                                         ; $732b: $ff
	dec  c                                           ; $732c: $0d
	nop                                              ; $732d: $00
	ld   a, [bc]                                     ; $732e: $0a
	inc  e                                           ; $732f: $1c
	dec  c                                           ; $7330: $0d
	ld   bc, $0101                                   ; $7331: $01 $01 $01
	sub  $a2                                         ; $7334: $d6 $a2
	push af                                          ; $7336: $f5
	xor  $c0                                         ; $7337: $ee $c0
	ei                                               ; $7339: $fb
	sub  [hl]                                        ; $733a: $96
	sbc  [hl]                                        ; $733b: $9e
	dec  c                                           ; $733c: $0d
	ld   h, [hl]                                     ; $733d: $66
	sub  c                                           ; $733e: $91
	sbc  [hl]                                        ; $733f: $9e
	sub  [hl]                                        ; $7340: $96
	sbc  e                                           ; $7341: $9b
	ld   h, l                                        ; $7342: $65
	ld   e, l                                        ; $7343: $5d
	ld   a, e                                        ; $7344: $7b
	sbc  a                                           ; $7345: $9f
	dec  c                                           ; $7346: $0d
	nop                                              ; $7347: $00
	ld   a, [bc]                                     ; $7348: $0a
	dec  c                                           ; $7349: $0d
	nop                                              ; $734a: $00
	nop                                              ; $734b: $00
	rrca                                             ; $734c: $0f
	nop                                              ; $734d: $00
	ld   bc, $3c09                                   ; $734e: $01 $09 $3c
	inc  hl                                          ; $7351: $23
	ld   b, d                                        ; $7352: $42
	dec  c                                           ; $7353: $0d
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	rrca                                             ; $7356: $0f
	nop                                              ; $7357: $00
	ld   bc, $6301                                   ; $7358: $01 $01 $63
	ld   e, l                                        ; $735b: $5d
	sub  a                                           ; $735c: $97
	ld   h, e                                        ; $735d: $63
	and  c                                           ; $735e: $a1
	sbc  [hl]                                        ; $735f: $9e
	inc  b                                           ; $7360: $04
	pop  hl                                          ; $7361: $e1
	inc  b                                           ; $7362: $04
	rst  $38                                         ; $7363: $ff
	ld   h, e                                        ; $7364: $63
	and  c                                           ; $7365: $a1
	ld   e, c                                        ; $7366: $59
	sub  a                                           ; $7367: $97
	dec  c                                           ; $7368: $0d
	inc  b                                           ; $7369: $04
	push hl                                          ; $736a: $e5
	ld   e, c                                        ; $736b: $59
	ld   [hl], c                                     ; $736c: $71
	ld   l, l                                        ; $736d: $6d
	sub  $a2                                         ; $736e: $d6 $a2
	push af                                          ; $7370: $f5
	xor  $c0                                         ; $7371: $ee $c0
	ei                                               ; $7373: $fb
	and  b                                           ; $7374: $a0
	dec  c                                           ; $7375: $0d
	ld   e, b                                        ; $7376: $58
	inc  b                                           ; $7377: $04
	ld   b, $5f                                      ; $7378: $06 $5f
	ld   a, c                                        ; $737a: $79
	inc  bc                                          ; $737b: $03
	ld   h, l                                        ; $737c: $65
	ld   e, d                                        ; $737d: $5a
	sbc  b                                           ; $737e: $98
	adc  h                                           ; $737f: $8c
	ld   h, l                                        ; $7380: $65
	ld   l, l                                        ; $7381: $6d
	sbc  a                                           ; $7382: $9f
	dec  c                                           ; $7383: $0d
	nop                                              ; $7384: $00
	ld   a, [bc]                                     ; $7385: $0a
	rlca                                             ; $7386: $07
	ld   h, $01                                      ; $7387: $26 $01
	inc  bc                                          ; $7389: $03
	ld   de, $7801                                   ; $738a: $11 $01 $78
	ld   [hl+], a                                    ; $738d: $22
	nop                                              ; $738e: $00
	rrca                                             ; $738f: $0f
	ld   bc, $0100                                   ; $7390: $01 $00 $01
	ld   d, b                                        ; $7393: $50
	sbc  [hl]                                        ; $7394: $9e
	ld   [bc], a                                     ; $7395: $02
	and  l                                           ; $7396: $a5
	ld   [bc], a                                     ; $7397: $02
	adc  b                                           ; $7398: $88
	ld   e, a                                        ; $7399: $5f
	adc  h                                           ; $739a: $8c
	ld   h, a                                        ; $739b: $67
	sbc  a                                           ; $739c: $9f
	dec  c                                           ; $739d: $0d
	nop                                              ; $739e: $00
	ld   a, [bc]                                     ; $739f: $0a
	ld   c, $43                                      ; $73a0: $0e $43
	rrca                                             ; $73a2: $0f
	nop                                              ; $73a3: $00
	ld   bc, $010d                                   ; $73a4: $01 $0d $01
	nop                                              ; $73a7: $00
	ld   bc, $527d                                   ; $73a8: $01 $7d $52
	sbc  [hl]                                        ; $73ab: $9e
	ld   h, e                                        ; $73ac: $63
	ld   e, l                                        ; $73ad: $5d
	sub  a                                           ; $73ae: $97
	ld   h, e                                        ; $73af: $63
	and  c                                           ; $73b0: $a1
	sbc  a                                           ; $73b1: $9f
	dec  c                                           ; $73b2: $0d
	sub  $a2                                         ; $73b3: $d6 $a2
	push af                                          ; $73b5: $f5
	xor  $c0                                         ; $73b6: $ee $c0
	ei                                               ; $73b8: $fb
	ld   [hl], l                                     ; $73b9: $75
	ld   h, a                                        ; $73ba: $67
	sbc  a                                           ; $73bb: $9f
	dec  c                                           ; $73bc: $0d
	nop                                              ; $73bd: $00
	ld   a, [bc]                                     ; $73be: $0a
	dec  c                                           ; $73bf: $0d
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	db   $10                                         ; $73c2: $10
	ld   de, $1c00                                   ; $73c3: $11 $00 $1c
	ld   bc, $0101                                   ; $73c6: $01 $01 $01
	dec  e                                           ; $73c9: $1d
	ld   b, b                                        ; $73ca: $40
	ld   de, $1103                                   ; $73cb: $11 $03 $11
	ld   bc, $2802                                   ; $73ce: $01 $02 $28
	nop                                              ; $73d1: $00
	ld   bc, $649d                                   ; $73d2: $01 $9d $64
	sbc  l                                           ; $73d5: $9d
	ld   h, h                                        ; $73d6: $64
	sbc  [hl]                                        ; $73d7: $9e
	ld   h, a                                        ; $73d8: $67
	adc  l                                           ; $73d9: $8d
	adc  h                                           ; $73da: $8c
	ld   l, c                                        ; $73db: $69
	and  c                                           ; $73dc: $a1
	dec  c                                           ; $73dd: $0d
	ld   [$6300], sp                                 ; $73de: $08 $00 $63
	and  c                                           ; $73e1: $a1
	sbc  a                                           ; $73e2: $9f
	dec  c                                           ; $73e3: $0d
	ld   d, b                                        ; $73e4: $50
	sbc  b                                           ; $73e5: $98
	ld   e, d                                        ; $73e6: $5a
	halt                                             ; $73e7: $76
	ld   d, h                                        ; $73e8: $54
	ld   h, d                                        ; $73e9: $62
	ld   h, h                                        ; $73ea: $64
	ld   d, d                                        ; $73eb: $52
	adc  h                                           ; $73ec: $8c
	ld   h, l                                        ; $73ed: $65
	ld   l, l                                        ; $73ee: $6d
	sbc  a                                           ; $73ef: $9f
	dec  c                                           ; $73f0: $0d
	nop                                              ; $73f1: $00
	ld   a, [bc]                                     ; $73f2: $0a
	nop                                              ; $73f3: $00
	rrca                                             ; $73f4: $0f
	ld   bc, $1d00                                   ; $73f5: $01 $00 $1d
	ld   b, b                                        ; $73f8: $40
	ld   de, $1103                                   ; $73f9: $11 $03 $11
	ld   bc, $2801                                   ; $73fc: $01 $01 $28
	nop                                              ; $73ff: $00
	ld   bc, $9e50                                   ; $7400: $01 $50 $9e
	ld   h, a                                        ; $7403: $67
	adc  l                                           ; $7404: $8d
	adc  h                                           ; $7405: $8c
	ld   l, c                                        ; $7406: $69
	and  c                                           ; $7407: $a1
	rst  $38                                         ; $7408: $ff
	rst  $38                                         ; $7409: $ff
	dec  c                                           ; $740a: $0d
	ld   [bc], a                                     ; $740b: $02
	and  l                                           ; $740c: $a5
	ld   l, a                                        ; $740d: $6f
	sub  l                                           ; $740e: $95
	ld   [hl], c                                     ; $740f: $71
	halt                                             ; $7410: $76
	inc  bc                                          ; $7411: $03
	ld   l, e                                        ; $7412: $6b
	ld   e, d                                        ; $7413: $5a
	ld   a, l                                        ; $7414: $7d
	ld   a, b                                        ; $7415: $78
	ld   l, c                                        ; $7416: $69
	ld   a, b                                        ; $7417: $78
	ld   d, d                                        ; $7418: $52
	ld   a, h                                        ; $7419: $7c
	ld   [hl], l                                     ; $741a: $75
	dec  c                                           ; $741b: $0d
	inc  bc                                          ; $741c: $03
	ld   a, [$037c]                                  ; $741d: $fa $7c $03
	ld   c, a                                        ; $7420: $4f
	ld   a, c                                        ; $7421: $79
	inc  b                                           ; $7422: $04
	jr   z, jr_047_7477                              ; $7423: $28 $52

	ld   [hl], h                                     ; $7425: $74
	ld   e, b                                        ; $7426: $58
	ld   d, d                                        ; $7427: $52
	ld   [hl], h                                     ; $7428: $74
	ld   [bc], a                                     ; $7429: $02
	inc  [hl]                                        ; $742a: $34
	ld   h, e                                        ; $742b: $63
	ld   d, d                                        ; $742c: $52
	sbc  a                                           ; $742d: $9f
	dec  c                                           ; $742e: $0d
	nop                                              ; $742f: $00
	ld   a, [bc]                                     ; $7430: $0a
	rrca                                             ; $7431: $0f
	nop                                              ; $7432: $00
	ld   bc, $7d01                                   ; $7433: $01 $01 $7d
	ld   d, d                                        ; $7436: $52
	sbc  [hl]                                        ; $7437: $9e
	sbc  l                                           ; $7438: $9d
	ld   e, c                                        ; $7439: $59
	sbc  b                                           ; $743a: $98
	adc  h                                           ; $743b: $8c
	ld   h, l                                        ; $743c: $65
	ld   l, l                                        ; $743d: $6d
	sbc  a                                           ; $743e: $9f
	dec  c                                           ; $743f: $0d
	nop                                              ; $7440: $00
	ld   a, [bc]                                     ; $7441: $0a
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	ld   [bc], a                                     ; $7444: $02
	nop                                              ; $7445: $00
	ld   bc, $2c07                                   ; $7446: $01 $07 $2c
	ld   bc, $2002                                   ; $7449: $01 $02 $20
	ld   [bc], a                                     ; $744c: $02
	nop                                              ; $744d: $00
	inc  bc                                          ; $744e: $03
	ld   d, [hl]                                     ; $744f: $56
	dec  h                                           ; $7450: $25
	inc  e                                           ; $7451: $1c

Jump_047_7452:
	nop                                              ; $7452: $00
	inc  e                                           ; $7453: $1c
	dec  c                                           ; $7454: $0d
	nop                                              ; $7455: $00
	nop                                              ; $7456: $00
	ld   [bc], a                                     ; $7457: $02
	dec  b                                           ; $7458: $05
	ld   b, b                                        ; $7459: $40
	ld   d, [hl]                                     ; $745a: $56
	ld   [bc], a                                     ; $745b: $02
	nop                                              ; $745c: $00
	ld   bc, $2b07                                   ; $745d: $01 $07 $2b
	ld   bc, $2801                                   ; $7460: $01 $01 $28
	ld   bc, $2a07                                   ; $7463: $01 $07 $2a
	nop                                              ; $7466: $00
	ld   bc, $9750                                   ; $7467: $01 $50 $97
	sbc  [hl]                                        ; $746a: $9e
	ld   [$5d00], sp                                 ; $746b: $08 $00 $5d
	and  c                                           ; $746e: $a1
	dec  c                                           ; $746f: $0d
	ld   e, b                                        ; $7470: $58

Jump_047_7471:
	inc  b                                           ; $7471: $04
	ld   a, e                                        ; $7472: $7b
	sbc  d                                           ; $7473: $9a
	ld   h, e                                        ; $7474: $63
	adc  h                                           ; $7475: $8c
	sbc  a                                           ; $7476: $9f

jr_047_7477:
	dec  c                                           ; $7477: $0d
	nop                                              ; $7478: $00
	ld   a, [bc]                                     ; $7479: $0a
	rrca                                             ; $747a: $0f
	nop                                              ; $747b: $00
	ld   bc, $0401                                   ; $747c: $01 $01 $04
	pop  hl                                          ; $747f: $e1
	inc  b                                           ; $7480: $04
	rst  $38                                         ; $7481: $ff
	ld   h, e                                        ; $7482: $63
	and  c                                           ; $7483: $a1
	sbc  [hl]                                        ; $7484: $9e
	ld   e, b                                        ; $7485: $58
	inc  b                                           ; $7486: $04
	ld   a, e                                        ; $7487: $7b
	sbc  d                                           ; $7488: $9a
	ld   h, e                                        ; $7489: $63
	adc  h                                           ; $748a: $8c
	ld   [hl], l                                     ; $748b: $75
	ld   h, a                                        ; $748c: $67
	sbc  a                                           ; $748d: $9f
	dec  c                                           ; $748e: $0d
	nop                                              ; $748f: $00
	ld   a, [bc]                                     ; $7490: $0a
	ld   bc, $0301                                   ; $7491: $01 $01 $03
	ld   a, b                                        ; $7494: $78
	ld   a, c                                        ; $7495: $79
	and  b                                           ; $7496: $a0
	ld   [bc], a                                     ; $7497: $02
	jp   nz, Jump_047_5461                           ; $7498: $c2 $61 $54

	ld   e, c                                        ; $749b: $59
	ld   a, b                                        ; $749c: $78
	rst  $38                                         ; $749d: $ff
	rst  $38                                         ; $749e: $ff
	ld   bc, $0d04                                   ; $749f: $01 $04 $0d
	nop                                              ; $74a2: $00
	ld   a, [bc]                                     ; $74a3: $0a
	jr   jr_047_74a9                                 ; $74a4: $18 $03

	ld   bc, $5d63                                   ; $74a6: $01 $63 $5d

jr_047_74a9:
	sub  a                                           ; $74a9: $97
	ld   a, h                                        ; $74aa: $7c
	ld   h, c                                        ; $74ab: $61
	halt                                             ; $74ac: $76
	and  b                                           ; $74ad: $a0
	ld   [bc], a                                     ; $74ae: $02
	jp   nz, $005d                                   ; $74af: $c2 $5d $00

	nop                                              ; $74b2: $00
	ld   h, a                                        ; $74b3: $67
	adc  l                                           ; $74b4: $8d
	sbc  d                                           ; $74b5: $9a
	ld   a, h                                        ; $74b6: $7c
	ld   h, c                                        ; $74b7: $61
	halt                                             ; $74b8: $76
	and  b                                           ; $74b9: $a0
	ld   [bc], a                                     ; $74ba: $02
	jp   nz, $005d                                   ; $74bb: $c2 $5d $00

	ld   bc, $1e04                                   ; $74be: $01 $04 $1e
	ld   a, h                                        ; $74c1: $7c
	inc  bc                                          ; $74c2: $03
	add  d                                           ; $74c3: $82
	ld   a, h                                        ; $74c4: $7c
	ld   [bc], a                                     ; $74c5: $02
	jp   $02a0                                       ; $74c6: $c3 $a0 $02


	jp   nz, $005d                                   ; $74c9: $c2 $5d $00

	ld   [bc], a                                     ; $74cc: $02
	rlca                                             ; $74cd: $07
	sub  l                                           ; $74ce: $95
	nop                                              ; $74cf: $00
	ld   [bc], a                                     ; $74d0: $02
	ld   [bc], a                                     ; $74d1: $02
	ld   bc, $2000                                   ; $74d2: $01 $00 $20
	nop                                              ; $74d5: $00
	rlca                                             ; $74d6: $07
	db   $10                                         ; $74d7: $10
	ld   bc, $0202                                   ; $74d8: $01 $02 $02
	ld   bc, $2001                                   ; $74db: $01 $01 $20
	nop                                              ; $74de: $00
	rlca                                             ; $74df: $07
	adc  h                                           ; $74e0: $8c
	ld   bc, $0202                                   ; $74e1: $01 $02 $02
	ld   bc, $2002                                   ; $74e4: $01 $02 $20
	nop                                              ; $74e7: $00
	rrca                                             ; $74e8: $0f
	nop                                              ; $74e9: $00
	ld   bc, $5001                                   ; $74ea: $01 $01 $50
	ld   a, h                                        ; $74ed: $7c
	rst  $38                                         ; $74ee: $ff
	ld   h, e                                        ; $74ef: $63
	ld   e, l                                        ; $74f0: $5d
	sub  a                                           ; $74f1: $97
	ld   h, e                                        ; $74f2: $63
	and  c                                           ; $74f3: $a1
	ld   a, h                                        ; $74f4: $7c
	ld   [bc], a                                     ; $74f5: $02
	jp   Jump_047_7279                               ; $74f6: $c3 $79 $72


	ld   d, d                                        ; $74f9: $52
	ld   [hl], h                                     ; $74fa: $74
	dec  c                                           ; $74fb: $0d
	ld   e, b                                        ; $74fc: $58
	ld   [bc], a                                     ; $74fd: $02
	jp   nz, Jump_047_655b                           ; $74fe: $c2 $5b $65

	ld   l, l                                        ; $7501: $6d
	ld   d, d                                        ; $7502: $52
	and  c                                           ; $7503: $a1
	ld   [hl], l                                     ; $7504: $75
	ld   h, a                                        ; $7505: $67
	ld   e, a                                        ; $7506: $5f
	ld   [hl], a                                     ; $7507: $77
	rst  $38                                         ; $7508: $ff
	rst  $38                                         ; $7509: $ff
	sbc  a                                           ; $750a: $9f
	dec  c                                           ; $750b: $0d
	nop                                              ; $750c: $00
	ld   a, [bc]                                     ; $750d: $0a
	inc  e                                           ; $750e: $1c
	dec  c                                           ; $750f: $0d
	nop                                              ; $7510: $00
	nop                                              ; $7511: $00
	ld   bc, $5d63                                   ; $7512: $01 $63 $5d
	sub  a                                           ; $7515: $97
	ld   h, e                                        ; $7516: $63
	and  c                                           ; $7517: $a1
	ld   a, b                                        ; $7518: $78
	sub  a                                           ; $7519: $97
	sbc  [hl]                                        ; $751a: $9e
	dec  c                                           ; $751b: $0d
	call c, $edfb                                    ; $751c: $dc $fb $ed
	sub  d                                           ; $751f: $92
	rst  ToBoot                                         ; $7520: $c7
	db   $eb                                         ; $7521: $eb
	cp   d                                           ; $7522: $ba
	ld   a, c                                        ; $7523: $79
	dec  c                                           ; $7524: $0d
	sub  [hl]                                        ; $7525: $96
	ld   e, l                                        ; $7526: $5d
	ld   d, d                                        ; $7527: $52
	sbc  c                                           ; $7528: $99
	sbc  l                                           ; $7529: $9d
	sub  [hl]                                        ; $752a: $96
	sbc  a                                           ; $752b: $9f
	dec  c                                           ; $752c: $0d
	nop                                              ; $752d: $00
	ld   a, [bc]                                     ; $752e: $0a
	ld   a, [hl+]                                    ; $752f: $2a
	ld   bc, $0d1c                                   ; $7530: $01 $1c $0d
	ld   bc, $0101                                   ; $7533: $01 $01 $01
	ld   l, e                                        ; $7536: $6b
	sbc  d                                           ; $7537: $9a
	ld   h, [hl]                                     ; $7538: $66
	sub  c                                           ; $7539: $91
	sbc  [hl]                                        ; $753a: $9e
	ld   d, b                                        ; $753b: $50
	ld   l, l                                        ; $753c: $6d
	ld   h, l                                        ; $753d: $65
	ld   a, l                                        ; $753e: $7d
	dec  c                                           ; $753f: $0d
	inc  bc                                          ; $7540: $03
	dec  c                                           ; $7541: $0d
	ld   [bc], a                                     ; $7542: $02
	jp   Jump_047_505a                               ; $7543: $c3 $5a $50


	sbc  c                                           ; $7546: $99
	ld   e, c                                        ; $7547: $59
	sub  a                                           ; $7548: $97
	sbc  [hl]                                        ; $7549: $9e
	dec  c                                           ; $754a: $0d
	ld   h, c                                        ; $754b: $61
	sbc  d                                           ; $754c: $9a
	ld   [hl], l                                     ; $754d: $75
	inc  bc                                          ; $754e: $03
	add  e                                           ; $754f: $83
	dec  b                                           ; $7550: $05
	dec  c                                           ; $7551: $0d
	ld   h, a                                        ; $7552: $67
	sbc  c                                           ; $7553: $99
	sbc  l                                           ; $7554: $9d
	ld   a, e                                        ; $7555: $7b
	sbc  a                                           ; $7556: $9f
	dec  c                                           ; $7557: $0d
	nop                                              ; $7558: $00
	ld   a, [bc]                                     ; $7559: $0a
	dec  c                                           ; $755a: $0d
	nop                                              ; $755b: $00
	nop                                              ; $755c: $00
	rrca                                             ; $755d: $0f
	nop                                              ; $755e: $00
	ld   bc, $1e09                                   ; $755f: $01 $09 $1e
	nop                                              ; $7562: $00
	rrca                                             ; $7563: $0f
	nop                                              ; $7564: $00
	ld   bc, $5001                                   ; $7565: $01 $01 $50
	ld   a, h                                        ; $7568: $7c
	rst  $38                                         ; $7569: $ff
	ld   h, a                                        ; $756a: $67
	adc  l                                           ; $756b: $8d
	sbc  d                                           ; $756c: $9a
	ld   h, e                                        ; $756d: $63
	and  c                                           ; $756e: $a1
	ld   a, h                                        ; $756f: $7c
	ld   [bc], a                                     ; $7570: $02
	jp   Jump_047_7279                               ; $7571: $c3 $79 $72


	ld   d, d                                        ; $7574: $52
	ld   [hl], h                                     ; $7575: $74
	dec  c                                           ; $7576: $0d
	ld   e, b                                        ; $7577: $58
	ld   [bc], a                                     ; $7578: $02
	jp   nz, Jump_047_655b                           ; $7579: $c2 $5b $65

	ld   l, l                                        ; $757c: $6d
	ld   d, d                                        ; $757d: $52
	and  c                                           ; $757e: $a1
	ld   [hl], l                                     ; $757f: $75
	ld   h, a                                        ; $7580: $67
	ld   e, a                                        ; $7581: $5f
	ld   [hl], a                                     ; $7582: $77
	rst  $38                                         ; $7583: $ff
	rst  $38                                         ; $7584: $ff
	sbc  a                                           ; $7585: $9f
	dec  c                                           ; $7586: $0d
	nop                                              ; $7587: $00
	ld   a, [bc]                                     ; $7588: $0a
	inc  e                                           ; $7589: $1c
	dec  c                                           ; $758a: $0d
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	ld   bc, $8d67                                   ; $758d: $01 $67 $8d
	sbc  d                                           ; $7590: $9a
	ld   h, e                                        ; $7591: $63
	and  c                                           ; $7592: $a1
	ld   a, b                                        ; $7593: $78
	sub  a                                           ; $7594: $97
	sbc  [hl]                                        ; $7595: $9e
	dec  c                                           ; $7596: $0d
	or   [hl]                                        ; $7597: $b6
	rst  $28                                         ; $7598: $ef
	push af                                          ; $7599: $f5
	sub  d                                           ; $759a: $92
	inc  b                                           ; $759b: $04
	dec  bc                                          ; $759c: $0b
	inc  b                                           ; $759d: $04
	rra                                              ; $759e: $1f
	ld   a, c                                        ; $759f: $79
	dec  c                                           ; $75a0: $0d
	sub  [hl]                                        ; $75a1: $96
	ld   e, l                                        ; $75a2: $5d
	ld   d, d                                        ; $75a3: $52
	sbc  c                                           ; $75a4: $99
	sbc  l                                           ; $75a5: $9d
	sub  [hl]                                        ; $75a6: $96
	sbc  a                                           ; $75a7: $9f
	dec  c                                           ; $75a8: $0d
	nop                                              ; $75a9: $00
	ld   a, [bc]                                     ; $75aa: $0a
	ld   a, [hl+]                                    ; $75ab: $2a
	ld   [bc], a                                     ; $75ac: $02
	inc  e                                           ; $75ad: $1c
	dec  c                                           ; $75ae: $0d
	ld   bc, $0101                                   ; $75af: $01 $01 $01
	ld   l, e                                        ; $75b2: $6b
	sbc  d                                           ; $75b3: $9a
	ld   h, [hl]                                     ; $75b4: $66
	sub  c                                           ; $75b5: $91
	sbc  [hl]                                        ; $75b6: $9e
	ld   d, b                                        ; $75b7: $50
	ld   l, l                                        ; $75b8: $6d
	ld   h, l                                        ; $75b9: $65
	ld   a, l                                        ; $75ba: $7d
	dec  c                                           ; $75bb: $0d
	inc  bc                                          ; $75bc: $03
	dec  c                                           ; $75bd: $0d
	ld   [bc], a                                     ; $75be: $02
	jp   Jump_047_505a                               ; $75bf: $c3 $5a $50


	sbc  c                                           ; $75c2: $99
	ld   e, c                                        ; $75c3: $59
	sub  a                                           ; $75c4: $97
	sbc  [hl]                                        ; $75c5: $9e
	dec  c                                           ; $75c6: $0d
	ld   h, c                                        ; $75c7: $61
	sbc  d                                           ; $75c8: $9a
	ld   [hl], l                                     ; $75c9: $75
	inc  bc                                          ; $75ca: $03
	add  e                                           ; $75cb: $83
	dec  b                                           ; $75cc: $05
	dec  c                                           ; $75cd: $0d
	ld   h, a                                        ; $75ce: $67
	sbc  c                                           ; $75cf: $99
	sbc  l                                           ; $75d0: $9d
	ld   a, e                                        ; $75d1: $7b
	sbc  a                                           ; $75d2: $9f
	dec  c                                           ; $75d3: $0d
	nop                                              ; $75d4: $00
	ld   a, [bc]                                     ; $75d5: $0a
	dec  c                                           ; $75d6: $0d
	nop                                              ; $75d7: $00
	nop                                              ; $75d8: $00
	rrca                                             ; $75d9: $0f
	nop                                              ; $75da: $00
	ld   bc, $1e09                                   ; $75db: $01 $09 $1e
	nop                                              ; $75de: $00
	jr   jr_047_75e4                                 ; $75df: $18 $03

	ld   bc, $ecdf                                   ; $75e1: $01 $df $ec

jr_047_75e4:
	and  e                                           ; $75e4: $a3
	ld   a, h                                        ; $75e5: $7c
	ld   h, c                                        ; $75e6: $61
	halt                                             ; $75e7: $76
	and  b                                           ; $75e8: $a0
	ld   [bc], a                                     ; $75e9: $02
	jp   nz, $005d                                   ; $75ea: $c2 $5d $00

	nop                                              ; $75ed: $00
	xor  h                                           ; $75ee: $ac
	push af                                          ; $75ef: $f5
	bit  7, h                                        ; $75f0: $cb $7c
	ld   h, c                                        ; $75f2: $61
	halt                                             ; $75f3: $76
	and  b                                           ; $75f4: $a0
	ld   [bc], a                                     ; $75f5: $02
	jp   nz, $005d                                   ; $75f6: $c2 $5d $00

	ld   bc, $1e04                                   ; $75f9: $01 $04 $1e
	ld   a, h                                        ; $75fc: $7c
	inc  bc                                          ; $75fd: $03
	add  d                                           ; $75fe: $82
	ld   a, h                                        ; $75ff: $7c
	ld   [bc], a                                     ; $7600: $02
	jp   $02a0                                       ; $7601: $c3 $a0 $02


	jp   nz, $005d                                   ; $7604: $c2 $5d $00

	ld   [bc], a                                     ; $7607: $02
	rlca                                             ; $7608: $07
	ret  nc                                          ; $7609: $d0

	ld   bc, $0202                                   ; $760a: $01 $02 $02
	ld   bc, $2000                                   ; $760d: $01 $00 $20
	nop                                              ; $7610: $00
	rlca                                             ; $7611: $07
	ld   c, h                                        ; $7612: $4c
	ld   [bc], a                                     ; $7613: $02
	ld   [bc], a                                     ; $7614: $02
	ld   [bc], a                                     ; $7615: $02
	ld   bc, $2001                                   ; $7616: $01 $01 $20
	nop                                              ; $7619: $00
	rlca                                             ; $761a: $07
	ret                                              ; $761b: $c9


	ld   [bc], a                                     ; $761c: $02
	ld   [bc], a                                     ; $761d: $02
	ld   [bc], a                                     ; $761e: $02
	ld   bc, $2002                                   ; $761f: $01 $02 $20
	nop                                              ; $7622: $00
	rrca                                             ; $7623: $0f
	nop                                              ; $7624: $00
	ld   bc, $5001                                   ; $7625: $01 $01 $50
	ld   a, h                                        ; $7628: $7c
	rst  $38                                         ; $7629: $ff
	rst  JumpTable                                         ; $762a: $df
	db   $ec                                         ; $762b: $ec
	and  e                                           ; $762c: $a3
	ld   h, e                                        ; $762d: $63
	and  c                                           ; $762e: $a1
	ld   a, h                                        ; $762f: $7c
	ld   [bc], a                                     ; $7630: $02
	jp   Jump_047_7279                               ; $7631: $c3 $79 $72


	ld   d, d                                        ; $7634: $52
	ld   [hl], h                                     ; $7635: $74
	dec  c                                           ; $7636: $0d
	ld   e, b                                        ; $7637: $58
	ld   [bc], a                                     ; $7638: $02
	jp   nz, Jump_047_655b                           ; $7639: $c2 $5b $65

	ld   l, l                                        ; $763c: $6d
	ld   d, d                                        ; $763d: $52
	and  c                                           ; $763e: $a1
	ld   [hl], l                                     ; $763f: $75
	ld   h, a                                        ; $7640: $67
	ld   e, a                                        ; $7641: $5f
	ld   [hl], a                                     ; $7642: $77
	rst  $38                                         ; $7643: $ff
	rst  $38                                         ; $7644: $ff
	sbc  a                                           ; $7645: $9f
	dec  c                                           ; $7646: $0d
	nop                                              ; $7647: $00
	ld   a, [bc]                                     ; $7648: $0a
	inc  e                                           ; $7649: $1c
	dec  c                                           ; $764a: $0d
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	ld   bc, $ecdf                                   ; $764d: $01 $df $ec
	and  e                                           ; $7650: $a3
	ld   h, e                                        ; $7651: $63
	and  c                                           ; $7652: $a1
	ld   a, b                                        ; $7653: $78
	sub  a                                           ; $7654: $97
	sbc  [hl]                                        ; $7655: $9e
	dec  c                                           ; $7656: $0d
	rst  ToBoot                                         ; $7657: $c7
	db   $eb                                         ; $7658: $eb
	cp   d                                           ; $7659: $ba
	sub  d                                           ; $765a: $92
	inc  bc                                          ; $765b: $03
	ld   d, l                                        ; $765c: $55
	ld   [bc], a                                     ; $765d: $02
	ld   e, c                                        ; $765e: $59
	ld   a, c                                        ; $765f: $79
	dec  c                                           ; $7660: $0d
	sub  [hl]                                        ; $7661: $96
	ld   e, l                                        ; $7662: $5d
	ld   d, d                                        ; $7663: $52
	sbc  c                                           ; $7664: $99
	sbc  l                                           ; $7665: $9d
	sub  [hl]                                        ; $7666: $96
	sbc  a                                           ; $7667: $9f
	dec  c                                           ; $7668: $0d
	nop                                              ; $7669: $00
	ld   a, [bc]                                     ; $766a: $0a
	ld   a, [hl+]                                    ; $766b: $2a
	inc  bc                                          ; $766c: $03
	inc  e                                           ; $766d: $1c
	dec  c                                           ; $766e: $0d
	ld   bc, $0101                                   ; $766f: $01 $01 $01
	ld   l, e                                        ; $7672: $6b
	sbc  d                                           ; $7673: $9a
	ld   h, [hl]                                     ; $7674: $66
	sub  c                                           ; $7675: $91
	sbc  [hl]                                        ; $7676: $9e
	ld   d, b                                        ; $7677: $50
	ld   l, l                                        ; $7678: $6d
	ld   h, l                                        ; $7679: $65
	ld   a, l                                        ; $767a: $7d
	dec  c                                           ; $767b: $0d
	inc  bc                                          ; $767c: $03
	dec  c                                           ; $767d: $0d
	ld   [bc], a                                     ; $767e: $02
	jp   Jump_047_505a                               ; $767f: $c3 $5a $50


	sbc  c                                           ; $7682: $99
	ld   e, c                                        ; $7683: $59
	sub  a                                           ; $7684: $97
	sbc  [hl]                                        ; $7685: $9e
	dec  c                                           ; $7686: $0d
	ld   h, c                                        ; $7687: $61
	sbc  d                                           ; $7688: $9a
	ld   [hl], l                                     ; $7689: $75
	inc  bc                                          ; $768a: $03
	add  e                                           ; $768b: $83
	dec  b                                           ; $768c: $05
	dec  c                                           ; $768d: $0d
	ld   h, a                                        ; $768e: $67
	sbc  c                                           ; $768f: $99
	sbc  l                                           ; $7690: $9d
	ld   a, e                                        ; $7691: $7b
	sbc  a                                           ; $7692: $9f
	dec  c                                           ; $7693: $0d
	nop                                              ; $7694: $00
	ld   a, [bc]                                     ; $7695: $0a
	dec  c                                           ; $7696: $0d
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	rrca                                             ; $7699: $0f
	nop                                              ; $769a: $00
	ld   bc, $1e09                                   ; $769b: $01 $09 $1e
	nop                                              ; $769e: $00
	rrca                                             ; $769f: $0f
	nop                                              ; $76a0: $00
	ld   bc, $5001                                   ; $76a1: $01 $01 $50
	ld   a, h                                        ; $76a4: $7c
	rst  $38                                         ; $76a5: $ff
	xor  h                                           ; $76a6: $ac
	push af                                          ; $76a7: $f5
	bit  4, e                                        ; $76a8: $cb $63
	and  c                                           ; $76aa: $a1
	ld   a, h                                        ; $76ab: $7c
	ld   [bc], a                                     ; $76ac: $02
	jp   Jump_047_7279                               ; $76ad: $c3 $79 $72


	ld   d, d                                        ; $76b0: $52
	ld   [hl], h                                     ; $76b1: $74
	dec  c                                           ; $76b2: $0d
	ld   e, b                                        ; $76b3: $58
	ld   [bc], a                                     ; $76b4: $02
	jp   nz, Jump_047_655b                           ; $76b5: $c2 $5b $65

	ld   l, l                                        ; $76b8: $6d
	ld   d, d                                        ; $76b9: $52
	and  c                                           ; $76ba: $a1
	ld   [hl], l                                     ; $76bb: $75
	ld   h, a                                        ; $76bc: $67
	ld   e, a                                        ; $76bd: $5f
	ld   [hl], a                                     ; $76be: $77
	rst  $38                                         ; $76bf: $ff
	rst  $38                                         ; $76c0: $ff
	sbc  a                                           ; $76c1: $9f
	dec  c                                           ; $76c2: $0d
	nop                                              ; $76c3: $00
	ld   a, [bc]                                     ; $76c4: $0a
	inc  e                                           ; $76c5: $1c
	dec  c                                           ; $76c6: $0d
	nop                                              ; $76c7: $00
	nop                                              ; $76c8: $00
	ld   bc, $f5ac                                   ; $76c9: $01 $ac $f5
	bit  4, e                                        ; $76cc: $cb $63
	and  c                                           ; $76ce: $a1
	ld   a, b                                        ; $76cf: $78
	sub  a                                           ; $76d0: $97
	sbc  [hl]                                        ; $76d1: $9e
	dec  c                                           ; $76d2: $0d
	inc  bc                                          ; $76d3: $03
	ld   l, d                                        ; $76d4: $6a
	inc  bc                                          ; $76d5: $03
	db   $db                                         ; $76d6: $db
	sub  d                                           ; $76d7: $92
	inc  b                                           ; $76d8: $04
	dec  bc                                          ; $76d9: $0b
	inc  b                                           ; $76da: $04
	rra                                              ; $76db: $1f
	ld   a, c                                        ; $76dc: $79
	dec  c                                           ; $76dd: $0d
	sub  [hl]                                        ; $76de: $96
	ld   e, l                                        ; $76df: $5d
	ld   d, d                                        ; $76e0: $52
	sbc  c                                           ; $76e1: $99
	sbc  l                                           ; $76e2: $9d
	sub  [hl]                                        ; $76e3: $96
	sbc  a                                           ; $76e4: $9f
	dec  c                                           ; $76e5: $0d
	nop                                              ; $76e6: $00
	ld   a, [bc]                                     ; $76e7: $0a
	ld   a, [hl+]                                    ; $76e8: $2a
	ld   b, $1c                                      ; $76e9: $06 $1c
	dec  c                                           ; $76eb: $0d
	ld   bc, $0101                                   ; $76ec: $01 $01 $01
	ld   l, e                                        ; $76ef: $6b
	sbc  d                                           ; $76f0: $9a
	ld   h, [hl]                                     ; $76f1: $66
	sub  c                                           ; $76f2: $91
	sbc  [hl]                                        ; $76f3: $9e
	ld   d, b                                        ; $76f4: $50
	ld   l, l                                        ; $76f5: $6d
	ld   h, l                                        ; $76f6: $65
	ld   a, l                                        ; $76f7: $7d
	dec  c                                           ; $76f8: $0d
	inc  bc                                          ; $76f9: $03
	dec  c                                           ; $76fa: $0d
	ld   [bc], a                                     ; $76fb: $02
	jp   Jump_047_505a                               ; $76fc: $c3 $5a $50


	sbc  c                                           ; $76ff: $99
	ld   e, c                                        ; $7700: $59
	sub  a                                           ; $7701: $97
	sbc  [hl]                                        ; $7702: $9e
	dec  c                                           ; $7703: $0d
	ld   h, c                                        ; $7704: $61
	sbc  d                                           ; $7705: $9a
	ld   [hl], l                                     ; $7706: $75
	inc  bc                                          ; $7707: $03
	add  e                                           ; $7708: $83
	dec  b                                           ; $7709: $05
	dec  c                                           ; $770a: $0d
	ld   h, a                                        ; $770b: $67
	sbc  c                                           ; $770c: $99
	sbc  l                                           ; $770d: $9d
	ld   a, e                                        ; $770e: $7b
	sbc  a                                           ; $770f: $9f
	dec  c                                           ; $7710: $0d
	nop                                              ; $7711: $00
	ld   a, [bc]                                     ; $7712: $0a
	dec  c                                           ; $7713: $0d
	nop                                              ; $7714: $00
	nop                                              ; $7715: $00
	rrca                                             ; $7716: $0f
	nop                                              ; $7717: $00
	ld   bc, $1e09                                   ; $7718: $01 $09 $1e
	nop                                              ; $771b: $00
	jr   jr_047_7721                                 ; $771c: $18 $03

	ld   bc, $cf02                                   ; $771e: $01 $02 $cf

jr_047_7721:
	dec  b                                           ; $7721: $05
	ld   a, [de]                                     ; $7722: $1a
	ld   a, h                                        ; $7723: $7c
	ld   h, c                                        ; $7724: $61
	halt                                             ; $7725: $76
	and  b                                           ; $7726: $a0
	ld   [bc], a                                     ; $7727: $02
	jp   nz, $005d                                   ; $7728: $c2 $5d $00

	nop                                              ; $772b: $00
	and  e                                           ; $772c: $a3
	and  l                                           ; $772d: $a5
	db   $ec                                         ; $772e: $ec
	cp   d                                           ; $772f: $ba
	ld   a, h                                        ; $7730: $7c
	ld   h, c                                        ; $7731: $61
	halt                                             ; $7732: $76
	and  b                                           ; $7733: $a0
	ld   [bc], a                                     ; $7734: $02
	jp   nz, $005d                                   ; $7735: $c2 $5d $00

	ld   bc, $1e04                                   ; $7738: $01 $04 $1e
	ld   a, h                                        ; $773b: $7c
	inc  bc                                          ; $773c: $03
	add  d                                           ; $773d: $82
	ld   a, h                                        ; $773e: $7c
	ld   [bc], a                                     ; $773f: $02
	jp   $02a0                                       ; $7740: $c3 $a0 $02


	jp   nz, $005d                                   ; $7743: $c2 $5d $00

	ld   [bc], a                                     ; $7746: $02
	rlca                                             ; $7747: $07
	rrca                                             ; $7748: $0f
	inc  bc                                          ; $7749: $03
	ld   [bc], a                                     ; $774a: $02
	ld   [bc], a                                     ; $774b: $02
	ld   bc, $2000                                   ; $774c: $01 $00 $20
	nop                                              ; $774f: $00
	rlca                                             ; $7750: $07
	sub  d                                           ; $7751: $92
	inc  bc                                          ; $7752: $03
	ld   [bc], a                                     ; $7753: $02
	ld   [bc], a                                     ; $7754: $02
	ld   bc, $2001                                   ; $7755: $01 $01 $20
	nop                                              ; $7758: $00
	rlca                                             ; $7759: $07
	ld   d, c                                        ; $775a: $51
	nop                                              ; $775b: $00
	ld   [bc], a                                     ; $775c: $02
	ld   [bc], a                                     ; $775d: $02
	ld   bc, $2002                                   ; $775e: $01 $02 $20
	nop                                              ; $7761: $00
	rrca                                             ; $7762: $0f
	nop                                              ; $7763: $00
	ld   bc, $5001                                   ; $7764: $01 $01 $50
	ld   a, h                                        ; $7767: $7c
	rst  $38                                         ; $7768: $ff
	ld   [bc], a                                     ; $7769: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $776a: $cf
	dec  b                                           ; $776b: $05
	ld   a, [de]                                     ; $776c: $1a
	ld   h, e                                        ; $776d: $63
	and  c                                           ; $776e: $a1
	ld   a, h                                        ; $776f: $7c
	ld   [bc], a                                     ; $7770: $02
	jp   Jump_047_7279                               ; $7771: $c3 $79 $72


	ld   d, d                                        ; $7774: $52
	ld   [hl], h                                     ; $7775: $74
	dec  c                                           ; $7776: $0d
	ld   e, b                                        ; $7777: $58
	ld   [bc], a                                     ; $7778: $02
	jp   nz, Jump_047_655b                           ; $7779: $c2 $5b $65

	ld   l, l                                        ; $777c: $6d
	ld   d, d                                        ; $777d: $52
	and  c                                           ; $777e: $a1
	ld   [hl], l                                     ; $777f: $75
	ld   h, a                                        ; $7780: $67
	ld   e, a                                        ; $7781: $5f
	ld   [hl], a                                     ; $7782: $77
	rst  $38                                         ; $7783: $ff
	rst  $38                                         ; $7784: $ff
	sbc  a                                           ; $7785: $9f
	dec  c                                           ; $7786: $0d
	nop                                              ; $7787: $00
	ld   a, [bc]                                     ; $7788: $0a
	inc  e                                           ; $7789: $1c
	dec  c                                           ; $778a: $0d
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	ld   bc, $cf02                                   ; $778d: $01 $02 $cf
	dec  b                                           ; $7790: $05
	ld   a, [de]                                     ; $7791: $1a
	ld   a, b                                        ; $7792: $78
	sub  a                                           ; $7793: $97
	sbc  [hl]                                        ; $7794: $9e
	dec  c                                           ; $7795: $0d
	inc  bc                                          ; $7796: $03
	adc  $02                                         ; $7797: $ce $02
	inc  [hl]                                        ; $7799: $34
	ld   [bc], a                                     ; $779a: $02
	ld   [hl], l                                     ; $779b: $75
	inc  b                                           ; $779c: $04
	dec  a                                           ; $779d: $3d
	ld   [bc], a                                     ; $779e: $02
	ld   e, c                                        ; $779f: $59
	sub  d                                           ; $77a0: $92
	inc  bc                                          ; $77a1: $03
	ld   d, l                                        ; $77a2: $55
	ld   [bc], a                                     ; $77a3: $02
	ld   e, c                                        ; $77a4: $59
	ld   a, c                                        ; $77a5: $79
	dec  c                                           ; $77a6: $0d
	sub  [hl]                                        ; $77a7: $96
	ld   e, l                                        ; $77a8: $5d
	ld   d, d                                        ; $77a9: $52
	sbc  c                                           ; $77aa: $99
	sbc  l                                           ; $77ab: $9d
	sub  [hl]                                        ; $77ac: $96
	sbc  a                                           ; $77ad: $9f
	dec  c                                           ; $77ae: $0d
	nop                                              ; $77af: $00
	ld   a, [bc]                                     ; $77b0: $0a
	ld   a, [hl+]                                    ; $77b1: $2a
	dec  b                                           ; $77b2: $05
	inc  e                                           ; $77b3: $1c
	dec  c                                           ; $77b4: $0d
	ld   bc, $0101                                   ; $77b5: $01 $01 $01
	ld   l, e                                        ; $77b8: $6b
	sbc  d                                           ; $77b9: $9a
	ld   h, [hl]                                     ; $77ba: $66
	sub  c                                           ; $77bb: $91
	sbc  [hl]                                        ; $77bc: $9e
	ld   d, b                                        ; $77bd: $50
	ld   l, l                                        ; $77be: $6d
	ld   h, l                                        ; $77bf: $65
	ld   a, l                                        ; $77c0: $7d
	dec  c                                           ; $77c1: $0d
	inc  bc                                          ; $77c2: $03
	dec  c                                           ; $77c3: $0d
	ld   [bc], a                                     ; $77c4: $02
	jp   Jump_047_505a                               ; $77c5: $c3 $5a $50


	sbc  c                                           ; $77c8: $99
	ld   e, c                                        ; $77c9: $59
	sub  a                                           ; $77ca: $97
	sbc  [hl]                                        ; $77cb: $9e
	dec  c                                           ; $77cc: $0d
	ld   h, c                                        ; $77cd: $61
	sbc  d                                           ; $77ce: $9a
	ld   [hl], l                                     ; $77cf: $75
	inc  bc                                          ; $77d0: $03
	add  e                                           ; $77d1: $83
	dec  b                                           ; $77d2: $05
	dec  c                                           ; $77d3: $0d
	ld   h, a                                        ; $77d4: $67
	sbc  c                                           ; $77d5: $99
	sbc  l                                           ; $77d6: $9d
	ld   a, e                                        ; $77d7: $7b
	sbc  a                                           ; $77d8: $9f
	dec  c                                           ; $77d9: $0d
	nop                                              ; $77da: $00
	ld   a, [bc]                                     ; $77db: $0a
	dec  c                                           ; $77dc: $0d
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	rrca                                             ; $77df: $0f
	nop                                              ; $77e0: $00
	ld   bc, $1e09                                   ; $77e1: $01 $09 $1e
	nop                                              ; $77e4: $00
	rrca                                             ; $77e5: $0f
	nop                                              ; $77e6: $00
	ld   bc, $5001                                   ; $77e7: $01 $01 $50
	ld   a, h                                        ; $77ea: $7c
	rst  $38                                         ; $77eb: $ff
	and  e                                           ; $77ec: $a3
	and  l                                           ; $77ed: $a5
	db   $ec                                         ; $77ee: $ec
	cp   d                                           ; $77ef: $ba
	ld   a, h                                        ; $77f0: $7c
	ld   [bc], a                                     ; $77f1: $02
	jp   Jump_047_7279                               ; $77f2: $c3 $79 $72


	ld   d, d                                        ; $77f5: $52
	ld   [hl], h                                     ; $77f6: $74
	dec  c                                           ; $77f7: $0d
	ld   e, b                                        ; $77f8: $58
	ld   [bc], a                                     ; $77f9: $02
	jp   nz, Jump_047_655b                           ; $77fa: $c2 $5b $65

	ld   l, l                                        ; $77fd: $6d
	ld   d, d                                        ; $77fe: $52
	and  c                                           ; $77ff: $a1
	ld   [hl], l                                     ; $7800: $75
	ld   h, a                                        ; $7801: $67
	ld   e, a                                        ; $7802: $5f
	ld   [hl], a                                     ; $7803: $77
	rst  $38                                         ; $7804: $ff
	rst  $38                                         ; $7805: $ff
	sbc  a                                           ; $7806: $9f
	dec  c                                           ; $7807: $0d
	nop                                              ; $7808: $00
	ld   a, [bc]                                     ; $7809: $0a
	inc  e                                           ; $780a: $1c
	dec  c                                           ; $780b: $0d
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	ld   bc, $a5a3                                   ; $780e: $01 $a3 $a5
	db   $ec                                         ; $7811: $ec
	cp   d                                           ; $7812: $ba
	ld   a, b                                        ; $7813: $78
	sub  a                                           ; $7814: $97
	sbc  [hl]                                        ; $7815: $9e
	rst  ToBoot                                         ; $7816: $c7
	db   $eb                                         ; $7817: $eb
	cp   d                                           ; $7818: $ba
	sub  d                                           ; $7819: $92
	dec  b                                           ; $781a: $05
	inc  de                                          ; $781b: $13
	ld   [bc], a                                     ; $781c: $02
	ld   hl, $0d9e                                   ; $781d: $21 $9e $0d
	ld   d, b                                        ; $7820: $50
	halt                                             ; $7821: $76
	sbc  [hl]                                        ; $7822: $9e
	inc  b                                           ; $7823: $04
	dec  bc                                          ; $7824: $0b
	inc  b                                           ; $7825: $04
	rra                                              ; $7826: $1f
	ld   a, b                                        ; $7827: $78
	and  c                                           ; $7828: $a1
	ld   e, c                                        ; $7829: $59
	ld   a, c                                        ; $782a: $79
	sub  b                                           ; $782b: $90
	dec  c                                           ; $782c: $0d
	sub  [hl]                                        ; $782d: $96
	ld   e, l                                        ; $782e: $5d
	ld   d, d                                        ; $782f: $52
	sbc  c                                           ; $7830: $99
	sbc  l                                           ; $7831: $9d
	sub  [hl]                                        ; $7832: $96
	sbc  a                                           ; $7833: $9f
	dec  c                                           ; $7834: $0d
	nop                                              ; $7835: $00
	ld   a, [bc]                                     ; $7836: $0a
	ld   a, [hl+]                                    ; $7837: $2a
	inc  b                                           ; $7838: $04
	inc  e                                           ; $7839: $1c
	dec  c                                           ; $783a: $0d
	ld   bc, $0101                                   ; $783b: $01 $01 $01
	ld   l, e                                        ; $783e: $6b
	sbc  d                                           ; $783f: $9a
	ld   h, [hl]                                     ; $7840: $66
	sub  c                                           ; $7841: $91
	sbc  [hl]                                        ; $7842: $9e
	ld   d, b                                        ; $7843: $50
	ld   l, l                                        ; $7844: $6d
	ld   h, l                                        ; $7845: $65
	ld   a, l                                        ; $7846: $7d
	dec  c                                           ; $7847: $0d
	inc  bc                                          ; $7848: $03
	dec  c                                           ; $7849: $0d
	ld   [bc], a                                     ; $784a: $02
	jp   Jump_047_505a                               ; $784b: $c3 $5a $50


	sbc  c                                           ; $784e: $99
	ld   e, c                                        ; $784f: $59
	sub  a                                           ; $7850: $97
	sbc  [hl]                                        ; $7851: $9e
	dec  c                                           ; $7852: $0d
	ld   h, c                                        ; $7853: $61
	sbc  d                                           ; $7854: $9a
	ld   [hl], l                                     ; $7855: $75
	inc  bc                                          ; $7856: $03
	add  e                                           ; $7857: $83
	dec  b                                           ; $7858: $05
	dec  c                                           ; $7859: $0d

Jump_047_785a:
	ld   h, a                                        ; $785a: $67

Jump_047_785b:
	sbc  c                                           ; $785b: $99
	sbc  l                                           ; $785c: $9d
	ld   a, e                                        ; $785d: $7b
	sbc  a                                           ; $785e: $9f
	dec  c                                           ; $785f: $0d
	nop                                              ; $7860: $00
	ld   a, [bc]                                     ; $7861: $0a
	dec  c                                           ; $7862: $0d
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	rrca                                             ; $7865: $0f
	nop                                              ; $7866: $00
	ld   bc, $1e09                                   ; $7867: $01 $09 $1e
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	ld   [bc], a                                     ; $786c: $02
	nop                                              ; $786d: $00
	ld   bc, $2c07                                   ; $786e: $01 $07 $2c
	ld   bc, $2002                                   ; $7871: $01 $02 $20
	ld   [bc], a                                     ; $7874: $02
	nop                                              ; $7875: $00
	inc  bc                                          ; $7876: $03
	ld   d, [hl]                                     ; $7877: $56
	dec  h                                           ; $7878: $25
	inc  e                                           ; $7879: $1c
	nop                                              ; $787a: $00
	inc  e                                           ; $787b: $1c
	inc  c                                           ; $787c: $0c
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	ld   [bc], a                                     ; $787f: $02
	dec  b                                           ; $7880: $05
	ld   b, b                                        ; $7881: $40
	ld   d, [hl]                                     ; $7882: $56
	ld   [bc], a                                     ; $7883: $02
	nop                                              ; $7884: $00
	ld   bc, $2b07                                   ; $7885: $01 $07 $2b
	ld   bc, $2801                                   ; $7888: $01 $01 $28
	ld   bc, $2a07                                   ; $788b: $01 $07 $2a
	nop                                              ; $788e: $00
	ld   bc, $9e50                                   ; $788f: $01 $50 $9e
	ld   [$6300], sp                                 ; $7892: $08 $00 $63
	and  c                                           ; $7895: $a1
	dec  c                                           ; $7896: $0d
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
	nop                                              ; $78a1: $00
	ld   a, [bc]                                     ; $78a2: $0a
	rrca                                             ; $78a3: $0f
	nop                                              ; $78a4: $00
	ld   bc, $5801                                   ; $78a5: $01 $01 $58
	inc  b                                           ; $78a8: $04
	ld   a, e                                        ; $78a9: $7b
	sbc  d                                           ; $78aa: $9a
	ld   h, e                                        ; $78ab: $63
	adc  h                                           ; $78ac: $8c
	ld   [hl], l                                     ; $78ad: $75
	ld   h, a                                        ; $78ae: $67
	sbc  [hl]                                        ; $78af: $9e
	dec  c                                           ; $78b0: $0d
	ld   e, c                                        ; $78b1: $59
	ld   h, a                                        ; $78b2: $67
	adc  l                                           ; $78b3: $8d
	ld   h, e                                        ; $78b4: $63
	and  c                                           ; $78b5: $a1
	sbc  a                                           ; $78b6: $9f
	dec  c                                           ; $78b7: $0d
	nop                                              ; $78b8: $00
	ld   a, [bc]                                     ; $78b9: $0a
	ld   bc, $0301                                   ; $78ba: $01 $01 $03
	ld   a, b                                        ; $78bd: $78
	ld   a, c                                        ; $78be: $79
	and  b                                           ; $78bf: $a0
	ld   [bc], a                                     ; $78c0: $02
	jp   nz, Jump_047_5461                           ; $78c1: $c2 $61 $54

	ld   e, c                                        ; $78c4: $59
	ld   a, b                                        ; $78c5: $78
	rst  $38                                         ; $78c6: $ff
	rst  $38                                         ; $78c7: $ff
	ld   bc, $0d04                                   ; $78c8: $01 $04 $0d
	nop                                              ; $78cb: $00
	ld   a, [bc]                                     ; $78cc: $0a
	jr   jr_047_78d2                                 ; $78cd: $18 $03

	ld   bc, $5d63                                   ; $78cf: $01 $63 $5d

jr_047_78d2:
	sub  a                                           ; $78d2: $97
	ld   a, h                                        ; $78d3: $7c
	ld   h, c                                        ; $78d4: $61
	halt                                             ; $78d5: $76
	and  b                                           ; $78d6: $a0
	ld   [bc], a                                     ; $78d7: $02
	jp   nz, $005d                                   ; $78d8: $c2 $5d $00

	nop                                              ; $78db: $00
	ld   h, a                                        ; $78dc: $67
	adc  l                                           ; $78dd: $8d
	sbc  d                                           ; $78de: $9a
	ld   a, h                                        ; $78df: $7c
	ld   h, c                                        ; $78e0: $61
	halt                                             ; $78e1: $76
	and  b                                           ; $78e2: $a0
	ld   [bc], a                                     ; $78e3: $02
	jp   nz, $005d                                   ; $78e4: $c2 $5d $00

	ld   bc, $1e04                                   ; $78e7: $01 $04 $1e
	ld   a, h                                        ; $78ea: $7c
	inc  bc                                          ; $78eb: $03
	add  d                                           ; $78ec: $82
	ld   a, h                                        ; $78ed: $7c
	ld   [bc], a                                     ; $78ee: $02
	jp   $02a0                                       ; $78ef: $c3 $a0 $02


	jp   nz, $005d                                   ; $78f2: $c2 $5d $00

	ld   [bc], a                                     ; $78f5: $02
	rlca                                             ; $78f6: $07
	sub  [hl]                                        ; $78f7: $96
	nop                                              ; $78f8: $00
	ld   [bc], a                                     ; $78f9: $02
	ld   [bc], a                                     ; $78fa: $02
	ld   bc, $2000                                   ; $78fb: $01 $00 $20
	nop                                              ; $78fe: $00
	rlca                                             ; $78ff: $07
	rrca                                             ; $7900: $0f
	ld   bc, $0202                                   ; $7901: $01 $02 $02
	ld   bc, $2001                                   ; $7904: $01 $01 $20
	nop                                              ; $7907: $00
	rlca                                             ; $7908: $07
	adc  c                                           ; $7909: $89
	ld   bc, $0202                                   ; $790a: $01 $02 $02
	ld   bc, $2002                                   ; $790d: $01 $02 $20
	nop                                              ; $7910: $00
	rrca                                             ; $7911: $0f
	nop                                              ; $7912: $00
	ld   bc, $5001                                   ; $7913: $01 $01 $50
	ld   a, h                                        ; $7916: $7c
	rst  $38                                         ; $7917: $ff
	ld   h, e                                        ; $7918: $63
	ld   e, l                                        ; $7919: $5d
	sub  a                                           ; $791a: $97
	ld   h, e                                        ; $791b: $63
	and  c                                           ; $791c: $a1
	ld   a, h                                        ; $791d: $7c
	ld   [bc], a                                     ; $791e: $02
	jp   Jump_047_7279                               ; $791f: $c3 $79 $72


	ld   d, d                                        ; $7922: $52
	ld   [hl], h                                     ; $7923: $74
	dec  c                                           ; $7924: $0d
	ld   e, b                                        ; $7925: $58
	ld   [bc], a                                     ; $7926: $02
	jp   nz, Jump_047_655b                           ; $7927: $c2 $5b $65

	ld   l, l                                        ; $792a: $6d
	ld   d, d                                        ; $792b: $52
	and  c                                           ; $792c: $a1
	ld   [hl], l                                     ; $792d: $75
	ld   h, a                                        ; $792e: $67
	ld   e, a                                        ; $792f: $5f
	ld   [hl], a                                     ; $7930: $77
	rst  $38                                         ; $7931: $ff
	rst  $38                                         ; $7932: $ff
	sbc  a                                           ; $7933: $9f
	dec  c                                           ; $7934: $0d
	nop                                              ; $7935: $00
	ld   a, [bc]                                     ; $7936: $0a
	inc  e                                           ; $7937: $1c
	inc  c                                           ; $7938: $0c
	nop                                              ; $7939: $00
	nop                                              ; $793a: $00
	ld   bc, $5d63                                   ; $793b: $01 $63 $5d
	sub  a                                           ; $793e: $97
	ld   h, e                                        ; $793f: $63
	and  c                                           ; $7940: $a1
	ld   a, b                                        ; $7941: $78
	sub  a                                           ; $7942: $97
	sbc  [hl]                                        ; $7943: $9e
	dec  c                                           ; $7944: $0d
	call c, $edfb                                    ; $7945: $dc $fb $ed
	sub  d                                           ; $7948: $92
	rst  ToBoot                                         ; $7949: $c7
	db   $eb                                         ; $794a: $eb
	cp   d                                           ; $794b: $ba
	ld   a, c                                        ; $794c: $79
	dec  c                                           ; $794d: $0d
	sub  [hl]                                        ; $794e: $96
	ld   e, l                                        ; $794f: $5d
	ld   d, d                                        ; $7950: $52
	adc  h                                           ; $7951: $8c
	ld   h, a                                        ; $7952: $67
	sub  [hl]                                        ; $7953: $96
	sbc  a                                           ; $7954: $9f
	dec  c                                           ; $7955: $0d
	nop                                              ; $7956: $00
	ld   a, [bc]                                     ; $7957: $0a
	ld   a, [hl+]                                    ; $7958: $2a
	ld   bc, $0c1c                                   ; $7959: $01 $1c $0c
	ld   bc, $0101                                   ; $795c: $01 $01 $01
	ld   l, e                                        ; $795f: $6b
	sbc  d                                           ; $7960: $9a
	ld   [hl], l                                     ; $7961: $75
	ld   a, l                                        ; $7962: $7d
	sbc  [hl]                                        ; $7963: $9e
	sbc  l                                           ; $7964: $9d
	ld   l, l                                        ; $7965: $6d
	ld   h, l                                        ; $7966: $65
	ld   a, l                                        ; $7967: $7d
	dec  c                                           ; $7968: $0d
	inc  bc                                          ; $7969: $03
	dec  c                                           ; $796a: $0d
	ld   [bc], a                                     ; $796b: $02
	jp   Jump_047_505a                               ; $796c: $c3 $5a $50


	sbc  b                                           ; $796f: $98
	adc  h                                           ; $7970: $8c
	ld   h, a                                        ; $7971: $67
	ld   a, h                                        ; $7972: $7c
	ld   [hl], l                                     ; $7973: $75
	sbc  [hl]                                        ; $7974: $9e
	dec  c                                           ; $7975: $0d
	inc  bc                                          ; $7976: $03
	add  e                                           ; $7977: $83
	dec  b                                           ; $7978: $05
	dec  c                                           ; $7979: $0d
	ld   h, l                                        ; $797a: $65
	adc  h                                           ; $797b: $8c
	ld   h, a                                        ; $797c: $67
	sbc  a                                           ; $797d: $9f
	dec  c                                           ; $797e: $0d
	nop                                              ; $797f: $00
	ld   a, [bc]                                     ; $7980: $0a
	dec  c                                           ; $7981: $0d
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	rrca                                             ; $7984: $0f
	nop                                              ; $7985: $00
	ld   bc, $1e09                                   ; $7986: $01 $09 $1e
	nop                                              ; $7989: $00
	rrca                                             ; $798a: $0f
	nop                                              ; $798b: $00
	ld   bc, $5001                                   ; $798c: $01 $01 $50
	ld   a, h                                        ; $798f: $7c
	rst  $38                                         ; $7990: $ff
	ld   h, a                                        ; $7991: $67
	adc  l                                           ; $7992: $8d
	sbc  d                                           ; $7993: $9a
	ld   h, e                                        ; $7994: $63
	and  c                                           ; $7995: $a1
	ld   a, h                                        ; $7996: $7c
	ld   [bc], a                                     ; $7997: $02
	jp   Jump_047_7279                               ; $7998: $c3 $79 $72


	ld   d, d                                        ; $799b: $52
	ld   [hl], h                                     ; $799c: $74
	dec  c                                           ; $799d: $0d
	ld   e, b                                        ; $799e: $58
	ld   [bc], a                                     ; $799f: $02
	jp   nz, Jump_047_655b                           ; $79a0: $c2 $5b $65

	ld   l, l                                        ; $79a3: $6d
	ld   d, d                                        ; $79a4: $52
	and  c                                           ; $79a5: $a1
	ld   [hl], l                                     ; $79a6: $75
	ld   h, a                                        ; $79a7: $67
	ld   e, a                                        ; $79a8: $5f
	ld   [hl], a                                     ; $79a9: $77
	rst  $38                                         ; $79aa: $ff
	rst  $38                                         ; $79ab: $ff
	sbc  a                                           ; $79ac: $9f
	dec  c                                           ; $79ad: $0d
	nop                                              ; $79ae: $00
	ld   a, [bc]                                     ; $79af: $0a
	inc  e                                           ; $79b0: $1c
	inc  c                                           ; $79b1: $0c
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	ld   bc, $8d67                                   ; $79b4: $01 $67 $8d
	sbc  d                                           ; $79b7: $9a
	ld   h, e                                        ; $79b8: $63
	and  c                                           ; $79b9: $a1
	ld   a, b                                        ; $79ba: $78
	sub  a                                           ; $79bb: $97
	sbc  [hl]                                        ; $79bc: $9e
	dec  c                                           ; $79bd: $0d
	or   [hl]                                        ; $79be: $b6
	rst  $28                                         ; $79bf: $ef
	push af                                          ; $79c0: $f5
	sub  d                                           ; $79c1: $92
	inc  b                                           ; $79c2: $04
	dec  bc                                          ; $79c3: $0b
	inc  b                                           ; $79c4: $04
	rra                                              ; $79c5: $1f
	ld   a, c                                        ; $79c6: $79
	dec  c                                           ; $79c7: $0d
	sub  [hl]                                        ; $79c8: $96
	ld   e, l                                        ; $79c9: $5d
	ld   d, d                                        ; $79ca: $52
	adc  h                                           ; $79cb: $8c
	ld   h, a                                        ; $79cc: $67
	sub  [hl]                                        ; $79cd: $96
	sbc  a                                           ; $79ce: $9f
	dec  c                                           ; $79cf: $0d
	nop                                              ; $79d0: $00
	ld   a, [bc]                                     ; $79d1: $0a
	ld   a, [hl+]                                    ; $79d2: $2a
	ld   [bc], a                                     ; $79d3: $02
	inc  e                                           ; $79d4: $1c
	inc  c                                           ; $79d5: $0c
	ld   bc, $0101                                   ; $79d6: $01 $01 $01
	ld   l, e                                        ; $79d9: $6b
	sbc  d                                           ; $79da: $9a
	ld   [hl], l                                     ; $79db: $75
	ld   a, l                                        ; $79dc: $7d
	sbc  [hl]                                        ; $79dd: $9e
	sbc  l                                           ; $79de: $9d
	ld   l, l                                        ; $79df: $6d
	ld   h, l                                        ; $79e0: $65
	ld   a, l                                        ; $79e1: $7d
	dec  c                                           ; $79e2: $0d
	inc  bc                                          ; $79e3: $03
	dec  c                                           ; $79e4: $0d
	ld   [bc], a                                     ; $79e5: $02
	jp   Jump_047_505a                               ; $79e6: $c3 $5a $50


	sbc  b                                           ; $79e9: $98
	adc  h                                           ; $79ea: $8c
	ld   h, a                                        ; $79eb: $67
	ld   a, h                                        ; $79ec: $7c
	ld   [hl], l                                     ; $79ed: $75
	sbc  [hl]                                        ; $79ee: $9e
	dec  c                                           ; $79ef: $0d
	inc  bc                                          ; $79f0: $03
	add  e                                           ; $79f1: $83
	dec  b                                           ; $79f2: $05
	dec  c                                           ; $79f3: $0d
	ld   h, l                                        ; $79f4: $65
	adc  h                                           ; $79f5: $8c
	ld   h, a                                        ; $79f6: $67
	sbc  a                                           ; $79f7: $9f
	dec  c                                           ; $79f8: $0d
	nop                                              ; $79f9: $00
	ld   a, [bc]                                     ; $79fa: $0a
	dec  c                                           ; $79fb: $0d
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	rrca                                             ; $79fe: $0f
	nop                                              ; $79ff: $00
	ld   bc, $1e09                                   ; $7a00: $01 $09 $1e
	nop                                              ; $7a03: $00
	jr   jr_047_7a09                                 ; $7a04: $18 $03

	ld   bc, $ecdf                                   ; $7a06: $01 $df $ec

jr_047_7a09:
	and  e                                           ; $7a09: $a3
	ld   a, h                                        ; $7a0a: $7c
	ld   h, c                                        ; $7a0b: $61
	halt                                             ; $7a0c: $76
	and  b                                           ; $7a0d: $a0
	ld   [bc], a                                     ; $7a0e: $02
	jp   nz, $005d                                   ; $7a0f: $c2 $5d $00

	nop                                              ; $7a12: $00
	xor  h                                           ; $7a13: $ac
	push af                                          ; $7a14: $f5
	bit  7, h                                        ; $7a15: $cb $7c
	ld   h, c                                        ; $7a17: $61
	halt                                             ; $7a18: $76
	and  b                                           ; $7a19: $a0
	ld   [bc], a                                     ; $7a1a: $02
	jp   nz, $005d                                   ; $7a1b: $c2 $5d $00

	ld   bc, $1e04                                   ; $7a1e: $01 $04 $1e
	ld   a, h                                        ; $7a21: $7c
	inc  bc                                          ; $7a22: $03
	add  d                                           ; $7a23: $82
	ld   a, h                                        ; $7a24: $7c
	ld   [bc], a                                     ; $7a25: $02
	jp   $02a0                                       ; $7a26: $c3 $a0 $02


	jp   nz, $005d                                   ; $7a29: $c2 $5d $00

	ld   [bc], a                                     ; $7a2c: $02
	rlca                                             ; $7a2d: $07
	call $0201                                       ; $7a2e: $cd $01 $02
	ld   [bc], a                                     ; $7a31: $02
	ld   bc, $2000                                   ; $7a32: $01 $00 $20
	nop                                              ; $7a35: $00
	rlca                                             ; $7a36: $07
	ld   b, a                                        ; $7a37: $47
	ld   [bc], a                                     ; $7a38: $02
	ld   [bc], a                                     ; $7a39: $02
	ld   [bc], a                                     ; $7a3a: $02
	ld   bc, $2001                                   ; $7a3b: $01 $01 $20
	nop                                              ; $7a3e: $00
	rlca                                             ; $7a3f: $07
	jp   nz, $0202                                   ; $7a40: $c2 $02 $02

	ld   [bc], a                                     ; $7a43: $02
	ld   bc, $2002                                   ; $7a44: $01 $02 $20
	nop                                              ; $7a47: $00
	rrca                                             ; $7a48: $0f
	nop                                              ; $7a49: $00
	ld   bc, $5001                                   ; $7a4a: $01 $01 $50
	ld   a, h                                        ; $7a4d: $7c
	rst  $38                                         ; $7a4e: $ff
	rst  JumpTable                                         ; $7a4f: $df
	db   $ec                                         ; $7a50: $ec
	and  e                                           ; $7a51: $a3
	ld   h, e                                        ; $7a52: $63
	and  c                                           ; $7a53: $a1
	ld   a, h                                        ; $7a54: $7c
	ld   [bc], a                                     ; $7a55: $02
	jp   Jump_047_7279                               ; $7a56: $c3 $79 $72


	ld   d, d                                        ; $7a59: $52
	ld   [hl], h                                     ; $7a5a: $74
	dec  c                                           ; $7a5b: $0d
	ld   e, b                                        ; $7a5c: $58
	ld   [bc], a                                     ; $7a5d: $02
	jp   nz, Jump_047_655b                           ; $7a5e: $c2 $5b $65

	ld   l, l                                        ; $7a61: $6d
	ld   d, d                                        ; $7a62: $52
	and  c                                           ; $7a63: $a1
	ld   [hl], l                                     ; $7a64: $75
	ld   h, a                                        ; $7a65: $67
	ld   e, a                                        ; $7a66: $5f
	ld   [hl], a                                     ; $7a67: $77
	rst  $38                                         ; $7a68: $ff
	rst  $38                                         ; $7a69: $ff
	sbc  a                                           ; $7a6a: $9f
	dec  c                                           ; $7a6b: $0d
	nop                                              ; $7a6c: $00
	ld   a, [bc]                                     ; $7a6d: $0a
	inc  e                                           ; $7a6e: $1c
	inc  c                                           ; $7a6f: $0c
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	ld   bc, $ecdf                                   ; $7a72: $01 $df $ec
	and  e                                           ; $7a75: $a3
	ld   h, e                                        ; $7a76: $63
	and  c                                           ; $7a77: $a1
	ld   a, b                                        ; $7a78: $78
	sub  a                                           ; $7a79: $97
	sbc  [hl]                                        ; $7a7a: $9e
	dec  c                                           ; $7a7b: $0d
	rst  ToBoot                                         ; $7a7c: $c7
	db   $eb                                         ; $7a7d: $eb
	cp   d                                           ; $7a7e: $ba
	sub  d                                           ; $7a7f: $92
	inc  bc                                          ; $7a80: $03
	ld   d, l                                        ; $7a81: $55
	ld   [bc], a                                     ; $7a82: $02
	ld   e, c                                        ; $7a83: $59
	ld   a, c                                        ; $7a84: $79
	dec  c                                           ; $7a85: $0d
	sub  [hl]                                        ; $7a86: $96
	ld   e, l                                        ; $7a87: $5d
	ld   d, d                                        ; $7a88: $52
	adc  h                                           ; $7a89: $8c
	ld   h, a                                        ; $7a8a: $67
	sub  [hl]                                        ; $7a8b: $96
	sbc  a                                           ; $7a8c: $9f
	dec  c                                           ; $7a8d: $0d
	nop                                              ; $7a8e: $00
	ld   a, [bc]                                     ; $7a8f: $0a
	ld   a, [hl+]                                    ; $7a90: $2a
	inc  bc                                          ; $7a91: $03
	inc  e                                           ; $7a92: $1c
	inc  c                                           ; $7a93: $0c
	ld   bc, $0101                                   ; $7a94: $01 $01 $01
	ld   l, e                                        ; $7a97: $6b
	sbc  d                                           ; $7a98: $9a
	ld   [hl], l                                     ; $7a99: $75
	ld   a, l                                        ; $7a9a: $7d
	sbc  [hl]                                        ; $7a9b: $9e
	sbc  l                                           ; $7a9c: $9d
	ld   l, l                                        ; $7a9d: $6d
	ld   h, l                                        ; $7a9e: $65
	ld   a, l                                        ; $7a9f: $7d
	dec  c                                           ; $7aa0: $0d
	inc  bc                                          ; $7aa1: $03
	dec  c                                           ; $7aa2: $0d
	ld   [bc], a                                     ; $7aa3: $02
	jp   Jump_047_505a                               ; $7aa4: $c3 $5a $50


	sbc  b                                           ; $7aa7: $98
	adc  h                                           ; $7aa8: $8c
	ld   h, a                                        ; $7aa9: $67
	ld   a, h                                        ; $7aaa: $7c
	ld   [hl], l                                     ; $7aab: $75
	sbc  [hl]                                        ; $7aac: $9e
	dec  c                                           ; $7aad: $0d
	inc  bc                                          ; $7aae: $03
	add  e                                           ; $7aaf: $83
	dec  b                                           ; $7ab0: $05
	dec  c                                           ; $7ab1: $0d
	ld   h, l                                        ; $7ab2: $65
	adc  h                                           ; $7ab3: $8c
	ld   h, a                                        ; $7ab4: $67
	sbc  a                                           ; $7ab5: $9f
	dec  c                                           ; $7ab6: $0d
	nop                                              ; $7ab7: $00
	ld   a, [bc]                                     ; $7ab8: $0a
	dec  c                                           ; $7ab9: $0d
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	rrca                                             ; $7abc: $0f
	nop                                              ; $7abd: $00
	ld   bc, $1e09                                   ; $7abe: $01 $09 $1e
	nop                                              ; $7ac1: $00
	rrca                                             ; $7ac2: $0f
	nop                                              ; $7ac3: $00
	ld   bc, $5001                                   ; $7ac4: $01 $01 $50
	ld   a, h                                        ; $7ac7: $7c
	rst  $38                                         ; $7ac8: $ff
	xor  h                                           ; $7ac9: $ac
	push af                                          ; $7aca: $f5
	bit  4, e                                        ; $7acb: $cb $63
	and  c                                           ; $7acd: $a1
	ld   a, h                                        ; $7ace: $7c
	ld   [bc], a                                     ; $7acf: $02
	jp   Jump_047_7279                               ; $7ad0: $c3 $79 $72


	ld   d, d                                        ; $7ad3: $52
	ld   [hl], h                                     ; $7ad4: $74
	dec  c                                           ; $7ad5: $0d
	ld   e, b                                        ; $7ad6: $58
	ld   [bc], a                                     ; $7ad7: $02
	jp   nz, Jump_047_655b                           ; $7ad8: $c2 $5b $65

	ld   l, l                                        ; $7adb: $6d
	ld   d, d                                        ; $7adc: $52
	and  c                                           ; $7add: $a1
	ld   [hl], l                                     ; $7ade: $75
	ld   h, a                                        ; $7adf: $67
	ld   e, a                                        ; $7ae0: $5f
	ld   [hl], a                                     ; $7ae1: $77
	rst  $38                                         ; $7ae2: $ff
	rst  $38                                         ; $7ae3: $ff
	sbc  a                                           ; $7ae4: $9f
	dec  c                                           ; $7ae5: $0d
	nop                                              ; $7ae6: $00
	ld   a, [bc]                                     ; $7ae7: $0a
	inc  e                                           ; $7ae8: $1c
	inc  c                                           ; $7ae9: $0c
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	ld   bc, $f5ac                                   ; $7aec: $01 $ac $f5
	bit  4, e                                        ; $7aef: $cb $63
	and  c                                           ; $7af1: $a1
	ld   a, b                                        ; $7af2: $78
	sub  a                                           ; $7af3: $97
	sbc  [hl]                                        ; $7af4: $9e
	dec  c                                           ; $7af5: $0d
	inc  bc                                          ; $7af6: $03
	ld   l, d                                        ; $7af7: $6a
	inc  bc                                          ; $7af8: $03
	db   $db                                         ; $7af9: $db
	sub  d                                           ; $7afa: $92
	inc  b                                           ; $7afb: $04
	dec  bc                                          ; $7afc: $0b
	inc  b                                           ; $7afd: $04
	rra                                              ; $7afe: $1f
	ld   a, c                                        ; $7aff: $79
	dec  c                                           ; $7b00: $0d
	sub  [hl]                                        ; $7b01: $96
	ld   e, l                                        ; $7b02: $5d
	ld   d, d                                        ; $7b03: $52
	adc  h                                           ; $7b04: $8c
	ld   h, a                                        ; $7b05: $67
	sub  [hl]                                        ; $7b06: $96
	sbc  a                                           ; $7b07: $9f
	dec  c                                           ; $7b08: $0d
	nop                                              ; $7b09: $00
	ld   a, [bc]                                     ; $7b0a: $0a
	ld   a, [hl+]                                    ; $7b0b: $2a
	ld   b, $1c                                      ; $7b0c: $06 $1c
	inc  c                                           ; $7b0e: $0c
	ld   bc, $0101                                   ; $7b0f: $01 $01 $01
	ld   l, e                                        ; $7b12: $6b
	sbc  d                                           ; $7b13: $9a
	ld   [hl], l                                     ; $7b14: $75
	ld   a, l                                        ; $7b15: $7d
	sbc  [hl]                                        ; $7b16: $9e
	sbc  l                                           ; $7b17: $9d
	ld   l, l                                        ; $7b18: $6d
	ld   h, l                                        ; $7b19: $65
	ld   a, l                                        ; $7b1a: $7d
	dec  c                                           ; $7b1b: $0d
	inc  bc                                          ; $7b1c: $03
	dec  c                                           ; $7b1d: $0d
	ld   [bc], a                                     ; $7b1e: $02
	jp   Jump_047_505a                               ; $7b1f: $c3 $5a $50


	sbc  b                                           ; $7b22: $98
	adc  h                                           ; $7b23: $8c
	ld   h, a                                        ; $7b24: $67
	ld   a, h                                        ; $7b25: $7c
	ld   [hl], l                                     ; $7b26: $75
	sbc  [hl]                                        ; $7b27: $9e
	dec  c                                           ; $7b28: $0d
	inc  bc                                          ; $7b29: $03
	add  e                                           ; $7b2a: $83
	dec  b                                           ; $7b2b: $05
	dec  c                                           ; $7b2c: $0d
	ld   h, l                                        ; $7b2d: $65
	adc  h                                           ; $7b2e: $8c
	ld   h, a                                        ; $7b2f: $67
	sbc  a                                           ; $7b30: $9f
	dec  c                                           ; $7b31: $0d
	nop                                              ; $7b32: $00
	ld   a, [bc]                                     ; $7b33: $0a
	dec  c                                           ; $7b34: $0d
	nop                                              ; $7b35: $00
	nop                                              ; $7b36: $00
	rrca                                             ; $7b37: $0f
	nop                                              ; $7b38: $00
	ld   bc, $1e09                                   ; $7b39: $01 $09 $1e
	nop                                              ; $7b3c: $00
	jr   jr_047_7b42                                 ; $7b3d: $18 $03

	ld   bc, $cf02                                   ; $7b3f: $01 $02 $cf

jr_047_7b42:
	dec  b                                           ; $7b42: $05
	ld   a, [de]                                     ; $7b43: $1a
	ld   a, h                                        ; $7b44: $7c
	ld   h, c                                        ; $7b45: $61
	halt                                             ; $7b46: $76
	and  b                                           ; $7b47: $a0
	ld   [bc], a                                     ; $7b48: $02
	jp   nz, $005d                                   ; $7b49: $c2 $5d $00

	nop                                              ; $7b4c: $00
	and  e                                           ; $7b4d: $a3
	and  l                                           ; $7b4e: $a5
	db   $ec                                         ; $7b4f: $ec
	cp   d                                           ; $7b50: $ba
	ld   a, h                                        ; $7b51: $7c
	ld   h, c                                        ; $7b52: $61
	halt                                             ; $7b53: $76
	and  b                                           ; $7b54: $a0
	ld   [bc], a                                     ; $7b55: $02
	jp   nz, $005d                                   ; $7b56: $c2 $5d $00

	ld   bc, $1e04                                   ; $7b59: $01 $04 $1e
	ld   a, h                                        ; $7b5c: $7c
	inc  bc                                          ; $7b5d: $03
	add  d                                           ; $7b5e: $82
	ld   a, h                                        ; $7b5f: $7c
	ld   [bc], a                                     ; $7b60: $02
	jp   $02a0                                       ; $7b61: $c3 $a0 $02


	jp   nz, $005d                                   ; $7b64: $c2 $5d $00

	ld   [bc], a                                     ; $7b67: $02
	rlca                                             ; $7b68: $07
	ld   [$0203], sp                                 ; $7b69: $08 $03 $02
	ld   [bc], a                                     ; $7b6c: $02
	ld   bc, $2000                                   ; $7b6d: $01 $00 $20
	nop                                              ; $7b70: $00
	rlca                                             ; $7b71: $07
	adc  e                                           ; $7b72: $8b
	inc  bc                                          ; $7b73: $03
	ld   [bc], a                                     ; $7b74: $02
	ld   [bc], a                                     ; $7b75: $02
	ld   bc, $2001                                   ; $7b76: $01 $01 $20
	nop                                              ; $7b79: $00
	rlca                                             ; $7b7a: $07
	ld   d, d                                        ; $7b7b: $52
	nop                                              ; $7b7c: $00
	ld   [bc], a                                     ; $7b7d: $02
	ld   [bc], a                                     ; $7b7e: $02
	ld   bc, $2002                                   ; $7b7f: $01 $02 $20
	nop                                              ; $7b82: $00
	rrca                                             ; $7b83: $0f
	nop                                              ; $7b84: $00
	ld   bc, $5001                                   ; $7b85: $01 $01 $50
	ld   a, h                                        ; $7b88: $7c
	rst  $38                                         ; $7b89: $ff
	ld   [bc], a                                     ; $7b8a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b8b: $cf
	dec  b                                           ; $7b8c: $05
	ld   a, [de]                                     ; $7b8d: $1a
	ld   h, e                                        ; $7b8e: $63
	and  c                                           ; $7b8f: $a1
	ld   a, h                                        ; $7b90: $7c
	ld   [bc], a                                     ; $7b91: $02
	jp   Jump_047_7279                               ; $7b92: $c3 $79 $72


	ld   d, d                                        ; $7b95: $52
	ld   [hl], h                                     ; $7b96: $74
	dec  c                                           ; $7b97: $0d
	ld   e, b                                        ; $7b98: $58
	ld   [bc], a                                     ; $7b99: $02
	jp   nz, Jump_047_655b                           ; $7b9a: $c2 $5b $65

	ld   l, l                                        ; $7b9d: $6d
	ld   d, d                                        ; $7b9e: $52
	and  c                                           ; $7b9f: $a1
	ld   [hl], l                                     ; $7ba0: $75
	ld   h, a                                        ; $7ba1: $67
	ld   e, a                                        ; $7ba2: $5f
	ld   [hl], a                                     ; $7ba3: $77
	rst  $38                                         ; $7ba4: $ff
	rst  $38                                         ; $7ba5: $ff
	sbc  a                                           ; $7ba6: $9f
	dec  c                                           ; $7ba7: $0d
	nop                                              ; $7ba8: $00
	ld   a, [bc]                                     ; $7ba9: $0a
	inc  e                                           ; $7baa: $1c
	inc  c                                           ; $7bab: $0c
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	ld   bc, $cf02                                   ; $7bae: $01 $02 $cf
	dec  b                                           ; $7bb1: $05
	ld   a, [de]                                     ; $7bb2: $1a
	ld   h, e                                        ; $7bb3: $63
	and  c                                           ; $7bb4: $a1
	ld   a, b                                        ; $7bb5: $78
	sub  a                                           ; $7bb6: $97
	sbc  [hl]                                        ; $7bb7: $9e
	dec  c                                           ; $7bb8: $0d
	inc  bc                                          ; $7bb9: $03
	adc  $02                                         ; $7bba: $ce $02
	inc  [hl]                                        ; $7bbc: $34
	ld   [bc], a                                     ; $7bbd: $02
	ld   [hl], l                                     ; $7bbe: $75
	inc  b                                           ; $7bbf: $04
	dec  a                                           ; $7bc0: $3d
	ld   [bc], a                                     ; $7bc1: $02
	ld   e, c                                        ; $7bc2: $59
	sub  d                                           ; $7bc3: $92
	inc  bc                                          ; $7bc4: $03
	ld   d, l                                        ; $7bc5: $55
	ld   [bc], a                                     ; $7bc6: $02
	ld   e, c                                        ; $7bc7: $59
	ld   a, c                                        ; $7bc8: $79
	dec  c                                           ; $7bc9: $0d
	sub  [hl]                                        ; $7bca: $96
	ld   e, l                                        ; $7bcb: $5d
	ld   d, d                                        ; $7bcc: $52
	adc  h                                           ; $7bcd: $8c
	ld   h, a                                        ; $7bce: $67
	sub  [hl]                                        ; $7bcf: $96
	sbc  a                                           ; $7bd0: $9f
	dec  c                                           ; $7bd1: $0d
	nop                                              ; $7bd2: $00
	ld   a, [bc]                                     ; $7bd3: $0a
	ld   a, [hl+]                                    ; $7bd4: $2a
	dec  b                                           ; $7bd5: $05
	inc  e                                           ; $7bd6: $1c
	inc  c                                           ; $7bd7: $0c
	ld   bc, $0101                                   ; $7bd8: $01 $01 $01
	ld   l, e                                        ; $7bdb: $6b
	sbc  d                                           ; $7bdc: $9a
	ld   [hl], l                                     ; $7bdd: $75
	ld   a, l                                        ; $7bde: $7d
	sbc  [hl]                                        ; $7bdf: $9e
	sbc  l                                           ; $7be0: $9d
	ld   l, l                                        ; $7be1: $6d
	ld   h, l                                        ; $7be2: $65
	ld   a, l                                        ; $7be3: $7d
	dec  c                                           ; $7be4: $0d
	inc  bc                                          ; $7be5: $03
	dec  c                                           ; $7be6: $0d
	ld   [bc], a                                     ; $7be7: $02
	jp   Jump_047_505a                               ; $7be8: $c3 $5a $50


	sbc  b                                           ; $7beb: $98
	adc  h                                           ; $7bec: $8c
	ld   h, a                                        ; $7bed: $67
	ld   a, h                                        ; $7bee: $7c
	ld   [hl], l                                     ; $7bef: $75
	sbc  [hl]                                        ; $7bf0: $9e
	dec  c                                           ; $7bf1: $0d
	inc  bc                                          ; $7bf2: $03
	add  e                                           ; $7bf3: $83
	dec  b                                           ; $7bf4: $05
	dec  c                                           ; $7bf5: $0d
	ld   h, l                                        ; $7bf6: $65
	adc  h                                           ; $7bf7: $8c
	ld   h, a                                        ; $7bf8: $67
	sbc  a                                           ; $7bf9: $9f
	dec  c                                           ; $7bfa: $0d
	nop                                              ; $7bfb: $00
	ld   a, [bc]                                     ; $7bfc: $0a
	dec  c                                           ; $7bfd: $0d
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	rrca                                             ; $7c00: $0f
	nop                                              ; $7c01: $00
	ld   bc, $1e09                                   ; $7c02: $01 $09 $1e
	nop                                              ; $7c05: $00
	rrca                                             ; $7c06: $0f
	nop                                              ; $7c07: $00
	ld   bc, $5001                                   ; $7c08: $01 $01 $50
	ld   a, h                                        ; $7c0b: $7c
	rst  $38                                         ; $7c0c: $ff
	and  e                                           ; $7c0d: $a3
	and  l                                           ; $7c0e: $a5
	db   $ec                                         ; $7c0f: $ec
	cp   d                                           ; $7c10: $ba
	ld   a, h                                        ; $7c11: $7c
	ld   [bc], a                                     ; $7c12: $02
	jp   Jump_047_7279                               ; $7c13: $c3 $79 $72


	ld   d, d                                        ; $7c16: $52
	ld   [hl], h                                     ; $7c17: $74
	dec  c                                           ; $7c18: $0d
	ld   e, b                                        ; $7c19: $58
	ld   [bc], a                                     ; $7c1a: $02
	jp   nz, Jump_047_655b                           ; $7c1b: $c2 $5b $65

	ld   l, l                                        ; $7c1e: $6d
	ld   d, d                                        ; $7c1f: $52
	and  c                                           ; $7c20: $a1
	ld   [hl], l                                     ; $7c21: $75
	ld   h, a                                        ; $7c22: $67
	ld   e, a                                        ; $7c23: $5f
	ld   [hl], a                                     ; $7c24: $77
	rst  $38                                         ; $7c25: $ff
	rst  $38                                         ; $7c26: $ff
	sbc  a                                           ; $7c27: $9f
	dec  c                                           ; $7c28: $0d
	nop                                              ; $7c29: $00
	ld   a, [bc]                                     ; $7c2a: $0a
	inc  e                                           ; $7c2b: $1c
	inc  c                                           ; $7c2c: $0c
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	ld   bc, $a5a3                                   ; $7c2f: $01 $a3 $a5
	db   $ec                                         ; $7c32: $ec
	cp   d                                           ; $7c33: $ba
	ld   a, b                                        ; $7c34: $78
	sub  a                                           ; $7c35: $97
	sbc  [hl]                                        ; $7c36: $9e
	rst  ToBoot                                         ; $7c37: $c7
	db   $eb                                         ; $7c38: $eb
	cp   d                                           ; $7c39: $ba
	sub  d                                           ; $7c3a: $92
	dec  b                                           ; $7c3b: $05
	inc  de                                          ; $7c3c: $13
	ld   [bc], a                                     ; $7c3d: $02
	ld   hl, $0d9e                                   ; $7c3e: $21 $9e $0d
	ld   d, b                                        ; $7c41: $50
	halt                                             ; $7c42: $76
	sbc  [hl]                                        ; $7c43: $9e
	inc  b                                           ; $7c44: $04
	dec  bc                                          ; $7c45: $0b
	inc  b                                           ; $7c46: $04
	rra                                              ; $7c47: $1f
	ld   a, b                                        ; $7c48: $78
	and  c                                           ; $7c49: $a1
	ld   e, c                                        ; $7c4a: $59
	ld   a, c                                        ; $7c4b: $79
	sub  b                                           ; $7c4c: $90
	dec  c                                           ; $7c4d: $0d
	sub  [hl]                                        ; $7c4e: $96
	ld   e, l                                        ; $7c4f: $5d
	ld   d, d                                        ; $7c50: $52
	adc  h                                           ; $7c51: $8c
	ld   h, a                                        ; $7c52: $67
	sub  [hl]                                        ; $7c53: $96
	sbc  a                                           ; $7c54: $9f
	dec  c                                           ; $7c55: $0d
	nop                                              ; $7c56: $00
	ld   a, [bc]                                     ; $7c57: $0a
	ld   a, [hl+]                                    ; $7c58: $2a
	inc  b                                           ; $7c59: $04
	inc  e                                           ; $7c5a: $1c
	inc  c                                           ; $7c5b: $0c
	ld   bc, $0101                                   ; $7c5c: $01 $01 $01
	ld   l, e                                        ; $7c5f: $6b
	sbc  d                                           ; $7c60: $9a
	ld   [hl], l                                     ; $7c61: $75
	ld   a, l                                        ; $7c62: $7d
	sbc  [hl]                                        ; $7c63: $9e
	sbc  l                                           ; $7c64: $9d
	ld   l, l                                        ; $7c65: $6d
	ld   h, l                                        ; $7c66: $65
	ld   a, l                                        ; $7c67: $7d
	dec  c                                           ; $7c68: $0d
	inc  bc                                          ; $7c69: $03
	dec  c                                           ; $7c6a: $0d
	ld   [bc], a                                     ; $7c6b: $02
	jp   Jump_047_505a                               ; $7c6c: $c3 $5a $50


	sbc  b                                           ; $7c6f: $98
	adc  h                                           ; $7c70: $8c
	ld   h, a                                        ; $7c71: $67
	ld   a, h                                        ; $7c72: $7c
	ld   [hl], l                                     ; $7c73: $75
	sbc  [hl]                                        ; $7c74: $9e
	dec  c                                           ; $7c75: $0d
	inc  bc                                          ; $7c76: $03
	add  e                                           ; $7c77: $83
	dec  b                                           ; $7c78: $05
	dec  c                                           ; $7c79: $0d
	ld   h, l                                        ; $7c7a: $65
	adc  h                                           ; $7c7b: $8c
	ld   h, a                                        ; $7c7c: $67
	sbc  a                                           ; $7c7d: $9f
	dec  c                                           ; $7c7e: $0d
	nop                                              ; $7c7f: $00
	ld   a, [bc]                                     ; $7c80: $0a
	dec  c                                           ; $7c81: $0d
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	rrca                                             ; $7c84: $0f
	nop                                              ; $7c85: $00
	ld   bc, $1e09                                   ; $7c86: $01 $09 $1e
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	ld   [bc], a                                     ; $7c8b: $02
	rlca                                             ; $7c8c: $07
	ld   [hl+], a                                    ; $7c8d: $22
	nop                                              ; $7c8e: $00
	inc  bc                                          ; $7c8f: $03
	inc  de                                          ; $7c90: $13
	ld   bc, $2265                                   ; $7c91: $01 $65 $22
	nop                                              ; $7c94: $00
	rlca                                             ; $7c95: $07
	ld   d, d                                        ; $7c96: $52
	nop                                              ; $7c97: $00
	inc  bc                                          ; $7c98: $03
	inc  de                                          ; $7c99: $13
	ld   bc, $2566                                   ; $7c9a: $01 $66 $25
	inc  bc                                          ; $7c9d: $03
	inc  de                                          ; $7c9e: $13
	ld   bc, $2273                                   ; $7c9f: $01 $73 $22
	inc  e                                           ; $7ca2: $1c

Jump_047_7ca3:
	nop                                              ; $7ca3: $00
	rlca                                             ; $7ca4: $07
	sub  [hl]                                        ; $7ca5: $96
	nop                                              ; $7ca6: $00
	inc  bc                                          ; $7ca7: $03
	inc  de                                          ; $7ca8: $13
	ld   bc, $2573                                   ; $7ca9: $01 $73 $25
	nop                                              ; $7cac: $00
	rrca                                             ; $7cad: $0f
	nop                                              ; $7cae: $00
	ld   bc, $df01                                   ; $7caf: $01 $01 $df
	db   $ec                                         ; $7cb2: $ec
	and  e                                           ; $7cb3: $a3
	ld   h, e                                        ; $7cb4: $63
	and  c                                           ; $7cb5: $a1
	sbc  a                                           ; $7cb6: $9f
	dec  c                                           ; $7cb7: $0d
	nop                                              ; $7cb8: $00
	ld   a, [bc]                                     ; $7cb9: $0a
	inc  e                                           ; $7cba: $1c
	inc  bc                                          ; $7cbb: $03
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	ld   bc, $8c52                                   ; $7cbe: $01 $52 $8c
	dec  b                                           ; $7cc1: $05
	jr   z, jr_047_7d16                              ; $7cc2: $28 $52

	ld   [hl], l                                     ; $7cc4: $75
	sbc  c                                           ; $7cc5: $99
	ld   a, h                                        ; $7cc6: $7c
	sbc  a                                           ; $7cc7: $9f
	dec  c                                           ; $7cc8: $0d
	adc  h                                           ; $7cc9: $8c
	ld   l, l                                        ; $7cca: $6d
	sbc  [hl]                                        ; $7ccb: $9e
	ld   [bc], a                                     ; $7ccc: $02
	xor  d                                           ; $7ccd: $aa
	ld   [hl], l                                     ; $7cce: $75
	ld   a, e                                        ; $7ccf: $7b
	sbc  a                                           ; $7cd0: $9f
	dec  c                                           ; $7cd1: $0d
	nop                                              ; $7cd2: $00
	ld   a, [bc]                                     ; $7cd3: $0a
	dec  c                                           ; $7cd4: $0d
	nop                                              ; $7cd5: $00
	nop                                              ; $7cd6: $00
	rrca                                             ; $7cd7: $0f
	nop                                              ; $7cd8: $00
	ld   bc, $1e09                                   ; $7cd9: $01 $09 $1e
	nop                                              ; $7cdc: $00
	inc  e                                           ; $7cdd: $1c
	inc  bc                                          ; $7cde: $03
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	ld   bc, $9750                                   ; $7ce1: $01 $50 $97
	sbc  [hl]                                        ; $7ce4: $9e
	ld   [$5d00], sp                                 ; $7ce5: $08 $00 $5d
	and  c                                           ; $7ce8: $a1
	sbc  a                                           ; $7ce9: $9f
	dec  c                                           ; $7cea: $0d
	nop                                              ; $7ceb: $00
	ld   a, [bc]                                     ; $7cec: $0a
	rrca                                             ; $7ced: $0f
	nop                                              ; $7cee: $00
	ld   bc, $df01                                   ; $7cef: $01 $01 $df
	db   $ec                                         ; $7cf2: $ec
	and  e                                           ; $7cf3: $a3
	ld   h, e                                        ; $7cf4: $63
	and  c                                           ; $7cf5: $a1
	sbc  a                                           ; $7cf6: $9f
	dec  c                                           ; $7cf7: $0d
	ld   e, b                                        ; $7cf8: $58
	inc  b                                           ; $7cf9: $04
	ld   a, e                                        ; $7cfa: $7b
	sbc  d                                           ; $7cfb: $9a
	ld   h, e                                        ; $7cfc: $63
	adc  h                                           ; $7cfd: $8c
	ld   [hl], l                                     ; $7cfe: $75
	ld   h, a                                        ; $7cff: $67
	sbc  a                                           ; $7d00: $9f
	dec  c                                           ; $7d01: $0d
	nop                                              ; $7d02: $00
	ld   a, [bc]                                     ; $7d03: $0a
	rrca                                             ; $7d04: $0f
	inc  bc                                          ; $7d05: $03
	nop                                              ; $7d06: $00
	ld   bc, $0458                                   ; $7d07: $01 $58 $04
	ld   a, e                                        ; $7d0a: $7b
	sbc  d                                           ; $7d0b: $9a
	ld   h, e                                        ; $7d0c: $63
	adc  h                                           ; $7d0d: $8c
	sbc  a                                           ; $7d0e: $9f
	dec  c                                           ; $7d0f: $0d
	ld   h, [hl]                                     ; $7d10: $66
	sub  c                                           ; $7d11: $91
	ld   d, b                                        ; $7d12: $50
	ld   a, e                                        ; $7d13: $7b
	sbc  a                                           ; $7d14: $9f
	dec  c                                           ; $7d15: $0d

jr_047_7d16:
	nop                                              ; $7d16: $00
	ld   a, [bc]                                     ; $7d17: $0a
	dec  c                                           ; $7d18: $0d
	nop                                              ; $7d19: $00
	nop                                              ; $7d1a: $00
	rrca                                             ; $7d1b: $0f
	nop                                              ; $7d1c: $00
	ld   bc, $1e09                                   ; $7d1d: $01 $09 $1e
	nop                                              ; $7d20: $00
	dec  c                                           ; $7d21: $0d
	inc  bc                                          ; $7d22: $03
	nop                                              ; $7d23: $00
	rrca                                             ; $7d24: $0f
	nop                                              ; $7d25: $00
	ld   bc, $df01                                   ; $7d26: $01 $01 $df
	db   $ec                                         ; $7d29: $ec
	and  e                                           ; $7d2a: $a3
	ld   h, e                                        ; $7d2b: $63
	and  c                                           ; $7d2c: $a1
	sbc  a                                           ; $7d2d: $9f
	dec  c                                           ; $7d2e: $0d
	nop                                              ; $7d2f: $00
	ld   a, [bc]                                     ; $7d30: $0a
	inc  e                                           ; $7d31: $1c
	inc  bc                                          ; $7d32: $03
	inc  bc                                          ; $7d33: $03
	inc  bc                                          ; $7d34: $03
	ld   bc, $0008                                   ; $7d35: $01 $08 $00
	ld   e, l                                        ; $7d38: $5d
	and  c                                           ; $7d39: $a1
	sbc  a                                           ; $7d3a: $9f
	dec  c                                           ; $7d3b: $0d
	sub  b                                           ; $7d3c: $90
	ld   d, h                                        ; $7d3d: $54
	inc  b                                           ; $7d3e: $04
	ld   [$9102], sp                                 ; $7d3f: $08 $02 $91
	ld   a, c                                        ; $7d42: $79
	ld   a, l                                        ; $7d43: $7d
	ld   a, b                                        ; $7d44: $78
	sbc  d                                           ; $7d45: $9a
	ld   l, l                                        ; $7d46: $6d
	ld   sp, hl                                      ; $7d47: $f9
	dec  c                                           ; $7d48: $0d
	nop                                              ; $7d49: $00
	ld   a, [bc]                                     ; $7d4a: $0a
	ld   bc, $9e04                                   ; $7d4b: $01 $04 $9e
	ld   e, c                                        ; $7d4e: $59
	sub  a                                           ; $7d4f: $97
	ld   a, b                                        ; $7d50: $78
	ld   d, d                                        ; $7d51: $52
	ld   [bc], a                                     ; $7d52: $02
	jp   Jump_047_505a                               ; $7d53: $c3 $5a $50


	ld   [hl], c                                     ; $7d56: $71
	ld   l, l                                        ; $7d57: $6d
	sub  a                                           ; $7d58: $97
	sbc  [hl]                                        ; $7d59: $9e
	dec  c                                           ; $7d5a: $0d
	ld   a, b                                        ; $7d5b: $78
	and  c                                           ; $7d5c: $a1
	ld   [hl], l                                     ; $7d5d: $75
	sub  b                                           ; $7d5e: $90
	ld   [bc], a                                     ; $7d5f: $02
	jp   nz, Jump_047_7452                           ; $7d60: $c2 $52 $74

	ld   a, e                                        ; $7d63: $7b
	sbc  a                                           ; $7d64: $9f
	dec  c                                           ; $7d65: $0d
	ld   l, e                                        ; $7d66: $6b
	sbc  d                                           ; $7d67: $9a
	ld   h, [hl]                                     ; $7d68: $66
	sub  c                                           ; $7d69: $91
	ld   d, b                                        ; $7d6a: $50
	ld   a, e                                        ; $7d6b: $7b
	sbc  a                                           ; $7d6c: $9f
	dec  c                                           ; $7d6d: $0d
	nop                                              ; $7d6e: $00
	ld   a, [bc]                                     ; $7d6f: $0a
	dec  c                                           ; $7d70: $0d
	nop                                              ; $7d71: $00
	nop                                              ; $7d72: $00
	rrca                                             ; $7d73: $0f
	nop                                              ; $7d74: $00
	ld   bc, $1e09                                   ; $7d75: $01 $09 $1e
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	ld   [bc], a                                     ; $7d7a: $02
	rlca                                             ; $7d7b: $07
	ld   [hl+], a                                    ; $7d7c: $22
	nop                                              ; $7d7d: $00
	inc  bc                                          ; $7d7e: $03
	ld   [de], a                                     ; $7d7f: $12
	ld   bc, $2265                                   ; $7d80: $01 $65 $22
	nop                                              ; $7d83: $00
	rlca                                             ; $7d84: $07
	ld   e, d                                        ; $7d85: $5a
	nop                                              ; $7d86: $00
	inc  bc                                          ; $7d87: $03
	ld   [de], a                                     ; $7d88: $12
	ld   bc, $2565                                   ; $7d89: $01 $65 $25
	inc  bc                                          ; $7d8c: $03
	ld   [de], a                                     ; $7d8d: $12
	ld   bc, $2273                                   ; $7d8e: $01 $73 $22
	inc  e                                           ; $7d91: $1c
	nop                                              ; $7d92: $00
	rlca                                             ; $7d93: $07
	and  a                                           ; $7d94: $a7
	nop                                              ; $7d95: $00
	inc  bc                                          ; $7d96: $03
	ld   [de], a                                     ; $7d97: $12
	ld   bc, $2573                                   ; $7d98: $01 $73 $25
	nop                                              ; $7d9b: $00
	rrca                                             ; $7d9c: $0f
	nop                                              ; $7d9d: $00
	ld   bc, $6701                                   ; $7d9e: $01 $01 $67
	adc  l                                           ; $7da1: $8d
	sbc  d                                           ; $7da2: $9a
	ld   h, e                                        ; $7da3: $63
	and  c                                           ; $7da4: $a1
	sbc  a                                           ; $7da5: $9f
	dec  c                                           ; $7da6: $0d
	nop                                              ; $7da7: $00
	ld   a, [bc]                                     ; $7da8: $0a
	inc  e                                           ; $7da9: $1c
	ld   [bc], a                                     ; $7daa: $02
	nop                                              ; $7dab: $00
	nop                                              ; $7dac: $00
	ld   bc, $8c52                                   ; $7dad: $01 $52 $8c
	sbc  [hl]                                        ; $7db0: $9e
	inc  bc                                          ; $7db1: $03
	ld   l, e                                        ; $7db2: $6b
	ld   e, d                                        ; $7db3: $5a
	inc  b                                           ; $7db4: $04
	sbc  c                                           ; $7db5: $99
	ld   l, c                                        ; $7db6: $69
	adc  h                                           ; $7db7: $8c
	ld   l, c                                        ; $7db8: $69
	and  c                                           ; $7db9: $a1
	ld   a, h                                        ; $7dba: $7c
	sbc  a                                           ; $7dbb: $9f
	dec  c                                           ; $7dbc: $0d
	ld   d, b                                        ; $7dbd: $50
	halt                                             ; $7dbe: $76
	ld   a, c                                        ; $7dbf: $79
	ld   h, l                                        ; $7dc0: $65
	ld   [hl], h                                     ; $7dc1: $74
	ld   e, l                                        ; $7dc2: $5d
	ld   l, [hl]                                     ; $7dc3: $6e
	ld   h, e                                        ; $7dc4: $63
	ld   d, d                                        ; $7dc5: $52
	ld   a, b                                        ; $7dc6: $78
	sbc  a                                           ; $7dc7: $9f
	dec  c                                           ; $7dc8: $0d
	nop                                              ; $7dc9: $00
	ld   a, [bc]                                     ; $7dca: $0a
	dec  c                                           ; $7dcb: $0d
	nop                                              ; $7dcc: $00
	nop                                              ; $7dcd: $00
	rrca                                             ; $7dce: $0f
	nop                                              ; $7dcf: $00
	ld   bc, $1e09                                   ; $7dd0: $01 $09 $1e
	nop                                              ; $7dd3: $00
	inc  e                                           ; $7dd4: $1c
	ld   [bc], a                                     ; $7dd5: $02
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	ld   bc, $9750                                   ; $7dd8: $01 $50 $97
	sbc  [hl]                                        ; $7ddb: $9e
	ld   [$6308], sp                                 ; $7ddc: $08 $08 $63
	and  c                                           ; $7ddf: $a1
	sbc  a                                           ; $7de0: $9f
	dec  c                                           ; $7de1: $0d
	nop                                              ; $7de2: $00
	ld   a, [bc]                                     ; $7de3: $0a
	rrca                                             ; $7de4: $0f
	nop                                              ; $7de5: $00
	ld   bc, $6701                                   ; $7de6: $01 $01 $67
	adc  l                                           ; $7de9: $8d
	sbc  d                                           ; $7dea: $9a
	ld   h, e                                        ; $7deb: $63
	and  c                                           ; $7dec: $a1
	sbc  a                                           ; $7ded: $9f
	inc  b                                           ; $7dee: $04
	ld   l, l                                        ; $7def: $6d
	ld   a, h                                        ; $7df0: $7c
	inc  b                                           ; $7df1: $04
	rst  ToBoot                                         ; $7df2: $c7
	inc  bc                                          ; $7df3: $03
	ld   c, a                                        ; $7df4: $4f
	ld   a, l                                        ; $7df5: $7d
	dec  c                                           ; $7df6: $0d
	ld   [$7500], sp                                 ; $7df7: $08 $00 $75
	ld   h, a                                        ; $7dfa: $67
	sbc  a                                           ; $7dfb: $9f
	dec  c                                           ; $7dfc: $0d
	nop                                              ; $7dfd: $00
	ld   a, [bc]                                     ; $7dfe: $0a
	rrca                                             ; $7dff: $0f
	ld   [bc], a                                     ; $7e00: $02
	nop                                              ; $7e01: $00
	ld   bc, $546b                                   ; $7e02: $01 $6b $54
	ld   [hl], l                                     ; $7e05: $75
	ld   h, l                                        ; $7e06: $65
	ld   l, l                                        ; $7e07: $6d
	ld   e, c                                        ; $7e08: $59
	ld   h, l                                        ; $7e09: $65
	sub  a                                           ; $7e0a: $97
	sbc  a                                           ; $7e0b: $9f
	dec  c                                           ; $7e0c: $0d
	ld   [hl], l                                     ; $7e0d: $75
	ld   a, l                                        ; $7e0e: $7d
	inc  bc                                          ; $7e0f: $03
	add  e                                           ; $7e10: $83
	dec  b                                           ; $7e11: $05
	dec  c                                           ; $7e12: $0d
	rst  $38                                         ; $7e13: $ff
	rst  $38                                         ; $7e14: $ff
	dec  c                                           ; $7e15: $0d
	nop                                              ; $7e16: $00
	ld   a, [bc]                                     ; $7e17: $0a
	dec  c                                           ; $7e18: $0d
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	rrca                                             ; $7e1b: $0f
	nop                                              ; $7e1c: $00
	ld   bc, $1e09                                   ; $7e1d: $01 $09 $1e
	nop                                              ; $7e20: $00
	dec  c                                           ; $7e21: $0d
	ld   [bc], a                                     ; $7e22: $02
	nop                                              ; $7e23: $00
	rrca                                             ; $7e24: $0f
	nop                                              ; $7e25: $00
	ld   bc, $6701                                   ; $7e26: $01 $01 $67
	adc  l                                           ; $7e29: $8d
	sbc  d                                           ; $7e2a: $9a
	ld   h, e                                        ; $7e2b: $63
	and  c                                           ; $7e2c: $a1
	sbc  a                                           ; $7e2d: $9f
	dec  c                                           ; $7e2e: $0d
	nop                                              ; $7e2f: $00
	ld   a, [bc]                                     ; $7e30: $0a
	inc  e                                           ; $7e31: $1c
	ld   [bc], a                                     ; $7e32: $02
	ld   bc, $0101                                   ; $7e33: $01 $01 $01
	ld   [$6308], sp                                 ; $7e36: $08 $08 $63
	and  c                                           ; $7e39: $a1
	sbc  a                                           ; $7e3a: $9f
	dec  c                                           ; $7e3b: $0d
	sub  b                                           ; $7e3c: $90
	ld   d, h                                        ; $7e3d: $54
	inc  b                                           ; $7e3e: $04
	ld   [$9102], sp                                 ; $7e3f: $08 $02 $91
	ld   a, c                                        ; $7e42: $79
	ld   a, l                                        ; $7e43: $7d
	ld   a, b                                        ; $7e44: $78
	sbc  d                                           ; $7e45: $9a
	adc  h                                           ; $7e46: $8c
	ld   h, l                                        ; $7e47: $65
	ld   l, l                                        ; $7e48: $6d
	ld   sp, hl                                      ; $7e49: $f9
	dec  c                                           ; $7e4a: $0d
	nop                                              ; $7e4b: $00
	ld   a, [bc]                                     ; $7e4c: $0a
	ld   bc, $9e04                                   ; $7e4d: $01 $04 $9e
	ld   e, c                                        ; $7e50: $59
	sub  a                                           ; $7e51: $97
	ld   a, b                                        ; $7e52: $78
	ld   d, d                                        ; $7e53: $52
	ld   [bc], a                                     ; $7e54: $02
	jp   Jump_047_505a                               ; $7e55: $c3 $5a $50


	ld   [hl], c                                     ; $7e58: $71
	ld   l, l                                        ; $7e59: $6d
	sub  a                                           ; $7e5a: $97
	sbc  [hl]                                        ; $7e5b: $9e
	dec  c                                           ; $7e5c: $0d
	sbc  l                                           ; $7e5d: $9d
	ld   l, l                                        ; $7e5e: $6d
	ld   e, l                                        ; $7e5f: $5d
	ld   h, l                                        ; $7e60: $65
	ld   a, c                                        ; $7e61: $79
	ld   [bc], a                                     ; $7e62: $02
	jp   nz, Jump_047_785b                           ; $7e63: $c2 $5b $78

	ld   h, e                                        ; $7e66: $63
	ld   d, d                                        ; $7e67: $52
	sbc  a                                           ; $7e68: $9f
	dec  c                                           ; $7e69: $0d
	ld   [hl], l                                     ; $7e6a: $75
	ld   a, l                                        ; $7e6b: $7d
	inc  bc                                          ; $7e6c: $03
	add  e                                           ; $7e6d: $83
	dec  b                                           ; $7e6e: $05
	dec  c                                           ; $7e6f: $0d
	sbc  a                                           ; $7e70: $9f
	dec  c                                           ; $7e71: $0d
	nop                                              ; $7e72: $00
	ld   a, [bc]                                     ; $7e73: $0a
	dec  c                                           ; $7e74: $0d
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	rrca                                             ; $7e77: $0f
	nop                                              ; $7e78: $00
	ld   bc, $1e09                                   ; $7e79: $01 $09 $1e
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	ld   [bc], a                                     ; $7e7e: $02
	rlca                                             ; $7e7f: $07
	ld   [hl+], a                                    ; $7e80: $22
	nop                                              ; $7e81: $00
	inc  bc                                          ; $7e82: $03
	ld   de, $6501                                   ; $7e83: $11 $01 $65
	ld   [hl+], a                                    ; $7e86: $22
	nop                                              ; $7e87: $00
	rlca                                             ; $7e88: $07
	ld   e, c                                        ; $7e89: $59
	nop                                              ; $7e8a: $00
	inc  bc                                          ; $7e8b: $03
	ld   de, $6501                                   ; $7e8c: $11 $01 $65
	dec  h                                           ; $7e8f: $25
	inc  bc                                          ; $7e90: $03
	ld   de, $7301                                   ; $7e91: $11 $01 $73
	ld   [hl+], a                                    ; $7e94: $22
	inc  e                                           ; $7e95: $1c
	nop                                              ; $7e96: $00
	rlca                                             ; $7e97: $07
	and  a                                           ; $7e98: $a7
	nop                                              ; $7e99: $00
	inc  bc                                          ; $7e9a: $03
	ld   de, $7301                                   ; $7e9b: $11 $01 $73
	dec  h                                           ; $7e9e: $25
	nop                                              ; $7e9f: $00
	rrca                                             ; $7ea0: $0f
	nop                                              ; $7ea1: $00
	ld   bc, $6301                                   ; $7ea2: $01 $01 $63
	ld   e, l                                        ; $7ea5: $5d
	sub  a                                           ; $7ea6: $97
	ld   h, e                                        ; $7ea7: $63
	and  c                                           ; $7ea8: $a1
	sbc  a                                           ; $7ea9: $9f
	dec  c                                           ; $7eaa: $0d
	nop                                              ; $7eab: $00
	ld   a, [bc]                                     ; $7eac: $0a
	inc  e                                           ; $7ead: $1c
	ld   bc, $0000                                   ; $7eae: $01 $00 $00
	ld   bc, $8f62                                   ; $7eb1: $01 $62 $8f
	and  c                                           ; $7eb4: $a1
	ld   a, b                                        ; $7eb5: $78
	ld   h, e                                        ; $7eb6: $63
	ld   d, d                                        ; $7eb7: $52
	sbc  a                                           ; $7eb8: $9f

Jump_047_7eb9:
	dec  c                                           ; $7eb9: $0d
	ld   d, d                                        ; $7eba: $52
	adc  h                                           ; $7ebb: $8c
	dec  b                                           ; $7ebc: $05
	jr   z, @+$54                                    ; $7ebd: $28 $52

	ld   [hl], l                                     ; $7ebf: $75
	sbc  c                                           ; $7ec0: $99
	and  c                                           ; $7ec1: $a1
	ld   [hl], l                                     ; $7ec2: $75
	ld   h, a                                        ; $7ec3: $67
	sbc  a                                           ; $7ec4: $9f
	dec  c                                           ; $7ec5: $0d
	ld   l, e                                        ; $7ec6: $6b
	sbc  d                                           ; $7ec7: $9a
	ld   [hl], l                                     ; $7ec8: $75
	ld   a, l                                        ; $7ec9: $7d
	sbc  a                                           ; $7eca: $9f
	dec  c                                           ; $7ecb: $0d
	nop                                              ; $7ecc: $00
	ld   a, [bc]                                     ; $7ecd: $0a
	dec  c                                           ; $7ece: $0d
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	rrca                                             ; $7ed1: $0f
	nop                                              ; $7ed2: $00
	ld   bc, $1e09                                   ; $7ed3: $01 $09 $1e
	nop                                              ; $7ed6: $00
	inc  e                                           ; $7ed7: $1c
	ld   bc, $0000                                   ; $7ed8: $01 $00 $00
	ld   bc, $9e50                                   ; $7edb: $01 $50 $9e
	ld   [$6300], sp                                 ; $7ede: $08 $00 $63
	and  c                                           ; $7ee1: $a1
	dec  c                                           ; $7ee2: $0d
	nop                                              ; $7ee3: $00
	ld   a, [bc]                                     ; $7ee4: $0a
	rrca                                             ; $7ee5: $0f
	nop                                              ; $7ee6: $00
	ld   bc, $6301                                   ; $7ee7: $01 $01 $63
	ld   e, l                                        ; $7eea: $5d
	sub  a                                           ; $7eeb: $97
	ld   h, e                                        ; $7eec: $63
	and  c                                           ; $7eed: $a1
	sbc  a                                           ; $7eee: $9f
	dec  c                                           ; $7eef: $0d
	ld   e, b                                        ; $7ef0: $58
	inc  b                                           ; $7ef1: $04
	ld   a, e                                        ; $7ef2: $7b
	sbc  d                                           ; $7ef3: $9a
	ld   h, e                                        ; $7ef4: $63
	adc  h                                           ; $7ef5: $8c
	ld   [hl], l                                     ; $7ef6: $75
	ld   h, a                                        ; $7ef7: $67
	sbc  a                                           ; $7ef8: $9f
	dec  c                                           ; $7ef9: $0d
	nop                                              ; $7efa: $00
	ld   a, [bc]                                     ; $7efb: $0a
	inc  e                                           ; $7efc: $1c
	ld   bc, $0101                                   ; $7efd: $01 $01 $01
	ld   bc, $527d                                   ; $7f00: $01 $7d $52
	sbc  [hl]                                        ; $7f03: $9e
	ld   e, b                                        ; $7f04: $58
	inc  b                                           ; $7f05: $04
	ld   a, e                                        ; $7f06: $7b
	sbc  d                                           ; $7f07: $9a
	ld   h, e                                        ; $7f08: $63
	adc  h                                           ; $7f09: $8c
	ld   [hl], l                                     ; $7f0a: $75
	ld   h, a                                        ; $7f0b: $67
	sbc  a                                           ; $7f0c: $9f
	dec  c                                           ; $7f0d: $0d
	nop                                              ; $7f0e: $00
	inc  e                                           ; $7f0f: $1c
	ld   bc, $0000                                   ; $7f10: $01 $00 $00
	ld   bc, $9a6b                                   ; $7f13: $01 $6b $9a
	ld   [hl], l                                     ; $7f16: $75
	ld   a, l                                        ; $7f17: $7d
	sbc  a                                           ; $7f18: $9f
	dec  c                                           ; $7f19: $0d
	nop                                              ; $7f1a: $00
	ld   a, [bc]                                     ; $7f1b: $0a
	dec  c                                           ; $7f1c: $0d
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	rrca                                             ; $7f1f: $0f
	nop                                              ; $7f20: $00
	ld   bc, $1e09                                   ; $7f21: $01 $09 $1e
	nop                                              ; $7f24: $00
	rrca                                             ; $7f25: $0f
	nop                                              ; $7f26: $00
	ld   bc, $010d                                   ; $7f27: $01 $0d $01
	nop                                              ; $7f2a: $00
	ld   bc, $5d63                                   ; $7f2b: $01 $63 $5d
	sub  a                                           ; $7f2e: $97
	ld   h, e                                        ; $7f2f: $63
	and  c                                           ; $7f30: $a1
	sbc  a                                           ; $7f31: $9f
	dec  c                                           ; $7f32: $0d
	nop                                              ; $7f33: $00
	ld   a, [bc]                                     ; $7f34: $0a
	rrca                                             ; $7f35: $0f
	ld   bc, $0100                                   ; $7f36: $01 $00 $01
	ld   [$6300], sp                                 ; $7f39: $08 $00 $63
	and  c                                           ; $7f3c: $a1
	sbc  a                                           ; $7f3d: $9f
	dec  c                                           ; $7f3e: $0d
	ld   [hl], a                                     ; $7f3f: $77
	ld   d, h                                        ; $7f40: $54
	ld   [hl], l                                     ; $7f41: $75
	ld   h, a                                        ; $7f42: $67
	ld   e, c                                        ; $7f43: $59
	ld   sp, hl                                      ; $7f44: $f9
	dec  c                                           ; $7f45: $0d
	sub  b                                           ; $7f46: $90
	ld   d, h                                        ; $7f47: $54
	inc  b                                           ; $7f48: $04
	ld   [$9102], sp                                 ; $7f49: $08 $02 $91
	ld   a, c                                        ; $7f4c: $79
	ld   a, l                                        ; $7f4d: $7d
	ld   a, b                                        ; $7f4e: $78
	sbc  d                                           ; $7f4f: $9a
	adc  h                                           ; $7f50: $8c
	ld   h, l                                        ; $7f51: $65
	ld   l, l                                        ; $7f52: $6d
	ld   e, c                                        ; $7f53: $59
	ld   sp, hl                                      ; $7f54: $f9
	dec  c                                           ; $7f55: $0d
	nop                                              ; $7f56: $00
	ld   a, [bc]                                     ; $7f57: $0a
	inc  e                                           ; $7f58: $1c
	ld   bc, $0101                                   ; $7f59: $01 $01 $01
	ld   bc, $9e04                                   ; $7f5c: $01 $04 $9e
	ld   e, c                                        ; $7f5f: $59
	sub  a                                           ; $7f60: $97
	ld   a, b                                        ; $7f61: $78
	ld   d, d                                        ; $7f62: $52
	ld   [bc], a                                     ; $7f63: $02
	jp   Jump_047_505a                               ; $7f64: $c3 $5a $50


	ld   [hl], c                                     ; $7f67: $71
	ld   l, l                                        ; $7f68: $6d
	sub  a                                           ; $7f69: $97
	sbc  [hl]                                        ; $7f6a: $9e
	dec  c                                           ; $7f6b: $0d
	ld   a, b                                        ; $7f6c: $78
	and  c                                           ; $7f6d: $a1
	ld   [hl], l                                     ; $7f6e: $75
	sub  b                                           ; $7f6f: $90
	ld   [bc], a                                     ; $7f70: $02
	jp   nz, Jump_047_7452                           ; $7f71: $c2 $52 $74

	ld   e, l                                        ; $7f74: $5d
	ld   l, [hl]                                     ; $7f75: $6e
	ld   h, e                                        ; $7f76: $63
	ld   d, d                                        ; $7f77: $52
	ld   a, e                                        ; $7f78: $7b
	sbc  a                                           ; $7f79: $9f
	dec  c                                           ; $7f7a: $0d
	nop                                              ; $7f7b: $00
	inc  e                                           ; $7f7c: $1c
	ld   bc, $0000                                   ; $7f7d: $01 $00 $00
	ld   bc, $9a6b                                   ; $7f80: $01 $6b $9a
	ld   [hl], l                                     ; $7f83: $75
	ld   a, l                                        ; $7f84: $7d
	sbc  a                                           ; $7f85: $9f
	dec  c                                           ; $7f86: $0d
	nop                                              ; $7f87: $00
	ld   a, [bc]                                     ; $7f88: $0a
	dec  c                                           ; $7f89: $0d
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	rrca                                             ; $7f8c: $0f
	nop                                              ; $7f8d: $00
	ld   bc, $1e09                                   ; $7f8e: $01 $09 $1e
	nop                                              ; $7f91: $00
	nop                                              ; $7f92: $00
	ld   [bc], a                                     ; $7f93: $02
	rlca                                             ; $7f94: $07
	ld   [hl+], a                                    ; $7f95: $22
	nop                                              ; $7f96: $00
	inc  bc                                          ; $7f97: $03
	inc  d                                           ; $7f98: $14
	ld   bc, $2364                                   ; $7f99: $01 $64 $23
	nop                                              ; $7f9c: $00
	rlca                                             ; $7f9d: $07
	ld   e, c                                        ; $7f9e: $59
	nop                                              ; $7f9f: $00
	inc  bc                                          ; $7fa0: $03
	inc  d                                           ; $7fa1: $14
	ld   bc, $2565                                   ; $7fa2: $01 $65 $25
	inc  bc                                          ; $7fa5: $03
	inc  d                                           ; $7fa6: $14
	ld   bc, $2273                                   ; $7fa7: $01 $73 $22
	inc  e                                           ; $7faa: $1c
	nop                                              ; $7fab: $00
	rlca                                             ; $7fac: $07
	sbc  a                                           ; $7fad: $9f
	nop                                              ; $7fae: $00
	inc  bc                                          ; $7faf: $03
	inc  d                                           ; $7fb0: $14
	ld   bc, $2573                                   ; $7fb1: $01 $73 $25
	nop                                              ; $7fb4: $00
	rrca                                             ; $7fb5: $0f
	nop                                              ; $7fb6: $00
	ld   bc, $9201                                   ; $7fb7: $01 $01 $92
	ld   d, b                                        ; $7fba: $50
	sbc  [hl]                                        ; $7fbb: $9e
	and  e                                           ; $7fbc: $a3
	and  l                                           ; $7fbd: $a5
	db   $ec                                         ; $7fbe: $ec
	cp   d                                           ; $7fbf: $ba
	sbc  a                                           ; $7fc0: $9f
	dec  c                                           ; $7fc1: $0d
	nop                                              ; $7fc2: $00
	ld   a, [bc]                                     ; $7fc3: $0a
	dec  b                                           ; $7fc4: $05
	add  b                                           ; $7fc5: $80
	sub  $01                                         ; $7fc6: $d6 $01
	ld   bc, $1c00                                   ; $7fc8: $01 $00 $1c
	inc  b                                           ; $7fcb: $04
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	ld   bc, $a5a3                                   ; $7fce: $01 $a3 $a5
	db   $ec                                         ; $7fd1: $ec
	cp   d                                           ; $7fd2: $ba
	sbc  [hl]                                        ; $7fd3: $9e
	ld   d, d                                        ; $7fd4: $52
	ld   l, e                                        ; $7fd5: $6b
	ld   e, d                                        ; $7fd6: $5a
	ld   h, l                                        ; $7fd7: $65
	ld   d, d                                        ; $7fd8: $52
	ld   a, h                                        ; $7fd9: $7c
	sbc  a                                           ; $7fda: $9f
	dec  c                                           ; $7fdb: $0d
	adc  h                                           ; $7fdc: $8c
	ld   l, l                                        ; $7fdd: $6d
	ld   a, e                                        ; $7fde: $7b
	sbc  a                                           ; $7fdf: $9f
	dec  c                                           ; $7fe0: $0d
	nop                                              ; $7fe1: $00
	ld   a, [bc]                                     ; $7fe2: $0a
	dec  c                                           ; $7fe3: $0d
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	rrca                                             ; $7fe6: $0f
	nop                                              ; $7fe7: $00
	ld   bc, $1e09                                   ; $7fe8: $01 $09 $1e
	nop                                              ; $7feb: $00
	inc  e                                           ; $7fec: $1c
	inc  b                                           ; $7fed: $04
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	ld   bc, $9e50                                   ; $7ff0: $01 $50 $9e
	ld   l, a                                        ; $7ff3: $6f
	ld   d, d                                        ; $7ff4: $52
	ld   [bc], a                                     ; $7ff5: $02
	inc  de                                          ; $7ff6: $13
	ld   l, a                                        ; $7ff7: $6f
	sub  c                                           ; $7ff8: $91
	and  c                                           ; $7ff9: $a1
	sbc  a                                           ; $7ffa: $9f
	dec  c                                           ; $7ffb: $0d
	nop                                              ; $7ffc: $00
	ld   a, [bc]                                     ; $7ffd: $0a
	rrca                                             ; $7ffe: $0f
	nop                                              ; $7fff: $00
